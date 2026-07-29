import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean

structure OceanAtmosphereCouplingPackage where
  seaSurfaceTemperatureAnomaly : Prop
  atmosphericPressureResponse : Prop
  turbulentHeatFlux : Prop
  evaporationWindFeedback : Prop
  oceanMixedLayerDepth : Prop

structure OceanAtmosphereCouplingEvidence (O : OceanAtmosphereCouplingPackage) where
  seaSurfaceTemperatureAnomalyClosed : O.seaSurfaceTemperatureAnomaly
  atmosphericPressureResponseClosed : O.atmosphericPressureResponse
  turbulentHeatFluxClosed : O.turbulentHeatFlux
  evaporationWindFeedbackClosed : O.evaporationWindFeedback
  oceanMixedLayerDepthClosed : O.oceanMixedLayerDepth

def OceanAtmosphereCouplingClosed (O : OceanAtmosphereCouplingPackage) : Prop :=
  O.seaSurfaceTemperatureAnomaly ∧ O.atmosphericPressureResponse ∧ O.turbulentHeatFlux ∧
  O.evaporationWindFeedback ∧ O.oceanMixedLayerDepth

theorem ocean_atmosphere_coupling_closed_from_evidence (O : OceanAtmosphereCouplingPackage) (E : OceanAtmosphereCouplingEvidence O) :
    OceanAtmosphereCouplingClosed O := by
  refine And.intro E.seaSurfaceTemperatureAnomalyClosed (And.intro E.atmosphericPressureResponseClosed
    (And.intro E.turbulentHeatFluxClosed (And.intro E.evaporationWindFeedbackClosed E.oceanMixedLayerDepthClosed)))

end ClimateScienceNorthAtlanticOscillationTheoremCanonicalLaneLean
end HautevilleHouse