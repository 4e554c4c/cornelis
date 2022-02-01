function! s:agda_input(key, result)
    let str = "<buffer> <LocalLeader>" . a:key . " " . a:result
    exec "inoremap " . str
    exec "cnoremap " . str
endfunction

" Mapping unicode symbols.
call s:agda_input("to", "→")
call s:agda_input("to", "→")
call s:agda_input("-", "→")
call s:agda_input("<-", "←")
call s:agda_input("and", "∧")
call s:agda_input("or", "∨")
call s:agda_input("qed", "∎")
call s:agda_input("o", "∘")
call s:agda_input("comp", "∘")
call s:agda_input("<", "⟨")
call s:agda_input(">", "⟩")
call s:agda_input("==", "≡")
call s:agda_input("==n", "≢")
call s:agda_input("::", "∷")
call s:agda_input("all", "∀")
call s:agda_input("ex", "∃")
call s:agda_input("le", "≤")
call s:agda_input("ge", "≥")
call s:agda_input("'", "′")
call s:agda_input("top", "⊤")
call s:agda_input("bot", "⊥")
call s:agda_input("?=", "≟")
call s:agda_input("o*", "⊛")
call s:agda_input("x", "×")
call s:agda_input("o+", "⊕")
call s:agda_input("t>", "▹")
call s:agda_input(".-", "∸")
call s:agda_input("{{", "⦃")
call s:agda_input("}}", "⦄")
call s:agda_input("nat", "ℕ")
call s:agda_input("=>", "⇒")
call s:agda_input("in", "∈")

call s:agda_input("_0", "₀")
call s:agda_input("_1", "₁")
call s:agda_input("_2", "₂")
call s:agda_input("_3", "₃")
call s:agda_input("_4", "₄")
call s:agda_input("_5", "₅")
call s:agda_input("_6", "₆")
call s:agda_input("_7", "₇")
call s:agda_input("_8", "₈")
call s:agda_input("_9", "₉")

call s:agda_input("^0", "⁰")
call s:agda_input("^1", "¹")
call s:agda_input("^2", "²")
call s:agda_input("^3", "³")
call s:agda_input("^4", "⁴")
call s:agda_input("^5", "⁵")
call s:agda_input("^6", "⁶")
call s:agda_input("^7", "⁷")
call s:agda_input("^8", "⁸")
call s:agda_input("^9", "⁹")


