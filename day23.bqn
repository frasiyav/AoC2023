MDSlash ⇐ /○⥊⟜↕⟜≢

i ← >•file.Lines "input23.txt"

nodes ← MDSlash (2<·+˝«∾»∾«˘≍»˘)⊸∧ '#'≠i
nodes ∾˜↩ ⟨1‿1⟩
nodes ∾↩ ⟨≢i⟩-2
i '#'¨⌾(⟨0‿1,¯1‿¯2⟩⊸⊑)↩

NB ← ⟨¯1‿0, 0‿1, 1‿0, 0‿¯1⟩+¨<
Follow ← {p𝕊n:l←1⋄l⋈{l+↩1⋄r←⊑(p⊸≢∧'#'≠⊑⟜i)¨⊸/NB𝕩⋄p↩𝕩⋄r}•_while_(¬<⊑∘∊nodes˙)𝕩}
Connections ← {𝕏{nodes⊸⊐⌾(1⊸⊏·⍉>)𝕩⊸Follow¨𝔽∘⊑⟜i⊸/NB𝕩}¨nodes}
Run ← {0 𝕩{
  𝕨⊑𝕩? ¯∞;
  𝕨≡1-˜≠nodes? 2;
  ⌈´𝕊⟜(1⌾(𝕨⊸⊑)𝕩)⊸+˜´¨𝕨⊑𝕗
}0¨nodes}

•Show Run∘Connections¨⟨"^>v<"⊸=∨'.'=⊢, '#'≠⊢⟩
