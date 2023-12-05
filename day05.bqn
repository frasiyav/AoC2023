⟨ ToNums, Split, lf ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Chars "input05.txt"
s‿maps ← (⊑⋈1⊸↓)lf Split¨ (2⥊lf) Split ¯1↓i
s ↩ ToNums 1⊑": " Split ⊑s
maps ↩ ⌽(>ToNums¨)¨1↓¨maps

Map ← { ranges 𝕊 map:
  [iv,dt] ← ⍉∧ 2((+`-⊸↑)⋈·-´↑)˘map
  m ← 1∾1(↓≠-⊸↓)∾iv
  iv (m/∾)↩
  dt (0∾˜m/·⥊0≍˘⊢)↩
  ranges (∧·∾{<2↕∾⟜(iv(⊣/˜1=⍋˜)1‿0+𝕩)⊸∾´𝕩}˘)↩
  (⊣+dt⊏˜iv⍋0‿¯1⊸+)˘ranges
}˜
•Show (⌊´∘⥊Map´⟜maps)¨ ⟨⍉0‿1+⌜s, +`˘∘‿2⥊s⟩
