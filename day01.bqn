i ← •file.Lines "input01.txt"

F ← +´10‿1×·+´ {0‿¯1⊏/⟜(≠⥊·↕10˙)⥊⍉>(≠𝕩)↑¨𝕨⍷¨<𝕩}⚇2‿1

# Part 1
digits ← ⋈¨'0'+↕10
•Show digits F i

# Part 2
digits ∾↩ "zero"‿"one"‿"two"‿"three"‿"four"‿"five"‿"six"‿"seven"‿"eight"‿"nine"
•Show digits F i
