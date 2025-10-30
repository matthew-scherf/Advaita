import AdvaitaVedanta.Signature

namespace AdvaitaVedanta

-- T1: Irreflexivity
axiom T1 : ∀ t : Time, ¬Before t t

-- T2: Transitivity
axiom T2 : ∀ t₁ t₂ t₃ : Time, Before t₁ t₂ ∧ Before t₂ t₃ → Before t₁ t₃

-- T3: Asymmetry
axiom T3 : ∀ t₁ t₂ : Time, Before t₁ t₂ → ¬Before t₂ t₁

-- T4: Linearity
axiom T4 : ∀ t₁ t₂ : Time, t₁ ≠ t₂ → (Before t₁ t₂ ∨ Before t₂ t₁)

-- T5: Non-Empty Time
axiom T5 : ∃ _ : Time, True

-- T6: Distinct Times
axiom T6 : ∃ t₁ t₂ : Time, t₁ ≠ t₂

end AdvaitaVedanta
