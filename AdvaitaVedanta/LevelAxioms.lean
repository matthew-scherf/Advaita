import AdvaitaVedanta.Signature
import AdvaitaVedanta.CoreAxioms

namespace AdvaitaVedanta

-- K1: Universal Level Assignment
axiom K1 : ∀ x : Obj, Level_of x Param ∨ Level_of x Vyav ∨ Level_of x Prat

-- K2: Absolute at Paramārthika Only
axiom K2 : ∀ a : Obj, A a → Level_of a Param
axiom K2a : ∀ a : Obj, A a → ¬Level_of a Vyav
axiom K2b : ∀ a : Obj, A a → ¬Level_of a Prat

-- K3: Conditioned Not at Paramārthika
axiom K3 : ∀ x : Obj, C x → ¬Level_of x Param

-- K4: Conditioned at Lower Levels
axiom K4 : ∀ x : Obj, C x → (Level_of x Vyav ∨ Level_of x Prat)

-- K5: Hierarchical Sublation
axiom K5 : ∀ x y : Obj, C x ∧ Level_of x Vyav ∧ Level_of y Prat → Sublates x y

-- K6: Non-Empty Vyāvahārika
axiom K6 : ∃ x : Obj, Level_of x Vyav

end AdvaitaVedanta