" Agda-input proper
call s:agda_input("=n", "≠")
call s:agda_input("~", "∼")
call s:agda_input("~n", "≁")
call s:agda_input("~~", "≈")
call s:agda_input("~~n", "≉")
call s:agda_input("~~~", "≋")
call s:agda_input(":~", "∻")
call s:agda_input("~-", "≃")
call s:agda_input("~-n", "≄")
call s:agda_input("-~", "≂")
call s:agda_input("~=", "≅")
call s:agda_input("~=n", "≇")
call s:agda_input("~~-", "≊")
call s:agda_input("==", "≡")
call s:agda_input("==n", "≢")
call s:agda_input("===", "≣")
call s:agda_input(".=", "≐")
call s:agda_input(".=.", "≑")
call s:agda_input(":=", "≔")
call s:agda_input("=:", "≕")
call s:agda_input("=o", "≗")
call s:agda_input("(=", "≘")
call s:agda_input("and=", "≙")
call s:agda_input("or=", "≚")
call s:agda_input("*=", "≛")
call s:agda_input("t=", "≜")
call s:agda_input("def=", "≝")
call s:agda_input("m=", "≞")
call s:agda_input("?=", "≟")
call s:agda_input("<=", "≤")
call s:agda_input(">=", "≥")
call s:agda_input("<=n", "≰")
call s:agda_input(">=n", "≱")
call s:agda_input("len", "≰")
call s:agda_input("gen", "≱")
call s:agda_input("<n", "≮")
call s:agda_input(">n", "≯")
call s:agda_input("<~", "≲")
call s:agda_input(">~", "≳")
call s:agda_input("<~n", "⋦")
call s:agda_input(">~n", "⋧")
call s:agda_input("<~nn", "≴")
call s:agda_input(">~nn", "≵")
call s:agda_input("sub", "⊂")
call s:agda_input("sup", "⊃")
call s:agda_input("subn", "⊄")
call s:agda_input("supn", "⊅")
call s:agda_input("sub=", "⊆")
call s:agda_input("sup=", "⊇")
call s:agda_input("sub=n", "⊈")
call s:agda_input("sup=n", "⊉")
call s:agda_input("squb", "⊏")
call s:agda_input("squp", "⊐")
call s:agda_input("squb=", "⊑")
call s:agda_input("squp=", "⊒")
call s:agda_input("squb=n", "⋢")
call s:agda_input("squp=n", "⋣")
call s:agda_input("inn", "∉")
call s:agda_input("nin", "∌")
call s:agda_input("and", "∧")
call s:agda_input("or", "∨")
call s:agda_input("And", "⋀")
call s:agda_input("Or", "⋁")
call s:agda_input("i", "∩")
call s:agda_input("un", "∪")
call s:agda_input("u+", "⊎")
call s:agda_input("u.", "⊍")
call s:agda_input("I", "⋂")
call s:agda_input("Un", "⋃")
call s:agda_input("U+", "⨄")
call s:agda_input("U.", "⨃")
call s:agda_input("glb", "⊓")
call s:agda_input("lub", "⊔")
call s:agda_input("Glb", "⨅")
call s:agda_input("Lub", "⨆")
call s:agda_input("<bar>-", "⊢")
call s:agda_input("<bar>-n", "⊬")
call s:agda_input("-<bar>", "⊣")
call s:agda_input("<bar>=", "⊨")
call s:agda_input("<bar>=n", "⊭")
call s:agda_input("<bar><bar>-", "⊩")
call s:agda_input("<bar><bar>-n", "⊮")
call s:agda_input("<bar><bar>=", "⊫")
call s:agda_input("<bar><bar>=n", "⊯")
call s:agda_input("<bar><bar><bar>-", "⊪")
call s:agda_input("<bar>", "∣")
call s:agda_input("<bar>n", "∤")
call s:agda_input("<bar><bar>", "∥")
call s:agda_input("<bar><bar>n", "∦")
call s:agda_input("all", "∀")
call s:agda_input("ex", "∃")
call s:agda_input("exn", "∄")
call s:agda_input("0", "∅")
call s:agda_input("C", "∁")
call s:agda_input("cul", "⌜")
call s:agda_input("cuL", "⌈")
call s:agda_input("cur", "⌝")
call s:agda_input("cuR", "⌉")
call s:agda_input("cll", "⌞")
call s:agda_input("clL", "⌊")
call s:agda_input("clr", "⌟")
call s:agda_input("clR", "⌋")
call s:agda_input("qed", "∎")
call s:agda_input("x", "×")
call s:agda_input("o", "∘")
call s:agda_input("comp", "∘")
call s:agda_input(".", "∙")
call s:agda_input("*", "⋆")
call s:agda_input(".+", "∔")
call s:agda_input(".-", "∸")
call s:agda_input("::", "∷")
call s:agda_input("::-", "∺")
call s:agda_input("-:", "∹")
call s:agda_input("+ ", "⊹")
call s:agda_input("surd3", "∛")
call s:agda_input("surd4", "∜")
call s:agda_input("increment", "∆")
call s:agda_input("inf", "∞")
call s:agda_input("&", "⅋")
call s:agda_input("z;", "⨟")
call s:agda_input("z:", "⦂")
call s:agda_input("o+", "⊕")
call s:agda_input("o--", "⊖")
call s:agda_input("ox", "⊗")
call s:agda_input("o/", "⊘")
call s:agda_input("o.", "⊙")
call s:agda_input("oo", "⊚")
call s:agda_input("o*", "⊛")
call s:agda_input("o=", "⊜")
call s:agda_input("o-", "⊝")
call s:agda_input("O+", "⨁")
call s:agda_input("Ox", "⨂")
call s:agda_input("O.", "⨀")
call s:agda_input("O*", "⍟")
call s:agda_input("b+", "⊞")
call s:agda_input("b-", "⊟")
call s:agda_input("bx", "⊠")
call s:agda_input("b.", "⊡")
call s:agda_input("l-", "←")
call s:agda_input("<-", "←")
call s:agda_input("l=", "⇐")
call s:agda_input("<=", "⇐")
call s:agda_input("r-", "→")
call s:agda_input("->", "→")
call s:agda_input("r=", "⇒")
call s:agda_input("=>", "⇒")
call s:agda_input("u-", "↑")
call s:agda_input("u=", "⇑")
call s:agda_input("d-", "↓")
call s:agda_input("d=", "⇓")
call s:agda_input("ud-", "↕")
call s:agda_input("ud=", "⇕")
call s:agda_input("lr-", "↔")
call s:agda_input("<->", "↔")
call s:agda_input("lr=", "⇔")
call s:agda_input("<=>", "⇔")
call s:agda_input("ul-", "↖")
call s:agda_input("ul=", "⇖")
call s:agda_input("ur-", "↗")
call s:agda_input("ur=", "⇗")
call s:agda_input("dr-", "↘")
call s:agda_input("dr=", "⇘")
call s:agda_input("dl-", "↙")
call s:agda_input("dl=", "⇙")
call s:agda_input("l==", "⇚")
call s:agda_input("l-2", "⇇")
call s:agda_input("l-r-", "⇆")
call s:agda_input("r==", "⇛")
call s:agda_input("r-2", "⇉")
call s:agda_input("r-3", "⇶")
call s:agda_input("r-l-", "⇄")
call s:agda_input("u==", "⟰")
call s:agda_input("u-2", "⇈")
call s:agda_input("u-d-", "⇅")
call s:agda_input("d==", "⟱")
call s:agda_input("d-2", "⇊")
call s:agda_input("d-u-", "⇵")
call s:agda_input("l--", "⟵")
call s:agda_input("<--", "⟵")
call s:agda_input("l~", "↜")
call s:agda_input("r--", "⟶")
call s:agda_input("-->", "⟶")
call s:agda_input("r~", "↝")
call s:agda_input("lr--", "⟷")
call s:agda_input("<-->", "⟷")
call s:agda_input("lr~", "↭")
call s:agda_input("l-n", "↚")
call s:agda_input("<-n", "↚")
call s:agda_input("l=n", "⇍")
call s:agda_input("r-n", "↛")
call s:agda_input("->n", "↛")
call s:agda_input("r=n", "⇏")
call s:agda_input("=>n", "⇏")
call s:agda_input("lr-n", "↮")
call s:agda_input("<->n", "↮")
call s:agda_input("lr=n", "⇎")
call s:agda_input("<=>n", "⇎")
call s:agda_input("l-<bar>", "↤")
call s:agda_input("ll-", "↞")
call s:agda_input("r-<bar>", "↦")
call s:agda_input("rr-", "↠")
call s:agda_input("u-<bar>", "↥")
call s:agda_input("uu-", "↟")
call s:agda_input("d-<bar>", "↧")
call s:agda_input("dd-", "↡")
call s:agda_input("ud-<bar>", "↨")
call s:agda_input("l->", "↢")
call s:agda_input("r->", "↣")
call s:agda_input("r-o", "⊸")
call s:agda_input("-o", "⊸")
call s:agda_input("dz", "↯")
call s:agda_input("sq.", "▣")
call s:agda_input("sqo", "▢")
call s:agda_input("pab", "▰")
call s:agda_input("paw", "▱")
call s:agda_input("dib", "◆")
call s:agda_input("diw", "◇")
call s:agda_input("di.", "◈")
call s:agda_input("cib", "●")
call s:agda_input("ciw", "○")
call s:agda_input("ci.", "◎")
call s:agda_input("ci..", "◌")
call s:agda_input("ciO", "◯")
call s:agda_input("st6", "✶")
call s:agda_input("st8", "✴")
call s:agda_input("st12", "✹")
call s:agda_input("bA", "𝔸")
call s:agda_input("bB", "𝔹")
call s:agda_input("bC", "ℂ")
call s:agda_input("bD", "𝔻")
call s:agda_input("bE", "𝔼")
call s:agda_input("bF", "𝔽")
call s:agda_input("bG", "𝔾")
call s:agda_input("bH", "ℍ")
call s:agda_input("bI", "𝕀")
call s:agda_input("bJ", "𝕁")
call s:agda_input("bK", "𝕂")
call s:agda_input("bL", "𝕃")
call s:agda_input("bM", "𝕄")
call s:agda_input("bN", "ℕ")
call s:agda_input("bO", "𝕆")
call s:agda_input("bP", "ℙ")
call s:agda_input("bQ", "ℚ")
call s:agda_input("bR", "ℝ")
call s:agda_input("bS", "𝕊")
call s:agda_input("bT", "𝕋")
call s:agda_input("bU", "𝕌")
call s:agda_input("bV", "𝕍")
call s:agda_input("bW", "𝕎")
call s:agda_input("bX", "𝕏")
call s:agda_input("bY", "𝕐")
call s:agda_input("bZ", "ℤ")
call s:agda_input("bGG", "ℾ")
call s:agda_input("bGP", "ℿ")
call s:agda_input("bGS", "⅀")
call s:agda_input("ba", "𝕒")
call s:agda_input("bb", "𝕓")
call s:agda_input("bc", "𝕔")
call s:agda_input("bd", "𝕕")
call s:agda_input("be", "𝕖")
call s:agda_input("bf", "𝕗")
call s:agda_input("bg", "𝕘")
call s:agda_input("bh", "𝕙")
call s:agda_input("bi", "𝕚")
call s:agda_input("bj", "𝕛")
call s:agda_input("bk", "𝕜")
call s:agda_input("bl", "𝕝")
call s:agda_input("bm", "𝕞")
call s:agda_input("bn", "𝕟")
call s:agda_input("bo", "𝕠")
call s:agda_input("bp", "𝕡")
call s:agda_input("bq", "𝕢")
call s:agda_input("br", "𝕣")
call s:agda_input("bs", "𝕤")
call s:agda_input("bt", "𝕥")
call s:agda_input("bu", "𝕦")
call s:agda_input("bv", "𝕧")
call s:agda_input("bw", "𝕨")
call s:agda_input("bx", "𝕩")
call s:agda_input("by", "𝕪")
call s:agda_input("bz", "𝕫")
call s:agda_input("bGg", "ℽ")
call s:agda_input("bGp", "ℼ")
call s:agda_input("b0", "𝟘")
call s:agda_input("b1", "𝟙")
call s:agda_input("b2", "𝟚")
call s:agda_input("b3", "𝟛")
call s:agda_input("b4", "𝟜")
call s:agda_input("b5", "𝟝")
call s:agda_input("b6", "𝟞")
call s:agda_input("b7", "𝟟")
call s:agda_input("b8", "𝟠")
call s:agda_input("b9", "𝟡")
call s:agda_input("B0", "𝟎")
call s:agda_input("B1", "𝟏")
call s:agda_input("B2", "𝟐")
call s:agda_input("B3", "𝟑")
call s:agda_input("B4", "𝟒")
call s:agda_input("B5", "𝟓")
call s:agda_input("B6", "𝟔")
call s:agda_input("B7", "𝟕")
call s:agda_input("B8", "𝟖")
call s:agda_input("B9", "𝟗")
call s:agda_input("[[", "⟦")
call s:agda_input("]]", "⟧")
call s:agda_input("<", "⟨")
call s:agda_input(">", "⟩")
call s:agda_input("<<", "⟪")
call s:agda_input(">>", "⟫")
call s:agda_input("{{", "⦃")
call s:agda_input("}}", "⦄")
call s:agda_input("(b", "⟅")
call s:agda_input(")b", "⟆")
call s:agda_input("lbag", "⟅")
call s:agda_input("rbag", "⟆")
call s:agda_input("<bar>>", "⦊")
call s:agda_input("<bar>)", "⦈")
call s:agda_input("))", "⦆")
call s:agda_input("bub", "•")
call s:agda_input("buw", "◦")
call s:agda_input("but", "‣")
call s:agda_input("b", "♭")
call s:agda_input("#", "♯")
call s:agda_input("\\", "\\")
call s:agda_input("en", "–")
call s:agda_input("em", "—")
call s:agda_input("!!", "‼")
call s:agda_input("??", "⁇")
call s:agda_input("?!", "‽")
call s:agda_input("!?", "⁉")
call s:agda_input("8<", "✂")
call s:agda_input("tie", "⁀")
call s:agda_input("undertie", "‿")
call s:agda_input("_~", "̰")
call s:agda_input("^l-", "⃖")
call s:agda_input("^r-", "⃗")
call s:agda_input("^lr", "⃡")
call s:agda_input("_lr", "͍")
call s:agda_input("Ga", "α")
call s:agda_input("GA", "Α")
call s:agda_input("Gb", "β")
call s:agda_input("GB", "Β")
call s:agda_input("Gg", "γ")
call s:agda_input("GG", "Γ")
call s:agda_input("Gd", "δ")
call s:agda_input("GD", "Δ")
call s:agda_input("Ge", "ε")
call s:agda_input("GE", "Ε")
call s:agda_input("Gz", "ζ")
call s:agda_input("GZ", "Ζ")
call s:agda_input("Gh", "η")
call s:agda_input("GH", "Η")
call s:agda_input("Gth", "θ")
call s:agda_input("GTH", "Θ")
call s:agda_input("Gi", "ι")
call s:agda_input("GI", "Ι")
call s:agda_input("Gk", "κ")
call s:agda_input("GK", "Κ")
call s:agda_input("Gl", "λ")
call s:agda_input("GL", "Λ")
call s:agda_input("Gl-", "ƛ")
call s:agda_input("Gm", "μ")
call s:agda_input("GM", "Μ")
call s:agda_input("Gn", "ν")
call s:agda_input("GN", "Ν")
call s:agda_input("Gx", "ξ")
call s:agda_input("GX", "Ξ")
call s:agda_input("Gr", "ρ")
call s:agda_input("GR", "Ρ")
call s:agda_input("Gs", "σ")
call s:agda_input("GS", "Σ")
call s:agda_input("Gt", "τ")
call s:agda_input("GT", "Τ")
call s:agda_input("Gu", "υ")
call s:agda_input("GU", "Υ")
call s:agda_input("Gf", "φ")
call s:agda_input("GF", "Φ")
call s:agda_input("Gc", "χ")
call s:agda_input("GC", "Χ")
call s:agda_input("Gp", "ψ")
call s:agda_input("GP", "Ψ")
call s:agda_input("Go", "ω")
call s:agda_input("GO", "Ω")
call s:agda_input("MiA", "𝐴")
call s:agda_input("MiB", "𝐵")
call s:agda_input("MiC", "𝐶")
call s:agda_input("MiD", "𝐷")
call s:agda_input("MiE", "𝐸")
call s:agda_input("MiF", "𝐹")
call s:agda_input("MiG", "𝐺")
call s:agda_input("MiH", "𝐻")
call s:agda_input("MiI", "𝐼")
call s:agda_input("MiJ", "𝐽")
call s:agda_input("MiK", "𝐾")
call s:agda_input("MiL", "𝐿")
call s:agda_input("MiM", "𝑀")
call s:agda_input("MiN", "𝑁")
call s:agda_input("MiO", "𝑂")
call s:agda_input("MiP", "𝑃")
call s:agda_input("MiQ", "𝑄")
call s:agda_input("MiR", "𝑅")
call s:agda_input("MiS", "𝑆")
call s:agda_input("MiT", "𝑇")
call s:agda_input("MiU", "𝑈")
call s:agda_input("MiV", "𝑉")
call s:agda_input("MiW", "𝑊")
call s:agda_input("MiX", "𝑋")
call s:agda_input("MiY", "𝑌")
call s:agda_input("MiZ", "𝑍")
call s:agda_input("Mia", "𝑎")
call s:agda_input("Mib", "𝑏")
call s:agda_input("Mic", "𝑐")
call s:agda_input("Mid", "𝑑")
call s:agda_input("Mie", "𝑒")
call s:agda_input("Mif", "𝑓")
call s:agda_input("Mig", "𝑔")
call s:agda_input("Mih", "ℎ")
call s:agda_input("Mii", "𝑖")
call s:agda_input("Mij", "𝑗")
call s:agda_input("Mik", "𝑘")
call s:agda_input("Mil", "𝑙")
call s:agda_input("Mim", "𝑚")
call s:agda_input("Min", "𝑛")
call s:agda_input("Mio", "𝑜")
call s:agda_input("Mip", "𝑝")
call s:agda_input("Miq", "𝑞")
call s:agda_input("Mir", "𝑟")
call s:agda_input("Mis", "𝑠")
call s:agda_input("Mit", "𝑡")
call s:agda_input("Miu", "𝑢")
call s:agda_input("Miv", "𝑣")
call s:agda_input("Miw", "𝑤")
call s:agda_input("Mix", "𝑥")
call s:agda_input("Miy", "𝑦")
call s:agda_input("Miz", "𝑧")
call s:agda_input("MIA", "𝑨")
call s:agda_input("MIB", "𝑩")
call s:agda_input("MIC", "𝑪")
call s:agda_input("MID", "𝑫")
call s:agda_input("MIE", "𝑬")
call s:agda_input("MIF", "𝑭")
call s:agda_input("MIG", "𝑮")
call s:agda_input("MIH", "𝑯")
call s:agda_input("MII", "𝑰")
call s:agda_input("MIJ", "𝑱")
call s:agda_input("MIK", "𝑲")
call s:agda_input("MIL", "𝑳")
call s:agda_input("MIM", "𝑴")
call s:agda_input("MIN", "𝑵")
call s:agda_input("MIO", "𝑶")
call s:agda_input("MIP", "𝑷")
call s:agda_input("MIQ", "𝑸")
call s:agda_input("MIR", "𝑹")
call s:agda_input("MIS", "𝑺")
call s:agda_input("MIT", "𝑻")
call s:agda_input("MIU", "𝑼")
call s:agda_input("MIV", "𝑽")
call s:agda_input("MIW", "𝑾")
call s:agda_input("MIX", "𝑿")
call s:agda_input("MIY", "𝒀")
call s:agda_input("MIZ", "𝒁")
call s:agda_input("MIa", "𝒂")
call s:agda_input("MIb", "𝒃")
call s:agda_input("MIc", "𝒄")
call s:agda_input("MId", "𝒅")
call s:agda_input("MIe", "𝒆")
call s:agda_input("MIf", "𝒇")
call s:agda_input("MIg", "𝒈")
call s:agda_input("MIh", "𝒉")
call s:agda_input("MIi", "𝒊")
call s:agda_input("MIj", "𝒋")
call s:agda_input("MIk", "𝒌")
call s:agda_input("MIl", "𝒍")
call s:agda_input("MIm", "𝒎")
call s:agda_input("MIn", "𝒏")
call s:agda_input("MIo", "𝒐")
call s:agda_input("MIp", "𝒑")
call s:agda_input("MIq", "𝒒")
call s:agda_input("MIr", "𝒓")
call s:agda_input("MIs", "𝒔")
call s:agda_input("MIt", "𝒕")
call s:agda_input("MIu", "𝒖")
call s:agda_input("MIv", "𝒗")
call s:agda_input("MIw", "𝒘")
call s:agda_input("MIx", "𝒙")
call s:agda_input("MIy", "𝒚")
call s:agda_input("MIz", "𝒛")
call s:agda_input("McA", "𝒜")
call s:agda_input("McB", "ℬ")
call s:agda_input("McC", "𝒞")
call s:agda_input("McD", "𝒟")
call s:agda_input("McE", "ℰ")
call s:agda_input("McF", "ℱ")
call s:agda_input("McG", "𝒢")
call s:agda_input("McH", "ℋ")
call s:agda_input("McI", "ℐ")
call s:agda_input("McJ", "𝒥")
call s:agda_input("McK", "𝒦")
call s:agda_input("McL", "ℒ")
call s:agda_input("McM", "ℳ")
call s:agda_input("McN", "𝒩")
call s:agda_input("McO", "𝒪")
call s:agda_input("McP", "𝒫")
call s:agda_input("McQ", "𝒬")
call s:agda_input("McR", "ℛ")
call s:agda_input("McS", "𝒮")
call s:agda_input("McT", "𝒯")
call s:agda_input("McU", "𝒰")
call s:agda_input("McV", "𝒱")
call s:agda_input("McW", "𝒲")
call s:agda_input("McX", "𝒳")
call s:agda_input("McY", "𝒴")
call s:agda_input("McZ", "𝒵")
call s:agda_input("Mca", "𝒶")
call s:agda_input("Mcb", "𝒷")
call s:agda_input("Mcc", "𝒸")
call s:agda_input("Mcd", "𝒹")
call s:agda_input("Mce", "ℯ")
call s:agda_input("Mcf", "𝒻")
call s:agda_input("Mcg", "ℊ")
call s:agda_input("Mch", "𝒽")
call s:agda_input("Mci", "𝒾")
call s:agda_input("Mcj", "𝒿")
call s:agda_input("Mck", "𝓀")
call s:agda_input("Mcl", "𝓁")
call s:agda_input("Mcm", "𝓂")
call s:agda_input("Mcn", "𝓃")
call s:agda_input("Mco", "ℴ")
call s:agda_input("Mcp", "𝓅")
call s:agda_input("Mcq", "𝓆")
call s:agda_input("Mcr", "𝓇")
call s:agda_input("Mcs", "𝓈")
call s:agda_input("Mct", "𝓉")
call s:agda_input("Mcu", "𝓊")
call s:agda_input("Mcv", "𝓋")
call s:agda_input("Mcw", "𝓌")
call s:agda_input("Mcx", "𝓍")
call s:agda_input("Mcy", "𝓎")
call s:agda_input("Mcz", "𝓏")
call s:agda_input("MCA", "𝓐")
call s:agda_input("MCB", "𝓑")
call s:agda_input("MCC", "𝓒")
call s:agda_input("MCD", "𝓓")
call s:agda_input("MCE", "𝓔")
call s:agda_input("MCF", "𝓕")
call s:agda_input("MCG", "𝓖")
call s:agda_input("MCH", "𝓗")
call s:agda_input("MCI", "𝓘")
call s:agda_input("MCJ", "𝓙")
call s:agda_input("MCK", "𝓚")
call s:agda_input("MCL", "𝓛")
call s:agda_input("MCM", "𝓜")
call s:agda_input("MCN", "𝓝")
call s:agda_input("MCO", "𝓞")
call s:agda_input("MCP", "𝓟")
call s:agda_input("MCQ", "𝓠")
call s:agda_input("MCR", "𝓡")
call s:agda_input("MCS", "𝓢")
call s:agda_input("MCT", "𝓣")
call s:agda_input("MCU", "𝓤")
call s:agda_input("MCV", "𝓥")
call s:agda_input("MCW", "𝓦")
call s:agda_input("MCX", "𝓧")
call s:agda_input("MCY", "𝓨")
call s:agda_input("MCZ", "𝓩")
call s:agda_input("MCa", "𝓪")
call s:agda_input("MCb", "𝓫")
call s:agda_input("MCc", "𝓬")
call s:agda_input("MCd", "𝓭")
call s:agda_input("MCe", "𝓮")
call s:agda_input("MCf", "𝓯")
call s:agda_input("MCg", "𝓰")
call s:agda_input("MCh", "𝓱")
call s:agda_input("MCi", "𝓲")
call s:agda_input("MCj", "𝓳")
call s:agda_input("MCk", "𝓴")
call s:agda_input("MCl", "𝓵")
call s:agda_input("MCm", "𝓶")
call s:agda_input("MCn", "𝓷")
call s:agda_input("MCo", "𝓸")
call s:agda_input("MCp", "𝓹")
call s:agda_input("MCq", "𝓺")
call s:agda_input("MCr", "𝓻")
call s:agda_input("MCs", "𝓼")
call s:agda_input("MCt", "𝓽")
call s:agda_input("MCu", "𝓾")
call s:agda_input("MCv", "𝓿")
call s:agda_input("MCw", "𝔀")
call s:agda_input("MCx", "𝔁")
call s:agda_input("MCy", "𝔂")
call s:agda_input("MCz", "𝔃")
call s:agda_input("MfA", "𝔄")
call s:agda_input("MfB", "𝔅")
call s:agda_input("MfC", "ℭ")
call s:agda_input("MfD", "𝔇")
call s:agda_input("MfE", "𝔈")
call s:agda_input("MfF", "𝔉")
call s:agda_input("MfG", "𝔊")
call s:agda_input("MfH", "ℌ")
call s:agda_input("MfI", "ℑ")
call s:agda_input("MfJ", "𝔍")
call s:agda_input("MfK", "𝔎")
call s:agda_input("MfL", "𝔏")
call s:agda_input("MfM", "𝔐")
call s:agda_input("MfN", "𝔑")
call s:agda_input("MfO", "𝔒")
call s:agda_input("MfP", "𝔓")
call s:agda_input("MfQ", "𝔔")
call s:agda_input("MfR", "ℜ")
call s:agda_input("MfS", "𝔖")
call s:agda_input("MfT", "𝔗")
call s:agda_input("MfU", "𝔘")
call s:agda_input("MfV", "𝔙")
call s:agda_input("MfW", "𝔚")
call s:agda_input("MfX", "𝔛")
call s:agda_input("MfY", "𝔜")
call s:agda_input("MfZ", "ℨ")
call s:agda_input("Mfa", "𝔞")
call s:agda_input("Mfb", "𝔟")
call s:agda_input("Mfc", "𝔠")
call s:agda_input("Mfd", "𝔡")
call s:agda_input("Mfe", "𝔢")
call s:agda_input("Mff", "𝔣")
call s:agda_input("Mfg", "𝔤")
call s:agda_input("Mfh", "𝔥")
call s:agda_input("Mfi", "𝔦")
call s:agda_input("Mfj", "𝔧")
call s:agda_input("Mfk", "𝔨")
call s:agda_input("Mfl", "𝔩")
call s:agda_input("Mfm", "𝔪")
call s:agda_input("Mfn", "𝔫")
call s:agda_input("Mfo", "𝔬")
call s:agda_input("Mfp", "𝔭")
call s:agda_input("Mfq", "𝔮")
call s:agda_input("Mfr", "𝔯")
call s:agda_input("Mfs", "𝔰")
call s:agda_input("Mft", "𝔱")
call s:agda_input("Mfu", "𝔲")
call s:agda_input("Mfv", "𝔳")
call s:agda_input("Mfw", "𝔴")
call s:agda_input("Mfx", "𝔵")
call s:agda_input("Mfy", "𝔶")
call s:agda_input("Mfz", "𝔷")
call s:agda_input("_a", "ₐ")
call s:agda_input("_e", "ₑ")
call s:agda_input("_h", "ₕ")
call s:agda_input("_i", "ᵢ")
call s:agda_input("_j", "ⱼ")
call s:agda_input("_k", "ₖ")
call s:agda_input("_l", "ₗ")
call s:agda_input("_m", "ₘ")
call s:agda_input("_n", "ₙ")
call s:agda_input("_o", "ₒ")
call s:agda_input("_p", "ₚ")
call s:agda_input("_r", "ᵣ")
call s:agda_input("_s", "ₛ")
call s:agda_input("_t", "ₜ")
call s:agda_input("_u", "ᵤ")
call s:agda_input("_v", "ᵥ")
call s:agda_input("_x", "ₓ")
call s:agda_input("_Gb", "ᵦ")
call s:agda_input("_Gg", "ᵧ")
call s:agda_input("_Gr", "ᵨ")
call s:agda_input("_Gf", "ᵩ")
call s:agda_input("_Gc", "ᵪ")
call s:agda_input("^a", "ᵃ")
call s:agda_input("^b", "ᵇ")
call s:agda_input("^c", "ᶜ")
call s:agda_input("^d", "ᵈ")
call s:agda_input("^e", "ᵉ")
call s:agda_input("^f", "ᶠ")
call s:agda_input("^g", "ᵍ")
call s:agda_input("^h", "ʰ")
call s:agda_input("^i", "ⁱ")
call s:agda_input("^j", "ʲ")
call s:agda_input("^k", "ᵏ")
call s:agda_input("^l", "ˡ")
call s:agda_input("^m", "ᵐ")
call s:agda_input("^n", "ⁿ")
call s:agda_input("^o", "ᵒ")
call s:agda_input("^p", "ᵖ")
call s:agda_input("^r", "ʳ")
call s:agda_input("^s", "ˢ")
call s:agda_input("^t", "ᵗ")
call s:agda_input("^u", "ᵘ")
call s:agda_input("^v", "ᵛ")
call s:agda_input("^w", "ʷ")
call s:agda_input("^x", "ˣ")
call s:agda_input("^y", "ʸ")
call s:agda_input("^z", "ᶻ")
call s:agda_input("^A", "ᴬ")
call s:agda_input("^B", "ᴮ")
call s:agda_input("^D", "ᴰ")
call s:agda_input("^E", "ᴱ")
call s:agda_input("^G", "ᴳ")
call s:agda_input("^H", "ᴴ")
call s:agda_input("^I", "ᴵ")
call s:agda_input("^J", "ᴶ")
call s:agda_input("^K", "ᴷ")
call s:agda_input("^L", "ᴸ")
call s:agda_input("^M", "ᴹ")
call s:agda_input("^N", "ᴺ")
call s:agda_input("^O", "ᴼ")
call s:agda_input("^P", "ᴾ")
call s:agda_input("^R", "ᴿ")
call s:agda_input("^T", "ᵀ")
call s:agda_input("^U", "ᵁ")
call s:agda_input("^V", "ⱽ")
call s:agda_input("^W", "ᵂ")
call s:agda_input("^Gb", "ᵝ")
call s:agda_input("^Gg", "ᵞ")
call s:agda_input("^Gd", "ᵟ")
call s:agda_input("^Ge", "ᵋ")
call s:agda_input("^Gth", "ᶿ")
call s:agda_input("^Gf", "ᵠ")
call s:agda_input("^Gc", "ᵡ")
call s:agda_input(" ", " ")
call s:agda_input("!", "¡")
call s:agda_input("cent", "¢")
call s:agda_input("brokenbar", "¦")
call s:agda_input("degree", "°")
call s:agda_input("?", "¿")
call s:agda_input("^a_", "ª")
call s:agda_input("^o_", "º")

