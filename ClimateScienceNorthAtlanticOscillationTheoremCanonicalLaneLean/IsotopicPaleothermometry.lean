import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  deltaO18Record : Prop
  temperatureCalibration : Prop
  coreChronology : Prop
  orbitalForcingLink : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  deltaO18RecordClosed : I.deltaO18Record
  temperatureCalibrationClosed : I.temperatureCalibration
  coreChronologyClosed : I.coreChronology
  orbitalForcingLinkClosed : I.orbitalForcingLink

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.deltaO18Record ∧ I.temperatureCalibration ∧ I.coreChronology ∧ I.orbitalForcingLink

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.deltaO18RecordClosed
    (And.intro Ev.temperatureCalibrationClosed
      (And.intro Ev.coreChronologyClosed Ev.orbitalForcingLinkClosed))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse