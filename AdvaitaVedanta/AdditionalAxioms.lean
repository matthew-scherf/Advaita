import AdvaitaVedanta.Signature
import AdvaitaVedanta.CoreAxioms
import AdvaitaVedanta.LevelAxioms
import AdvaitaVedanta.TemporalAxioms
import AdvaitaVedanta.EventAxioms

namespace AdvaitaVedanta

-- UPĀDHI AXIOMS (U1-U4)
axiom U1 : ∀ u x : Obj, Upadhi u x → C x
axiom U2 : ∀ u a : Obj, A a → ¬Upadhi u a
axiom U3 : ∀ j₁ j₂ : Obj, Jiva j₁ ∧ Jiva j₂ ∧ j₁ ≠ j₂ → 
  (∃ s : Obj, SpaceItself s ∧ Upadhi s j₁ ∧ Upadhi s j₂)
axiom U4 : ∀ u x a : Obj, Upadhi u x ∧ A a ∧ Cond a x → 
  (∃ prop : Obj → Prop, prop x ∧ ¬prop a)

-- CAUSATION AXIOMS (CA1-CA4)
axiom CA1 : ∀ e₁ e₂ : Event, CausesEvent e₁ e₂ → 
  (∃ x y : Obj, EventOf e₁ x ∧ EventOf e₂ y ∧ 
   Level_of x Vyav ∧ Level_of y Vyav)
axiom CA2 : ∀ a : Obj, ∀ e : Event, A a → ¬EventOf e a
axiom CA3 : ∀ e₁ e₂ : Event, ∀ t₁ t₂ : Time,
  CausesEvent e₁ e₂ ∧ OccursAt e₁ t₁ ∧ OccursAt e₂ t₂ → Before t₁ t₂
axiom CA4 : ∀ e₁ e₂ e₃ : Event, 
  CausesEvent e₁ e₂ ∧ CausesEvent e₂ e₃ → CausesEvent e₁ e₃

-- SHEATH AXIOMS (S1-S8)
axiom S1 : ∀ s : Obj, Sheath s → C s
axiom S2 : ∀ s u : Obj, Sheath s ∧ Y u → s ≠ u
axiom S3 : ∀ x : Obj, Annamaya x → (∃ y : Obj, Pranamaya y ∧ Layer x y)
axiom S4 : ∀ x : Obj, Pranamaya x → (∃ y : Obj, Manomaya y ∧ Layer x y)
axiom S5 : ∀ x : Obj, Manomaya x → (∃ y : Obj, Vijnanamaya y ∧ Layer x y)
axiom S6 : ∀ x : Obj, Vijnanamaya x → (∃ y : Obj, Anandamaya y ∧ Layer x y)
axiom S7 : ∀ x y : Obj, Layer x y → Cond y x
axiom S8 : ∀ s : Obj, Anandamaya s → (∃ a : Obj, A a ∧ Cond a s)

-- GUṆA AXIOMS (G1-G3)
axiom G1 : ∀ x : Obj, C x → HasGuna x
axiom G2 : ∀ a : Obj, A a → (¬Sattva a ∧ ¬Rajas a ∧ ¬Tamas a)
axiom G3 : ∀ x : Obj, C x ∧ Level_of x Vyav → 
  (∃ _ : Time, ∃ g : Obj → Prop, 
   (g = Sattva ∨ g = Rajas ∨ g = Tamas) ∧ Changes x)

-- EGO AXIOMS (EG1-EG4)
axiom EG1 : ∀ e : Obj, Ego e → C e
axiom EG2 : ∀ e : Obj, Ego e → 
  (∃ s b : Obj, ApparentSubject s ∧ Body b ∧ Identifies s b)
axiom EG3 : ∀ e u : Obj, Ego e ∧ Y u → e ≠ u
axiom EG4 : ∀ e j a k : Obj, 
  Ego e ∧ Jiva j ∧ A a ∧ Liberating k → (¬IgnoranceOf j a → ¬Ego e)

-- SPACETIME AXIOMS (ST1-ST5)
axiom ST1 : ∀ s : Obj, SpaceItself s → C s
axiom ST2 : ∀ t : Obj, TimeItself t → C t
axiom ST3 : ∀ s : Obj, SpaceItself s → Level_of s Vyav
axiom ST4 : ∀ t : Obj, TimeItself t → Level_of t Vyav
axiom ST5 : ∀ k_lib s t : Obj, Liberating k_lib ∧ SpaceItself s ∧ TimeItself t → 
  (∃ k_space k_time : Obj, Knowledge k_space ∧ Knowledge k_time ∧
   Sublates k_lib k_space ∧ Sublates k_lib k_time)

-- CHANGE AXIOMS (CH1-CH4)
axiom CH1 : ∀ a : Obj, A a → ¬Changes a
axiom CH2 : ∀ a : Obj, A a → ¬Born a
axiom CH3 : ∀ a : Obj, A a → ¬Dies a
axiom CH4 : ∀ x : Obj, C x ∧ Level_of x Vyav → (Born x ∨ Dies x ∨ Changes x)

end AdvaitaVedanta
