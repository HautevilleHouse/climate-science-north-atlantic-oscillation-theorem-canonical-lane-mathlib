import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure AtlanticMultidecadalVariabilityPackage where
  seaSurfaceTemperatureAnomaly : ℝ
  northAtlanticOscillationIndex : ℝ
  amoCoefficient : ℝ
  naoCoefficient : ℝ
  combinedIndex : ℝ

structure AtlanticMultidecadalVariabilityEvidence (A : AtlanticMultidecadalVariabilityPackage) where
  sstAnomalyBound : -5 ≤ A.seaSurfaceTemperatureAnomaly ∧ A.seaSurfaceTemperatureAnomaly ≤ 5
  naoIndexBound : -3 ≤ A.northAtlanticOscillationIndex ∧ A.northAtlanticOscillationIndex ≤ 3
  amoCoefficientNonzero : A.amoCoefficient ≠ 0
  naoCoefficientNonzero : A.naoCoefficient ≠ 0
  combinedIndexDerived : A.combinedIndex = A.amoCoefficient * A.seaSurfaceTemperatureAnomaly + A.naoCoefficient * A.northAtlanticOscillationIndex

def AtlanticMultidecadalVariabilityClosed (A : AtlanticMultidecadalVariabilityPackage) : Prop :=
  -5 ≤ A.seaSurfaceTemperatureAnomaly ∧ A.seaSurfaceTemperatureAnomaly ≤ 5 ∧
  -3 ≤ A.northAtlanticOscillationIndex ∧ A.northAtlanticOscillationIndex ≤ 3 ∧
  A.amoCoefficient ≠ 0 ∧ A.naoCoefficient ≠ 0

theorem atlantic_multidecadal_variability_closed_from_evidence
    (A : AtlanticMultidecadalVariabilityPackage) (E : AtlanticMultidecadalVariabilityEvidence A) :
    AtlanticMultidecadalVariabilityClosed A := by
  refine And.intro E.sstAnomalyBound.1 (And.intro E.sstAnomalyBound.2
    (And.intro E.naoIndexBound.1 (And.intro E.naoIndexBound.2
      (And.intro E.amoCoefficientNonzero E.naoCoefficientNonzero))))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse