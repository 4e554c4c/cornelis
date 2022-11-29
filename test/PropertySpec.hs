{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}

module PropertySpec where

import           Cornelis.Offsets
import           Cornelis.Vim
import           Data.Bool (bool)
import           Data.Containers.ListUtils (nubOrd)
import           Data.Maybe (mapMaybe)
import qualified Data.Text as T
import qualified Data.Vector as V
import           Neovim
import           Neovim.API.Text
import           Neovim.Test (Seconds(Seconds))
import           Test.Hspec
import           Test.Hspec.QuickCheck
import           Test.QuickCheck
import           Utils


spec :: Spec
spec = parallel $ do
  prop "fromBytes is an inverse of toBytes" $ do
    UnicodeString str <- arbitrary
    let len = length str
        t = T.pack str
    i <- suchThat arbitrary (\x -> 0 <= x && x <= len)
    let off = toZeroIndexed i
    pure
      $ counterexample (show str)
      $ counterexample (show i)
      $ fromBytes t (toBytes t off) === off

  prop "goto gets there" $ do
    n <- choose @Int (1, 50)
    strs <- vectorOf n $ listOf agdaChar
    row <- choose (1, length strs)
    let rowidx = row - 1
    col <- choose (0, max 0 $ length (strs !! rowidx) - 1)
    let pn = Pos (toOneIndexed row) (toOneIndexed col)
    pure
      $ counterexample (show strs)
      $ counterexample (show row)
      $ counterexample (show col)
      $ counterexample (show pn)
      $ counterexample (show $ strs !! rowidx)
      $ withVim (Seconds 1) $ \w b -> do
          buffer_set_lines b 0 (-1) False $ V.fromList $ fmap T.pack $ strs
          setWindowCursor w pn
          ObjectInt row' <- vim_call_function "line" $ V.fromList [ObjectString "."]
          ObjectInt col' <- vim_call_function "virtcol" $ V.fromList [ObjectString "."]
          liftIO $ Row row' `shouldBe` Row (fromIntegral row)
          -- virtcol is 1-based....
          liftIO $ Col (col' - 1) `shouldBe` Col (fromIntegral col)

  prop "replaceInterval does as it says" $ do
    str <- T.pack <$> listOf agdaChar
    rep <- T.pack <$> listOf agdaChar
    start <- choose (0, T.length str - 1)
    end <- choose (0, T.length str - start)
    let srow = toOneIndexed @Int 1
        scol = toOneIndexed start
        ecol = toOneIndexed (start + end)
        int = Interval (Pos srow scol) (Pos srow ecol)
        expected = T.take start str <> rep <> T.drop (start + end) str
    pure $
      withVim (Seconds 1) $ \_ b -> do
        buffer_set_lines b 0 (-1) False $ V.fromList $ pure str
        intervention b (mapMaybe simplify [Swap str expected]) $
          replaceInterval b int rep


agdaChar :: Gen Char
agdaChar = elements $ mconcat
  [ [' ' .. '~']
  , ['¡' .. 'ÿ']
  , [ '→', '←', '∧', '∨', '∎', '∘', '⟨', '⟩', '≡', '≢'
    , '∷', '∀', '∃', '≤', '≥', '′', '⊤', '⊥', '≟', '⊛'
    , '×', '⊕', '▹', '∸', '⦃', '⦄', 'ℕ', '⇒', '∈', '₀'
    , '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉', '⁰'
    , '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹'
    , '≠', '∼', '≁', '≈', '≉', '≋', '∻', '≃', '≄', '≂'
    , '≅', '≇', '≊', '≡', '≢', '≣', '≐', '≑', '≔', '≕'
    , '≗', '≘', '≙', '≚', '≛', '≜', '≝', '≞', '≟', '≤'
    , '≥', '≰', '≱', '≰', '≱', '≮', '≯', '≲', '≳', '⋦'
    , '⋧', '≴', '≵', '⊂', '⊃', '⊄', '⊅', '⊆', '⊇', '⊈'
    , '⊉', '⊏', '⊐', '⊑', '⊒', '⋢', '⋣', '∉', '∌', '∧'
    , '∨', '⋀', '⋁', '∩', '∪', '⊎', '⊍', '⋂', '⋃', '⨄'
    , '⨃', '⊓', '⊔', '⨅', '⨆', '⊢', '⊬', '⊣', '⊨', '⊭'
    , '⊩', '⊮', '⊫', '⊯', '⊪', '∣', '∤', '∥', '∦', '∀'
    , '∃', '∄', '∅', '∁', '⌜', '⌈', '⌝', '⌉', '⌞', '⌊'
    , '⌟', '⌋', '∎', '×', '∘', '∘', '∙', '⋆', '∔', '∸'
    , '∷', '∺', '∹', '⊹', '∛', '∜', '∆', '∞', '⅋', '⨟'
    , '⦂', '⊕', '⊖', '⊗', '⊘', '⊙', '⊚', '⊛', '⊜', '⊝'
    , '⨁', '⨂', '⨀', '⍟', '⊞', '⊟', '⊠', '⊡', '←', '←'
    , '⇐', '⇐', '→', '→', '⇒', '⇒', '↑', '⇑', '↓', '⇓'
    , '↕', '⇕', '↔', '↔', '⇔', '⇔', '↖', '⇖', '↗', '⇗'
    , '↘', '⇘', '↙', '⇙', '⇚', '⇇', '⇆', '⇛', '⇉', '⇶'
    , '⇄', '⟰', '⇈', '⇅', '⟱', '⇊', '⇵', '⟵', '⟵', '↜'
    , '⟶', '⟶', '↝', '⟷', '⟷', '↭', '↚', '↚', '⇍', '↛'
    , '↛', '⇏', '⇏', '↮', '↮', '⇎', '⇎', '↤', '↞', '↦'
    , '↠', '↥', '↟', '↧', '↡', '↨', '↢', '↣', '⊸', '⊸'
    , '↯', '▣', '▢', '▰', '▱', '◆', '◇', '◈', '●', '○'
    , '◎', '◌', '◯', '✶', '✴', '✹', '𝔸', '𝔹', 'ℂ', '𝔻'
    , '𝔼', '𝔽', '𝔾', 'ℍ', '𝕀', '𝕁', '𝕂', '𝕃', '𝕄', 'ℕ'
    , '𝕆', 'ℙ', 'ℚ', 'ℝ', '𝕊', '𝕋', '𝕌', '𝕍', '𝕎', '𝕏'
    , '𝕐', 'ℤ', 'ℾ', 'ℿ', '⅀', '𝕒', '𝕓', '𝕔', '𝕕', '𝕖'
    , '𝕗', '𝕘', '𝕙', '𝕚', '𝕛', '𝕜', '𝕝', '𝕞', '𝕟', '𝕠'
    , '𝕡', '𝕢', '𝕣', '𝕤', '𝕥', '𝕦', '𝕧', '𝕨', '𝕩', '𝕪'
    , '𝕫', 'ℽ', 'ℼ', '𝟘', '𝟙', '𝟚', '𝟛', '𝟜', '𝟝', '𝟞'
    , '𝟟', '𝟠', '𝟡', '𝟎', '𝟏', '𝟐', '𝟑', '𝟒', '𝟓', '𝟔'
    , '𝟕', '𝟖', '𝟗', '⟦', '⟧', '⟨', '⟩', '⟪', '⟫', '⦃'
    , '⦄', '⟅', '⟆', '⟅', '⟆', '⦊', '⦈', '⦆', '•', '◦'
    , '‣', '♭', '♯', '\\', '–', '—', '‼', '⁇', '‽', '⁉'
    , '✂', '⁀', '‿', 'α', 'Α'
    , 'β', 'Β', 'γ', 'Γ', 'δ', 'Δ', 'ε', 'Ε', 'ζ', 'Ζ'
    , 'η', 'Η', 'θ', 'Θ', 'ι', 'Ι', 'κ', 'Κ', 'λ', 'Λ'
    , 'ƛ', 'μ', 'Μ', 'ν', 'Ν', 'ξ', 'Ξ', 'ρ', 'Ρ', 'σ'
    , 'Σ', 'τ', 'Τ', 'υ', 'Υ', 'φ', 'Φ', 'χ', 'Χ', 'ψ'
    , 'Ψ', 'ω', 'Ω', '𝐴', '𝐵', '𝐶', '𝐷', '𝐸', '𝐹', '𝐺'
    , '𝐻', '𝐼', '𝐽', '𝐾', '𝐿', '𝑀', '𝑁', '𝑂', '𝑃', '𝑄'
    , '𝑅', '𝑆', '𝑇', '𝑈', '𝑉', '𝑊', '𝑋', '𝑌', '𝑍', '𝑎'
    , '𝑏', '𝑐', '𝑑', '𝑒', '𝑓', '𝑔', 'ℎ', '𝑖', '𝑗', '𝑘'
    , '𝑙', '𝑚', '𝑛', '𝑜', '𝑝', '𝑞', '𝑟', '𝑠', '𝑡', '𝑢'
    , '𝑣', '𝑤', '𝑥', '𝑦', '𝑧', '𝑨', '𝑩', '𝑪', '𝑫', '𝑬'
    , '𝑭', '𝑮', '𝑯', '𝑰', '𝑱', '𝑲', '𝑳', '𝑴', '𝑵', '𝑶'
    , '𝑷', '𝑸', '𝑹', '𝑺', '𝑻', '𝑼', '𝑽', '𝑾', '𝑿', '𝒀'
    , '𝒁', '𝒂', '𝒃', '𝒄', '𝒅', '𝒆', '𝒇', '𝒈', '𝒉', '𝒊'
    , '𝒋', '𝒌', '𝒍', '𝒎', '𝒏', '𝒐', '𝒑', '𝒒', '𝒓', '𝒔'
    , '𝒕', '𝒖', '𝒗', '𝒘', '𝒙', '𝒚', '𝒛', '𝒜', 'ℬ', '𝒞'
    , '𝒟', 'ℰ', 'ℱ', '𝒢', 'ℋ', 'ℐ', '𝒥', '𝒦', 'ℒ', 'ℳ'
    , '𝒩', '𝒪', '𝒫', '𝒬', 'ℛ', '𝒮', '𝒯', '𝒰', '𝒱', '𝒲'
    , '𝒳', '𝒴', '𝒵', '𝒶', '𝒷', '𝒸', '𝒹', 'ℯ', '𝒻', 'ℊ'
    , '𝒽', '𝒾', '𝒿', '𝓀', '𝓁', '𝓂', '𝓃', 'ℴ', '𝓅', '𝓆'
    , '𝓇', '𝓈', '𝓉', '𝓊', '𝓋', '𝓌', '𝓍', '𝓎', '𝓏', '𝓐'
    , '𝓑', '𝓒', '𝓓', '𝓔', '𝓕', '𝓖', '𝓗', '𝓘', '𝓙', '𝓚'
    , '𝓛', '𝓜', '𝓝', '𝓞', '𝓟', '𝓠', '𝓡', '𝓢', '𝓣'
    , '𝓤', '𝓥', '𝓦', '𝓧', '𝓨', '𝓩', '𝓪', '𝓫', '𝓬', '𝓭'
    , '𝓮', '𝓯', '𝓰', '𝓱', '𝓲', '𝓳', '𝓴', '𝓵', '𝓶', '𝓷'
    , '𝓸', '𝓹', '𝓺', '𝓻', '𝓼', '𝓽', '𝓾', '𝓿', '𝔀', '𝔁'
    , '𝔂', '𝔃', '𝔄', '𝔅', 'ℭ', '𝔇', '𝔈', '𝔉', '𝔊', 'ℌ'
    , 'ℑ', '𝔍', '𝔎', '𝔏', '𝔐', '𝔑', '𝔒', '𝔓', '𝔔', 'ℜ'
    , '𝔖', '𝔗', '𝔘', '𝔙', '𝔚', '𝔛', '𝔜', 'ℨ', '𝔞', '𝔟'
    , '𝔠', '𝔡', '𝔢', '𝔣', '𝔤', '𝔥', '𝔦', '𝔧', '𝔨', '𝔩'
    , '𝔪', '𝔫', '𝔬', '𝔭', '𝔮', '𝔯', '𝔰', '𝔱', '𝔲', '𝔳'
    , '𝔴', '𝔵', '𝔶', '𝔷', 'ₐ', 'ₑ', 'ₕ', 'ᵢ', 'ⱼ', 'ₖ'
    , 'ₗ', 'ₘ', 'ₙ', 'ₒ', 'ₚ', 'ᵣ', 'ₛ', 'ₜ', 'ᵤ', 'ᵥ'
    , 'ₓ', 'ᵦ', 'ᵧ', 'ᵨ', 'ᵩ', 'ᵪ', 'ᵃ', 'ᵇ', 'ᶜ', 'ᵈ'
    , 'ᵉ', 'ᶠ', 'ᵍ', 'ʰ', 'ⁱ', 'ʲ', 'ᵏ', 'ˡ', 'ᵐ', 'ⁿ'
    , 'ᵒ', 'ᵖ', 'ʳ', 'ˢ', 'ᵗ', 'ᵘ', 'ᵛ', 'ʷ', 'ˣ', 'ʸ'
    , 'ᶻ', 'ᴬ', 'ᴮ', 'ᴰ', 'ᴱ', 'ᴳ', 'ᴴ', 'ᴵ', 'ᴶ', 'ᴷ'
    , 'ᴸ', 'ᴹ', 'ᴺ', 'ᴼ', 'ᴾ', 'ᴿ', 'ᵀ', 'ᵁ', 'ⱽ', 'ᵂ'
    , 'ᵝ', 'ᵞ', 'ᵟ', 'ᵋ', 'ᶿ', 'ᵠ', 'ᵡ', ' ', '¡', '¢'
    , '¦', '°', '¿', 'ª', 'º'
    ]
  ]


simplify :: Eq a => Edit a -> Maybe (Edit a)
simplify x@(Swap b a) = bool Nothing (Just x) $ b /= a
simplify x = Just x

subsets :: Ord a => [a] -> [[a]]
subsets [] = [[]]
subsets zs@(x : xs) = nubOrd $ filter (/= zs) $ subsets xs ++ fmap (x :) (subsets xs)

newtype Row a = Row a deriving (Eq, Ord, Show)
newtype Col a = Col a deriving (Eq, Ord, Show)

