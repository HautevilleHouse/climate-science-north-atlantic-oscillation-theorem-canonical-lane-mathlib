import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarmingEvent : Prop
  coolingPhase : Prop
  periodicityDetected : Prop
  amocLinkage : Prop
  greenlandIceCoreSignature : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  abruptWarmingEventClosed : D.abruptWarmingEvent
  coolingPhaseClosed : D.coolingPhase
  periodicityDetectedClosed : D.periodicityDetected
  amocLinkageClosed : D.amocLinkage
  greenlandIceCoreSignatureClosed : D.greenlandIceCoreSignature

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.abruptWarmingEvent ∧ D.coolingPhase ∧
  D.periodicityDetected ∧ D.amocLinkage ∧
  D.greenlandIceCoreSignature

theorem dansgaard_oeschger_events_closed_from_evidence
    (D : DansgaardOeschgerEventsPackage)
    (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.abruptWarmingEventClosed
    (And.intro E.coolingPhaseClosed
      (And.intro E.periodicityDetectedClosed
        (And.intro E.amocLinkageClosed
          E.greenlandIceCoreSignatureClosed)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse