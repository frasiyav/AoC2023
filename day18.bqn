⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"
i ← •file.Lines "input18.txt"

[d,l,c] ← ⍉>' 'Split¨i
l ↩ •ParseFloat¨l
d ↩ "RDLU"⊐∾d

dirs ← [0‿1, 1‿0, 0‿¯1, ¯1‿0]
P ← +`0‿0∾⊣×dirs⊏˜⊢
Area ← 1+2÷˜·|·+´(1⊸↓((+˝·|-)+-○⊏×+○(1⊸⊏))○⍉¯1⊸↓)

•Show Area l P d

dir‿dist ← ¯1(⊏⋈↓) ¯1↓2↓ ⍉>c
l ↩ +⟜(16⊸×)˝⌽ "0123456789abcdef"⊐dist
d ↩ dir-'0'

•Show Area l P d
