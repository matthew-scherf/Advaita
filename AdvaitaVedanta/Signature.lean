-- Formal signature for Advaita Vedanta metaphysics
namespace AdvaitaVedanta

-- Sorts (Types)
axiom Obj : Type
axiom Level : Type
axiom Time : Type
axiom Event : Type

-- Level constants
axiom Param : Level  -- Paramārthika (ultimate reality)
axiom Vyav : Level   -- Vyāvahārika (conventional reality)
axiom Prat : Level   -- Prātibhāsika (illusory appearance)

-- Metaphysical status predicates
axiom A : Obj → Prop            -- Absolute (Brahman/Ātman)
axiom C : Obj → Prop            -- Conditioned (phenomenal)
axiom Y : Obj → Prop            -- You (ultimate subject/witness)

-- Phenomenal properties
axiom T_p : Obj → Prop          -- Temporal
axiom S_p : Obj → Prop          -- Spatial
axiom Q_p : Obj → Prop          -- Qualitative
def Phi (x : Obj) : Prop := T_p x ∨ S_p x ∨ Q_p x

-- Saccidānanda (Being-Consciousness-Bliss)
axiom Sat : Obj → Prop          -- Being-nature
axiom Cit : Obj → Prop          -- Consciousness-nature
axiom Ananda : Obj → Prop       -- Bliss-nature
def Saccidananda (x : Obj) : Prop := Sat x ∧ Cit x ∧ Ananda x

-- Reality level assignment
axiom Level_of : Obj → Level → Prop

-- Ontological relations
axiom Cond : Obj → Obj → Prop          -- Ontological grounding
axiom MayaPow : Obj → Obj → Prop       -- Māyā-power manifestation
axiom MayaLevel : (Obj → Obj → Prop) → Level → Prop
axiom Superimposed : Obj → Obj → Prop  -- Adhyāsa
axiom Appears : Obj → Obj → Prop       -- Vivarta (appearance)
axiom IgnoranceOf : Obj → Obj → Prop   -- Avidyā
axiom Upadhi : Obj → Obj → Prop        -- Limiting adjunct
axiom Sublates : Obj → Obj → Prop      -- Bādha (sublation)

-- Individual consciousness
axiom Jiva : Obj → Prop
axiom Isvara : Obj → Prop
axiom Embodied : Obj → Obj → Prop

-- Awareness relations
axiom Perceives : Obj → Obj → Prop     -- Dualistic perception
axiom Witnesses : Obj → Obj → Prop     -- Non-dualistic witnessing
axiom Possesses : Obj → Obj → Prop     -- Knowledge possession

-- Knowledge structure
axiom Knower : Obj → Prop
axiom Known : Obj → Prop
axiom Knowing : Obj → Prop
axiom DistinctAspects : Obj → Obj → Obj → Prop
axiom Knowledge : Obj → Prop
axiom Liberating : Obj → Prop

-- Change and transformation
axiom RealChange : Obj → Obj → Prop
axiom Changes : Obj → Prop
axiom Born : Obj → Prop
axiom Dies : Obj → Prop

-- Five sheaths (Pañca-kośa)
axiom Annamaya : Obj → Prop        -- Physical sheath
axiom Pranamaya : Obj → Prop       -- Vital sheath
axiom Manomaya : Obj → Prop        -- Mental sheath
axiom Vijnanamaya : Obj → Prop     -- Intellectual sheath
axiom Anandamaya : Obj → Prop      -- Bliss sheath
def Sheath (x : Obj) : Prop := 
  Annamaya x ∨ Pranamaya x ∨ Manomaya x ∨ Vijnanamaya x ∨ Anandamaya x
axiom Layer : Obj → Obj → Prop

-- Three guṇas
axiom Sattva : Obj → Prop
axiom Rajas : Obj → Prop
axiom Tamas : Obj → Prop
def HasGuna (x : Obj) : Prop := Sattva x ∨ Rajas x ∨ Tamas x

-- Ego structure
axiom Ego : Obj → Prop
axiom ApparentSubject : Obj → Prop
axiom Body : Obj → Prop
axiom Identifies : Obj → Obj → Prop

-- Spacetime entities
axiom SpaceItself : Obj → Prop
axiom TimeItself : Obj → Prop

-- Event predicates
axiom EE : Event → Prop            -- Event exists

-- Temporal relations
axiom Before : Time → Time → Prop

-- Event relations
axiom OccursAt : Event → Time → Prop
axiom EventOf : Event → Obj → Prop
axiom CausesEvent : Event → Event → Prop

-- Event constructors
axiom PerceptionEvent : Obj → Obj → Event
axiom ChangeEvent : Obj → Event
axiom BirthEvent : Obj → Event
axiom DeathEvent : Obj → Event

end AdvaitaVedanta
