import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure TeleconnectionImpactPackage where
  europeanWinterTemperature : Prop
  northAtlanticStormTrack : Prop
  precipitationPattern : Prop
  arcticSeaIceExtent : Prop
  sahelRainfall : Prop

structure TeleconnectionImpactEvidence (T : TeleconnectionImpactPackage) where
  europeanWinterTemperatureClosed : T.europeanWinterTemperature
  northAtlanticStormTrackClosed : T.northAtlanticStormTrack
  precipitationPatternClosed : T.precipitationPattern
  arcticSeaIceExtentClosed : T.arcticSeaIceExtent
  sahelRainfallClosed : T.sahelRainfall

def TeleconnectionImpactClosed (T : TeleconnectionImpactPackage) : Prop :=
  T.europeanWinterTemperature ∧ T.northAtlanticStormTrack ∧ T.precipitationPattern ∧
  T.arcticSeaIceExtent ∧ T.sahelRainfall

theorem teleconnection_impact_closed_from_evidence (T : TeleconnectionImpactPackage) (E : TeleconnectionImpactEvidence T) :
    TeleconnectionImpactClosed T := by
  refine And.intro E.europeanWinterTemperatureClosed (And.intro E.northAtlanticStormTrackClosed
    (And.intro E.precipitationPatternClosed (And.intro E.arcticSeaIceExtentClosed E.sahelRainfallClosed)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse