import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Group.Defs

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure NAOAdmittedObject where
  pressureIndex : Type
  indexValue : Type
  indexValueMembership : pressureIndex → indexValue → Prop
  oscillationPeriodRecorded : Prop
  naoPhaseConstrained : Prop
  conclusion : oscillationPeriodRecorded ∧ naoPhaseConstrained

structure AdmissibleClass where
  object : NAOAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion.1 ∧ A.object.conclusion.2) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse
