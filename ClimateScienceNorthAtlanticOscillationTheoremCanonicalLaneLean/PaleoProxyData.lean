import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure PaleoProxyEvidence where
  iceCoreData : Prop
  sedimentCoreData : Prop
  treeRingWidth : Prop
  boreholeTemperature : Prop
  dataCrossValidated : Prop

structure PaleoProxyDataPackage where
  evidence : PaleoProxyEvidence
  dataSourcesAgree : Prop
  reconstructionUncertainty : Prop

structure PaleoProxyDataEvidence (P : PaleoProxyDataPackage) where
  dataSourcesAgreeClosed : P.dataSourcesAgree
  reconstructionUncertaintyClosed : P.reconstructionUncertainty

def PaleoProxyDataClosed (P : PaleoProxyDataPackage) : Prop :=
  P.evidence.iceCoreData ∧ P.evidence.sedimentCoreData ∧ P.evidence.treeRingWidth ∧
  P.evidence.boreholeTemperature ∧ P.evidence.dataCrossValidated ∧
  P.dataSourcesAgree ∧ P.reconstructionUncertainty

theorem paleo_proxy_data_closed_from_evidence (P : PaleoProxyDataPackage) (E : PaleoProxyDataEvidence P) :
    PaleoProxyDataClosed P := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro E.dataSourcesAgreeClosed E.reconstructionUncertaintyClosed)))))
  · exact P.evidence.iceCoreData
  · exact P.evidence.sedimentCoreData
  · exact P.evidence.treeRingWidth
  · exact P.evidence.boreholeTemperature
  · exact P.evidence.dataCrossValidated

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse