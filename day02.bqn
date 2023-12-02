⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input02.txt"

p ← ((⍉∘>' 'Split¨", "Split⊢)¨"; "Split 1⊑": "Split⊢)¨i

k ← "red"‿"green"‿"blue"
Colors ← ⊐⟜k⊸⊏⟜(3↑0∾˜•ParseFloat¨)˜˝
g ← ⍉>(⌈´Colors¨)¨p

•Show +´1+/∧˝12‿13‿14≥g
•Show +´×˝g
