import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion.1 ∧ A.object.conclusion.2

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse
