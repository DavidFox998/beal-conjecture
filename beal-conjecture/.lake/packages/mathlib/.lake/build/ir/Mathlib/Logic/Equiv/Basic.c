// Lean compiler output
// Module: Mathlib.Logic.Equiv.Basic
// Imports: Init Mathlib.Data.Bool.Basic Mathlib.Data.Option.Defs Mathlib.Data.Prod.Basic Mathlib.Data.Sigma.Basic Mathlib.Data.Subtype Mathlib.Data.Sum.Basic Mathlib.Init.Algebra.Classes Mathlib.Logic.Equiv.Defs Mathlib.Logic.Function.Conjugate Mathlib.Tactic.Coe Mathlib.Tactic.Lift Mathlib.Tactic.Convert Mathlib.Tactic.Contrapose Mathlib.Tactic.GeneralizeProofs Mathlib.Tactic.SimpRw Mathlib.Tactic.CC
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_uniqueProd___spec__1___rarg(lean_object*);
static lean_object* l_Equiv_sumAssoc___closed__1;
static lean_object* l_Equiv_sumProdDistrib___elambda__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__2___rarg(lean_object*);
static lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_Perm_extendDomain___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_swapCore(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__2___boxed(lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__12;
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv(lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__7;
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProdPLift(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___boxed(lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__17;
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___lambda__1(lean_object*);
static lean_object* l_Equiv_sumComm___elambda__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaUnique___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__1___rarg(lean_object*);
static lean_object* l_Equiv_emptySum___closed__2;
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum(lean_object*);
static lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_extendDomain(lean_object*, lean_object*);
lean_object* l_Sum_map___rarg___lambda__1(lean_object*);
static lean_object* l_Equiv_sigmaOptionEquivOfSome___closed__4;
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__1___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat;
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivCodomain(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__3___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaUnique___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_swap___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__2___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2;
static lean_object* l_Equiv_intEquivNatSumNat___closed__1;
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__1___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_boolProdEquivSum___closed__2;
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__2(lean_object*, lean_object*);
lean_object* l_Equiv_equivOfIsEmpty(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype(lean_object*, lean_object*);
static lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__1;
static lean_object* l_Equiv_sumAssoc___closed__8;
LEAN_EXPORT lean_object* l_Equiv_ofFiberEquiv(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodComm(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumAssoc___closed__6;
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__1___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSubtypeEquivOfSubset___closed__2;
lean_object* l_Sigma_uncurry___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__2;
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__2___rarg___boxed(lean_object*);
static lean_object* l_Equiv_natEquivNatSumPUnit___closed__1;
LEAN_EXPORT lean_object* l_Equiv_prodShear___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__1;
LEAN_EXPORT lean_object* l_Equiv_prodCongr___rarg___lambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__9;
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_emptyProd(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv(lean_object*, lean_object*, lean_object*);
lean_object* l_Sum_map___rarg___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___rarg(lean_object*);
static lean_object* l_Equiv_sigmaNatSucc___closed__2;
LEAN_EXPORT lean_object* l_Equiv_swap(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPEmpty(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongr_x27___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Prod_map___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_sumCongr___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_prodPiEquivSumPi___closed__2;
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumComm(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeCongr___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__2(lean_object*);
static lean_object* l_Equiv_prodSumDistrib___closed__1;
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__2___rarg(lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__15;
lean_object* l_List_mapTR_loop___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype_x27(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_setValue(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__1;
LEAN_EXPORT lean_object* l_Equiv_psumSum___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodSumDistrib(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPiEquivSumPi(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__2(lean_object*);
static lean_object* l_Equiv_intEquivNatSumNat___elambda__1___closed__2;
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_punitProd___closed__2;
static lean_object* l_Equiv_sumAssoc___closed__7;
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__2(lean_object*, lean_object*, lean_object*);
lean_object* l_Sigma_map___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___closed__2;
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_psumEquivSum___closed__1;
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_psumSum___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg___lambda__1(lean_object*, lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__1___rarg(lean_object*);
lean_object* l_Prod_swap___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__2___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSubtypeEquivOfSubset___closed__1;
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Function_Involutive_toPerm___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__5;
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__2___rarg(lean_object*);
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_intEquivNatSumNat___closed__2;
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCompl___rarg(lean_object*);
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___closed__3;
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__1;
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__2(uint8_t);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtype(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCurry(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype_x27___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_punitProd___closed__1;
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumAssoc___closed__3;
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__1(lean_object*);
static lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__2;
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit(lean_object*);
LEAN_EXPORT lean_object* l_Function_Involutive_toPerm(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivRight(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongr___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaNatSucc___closed__3;
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSumDistrib___closed__1;
static lean_object* l_Equiv_sigmaOptionEquivOfSome___closed__3;
LEAN_EXPORT lean_object* l_Equiv_piSplitAt(lean_object*);
static lean_object* l_Equiv_uniqueProd___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__1___rarg(lean_object*);
LEAN_EXPORT uint8_t l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_swap___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__1___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongr___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquiv___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_unique___at_Equiv_subtypeEquivCodomain___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__2(lean_object*);
static lean_object* l_Equiv_boolProdEquivSum___closed__1;
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__1___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__1;
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_pprodEquivProdPLift___closed__3;
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__2(lean_object*);
static lean_object* l_Equiv_sigmaSumDistrib___closed__3;
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__2___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_piCongr_x27(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pemptyProd(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Equiv_trans___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_prodSumDistrib___closed__2;
static lean_object* l_Equiv_psumEquivSum___closed__2;
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_sigmaUnique___spec__1___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sumEmpty___closed__1;
LEAN_EXPORT lean_object* l_Equiv_pprodProd___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__14;
static lean_object* l_Equiv_pprodProd___rarg___closed__1;
static lean_object* l_Equiv_intEquivNatSumNat___elambda__2___closed__1;
static lean_object* l_Equiv_subtypeSubtypeEquivSubtype___closed__2;
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumCongr(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSubtypeEquivOfSubset___closed__3;
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit;
LEAN_EXPORT lean_object* l_Function_Surjective_unique___at_Equiv_subtypeEquivCodomain___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1(lean_object*, lean_object*);
static lean_object* l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3;
lean_object* l_Sum_map___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_pprodEquivProdPLift___closed__2;
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_sigmaUnique___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_uniqueProd(lean_object*, lean_object*);
static lean_object* l_Equiv_emptySum___closed__1;
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCongr(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__8;
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivProp(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodEmpty(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongr_x27___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__1___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__2(lean_object*);
lean_object* l_Equiv_sigmaCongrRight___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_uniqueProd___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__2___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquiv(lean_object*, lean_object*);
static lean_object* l_Equiv_pprodEquivProdPLift___closed__1;
LEAN_EXPORT lean_object* l_Equiv_funSplitAt(lean_object*);
lean_object* l_Sum_swap___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPProd___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__1___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Sum_rec____x40_Mathlib_Util_CompileInductive___hyg_3282____rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Sum_elim___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__1___rarg(lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__1___boxed(lean_object*);
lean_object* l_Equiv_symm___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__2___rarg___boxed(lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__4;
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeEquivOfSubset(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___lambda__2(lean_object*);
static lean_object* l_Equiv_sigmaNatSucc___closed__1;
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Sigma_curry___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_subtypeSubtypeEquivSubtype___closed__1;
lean_object* l_Equiv_symm___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___lambda__2(lean_object*);
static lean_object* l_Equiv_sigmaSubtypeEquivOfSubset___closed__4;
LEAN_EXPORT lean_object* l_Equiv_funSplitAt___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_abs(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodUnique(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_ofFiberEquiv___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2;
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_unique___at_Equiv_subtypeEquivCodomain___spec__2___rarg(lean_object*, lean_object*);
lean_object* l_Equiv_plift(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCompl(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodUnique___rarg(lean_object*);
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg___boxed(lean_object*);
static lean_object* l_Equiv_prodSumDistrib___closed__3;
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__1(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongr(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrRight(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_uniqueProd___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumCongr___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumAssoc___closed__5;
LEAN_EXPORT lean_object* l_Equiv_piComm(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPSum___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__16;
LEAN_EXPORT lean_object* l_Function_Surjective_unique___at_Equiv_subtypeEquivCodomain___spec__3___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumComm___elambda__1___rarg___closed__2;
static lean_object* l_Equiv_sigmaSumDistrib___closed__2;
lean_object* l_id___rarg___boxed(lean_object*);
static lean_object* l_Equiv_sigmaOptionEquivOfSome___closed__2;
LEAN_EXPORT lean_object* l_Equiv_curry(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___rarg(lean_object*);
lean_object* l_isEmptyElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__2___rarg(lean_object*);
static lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1___closed__1;
LEAN_EXPORT lean_object* l_Equiv_Perm_sumCongr(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__2___rarg(lean_object*);
static lean_object* l_Equiv_natEquivNatSumPUnit___closed__3;
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_natSumPUnitEquivNat;
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit;
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__2;
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__2(lean_object*);
lean_object* l_Equiv_equivOfUnique___rarg(lean_object*, lean_object*);
uint8_t lean_int_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumAssoc(lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__2___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_emptySum(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_prodEmpty___closed__1;
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSum(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
lean_object* lean_int_neg_succ_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__1___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__2;
static lean_object* l_Equiv_sigmaOptionEquivOfSome___closed__1;
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__1___rarg___boxed(lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__18;
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_equivOfSubsingletonOfSubsingleton(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Equiv_equivCongr___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__13;
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeInter(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeCongr(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodProd(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Equiv_equivOfUnique___elambda__2___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_swapCore___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_equivOfSubsingletonOfSubsingleton___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_subtypeCongr(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_subtypeCongr___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__2(lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__3;
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPProd(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_intEquivNatSumNat___closed__3;
static lean_object* l_Equiv_punitProd___closed__3;
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___rarg(lean_object*);
lean_object* l_Function_comp___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongr(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma(lean_object*, lean_object*);
extern lean_object* l_PUnit_unique;
lean_object* l_Equiv_sigmaCongrLeft_x27___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__2(lean_object*, lean_object*);
static lean_object* l_Equiv_prodUnique___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_swap___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumSum(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___lambda__1(lean_object*);
static lean_object* l_Equiv_natSumPUnitEquivNat___closed__1;
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow(lean_object*, lean_object*, lean_object*);
lean_object* l_Equiv_refl(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodShear(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__1(lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__1(lean_object*);
static lean_object* l_Equiv_sumAssoc___closed__4;
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPSum(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__2;
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_setValue___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodAssoc(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__10;
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_boolEquivPUnitSumPUnit___closed__1;
static lean_object* l_Equiv_sigmaNatSucc___closed__4;
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_punitProd(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivCodomain___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg(lean_object*);
lean_object* l_Option_elim_x27___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaUnique(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaOptionEquivOfSome(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__1;
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_sumAssoc___closed__2;
static lean_object* l_Equiv_intEquivNatSumNat___elambda__1___closed__1;
static lean_object* l_Equiv_subtypeEquivRight___closed__1;
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__2(lean_object*);
static lean_object* l_Equiv_sigmaSumDistrib___closed__4;
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Equiv_prodSumDistrib___closed__4;
LEAN_EXPORT lean_object* l_Equiv_prodPUnit(lean_object*);
static lean_object* l_Equiv_sumProdDistrib___elambda__1___rarg___closed__2;
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__1___rarg___boxed(lean_object*);
lean_object* l_Equiv_equivOfUnique___elambda__1___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Equiv_sumSumSumComm___closed__11;
static lean_object* l_Equiv_sumSumSumComm___closed__6;
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__1___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_prodPiEquivSumPi___closed__1;
lean_object* l_Equiv_piUnique___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumEmpty(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodCongr(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__2___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__2___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Equiv_sumCongr___rarg(lean_object*, lean_object*);
static lean_object* l_Equiv_natEquivNatSumPUnit___closed__2;
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_pprodEquivProd___elambda__1___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_pprodEquivProd___elambda__2___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProd(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_pprodEquivProd___elambda__2___rarg), 1, 0);
x_4 = lean_alloc_closure((void*)(l_Equiv_pprodEquivProd___elambda__1___rarg), 1, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = l_Equiv_symm___elambda__2___rarg(x_1, x_4);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
x_7 = l_Equiv_symm___elambda__2___rarg(x_2, x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_5);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_pprodCongr___elambda__1___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_1(x_5, x_4);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_dec(x_3);
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_apply_1(x_8, x_7);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_6);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_pprodCongr___elambda__2___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodCongr___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_pprodCongr___elambda__2___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_pprodCongr___elambda__1___rarg), 3, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodCongr(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_pprodCongr___rarg), 2, 0);
return x_5;
}
}
static lean_object* _init_l_Equiv_pprodProd___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_pprodEquivProd(lean_box(0), lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodProd___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Equiv_pprodCongr___rarg(x_1, x_2);
x_4 = l_Equiv_pprodProd___rarg___closed__1;
x_5 = l_Equiv_trans___rarg(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodProd(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_pprodProd___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPProd___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_Equiv_symm___rarg(x_1);
x_4 = l_Equiv_symm___rarg(x_2);
x_5 = l_Equiv_pprodProd___rarg(x_3, x_4);
x_6 = l_Equiv_symm___rarg(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPProd(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodPProd___rarg), 2, 0);
return x_5;
}
}
static lean_object* _init_l_Equiv_pprodEquivProdPLift___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_plift(lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_pprodEquivProdPLift___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_pprodEquivProdPLift___closed__1;
x_2 = l_Equiv_symm___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_pprodEquivProdPLift___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_pprodEquivProdPLift___closed__2;
x_2 = l_Equiv_pprodProd___rarg(x_1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_pprodEquivProdPLift(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_pprodEquivProdPLift___closed__3;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Prod_map___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodCongr___elambda__1___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Prod_map___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodCongr___elambda__2___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_apply_1(x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg___lambda__1), 2, 1);
lean_closure_set(x_3, 0, x_1);
lean_inc(x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_2);
x_5 = lean_alloc_closure((void*)(l_Equiv_prodCongr___elambda__2___rarg), 3, 2);
lean_closure_set(x_5, 0, x_3);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_7, 0, x_2);
x_8 = lean_alloc_closure((void*)(l_Equiv_prodCongr___elambda__1___rarg), 3, 2);
lean_closure_set(x_8, 0, x_6);
lean_closure_set(x_8, 1, x_7);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_5);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongr(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Prod_swap___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_prodComm___elambda__1___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Prod_swap___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_prodComm___elambda__2___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_prodComm___elambda__2___rarg___boxed), 1, 0);
x_4 = lean_alloc_closure((void*)(l_Equiv_prodComm___elambda__1___rarg___boxed), 1, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__1___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodComm___elambda__1___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodComm___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodComm___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_1, 1);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_3, 1, x_6);
lean_ctor_set(x_3, 0, x_5);
lean_ctor_set(x_1, 1, x_7);
lean_ctor_set(x_1, 0, x_3);
return x_1;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 0);
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_3);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_8);
lean_ctor_set(x_11, 1, x_9);
lean_ctor_set(x_1, 1, x_10);
lean_ctor_set(x_1, 0, x_11);
return x_1;
}
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_12 = lean_ctor_get(x_1, 1);
x_13 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
lean_inc(x_13);
lean_dec(x_1);
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
if (lean_is_exclusive(x_12)) {
 lean_ctor_release(x_12, 0);
 lean_ctor_release(x_12, 1);
 x_16 = x_12;
} else {
 lean_dec_ref(x_12);
 x_16 = lean_box(0);
}
if (lean_is_scalar(x_16)) {
 x_17 = lean_alloc_ctor(0, 2, 0);
} else {
 x_17 = x_16;
}
lean_ctor_set(x_17, 0, x_13);
lean_ctor_set(x_17, 1, x_14);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_15);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodAssoc___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_3, 1, x_5);
lean_ctor_set(x_3, 0, x_7);
lean_ctor_set(x_1, 1, x_3);
lean_ctor_set(x_1, 0, x_6);
return x_1;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 1);
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_3);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_8);
lean_ctor_set(x_1, 1, x_11);
lean_ctor_set(x_1, 0, x_9);
return x_1;
}
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_12 = lean_ctor_get(x_1, 0);
x_13 = lean_ctor_get(x_1, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_1);
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
if (lean_is_exclusive(x_12)) {
 lean_ctor_release(x_12, 0);
 lean_ctor_release(x_12, 1);
 x_16 = x_12;
} else {
 lean_dec_ref(x_12);
 x_16 = lean_box(0);
}
if (lean_is_scalar(x_16)) {
 x_17 = lean_alloc_ctor(0, 2, 0);
} else {
 x_17 = x_16;
}
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_13);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_14);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodAssoc___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodAssoc___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodAssoc(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodAssoc___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_prodAssoc___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_dec(x_1);
x_4 = !lean_is_exclusive(x_2);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_3, 1, x_8);
lean_ctor_set(x_3, 0, x_6);
lean_ctor_set(x_2, 1, x_9);
lean_ctor_set(x_2, 0, x_7);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_3);
lean_ctor_set(x_10, 1, x_2);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_3, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_3);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_11);
lean_ctor_set(x_15, 1, x_13);
lean_ctor_set(x_2, 1, x_14);
lean_ctor_set(x_2, 0, x_12);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_2);
return x_16;
}
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_17 = lean_ctor_get(x_2, 0);
x_18 = lean_ctor_get(x_2, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_2);
x_19 = lean_ctor_get(x_3, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_3, 1);
lean_inc(x_20);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_21 = x_3;
} else {
 lean_dec_ref(x_3);
 x_21 = lean_box(0);
}
if (lean_is_scalar(x_21)) {
 x_22 = lean_alloc_ctor(0, 2, 0);
} else {
 x_22 = x_21;
}
lean_ctor_set(x_22, 0, x_17);
lean_ctor_set(x_22, 1, x_19);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_18);
lean_ctor_set(x_23, 1, x_20);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodProdProdComm___elambda__1___rarg), 1, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_dec(x_1);
x_4 = !lean_is_exclusive(x_2);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_3, 1, x_8);
lean_ctor_set(x_3, 0, x_6);
lean_ctor_set(x_2, 1, x_9);
lean_ctor_set(x_2, 0, x_7);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_3);
lean_ctor_set(x_10, 1, x_2);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_3, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_3);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_11);
lean_ctor_set(x_15, 1, x_13);
lean_ctor_set(x_2, 1, x_14);
lean_ctor_set(x_2, 0, x_12);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_2);
return x_16;
}
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_17 = lean_ctor_get(x_2, 0);
x_18 = lean_ctor_get(x_2, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_2);
x_19 = lean_ctor_get(x_3, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_3, 1);
lean_inc(x_20);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_21 = x_3;
} else {
 lean_dec_ref(x_3);
 x_21 = lean_box(0);
}
if (lean_is_scalar(x_21)) {
 x_22 = lean_alloc_ctor(0, 2, 0);
} else {
 x_22 = x_21;
}
lean_ctor_set(x_22, 0, x_17);
lean_ctor_set(x_22, 1, x_19);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_18);
lean_ctor_set(x_23, 1, x_20);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodProdProdComm___elambda__2___rarg), 1, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodProdProdComm(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodProdProdComm___elambda__2___rarg), 1, 0);
x_6 = lean_alloc_closure((void*)(l_Equiv_prodProdProdComm___elambda__1___rarg), 1, 0);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_apply_2(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_curry___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
x_5 = lean_apply_1(x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_curry___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_curry___elambda__2___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_curry(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_curry___elambda__2___rarg), 3, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_curry___elambda__1___rarg), 2, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_prodPUnit___elambda__1___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_prodPUnit___elambda__2___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPUnit(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_prodPUnit___elambda__2___rarg___boxed), 1, 0);
x_3 = lean_alloc_closure((void*)(l_Equiv_prodPUnit___elambda__1___rarg), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPUnit___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodPUnit___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_punitProd___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_prodComm(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_punitProd___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_prodPUnit(lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_punitProd___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_punitProd___closed__1;
x_2 = l_Equiv_punitProd___closed__2;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_punitProd(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_punitProd___closed__3;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaPUnit___elambda__1___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaPUnit___elambda__2___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaPUnit___elambda__2___rarg___boxed), 1, 0);
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaPUnit___elambda__1___rarg), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaPUnit___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sigmaPUnit___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_PUnit_unique;
x_2 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___elambda__2___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___elambda__1___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1;
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg), 1, 0);
return x_2;
}
}
static lean_object* _init_l_Equiv_prodUnique___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_refl(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodUnique___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg(x_1);
x_3 = l_Equiv_prodUnique___rarg___closed__1;
x_4 = l_Equiv_prodCongr___rarg(x_3, x_2);
x_5 = l_Equiv_punitProd___closed__2;
x_6 = l_Equiv_trans___rarg(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodUnique(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_prodUnique___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_uniqueProd___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___elambda__1___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1;
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_uniqueProd___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___at_Equiv_uniqueProd___spec__1___rarg), 1, 0);
return x_2;
}
}
static lean_object* _init_l_Equiv_uniqueProd___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_punitProd(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueProd___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = l_Equiv_equivOfUnique___at_Equiv_uniqueProd___spec__1___rarg(x_1);
x_3 = l_Equiv_prodUnique___rarg___closed__1;
x_4 = l_Equiv_prodCongr___rarg(x_2, x_3);
x_5 = l_Equiv_uniqueProd___rarg___closed__1;
x_6 = l_Equiv_trans___rarg(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueProd(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_uniqueProd___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_sigmaUnique___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___elambda__1___rarg___boxed), 2, 1);
lean_closure_set(x_4, 0, x_3);
x_5 = l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1;
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_equivOfUnique___at_Equiv_sigmaUnique___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___at_Equiv_sigmaUnique___spec__1___rarg), 2, 0);
return x_3;
}
}
static lean_object* _init_l_Equiv_sigmaUnique___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sigmaPUnit(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaUnique___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_alloc_closure((void*)(l_Equiv_equivOfUnique___at_Equiv_sigmaUnique___spec__1___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_Equiv_sigmaCongrRight___rarg(x_2);
x_4 = l_Equiv_sigmaUnique___rarg___closed__1;
x_5 = l_Equiv_trans___rarg(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaUnique(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaUnique___rarg), 1, 0);
return x_3;
}
}
static lean_object* _init_l_Equiv_prodEmpty___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_equivOfIsEmpty(lean_box(0), lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodEmpty(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodEmpty___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_emptyProd(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodEmpty___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPEmpty(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodEmpty___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_pemptyProd(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_prodEmpty___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_psumEquivSum___elambda__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__2___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_1);
if (x_5 == 0)
{
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_psumEquivSum___elambda__2___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum___lambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_psumEquivSum___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_psumEquivSum___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_psumEquivSum___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_psumEquivSum___lambda__2), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumEquivSum(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = l_Equiv_psumEquivSum___closed__1;
x_4 = l_Equiv_psumEquivSum___closed__2;
x_5 = lean_alloc_closure((void*)(l_Equiv_psumEquivSum___elambda__1___rarg), 3, 2);
lean_closure_set(x_5, 0, x_3);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_closure((void*)(l_Equiv_psumEquivSum___elambda__2___rarg), 1, 0);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_map___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_sumCongr___elambda__1___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_map___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCongr___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_sumCongr___elambda__2___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCongr___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg___lambda__1), 2, 1);
lean_closure_set(x_3, 0, x_1);
lean_inc(x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_2);
x_5 = lean_alloc_closure((void*)(l_Equiv_sumCongr___elambda__2___rarg), 3, 2);
lean_closure_set(x_5, 0, x_3);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_7, 0, x_2);
x_8 = lean_alloc_closure((void*)(l_Equiv_sumCongr___elambda__1___rarg), 3, 2);
lean_closure_set(x_8, 0, x_6);
lean_closure_set(x_8, 1, x_7);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_5);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCongr(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_sumCongr___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = l_Equiv_symm___elambda__2___rarg(x_1, x_5);
lean_ctor_set(x_3, 0, x_6);
return x_3;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = l_Equiv_symm___elambda__2___rarg(x_1, x_7);
x_9 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_9, 0, x_8);
return x_9;
}
}
else
{
uint8_t x_10; 
lean_dec(x_1);
x_10 = !lean_is_exclusive(x_3);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = l_Equiv_symm___elambda__2___rarg(x_2, x_11);
lean_ctor_set(x_3, 0, x_12);
return x_3;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_3, 0);
lean_inc(x_13);
lean_dec(x_3);
x_14 = l_Equiv_symm___elambda__2___rarg(x_2, x_13);
x_15 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_15, 0, x_14);
return x_15;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_psumCongr___elambda__1___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_4; 
lean_dec(x_2);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_apply_1(x_6, x_5);
lean_ctor_set(x_3, 0, x_7);
return x_3;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_3, 0);
lean_inc(x_8);
lean_dec(x_3);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_apply_1(x_9, x_8);
x_11 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_11, 0, x_10);
return x_11;
}
}
else
{
uint8_t x_12; 
lean_dec(x_1);
x_12 = !lean_is_exclusive(x_3);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_2, 0);
lean_inc(x_14);
lean_dec(x_2);
x_15 = lean_apply_1(x_14, x_13);
lean_ctor_set(x_3, 0, x_15);
return x_3;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_3, 0);
lean_inc(x_16);
lean_dec(x_3);
x_17 = lean_ctor_get(x_2, 0);
lean_inc(x_17);
lean_dec(x_2);
x_18 = lean_apply_1(x_17, x_16);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_psumCongr___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_psumCongr___elambda__2___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumCongr___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_psumCongr___elambda__2___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_psumCongr___elambda__1___rarg), 3, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumCongr(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_psumCongr___rarg), 2, 0);
return x_5;
}
}
static lean_object* _init_l_Equiv_psumSum___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_psumEquivSum(lean_box(0), lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumSum___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Equiv_psumCongr___rarg(x_1, x_2);
x_4 = l_Equiv_psumSum___rarg___closed__1;
x_5 = l_Equiv_trans___rarg(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_psumSum(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_psumSum___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPSum___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_Equiv_symm___rarg(x_1);
x_4 = l_Equiv_symm___rarg(x_2);
x_5 = l_Equiv_psumSum___rarg(x_3, x_4);
x_6 = l_Equiv_symm___rarg(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPSum(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_sumPSum___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__1___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_1);
if (x_5 == 0)
{
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSum___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__2___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_1);
if (x_5 == 0)
{
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSum___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSum___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSum(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSum___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeSum___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_sumCongr___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_sumCongr___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_sumCongr(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_Perm_sumCongr___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__1(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = 0;
return x_2;
}
}
LEAN_EXPORT uint8_t l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__2(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = 1;
return x_2;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__2___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__1;
x_3 = l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__2(uint8_t x_1) {
_start:
{
if (x_1 == 0)
{
lean_object* x_2; 
x_2 = l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__1;
return x_2;
}
else
{
lean_object* x_3; 
x_3 = l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2;
return x_3;
}
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_boolEquivPUnitSumPUnit___elambda__2___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_boolEquivPUnitSumPUnit___elambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_boolEquivPUnitSumPUnit___closed__1;
x_2 = l_Equiv_boolEquivPUnitSumPUnit___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_boolEquivPUnitSumPUnit() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_boolEquivPUnitSumPUnit___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__1___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__1(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__2___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Equiv_boolEquivPUnitSumPUnit___elambda__1___lambda__2(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolEquivPUnitSumPUnit___elambda__2___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Equiv_boolEquivPUnitSumPUnit___elambda__2(x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumComm___elambda__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Sum_map___rarg___lambda__2), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sumComm___elambda__1___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Sum_map___rarg___lambda__1), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_sumComm___elambda__1___rarg___closed__1;
x_3 = l_Equiv_sumComm___elambda__1___rarg___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumComm___elambda__1___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_sumComm___elambda__1___rarg___closed__1;
x_3 = l_Equiv_sumComm___elambda__1___rarg___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumComm___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumComm___elambda__2___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumComm(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumComm___elambda__2___rarg), 1, 0);
x_4 = lean_alloc_closure((void*)(l_Equiv_sumComm___elambda__1___rarg), 1, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumAssoc___elambda__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumAssoc___elambda__2___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc___lambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sumAssoc___lambda__2), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sumAssoc___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumAssoc___closed__1;
x_2 = l_Equiv_sumAssoc___closed__2;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumAssoc___closed__2;
x_2 = l_Equiv_sumAssoc___closed__3;
x_3 = lean_alloc_closure((void*)(l_Sum_elim___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sumAssoc___closed__1;
x_2 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_2, 0, x_1);
lean_closure_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sumAssoc___closed__2;
x_2 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_2, 0, x_1);
lean_closure_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumAssoc___closed__2;
x_2 = l_Equiv_sumAssoc___closed__1;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumAssoc___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumAssoc___closed__7;
x_2 = l_Equiv_sumAssoc___closed__1;
x_3 = lean_alloc_closure((void*)(l_Sum_elim___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumAssoc(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_4 = l_Equiv_sumAssoc___closed__4;
x_5 = l_Equiv_sumAssoc___closed__5;
x_6 = lean_alloc_closure((void*)(l_Equiv_sumAssoc___elambda__2___rarg), 3, 2);
lean_closure_set(x_6, 0, x_4);
lean_closure_set(x_6, 1, x_5);
x_7 = l_Equiv_sumAssoc___closed__6;
x_8 = l_Equiv_sumAssoc___closed__8;
x_9 = lean_alloc_closure((void*)(l_Equiv_sumAssoc___elambda__1___rarg), 3, 2);
lean_closure_set(x_9, 0, x_7);
lean_closure_set(x_9, 1, x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_6);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_apply_1(x_2, x_3);
x_5 = lean_apply_1(x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_sumSumSumComm___elambda__1___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_apply_1(x_2, x_3);
x_5 = lean_apply_1(x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_sumSumSumComm___elambda__2___rarg), 3, 0);
return x_5;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sumAssoc(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sumSumSumComm___closed__1;
x_2 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sumSumSumComm___closed__1;
x_2 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_id___rarg___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__3;
x_2 = l_Equiv_sumSumSumComm___closed__4;
x_3 = lean_alloc_closure((void*)(l_Sum_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sumComm(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Sum_swap___rarg), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__4;
x_2 = l_Equiv_sumSumSumComm___closed__7;
x_3 = lean_alloc_closure((void*)(l_Sum_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__8;
x_2 = l_Equiv_sumSumSumComm___closed__4;
x_3 = lean_alloc_closure((void*)(l_Sum_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__2;
x_2 = l_Equiv_sumSumSumComm___closed__4;
x_3 = lean_alloc_closure((void*)(l_Sum_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__10;
x_2 = l_Equiv_sumSumSumComm___closed__3;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__9;
x_2 = l_Equiv_sumSumSumComm___closed__11;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__5;
x_2 = l_Equiv_sumSumSumComm___closed__12;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sumSumSumComm___closed__6;
x_2 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__4;
x_2 = l_Equiv_sumSumSumComm___closed__14;
x_3 = lean_alloc_closure((void*)(l_Sum_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__15;
x_2 = l_Equiv_sumSumSumComm___closed__4;
x_3 = lean_alloc_closure((void*)(l_Sum_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__16;
x_2 = l_Equiv_sumSumSumComm___closed__11;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumSumSumComm___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__5;
x_2 = l_Equiv_sumSumSumComm___closed__17;
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumSumSumComm(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = l_Equiv_sumSumSumComm___closed__2;
x_6 = l_Equiv_sumSumSumComm___closed__13;
x_7 = lean_alloc_closure((void*)(l_Equiv_sumSumSumComm___elambda__2___rarg), 3, 2);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_6);
x_8 = l_Equiv_sumSumSumComm___closed__18;
x_9 = lean_alloc_closure((void*)(l_Equiv_sumSumSumComm___elambda__1___rarg), 3, 2);
lean_closure_set(x_9, 0, x_5);
lean_closure_set(x_9, 1, x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_7);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumEmpty___elambda__1___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEmpty___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumEmpty___elambda__2___rarg), 3, 0);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumEmpty___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_isEmptyElim___boxed), 4, 3);
lean_closure_set(x_1, 0, lean_box(0));
lean_closure_set(x_1, 1, lean_box(0));
lean_closure_set(x_1, 2, lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEmpty(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = l_Equiv_sumSumSumComm___closed__4;
x_5 = l_Equiv_sumEmpty___closed__1;
x_6 = lean_alloc_closure((void*)(l_Equiv_sumEmpty___elambda__2___rarg), 3, 2);
lean_closure_set(x_6, 0, x_4);
lean_closure_set(x_6, 1, x_5);
x_7 = lean_alloc_closure((void*)(l_Equiv_sumEmpty___elambda__1___rarg), 1, 0);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
static lean_object* _init_l_Equiv_emptySum___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sumEmpty(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_emptySum___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__6;
x_2 = l_Equiv_emptySum___closed__1;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_emptySum(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Equiv_emptySum___closed__2;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
static lean_object* _init_l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__2___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__1;
x_3 = l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_optionEquivSumPUnit___elambda__1___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__2___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2;
return x_2;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_ctor_set_tag(x_1, 0);
return x_1;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_optionEquivSumPUnit___elambda__2___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_optionEquivSumPUnit___elambda__2___rarg), 1, 0);
x_3 = lean_alloc_closure((void*)(l_Equiv_optionEquivSumPUnit___elambda__1___rarg), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__2___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_optionEquivSumPUnit___elambda__1___rarg___lambda__2(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_optionIsSomeEquiv___elambda__1___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_optionIsSomeEquiv___elambda__2___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_optionIsSomeEquiv___elambda__2___rarg___boxed), 1, 0);
x_3 = lean_alloc_closure((void*)(l_Equiv_optionIsSomeEquiv___elambda__1___rarg), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_optionIsSomeEquiv___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_optionIsSomeEquiv___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_1(x_5, x_4);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_piOptionEquivProd___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
x_4 = lean_apply_1(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_box(0);
lean_inc(x_1);
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_piOptionEquivProd___elambda__2___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_piOptionEquivProd___elambda__2___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_piOptionEquivProd(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_piOptionEquivProd___elambda__2___rarg), 1, 0);
x_4 = lean_alloc_closure((void*)(l_Equiv_piOptionEquivProd___elambda__1___rarg), 2, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_unbox(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumEquivSigmaBool___elambda__1___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg___lambda__1(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; 
x_2 = 0;
x_3 = lean_box(x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg___lambda__2(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; 
x_2 = 1;
x_3 = lean_box(x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
}
static lean_object* _init_l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sumEquivSigmaBool___elambda__2___rarg___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sumEquivSigmaBool___elambda__2___rarg___lambda__2), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__1;
x_3 = l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumEquivSigmaBool___elambda__2___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumEquivSigmaBool___elambda__2___rarg), 1, 0);
x_4 = lean_alloc_closure((void*)(l_Equiv_sumEquivSigmaBool___elambda__1___rarg___boxed), 1, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumEquivSigmaBool___elambda__1___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sumEquivSigmaBool___elambda__1___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
lean_inc(x_2);
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaFiberEquiv___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaFiberEquiv___elambda__2___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaFiberEquiv___elambda__1___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaFiberEquiv___elambda__2___rarg___boxed), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaFiberEquiv___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sigmaFiberEquiv___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaFiberEquiv___elambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Equiv_sigmaFiberEquiv___elambda__2(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
lean_object* x_6; 
x_6 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6, 0, x_3);
return x_6;
}
else
{
lean_object* x_7; 
lean_dec(x_3);
x_7 = lean_box(0);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__2(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__2___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__1), 3, 2);
lean_closure_set(x_3, 0, x_2);
lean_closure_set(x_3, 1, x_1);
x_4 = l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1;
x_5 = lean_alloc_closure((void*)(l_Option_elim_x27___rarg___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, lean_box(0));
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaEquivOptionOfInhabited___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__2___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sigmaEquivOptionOfInhabited___rarg___lambda__2(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
lean_inc(x_2);
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_unbox(x_3);
lean_dec(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5, 0, x_2);
return x_5;
}
else
{
lean_object* x_6; 
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_2);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumCompl___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCompl___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumCompl___elambda__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCompl___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1;
x_3 = lean_alloc_closure((void*)(l_Equiv_sumCompl___elambda__2___rarg), 3, 2);
lean_closure_set(x_3, 0, x_2);
lean_closure_set(x_3, 1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_sumCompl___elambda__1___rarg), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumCompl(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sumCompl___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeCongr___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = l_Equiv_sumCompl___rarg(x_1);
x_6 = l_Equiv_symm___rarg(x_5);
x_7 = l_Equiv_sumCongr___rarg(x_3, x_4);
x_8 = l_Equiv_sumCompl___rarg(x_2);
x_9 = l_Equiv_trans___rarg(x_7, x_8);
x_10 = l_Equiv_trans___rarg(x_6, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeCongr(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeCongr___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_subtypeCongr___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_Equiv_sumCompl___rarg(x_1);
x_5 = l_Equiv_sumCongr___rarg(x_2, x_3);
lean_inc(x_4);
x_6 = l_Equiv_equivCongr___elambda__2___rarg(x_4, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_subtypeCongr(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_Perm_subtypeCongr___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
lean_inc(x_4);
x_5 = lean_apply_1(x_1, x_4);
x_6 = lean_unbox(x_5);
lean_dec(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
lean_dec(x_2);
x_7 = lean_apply_1(x_3, x_4);
return x_7;
}
else
{
lean_object* x_8; 
lean_dec(x_3);
x_8 = lean_apply_1(x_2, x_4);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___elambda__1___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___elambda__2___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___elambda__1___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___elambda__2___rarg), 2, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___elambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_subtypePreimage___elambda__2(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_3);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_apply_1(x_2, x_3);
x_6 = l_Equiv_symm___elambda__2___rarg(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrRight___elambda__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_3);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_apply_1(x_2, x_3);
x_6 = lean_ctor_get(x_4, 0);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_apply_1(x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrRight___elambda__2___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrRight___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_piCongrRight___elambda__2___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_piCongrRight___elambda__1___rarg), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrRight(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrRight___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piComm___elambda__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piComm___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piComm___elambda__2___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piComm(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piComm___elambda__2___rarg), 3, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_piComm___elambda__1___rarg), 3, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Sigma_uncurry___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCurry___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sigma_curry___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCurry___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCurry___elambda__2___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCurry(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCurry___elambda__2___rarg), 3, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_piCurry___elambda__1___rarg), 2, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
x_6 = lean_apply_1(x_1, x_5);
x_7 = l_Equiv_symm___elambda__2___rarg(x_6, x_4);
lean_ctor_set(x_2, 0, x_7);
return x_2;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
lean_inc(x_9);
x_10 = lean_apply_1(x_1, x_9);
x_11 = l_Equiv_symm___elambda__2___rarg(x_10, x_8);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_9);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongrLeft___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
x_6 = lean_apply_1(x_1, x_5);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_apply_1(x_7, x_4);
lean_ctor_set(x_2, 0, x_8);
return x_2;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_2, 0);
x_10 = lean_ctor_get(x_2, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_2);
lean_inc(x_10);
x_11 = lean_apply_1(x_1, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_apply_1(x_12, x_9);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_10);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongrLeft___elambda__2___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_prodCongrLeft___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_prodCongrLeft___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrLeft(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongrLeft___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
x_6 = lean_apply_1(x_1, x_4);
x_7 = l_Equiv_symm___elambda__2___rarg(x_6, x_5);
lean_ctor_set(x_2, 1, x_7);
return x_2;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
lean_inc(x_8);
x_10 = lean_apply_1(x_1, x_8);
x_11 = l_Equiv_symm___elambda__2___rarg(x_10, x_9);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_8);
lean_ctor_set(x_12, 1, x_11);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongrRight___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
x_6 = lean_apply_1(x_1, x_4);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_apply_1(x_7, x_5);
lean_ctor_set(x_2, 1, x_8);
return x_2;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_2, 0);
x_10 = lean_ctor_get(x_2, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_2);
lean_inc(x_9);
x_11 = lean_apply_1(x_1, x_9);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_apply_1(x_12, x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_9);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongrRight___elambda__2___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_prodCongrRight___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_prodCongrRight___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodCongrRight(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodCongrRight___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_ofFiberEquiv___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = l_Equiv_sigmaFiberEquiv___rarg(x_1);
x_5 = l_Equiv_symm___rarg(x_4);
x_6 = l_Equiv_sigmaCongrRight___rarg(x_3);
x_7 = l_Equiv_sigmaFiberEquiv___rarg(x_2);
x_8 = l_Equiv_trans___rarg(x_6, x_7);
x_9 = l_Equiv_trans___rarg(x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Equiv_ofFiberEquiv(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_ofFiberEquiv___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = l_Equiv_symm___elambda__2___rarg(x_1, x_4);
lean_inc(x_5);
x_6 = lean_apply_1(x_2, x_5);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_dec(x_3);
x_8 = l_Equiv_symm___elambda__2___rarg(x_6, x_7);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_5);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodShear___elambda__1___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
lean_inc(x_4);
x_6 = lean_apply_1(x_5, x_4);
x_7 = lean_apply_1(x_2, x_4);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_8);
lean_dec(x_3);
x_9 = lean_ctor_get(x_7, 0);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_apply_1(x_9, x_8);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_6);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodShear___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodShear___elambda__2___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodShear___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_prodShear___elambda__2___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_prodShear___elambda__1___rarg), 3, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodShear(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_prodShear___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_inc(x_2);
x_6 = lean_apply_2(x_1, x_5, x_2);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_4, 1);
lean_inc(x_8);
lean_dec(x_4);
x_9 = l_Equiv_symm___elambda__2___rarg(x_3, x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_2);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_Perm_prodExtendRight___elambda__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_inc(x_2);
x_6 = lean_apply_2(x_1, x_5, x_2);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_4, 1);
lean_inc(x_8);
lean_dec(x_4);
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = lean_apply_1(x_9, x_8);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_2);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_Perm_prodExtendRight___elambda__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Equiv_Perm_prodExtendRight___elambda__2___rarg), 4, 3);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
lean_closure_set(x_4, 2, x_3);
x_5 = lean_alloc_closure((void*)(l_Equiv_Perm_prodExtendRight___elambda__1___rarg), 4, 3);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_2);
lean_closure_set(x_5, 2, x_3);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_prodExtendRight(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_Perm_prodExtendRight___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_apply_1(x_3, x_2);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_1(x_5, x_2);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_arrowProdEquivProdArrow___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg___lambda__2), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_arrowProdEquivProdArrow(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_arrowProdEquivProdArrow___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_arrowProdEquivProdArrow___elambda__1___rarg), 2, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Sum_rec____x40_Mathlib_Util_CompileInductive___hyg_3282____rarg(x_3, x_4, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumPiEquivProdPi___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_3, 0, x_2);
x_4 = lean_apply_1(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
x_4 = lean_apply_1(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_sumPiEquivProdPi___elambda__2___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_sumPiEquivProdPi___elambda__2___rarg___lambda__2), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumPiEquivProdPi___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumPiEquivProdPi(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumPiEquivProdPi___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_sumPiEquivProdPi___elambda__1___rarg), 2, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
static lean_object* _init_l_Equiv_prodPiEquivSumPi___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sumPiEquivProdPi(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_prodPiEquivSumPi___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_prodPiEquivSumPi___closed__1;
x_2 = l_Equiv_symm___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodPiEquivSumPi(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_prodPiEquivSumPi___closed__2;
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Sum_elim___rarg(x_3, x_4, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumArrowEquivProdArrow___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = l_Equiv_sumAssoc___closed__2;
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
x_4 = l_Equiv_sumAssoc___closed__1;
x_5 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumArrowEquivProdArrow___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumArrowEquivProdArrow(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumArrowEquivProdArrow___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_sumArrowEquivProdArrow___elambda__1___rarg), 2, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
static lean_object* _init_l_Equiv_sumProdDistrib___elambda__1___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumAssoc___closed__2;
x_2 = l_Equiv_sumSumSumComm___closed__4;
x_3 = lean_alloc_closure((void*)(l_Prod_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sumProdDistrib___elambda__1___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumAssoc___closed__1;
x_2 = l_Equiv_sumSumSumComm___closed__4;
x_3 = lean_alloc_closure((void*)(l_Prod_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_sumProdDistrib___elambda__1___rarg___closed__1;
x_3 = l_Equiv_sumProdDistrib___elambda__1___rarg___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumProdDistrib___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 0);
lean_dec(x_4);
lean_ctor_set(x_1, 0, x_2);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_sumProdDistrib___elambda__2___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
lean_inc(x_2);
x_4 = l_Sum_map___rarg(x_2, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumProdDistrib___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sumProdDistrib(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sumProdDistrib___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_sumProdDistrib___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
static lean_object* _init_l_Equiv_prodSumDistrib___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sumProdDistrib(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_prodSumDistrib___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_punitProd___closed__1;
x_2 = l_Equiv_prodSumDistrib___closed__1;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_prodSumDistrib___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_punitProd___closed__1;
x_2 = l_Equiv_sumCongr___rarg(x_1, x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_prodSumDistrib___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_prodSumDistrib___closed__2;
x_2 = l_Equiv_prodSumDistrib___closed__3;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodSumDistrib(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Equiv_prodSumDistrib___closed__4;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___elambda__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 1);
lean_dec(x_4);
lean_ctor_set(x_1, 1, x_2);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_2);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___elambda__2___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_dec(x_1);
lean_inc(x_2);
x_4 = l_Sum_map___rarg(x_2, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sigmaSumDistrib___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___lambda__1___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaSumDistrib___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__4;
x_2 = l_Equiv_sigmaSumDistrib___closed__1;
x_3 = lean_alloc_closure((void*)(l_Sigma_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sigmaSumDistrib___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___lambda__2___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaSumDistrib___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sumSumSumComm___closed__4;
x_2 = l_Equiv_sigmaSumDistrib___closed__3;
x_3 = lean_alloc_closure((void*)(l_Sigma_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = l_Equiv_sigmaSumDistrib___closed__2;
x_5 = l_Equiv_sigmaSumDistrib___closed__4;
x_6 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___elambda__1___rarg), 3, 2);
lean_closure_set(x_6, 0, x_4);
lean_closure_set(x_6, 1, x_5);
x_7 = lean_alloc_closure((void*)(l_Equiv_sigmaSumDistrib___elambda__2___rarg), 1, 0);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_sigmaSumDistrib___lambda__1(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSumDistrib___lambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_sigmaSumDistrib___lambda__2(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_1, 1);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_3, 0);
lean_ctor_set(x_1, 1, x_5);
lean_ctor_set(x_3, 0, x_1);
return x_3;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
lean_ctor_set(x_1, 1, x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_1, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
if (lean_is_exclusive(x_9)) {
 lean_ctor_release(x_9, 0);
 lean_ctor_release(x_9, 1);
 x_13 = x_9;
} else {
 lean_dec_ref(x_9);
 x_13 = lean_box(0);
}
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_11);
if (lean_is_scalar(x_13)) {
 x_15 = lean_alloc_ctor(0, 2, 0);
} else {
 x_15 = x_13;
}
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_12);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaProdDistrib___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_1, 0, x_5);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_3);
lean_ctor_set(x_1, 0, x_7);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_1);
return x_8;
}
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_1, 0);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_1);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
if (lean_is_exclusive(x_9)) {
 lean_ctor_release(x_9, 0);
 lean_ctor_release(x_9, 1);
 x_13 = x_9;
} else {
 lean_dec_ref(x_9);
 x_13 = lean_box(0);
}
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_10);
if (lean_is_scalar(x_13)) {
 x_15 = lean_alloc_ctor(0, 2, 0);
} else {
 x_15 = x_13;
}
lean_ctor_set(x_15, 0, x_11);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaProdDistrib___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaProdDistrib(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaProdDistrib___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_sigmaProdDistrib___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_eq(x_3, x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_sub(x_3, x_7);
lean_dec(x_3);
lean_ctor_set(x_1, 0, x_8);
x_9 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_9, 0, x_1);
return x_9;
}
else
{
lean_object* x_10; 
lean_free_object(x_1);
lean_dec(x_3);
x_10 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_10, 0, x_4);
return x_10;
}
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = lean_ctor_get(x_1, 0);
x_12 = lean_ctor_get(x_1, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_1);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_eq(x_11, x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_unsigned_to_nat(1u);
x_16 = lean_nat_sub(x_11, x_15);
lean_dec(x_11);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_12);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_17);
return x_18;
}
else
{
lean_object* x_19; 
lean_dec(x_11);
x_19 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_19, 0, x_12);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___elambda__2___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_add(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Equiv_sigmaNatSucc___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___lambda__2___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaNatSucc___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___lambda__3___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaNatSucc___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sigmaNatSucc___closed__1;
x_2 = l_Equiv_sigmaNatSucc___closed__2;
x_3 = lean_alloc_closure((void*)(l_Sigma_map___rarg), 3, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_sigmaNatSucc___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___lambda__1), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = l_Equiv_sigmaNatSucc___closed__4;
x_3 = l_Equiv_sigmaNatSucc___closed__3;
x_4 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___elambda__1___rarg), 3, 2);
lean_closure_set(x_4, 0, x_2);
lean_closure_set(x_4, 1, x_3);
x_5 = lean_alloc_closure((void*)(l_Equiv_sigmaNatSucc___elambda__2___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__2___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sigmaNatSucc___lambda__2(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaNatSucc___lambda__3___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_sigmaNatSucc___lambda__3(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Sum_elim___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_boolProdEquivSum___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_unbox(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_boolProdEquivSum___elambda__2___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___lambda__1(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; 
x_2 = 0;
x_3 = lean_box(x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___lambda__2(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; 
x_2 = 1;
x_3 = lean_box(x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
}
static lean_object* _init_l_Equiv_boolProdEquivSum___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_boolProdEquivSum___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_boolProdEquivSum___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_boolProdEquivSum___lambda__2), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = l_Equiv_boolProdEquivSum___closed__1;
x_3 = l_Equiv_boolProdEquivSum___closed__2;
x_4 = lean_alloc_closure((void*)(l_Equiv_boolProdEquivSum___elambda__1___rarg), 3, 2);
lean_closure_set(x_4, 0, x_2);
lean_closure_set(x_4, 1, x_3);
x_5 = lean_alloc_closure((void*)(l_Equiv_boolProdEquivSum___elambda__2___rarg___boxed), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolProdEquivSum___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_boolProdEquivSum___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__1___rarg(lean_object* x_1, uint8_t x_2) {
_start:
{
if (x_2 == 0)
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
return x_3;
}
else
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_boolArrowEquivProd___elambda__1___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_2 = 0;
x_3 = lean_box(x_2);
lean_inc(x_1);
x_4 = lean_apply_1(x_1, x_3);
x_5 = 1;
x_6 = lean_box(x_5);
x_7 = lean_apply_1(x_1, x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_boolArrowEquivProd___elambda__2___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_boolArrowEquivProd___elambda__2___rarg), 1, 0);
x_3 = lean_alloc_closure((void*)(l_Equiv_boolArrowEquivProd___elambda__1___rarg___boxed), 2, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_boolArrowEquivProd___elambda__1___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_2);
lean_dec(x_2);
x_4 = l_Equiv_boolArrowEquivProd___elambda__1___rarg(x_1, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
}
static lean_object* _init_l_Equiv_natEquivNatSumPUnit___elambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_natEquivNatSumPUnit___elambda__1___lambda__1___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_sigmaNatSucc___closed__1;
x_3 = l_Equiv_natEquivNatSumPUnit___elambda__1___closed__1;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_nat_dec_eq(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_unsigned_to_nat(1u);
x_5 = lean_nat_sub(x_1, x_4);
x_6 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
else
{
lean_object* x_7; 
x_7 = l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2;
return x_7;
}
}
}
static lean_object* _init_l_Equiv_natEquivNatSumPUnit___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_natEquivNatSumPUnit___elambda__2___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_natEquivNatSumPUnit___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_natEquivNatSumPUnit___elambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_natEquivNatSumPUnit___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_natEquivNatSumPUnit___closed__1;
x_2 = l_Equiv_natEquivNatSumPUnit___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_natEquivNatSumPUnit() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_natEquivNatSumPUnit___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__1___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_natEquivNatSumPUnit___elambda__1___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_natEquivNatSumPUnit___elambda__2___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_natEquivNatSumPUnit___elambda__2(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_natSumPUnitEquivNat___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_natEquivNatSumPUnit;
x_2 = l_Equiv_symm___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_natSumPUnitEquivNat() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_natSumPUnitEquivNat___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__1___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__1___lambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_int_neg_succ_of_nat(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat___elambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_intEquivNatSumNat___elambda__1___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat___elambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_intEquivNatSumNat___elambda__1___lambda__2), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_intEquivNatSumNat___elambda__1___closed__1;
x_3 = l_Equiv_intEquivNatSumNat___elambda__1___closed__2;
x_4 = l_Sum_elim___rarg(x_2, x_3, x_1);
return x_4;
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat___elambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_Equiv_intEquivNatSumNat___elambda__2___closed__1;
x_3 = lean_int_dec_lt(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_nat_abs(x_1);
x_5 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_nat_abs(x_1);
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_sub(x_6, x_7);
lean_dec(x_6);
x_9 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_9, 0, x_8);
return x_9;
}
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_intEquivNatSumNat___elambda__2___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_intEquivNatSumNat___elambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_intEquivNatSumNat___closed__1;
x_2 = l_Equiv_intEquivNatSumNat___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Equiv_intEquivNatSumNat() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_intEquivNatSumNat___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_intEquivNatSumNat___elambda__2___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_intEquivNatSumNat___elambda__2(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_List_mapTR_loop___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_listEquivOfEquiv___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_List_mapTR_loop___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_listEquivOfEquiv___elambda__2___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_prodCongr___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_listEquivOfEquiv___elambda__2___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_symm___elambda__2___rarg), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Equiv_listEquivOfEquiv___elambda__1___rarg), 2, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_listEquivOfEquiv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_listEquivOfEquiv___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_symm___elambda__2___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_uniqueCongr___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Equiv_symm___rarg(x_1);
x_4 = l_Equiv_symm___elambda__2___rarg(x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_uniqueCongr___elambda__2___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_uniqueCongr___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_uniqueCongr___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_uniqueCongr(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_uniqueCongr___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_symm___elambda__2___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeEquiv___elambda__1___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_apply_1(x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeEquiv___elambda__2___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypeEquiv___elambda__2___rarg), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeEquiv___elambda__1___rarg), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquiv(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeEquiv___rarg), 2, 0);
return x_5;
}
}
static lean_object* _init_l_Equiv_subtypeEquivRight___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_prodUnique___rarg___closed__1;
x_2 = l_Equiv_subtypeEquiv___rarg(x_1, lean_box(0));
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivRight(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_subtypeEquivRight___closed__1;
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeEquiv___rarg(x_1, lean_box(0));
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeEquivOfSubtype___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype_x27___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_symm___rarg(x_1);
x_3 = l_Equiv_subtypeEquiv___rarg(x_2, lean_box(0));
x_4 = l_Equiv_symm___rarg(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivOfSubtype_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeEquivOfSubtype_x27___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivProp(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_subtypeEquivRight___closed__1;
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg___boxed), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg___boxed), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__1___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeSubtypeEquivSubtypeExists___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_subtypeSubtypeEquivSubtypeExists(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_subtypeEquivRight(lean_box(0), lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__1;
x_2 = l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtypeInter(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3;
return x_4;
}
}
static lean_object* _init_l_Equiv_subtypeSubtypeEquivSubtype___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_subtypeSubtypeEquivSubtypeInter(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_subtypeSubtypeEquivSubtype___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_subtypeSubtypeEquivSubtype___closed__1;
x_2 = l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSubtypeEquivSubtype(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_subtypeSubtypeEquivSubtype___closed__2;
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypeUnivEquiv___elambda__1___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypeUnivEquiv___elambda__2___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeUnivEquiv___elambda__2___rarg___boxed), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeUnivEquiv___elambda__1___rarg___boxed), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__1___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeUnivEquiv___elambda__1___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeUnivEquiv___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeUnivEquiv___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSigmaEquiv___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSigmaEquiv___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeSigmaEquiv(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeSigmaEquiv___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeSigmaEquiv___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_subtypeSigmaEquiv(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sigmaSubtypeEquivOfSubset___closed__1;
x_2 = l_Equiv_symm___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_subtypeUnivEquiv(lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sigmaSubtypeEquivOfSubset___closed__2;
x_2 = l_Equiv_sigmaSubtypeEquivOfSubset___closed__3;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeEquivOfSubset(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_sigmaSubtypeEquivOfSubset___closed__4;
return x_5;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_sigmaSubtypeEquivOfSubset(lean_box(0), lean_box(0), lean_box(0), lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquiv___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_Equiv_sigmaFiberEquiv___rarg(x_1);
x_5 = l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1;
x_6 = l_Equiv_trans___rarg(x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquiv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaSubtypeFiberEquiv___rarg), 3, 0);
return x_3;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3;
x_2 = l_Equiv_symm___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___closed__1;
return x_2;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__1;
x_2 = l_Equiv_sigmaCongrRight___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = l_Equiv_sigmaFiberEquiv___rarg(x_1);
x_6 = l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__2;
x_7 = l_Equiv_trans___rarg(x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sigmaOptionEquivOfSome___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1;
x_2 = l_Equiv_symm___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sigmaOptionEquivOfSome___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Equiv_optionIsSomeEquiv(lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Equiv_sigmaOptionEquivOfSome___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Equiv_sigmaOptionEquivOfSome___closed__2;
x_2 = l_Equiv_sigmaCongrLeft_x27___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Equiv_sigmaOptionEquivOfSome___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Equiv_sigmaOptionEquivOfSome___closed__1;
x_2 = l_Equiv_sigmaOptionEquivOfSome___closed__3;
x_3 = l_Equiv_trans___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_sigmaOptionEquivOfSome(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Equiv_sigmaOptionEquivOfSome___closed__4;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_piEquivSubtypeSigma___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
lean_inc(x_2);
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_piEquivSubtypeSigma___elambda__2___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivSubtypeSigma(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_Equiv_piEquivSubtypeSigma___elambda__2___rarg), 2, 0);
x_4 = lean_alloc_closure((void*)(l_Equiv_piEquivSubtypeSigma___elambda__1___rarg), 2, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePiEquivPi___elambda__1___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePiEquivPi___elambda__2___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePiEquivPi(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePiEquivPi___elambda__2___rarg), 2, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypePiEquivPi___elambda__1___rarg), 2, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivProd___elambda__1___rarg), 1, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivProd___elambda__2___rarg), 1, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivProd(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivProd___elambda__2___rarg), 1, 0);
x_6 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivProd___elambda__1___rarg), 1, 0);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_prodSubtypeFstEquivSubtypeProd(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_prodSubtypeFstEquivSubtypeProd___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__1___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivSigmaSubtype___elambda__1___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__2___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivSigmaSubtype___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeProdEquivSigmaSubtype(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivSigmaSubtype___elambda__2___rarg), 1, 0);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypeProdEquivSigmaSubtype___elambda__1___rarg), 1, 0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_3);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_apply_1(x_6, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_apply_1(x_8, x_3);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piEquivPiSubtypeProd___elambda__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
lean_inc(x_1);
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piEquivPiSubtypeProd___elambda__2___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Equiv_piEquivPiSubtypeProd___elambda__1___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_piEquivPiSubtypeProd___elambda__2___rarg), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piEquivPiSubtypeProd(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piEquivPiSubtypeProd___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
lean_inc(x_5);
x_6 = lean_apply_2(x_1, x_5, x_2);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_4, 1);
lean_inc(x_8);
lean_dec(x_4);
x_9 = lean_apply_1(x_8, x_5);
return x_9;
}
else
{
lean_object* x_10; 
lean_dec(x_5);
x_10 = lean_ctor_get(x_4, 0);
lean_inc(x_10);
lean_dec(x_4);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_piSplitAt___elambda__1___rarg), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
lean_inc(x_3);
x_4 = lean_apply_1(x_3, x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_piSplitAt___elambda__2___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_piSplitAt___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_2);
x_4 = lean_alloc_closure((void*)(l_Equiv_piSplitAt___elambda__2___rarg), 3, 2);
lean_closure_set(x_4, 0, x_2);
lean_closure_set(x_4, 1, lean_box(0));
x_5 = lean_alloc_closure((void*)(l_Equiv_piSplitAt___elambda__1___rarg), 5, 3);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_2);
lean_closure_set(x_5, 2, lean_box(0));
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_piSplitAt(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_piSplitAt___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_funSplitAt___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Equiv_piSplitAt___rarg(x_1, x_2, lean_box(0));
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_funSplitAt(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_funSplitAt___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; uint8_t x_6; 
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = l_instDecidableNot___rarg(x_5);
return x_6;
}
}
static lean_object* _init_l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___elambda__2___rarg), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
x_5 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___elambda__1___rarg), 4, 2);
lean_closure_set(x_5, 0, x_4);
lean_closure_set(x_5, 1, x_3);
x_6 = l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___closed__1;
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_unique___at_Equiv_subtypeEquivCodomain___spec__3___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_symm___elambda__2___rarg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_unique___at_Equiv_subtypeEquivCodomain___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Function_Surjective_unique___at_Equiv_subtypeEquivCodomain___spec__3___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_unique___at_Equiv_subtypeEquivCodomain___spec__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_symm___elambda__2___rarg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_unique___at_Equiv_subtypeEquivCodomain___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_unique___at_Equiv_subtypeEquivCodomain___spec__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivCodomain___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
x_4 = l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg(x_1, x_2, x_3);
x_5 = l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2;
x_6 = l_Equiv_symm___elambda__2___rarg(x_5, x_2);
x_7 = l_Equiv_piUnique___rarg(x_6, lean_box(0));
x_8 = l_Equiv_trans___rarg(x_4, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeEquivCodomain(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypeEquivCodomain___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___lambda__1(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_extendDomain___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_4);
x_5 = l_Equiv_equivCongr___elambda__2___rarg(x_4, x_4, x_1);
x_6 = l_Equiv_prodUnique___rarg___closed__1;
x_7 = l_Equiv_Perm_subtypeCongr___rarg(x_3, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_Perm_extendDomain(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_Perm_extendDomain___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg___boxed), 1, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_alloc_closure((void*)(l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg___boxed), 1, 0);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_alloc_closure((void*)(l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg___boxed), 1, 0);
x_7 = lean_alloc_closure((void*)(l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg___boxed), 1, 0);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_subtypeQuotientEquivQuotientSubtype___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_4);
lean_dec(x_3);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Equiv_subtypeQuotientEquivQuotientSubtype___elambda__2(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_subtypeQuotientEquivQuotientSubtype___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Equiv_subtypeQuotientEquivQuotientSubtype___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_swapCore___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
lean_inc(x_1);
lean_inc(x_2);
lean_inc(x_4);
x_5 = lean_apply_2(x_1, x_4, x_2);
x_6 = lean_unbox(x_5);
lean_dec(x_5);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; 
lean_inc(x_4);
x_7 = lean_apply_2(x_1, x_4, x_3);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
lean_dec(x_2);
return x_4;
}
else
{
lean_dec(x_4);
return x_2;
}
}
else
{
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_Equiv_swapCore(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_swapCore___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_swap___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Equiv_swapCore___rarg(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_swap___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_swap___elambda__1___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_swap___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_closure((void*)(l_Equiv_swap___elambda__1___rarg), 4, 3);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
lean_closure_set(x_4, 2, x_3);
lean_inc(x_4);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_swap(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Equiv_swap___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_setValue___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_2);
x_5 = l_Equiv_symm___elambda__2___rarg(x_2, x_4);
x_6 = l_Equiv_swap___rarg(x_1, x_3, x_5);
x_7 = l_Equiv_trans___rarg(x_6, x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Equiv_setValue(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Equiv_setValue___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_Involutive_toPerm___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
lean_inc(x_1);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_Involutive_toPerm(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Function_Involutive_toPerm___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_1(x_4, x_3);
x_6 = lean_apply_1(x_2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrLeft_x27___elambda__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_Equiv_symm___elambda__2___rarg(x_1, x_3);
x_5 = lean_apply_1(x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrLeft_x27___elambda__2___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Equiv_piCongrLeft_x27___elambda__2___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Equiv_piCongrLeft_x27___elambda__1___rarg), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrLeft_x27___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Equiv_symm___rarg(x_1);
x_3 = l_Equiv_piCongrLeft_x27___rarg(x_2);
x_4 = l_Equiv_symm___rarg(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongrLeft(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongrLeft___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongr___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Equiv_piCongrRight___rarg(x_2);
x_4 = l_Equiv_piCongrLeft___rarg(x_1);
x_5 = l_Equiv_trans___rarg(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongr(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_piCongr___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongr_x27___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = l_Equiv_symm___rarg(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongr_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_Equiv_symm___rarg(x_1);
x_4 = lean_alloc_closure((void*)(l_Equiv_piCongr_x27___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_2);
x_5 = l_Equiv_piCongr___rarg(x_3, x_4);
x_6 = l_Equiv_symm___rarg(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Equiv_piCongr_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Equiv_piCongr_x27___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
lean_inc(x_1);
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_subsingletonProdSelfEquiv___elambda__1___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_subsingletonProdSelfEquiv___elambda__2___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_subsingletonProdSelfEquiv___elambda__2___rarg___boxed), 1, 0);
x_4 = lean_alloc_closure((void*)(l_subsingletonProdSelfEquiv___elambda__1___rarg), 1, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_subsingletonProdSelfEquiv___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_subsingletonProdSelfEquiv___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_equivOfSubsingletonOfSubsingleton___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_equivOfSubsingletonOfSubsingleton(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_equivOfSubsingletonOfSubsingleton___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_uniqueUniqueEquiv___elambda__1___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__2___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_uniqueUniqueEquiv___elambda__2___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_uniqueUniqueEquiv___elambda__2___rarg___boxed), 1, 0);
x_3 = lean_alloc_closure((void*)(l_uniqueUniqueEquiv___elambda__1___rarg___boxed), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__1___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_uniqueUniqueEquiv___elambda__1___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_uniqueUniqueEquiv___elambda__2___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_uniqueUniqueEquiv___elambda__2___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_symm___elambda__2___rarg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_uniqueEquivEquivUnique___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_equivOfUnique___rarg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_uniqueEquivEquivUnique___elambda__2___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_uniqueEquivEquivUnique___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_uniqueEquivEquivUnique___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_uniqueEquivEquivUnique(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_uniqueEquivEquivUnique___rarg), 1, 0);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Bool_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Option_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Prod_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Sigma_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Subtype(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Sum_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init_Algebra_Classes(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Equiv_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Function_Conjugate(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Coe(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Lift(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Convert(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Contrapose(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_GeneralizeProofs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_SimpRw(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_CC(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Logic_Equiv_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Bool_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Option_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Prod_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Sigma_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Subtype(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Sum_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init_Algebra_Classes(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Equiv_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Function_Conjugate(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Coe(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Lift(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Convert(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Contrapose(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_GeneralizeProofs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_SimpRw(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_CC(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Equiv_pprodProd___rarg___closed__1 = _init_l_Equiv_pprodProd___rarg___closed__1();
lean_mark_persistent(l_Equiv_pprodProd___rarg___closed__1);
l_Equiv_pprodEquivProdPLift___closed__1 = _init_l_Equiv_pprodEquivProdPLift___closed__1();
lean_mark_persistent(l_Equiv_pprodEquivProdPLift___closed__1);
l_Equiv_pprodEquivProdPLift___closed__2 = _init_l_Equiv_pprodEquivProdPLift___closed__2();
lean_mark_persistent(l_Equiv_pprodEquivProdPLift___closed__2);
l_Equiv_pprodEquivProdPLift___closed__3 = _init_l_Equiv_pprodEquivProdPLift___closed__3();
lean_mark_persistent(l_Equiv_pprodEquivProdPLift___closed__3);
l_Equiv_punitProd___closed__1 = _init_l_Equiv_punitProd___closed__1();
lean_mark_persistent(l_Equiv_punitProd___closed__1);
l_Equiv_punitProd___closed__2 = _init_l_Equiv_punitProd___closed__2();
lean_mark_persistent(l_Equiv_punitProd___closed__2);
l_Equiv_punitProd___closed__3 = _init_l_Equiv_punitProd___closed__3();
lean_mark_persistent(l_Equiv_punitProd___closed__3);
l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1 = _init_l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1();
lean_mark_persistent(l_Equiv_equivOfUnique___at_Equiv_prodUnique___spec__1___rarg___closed__1);
l_Equiv_prodUnique___rarg___closed__1 = _init_l_Equiv_prodUnique___rarg___closed__1();
lean_mark_persistent(l_Equiv_prodUnique___rarg___closed__1);
l_Equiv_uniqueProd___rarg___closed__1 = _init_l_Equiv_uniqueProd___rarg___closed__1();
lean_mark_persistent(l_Equiv_uniqueProd___rarg___closed__1);
l_Equiv_sigmaUnique___rarg___closed__1 = _init_l_Equiv_sigmaUnique___rarg___closed__1();
lean_mark_persistent(l_Equiv_sigmaUnique___rarg___closed__1);
l_Equiv_prodEmpty___closed__1 = _init_l_Equiv_prodEmpty___closed__1();
lean_mark_persistent(l_Equiv_prodEmpty___closed__1);
l_Equiv_psumEquivSum___closed__1 = _init_l_Equiv_psumEquivSum___closed__1();
lean_mark_persistent(l_Equiv_psumEquivSum___closed__1);
l_Equiv_psumEquivSum___closed__2 = _init_l_Equiv_psumEquivSum___closed__2();
lean_mark_persistent(l_Equiv_psumEquivSum___closed__2);
l_Equiv_psumSum___rarg___closed__1 = _init_l_Equiv_psumSum___rarg___closed__1();
lean_mark_persistent(l_Equiv_psumSum___rarg___closed__1);
l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__1 = _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__1();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__1);
l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__2 = _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__2();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___elambda__1___closed__2);
l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__1 = _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__1();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__1);
l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2 = _init_l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___elambda__2___closed__2);
l_Equiv_boolEquivPUnitSumPUnit___closed__1 = _init_l_Equiv_boolEquivPUnitSumPUnit___closed__1();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___closed__1);
l_Equiv_boolEquivPUnitSumPUnit___closed__2 = _init_l_Equiv_boolEquivPUnitSumPUnit___closed__2();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___closed__2);
l_Equiv_boolEquivPUnitSumPUnit___closed__3 = _init_l_Equiv_boolEquivPUnitSumPUnit___closed__3();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit___closed__3);
l_Equiv_boolEquivPUnitSumPUnit = _init_l_Equiv_boolEquivPUnitSumPUnit();
lean_mark_persistent(l_Equiv_boolEquivPUnitSumPUnit);
l_Equiv_sumComm___elambda__1___rarg___closed__1 = _init_l_Equiv_sumComm___elambda__1___rarg___closed__1();
lean_mark_persistent(l_Equiv_sumComm___elambda__1___rarg___closed__1);
l_Equiv_sumComm___elambda__1___rarg___closed__2 = _init_l_Equiv_sumComm___elambda__1___rarg___closed__2();
lean_mark_persistent(l_Equiv_sumComm___elambda__1___rarg___closed__2);
l_Equiv_sumAssoc___closed__1 = _init_l_Equiv_sumAssoc___closed__1();
lean_mark_persistent(l_Equiv_sumAssoc___closed__1);
l_Equiv_sumAssoc___closed__2 = _init_l_Equiv_sumAssoc___closed__2();
lean_mark_persistent(l_Equiv_sumAssoc___closed__2);
l_Equiv_sumAssoc___closed__3 = _init_l_Equiv_sumAssoc___closed__3();
lean_mark_persistent(l_Equiv_sumAssoc___closed__3);
l_Equiv_sumAssoc___closed__4 = _init_l_Equiv_sumAssoc___closed__4();
lean_mark_persistent(l_Equiv_sumAssoc___closed__4);
l_Equiv_sumAssoc___closed__5 = _init_l_Equiv_sumAssoc___closed__5();
lean_mark_persistent(l_Equiv_sumAssoc___closed__5);
l_Equiv_sumAssoc___closed__6 = _init_l_Equiv_sumAssoc___closed__6();
lean_mark_persistent(l_Equiv_sumAssoc___closed__6);
l_Equiv_sumAssoc___closed__7 = _init_l_Equiv_sumAssoc___closed__7();
lean_mark_persistent(l_Equiv_sumAssoc___closed__7);
l_Equiv_sumAssoc___closed__8 = _init_l_Equiv_sumAssoc___closed__8();
lean_mark_persistent(l_Equiv_sumAssoc___closed__8);
l_Equiv_sumSumSumComm___closed__1 = _init_l_Equiv_sumSumSumComm___closed__1();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__1);
l_Equiv_sumSumSumComm___closed__2 = _init_l_Equiv_sumSumSumComm___closed__2();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__2);
l_Equiv_sumSumSumComm___closed__3 = _init_l_Equiv_sumSumSumComm___closed__3();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__3);
l_Equiv_sumSumSumComm___closed__4 = _init_l_Equiv_sumSumSumComm___closed__4();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__4);
l_Equiv_sumSumSumComm___closed__5 = _init_l_Equiv_sumSumSumComm___closed__5();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__5);
l_Equiv_sumSumSumComm___closed__6 = _init_l_Equiv_sumSumSumComm___closed__6();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__6);
l_Equiv_sumSumSumComm___closed__7 = _init_l_Equiv_sumSumSumComm___closed__7();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__7);
l_Equiv_sumSumSumComm___closed__8 = _init_l_Equiv_sumSumSumComm___closed__8();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__8);
l_Equiv_sumSumSumComm___closed__9 = _init_l_Equiv_sumSumSumComm___closed__9();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__9);
l_Equiv_sumSumSumComm___closed__10 = _init_l_Equiv_sumSumSumComm___closed__10();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__10);
l_Equiv_sumSumSumComm___closed__11 = _init_l_Equiv_sumSumSumComm___closed__11();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__11);
l_Equiv_sumSumSumComm___closed__12 = _init_l_Equiv_sumSumSumComm___closed__12();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__12);
l_Equiv_sumSumSumComm___closed__13 = _init_l_Equiv_sumSumSumComm___closed__13();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__13);
l_Equiv_sumSumSumComm___closed__14 = _init_l_Equiv_sumSumSumComm___closed__14();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__14);
l_Equiv_sumSumSumComm___closed__15 = _init_l_Equiv_sumSumSumComm___closed__15();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__15);
l_Equiv_sumSumSumComm___closed__16 = _init_l_Equiv_sumSumSumComm___closed__16();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__16);
l_Equiv_sumSumSumComm___closed__17 = _init_l_Equiv_sumSumSumComm___closed__17();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__17);
l_Equiv_sumSumSumComm___closed__18 = _init_l_Equiv_sumSumSumComm___closed__18();
lean_mark_persistent(l_Equiv_sumSumSumComm___closed__18);
l_Equiv_sumEmpty___closed__1 = _init_l_Equiv_sumEmpty___closed__1();
lean_mark_persistent(l_Equiv_sumEmpty___closed__1);
l_Equiv_emptySum___closed__1 = _init_l_Equiv_emptySum___closed__1();
lean_mark_persistent(l_Equiv_emptySum___closed__1);
l_Equiv_emptySum___closed__2 = _init_l_Equiv_emptySum___closed__2();
lean_mark_persistent(l_Equiv_emptySum___closed__2);
l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__1 = _init_l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__1();
lean_mark_persistent(l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__1);
l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__2 = _init_l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__2();
lean_mark_persistent(l_Equiv_optionEquivSumPUnit___elambda__1___rarg___closed__2);
l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__1 = _init_l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__1();
lean_mark_persistent(l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__1);
l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__2 = _init_l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__2();
lean_mark_persistent(l_Equiv_sumEquivSigmaBool___elambda__2___rarg___closed__2);
l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1 = _init_l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1();
lean_mark_persistent(l_Equiv_sigmaEquivOptionOfInhabited___rarg___closed__1);
l_Equiv_prodPiEquivSumPi___closed__1 = _init_l_Equiv_prodPiEquivSumPi___closed__1();
lean_mark_persistent(l_Equiv_prodPiEquivSumPi___closed__1);
l_Equiv_prodPiEquivSumPi___closed__2 = _init_l_Equiv_prodPiEquivSumPi___closed__2();
lean_mark_persistent(l_Equiv_prodPiEquivSumPi___closed__2);
l_Equiv_sumProdDistrib___elambda__1___rarg___closed__1 = _init_l_Equiv_sumProdDistrib___elambda__1___rarg___closed__1();
lean_mark_persistent(l_Equiv_sumProdDistrib___elambda__1___rarg___closed__1);
l_Equiv_sumProdDistrib___elambda__1___rarg___closed__2 = _init_l_Equiv_sumProdDistrib___elambda__1___rarg___closed__2();
lean_mark_persistent(l_Equiv_sumProdDistrib___elambda__1___rarg___closed__2);
l_Equiv_prodSumDistrib___closed__1 = _init_l_Equiv_prodSumDistrib___closed__1();
lean_mark_persistent(l_Equiv_prodSumDistrib___closed__1);
l_Equiv_prodSumDistrib___closed__2 = _init_l_Equiv_prodSumDistrib___closed__2();
lean_mark_persistent(l_Equiv_prodSumDistrib___closed__2);
l_Equiv_prodSumDistrib___closed__3 = _init_l_Equiv_prodSumDistrib___closed__3();
lean_mark_persistent(l_Equiv_prodSumDistrib___closed__3);
l_Equiv_prodSumDistrib___closed__4 = _init_l_Equiv_prodSumDistrib___closed__4();
lean_mark_persistent(l_Equiv_prodSumDistrib___closed__4);
l_Equiv_sigmaSumDistrib___closed__1 = _init_l_Equiv_sigmaSumDistrib___closed__1();
lean_mark_persistent(l_Equiv_sigmaSumDistrib___closed__1);
l_Equiv_sigmaSumDistrib___closed__2 = _init_l_Equiv_sigmaSumDistrib___closed__2();
lean_mark_persistent(l_Equiv_sigmaSumDistrib___closed__2);
l_Equiv_sigmaSumDistrib___closed__3 = _init_l_Equiv_sigmaSumDistrib___closed__3();
lean_mark_persistent(l_Equiv_sigmaSumDistrib___closed__3);
l_Equiv_sigmaSumDistrib___closed__4 = _init_l_Equiv_sigmaSumDistrib___closed__4();
lean_mark_persistent(l_Equiv_sigmaSumDistrib___closed__4);
l_Equiv_sigmaNatSucc___closed__1 = _init_l_Equiv_sigmaNatSucc___closed__1();
lean_mark_persistent(l_Equiv_sigmaNatSucc___closed__1);
l_Equiv_sigmaNatSucc___closed__2 = _init_l_Equiv_sigmaNatSucc___closed__2();
lean_mark_persistent(l_Equiv_sigmaNatSucc___closed__2);
l_Equiv_sigmaNatSucc___closed__3 = _init_l_Equiv_sigmaNatSucc___closed__3();
lean_mark_persistent(l_Equiv_sigmaNatSucc___closed__3);
l_Equiv_sigmaNatSucc___closed__4 = _init_l_Equiv_sigmaNatSucc___closed__4();
lean_mark_persistent(l_Equiv_sigmaNatSucc___closed__4);
l_Equiv_boolProdEquivSum___closed__1 = _init_l_Equiv_boolProdEquivSum___closed__1();
lean_mark_persistent(l_Equiv_boolProdEquivSum___closed__1);
l_Equiv_boolProdEquivSum___closed__2 = _init_l_Equiv_boolProdEquivSum___closed__2();
lean_mark_persistent(l_Equiv_boolProdEquivSum___closed__2);
l_Equiv_natEquivNatSumPUnit___elambda__1___closed__1 = _init_l_Equiv_natEquivNatSumPUnit___elambda__1___closed__1();
lean_mark_persistent(l_Equiv_natEquivNatSumPUnit___elambda__1___closed__1);
l_Equiv_natEquivNatSumPUnit___closed__1 = _init_l_Equiv_natEquivNatSumPUnit___closed__1();
lean_mark_persistent(l_Equiv_natEquivNatSumPUnit___closed__1);
l_Equiv_natEquivNatSumPUnit___closed__2 = _init_l_Equiv_natEquivNatSumPUnit___closed__2();
lean_mark_persistent(l_Equiv_natEquivNatSumPUnit___closed__2);
l_Equiv_natEquivNatSumPUnit___closed__3 = _init_l_Equiv_natEquivNatSumPUnit___closed__3();
lean_mark_persistent(l_Equiv_natEquivNatSumPUnit___closed__3);
l_Equiv_natEquivNatSumPUnit = _init_l_Equiv_natEquivNatSumPUnit();
lean_mark_persistent(l_Equiv_natEquivNatSumPUnit);
l_Equiv_natSumPUnitEquivNat___closed__1 = _init_l_Equiv_natSumPUnitEquivNat___closed__1();
lean_mark_persistent(l_Equiv_natSumPUnitEquivNat___closed__1);
l_Equiv_natSumPUnitEquivNat = _init_l_Equiv_natSumPUnitEquivNat();
lean_mark_persistent(l_Equiv_natSumPUnitEquivNat);
l_Equiv_intEquivNatSumNat___elambda__1___closed__1 = _init_l_Equiv_intEquivNatSumNat___elambda__1___closed__1();
lean_mark_persistent(l_Equiv_intEquivNatSumNat___elambda__1___closed__1);
l_Equiv_intEquivNatSumNat___elambda__1___closed__2 = _init_l_Equiv_intEquivNatSumNat___elambda__1___closed__2();
lean_mark_persistent(l_Equiv_intEquivNatSumNat___elambda__1___closed__2);
l_Equiv_intEquivNatSumNat___elambda__2___closed__1 = _init_l_Equiv_intEquivNatSumNat___elambda__2___closed__1();
lean_mark_persistent(l_Equiv_intEquivNatSumNat___elambda__2___closed__1);
l_Equiv_intEquivNatSumNat___closed__1 = _init_l_Equiv_intEquivNatSumNat___closed__1();
lean_mark_persistent(l_Equiv_intEquivNatSumNat___closed__1);
l_Equiv_intEquivNatSumNat___closed__2 = _init_l_Equiv_intEquivNatSumNat___closed__2();
lean_mark_persistent(l_Equiv_intEquivNatSumNat___closed__2);
l_Equiv_intEquivNatSumNat___closed__3 = _init_l_Equiv_intEquivNatSumNat___closed__3();
lean_mark_persistent(l_Equiv_intEquivNatSumNat___closed__3);
l_Equiv_intEquivNatSumNat = _init_l_Equiv_intEquivNatSumNat();
lean_mark_persistent(l_Equiv_intEquivNatSumNat);
l_Equiv_subtypeEquivRight___closed__1 = _init_l_Equiv_subtypeEquivRight___closed__1();
lean_mark_persistent(l_Equiv_subtypeEquivRight___closed__1);
l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__1 = _init_l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__1();
lean_mark_persistent(l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__1);
l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2 = _init_l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2();
lean_mark_persistent(l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__2);
l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3 = _init_l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3();
lean_mark_persistent(l_Equiv_subtypeSubtypeEquivSubtypeInter___closed__3);
l_Equiv_subtypeSubtypeEquivSubtype___closed__1 = _init_l_Equiv_subtypeSubtypeEquivSubtype___closed__1();
lean_mark_persistent(l_Equiv_subtypeSubtypeEquivSubtype___closed__1);
l_Equiv_subtypeSubtypeEquivSubtype___closed__2 = _init_l_Equiv_subtypeSubtypeEquivSubtype___closed__2();
lean_mark_persistent(l_Equiv_subtypeSubtypeEquivSubtype___closed__2);
l_Equiv_sigmaSubtypeEquivOfSubset___closed__1 = _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__1();
lean_mark_persistent(l_Equiv_sigmaSubtypeEquivOfSubset___closed__1);
l_Equiv_sigmaSubtypeEquivOfSubset___closed__2 = _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__2();
lean_mark_persistent(l_Equiv_sigmaSubtypeEquivOfSubset___closed__2);
l_Equiv_sigmaSubtypeEquivOfSubset___closed__3 = _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__3();
lean_mark_persistent(l_Equiv_sigmaSubtypeEquivOfSubset___closed__3);
l_Equiv_sigmaSubtypeEquivOfSubset___closed__4 = _init_l_Equiv_sigmaSubtypeEquivOfSubset___closed__4();
lean_mark_persistent(l_Equiv_sigmaSubtypeEquivOfSubset___closed__4);
l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1 = _init_l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1();
lean_mark_persistent(l_Equiv_sigmaSubtypeFiberEquiv___rarg___closed__1);
l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___closed__1 = _init_l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___closed__1();
lean_mark_persistent(l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___lambda__1___closed__1);
l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__1 = _init_l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__1();
lean_mark_persistent(l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__1);
l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__2 = _init_l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__2();
lean_mark_persistent(l_Equiv_sigmaSubtypeFiberEquivSubtype___rarg___closed__2);
l_Equiv_sigmaOptionEquivOfSome___closed__1 = _init_l_Equiv_sigmaOptionEquivOfSome___closed__1();
lean_mark_persistent(l_Equiv_sigmaOptionEquivOfSome___closed__1);
l_Equiv_sigmaOptionEquivOfSome___closed__2 = _init_l_Equiv_sigmaOptionEquivOfSome___closed__2();
lean_mark_persistent(l_Equiv_sigmaOptionEquivOfSome___closed__2);
l_Equiv_sigmaOptionEquivOfSome___closed__3 = _init_l_Equiv_sigmaOptionEquivOfSome___closed__3();
lean_mark_persistent(l_Equiv_sigmaOptionEquivOfSome___closed__3);
l_Equiv_sigmaOptionEquivOfSome___closed__4 = _init_l_Equiv_sigmaOptionEquivOfSome___closed__4();
lean_mark_persistent(l_Equiv_sigmaOptionEquivOfSome___closed__4);
l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___closed__1 = _init_l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___closed__1();
lean_mark_persistent(l_Equiv_subtypePreimage___at_Equiv_subtypeEquivCodomain___spec__1___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
