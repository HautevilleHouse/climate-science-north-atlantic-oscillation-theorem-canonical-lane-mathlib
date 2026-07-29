import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure NAOIndexPackage where
  normalizedSeaLevelPressureDifference : Prop
  stationLocations : Prop
  seasonalAggregation : Prop
  detrended : Prop
  standardized : Prop

structure NAOIndexEvidence (N : NAOIndexPackage) where
  normalizedSeaLevelPressureDifferenceClosed : N.normalizedSeaLevelPressureDifference
  stationLocationsClosed : N.stationLocations
  seasonalAggregationClosed : N.seasonalAggregation
  detrendedClosed : N.detrended
  standardizedClosed : N.standardized

def NAOIndexClosed (N : NAOIndexPackage) : Prop :=
  N.normalizedSeaLevelPressureDifference ∧ N.stationLocations ∧ N.seasonalAggregation ∧
  N.detrended ∧ N.standardized

theorem nao_index_closed_from_evidence (N : NAOIndexPackage) (E : NAOIndexEvidence N) :
    NAOIndexClosed N := by
  refine And.intro E.normalizedSeaLevelPressureDifferenceClosed (And.intro E.stationLocationsClosed
    (And.intro E.seasonalAggregationClosed (And.intro E.detrendedClosed E.standardizedClosed)))

structure NAOTeleconnectionPattern where
  pressureDipole : Prop
  jetStreamMeander : Prop
  stormTrackShift : Prop
  temperatureDipole : Prop

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse