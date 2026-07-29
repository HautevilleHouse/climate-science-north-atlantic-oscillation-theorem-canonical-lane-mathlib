import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarForcing : Prop
  iceAlbedoFeedback : Prop
  heatTransport : Prop
  equilibriumSolution : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  solarForcingClosed : E.solarForcing
  iceAlbedoFeedbackClosed : E.iceAlbedoFeedback
  heatTransportClosed : E.heatTransport
  equilibriumSolutionClosed : E.equilibriumSolution

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.solarForcing ∧ E.iceAlbedoFeedback ∧ E.heatTransport ∧ E.equilibriumSolution

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.solarForcingClosed
    (And.intro Ev.iceAlbedoFeedbackClosed
      (And.intro Ev.heatTransportClosed Ev.equilibriumSolutionClosed))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse