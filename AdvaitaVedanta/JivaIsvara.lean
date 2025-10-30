import AdvaitaVedanta.Signature
import AdvaitaVedanta.CoreAxioms
import AdvaitaVedanta.LevelAxioms

namespace AdvaitaVedanta

-- Jīva Axioms
axiom J1 : ∀ j : Obj, Jiva j → C j
axiom J2 : ∀ j : Obj, Jiva j → Level_of j Vyav
axiom J3 : ∀ j : Obj, Jiva j → Phi j
axiom J4 : ∀ j : Obj, Jiva j → (∃ b : Obj, Body b ∧ Embodied j b)
axiom J5 : ∀ j : Obj, Jiva j → (∃ a : Obj, A a ∧ Cond a j)
axiom J6 : ∀ j : Obj, Jiva j → (∃ a : Obj, A a ∧ IgnoranceOf j a)
axiom J7 : ∀ j : Obj, Jiva j → (∃ u : Obj, Upadhi u j)
axiom J7a : ∀ j : Obj, Jiva j → (∃ s : Obj, SpaceItself s ∧ Upadhi s j)
axiom J8 : ∃ j₁ j₂ : Obj, Jiva j₁ ∧ Jiva j₂ ∧ j₁ ≠ j₂
axiom J9 : ∀ u j : Obj, Y u ∧ Jiva j → u ≠ j
axiom J10 : ∀ u i : Obj, Y u ∧ Isvara i → u ≠ i

-- Īśvara Axioms
axiom I1 : ∀ i : Obj, Isvara i → C i
axiom I2 : ∀ i : Obj, Isvara i → Level_of i Vyav
axiom I3 : ∀ i : Obj, Isvara i → (∃ a : Obj, A a ∧ Cond a i)
axiom I4 : ∀ i : Obj, Isvara i → Q_p i
axiom I5 : ∀ i₁ i₂ : Obj, Isvara i₁ ∧ Isvara i₂ → i₁ = i₂
axiom I6 : ∀ i x : Obj, Isvara i ∧ C x ∧ Level_of x Vyav →
  (∃ r : Obj → Obj → Prop, r i x)

end AdvaitaVedanta
