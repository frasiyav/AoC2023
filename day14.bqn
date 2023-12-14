i ← ".O#"⊐ ⌽⍉>•file.Lines "input14.txt"

Roll ← (⍋1⊸≠+·»2×·+`2=⊢)⊸⊏
Cycle ← (⍉∘⌽Roll˘)⍟4
CalcLoad ← +´·(+˝×·⌽1+·↕1⊑≢) 1=⊢

P2 ← {
  ⟨Has,Get,Set⟩ ← •HashMap˜⟨⟩
  i ← 0
  l ← ⟨⟩

  cs ← Get {
    l∾↩CalcLoad 𝕩
    𝕩 Set i
    i+↩1
    Cycle 𝕩
  }•_while_(¬Has) 𝕩

  l⊑˜𝕨|˜⌾(-⟜cs)≠l
}

•Show CalcLoad Roll˘ i
•Show 1e9 P2 i
