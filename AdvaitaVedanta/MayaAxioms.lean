import AdvaitaVedanta.Signature
import AdvaitaVedanta.CoreAxioms
import AdvaitaVedanta.LevelAxioms

namespace AdvaitaVedanta

-- Māyā Power and Manifestation
axiom M1 : ∀ a x : Obj, MayaPow a x → A a
axiom M2 : ∀ x : Obj, C x → (∃ a : Obj, A a ∧ MayaPow a x)
axiom M3 : MayaLevel MayaPow Vyav ∧ MayaLevel MayaPow Prat ∧ 
           ¬MayaLevel MayaPow Param
axiom M4 : ∀ a x : Obj, MayaPow a x → Cond a x
axiom M5 : ∀ a x : Obj, A a → ¬MayaPow x a

-- Superimposition (Adhyāsa)
axiom M6 : ∀ x y : Obj, Superimposed x y → C x
axiom M7 : ∀ x y : Obj, Superimposed x y → A y
axiom M8 : ∀ x y : Obj, Superimposed x y → (Appears x y ∧ ¬RealChange y x)

-- Appearance Without Change (Vivarta)
axiom M9 : ∀ x y : Obj, Appears x y → ¬RealChange x y
axiom M10 : ∀ x : Obj, C x → (∃ a : Obj, A a ∧ Appears a x)
axiom M11 : ∀ a x : Obj, A a ∧ Appears a x → Saccidananda a

-- Ignorance (Avidyā)
axiom M12 : ∀ s x : Obj, IgnoranceOf s x → A x
axiom M13 : ∀ s x y : Obj, IgnoranceOf s y ∧ Superimposed x y → 
            (∃ rel : Obj → Obj → Prop, rel s x)
axiom M14 : ∀ j : Obj, Jiva j → (∃ a : Obj, A a ∧ IgnoranceOf j a)
axiom M15 : ∀ a x : Obj, A a → ¬IgnoranceOf a x

-- Sublation (Bādha)
axiom M16 : ∀ k₁ k₂ : Obj, Sublates k₁ k₂ → (Knowledge k₁ ∧ Knowledge k₂)
axiom M17 : ∀ k_lib k_emp : Obj, Liberating k_lib ∧ Knowledge k_emp → 
            (∃ x : Obj, C x ∧ Sublates k_lib k_emp)
axiom M18 : ∀ k₁ k₂ : Obj, Sublates k₁ k₂ → ¬Sublates k₂ k₁

end AdvaitaVedanta
