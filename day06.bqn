⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"
i ← •file.Lines "input06.txt"

p1 ← ToNats¨ i
p2 ← (ToNats' '⊸≠⊸/)¨ i

F ← ×´1+·⌈⊸-⟜⌊´¯1‿1+2÷˜(⊣(+≍-)·√×˜⊸-⟜(4×⊢))˝

•Show F¨p1‿p2
