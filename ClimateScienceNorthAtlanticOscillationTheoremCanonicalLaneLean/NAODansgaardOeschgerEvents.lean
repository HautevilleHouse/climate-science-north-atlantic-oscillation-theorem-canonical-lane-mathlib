import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  eventCount : ℕ
  temperatureAmplitude : ℝ
  duration : ℝ
  recurrenceInterval : ℝ
  rapidTransition : Bool

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  eventCountPositive : D.eventCount ≥ 1
  temperatureAmplitudePositive : D.temperatureAmplitude > 0
  durationPositive : D.duration > 0
  recurrencePositive : D.recurrenceInterval > 0
  rapidTransitionTrue : D.rapidTransition = true

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.eventCount ≥ 1 ∧ D.temperatureAmplitude > 0 ∧ D.duration > 0 ∧
  D.recurrenceInterval > 0 ∧ D.rapidTransition = true

theorem dansgaard_oeschger_events_closed_from_evidence
    (D : DansgaardOeschgerEventsPackage) (E : DansgaardOeschgerEventsEvidence D) :
    DansgaardOeschgerEventsClosed D := by
  exact And.intro E.eventCountPositive
    (And.intro E.temperatureAmplitudePositive
      (And.intro E.durationPositive
        (And.intro E.recurrencePositive E.rapidTransitionTrue)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse