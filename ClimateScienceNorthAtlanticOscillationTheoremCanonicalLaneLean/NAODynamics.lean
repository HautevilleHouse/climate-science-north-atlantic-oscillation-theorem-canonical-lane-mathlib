import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure NAODynamicsPackage where
  pressureGradientIndex : Prop
  westerlyWindStrength : Prop
  stormTrackPosition : Prop
  teleconnectionPattern : Prop
  dynamicsConsistency : Prop

structure NAODynamicsEvidence (P : NAODynamicsPackage) where
  pressureGradientIndexClosed : P.pressureGradientIndex
  westerlyWindStrengthClosed : P.westerlyWindStrength
  stormTrackPositionClosed : P.stormTrackPosition
  teleconnectionPatternClosed : P.teleconnectionPattern
  dynamicsConsistencyClosed : P.dynamicsConsistency

def NAODynamicsClosed (P : NAODynamicsPackage) : Prop :=
  P.pressureGradientIndex ∧ P.westerlyWindStrength ∧
  P.stormTrackPosition ∧ P.teleconnectionPattern ∧
  P.dynamicsConsistency

theorem nao_dynamics_closed_from_evidence (P : NAODynamicsPackage)
    (E : NAODynamicsEvidence P) : NAODynamicsClosed P := by
  exact And.intro E.pressureGradientIndexClosed
    (And.intro E.westerlyWindStrengthClosed
      (And.intro E.stormTrackPositionClosed
        (And.intro E.teleconnectionPatternClosed
          E.dynamicsConsistencyClosed)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse