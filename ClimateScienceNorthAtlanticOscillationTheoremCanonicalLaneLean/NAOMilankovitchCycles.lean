import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure MilankovitchCyclesPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  orbitalPeriod : ℝ

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  eccentricityValid : 0 ≤ M.eccentricity ∧ M.eccentricity ≤ 0.07
  obliquityValid : 22.1 ≤ M.obliquity ∧ M.obliquity ≤ 24.5
  precessionPeriod : M.precession > 19000 ∧ M.precession < 26000
  insolationAnomalyDerived : M.insolationAnomaly = M.eccentricity * Real.sin M.obliquity * Real.cos M.precession

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  0 ≤ M.eccentricity ∧ M.eccentricity ≤ 0.07 ∧ 22.1 ≤ M.obliquity ∧ M.obliquity ≤ 24.5 ∧
  M.precession > 19000 ∧ M.precession < 26000

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage)
    (E : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  refine And.intro E.eccentricityValid.1 (And.intro E.eccentricityValid.2
    (And.intro E.obliquityValid.1 (And.intro E.obliquityValid.2
      (And.intro E.precessionPeriod.1 E.precessionPeriod.2))))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse