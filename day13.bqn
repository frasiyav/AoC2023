⟨ Split, lf ⟩ ← •Import "bqn-libs/strings.bqn"
While ← {𝕩•_while_𝕨@}´

i ← •file.Chars "input13.txt"

p ← (>lf Split⊢)¨ (2⥊lf) Split ¯1↓i

P1 ← { 𝕊 m:
  n ← ≠m
  p ← 0‿1 ⋄ PNext ← {𝕊: p+↩¯1‿1}
  refl ← 1 ⋄ RNext ← {𝕊: p↩0‿1+refl ⋄ refl+↩1}
  found ← 0

  While {𝕊:(×found) ¬⊸∧ refl<n}‿{𝕊:
    ∨´1≠0‿n⍋p? found↩refl;
    ≡˝p⊏m? PNext @;
    RNext @
  }
  found
}

P2 ← { 𝕊 m:
  n ← ≠m
  p ← 0‿1 ⋄ PNext ← {𝕊: p+↩¯1‿1}
  refl ← 1 ⋄ RNext ← {𝕊: p↩0‿1+refl ⋄ refl+↩1 ⋄ smudged↩0}
  found ← 0
  smudged ←0

  While {𝕊: (×found) ¬⊸∧ refl<n}‿{𝕊:
    ∨´1≠0‿n⍋p?
      { smudged? found↩refl ; RNext@ }
  ;
    {
      smudged?
        { ≡˝p⊏m ? PNext @; RNext @}
    ;
      1≡+´≠˝p⊏m?
        PNext @
        smudged↩1
    ;
      ≡˝p⊏m? PNext @
    ;
      RNext@
    }
  }
  found
}
•Show {+´(+´100‿1×·𝕏¨⋈⟜⍉)¨p}¨p1‿p2
