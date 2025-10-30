import AdvaitaVedanta.Signature
import AdvaitaVedanta.TemporalAxioms

namespace AdvaitaVedanta

-- E1: Event Existence Criterion
axiom E1 : ∀ e : Event, EE e ↔ (∃ t : Time, OccursAt e t)

-- E2: Unique Occurrence Time
axiom E2 : ∀ e : Event, EE e → 
  ((∃ t : Time, OccursAt e t) ∧ (∀ t₁ t₂ : Time, OccursAt e t₁ → OccursAt e t₂ → t₁ = t₂))

-- E3: Event-Object Association
axiom E3 : ∀ e : Event, EE e → (∃ x : Obj, EventOf e x)

-- E4: Event-Object Grounding
axiom E4 : ∀ x y : Obj, ∀ e_y : Event, 
  Cond x y ∧ EventOf e_y y ∧ EE e_y ∧ ¬A x → 
  (∃ e_x : Event, EventOf e_x x ∧ EE e_x)

-- E5: Event Constructor - Perception
axiom E5 : ∀ s o : Obj, Perceives s o → 
  (∃ e : Event, e = PerceptionEvent s o ∧ EE e)

-- E6: Event Constructor - Change
axiom E6 : ∀ x : Obj, Changes x → 
  (∃ e : Event, e = ChangeEvent x ∧ EE e)

-- E7: Event Constructor - Birth
axiom E7 : ∀ x : Obj, Born x → 
  (∃ e : Event, e = BirthEvent x ∧ EE e)

-- E8: Event Constructor - Death
axiom E8 : ∀ x : Obj, Dies x → 
  (∃ e : Event, e = DeathEvent x ∧ EE e)

-- E9: Causal Ordering
axiom E9 : ∀ e₁ e₂ : Event, ∀ t₁ t₂ : Time,
  CausesEvent e₁ e₂ ∧ OccursAt e₁ t₁ ∧ OccursAt e₂ t₂ → Before t₁ t₂

-- E10: Absolute Has No Events
axiom E10 : ∀ a : Obj, ∀ e : Event, A a → ¬EventOf e a

end AdvaitaVedanta
