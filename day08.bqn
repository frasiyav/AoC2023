⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input08.txt"

⟨ins, nodes⟩ ← (⊑⋈2↓⊢)i
[k,·,l,r] ← ⍉>∊⟜('A'+↕26)⊸/¨¨' 'Split¨nodes
p1 ← k⊐"AAA"‿"ZZZ"
p2 ← /˘"AZ"=⌜2⊑¨k

m ← k⊐[l,r]
ins "LR"⊸⊐↩
n ← ≠ins

F ← {c←0 ⋄ {{𝕊:c+↩1}⊸⊢ 𝕩 ⊑ m⊏˜(n|c)⊑ins}•_while_(⊑·¬∊⟜𝕩)𝕨 ⋄ c}

•Show F⟜⋈´ p1
•Show •math.LCM´ F¨⟜<˝p2
