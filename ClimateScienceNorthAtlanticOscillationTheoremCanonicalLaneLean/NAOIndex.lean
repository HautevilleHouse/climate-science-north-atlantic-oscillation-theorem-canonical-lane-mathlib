import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure NAOIndex where
  azoresPressure : ℝ
  icelandPressure : ℝ
  normalizedPressureDifference : ℝ
  naoPhase : String
  oscillationPeriod : ℝ

def naoIndexClosure (idx : NAOIndex) : Prop :=
  idx.normalizedPressureDifference = idx.azoresPressure - idx.icelandPressure ∧
  idx.naoPhase = "positive" ∨ idx.naoPhase = "negative" ∧ idx.oscillationPeriod > 0

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse
