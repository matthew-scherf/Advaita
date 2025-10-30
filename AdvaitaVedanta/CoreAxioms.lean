import AdvaitaVedanta.Signature

namespace AdvaitaVedanta

-- A1: Universal Classification
axiom A1a : ∀ x : Obj, A x ∨ C x
axiom A1b : ∀ x : Obj, ¬(A x ∧ C x)

-- A2: Uniqueness of the Absolute
axiom A2 : (∃ a : Obj, A a) ∧ (∀ a₁ a₂ : Obj, A a₁ → A a₂ → a₁ = a₂)
axiom A2b : ∀ a : Obj, A a → (∀ x : Obj, x ≠ a → ¬A x)

-- A3: Uniqueness of the Subject
axiom A3 : (∃ u : Obj, Y u) ∧ (∀ u₁ u₂ : Obj, Y u₁ → Y u₂ → u₁ = u₂)
axiom A3b : ∀ u : Obj, Y u → (∀ x : Obj, x ≠ u → ¬Y x)

-- A4: Subject-Absolute Identity (Tat Tvam Asi Core)
axiom A4 : ∀ x : Obj, Y x ↔ A x

-- A5: Self-Grounding of the Absolute
axiom A5 : ∀ a : Obj, A a → Cond a a

-- A6: Universal Grounding
axiom A6 : ∀ x : Obj, ∃ a : Obj, A a ∧ Cond a x

-- A7: Transcendence of Phenomenality
axiom A7 : ∀ a : Obj, A a → ¬Phi a
axiom A7a : ∀ a : Obj, A a → (¬T_p a ∧ ¬S_p a ∧ ¬Q_p a)
axiom A7b : ∀ a : Obj, A a → Saccidananda a

-- A8: Phenomenality of the Conditioned
axiom A8 : ∀ x : Obj, C x → Phi x

-- A9: Asymmetry of Grounding (Non-Absolute)
axiom A9 : ∀ x y : Obj, Cond x y ∧ Cond y x → (x = y ∧ A x)

-- A10: Transitivity of Grounding
axiom A10 : ∀ x y z : Obj, Cond x y ∧ Cond y z → Cond x z

-- A11: Absolute Witnesses Everything
axiom A11 : ∀ a x : Obj, A a → Witnesses a x

-- A12: Self-Luminosity
axiom A12 : ∀ a : Obj, A a → Witnesses a a

-- A13: Subject Does Not Perceive
axiom A13 : ∀ u o : Obj, Y u → ¬Perceives u o

-- A14: Subject is Knower-Known-Knowing
axiom A14 : ∀ u : Obj, Y u → (Knower u ∧ Known u ∧ Knowing u)

-- A15: No Real Change in Absolute
axiom A15 : ∀ a x : Obj, A a → ¬RealChange a x

end AdvaitaVedanta
