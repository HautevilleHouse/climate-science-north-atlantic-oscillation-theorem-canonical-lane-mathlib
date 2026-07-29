import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  heatCapacity : ℝ
  equilibriumTemperature : ℝ

structure EnergyBalanceEvidence (M : EnergyBalanceModel) where
  solarConstantPositive : M.solarConstant > 0
  albedoBetweenZeroAndOne : 0 ≤ M.albedo ∧ M.albedo ≤ 1
  emissivityPositive : M.emissivity > 0
  heatCapacityPositive : M.heatCapacity > 0
  equilibriumTemperatureDerived : M.equilibriumTemperature = ((M.solarConstant * (1 - M.albedo)) / (4 * M.emissivity * 5.67e-8)) ^ (1/4)

def EnergyBalanceClosed (M : EnergyBalanceModel) : Prop :=
  M.solarConstant > 0 ∧ 0 ≤ M.albedo ∧ M.albedo ≤ 1 ∧ M.emissivity > 0 ∧ M.heatCapacity > 0

theorem energy_balance_closed_from_evidence (M : EnergyBalanceModel) (E : EnergyBalanceEvidence M) :
    EnergyBalanceClosed M := by
  exact And.intro E.solarConstantPositive
    (And.intro E.albedoBetweenZeroAndOne.1
      (And.intro E.albedoBetweenZeroAndOne.2
        (And.intro E.emissivityPositive E.heatCapacityPositive)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse