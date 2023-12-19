⟨ Split, lf, ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ¯1↓•file.Chars "input19.txt"

workflows‿parts ← lf Split¨ (2⥊lf)Split i
[id,wf] ← ⍉>('{'Split ¯1↓⊢)¨ workflows
parts ↩ ToNats¨ parts
_KF ← {fs⊑˜⊑id⊐<𝕗}

IVSplit ← {v𝕊c‿d: ⌽⍟d < {𝕩⌾(c⊸⊏)𝕨}¨·⌽⌾⊑ (v+d)∾¨c⊏⊢}
ParseWF ← {
  r‿def ← ¯1(↓⋈⊑)','Split 𝕩
  [cond,dest] ← ⍉>':'Split¨r
  r ↩ (⊑∘ToNats IVSplit 4|"xmas<>"⊐2↑⊢)¨cond
  {∧´<´˘𝕩? def _KF 𝕩{r‿d𝕊𝕩: d _KF⊸⊢´R𝕩}˝⌽ ⍉r≍dest ; @ }
}

accept ← ⟨⟩ ⋄ A ← {accept∾↩<𝕩} ⋄ id∾↩<"A"
reject ← ⟨⟩ ⋄ R ← {reject∾↩<𝕩} ⋄ id∾↩<"R"
fs ← A‿R ∾˜ ParseWF¨wf

"in"_KF 4‿2⥊1‿4001

•Show +´∾ parts × ∨˝∧´¨ 1= accept ⍋˘⌜ parts
•Show +´(×´-˜´˘)¨accept
