import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  delta18O : ℝ
  deltaD : ℝ
  temperature : ℝ
  slope : ℝ
  intercept : ℝ

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  delta18OMeasured : I.delta18O > -50 ∧ I.delta18O < 10
  deltaDMeasured : I.deltaD > -400 ∧ I.deltaD < 50
  temperatureDerived : I.temperature = I.slope * I.delta18O + I.intercept
  slopeValid : I.slope > 0
  interceptValid : I.intercept > -100 ∧ I.intercept < 100

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.delta18O > -50 ∧ I.delta18O < 10 ∧ I.deltaD > -400 ∧ I.deltaD < 50 ∧
  I.slope > 0 ∧ I.intercept > -100 ∧ I.intercept < 100

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage) (E : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  refine And.intro E.delta18OMeasured.1 (And.intro E.delta18OMeasured.2
    (And.intro E.deltaDMeasured.1 (And.intro E.deltaDMeasured.2
      (And.intro E.slopeValid (And.intro E.interceptValid.1 E.interceptValid.2)))))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse