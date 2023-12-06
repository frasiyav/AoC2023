⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"
i ← •file.Lines "input06.txt"

F ← ×´¯1+´·⌈2÷˜⊣(+≍-˜)·√×˜∘⊣-4×⊢

•Show F˝˘ ⌽ ToNats¨ ' '⊸≠⊸/¨⊸≍ i
