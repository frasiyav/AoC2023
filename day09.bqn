⟨ ToNums ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input09.txt"
p ← >ToNums¨i

F ← +´≠⊸{-⊢´+`⁼⍟𝕨𝕩∾0}˘

•Show F p
•Show F⌽˘p
