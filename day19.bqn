⟨ Split, lf, ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ¯1↓•file.Chars "input19.txt"

workflows‿parts ← lf Split¨ (2⥊lf)Split i
[id,wf] ← ⍉>('{'Split ¯1↓⊢)¨ workflows
parts ToNats¨↩
_KF ← {fs⊑˜⊑id⊐<𝕗}

IVSplit ← {v𝕊c‿d: ⌽⍟d < {𝕩⌾(c⊸⊏)𝕨}¨·⌽⌾⊑ (v+d)∾¨c⊏⊢}
ParseWF ← {
  r ← ⍉>¯2↑¨':'Split¨','Split 𝕩
  r (⋈˜˙∾˜·(⊑∘ToNats IVSplit 4|"xmas<>"⊐2↑⊢)¨¯1↓⊢)⌾⊏↩
  {r‿d𝕊𝕩: d _KF⊸⊢´R𝕩}˝⟜(⌽⍉r)
}
accept ← ⟨⟩ ⋄ A ← {accept∾↩<𝕩} ⋄ id∾↩<"A"
fs ← A‿@ ∾˜ ParseWF¨wf

"in"_KF 4‿2⥊1‿4001

•Show +´∾ parts × ∨˝∧´¨ 1= accept ⍋˘⌜ parts
•Show +´(×´-˜´˘)¨accept
