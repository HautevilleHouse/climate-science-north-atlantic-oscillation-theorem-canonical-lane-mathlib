import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure NorthAtlanticOscillationIndexPackage where
  pressureDifference : Prop
  winterVariability : Prop
  teleconnectionPattern : Prop
  climateImpact : Prop

structure NorthAtlanticOscillationIndexEvidence (N : NorthAtlanticOscillationIndexPackage) where
  pressureDifferenceClosed : N.pressureDifference
  winterVariabilityClosed : N.winterVariability
  teleconnectionPatternClosed : N.teleconnectionPattern
  climateImpactClosed : N.climateImpact

def NorthAtlanticOscillationIndexClosed (N : NorthAtlanticOscillationIndexPackage) : Prop :=
  N.pressureDifference ∧ N.winterVariability ∧ N.teleconnectionPattern ∧ N.climateImpact

theorem north_atlantic_oscillation_index_closed_from_evidence
    (N : NorthAtlanticOscillationIndexPackage) (Ev : NorthAtlanticOscillationIndexEvidence N) :
    NorthAtlanticOscillationIndexClosed N := by
  exact And.intro Ev.pressureDifferenceClosed
    (And.intro Ev.winterVariabilityClosed
      (And.intro Ev.teleconnectionPatternClosed Ev.climateImpactClosed))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse