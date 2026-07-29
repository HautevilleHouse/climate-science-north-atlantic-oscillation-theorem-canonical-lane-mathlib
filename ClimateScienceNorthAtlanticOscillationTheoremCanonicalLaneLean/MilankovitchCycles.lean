import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalEccentricity : Prop
  axialTilt : Prop
  precessionIndex : Prop
  insolationAnomaly : Prop
  glacialInterglacialTiming : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalEccentricityClosed : M.orbitalEccentricity
  axialTiltClosed : M.axialTilt
  precessionIndexClosed : M.precessionIndex
  insolationAnomalyClosed : M.insolationAnomaly
  glacialInterglacialTimingClosed : M.glacialInterglacialTiming

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalEccentricity ∧ M.axialTilt ∧
  M.precessionIndex ∧ M.insolationAnomaly ∧
  M.glacialInterglacialTiming

theorem milankovitch_cycles_closed_from_evidence
    (M : MilankovitchCyclesPackage)
    (E : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro E.orbitalEccentricityClosed
    (And.intro E.axialTiltClosed
      (And.intro E.precessionIndexClosed
        (And.intro E.insolationAnomalyClosed
          E.glacialInterglacialTimingClosed)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse