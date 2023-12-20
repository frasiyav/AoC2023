⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"
i ← •file.Lines "input20.txt"

[modules,dst] ← ⍉>" -> "⊸Split¨i
types ← ("b%&"⊑∘⊐⊑)¨modules
k ← 1⊸↓¨⌾((0≠types)⊸/)modules
dst ", "⊸Split¨↩
k ∾↩ <"rx"
dst ∾↩ <⟨⟩
types ∾↩ 4
dst k⊸⊐¨↩
bc‿rx← k⊐"broadcaster"‿"rx"
src ← <∘/˘⍉>((≠k)↑/⁼)¨dst
rxi ← {!1≡≠𝕩⋄⊑𝕩}rx⊑src
types 3⌾(rxi⊸⊑)↩

q ← {
  q⇐⟨⟩
  c⇐0‿0
  Push ⇐ {c 1⊸+⌾((⊑𝕩)⊸⊑)↩ ⋄ q∾↩<𝕩}
  Pop ⇐ {𝕊: r←⊑q ⋄ q 1⊸↓↩ ⋄ r}
  Len ⇐ {𝕊:≠q}
}

Pulse ← {𝕊p‿f‿t:
  m ← t⊑types
  fi ← ⊑f⊐˜t⊑src
  state m◶⟨
    1+⊢
    p⊸=
    p⌾(fi⊸⊑)
    (bc⊑state)⌾(fi⊸⊑)⍟p
    ⊢
  ⟩⌾(t⊸⊑)↩
  s ← t⊑state
  q.Push¨ m◶⟨
    p⊸∾¨
    p◶⟨s⊸∾¨,⟨⟩⟩
    (¬·∧´s˙)⊸∾¨
    (¬·∧´×∘s)⊸∾¨
    ⊢
  ⟩t⋈¨t⊑dst
}

state ← types ⊣◶⟨0,0,0¨,0¨,0⟩¨src

Button ← {𝕊: Pulse∘q.Pop•_while_(×q.Len) q.Push 0‿bc‿bc}

Button⍟1000 @
•Show ×´q.c

Button•_while_{𝕊:∨´0=rxi⊑state} @
•Show •math.LCM´rxi⊑state
