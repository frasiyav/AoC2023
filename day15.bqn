⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ','Split ¯1↓•file.Chars "input15.txt"

Hash ← 0(256|17×+)´⌽
Push ← {𝕨≠⊸≢p←⊑(⊏⍉𝕨)⊐⊏𝕩?𝕩⌾(p⊸⊏)𝕨;𝕨∾𝕩}
Pop ← {(𝕩≢⊑)˘⊸/𝕨}

P2 ← (256⥊<0‿2⥊0){
    h ← Hash @-˜⊑𝕨
    ("-"≡1⊑𝕨)◶⟨
      ⊢Push 0‿2⊏𝕨˙
      ⊢Pop·⊑𝕨˙
    ⟩⌾(h⊸⊑)𝕩
}´⌽

FP ← (1+·↕≠){+´·∾𝔽×(∾𝔽×'0'-˜1⊏⍉)¨}

•Show +´Hash¨i-@
•Show FP P2 "-="⊸((+`»⊸∨)∘∊˜⊔⊢)¨ i
