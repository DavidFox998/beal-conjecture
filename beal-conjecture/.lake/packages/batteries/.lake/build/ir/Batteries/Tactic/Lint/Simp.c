// Lean compiler output
// Module: Batteries.Tactic.Lint.Simp
// Imports: Init Lean.Meta.Tactic.Simp.Main Batteries.Tactic.Lint.Basic Batteries.Tactic.OpenPrivate Batteries.Util.LibraryNote
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
lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkSorry(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___closed__1;
lean_object* l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
size_t lean_usize_shift_right(size_t, size_t);
lean_object* l_Lean_Meta_dsimp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead;
static lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__5;
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__3;
LEAN_EXPORT lean_object* l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_ConstantInfo_type(lean_object*);
lean_object* lean_whnf(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_le(size_t, size_t);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__4;
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2(lean_object*);
lean_object* l_Lean_Meta_isExprDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_joinSep(lean_object*, lean_object*);
size_t lean_uint64_to_usize(uint64_t);
uint8_t l_Lean_Expr_isAppOfArity(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__2;
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__6;
static lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__4;
lean_object* l_Array_qsort_sort___at_Lean_Meta_Simp_UsedSimps_toArray___spec__3(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__6;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__5;
static lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__2;
LEAN_EXPORT lean_object* l___private_Init_Data_Array_BinSearch_0__Array_binInsertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__13___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofList(lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__3;
size_t lean_usize_mul(size_t, size_t);
lean_object* l_Lean_Meta_DiscrTree_instInhabited(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm;
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__9(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1;
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__8;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* lean_array_fset(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_fvarId_x21(lean_object*);
static lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__3;
static size_t l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_forallTelescopeReducing___at_Lean_Meta_getParamNames___spec__2___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__8;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__3(uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__9;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
uint8_t lean_string_dec_eq(lean_object*, lean_object*);
lean_object* l_Lean_Exception_toMessageData(lean_object*);
lean_object* l_Lean_Meta_Simp_Context_mkDefault___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5;
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__9;
static lean_object* l_Batteries_Tactic_Lint_formatLemmas___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static size_t l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_appArg_x21(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_decorateError___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8(size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(lean_object*, size_t, size_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1;
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_formatLemmas(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Init_Data_Array_BinSearch_0__Array_binInsertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__13(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_withSimpTheoremInfos(lean_object*);
uint8_t lean_expr_eqv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_toArray___at_Lean_Meta_Simp_UsedSimps_toArray___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1(lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8;
lean_object* l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(lean_object*, uint8_t, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__1;
static lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__2;
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14;
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__7;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Meta_simpDtConfig;
lean_object* l_List_mapTR_loop___at_Lean_MessageData_instCoeListExpr___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_Meta_simp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_isSimpTheorem___closed__1;
static lean_object* l_Batteries_Tactic_Lint_decorateError___rarg___closed__1;
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__2;
static lean_object* l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
lean_object* l_outOfBounds___rarg(lean_object*);
lean_object* l_Lean_Meta_DiscrTree_empty(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__3;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
lean_object* l_Lean_Exception_getRef(lean_object*);
lean_object* l_Lean_PersistentHashMap_foldlMAux___at_Lean_MetavarContext_getExprAssignmentDomain___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__11;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___boxed(lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Meta_DiscrTree_Key_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_constName_x3f(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_BinderInfo_isInstImplicit(uint8_t);
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__2;
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__6(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__2(lean_object*, size_t, size_t, lean_object*);
lean_object* lean_expr_consume_type_annotations(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__4;
static lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4(lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1(lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
extern lean_object* l_Lean_Meta_simpExtension;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Init_Util_0__mkPanicMessageWithDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__3;
static lean_object* l_Batteries_Tactic_Lint_formatLemmas___closed__2;
lean_object* l_Lean_Meta_isRflTheorem(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_anyM___at_Batteries_Tactic_Lint_isConditionalHyps___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__3;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_appFn_x21(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__4;
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_decorateError(lean_object*);
lean_object* l_Lean_Meta_DiscrTree_mkPath(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_usize_to_nat(size_t);
static lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__4;
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
uint8_t l_Lean_Environment_contains(lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofExpr(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_withSimpTheoremInfos___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_SimpExtension_getTheorems(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements_trieElements___rarg(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___closed__1;
static lean_object* l_Batteries_Tactic_Lint_decorateError___rarg___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__6;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__6;
extern lean_object* l_Lean_Meta_DiscrTree_instInhabitedKey;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__1;
LEAN_EXPORT lean_object* l_List_anyM___at_Batteries_Tactic_Lint_isConditionalHyps___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__8;
lean_object* l_Lean_Meta_getFVarLocalDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__7;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpTheorem___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Lean_IR_IRType_beq___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_mkEmptyEntries(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__16;
static lean_object* l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14(lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_panic_fn(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__1;
lean_object* lean_nat_sub(lean_object*, lean_object*);
lean_object* l_Array_insertAt_x21___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_getAppFn(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAtAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__3;
lean_object* l_Lean_PersistentHashMap_mkCollisionNode___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__13;
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
uint8_t l_Lean_LocalDecl_binderInfo(lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_back___rarg(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__5;
static lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1;
size_t lean_usize_sub(size_t, size_t);
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__3;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpTheorem(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpComm___closed__7;
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements_trieElements___rarg___boxed(lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__1;
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__8;
size_t lean_usize_shift_left(size_t, size_t);
lean_object* l_List_redLength___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___boxed(lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1;
static lean_object* l_Lean_Meta_DiscrTree_elements___rarg___closed__1;
uint8_t l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(lean_object*, lean_object*);
static lean_object* l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14___closed__1;
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__1;
static lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__2;
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__15;
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_preprocess_go(uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__2;
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_isDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2;
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_getCollisionNodeSize___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements_trieElements(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2;
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__2;
uint8_t l_Lean_Exception_isRuntime(lean_object*);
lean_object* l_Lean_Meta_DiscrTree_getMatch___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__7;
uint8_t l_Lean_Expr_isFVar(lean_object*);
lean_object* l_Lean_Meta_mkConstWithFreshMVarLevels(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpVarHead___closed__5;
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
lean_object* lean_array_get(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__3;
uint8_t l_Lean_PersistentHashMap_contains___at_Lean_Meta_Simp_UsedSimps_insert___spec__1(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__6;
uint64_t l_Lean_Meta_DiscrTree_Key_hash(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__5;
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4;
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__2;
size_t lean_usize_land(size_t, size_t);
lean_object* l_Lean_Meta_whnfR(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_formatLemmas___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_toArrayAux___rarg(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___closed__1;
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAtAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__10;
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_anyM___at_Batteries_Tactic_Lint_isConditionalHyps___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_8 = 0;
x_9 = lean_box(x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_7);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_dec(x_2);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_13 = lean_infer_type(x_11, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_13) == 0)
{
uint8_t x_14; 
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
x_17 = lean_expr_consume_type_annotations(x_15);
x_18 = l_Lean_Expr_fvarId_x21(x_1);
x_19 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_18, x_17);
lean_dec(x_17);
lean_dec(x_18);
if (x_19 == 0)
{
lean_free_object(x_13);
x_2 = x_12;
x_7 = x_16;
goto _start;
}
else
{
uint8_t x_21; lean_object* x_22; 
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_21 = 1;
x_22 = lean_box(x_21);
lean_ctor_set(x_13, 0, x_22);
return x_13;
}
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_23 = lean_ctor_get(x_13, 0);
x_24 = lean_ctor_get(x_13, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_13);
x_25 = lean_expr_consume_type_annotations(x_23);
x_26 = l_Lean_Expr_fvarId_x21(x_1);
x_27 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_26, x_25);
lean_dec(x_25);
lean_dec(x_26);
if (x_27 == 0)
{
x_2 = x_12;
x_7 = x_24;
goto _start;
}
else
{
uint8_t x_29; lean_object* x_30; lean_object* x_31; 
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_29 = 1;
x_30 = lean_box(x_29);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_24);
return x_31;
}
}
}
else
{
uint8_t x_32; 
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_32 = !lean_is_exclusive(x_13);
if (x_32 == 0)
{
return x_13;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_13, 0);
x_34 = lean_ctor_get(x_13, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_13);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_isConditionalHyps(x_1, x_2, x_4, x_5, x_6, x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_8 = 0;
x_9 = lean_box(x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_7);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_dec(x_2);
lean_inc(x_3);
x_13 = l_Lean_Meta_getFVarLocalDecl(x_11, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_12);
x_16 = l_List_anyM___at_Batteries_Tactic_Lint_isConditionalHyps___spec__1(x_11, x_12, x_3, x_4, x_5, x_6, x_15);
if (lean_obj_tag(x_16) == 0)
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; uint8_t x_21; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_16, 1);
x_20 = l_Lean_LocalDecl_binderInfo(x_14);
lean_dec(x_14);
x_21 = l_Lean_BinderInfo_isInstImplicit(x_20);
if (x_21 == 0)
{
uint8_t x_22; 
x_22 = lean_unbox(x_18);
lean_dec(x_18);
if (x_22 == 0)
{
lean_object* x_23; uint8_t x_24; 
x_23 = l_Lean_Expr_fvarId_x21(x_11);
lean_dec(x_11);
x_24 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_23, x_1);
lean_dec(x_23);
if (x_24 == 0)
{
uint8_t x_25; lean_object* x_26; 
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_25 = 1;
x_26 = lean_box(x_25);
lean_ctor_set(x_16, 0, x_26);
return x_16;
}
else
{
lean_free_object(x_16);
x_2 = x_12;
x_7 = x_19;
goto _start;
}
}
else
{
lean_free_object(x_16);
lean_dec(x_11);
x_2 = x_12;
x_7 = x_19;
goto _start;
}
}
else
{
lean_free_object(x_16);
lean_dec(x_18);
lean_dec(x_11);
x_2 = x_12;
x_7 = x_19;
goto _start;
}
}
else
{
lean_object* x_30; lean_object* x_31; uint8_t x_32; uint8_t x_33; 
x_30 = lean_ctor_get(x_16, 0);
x_31 = lean_ctor_get(x_16, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_16);
x_32 = l_Lean_LocalDecl_binderInfo(x_14);
lean_dec(x_14);
x_33 = l_Lean_BinderInfo_isInstImplicit(x_32);
if (x_33 == 0)
{
uint8_t x_34; 
x_34 = lean_unbox(x_30);
lean_dec(x_30);
if (x_34 == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = l_Lean_Expr_fvarId_x21(x_11);
lean_dec(x_11);
x_36 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_35, x_1);
lean_dec(x_35);
if (x_36 == 0)
{
uint8_t x_37; lean_object* x_38; lean_object* x_39; 
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_37 = 1;
x_38 = lean_box(x_37);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_31);
return x_39;
}
else
{
x_2 = x_12;
x_7 = x_31;
goto _start;
}
}
else
{
lean_dec(x_11);
x_2 = x_12;
x_7 = x_31;
goto _start;
}
}
else
{
lean_dec(x_30);
lean_dec(x_11);
x_2 = x_12;
x_7 = x_31;
goto _start;
}
}
}
else
{
uint8_t x_43; 
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_43 = !lean_is_exclusive(x_16);
if (x_43 == 0)
{
return x_16;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_16, 0);
x_45 = lean_ctor_get(x_16, 1);
lean_inc(x_45);
lean_inc(x_44);
lean_dec(x_16);
x_46 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_46, 0, x_44);
lean_ctor_set(x_46, 1, x_45);
return x_46;
}
}
}
else
{
uint8_t x_47; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_47 = !lean_is_exclusive(x_13);
if (x_47 == 0)
{
return x_13;
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_13, 0);
x_49 = lean_ctor_get(x_13, 1);
lean_inc(x_49);
lean_inc(x_48);
lean_dec(x_13);
x_50 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_50, 0, x_48);
lean_ctor_set(x_50, 1, x_49);
return x_50;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_anyM___at_Batteries_Tactic_Lint_isConditionalHyps___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_List_anyM___at_Batteries_Tactic_Lint_isConditionalHyps___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_isConditionalHyps___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isConditionalHyps___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_isConditionalHyps(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_ctor_get(x_4, 5);
x_8 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_8, 0);
lean_inc(x_7);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_7);
lean_ctor_set(x_11, 1, x_10);
lean_ctor_set_tag(x_8, 1);
lean_ctor_set(x_8, 0, x_11);
return x_8;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_ctor_get(x_8, 0);
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_8);
lean_inc(x_7);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_7);
lean_ctor_set(x_14, 1, x_12);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg___boxed), 6, 0);
return x_2;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Eq", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not an equality ", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2;
x_10 = lean_unsigned_to_nat(3u);
x_11 = l_Lean_Expr_isAppOfArity(x_3, x_9, x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_2);
lean_dec(x_1);
x_12 = l_Lean_MessageData_ofExpr(x_3);
x_13 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__4;
x_14 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_12);
x_15 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_16 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg(x_16, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_17;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_18 = l_Lean_Expr_appFn_x21(x_3);
x_19 = l_Lean_Expr_appArg_x21(x_18);
lean_dec(x_18);
x_20 = l_Lean_Expr_appArg_x21(x_3);
lean_dec(x_3);
lean_inc(x_2);
x_21 = lean_array_to_list(lean_box(0), x_2);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_22 = l_Batteries_Tactic_Lint_isConditionalHyps(x_19, x_21, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; lean_object* x_27; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_25, 0, x_2);
lean_ctor_set(x_25, 1, x_19);
lean_ctor_set(x_25, 2, x_20);
x_26 = lean_unbox(x_23);
lean_dec(x_23);
lean_ctor_set_uint8(x_25, sizeof(void*)*3, x_26);
x_27 = lean_apply_6(x_1, x_25, x_4, x_5, x_6, x_7, x_24);
return x_27;
}
else
{
uint8_t x_28; 
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_28 = !lean_is_exclusive(x_22);
if (x_28 == 0)
{
return x_22;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_22, 0);
x_30 = lean_ctor_get(x_22, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_22);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = lean_usize_dec_lt(x_3, x_2);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_4);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; lean_object* x_18; 
x_12 = lean_array_uget(x_4, x_3);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_array_uset(x_4, x_3, x_13);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
lean_inc(x_1);
x_16 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1), 8, 1);
lean_closure_set(x_16, 0, x_1);
x_17 = 0;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_18 = l_Lean_Meta_forallTelescopeReducing___at_Lean_Meta_getParamNames___spec__2___rarg(x_15, x_16, x_17, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; size_t x_21; size_t x_22; lean_object* x_23; 
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = 1;
x_22 = lean_usize_add(x_3, x_21);
x_23 = lean_array_uset(x_14, x_3, x_19);
x_3 = x_22;
x_4 = x_23;
x_9 = x_20;
goto _start;
}
else
{
uint8_t x_25; 
lean_dec(x_14);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_25 = !lean_is_exclusive(x_18);
if (x_25 == 0)
{
return x_18;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_18, 0);
x_27 = lean_ctor_get(x_18, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_18);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___boxed), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_withSimpTheoremInfos___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
uint8_t x_11; uint8_t x_12; lean_object* x_13; 
x_11 = 2;
lean_ctor_set_uint8(x_9, 9, x_11);
x_12 = 1;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_13 = l_Lean_Meta_mkSorry(x_1, x_12, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = 0;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_17 = l___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_preprocess_go(x_16, x_12, x_14, x_1, x_3, x_4, x_5, x_6, x_15);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; size_t x_23; size_t x_24; lean_object* x_25; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = l_List_redLength___rarg(x_18);
x_21 = lean_mk_empty_array_with_capacity(x_20);
lean_dec(x_20);
x_22 = l_List_toArrayAux___rarg(x_18, x_21);
x_23 = lean_array_size(x_22);
x_24 = 0;
x_25 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg(x_2, x_23, x_24, x_22, x_3, x_4, x_5, x_6, x_19);
if (lean_obj_tag(x_25) == 0)
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
return x_25;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_25, 0);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_25);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
else
{
uint8_t x_30; 
x_30 = !lean_is_exclusive(x_25);
if (x_30 == 0)
{
return x_25;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_25, 0);
x_32 = lean_ctor_get(x_25, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_25);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_3);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_34 = !lean_is_exclusive(x_17);
if (x_34 == 0)
{
return x_17;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_17, 0);
x_36 = lean_ctor_get(x_17, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_17);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
else
{
uint8_t x_38; 
lean_dec(x_3);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_38 = !lean_is_exclusive(x_13);
if (x_38 == 0)
{
return x_13;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_13, 0);
x_40 = lean_ctor_get(x_13, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_13);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
else
{
uint8_t x_42; uint8_t x_43; uint8_t x_44; uint8_t x_45; uint8_t x_46; uint8_t x_47; uint8_t x_48; uint8_t x_49; uint8_t x_50; uint8_t x_51; uint8_t x_52; uint8_t x_53; uint8_t x_54; lean_object* x_55; uint8_t x_56; lean_object* x_57; 
x_42 = lean_ctor_get_uint8(x_9, 0);
x_43 = lean_ctor_get_uint8(x_9, 1);
x_44 = lean_ctor_get_uint8(x_9, 2);
x_45 = lean_ctor_get_uint8(x_9, 3);
x_46 = lean_ctor_get_uint8(x_9, 4);
x_47 = lean_ctor_get_uint8(x_9, 5);
x_48 = lean_ctor_get_uint8(x_9, 6);
x_49 = lean_ctor_get_uint8(x_9, 7);
x_50 = lean_ctor_get_uint8(x_9, 8);
x_51 = lean_ctor_get_uint8(x_9, 10);
x_52 = lean_ctor_get_uint8(x_9, 11);
x_53 = lean_ctor_get_uint8(x_9, 12);
lean_dec(x_9);
x_54 = 2;
x_55 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_55, 0, x_42);
lean_ctor_set_uint8(x_55, 1, x_43);
lean_ctor_set_uint8(x_55, 2, x_44);
lean_ctor_set_uint8(x_55, 3, x_45);
lean_ctor_set_uint8(x_55, 4, x_46);
lean_ctor_set_uint8(x_55, 5, x_47);
lean_ctor_set_uint8(x_55, 6, x_48);
lean_ctor_set_uint8(x_55, 7, x_49);
lean_ctor_set_uint8(x_55, 8, x_50);
lean_ctor_set_uint8(x_55, 9, x_54);
lean_ctor_set_uint8(x_55, 10, x_51);
lean_ctor_set_uint8(x_55, 11, x_52);
lean_ctor_set_uint8(x_55, 12, x_53);
lean_ctor_set(x_3, 0, x_55);
x_56 = 1;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_57 = l_Lean_Meta_mkSorry(x_1, x_56, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_57) == 0)
{
lean_object* x_58; lean_object* x_59; uint8_t x_60; lean_object* x_61; 
x_58 = lean_ctor_get(x_57, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 1);
lean_inc(x_59);
lean_dec(x_57);
x_60 = 0;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_61 = l___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_preprocess_go(x_60, x_56, x_58, x_1, x_3, x_4, x_5, x_6, x_59);
if (lean_obj_tag(x_61) == 0)
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; size_t x_67; size_t x_68; lean_object* x_69; 
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = l_List_redLength___rarg(x_62);
x_65 = lean_mk_empty_array_with_capacity(x_64);
lean_dec(x_64);
x_66 = l_List_toArrayAux___rarg(x_62, x_65);
x_67 = lean_array_size(x_66);
x_68 = 0;
x_69 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg(x_2, x_67, x_68, x_66, x_3, x_4, x_5, x_6, x_63);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_70 = lean_ctor_get(x_69, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_69, 1);
lean_inc(x_71);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_72 = x_69;
} else {
 lean_dec_ref(x_69);
 x_72 = lean_box(0);
}
if (lean_is_scalar(x_72)) {
 x_73 = lean_alloc_ctor(0, 2, 0);
} else {
 x_73 = x_72;
}
lean_ctor_set(x_73, 0, x_70);
lean_ctor_set(x_73, 1, x_71);
return x_73;
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_74 = lean_ctor_get(x_69, 0);
lean_inc(x_74);
x_75 = lean_ctor_get(x_69, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_76 = x_69;
} else {
 lean_dec_ref(x_69);
 x_76 = lean_box(0);
}
if (lean_is_scalar(x_76)) {
 x_77 = lean_alloc_ctor(1, 2, 0);
} else {
 x_77 = x_76;
}
lean_ctor_set(x_77, 0, x_74);
lean_ctor_set(x_77, 1, x_75);
return x_77;
}
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
lean_dec(x_3);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_78 = lean_ctor_get(x_61, 0);
lean_inc(x_78);
x_79 = lean_ctor_get(x_61, 1);
lean_inc(x_79);
if (lean_is_exclusive(x_61)) {
 lean_ctor_release(x_61, 0);
 lean_ctor_release(x_61, 1);
 x_80 = x_61;
} else {
 lean_dec_ref(x_61);
 x_80 = lean_box(0);
}
if (lean_is_scalar(x_80)) {
 x_81 = lean_alloc_ctor(1, 2, 0);
} else {
 x_81 = x_80;
}
lean_ctor_set(x_81, 0, x_78);
lean_ctor_set(x_81, 1, x_79);
return x_81;
}
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; 
lean_dec(x_3);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_82 = lean_ctor_get(x_57, 0);
lean_inc(x_82);
x_83 = lean_ctor_get(x_57, 1);
lean_inc(x_83);
if (lean_is_exclusive(x_57)) {
 lean_ctor_release(x_57, 0);
 lean_ctor_release(x_57, 1);
 x_84 = x_57;
} else {
 lean_dec_ref(x_57);
 x_84 = lean_box(0);
}
if (lean_is_scalar(x_84)) {
 x_85 = lean_alloc_ctor(1, 2, 0);
} else {
 x_85 = x_84;
}
lean_ctor_set(x_85, 0, x_82);
lean_ctor_set(x_85, 1, x_83);
return x_85;
}
}
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; uint8_t x_92; uint8_t x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; uint8_t x_97; uint8_t x_98; uint8_t x_99; uint8_t x_100; uint8_t x_101; uint8_t x_102; uint8_t x_103; uint8_t x_104; uint8_t x_105; lean_object* x_106; uint8_t x_107; lean_object* x_108; lean_object* x_109; uint8_t x_110; lean_object* x_111; 
x_86 = lean_ctor_get(x_3, 0);
x_87 = lean_ctor_get(x_3, 1);
x_88 = lean_ctor_get(x_3, 2);
x_89 = lean_ctor_get(x_3, 3);
x_90 = lean_ctor_get(x_3, 4);
x_91 = lean_ctor_get(x_3, 5);
x_92 = lean_ctor_get_uint8(x_3, sizeof(void*)*6);
x_93 = lean_ctor_get_uint8(x_3, sizeof(void*)*6 + 1);
lean_inc(x_91);
lean_inc(x_90);
lean_inc(x_89);
lean_inc(x_88);
lean_inc(x_87);
lean_inc(x_86);
lean_dec(x_3);
x_94 = lean_ctor_get_uint8(x_86, 0);
x_95 = lean_ctor_get_uint8(x_86, 1);
x_96 = lean_ctor_get_uint8(x_86, 2);
x_97 = lean_ctor_get_uint8(x_86, 3);
x_98 = lean_ctor_get_uint8(x_86, 4);
x_99 = lean_ctor_get_uint8(x_86, 5);
x_100 = lean_ctor_get_uint8(x_86, 6);
x_101 = lean_ctor_get_uint8(x_86, 7);
x_102 = lean_ctor_get_uint8(x_86, 8);
x_103 = lean_ctor_get_uint8(x_86, 10);
x_104 = lean_ctor_get_uint8(x_86, 11);
x_105 = lean_ctor_get_uint8(x_86, 12);
if (lean_is_exclusive(x_86)) {
 x_106 = x_86;
} else {
 lean_dec_ref(x_86);
 x_106 = lean_box(0);
}
x_107 = 2;
if (lean_is_scalar(x_106)) {
 x_108 = lean_alloc_ctor(0, 0, 13);
} else {
 x_108 = x_106;
}
lean_ctor_set_uint8(x_108, 0, x_94);
lean_ctor_set_uint8(x_108, 1, x_95);
lean_ctor_set_uint8(x_108, 2, x_96);
lean_ctor_set_uint8(x_108, 3, x_97);
lean_ctor_set_uint8(x_108, 4, x_98);
lean_ctor_set_uint8(x_108, 5, x_99);
lean_ctor_set_uint8(x_108, 6, x_100);
lean_ctor_set_uint8(x_108, 7, x_101);
lean_ctor_set_uint8(x_108, 8, x_102);
lean_ctor_set_uint8(x_108, 9, x_107);
lean_ctor_set_uint8(x_108, 10, x_103);
lean_ctor_set_uint8(x_108, 11, x_104);
lean_ctor_set_uint8(x_108, 12, x_105);
x_109 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_109, 0, x_108);
lean_ctor_set(x_109, 1, x_87);
lean_ctor_set(x_109, 2, x_88);
lean_ctor_set(x_109, 3, x_89);
lean_ctor_set(x_109, 4, x_90);
lean_ctor_set(x_109, 5, x_91);
lean_ctor_set_uint8(x_109, sizeof(void*)*6, x_92);
lean_ctor_set_uint8(x_109, sizeof(void*)*6 + 1, x_93);
x_110 = 1;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_109);
lean_inc(x_1);
x_111 = l_Lean_Meta_mkSorry(x_1, x_110, x_109, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_111) == 0)
{
lean_object* x_112; lean_object* x_113; uint8_t x_114; lean_object* x_115; 
x_112 = lean_ctor_get(x_111, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_111, 1);
lean_inc(x_113);
lean_dec(x_111);
x_114 = 0;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_109);
x_115 = l___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_preprocess_go(x_114, x_110, x_112, x_1, x_109, x_4, x_5, x_6, x_113);
if (lean_obj_tag(x_115) == 0)
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; size_t x_121; size_t x_122; lean_object* x_123; 
x_116 = lean_ctor_get(x_115, 0);
lean_inc(x_116);
x_117 = lean_ctor_get(x_115, 1);
lean_inc(x_117);
lean_dec(x_115);
x_118 = l_List_redLength___rarg(x_116);
x_119 = lean_mk_empty_array_with_capacity(x_118);
lean_dec(x_118);
x_120 = l_List_toArrayAux___rarg(x_116, x_119);
x_121 = lean_array_size(x_120);
x_122 = 0;
x_123 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg(x_2, x_121, x_122, x_120, x_109, x_4, x_5, x_6, x_117);
if (lean_obj_tag(x_123) == 0)
{
lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; 
x_124 = lean_ctor_get(x_123, 0);
lean_inc(x_124);
x_125 = lean_ctor_get(x_123, 1);
lean_inc(x_125);
if (lean_is_exclusive(x_123)) {
 lean_ctor_release(x_123, 0);
 lean_ctor_release(x_123, 1);
 x_126 = x_123;
} else {
 lean_dec_ref(x_123);
 x_126 = lean_box(0);
}
if (lean_is_scalar(x_126)) {
 x_127 = lean_alloc_ctor(0, 2, 0);
} else {
 x_127 = x_126;
}
lean_ctor_set(x_127, 0, x_124);
lean_ctor_set(x_127, 1, x_125);
return x_127;
}
else
{
lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
x_128 = lean_ctor_get(x_123, 0);
lean_inc(x_128);
x_129 = lean_ctor_get(x_123, 1);
lean_inc(x_129);
if (lean_is_exclusive(x_123)) {
 lean_ctor_release(x_123, 0);
 lean_ctor_release(x_123, 1);
 x_130 = x_123;
} else {
 lean_dec_ref(x_123);
 x_130 = lean_box(0);
}
if (lean_is_scalar(x_130)) {
 x_131 = lean_alloc_ctor(1, 2, 0);
} else {
 x_131 = x_130;
}
lean_ctor_set(x_131, 0, x_128);
lean_ctor_set(x_131, 1, x_129);
return x_131;
}
}
else
{
lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; 
lean_dec(x_109);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_132 = lean_ctor_get(x_115, 0);
lean_inc(x_132);
x_133 = lean_ctor_get(x_115, 1);
lean_inc(x_133);
if (lean_is_exclusive(x_115)) {
 lean_ctor_release(x_115, 0);
 lean_ctor_release(x_115, 1);
 x_134 = x_115;
} else {
 lean_dec_ref(x_115);
 x_134 = lean_box(0);
}
if (lean_is_scalar(x_134)) {
 x_135 = lean_alloc_ctor(1, 2, 0);
} else {
 x_135 = x_134;
}
lean_ctor_set(x_135, 0, x_132);
lean_ctor_set(x_135, 1, x_133);
return x_135;
}
}
else
{
lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; 
lean_dec(x_109);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_136 = lean_ctor_get(x_111, 0);
lean_inc(x_136);
x_137 = lean_ctor_get(x_111, 1);
lean_inc(x_137);
if (lean_is_exclusive(x_111)) {
 lean_ctor_release(x_111, 0);
 lean_ctor_release(x_111, 1);
 x_138 = x_111;
} else {
 lean_dec_ref(x_111);
 x_138 = lean_box(0);
}
if (lean_is_scalar(x_138)) {
 x_139 = lean_alloc_ctor(1, 2, 0);
} else {
 x_139 = x_138;
}
lean_ctor_set(x_139, 0, x_136);
lean_ctor_set(x_139, 1, x_137);
return x_139;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_withSimpTheoremInfos(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_withSimpTheoremInfos___rarg), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg(x_1, x_10, x_11, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_Meta_isExprDefEq(x_1, x_2, x_4, x_5, x_6, x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_8 = l_Lean_Expr_getAppFn(x_1);
x_9 = l_Lean_Expr_constName_x3f(x_8);
lean_dec(x_8);
x_10 = l_Lean_Expr_getAppFn(x_2);
x_11 = l_Lean_Expr_constName_x3f(x_10);
lean_dec(x_10);
x_12 = l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Lean_IR_IRType_beq___spec__1(x_9, x_11);
lean_dec(x_11);
lean_dec(x_9);
if (x_12 == 0)
{
uint8_t x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = 0;
x_14 = lean_box(x_13);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_7);
return x_15;
}
else
{
lean_object* x_16; 
x_16 = l_Lean_Meta_isExprDefEq(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
return x_16;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__3(uint8_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
if (x_1 == 0)
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_isSimpEq___lambda__2(x_3, x_2, x_4, x_5, x_6, x_7, x_8);
return x_9;
}
else
{
lean_object* x_10; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_10 = lean_whnf(x_2, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Batteries_Tactic_Lint_isSimpEq___lambda__2(x_3, x_11, x_4, x_5, x_6, x_7, x_12);
return x_13;
}
else
{
uint8_t x_14; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_14 = !lean_is_exclusive(x_10);
if (x_14 == 0)
{
return x_10;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_10, 0);
x_16 = lean_ctor_get(x_10, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_10);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_4);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_4, 0);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = 2;
lean_ctor_set_uint8(x_10, 9, x_12);
if (x_3 == 0)
{
lean_object* x_13; 
x_13 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_3, x_2, x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_13) == 0)
{
uint8_t x_14; 
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
return x_13;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_13);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_13);
if (x_18 == 0)
{
return x_13;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_13, 0);
x_20 = lean_ctor_get(x_13, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_13);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_22 = lean_whnf(x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_3, x_2, x_23, x_4, x_5, x_6, x_7, x_24);
if (lean_obj_tag(x_25) == 0)
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
return x_25;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_25, 0);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_25);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
else
{
uint8_t x_30; 
x_30 = !lean_is_exclusive(x_25);
if (x_30 == 0)
{
return x_25;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_25, 0);
x_32 = lean_ctor_get(x_25, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_25);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_4);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_34 = !lean_is_exclusive(x_22);
if (x_34 == 0)
{
return x_22;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_22, 0);
x_36 = lean_ctor_get(x_22, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_22);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
else
{
uint8_t x_38; uint8_t x_39; uint8_t x_40; uint8_t x_41; uint8_t x_42; uint8_t x_43; uint8_t x_44; uint8_t x_45; uint8_t x_46; uint8_t x_47; uint8_t x_48; uint8_t x_49; uint8_t x_50; lean_object* x_51; 
x_38 = lean_ctor_get_uint8(x_10, 0);
x_39 = lean_ctor_get_uint8(x_10, 1);
x_40 = lean_ctor_get_uint8(x_10, 2);
x_41 = lean_ctor_get_uint8(x_10, 3);
x_42 = lean_ctor_get_uint8(x_10, 4);
x_43 = lean_ctor_get_uint8(x_10, 5);
x_44 = lean_ctor_get_uint8(x_10, 6);
x_45 = lean_ctor_get_uint8(x_10, 7);
x_46 = lean_ctor_get_uint8(x_10, 8);
x_47 = lean_ctor_get_uint8(x_10, 10);
x_48 = lean_ctor_get_uint8(x_10, 11);
x_49 = lean_ctor_get_uint8(x_10, 12);
lean_dec(x_10);
x_50 = 2;
x_51 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_51, 0, x_38);
lean_ctor_set_uint8(x_51, 1, x_39);
lean_ctor_set_uint8(x_51, 2, x_40);
lean_ctor_set_uint8(x_51, 3, x_41);
lean_ctor_set_uint8(x_51, 4, x_42);
lean_ctor_set_uint8(x_51, 5, x_43);
lean_ctor_set_uint8(x_51, 6, x_44);
lean_ctor_set_uint8(x_51, 7, x_45);
lean_ctor_set_uint8(x_51, 8, x_46);
lean_ctor_set_uint8(x_51, 9, x_50);
lean_ctor_set_uint8(x_51, 10, x_47);
lean_ctor_set_uint8(x_51, 11, x_48);
lean_ctor_set_uint8(x_51, 12, x_49);
lean_ctor_set(x_4, 0, x_51);
if (x_3 == 0)
{
lean_object* x_52; 
x_52 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_3, x_2, x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_52) == 0)
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_53 = lean_ctor_get(x_52, 0);
lean_inc(x_53);
x_54 = lean_ctor_get(x_52, 1);
lean_inc(x_54);
if (lean_is_exclusive(x_52)) {
 lean_ctor_release(x_52, 0);
 lean_ctor_release(x_52, 1);
 x_55 = x_52;
} else {
 lean_dec_ref(x_52);
 x_55 = lean_box(0);
}
if (lean_is_scalar(x_55)) {
 x_56 = lean_alloc_ctor(0, 2, 0);
} else {
 x_56 = x_55;
}
lean_ctor_set(x_56, 0, x_53);
lean_ctor_set(x_56, 1, x_54);
return x_56;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_57 = lean_ctor_get(x_52, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_52, 1);
lean_inc(x_58);
if (lean_is_exclusive(x_52)) {
 lean_ctor_release(x_52, 0);
 lean_ctor_release(x_52, 1);
 x_59 = x_52;
} else {
 lean_dec_ref(x_52);
 x_59 = lean_box(0);
}
if (lean_is_scalar(x_59)) {
 x_60 = lean_alloc_ctor(1, 2, 0);
} else {
 x_60 = x_59;
}
lean_ctor_set(x_60, 0, x_57);
lean_ctor_set(x_60, 1, x_58);
return x_60;
}
}
else
{
lean_object* x_61; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_61 = lean_whnf(x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_61) == 0)
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; 
x_62 = lean_ctor_get(x_61, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_61, 1);
lean_inc(x_63);
lean_dec(x_61);
x_64 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_3, x_2, x_62, x_4, x_5, x_6, x_7, x_63);
if (lean_obj_tag(x_64) == 0)
{
lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; 
x_65 = lean_ctor_get(x_64, 0);
lean_inc(x_65);
x_66 = lean_ctor_get(x_64, 1);
lean_inc(x_66);
if (lean_is_exclusive(x_64)) {
 lean_ctor_release(x_64, 0);
 lean_ctor_release(x_64, 1);
 x_67 = x_64;
} else {
 lean_dec_ref(x_64);
 x_67 = lean_box(0);
}
if (lean_is_scalar(x_67)) {
 x_68 = lean_alloc_ctor(0, 2, 0);
} else {
 x_68 = x_67;
}
lean_ctor_set(x_68, 0, x_65);
lean_ctor_set(x_68, 1, x_66);
return x_68;
}
else
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_69 = lean_ctor_get(x_64, 0);
lean_inc(x_69);
x_70 = lean_ctor_get(x_64, 1);
lean_inc(x_70);
if (lean_is_exclusive(x_64)) {
 lean_ctor_release(x_64, 0);
 lean_ctor_release(x_64, 1);
 x_71 = x_64;
} else {
 lean_dec_ref(x_64);
 x_71 = lean_box(0);
}
if (lean_is_scalar(x_71)) {
 x_72 = lean_alloc_ctor(1, 2, 0);
} else {
 x_72 = x_71;
}
lean_ctor_set(x_72, 0, x_69);
lean_ctor_set(x_72, 1, x_70);
return x_72;
}
}
else
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; 
lean_dec(x_4);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_73 = lean_ctor_get(x_61, 0);
lean_inc(x_73);
x_74 = lean_ctor_get(x_61, 1);
lean_inc(x_74);
if (lean_is_exclusive(x_61)) {
 lean_ctor_release(x_61, 0);
 lean_ctor_release(x_61, 1);
 x_75 = x_61;
} else {
 lean_dec_ref(x_61);
 x_75 = lean_box(0);
}
if (lean_is_scalar(x_75)) {
 x_76 = lean_alloc_ctor(1, 2, 0);
} else {
 x_76 = x_75;
}
lean_ctor_set(x_76, 0, x_73);
lean_ctor_set(x_76, 1, x_74);
return x_76;
}
}
}
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; uint8_t x_83; uint8_t x_84; uint8_t x_85; uint8_t x_86; uint8_t x_87; uint8_t x_88; uint8_t x_89; uint8_t x_90; uint8_t x_91; uint8_t x_92; uint8_t x_93; uint8_t x_94; uint8_t x_95; uint8_t x_96; lean_object* x_97; uint8_t x_98; lean_object* x_99; lean_object* x_100; 
x_77 = lean_ctor_get(x_4, 0);
x_78 = lean_ctor_get(x_4, 1);
x_79 = lean_ctor_get(x_4, 2);
x_80 = lean_ctor_get(x_4, 3);
x_81 = lean_ctor_get(x_4, 4);
x_82 = lean_ctor_get(x_4, 5);
x_83 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_84 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
lean_inc(x_82);
lean_inc(x_81);
lean_inc(x_80);
lean_inc(x_79);
lean_inc(x_78);
lean_inc(x_77);
lean_dec(x_4);
x_85 = lean_ctor_get_uint8(x_77, 0);
x_86 = lean_ctor_get_uint8(x_77, 1);
x_87 = lean_ctor_get_uint8(x_77, 2);
x_88 = lean_ctor_get_uint8(x_77, 3);
x_89 = lean_ctor_get_uint8(x_77, 4);
x_90 = lean_ctor_get_uint8(x_77, 5);
x_91 = lean_ctor_get_uint8(x_77, 6);
x_92 = lean_ctor_get_uint8(x_77, 7);
x_93 = lean_ctor_get_uint8(x_77, 8);
x_94 = lean_ctor_get_uint8(x_77, 10);
x_95 = lean_ctor_get_uint8(x_77, 11);
x_96 = lean_ctor_get_uint8(x_77, 12);
if (lean_is_exclusive(x_77)) {
 x_97 = x_77;
} else {
 lean_dec_ref(x_77);
 x_97 = lean_box(0);
}
x_98 = 2;
if (lean_is_scalar(x_97)) {
 x_99 = lean_alloc_ctor(0, 0, 13);
} else {
 x_99 = x_97;
}
lean_ctor_set_uint8(x_99, 0, x_85);
lean_ctor_set_uint8(x_99, 1, x_86);
lean_ctor_set_uint8(x_99, 2, x_87);
lean_ctor_set_uint8(x_99, 3, x_88);
lean_ctor_set_uint8(x_99, 4, x_89);
lean_ctor_set_uint8(x_99, 5, x_90);
lean_ctor_set_uint8(x_99, 6, x_91);
lean_ctor_set_uint8(x_99, 7, x_92);
lean_ctor_set_uint8(x_99, 8, x_93);
lean_ctor_set_uint8(x_99, 9, x_98);
lean_ctor_set_uint8(x_99, 10, x_94);
lean_ctor_set_uint8(x_99, 11, x_95);
lean_ctor_set_uint8(x_99, 12, x_96);
x_100 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_100, 0, x_99);
lean_ctor_set(x_100, 1, x_78);
lean_ctor_set(x_100, 2, x_79);
lean_ctor_set(x_100, 3, x_80);
lean_ctor_set(x_100, 4, x_81);
lean_ctor_set(x_100, 5, x_82);
lean_ctor_set_uint8(x_100, sizeof(void*)*6, x_83);
lean_ctor_set_uint8(x_100, sizeof(void*)*6 + 1, x_84);
if (x_3 == 0)
{
lean_object* x_101; 
x_101 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_3, x_2, x_1, x_100, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_101) == 0)
{
lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_102 = lean_ctor_get(x_101, 0);
lean_inc(x_102);
x_103 = lean_ctor_get(x_101, 1);
lean_inc(x_103);
if (lean_is_exclusive(x_101)) {
 lean_ctor_release(x_101, 0);
 lean_ctor_release(x_101, 1);
 x_104 = x_101;
} else {
 lean_dec_ref(x_101);
 x_104 = lean_box(0);
}
if (lean_is_scalar(x_104)) {
 x_105 = lean_alloc_ctor(0, 2, 0);
} else {
 x_105 = x_104;
}
lean_ctor_set(x_105, 0, x_102);
lean_ctor_set(x_105, 1, x_103);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; 
x_106 = lean_ctor_get(x_101, 0);
lean_inc(x_106);
x_107 = lean_ctor_get(x_101, 1);
lean_inc(x_107);
if (lean_is_exclusive(x_101)) {
 lean_ctor_release(x_101, 0);
 lean_ctor_release(x_101, 1);
 x_108 = x_101;
} else {
 lean_dec_ref(x_101);
 x_108 = lean_box(0);
}
if (lean_is_scalar(x_108)) {
 x_109 = lean_alloc_ctor(1, 2, 0);
} else {
 x_109 = x_108;
}
lean_ctor_set(x_109, 0, x_106);
lean_ctor_set(x_109, 1, x_107);
return x_109;
}
}
else
{
lean_object* x_110; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_100);
x_110 = lean_whnf(x_1, x_100, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_110) == 0)
{
lean_object* x_111; lean_object* x_112; lean_object* x_113; 
x_111 = lean_ctor_get(x_110, 0);
lean_inc(x_111);
x_112 = lean_ctor_get(x_110, 1);
lean_inc(x_112);
lean_dec(x_110);
x_113 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_3, x_2, x_111, x_100, x_5, x_6, x_7, x_112);
if (lean_obj_tag(x_113) == 0)
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; 
x_114 = lean_ctor_get(x_113, 0);
lean_inc(x_114);
x_115 = lean_ctor_get(x_113, 1);
lean_inc(x_115);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_116 = x_113;
} else {
 lean_dec_ref(x_113);
 x_116 = lean_box(0);
}
if (lean_is_scalar(x_116)) {
 x_117 = lean_alloc_ctor(0, 2, 0);
} else {
 x_117 = x_116;
}
lean_ctor_set(x_117, 0, x_114);
lean_ctor_set(x_117, 1, x_115);
return x_117;
}
else
{
lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; 
x_118 = lean_ctor_get(x_113, 0);
lean_inc(x_118);
x_119 = lean_ctor_get(x_113, 1);
lean_inc(x_119);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_120 = x_113;
} else {
 lean_dec_ref(x_113);
 x_120 = lean_box(0);
}
if (lean_is_scalar(x_120)) {
 x_121 = lean_alloc_ctor(1, 2, 0);
} else {
 x_121 = x_120;
}
lean_ctor_set(x_121, 0, x_118);
lean_ctor_set(x_121, 1, x_119);
return x_121;
}
}
else
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; 
lean_dec(x_100);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_122 = lean_ctor_get(x_110, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_110, 1);
lean_inc(x_123);
if (lean_is_exclusive(x_110)) {
 lean_ctor_release(x_110, 0);
 lean_ctor_release(x_110, 1);
 x_124 = x_110;
} else {
 lean_dec_ref(x_110);
 x_124 = lean_box(0);
}
if (lean_is_scalar(x_124)) {
 x_125 = lean_alloc_ctor(1, 2, 0);
} else {
 x_125 = x_124;
}
lean_ctor_set(x_125, 0, x_122);
lean_ctor_set(x_125, 1, x_123);
return x_125;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_isSimpEq___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; 
x_9 = lean_unbox(x_1);
lean_dec(x_1);
x_10 = l_Batteries_Tactic_Lint_isSimpEq___lambda__3(x_9, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpEq___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; 
x_9 = lean_unbox(x_3);
lean_dec(x_3);
x_10 = l_Batteries_Tactic_Lint_isSimpEq(x_1, x_2, x_9, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__2(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; size_t x_7; size_t x_8; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = 1;
x_8 = lean_usize_add(x_2, x_7);
if (lean_obj_tag(x_6) == 0)
{
x_2 = x_8;
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_6, 0);
lean_inc(x_10);
lean_dec(x_6);
x_11 = lean_array_push(x_4, x_10);
x_2 = x_8;
x_4 = x_11;
goto _start;
}
}
else
{
return x_4;
}
}
}
static lean_object* _init_l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_lt(x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
return x_5;
}
else
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_array_get_size(x_1);
x_7 = lean_nat_dec_le(x_3, x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
return x_8;
}
else
{
size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_usize_of_nat(x_2);
x_10 = lean_usize_of_nat(x_3);
x_11 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_12 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__2(x_1, x_9, x_10, x_11);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_8 = lean_apply_6(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
if (lean_obj_tag(x_9) == 0)
{
uint8_t x_10; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_8, 0);
lean_dec(x_11);
x_12 = lean_box(0);
lean_ctor_set(x_8, 0, x_12);
return x_8;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_dec(x_8);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
lean_object* x_16; uint8_t x_17; 
x_16 = lean_ctor_get(x_8, 1);
lean_inc(x_16);
lean_dec(x_8);
x_17 = !lean_is_exclusive(x_9);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_18 = lean_ctor_get(x_9, 0);
x_19 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_18, x_3, x_4, x_5, x_6, x_16);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; 
x_21 = lean_ctor_get(x_19, 0);
lean_ctor_set(x_9, 0, x_21);
lean_ctor_set(x_19, 0, x_9);
return x_19;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_19, 0);
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_19);
lean_ctor_set(x_9, 0, x_22);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_9);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_9, 0);
lean_inc(x_25);
lean_dec(x_9);
x_26 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_25, x_3, x_4, x_5, x_6, x_16);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_26, 1);
lean_inc(x_28);
if (lean_is_exclusive(x_26)) {
 lean_ctor_release(x_26, 0);
 lean_ctor_release(x_26, 1);
 x_29 = x_26;
} else {
 lean_dec_ref(x_26);
 x_29 = lean_box(0);
}
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_27);
if (lean_is_scalar(x_29)) {
 x_31 = lean_alloc_ctor(0, 2, 0);
} else {
 x_31 = x_29;
}
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_28);
return x_31;
}
}
}
else
{
uint8_t x_32; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_32 = !lean_is_exclusive(x_8);
if (x_32 == 0)
{
return x_8;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_8, 0);
x_34 = lean_ctor_get(x_8, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_8);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(1);
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_array_to_list(lean_box(0), x_1);
x_9 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___closed__1;
x_10 = l_Lean_MessageData_joinSep(x_8, x_9);
x_11 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_11, 0, x_10);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_7);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__1), 7, 1);
lean_closure_set(x_8, 0, x_2);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_9 = l_Batteries_Tactic_Lint_withSimpTheoremInfos___rarg(x_1, x_8, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_9) == 0)
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_9, 1);
x_13 = lean_array_get_size(x_11);
x_14 = lean_unsigned_to_nat(0u);
x_15 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1(x_11, x_14, x_13);
lean_dec(x_13);
lean_dec(x_11);
x_16 = l_Array_isEmpty___rarg(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_free_object(x_9);
x_17 = lean_box(0);
x_18 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2(x_15, x_17, x_3, x_4, x_5, x_6, x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_18;
}
else
{
lean_object* x_19; 
lean_dec(x_15);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_19 = lean_box(0);
lean_ctor_set(x_9, 0, x_19);
return x_9;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_20 = lean_ctor_get(x_9, 0);
x_21 = lean_ctor_get(x_9, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_9);
x_22 = lean_array_get_size(x_20);
x_23 = lean_unsigned_to_nat(0u);
x_24 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1(x_20, x_23, x_22);
lean_dec(x_22);
lean_dec(x_20);
x_25 = l_Array_isEmpty___rarg(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_box(0);
x_27 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2(x_24, x_26, x_3, x_4, x_5, x_6, x_21);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_27;
}
else
{
lean_object* x_28; lean_object* x_29; 
lean_dec(x_24);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_28 = lean_box(0);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_21);
return x_29;
}
}
}
else
{
uint8_t x_30; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_30 = !lean_is_exclusive(x_9);
if (x_30 == 0)
{
return x_9;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_9, 0);
x_32 = lean_ctor_get(x_9, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_9);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__2(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_isSimpTheorem___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Meta_simpExtension;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpTheorem(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = l_Batteries_Tactic_Lint_isSimpTheorem___closed__1;
x_8 = l_Lean_Meta_SimpExtension_getTheorems(x_7, x_4, x_5, x_6);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; uint8_t x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_10, 2);
lean_inc(x_11);
lean_dec(x_10);
x_12 = 1;
x_13 = 0;
x_14 = lean_alloc_ctor(0, 1, 2);
lean_ctor_set(x_14, 0, x_1);
lean_ctor_set_uint8(x_14, sizeof(void*)*1, x_12);
lean_ctor_set_uint8(x_14, sizeof(void*)*1 + 1, x_13);
x_15 = l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(x_11, x_14);
x_16 = lean_box(x_15);
lean_ctor_set(x_8, 0, x_16);
return x_8;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; uint8_t x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; 
x_17 = lean_ctor_get(x_8, 0);
x_18 = lean_ctor_get(x_8, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_8);
x_19 = lean_ctor_get(x_17, 2);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = 0;
x_22 = lean_alloc_ctor(0, 1, 2);
lean_ctor_set(x_22, 0, x_1);
lean_ctor_set_uint8(x_22, sizeof(void*)*1, x_20);
lean_ctor_set_uint8(x_22, sizeof(void*)*1 + 1, x_21);
x_23 = l_Lean_PersistentHashMap_contains___at___private_Lean_Meta_Tactic_Simp_SimpTheorems_0__Lean_Meta_eraseIfExists___spec__1(x_19, x_22);
x_24 = lean_box(x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_18);
return x_25;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_isSimpTheorem___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Batteries_Tactic_Lint_isSimpTheorem(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; size_t x_7; size_t x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = 1;
x_8 = lean_usize_add(x_2, x_7);
x_9 = lean_ctor_get(x_6, 1);
lean_inc(x_9);
lean_dec(x_6);
x_10 = l_Lean_Meta_DiscrTree_elements_trieElements___rarg(x_4, x_9);
lean_dec(x_9);
x_2 = x_8;
x_4 = x_10;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements_trieElements___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_3 = lean_ctor_get(x_2, 0);
x_4 = lean_ctor_get(x_2, 1);
x_5 = l_Array_append___rarg(x_1, x_3);
x_6 = lean_array_get_size(x_4);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_lt(x_7, x_6);
if (x_8 == 0)
{
lean_dec(x_6);
return x_5;
}
else
{
uint8_t x_9; 
x_9 = lean_nat_dec_le(x_6, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
return x_5;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = 0;
x_11 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_12 = l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg(x_4, x_10, x_11, x_5);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements_trieElements(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Meta_DiscrTree_elements_trieElements___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at_Lean_Meta_DiscrTree_elements_trieElements___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements_trieElements___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_Meta_DiscrTree_elements_trieElements___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_PersistentHashMap_foldlMAux___at_Lean_MetavarContext_getExprAssignmentDomain___spec__2___rarg(x_2, x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Meta_DiscrTree_elements_trieElements___rarg(x_1, x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_Meta_DiscrTree_elements___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Meta_DiscrTree_elements___rarg___lambda__1___boxed), 3, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Lean_Meta_DiscrTree_elements___rarg___closed__1;
x_3 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_4 = l_Lean_PersistentHashMap_foldlMAux___at_Lean_MetavarContext_getExprAssignmentDomain___spec__2___rarg(x_2, x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Meta_DiscrTree_elements___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_PersistentHashMap_foldlM___at_Lean_Meta_DiscrTree_elements___spec__1___rarg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Meta_DiscrTree_elements___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_elements___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Meta_DiscrTree_elements___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_decorateError___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\n", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_decorateError___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_decorateError___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_decorateError___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_apply_5(x_2, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_dec(x_1);
return x_8;
}
else
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = l_Lean_Exception_isInterrupt(x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = l_Lean_Exception_isRuntime(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_13 = l_Lean_Exception_getRef(x_10);
x_14 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_1);
x_16 = l_Batteries_Tactic_Lint_decorateError___rarg___closed__2;
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
x_18 = l_Lean_Exception_toMessageData(x_10);
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_14);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_13);
lean_ctor_set(x_21, 1, x_20);
lean_ctor_set(x_8, 0, x_21);
return x_8;
}
else
{
lean_dec(x_1);
return x_8;
}
}
else
{
lean_dec(x_1);
return x_8;
}
}
else
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_8, 0);
x_23 = lean_ctor_get(x_8, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_8);
x_24 = l_Lean_Exception_isInterrupt(x_22);
if (x_24 == 0)
{
uint8_t x_25; 
x_25 = l_Lean_Exception_isRuntime(x_22);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_26 = l_Lean_Exception_getRef(x_22);
x_27 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_28 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_1);
x_29 = l_Batteries_Tactic_Lint_decorateError___rarg___closed__2;
x_30 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
x_31 = l_Lean_Exception_toMessageData(x_22);
x_32 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
x_33 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_27);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_26);
lean_ctor_set(x_34, 1, x_33);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_23);
return x_35;
}
else
{
lean_object* x_36; 
lean_dec(x_1);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_22);
lean_ctor_set(x_36, 1, x_23);
return x_36;
}
}
else
{
lean_object* x_37; 
lean_dec(x_1);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_22);
lean_ctor_set(x_37, 1, x_23);
return x_37;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_decorateError(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_decorateError___rarg), 7, 0);
return x_2;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("eq_self", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_4, x_3);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_21; 
x_13 = lean_array_uget(x_2, x_4);
x_21 = lean_ctor_get(x_13, 0);
lean_inc(x_21);
lean_dec(x_13);
switch (lean_obj_tag(x_21)) {
case 0:
{
uint8_t x_22; 
x_22 = lean_ctor_get_uint8(x_21, sizeof(void*)*1);
if (x_22 == 0)
{
lean_object* x_23; 
lean_dec(x_21);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_5);
x_14 = x_23;
x_15 = x_10;
goto block_20;
}
else
{
uint8_t x_24; 
x_24 = lean_ctor_get_uint8(x_21, sizeof(void*)*1 + 1);
if (x_24 == 0)
{
lean_object* x_25; uint8_t x_26; 
x_25 = lean_ctor_get(x_21, 0);
lean_inc(x_25);
lean_dec(x_21);
lean_inc(x_1);
x_26 = l_Lean_Environment_contains(x_1, x_25);
if (x_26 == 0)
{
lean_object* x_27; 
lean_dec(x_25);
x_27 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_27, 0, x_5);
x_14 = x_27;
x_15 = x_10;
goto block_20;
}
else
{
lean_object* x_28; uint8_t x_29; 
x_28 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__2;
x_29 = lean_name_eq(x_25, x_28);
if (x_29 == 0)
{
lean_object* x_30; 
x_30 = l_Lean_Meta_mkConstWithFreshMVarLevels(x_25, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
lean_dec(x_30);
x_33 = lean_array_push(x_5, x_31);
x_34 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_34, 0, x_33);
x_14 = x_34;
x_15 = x_32;
goto block_20;
}
else
{
uint8_t x_35; 
lean_dec(x_5);
lean_dec(x_1);
x_35 = !lean_is_exclusive(x_30);
if (x_35 == 0)
{
return x_30;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_30, 0);
x_37 = lean_ctor_get(x_30, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_30);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
return x_38;
}
}
}
else
{
lean_object* x_39; 
lean_dec(x_25);
x_39 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_39, 0, x_5);
x_14 = x_39;
x_15 = x_10;
goto block_20;
}
}
}
else
{
lean_object* x_40; 
lean_dec(x_21);
x_40 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_40, 0, x_5);
x_14 = x_40;
x_15 = x_10;
goto block_20;
}
}
}
case 1:
{
uint8_t x_41; 
x_41 = !lean_is_exclusive(x_21);
if (x_41 == 0)
{
lean_object* x_42; 
x_42 = lean_ctor_get(x_21, 0);
lean_dec(x_42);
lean_ctor_set(x_21, 0, x_5);
x_14 = x_21;
x_15 = x_10;
goto block_20;
}
else
{
lean_object* x_43; 
lean_dec(x_21);
x_43 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_43, 0, x_5);
x_14 = x_43;
x_15 = x_10;
goto block_20;
}
}
case 2:
{
lean_object* x_44; 
lean_dec(x_21);
x_44 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_44, 0, x_5);
x_14 = x_44;
x_15 = x_10;
goto block_20;
}
default: 
{
uint8_t x_45; 
x_45 = !lean_is_exclusive(x_21);
if (x_45 == 0)
{
lean_object* x_46; 
x_46 = lean_ctor_get(x_21, 0);
lean_dec(x_46);
lean_ctor_set_tag(x_21, 1);
lean_ctor_set(x_21, 0, x_5);
x_14 = x_21;
x_15 = x_10;
goto block_20;
}
else
{
lean_object* x_47; 
lean_dec(x_21);
x_47 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_47, 0, x_5);
x_14 = x_47;
x_15 = x_10;
goto block_20;
}
}
}
block_20:
{
lean_object* x_16; size_t x_17; size_t x_18; 
x_16 = lean_ctor_get(x_14, 0);
lean_inc(x_16);
lean_dec(x_14);
x_17 = 1;
x_18 = lean_usize_add(x_4, x_17);
x_4 = x_18;
x_5 = x_16;
x_10 = x_15;
goto _start;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_formatLemmas___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" only ", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_formatLemmas___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_formatLemmas___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_formatLemmas(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_6, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; lean_object* x_23; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
x_12 = lean_ctor_get(x_10, 0);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_ctor_get(x_1, 0);
x_14 = l_Lean_PersistentHashMap_toArray___at_Lean_Meta_Simp_UsedSimps_toArray___spec__1(x_13);
x_15 = lean_array_get_size(x_14);
x_16 = lean_unsigned_to_nat(1u);
x_17 = lean_nat_sub(x_15, x_16);
lean_dec(x_15);
x_18 = lean_unsigned_to_nat(0u);
x_19 = l_Array_qsort_sort___at_Lean_Meta_Simp_UsedSimps_toArray___spec__3(x_14, x_18, x_17);
lean_dec(x_17);
x_20 = lean_array_size(x_19);
x_21 = 0;
x_22 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_23 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1(x_12, x_19, x_20, x_21, x_22, x_3, x_4, x_5, x_6, x_11);
lean_dec(x_19);
if (lean_obj_tag(x_23) == 0)
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_25 = lean_ctor_get(x_23, 0);
x_26 = l_Lean_stringToMessageData(x_2);
x_27 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
lean_ctor_set_tag(x_8, 7);
lean_ctor_set(x_8, 1, x_26);
lean_ctor_set(x_8, 0, x_27);
x_28 = l_Batteries_Tactic_Lint_formatLemmas___closed__2;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_8);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_array_to_list(lean_box(0), x_25);
x_31 = lean_box(0);
x_32 = l_List_mapTR_loop___at_Lean_MessageData_instCoeListExpr___spec__1(x_30, x_31);
x_33 = l_Lean_MessageData_ofList(x_32);
x_34 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_34, 0, x_29);
lean_ctor_set(x_34, 1, x_33);
x_35 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_27);
lean_ctor_set(x_23, 0, x_35);
return x_23;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_36 = lean_ctor_get(x_23, 0);
x_37 = lean_ctor_get(x_23, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_23);
x_38 = l_Lean_stringToMessageData(x_2);
x_39 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
lean_ctor_set_tag(x_8, 7);
lean_ctor_set(x_8, 1, x_38);
lean_ctor_set(x_8, 0, x_39);
x_40 = l_Batteries_Tactic_Lint_formatLemmas___closed__2;
x_41 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_41, 0, x_8);
lean_ctor_set(x_41, 1, x_40);
x_42 = lean_array_to_list(lean_box(0), x_36);
x_43 = lean_box(0);
x_44 = l_List_mapTR_loop___at_Lean_MessageData_instCoeListExpr___spec__1(x_42, x_43);
x_45 = l_Lean_MessageData_ofList(x_44);
x_46 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_46, 0, x_41);
lean_ctor_set(x_46, 1, x_45);
x_47 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_39);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_37);
return x_48;
}
}
else
{
uint8_t x_49; 
lean_free_object(x_8);
x_49 = !lean_is_exclusive(x_23);
if (x_49 == 0)
{
return x_23;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_23, 0);
x_51 = lean_ctor_get(x_23, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_23);
x_52 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
return x_52;
}
}
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; size_t x_63; size_t x_64; lean_object* x_65; lean_object* x_66; 
x_53 = lean_ctor_get(x_8, 0);
x_54 = lean_ctor_get(x_8, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_8);
x_55 = lean_ctor_get(x_53, 0);
lean_inc(x_55);
lean_dec(x_53);
x_56 = lean_ctor_get(x_1, 0);
x_57 = l_Lean_PersistentHashMap_toArray___at_Lean_Meta_Simp_UsedSimps_toArray___spec__1(x_56);
x_58 = lean_array_get_size(x_57);
x_59 = lean_unsigned_to_nat(1u);
x_60 = lean_nat_sub(x_58, x_59);
lean_dec(x_58);
x_61 = lean_unsigned_to_nat(0u);
x_62 = l_Array_qsort_sort___at_Lean_Meta_Simp_UsedSimps_toArray___spec__3(x_57, x_61, x_60);
lean_dec(x_60);
x_63 = lean_array_size(x_62);
x_64 = 0;
x_65 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_66 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1(x_55, x_62, x_63, x_64, x_65, x_3, x_4, x_5, x_6, x_54);
lean_dec(x_62);
if (lean_obj_tag(x_66) == 0)
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_67 = lean_ctor_get(x_66, 0);
lean_inc(x_67);
x_68 = lean_ctor_get(x_66, 1);
lean_inc(x_68);
if (lean_is_exclusive(x_66)) {
 lean_ctor_release(x_66, 0);
 lean_ctor_release(x_66, 1);
 x_69 = x_66;
} else {
 lean_dec_ref(x_66);
 x_69 = lean_box(0);
}
x_70 = l_Lean_stringToMessageData(x_2);
x_71 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_72 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_70);
x_73 = l_Batteries_Tactic_Lint_formatLemmas___closed__2;
x_74 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_74, 0, x_72);
lean_ctor_set(x_74, 1, x_73);
x_75 = lean_array_to_list(lean_box(0), x_67);
x_76 = lean_box(0);
x_77 = l_List_mapTR_loop___at_Lean_MessageData_instCoeListExpr___spec__1(x_75, x_76);
x_78 = l_Lean_MessageData_ofList(x_77);
x_79 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_79, 0, x_74);
lean_ctor_set(x_79, 1, x_78);
x_80 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_80, 0, x_79);
lean_ctor_set(x_80, 1, x_71);
if (lean_is_scalar(x_69)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_69;
}
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_68);
return x_81;
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_82 = lean_ctor_get(x_66, 0);
lean_inc(x_82);
x_83 = lean_ctor_get(x_66, 1);
lean_inc(x_83);
if (lean_is_exclusive(x_66)) {
 lean_ctor_release(x_66, 0);
 lean_ctor_release(x_66, 1);
 x_84 = x_66;
} else {
 lean_dec_ref(x_66);
 x_84 = lean_box(0);
}
if (lean_is_scalar(x_84)) {
 x_85 = lean_alloc_ctor(1, 2, 0);
} else {
 x_85 = x_84;
}
lean_ctor_set(x_85, 0, x_82);
lean_ctor_set(x_85, 1, x_83);
return x_85;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_formatLemmas___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_formatLemmas(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" can prove this:\n  by ", 22, 22);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nOne of the lemmas above could be a duplicate.\nIf that's not the case try reordering lemmas or adding @[priority].\n", 115, 115);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_1, 0);
x_10 = l_Batteries_Tactic_Lint_formatLemmas(x_9, x_2, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = l_Lean_stringToMessageData(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
x_16 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2;
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
x_18 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_12);
x_19 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_10, 0, x_21);
return x_10;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_22 = lean_ctor_get(x_10, 0);
x_23 = lean_ctor_get(x_10, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_10);
x_24 = l_Lean_stringToMessageData(x_2);
x_25 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_26 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_24);
x_27 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2;
x_28 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_22);
x_30 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4;
x_31 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_31);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_23);
return x_33;
}
}
else
{
uint8_t x_34; 
x_34 = !lean_is_exclusive(x_10);
if (x_34 == 0)
{
return x_10;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_10, 0);
x_36 = lean_ctor_get(x_10, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_10);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_Meta_dsimp(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_box(0);
x_16 = 1;
x_17 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_17, 0, x_14);
lean_ctor_set(x_17, 1, x_15);
lean_ctor_set_uint8(x_17, sizeof(void*)*2, x_16);
lean_ctor_set(x_12, 0, x_17);
return x_10;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_18 = lean_ctor_get(x_12, 0);
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_12);
x_20 = lean_box(0);
x_21 = 1;
x_22 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_22, 0, x_18);
lean_ctor_set(x_22, 1, x_20);
lean_ctor_set_uint8(x_22, sizeof(void*)*2, x_21);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_19);
lean_ctor_set(x_10, 0, x_23);
return x_10;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_24 = lean_ctor_get(x_10, 0);
x_25 = lean_ctor_get(x_10, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_10);
x_26 = lean_ctor_get(x_24, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
if (lean_is_exclusive(x_24)) {
 lean_ctor_release(x_24, 0);
 lean_ctor_release(x_24, 1);
 x_28 = x_24;
} else {
 lean_dec_ref(x_24);
 x_28 = lean_box(0);
}
x_29 = lean_box(0);
x_30 = 1;
x_31 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_31, 0, x_26);
lean_ctor_set(x_31, 1, x_29);
lean_ctor_set_uint8(x_31, sizeof(void*)*2, x_30);
if (lean_is_scalar(x_28)) {
 x_32 = lean_alloc_ctor(0, 2, 0);
} else {
 x_32 = x_28;
}
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_27);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_25);
return x_33;
}
}
else
{
uint8_t x_34; 
x_34 = !lean_is_exclusive(x_10);
if (x_34 == 0)
{
return x_10;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_10, 0);
x_36 = lean_ctor_get(x_10, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_10);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("simplify fails on right-hand side:", 34, 34);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Left-hand side does not simplify, when using the simp lemma on itself.\nThis usually means that it will never apply.\n", 116, 116);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__5;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Left-hand side simplifies from\n  ", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__7;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nto\n  ", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__9;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nusing\n  ", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__11;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\nTry to change the left-hand side to the simplified term!\n", 58, 58);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__13;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("dsimp", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("simp", 4, 4);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, uint8_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; 
if (x_6 == 0)
{
lean_object* x_104; lean_object* x_105; 
x_104 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
lean_inc(x_4);
x_105 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__2), 9, 4);
lean_closure_set(x_105, 0, x_7);
lean_closure_set(x_105, 1, x_8);
lean_closure_set(x_105, 2, x_104);
lean_closure_set(x_105, 3, x_4);
x_15 = x_105;
goto block_103;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; 
x_106 = lean_box(0);
x_107 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
lean_inc(x_4);
x_108 = lean_alloc_closure((void*)(l_Lean_Meta_simp), 10, 5);
lean_closure_set(x_108, 0, x_7);
lean_closure_set(x_108, 1, x_8);
lean_closure_set(x_108, 2, x_107);
lean_closure_set(x_108, 3, x_106);
lean_closure_set(x_108, 4, x_4);
x_15 = x_108;
goto block_103;
}
block_103:
{
lean_object* x_16; lean_object* x_17; 
x_16 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__3;
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
x_17 = l_Batteries_Tactic_Lint_decorateError___rarg(x_16, x_15, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; lean_object* x_25; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_17, 1);
lean_inc(x_20);
lean_dec(x_17);
x_21 = lean_ctor_get(x_18, 1);
lean_inc(x_21);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 lean_ctor_release(x_18, 1);
 x_22 = x_18;
} else {
 lean_dec_ref(x_18);
 x_22 = lean_box(0);
}
x_23 = lean_ctor_get(x_19, 0);
lean_inc(x_23);
lean_dec(x_19);
x_24 = 0;
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_1);
x_25 = l_Batteries_Tactic_Lint_isSimpEq(x_1, x_23, x_24, x_10, x_11, x_12, x_13, x_20);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; lean_object* x_30; 
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_25, 1);
lean_inc(x_27);
if (lean_is_exclusive(x_25)) {
 lean_ctor_release(x_25, 0);
 lean_ctor_release(x_25, 1);
 x_28 = x_25;
} else {
 lean_dec_ref(x_25);
 x_28 = lean_box(0);
}
x_29 = 1;
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_2);
lean_inc(x_1);
x_30 = l_Batteries_Tactic_Lint_isSimpEq(x_1, x_2, x_29, x_10, x_11, x_12, x_13, x_27);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
if (lean_is_exclusive(x_30)) {
 lean_ctor_release(x_30, 0);
 lean_ctor_release(x_30, 1);
 x_33 = x_30;
} else {
 lean_dec_ref(x_30);
 x_33 = lean_box(0);
}
if (x_6 == 0)
{
lean_object* x_89; 
x_89 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__15;
x_34 = x_89;
goto block_88;
}
else
{
lean_object* x_90; 
x_90 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__16;
x_34 = x_90;
goto block_88;
}
block_88:
{
uint8_t x_35; uint8_t x_82; 
x_82 = lean_unbox(x_26);
lean_dec(x_26);
if (x_82 == 0)
{
uint8_t x_83; 
lean_dec(x_28);
lean_dec(x_21);
x_83 = lean_unbox(x_31);
lean_dec(x_31);
if (x_83 == 0)
{
x_35 = x_24;
goto block_81;
}
else
{
x_35 = x_29;
goto block_81;
}
}
else
{
lean_dec(x_33);
lean_dec(x_31);
lean_dec(x_22);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_34);
lean_dec(x_21);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
x_84 = lean_box(0);
if (lean_is_scalar(x_28)) {
 x_85 = lean_alloc_ctor(0, 2, 0);
} else {
 x_85 = x_28;
}
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_32);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; 
lean_dec(x_28);
x_86 = lean_box(0);
x_87 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1(x_21, x_34, x_86, x_10, x_11, x_12, x_13, x_32);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_34);
lean_dec(x_21);
return x_87;
}
}
block_81:
{
uint8_t x_36; 
x_36 = l_instDecidableNot___rarg(x_35);
if (x_36 == 0)
{
lean_dec(x_34);
lean_dec(x_22);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_4);
if (x_3 == 0)
{
uint8_t x_37; 
x_37 = lean_expr_eqv(x_2, x_1);
lean_dec(x_1);
lean_dec(x_2);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_box(0);
if (lean_is_scalar(x_33)) {
 x_39 = lean_alloc_ctor(0, 2, 0);
} else {
 x_39 = x_33;
}
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_32);
return x_39;
}
else
{
lean_object* x_40; lean_object* x_41; 
x_40 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__6;
if (lean_is_scalar(x_33)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_33;
}
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_32);
return x_41;
}
}
else
{
lean_object* x_42; lean_object* x_43; 
lean_dec(x_2);
lean_dec(x_1);
x_42 = lean_box(0);
if (lean_is_scalar(x_33)) {
 x_43 = lean_alloc_ctor(0, 2, 0);
} else {
 x_43 = x_33;
}
lean_ctor_set(x_43, 0, x_42);
lean_ctor_set(x_43, 1, x_32);
return x_43;
}
}
else
{
lean_object* x_44; lean_object* x_45; 
lean_dec(x_33);
x_44 = lean_ctor_get(x_4, 0);
lean_inc(x_44);
lean_dec(x_4);
x_45 = l_Batteries_Tactic_Lint_formatLemmas(x_44, x_34, x_10, x_11, x_12, x_13, x_32);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_34);
lean_dec(x_44);
if (lean_obj_tag(x_45) == 0)
{
uint8_t x_46; 
x_46 = !lean_is_exclusive(x_45);
if (x_46 == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_47 = lean_ctor_get(x_45, 0);
x_48 = l_Lean_MessageData_ofExpr(x_2);
x_49 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8;
if (lean_is_scalar(x_22)) {
 x_50 = lean_alloc_ctor(7, 2, 0);
} else {
 x_50 = x_22;
 lean_ctor_set_tag(x_50, 7);
}
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_48);
x_51 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10;
x_52 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
x_53 = l_Lean_MessageData_ofExpr(x_1);
x_54 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
x_55 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12;
x_56 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
x_57 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_57, 0, x_56);
lean_ctor_set(x_57, 1, x_47);
x_58 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14;
x_59 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_59, 0, x_57);
lean_ctor_set(x_59, 1, x_58);
x_60 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_60, 0, x_59);
lean_ctor_set(x_45, 0, x_60);
return x_45;
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; 
x_61 = lean_ctor_get(x_45, 0);
x_62 = lean_ctor_get(x_45, 1);
lean_inc(x_62);
lean_inc(x_61);
lean_dec(x_45);
x_63 = l_Lean_MessageData_ofExpr(x_2);
x_64 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8;
if (lean_is_scalar(x_22)) {
 x_65 = lean_alloc_ctor(7, 2, 0);
} else {
 x_65 = x_22;
 lean_ctor_set_tag(x_65, 7);
}
lean_ctor_set(x_65, 0, x_64);
lean_ctor_set(x_65, 1, x_63);
x_66 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10;
x_67 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_67, 0, x_65);
lean_ctor_set(x_67, 1, x_66);
x_68 = l_Lean_MessageData_ofExpr(x_1);
x_69 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_69, 0, x_67);
lean_ctor_set(x_69, 1, x_68);
x_70 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12;
x_71 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_71, 0, x_69);
lean_ctor_set(x_71, 1, x_70);
x_72 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_61);
x_73 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14;
x_74 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_74, 0, x_72);
lean_ctor_set(x_74, 1, x_73);
x_75 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_75, 0, x_74);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_75);
lean_ctor_set(x_76, 1, x_62);
return x_76;
}
}
else
{
uint8_t x_77; 
lean_dec(x_22);
lean_dec(x_2);
lean_dec(x_1);
x_77 = !lean_is_exclusive(x_45);
if (x_77 == 0)
{
return x_45;
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; 
x_78 = lean_ctor_get(x_45, 0);
x_79 = lean_ctor_get(x_45, 1);
lean_inc(x_79);
lean_inc(x_78);
lean_dec(x_45);
x_80 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_80, 0, x_78);
lean_ctor_set(x_80, 1, x_79);
return x_80;
}
}
}
}
}
}
else
{
uint8_t x_91; 
lean_dec(x_28);
lean_dec(x_26);
lean_dec(x_22);
lean_dec(x_21);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_91 = !lean_is_exclusive(x_30);
if (x_91 == 0)
{
return x_30;
}
else
{
lean_object* x_92; lean_object* x_93; lean_object* x_94; 
x_92 = lean_ctor_get(x_30, 0);
x_93 = lean_ctor_get(x_30, 1);
lean_inc(x_93);
lean_inc(x_92);
lean_dec(x_30);
x_94 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_94, 0, x_92);
lean_ctor_set(x_94, 1, x_93);
return x_94;
}
}
}
else
{
uint8_t x_95; 
lean_dec(x_22);
lean_dec(x_21);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_95 = !lean_is_exclusive(x_25);
if (x_95 == 0)
{
return x_25;
}
else
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; 
x_96 = lean_ctor_get(x_25, 0);
x_97 = lean_ctor_get(x_25, 1);
lean_inc(x_97);
lean_inc(x_96);
lean_dec(x_25);
x_98 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_98, 0, x_96);
lean_ctor_set(x_98, 1, x_97);
return x_98;
}
}
}
else
{
uint8_t x_99; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_99 = !lean_is_exclusive(x_17);
if (x_99 == 0)
{
return x_17;
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_100 = lean_ctor_get(x_17, 0);
x_101 = lean_ctor_get(x_17, 1);
lean_inc(x_101);
lean_inc(x_100);
lean_dec(x_17);
x_102 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_102, 0, x_100);
lean_ctor_set(x_102, 1, x_101);
return x_102;
}
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("simplify fails on left-hand side:", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__4;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__9() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__8;
x_3 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7;
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_alloc_ctor(0, 4, sizeof(size_t)*1);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
lean_ctor_set(x_5, 3, x_4);
lean_ctor_set_usize(x_5, 4, x_1);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5;
x_2 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__9;
x_3 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_1);
lean_ctor_set(x_3, 3, x_2);
return x_3;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__6;
x_2 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__10;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*3);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
x_11 = lean_ctor_get(x_3, 2);
lean_inc(x_11);
lean_dec(x_3);
lean_inc(x_1);
x_12 = l_Lean_Meta_isRflTheorem(x_1, x_6, x_7, x_8);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; uint8_t x_67; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_67 = lean_unbox(x_13);
lean_dec(x_13);
if (x_67 == 0)
{
uint8_t x_68; 
x_68 = 1;
x_15 = x_68;
goto block_66;
}
else
{
uint8_t x_69; 
x_69 = 0;
x_15 = x_69;
goto block_66;
}
block_66:
{
uint8_t x_16; 
if (x_15 == 0)
{
uint8_t x_64; 
x_64 = 0;
x_16 = x_64;
goto block_63;
}
else
{
uint8_t x_65; 
x_65 = 1;
x_16 = x_65;
goto block_63;
}
block_63:
{
lean_object* x_17; 
if (x_16 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_57 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11;
lean_inc(x_2);
lean_inc(x_10);
x_58 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__2), 9, 4);
lean_closure_set(x_58, 0, x_10);
lean_closure_set(x_58, 1, x_2);
lean_closure_set(x_58, 2, x_56);
lean_closure_set(x_58, 3, x_57);
x_17 = x_58;
goto block_55;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_box(0);
x_60 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_61 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11;
lean_inc(x_2);
lean_inc(x_10);
x_62 = lean_alloc_closure((void*)(l_Lean_Meta_simp), 10, 5);
lean_closure_set(x_62, 0, x_10);
lean_closure_set(x_62, 1, x_2);
lean_closure_set(x_62, 2, x_60);
lean_closure_set(x_62, 3, x_59);
lean_closure_set(x_62, 4, x_61);
x_17 = x_62;
goto block_55;
}
block_55:
{
lean_object* x_18; lean_object* x_19; 
x_18 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__3;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_19 = l_Batteries_Tactic_Lint_decorateError___rarg(x_18, x_17, x_4, x_5, x_6, x_7, x_14);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = !lean_is_exclusive(x_19);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; uint8_t x_31; lean_object* x_32; uint8_t x_33; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_19, 0);
lean_dec(x_24);
x_25 = lean_ctor_get(x_20, 1);
lean_inc(x_25);
lean_dec(x_20);
x_26 = lean_ctor_get(x_21, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_21, 1);
lean_inc(x_27);
lean_dec(x_21);
x_28 = lean_ctor_get(x_25, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
lean_dec(x_28);
x_30 = 1;
x_31 = 0;
x_32 = lean_alloc_ctor(0, 1, 2);
lean_ctor_set(x_32, 0, x_1);
lean_ctor_set_uint8(x_32, sizeof(void*)*1, x_30);
lean_ctor_set_uint8(x_32, sizeof(void*)*1 + 1, x_31);
x_33 = l_Lean_PersistentHashMap_contains___at_Lean_Meta_Simp_UsedSimps_insert___spec__1(x_29, x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; 
lean_free_object(x_19);
x_34 = lean_box(0);
x_35 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3(x_26, x_10, x_9, x_25, x_27, x_16, x_11, x_2, x_34, x_4, x_5, x_6, x_7, x_23);
lean_dec(x_27);
return x_35;
}
else
{
lean_object* x_36; 
lean_dec(x_27);
lean_dec(x_26);
lean_dec(x_25);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_36 = lean_box(0);
lean_ctor_set(x_19, 0, x_36);
return x_19;
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; uint8_t x_44; lean_object* x_45; uint8_t x_46; 
x_37 = lean_ctor_get(x_19, 1);
lean_inc(x_37);
lean_dec(x_19);
x_38 = lean_ctor_get(x_20, 1);
lean_inc(x_38);
lean_dec(x_20);
x_39 = lean_ctor_get(x_21, 0);
lean_inc(x_39);
x_40 = lean_ctor_get(x_21, 1);
lean_inc(x_40);
lean_dec(x_21);
x_41 = lean_ctor_get(x_38, 0);
lean_inc(x_41);
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
lean_dec(x_41);
x_43 = 1;
x_44 = 0;
x_45 = lean_alloc_ctor(0, 1, 2);
lean_ctor_set(x_45, 0, x_1);
lean_ctor_set_uint8(x_45, sizeof(void*)*1, x_43);
lean_ctor_set_uint8(x_45, sizeof(void*)*1 + 1, x_44);
x_46 = l_Lean_PersistentHashMap_contains___at_Lean_Meta_Simp_UsedSimps_insert___spec__1(x_42, x_45);
if (x_46 == 0)
{
lean_object* x_47; lean_object* x_48; 
x_47 = lean_box(0);
x_48 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3(x_39, x_10, x_9, x_38, x_40, x_16, x_11, x_2, x_47, x_4, x_5, x_6, x_7, x_37);
lean_dec(x_40);
return x_48;
}
else
{
lean_object* x_49; lean_object* x_50; 
lean_dec(x_40);
lean_dec(x_39);
lean_dec(x_38);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_49 = lean_box(0);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_37);
return x_50;
}
}
}
else
{
uint8_t x_51; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_51 = !lean_is_exclusive(x_19);
if (x_51 == 0)
{
return x_19;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_19, 0);
x_53 = lean_ctor_get(x_19, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_19);
x_54 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
return x_54;
}
}
}
}
}
}
else
{
uint8_t x_70; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_70 = !lean_is_exclusive(x_12);
if (x_70 == 0)
{
return x_12;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_12, 0);
x_72 = lean_ctor_get(x_12, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_12);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_8 = l_Lean_Meta_Simp_Context_mkDefault___rarg(x_5, x_6, x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_11);
lean_dec(x_8);
x_12 = !lean_is_exclusive(x_9);
if (x_12 == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_ctor_get(x_9, 0);
lean_dec(x_13);
x_14 = !lean_is_exclusive(x_10);
if (x_14 == 0)
{
uint8_t x_15; lean_object* x_16; 
x_15 = 0;
lean_ctor_set_uint8(x_10, sizeof(void*)*2 + 9, x_15);
lean_inc(x_1);
x_16 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_11);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = l_Lean_ConstantInfo_type(x_17);
lean_dec(x_17);
x_20 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4), 8, 2);
lean_closure_set(x_20, 0, x_1);
lean_closure_set(x_20, 1, x_9);
x_21 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos(x_19, x_20, x_3, x_4, x_5, x_6, x_18);
return x_21;
}
else
{
uint8_t x_22; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_22 = !lean_is_exclusive(x_16);
if (x_22 == 0)
{
return x_16;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_16, 0);
x_24 = lean_ctor_get(x_16, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_16);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
else
{
lean_object* x_26; lean_object* x_27; uint8_t x_28; uint8_t x_29; uint8_t x_30; uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; uint8_t x_37; uint8_t x_38; uint8_t x_39; uint8_t x_40; uint8_t x_41; uint8_t x_42; uint8_t x_43; uint8_t x_44; uint8_t x_45; uint8_t x_46; lean_object* x_47; lean_object* x_48; 
x_26 = lean_ctor_get(x_10, 0);
x_27 = lean_ctor_get(x_10, 1);
x_28 = lean_ctor_get_uint8(x_10, sizeof(void*)*2);
x_29 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 1);
x_30 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 2);
x_31 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 3);
x_32 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 4);
x_33 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 5);
x_34 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 6);
x_35 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 7);
x_36 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 8);
x_37 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 10);
x_38 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 11);
x_39 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 12);
x_40 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 13);
x_41 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 14);
x_42 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 15);
x_43 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 16);
x_44 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 17);
x_45 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 18);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_10);
x_46 = 0;
x_47 = lean_alloc_ctor(0, 2, 19);
lean_ctor_set(x_47, 0, x_26);
lean_ctor_set(x_47, 1, x_27);
lean_ctor_set_uint8(x_47, sizeof(void*)*2, x_28);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 1, x_29);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 2, x_30);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 3, x_31);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 4, x_32);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 5, x_33);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 6, x_34);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 7, x_35);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 8, x_36);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 9, x_46);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 10, x_37);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 11, x_38);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 12, x_39);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 13, x_40);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 14, x_41);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 15, x_42);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 16, x_43);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 17, x_44);
lean_ctor_set_uint8(x_47, sizeof(void*)*2 + 18, x_45);
lean_ctor_set(x_9, 0, x_47);
lean_inc(x_1);
x_48 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_11);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_48, 1);
lean_inc(x_50);
lean_dec(x_48);
x_51 = l_Lean_ConstantInfo_type(x_49);
lean_dec(x_49);
x_52 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4), 8, 2);
lean_closure_set(x_52, 0, x_1);
lean_closure_set(x_52, 1, x_9);
x_53 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos(x_51, x_52, x_3, x_4, x_5, x_6, x_50);
return x_53;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_54 = lean_ctor_get(x_48, 0);
lean_inc(x_54);
x_55 = lean_ctor_get(x_48, 1);
lean_inc(x_55);
if (lean_is_exclusive(x_48)) {
 lean_ctor_release(x_48, 0);
 lean_ctor_release(x_48, 1);
 x_56 = x_48;
} else {
 lean_dec_ref(x_48);
 x_56 = lean_box(0);
}
if (lean_is_scalar(x_56)) {
 x_57 = lean_alloc_ctor(1, 2, 0);
} else {
 x_57 = x_56;
}
lean_ctor_set(x_57, 0, x_54);
lean_ctor_set(x_57, 1, x_55);
return x_57;
}
}
}
else
{
uint32_t x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; uint32_t x_62; lean_object* x_63; uint8_t x_64; lean_object* x_65; lean_object* x_66; uint8_t x_67; uint8_t x_68; uint8_t x_69; uint8_t x_70; uint8_t x_71; uint8_t x_72; uint8_t x_73; uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; lean_object* x_85; uint8_t x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; 
x_58 = lean_ctor_get_uint32(x_9, sizeof(void*)*5);
x_59 = lean_ctor_get(x_9, 1);
x_60 = lean_ctor_get(x_9, 2);
x_61 = lean_ctor_get(x_9, 3);
x_62 = lean_ctor_get_uint32(x_9, sizeof(void*)*5 + 4);
x_63 = lean_ctor_get(x_9, 4);
x_64 = lean_ctor_get_uint8(x_9, sizeof(void*)*5 + 8);
lean_inc(x_63);
lean_inc(x_61);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_9);
x_65 = lean_ctor_get(x_10, 0);
lean_inc(x_65);
x_66 = lean_ctor_get(x_10, 1);
lean_inc(x_66);
x_67 = lean_ctor_get_uint8(x_10, sizeof(void*)*2);
x_68 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 1);
x_69 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 2);
x_70 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 3);
x_71 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 4);
x_72 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 5);
x_73 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 6);
x_74 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 7);
x_75 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 8);
x_76 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 10);
x_77 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 11);
x_78 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 12);
x_79 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 13);
x_80 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 14);
x_81 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 15);
x_82 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 16);
x_83 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 17);
x_84 = lean_ctor_get_uint8(x_10, sizeof(void*)*2 + 18);
if (lean_is_exclusive(x_10)) {
 lean_ctor_release(x_10, 0);
 lean_ctor_release(x_10, 1);
 x_85 = x_10;
} else {
 lean_dec_ref(x_10);
 x_85 = lean_box(0);
}
x_86 = 0;
if (lean_is_scalar(x_85)) {
 x_87 = lean_alloc_ctor(0, 2, 19);
} else {
 x_87 = x_85;
}
lean_ctor_set(x_87, 0, x_65);
lean_ctor_set(x_87, 1, x_66);
lean_ctor_set_uint8(x_87, sizeof(void*)*2, x_67);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 1, x_68);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 2, x_69);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 3, x_70);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 4, x_71);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 5, x_72);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 6, x_73);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 7, x_74);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 8, x_75);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 9, x_86);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 10, x_76);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 11, x_77);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 12, x_78);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 13, x_79);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 14, x_80);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 15, x_81);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 16, x_82);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 17, x_83);
lean_ctor_set_uint8(x_87, sizeof(void*)*2 + 18, x_84);
x_88 = lean_alloc_ctor(0, 5, 9);
lean_ctor_set(x_88, 0, x_87);
lean_ctor_set(x_88, 1, x_59);
lean_ctor_set(x_88, 2, x_60);
lean_ctor_set(x_88, 3, x_61);
lean_ctor_set(x_88, 4, x_63);
lean_ctor_set_uint32(x_88, sizeof(void*)*5, x_58);
lean_ctor_set_uint32(x_88, sizeof(void*)*5 + 4, x_62);
lean_ctor_set_uint8(x_88, sizeof(void*)*5 + 8, x_64);
lean_inc(x_1);
x_89 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_11);
if (lean_obj_tag(x_89) == 0)
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; 
x_90 = lean_ctor_get(x_89, 0);
lean_inc(x_90);
x_91 = lean_ctor_get(x_89, 1);
lean_inc(x_91);
lean_dec(x_89);
x_92 = l_Lean_ConstantInfo_type(x_90);
lean_dec(x_90);
x_93 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4), 8, 2);
lean_closure_set(x_93, 0, x_1);
lean_closure_set(x_93, 1, x_88);
x_94 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos(x_92, x_93, x_3, x_4, x_5, x_6, x_91);
return x_94;
}
else
{
lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; 
lean_dec(x_88);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_95 = lean_ctor_get(x_89, 0);
lean_inc(x_95);
x_96 = lean_ctor_get(x_89, 1);
lean_inc(x_96);
if (lean_is_exclusive(x_89)) {
 lean_ctor_release(x_89, 0);
 lean_ctor_release(x_89, 1);
 x_97 = x_89;
} else {
 lean_dec_ref(x_89);
 x_97 = lean_box(0);
}
if (lean_is_scalar(x_97)) {
 x_98 = lean_alloc_ctor(1, 2, 0);
} else {
 x_98 = x_97;
}
lean_ctor_set(x_98, 0, x_95);
lean_ctor_set(x_98, 1, x_96);
return x_98;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isSimpTheorem(x_1, x_2, x_3, x_4, x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
uint8_t x_10; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_10 = !lean_is_exclusive(x_7);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_7, 0);
lean_dec(x_11);
x_12 = lean_box(0);
lean_ctor_set(x_7, 0, x_12);
return x_7;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_7, 1);
lean_inc(x_13);
lean_dec(x_7);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__5(x_1, x_17, x_2, x_3, x_4, x_5, x_16);
return x_18;
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("All left-hand sides of simp lemmas are in simp-normal form.", 59, 59);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("SOME SIMP LEMMAS ARE NOT IN SIMP-NORMAL FORM.\nsee note [simp-normal form] for tips how to debug this.\nhttps://leanprover-community.github.io/mathlib_docs/notes.html#simp-normal%20form", 183, 183);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpNF___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpNF___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_simpNF___closed__7;
x_2 = l_Batteries_Tactic_Lint_simpNF___closed__3;
x_3 = l_Batteries_Tactic_Lint_simpNF___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpNF() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_simpNF___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; uint8_t x_16; lean_object* x_17; 
x_15 = lean_unbox(x_3);
lean_dec(x_3);
x_16 = lean_unbox(x_6);
lean_dec(x_6);
x_17 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3(x_1, x_2, x_15, x_4, x_5, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_9);
lean_dec(x_5);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Left-hand side has variable as head symbol: ", 44, 44);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = l_Lean_MessageData_ofExpr(x_1);
x_9 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__2;
x_10 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
x_11 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6;
x_12 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
x_13 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_13, 0, x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_7);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_8 = l_Lean_Meta_whnfR(x_7, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_8) == 0)
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
x_12 = l_Lean_Expr_getAppFn(x_10);
lean_dec(x_10);
x_13 = l_Lean_Expr_isFVar(x_12);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_12);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_14 = lean_box(0);
lean_ctor_set(x_8, 0, x_14);
return x_8;
}
else
{
lean_object* x_15; lean_object* x_16; 
lean_free_object(x_8);
x_15 = lean_box(0);
x_16 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1(x_12, x_15, x_2, x_3, x_4, x_5, x_11);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_16;
}
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_17 = lean_ctor_get(x_8, 0);
x_18 = lean_ctor_get(x_8, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_8);
x_19 = l_Lean_Expr_getAppFn(x_17);
lean_dec(x_17);
x_20 = l_Lean_Expr_isFVar(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
lean_dec(x_19);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_21 = lean_box(0);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_18);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_box(0);
x_24 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1(x_19, x_23, x_2, x_3, x_4, x_5, x_18);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_24;
}
}
}
else
{
uint8_t x_25; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_25 = !lean_is_exclusive(x_8);
if (x_25 == 0)
{
return x_8;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_8, 0);
x_27 = lean_ctor_get(x_8, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_8);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__2), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Lean_ConstantInfo_type(x_9);
lean_dec(x_9);
x_12 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___closed__1;
x_13 = l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos(x_11, x_12, x_3, x_4, x_5, x_6, x_10);
return x_13;
}
else
{
uint8_t x_14; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_14 = !lean_is_exclusive(x_8);
if (x_14 == 0)
{
return x_8;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_8, 0);
x_16 = lean_ctor_get(x_8, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_8);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isSimpTheorem(x_1, x_2, x_3, x_4, x_5, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
uint8_t x_10; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_10 = !lean_is_exclusive(x_7);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_7, 0);
lean_dec(x_11);
x_12 = lean_box(0);
lean_ctor_set(x_7, 0, x_12);
return x_7;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_7, 1);
lean_inc(x_13);
lean_dec(x_7);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3(x_1, x_17, x_2, x_3, x_4, x_5, x_16);
return x_18;
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No left-hand sides of a simp lemma has a variable as head symbol.", 65, 65);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("LEFT-HAND SIDE HAS VARIABLE AS HEAD SYMBOL.\nSome simp lemmas have a variable as head symbol of the left-hand side (after whnfR):", 128, 128);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpVarHead___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___closed__7;
x_2 = l_Batteries_Tactic_Lint_simpVarHead___closed__3;
x_3 = l_Batteries_Tactic_Lint_simpVarHead___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpVarHead() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_simpVarHead___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Iff", 3, 3);
return x_1;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 5)
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_2) == 5)
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_2, 0);
switch (lean_obj_tag(x_3)) {
case 4:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 0);
if (lean_obj_tag(x_4) == 1)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_4, 0);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_6 = lean_ctor_get(x_1, 1);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_4, 1);
x_9 = l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1;
x_10 = lean_string_dec_eq(x_8, x_9);
if (x_10 == 0)
{
lean_object* x_11; 
x_11 = lean_box(0);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
lean_inc(x_6);
lean_inc(x_7);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_7);
lean_ctor_set(x_12, 1, x_6);
x_13 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_13, 0, x_12);
return x_13;
}
}
else
{
lean_object* x_14; 
x_14 = lean_box(0);
return x_14;
}
}
else
{
lean_object* x_15; 
x_15 = lean_box(0);
return x_15;
}
}
case 5:
{
lean_object* x_16; 
x_16 = lean_ctor_get(x_3, 0);
if (lean_obj_tag(x_16) == 4)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_16, 0);
if (lean_obj_tag(x_17) == 1)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_17, 0);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_19 = lean_ctor_get(x_1, 1);
x_20 = lean_ctor_get(x_2, 1);
x_21 = lean_ctor_get(x_17, 1);
x_22 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1;
x_23 = lean_string_dec_eq(x_21, x_22);
if (x_23 == 0)
{
lean_object* x_24; 
x_24 = lean_box(0);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; 
lean_inc(x_19);
lean_inc(x_20);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_20);
lean_ctor_set(x_25, 1, x_19);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_25);
return x_26;
}
}
else
{
lean_object* x_27; 
x_27 = lean_box(0);
return x_27;
}
}
else
{
lean_object* x_28; 
x_28 = lean_box(0);
return x_28;
}
}
else
{
lean_object* x_29; 
x_29 = lean_box(0);
return x_29;
}
}
default: 
{
lean_object* x_30; 
x_30 = lean_box(0);
return x_30;
}
}
}
else
{
lean_object* x_31; 
x_31 = lean_box(0);
return x_31;
}
}
else
{
lean_object* x_32; 
x_32 = lean_box(0);
return x_32;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAtAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_array_get_size(x_1);
x_7 = lean_nat_dec_lt(x_4, x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_object* x_8; 
lean_dec(x_4);
x_8 = lean_box(0);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_array_fget(x_1, x_4);
x_10 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_5, x_9);
lean_dec(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_add(x_4, x_11);
lean_dec(x_4);
x_3 = lean_box(0);
x_4 = x_12;
goto _start;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_array_fget(x_2, x_4);
lean_dec(x_4);
x_15 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_15, 0, x_14);
return x_15;
}
}
}
}
static size_t _init_l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__1() {
_start:
{
size_t x_1; size_t x_2; size_t x_3; 
x_1 = 1;
x_2 = 5;
x_3 = lean_usize_shift_left(x_1, x_2);
return x_3;
}
}
static size_t _init_l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2() {
_start:
{
size_t x_1; size_t x_2; size_t x_3; 
x_1 = 1;
x_2 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__1;
x_3 = lean_usize_sub(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4(lean_object* x_1, size_t x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
lean_object* x_5; size_t x_6; size_t x_7; size_t x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = 5;
x_7 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2;
x_8 = lean_usize_land(x_2, x_7);
x_9 = lean_usize_to_nat(x_8);
x_10 = lean_box(2);
x_11 = lean_array_get(x_10, x_5, x_9);
lean_dec(x_9);
lean_dec(x_5);
switch (lean_obj_tag(x_11)) {
case 0:
{
lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_3, x_12);
lean_dec(x_12);
if (x_14 == 0)
{
lean_object* x_15; 
lean_dec(x_13);
lean_free_object(x_1);
x_15 = lean_box(0);
return x_15;
}
else
{
lean_ctor_set_tag(x_1, 1);
lean_ctor_set(x_1, 0, x_13);
return x_1;
}
}
case 1:
{
lean_object* x_16; size_t x_17; 
lean_free_object(x_1);
x_16 = lean_ctor_get(x_11, 0);
lean_inc(x_16);
lean_dec(x_11);
x_17 = lean_usize_shift_right(x_2, x_6);
x_1 = x_16;
x_2 = x_17;
goto _start;
}
default: 
{
lean_object* x_19; 
lean_free_object(x_1);
x_19 = lean_box(0);
return x_19;
}
}
}
else
{
lean_object* x_20; size_t x_21; size_t x_22; size_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_20 = lean_ctor_get(x_1, 0);
lean_inc(x_20);
lean_dec(x_1);
x_21 = 5;
x_22 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2;
x_23 = lean_usize_land(x_2, x_22);
x_24 = lean_usize_to_nat(x_23);
x_25 = lean_box(2);
x_26 = lean_array_get(x_25, x_20, x_24);
lean_dec(x_24);
lean_dec(x_20);
switch (lean_obj_tag(x_26)) {
case 0:
{
lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_26, 1);
lean_inc(x_28);
lean_dec(x_26);
x_29 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_3, x_27);
lean_dec(x_27);
if (x_29 == 0)
{
lean_object* x_30; 
lean_dec(x_28);
x_30 = lean_box(0);
return x_30;
}
else
{
lean_object* x_31; 
x_31 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_31, 0, x_28);
return x_31;
}
}
case 1:
{
lean_object* x_32; size_t x_33; 
x_32 = lean_ctor_get(x_26, 0);
lean_inc(x_32);
lean_dec(x_26);
x_33 = lean_usize_shift_right(x_2, x_21);
x_1 = x_32;
x_2 = x_33;
goto _start;
}
default: 
{
lean_object* x_35; 
x_35 = lean_box(0);
return x_35;
}
}
}
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_36 = lean_ctor_get(x_1, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_1, 1);
lean_inc(x_37);
lean_dec(x_1);
x_38 = lean_unsigned_to_nat(0u);
x_39 = l_Lean_PersistentHashMap_findAtAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__5(x_36, x_37, lean_box(0), x_38, x_3);
lean_dec(x_37);
lean_dec(x_36);
return x_39;
}
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
uint64_t x_3; size_t x_4; lean_object* x_5; 
x_3 = l_Lean_Meta_DiscrTree_Key_hash(x_2);
x_4 = lean_uint64_to_usize(x_3);
x_5 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4(x_1, x_4, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_array_get_size(x_2);
x_8 = lean_nat_dec_lt(x_5, x_7);
lean_dec(x_7);
if (x_8 == 0)
{
lean_dec(x_5);
return x_6;
}
else
{
lean_object* x_9; lean_object* x_10; uint64_t x_11; size_t x_12; size_t x_13; size_t x_14; size_t x_15; size_t x_16; size_t x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_9 = lean_array_fget(x_2, x_5);
x_10 = lean_array_fget(x_3, x_5);
x_11 = l_Lean_Meta_DiscrTree_Key_hash(x_9);
x_12 = lean_uint64_to_usize(x_11);
x_13 = 1;
x_14 = lean_usize_sub(x_1, x_13);
x_15 = 5;
x_16 = lean_usize_mul(x_15, x_14);
x_17 = lean_usize_shift_right(x_12, x_16);
x_18 = lean_unsigned_to_nat(1u);
x_19 = lean_nat_add(x_5, x_18);
lean_dec(x_5);
x_20 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(x_6, x_17, x_1, x_9, x_10);
x_4 = lean_box(0);
x_5 = x_19;
x_6 = x_20;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
x_7 = lean_array_get_size(x_5);
x_8 = lean_nat_dec_lt(x_2, x_7);
lean_dec(x_7);
if (x_8 == 0)
{
uint8_t x_9; 
lean_dec(x_2);
x_9 = !lean_is_exclusive(x_1);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_1, 1);
lean_dec(x_10);
x_11 = lean_ctor_get(x_1, 0);
lean_dec(x_11);
x_12 = lean_array_push(x_5, x_3);
x_13 = lean_array_push(x_6, x_4);
lean_ctor_set(x_1, 1, x_13);
lean_ctor_set(x_1, 0, x_12);
return x_1;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_1);
x_14 = lean_array_push(x_5, x_3);
x_15 = lean_array_push(x_6, x_4);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
else
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_array_fget(x_5, x_2);
x_18 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_3, x_17);
lean_dec(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
lean_dec(x_6);
lean_dec(x_5);
x_19 = lean_unsigned_to_nat(1u);
x_20 = lean_nat_add(x_2, x_19);
lean_dec(x_2);
x_2 = x_20;
goto _start;
}
else
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_1);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_23 = lean_ctor_get(x_1, 1);
lean_dec(x_23);
x_24 = lean_ctor_get(x_1, 0);
lean_dec(x_24);
x_25 = lean_array_fset(x_5, x_2, x_3);
x_26 = lean_array_fset(x_6, x_2, x_4);
lean_dec(x_2);
lean_ctor_set(x_1, 1, x_26);
lean_ctor_set(x_1, 0, x_25);
return x_1;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_1);
x_27 = lean_array_fset(x_5, x_2, x_3);
x_28 = lean_array_fset(x_6, x_2, x_4);
lean_dec(x_2);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
}
}
static lean_object* _init_l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntries(lean_box(0), lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_1);
if (x_6 == 0)
{
lean_object* x_7; size_t x_8; size_t x_9; size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_7 = lean_ctor_get(x_1, 0);
x_8 = 1;
x_9 = 5;
x_10 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2;
x_11 = lean_usize_land(x_2, x_10);
x_12 = lean_usize_to_nat(x_11);
x_13 = lean_array_get_size(x_7);
x_14 = lean_nat_dec_lt(x_12, x_13);
lean_dec(x_13);
if (x_14 == 0)
{
lean_dec(x_12);
lean_dec(x_5);
lean_dec(x_4);
return x_1;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_array_fget(x_7, x_12);
x_16 = lean_box(0);
x_17 = lean_array_fset(x_7, x_12, x_16);
switch (lean_obj_tag(x_15)) {
case 0:
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_15);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_19 = lean_ctor_get(x_15, 0);
x_20 = lean_ctor_get(x_15, 1);
x_21 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_4, x_19);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
lean_free_object(x_15);
x_22 = l_Lean_PersistentHashMap_mkCollisionNode___rarg(x_19, x_20, x_4, x_5);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_22);
x_24 = lean_array_fset(x_17, x_12, x_23);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_24);
return x_1;
}
else
{
lean_object* x_25; 
lean_dec(x_20);
lean_dec(x_19);
lean_ctor_set(x_15, 1, x_5);
lean_ctor_set(x_15, 0, x_4);
x_25 = lean_array_fset(x_17, x_12, x_15);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_25);
return x_1;
}
}
else
{
lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_26 = lean_ctor_get(x_15, 0);
x_27 = lean_ctor_get(x_15, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_15);
x_28 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_4, x_26);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = l_Lean_PersistentHashMap_mkCollisionNode___rarg(x_26, x_27, x_4, x_5);
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_29);
x_31 = lean_array_fset(x_17, x_12, x_30);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_31);
return x_1;
}
else
{
lean_object* x_32; lean_object* x_33; 
lean_dec(x_27);
lean_dec(x_26);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_4);
lean_ctor_set(x_32, 1, x_5);
x_33 = lean_array_fset(x_17, x_12, x_32);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_33);
return x_1;
}
}
}
case 1:
{
uint8_t x_34; 
x_34 = !lean_is_exclusive(x_15);
if (x_34 == 0)
{
lean_object* x_35; size_t x_36; size_t x_37; lean_object* x_38; lean_object* x_39; 
x_35 = lean_ctor_get(x_15, 0);
x_36 = lean_usize_shift_right(x_2, x_9);
x_37 = lean_usize_add(x_3, x_8);
x_38 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(x_35, x_36, x_37, x_4, x_5);
lean_ctor_set(x_15, 0, x_38);
x_39 = lean_array_fset(x_17, x_12, x_15);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_39);
return x_1;
}
else
{
lean_object* x_40; size_t x_41; size_t x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_40 = lean_ctor_get(x_15, 0);
lean_inc(x_40);
lean_dec(x_15);
x_41 = lean_usize_shift_right(x_2, x_9);
x_42 = lean_usize_add(x_3, x_8);
x_43 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(x_40, x_41, x_42, x_4, x_5);
x_44 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_44, 0, x_43);
x_45 = lean_array_fset(x_17, x_12, x_44);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_45);
return x_1;
}
}
default: 
{
lean_object* x_46; lean_object* x_47; 
x_46 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_46, 0, x_4);
lean_ctor_set(x_46, 1, x_5);
x_47 = lean_array_fset(x_17, x_12, x_46);
lean_dec(x_12);
lean_ctor_set(x_1, 0, x_47);
return x_1;
}
}
}
}
else
{
lean_object* x_48; size_t x_49; size_t x_50; size_t x_51; size_t x_52; lean_object* x_53; lean_object* x_54; uint8_t x_55; 
x_48 = lean_ctor_get(x_1, 0);
lean_inc(x_48);
lean_dec(x_1);
x_49 = 1;
x_50 = 5;
x_51 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2;
x_52 = lean_usize_land(x_2, x_51);
x_53 = lean_usize_to_nat(x_52);
x_54 = lean_array_get_size(x_48);
x_55 = lean_nat_dec_lt(x_53, x_54);
lean_dec(x_54);
if (x_55 == 0)
{
lean_object* x_56; 
lean_dec(x_53);
lean_dec(x_5);
lean_dec(x_4);
x_56 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_56, 0, x_48);
return x_56;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_57 = lean_array_fget(x_48, x_53);
x_58 = lean_box(0);
x_59 = lean_array_fset(x_48, x_53, x_58);
switch (lean_obj_tag(x_57)) {
case 0:
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; uint8_t x_63; 
x_60 = lean_ctor_get(x_57, 0);
lean_inc(x_60);
x_61 = lean_ctor_get(x_57, 1);
lean_inc(x_61);
if (lean_is_exclusive(x_57)) {
 lean_ctor_release(x_57, 0);
 lean_ctor_release(x_57, 1);
 x_62 = x_57;
} else {
 lean_dec_ref(x_57);
 x_62 = lean_box(0);
}
x_63 = l___private_Lean_Meta_DiscrTreeTypes_0__Lean_Meta_DiscrTree_beqKey____x40_Lean_Meta_DiscrTreeTypes___hyg_101_(x_4, x_60);
if (x_63 == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
lean_dec(x_62);
x_64 = l_Lean_PersistentHashMap_mkCollisionNode___rarg(x_60, x_61, x_4, x_5);
x_65 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_65, 0, x_64);
x_66 = lean_array_fset(x_59, x_53, x_65);
lean_dec(x_53);
x_67 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_67, 0, x_66);
return x_67;
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; 
lean_dec(x_61);
lean_dec(x_60);
if (lean_is_scalar(x_62)) {
 x_68 = lean_alloc_ctor(0, 2, 0);
} else {
 x_68 = x_62;
}
lean_ctor_set(x_68, 0, x_4);
lean_ctor_set(x_68, 1, x_5);
x_69 = lean_array_fset(x_59, x_53, x_68);
lean_dec(x_53);
x_70 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_70, 0, x_69);
return x_70;
}
}
case 1:
{
lean_object* x_71; lean_object* x_72; size_t x_73; size_t x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_71 = lean_ctor_get(x_57, 0);
lean_inc(x_71);
if (lean_is_exclusive(x_57)) {
 lean_ctor_release(x_57, 0);
 x_72 = x_57;
} else {
 lean_dec_ref(x_57);
 x_72 = lean_box(0);
}
x_73 = lean_usize_shift_right(x_2, x_50);
x_74 = lean_usize_add(x_3, x_49);
x_75 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(x_71, x_73, x_74, x_4, x_5);
if (lean_is_scalar(x_72)) {
 x_76 = lean_alloc_ctor(1, 1, 0);
} else {
 x_76 = x_72;
}
lean_ctor_set(x_76, 0, x_75);
x_77 = lean_array_fset(x_59, x_53, x_76);
lean_dec(x_53);
x_78 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_78, 0, x_77);
return x_78;
}
default: 
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_79 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_79, 0, x_4);
lean_ctor_set(x_79, 1, x_5);
x_80 = lean_array_fset(x_59, x_53, x_79);
lean_dec(x_53);
x_81 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_81, 0, x_80);
return x_81;
}
}
}
}
}
else
{
uint8_t x_82; 
x_82 = !lean_is_exclusive(x_1);
if (x_82 == 0)
{
lean_object* x_83; lean_object* x_84; size_t x_85; uint8_t x_86; 
x_83 = lean_unsigned_to_nat(0u);
x_84 = l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__9(x_1, x_83, x_4, x_5);
x_85 = 7;
x_86 = lean_usize_dec_le(x_85, x_3);
if (x_86 == 0)
{
lean_object* x_87; lean_object* x_88; uint8_t x_89; 
x_87 = l_Lean_PersistentHashMap_getCollisionNodeSize___rarg(x_84);
x_88 = lean_unsigned_to_nat(4u);
x_89 = lean_nat_dec_lt(x_87, x_88);
lean_dec(x_87);
if (x_89 == 0)
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_90 = lean_ctor_get(x_84, 0);
lean_inc(x_90);
x_91 = lean_ctor_get(x_84, 1);
lean_inc(x_91);
lean_dec(x_84);
x_92 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1;
x_93 = l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8(x_3, x_90, x_91, lean_box(0), x_83, x_92);
lean_dec(x_91);
lean_dec(x_90);
return x_93;
}
else
{
return x_84;
}
}
else
{
return x_84;
}
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; size_t x_99; uint8_t x_100; 
x_94 = lean_ctor_get(x_1, 0);
x_95 = lean_ctor_get(x_1, 1);
lean_inc(x_95);
lean_inc(x_94);
lean_dec(x_1);
x_96 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_96, 0, x_94);
lean_ctor_set(x_96, 1, x_95);
x_97 = lean_unsigned_to_nat(0u);
x_98 = l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__9(x_96, x_97, x_4, x_5);
x_99 = 7;
x_100 = lean_usize_dec_le(x_99, x_3);
if (x_100 == 0)
{
lean_object* x_101; lean_object* x_102; uint8_t x_103; 
x_101 = l_Lean_PersistentHashMap_getCollisionNodeSize___rarg(x_98);
x_102 = lean_unsigned_to_nat(4u);
x_103 = lean_nat_dec_lt(x_101, x_102);
lean_dec(x_101);
if (x_103 == 0)
{
lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; 
x_104 = lean_ctor_get(x_98, 0);
lean_inc(x_104);
x_105 = lean_ctor_get(x_98, 1);
lean_inc(x_105);
lean_dec(x_98);
x_106 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1;
x_107 = l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8(x_3, x_104, x_105, lean_box(0), x_97, x_106);
lean_dec(x_105);
lean_dec(x_104);
return x_107;
}
else
{
return x_98;
}
}
else
{
return x_98;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint64_t x_4; size_t x_5; size_t x_6; lean_object* x_7; 
x_4 = l_Lean_Meta_DiscrTree_Key_hash(x_2);
x_5 = lean_uint64_to_usize(x_4);
x_6 = 1;
x_7 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(x_1, x_5, x_6, x_2, x_3);
return x_7;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_array_get_size(x_1);
x_5 = lean_nat_dec_lt(x_3, x_4);
lean_dec(x_4);
if (x_5 == 0)
{
lean_object* x_6; 
x_6 = lean_array_push(x_1, x_2);
return x_6;
}
else
{
lean_object* x_7; 
x_7 = lean_array_fset(x_1, x_3, x_2);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l___private_Init_Data_Array_BinSearch_0__Array_binInsertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__13(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_9 = lean_nat_add(x_7, x_8);
x_10 = lean_unsigned_to_nat(2u);
x_11 = lean_nat_div(x_9, x_10);
lean_dec(x_9);
lean_inc(x_6);
x_12 = lean_array_get(x_6, x_5, x_11);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_6, 0);
lean_inc(x_14);
x_15 = l_Lean_Meta_DiscrTree_Key_lt(x_13, x_14);
if (x_15 == 0)
{
uint8_t x_16; 
lean_dec(x_8);
x_16 = l_Lean_Meta_DiscrTree_Key_lt(x_14, x_13);
lean_dec(x_13);
lean_dec(x_14);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
lean_dec(x_7);
lean_dec(x_6);
x_17 = lean_array_get_size(x_5);
x_18 = lean_nat_dec_lt(x_11, x_17);
lean_dec(x_17);
if (x_18 == 0)
{
lean_dec(x_11);
lean_dec(x_4);
lean_dec(x_2);
return x_5;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_19 = lean_array_fget(x_5, x_11);
x_20 = lean_box(0);
x_21 = lean_array_fset(x_5, x_11, x_20);
x_22 = !lean_is_exclusive(x_19);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_23 = lean_ctor_get(x_19, 1);
x_24 = lean_ctor_get(x_19, 0);
lean_dec(x_24);
x_25 = lean_unsigned_to_nat(1u);
x_26 = lean_nat_add(x_3, x_25);
x_27 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_26, x_23);
lean_dec(x_26);
lean_ctor_set(x_19, 1, x_27);
lean_ctor_set(x_19, 0, x_4);
x_28 = lean_array_fset(x_21, x_11, x_19);
lean_dec(x_11);
return x_28;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_29 = lean_ctor_get(x_19, 1);
lean_inc(x_29);
lean_dec(x_19);
x_30 = lean_unsigned_to_nat(1u);
x_31 = lean_nat_add(x_3, x_30);
x_32 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_31, x_29);
lean_dec(x_31);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_4);
lean_ctor_set(x_33, 1, x_32);
x_34 = lean_array_fset(x_21, x_11, x_33);
lean_dec(x_11);
return x_34;
}
}
}
else
{
x_8 = x_11;
goto _start;
}
}
else
{
uint8_t x_36; 
lean_dec(x_14);
lean_dec(x_13);
x_36 = lean_nat_dec_eq(x_11, x_7);
if (x_36 == 0)
{
lean_dec(x_7);
x_7 = x_11;
goto _start;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_6);
x_38 = lean_unsigned_to_nat(1u);
x_39 = lean_nat_add(x_3, x_38);
x_40 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(x_1, x_2, x_39);
lean_dec(x_39);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_4);
lean_ctor_set(x_41, 1, x_40);
x_42 = lean_nat_add(x_7, x_38);
lean_dec(x_7);
x_43 = l_Array_insertAt_x21___rarg(x_5, x_42, x_41);
lean_dec(x_42);
return x_43;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = l_Array_isEmpty___rarg(x_5);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_8 = lean_unsigned_to_nat(0u);
lean_inc(x_6);
x_9 = lean_array_get(x_6, x_5, x_8);
x_10 = lean_ctor_get(x_6, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
x_12 = l_Lean_Meta_DiscrTree_Key_lt(x_10, x_11);
if (x_12 == 0)
{
uint8_t x_13; 
x_13 = l_Lean_Meta_DiscrTree_Key_lt(x_11, x_10);
lean_dec(x_11);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
lean_dec(x_10);
lean_dec(x_6);
x_14 = lean_array_get_size(x_5);
x_15 = lean_nat_dec_lt(x_8, x_14);
lean_dec(x_14);
if (x_15 == 0)
{
lean_dec(x_4);
lean_dec(x_2);
return x_5;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_array_fget(x_5, x_8);
x_17 = lean_box(0);
x_18 = lean_array_fset(x_5, x_8, x_17);
x_19 = !lean_is_exclusive(x_16);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_20 = lean_ctor_get(x_16, 1);
x_21 = lean_ctor_get(x_16, 0);
lean_dec(x_21);
x_22 = lean_unsigned_to_nat(1u);
x_23 = lean_nat_add(x_3, x_22);
x_24 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_23, x_20);
lean_dec(x_23);
lean_ctor_set(x_16, 1, x_24);
lean_ctor_set(x_16, 0, x_4);
x_25 = lean_array_fset(x_18, x_8, x_16);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_26 = lean_ctor_get(x_16, 1);
lean_inc(x_26);
lean_dec(x_16);
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_3, x_27);
x_29 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_28, x_26);
lean_dec(x_28);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_4);
lean_ctor_set(x_30, 1, x_29);
x_31 = lean_array_fset(x_18, x_8, x_30);
return x_31;
}
}
}
else
{
lean_object* x_32; lean_object* x_33; uint8_t x_34; 
lean_inc(x_6);
x_32 = l_Array_back___rarg(x_6, x_5);
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
lean_dec(x_32);
x_34 = l_Lean_Meta_DiscrTree_Key_lt(x_33, x_10);
if (x_34 == 0)
{
uint8_t x_35; 
x_35 = l_Lean_Meta_DiscrTree_Key_lt(x_10, x_33);
lean_dec(x_33);
lean_dec(x_10);
if (x_35 == 0)
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; 
lean_dec(x_6);
x_36 = lean_array_get_size(x_5);
x_37 = lean_unsigned_to_nat(1u);
x_38 = lean_nat_sub(x_36, x_37);
x_39 = lean_nat_dec_lt(x_38, x_36);
lean_dec(x_36);
if (x_39 == 0)
{
lean_dec(x_38);
lean_dec(x_4);
lean_dec(x_2);
return x_5;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; 
x_40 = lean_array_fget(x_5, x_38);
x_41 = lean_box(0);
x_42 = lean_array_fset(x_5, x_38, x_41);
x_43 = !lean_is_exclusive(x_40);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_44 = lean_ctor_get(x_40, 1);
x_45 = lean_ctor_get(x_40, 0);
lean_dec(x_45);
x_46 = lean_nat_add(x_3, x_37);
x_47 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_46, x_44);
lean_dec(x_46);
lean_ctor_set(x_40, 1, x_47);
lean_ctor_set(x_40, 0, x_4);
x_48 = lean_array_fset(x_42, x_38, x_40);
lean_dec(x_38);
return x_48;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_49 = lean_ctor_get(x_40, 1);
lean_inc(x_49);
lean_dec(x_40);
x_50 = lean_nat_add(x_3, x_37);
x_51 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_50, x_49);
lean_dec(x_50);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_4);
lean_ctor_set(x_52, 1, x_51);
x_53 = lean_array_fset(x_42, x_38, x_52);
lean_dec(x_38);
return x_53;
}
}
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; 
x_54 = lean_array_get_size(x_5);
x_55 = lean_unsigned_to_nat(1u);
x_56 = lean_nat_sub(x_54, x_55);
lean_dec(x_54);
x_57 = l___private_Init_Data_Array_BinSearch_0__Array_binInsertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__13(x_1, x_2, x_3, x_4, x_5, x_6, x_8, x_56);
return x_57;
}
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
lean_dec(x_33);
lean_dec(x_10);
lean_dec(x_6);
x_58 = lean_unsigned_to_nat(1u);
x_59 = lean_nat_add(x_3, x_58);
x_60 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(x_1, x_2, x_59);
lean_dec(x_59);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_4);
lean_ctor_set(x_61, 1, x_60);
x_62 = lean_array_push(x_5, x_61);
return x_62;
}
}
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_6);
x_63 = lean_unsigned_to_nat(1u);
x_64 = lean_nat_add(x_3, x_63);
x_65 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(x_1, x_2, x_64);
lean_dec(x_64);
x_66 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_66, 0, x_4);
lean_ctor_set(x_66, 1, x_65);
x_67 = l_Array_insertAt_x21___rarg(x_5, x_8, x_66);
return x_67;
}
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
lean_dec(x_6);
x_68 = lean_unsigned_to_nat(1u);
x_69 = lean_nat_add(x_3, x_68);
x_70 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(x_1, x_2, x_69);
lean_dec(x_69);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_4);
lean_ctor_set(x_71, 1, x_70);
x_72 = lean_array_push(x_5, x_71);
return x_72;
}
}
}
static lean_object* _init_l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_4, 0);
x_7 = lean_ctor_get(x_4, 1);
x_8 = lean_array_get_size(x_1);
x_9 = lean_nat_dec_lt(x_3, x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_unsigned_to_nat(0u);
x_11 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11(x_6, x_2, x_10);
lean_ctor_set(x_4, 0, x_11);
return x_4;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_array_fget(x_1, x_3);
x_13 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1;
lean_inc(x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
x_15 = l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12(x_1, x_2, x_3, x_12, x_7, x_14);
lean_ctor_set(x_4, 1, x_15);
return x_4;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_4, 0);
x_17 = lean_ctor_get(x_4, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_4);
x_18 = lean_array_get_size(x_1);
x_19 = lean_nat_dec_lt(x_3, x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_unsigned_to_nat(0u);
x_21 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11(x_16, x_2, x_20);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_17);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_23 = lean_array_fget(x_1, x_3);
x_24 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1;
lean_inc(x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
x_26 = l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12(x_1, x_2, x_3, x_23, x_17, x_25);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_16);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
static lean_object* _init_l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Meta_DiscrTree_instInhabited(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14___closed__1;
x_3 = lean_panic_fn(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean.Meta.DiscrTree", 19, 19);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean.Meta.DiscrTree.insertCore", 30, 30);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("invalid key sequence", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__1;
x_2 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__2;
x_3 = lean_unsigned_to_nat(488u);
x_4 = lean_unsigned_to_nat(23u);
x_5 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__3;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = l_Array_isEmpty___rarg(x_2);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_5 = lean_array_get_size(x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_lt(x_6, x_5);
lean_dec(x_5);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = l_Lean_Meta_DiscrTree_instInhabitedKey;
x_9 = l_outOfBounds___rarg(x_8);
lean_inc(x_1);
x_10 = l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3(x_1, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_unsigned_to_nat(1u);
x_12 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(x_2, x_3, x_11);
x_13 = l_Lean_PersistentHashMap_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__6(x_1, x_9, x_12);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_10, 0);
lean_inc(x_14);
lean_dec(x_10);
x_15 = lean_unsigned_to_nat(1u);
x_16 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_2, x_3, x_15, x_14);
x_17 = l_Lean_PersistentHashMap_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__6(x_1, x_9, x_16);
return x_17;
}
}
else
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_array_fget(x_2, x_6);
lean_inc(x_1);
x_19 = l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3(x_1, x_18);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_unsigned_to_nat(1u);
x_21 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_createNodes___rarg(x_2, x_3, x_20);
x_22 = l_Lean_PersistentHashMap_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__6(x_1, x_18, x_21);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_23 = lean_ctor_get(x_19, 0);
lean_inc(x_23);
lean_dec(x_19);
x_24 = lean_unsigned_to_nat(1u);
x_25 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_2, x_3, x_24, x_23);
x_26 = l_Lean_PersistentHashMap_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__6(x_1, x_18, x_25);
return x_26;
}
}
}
else
{
lean_object* x_27; lean_object* x_28; 
lean_dec(x_3);
lean_dec(x_1);
x_27 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__4;
x_28 = l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14(x_27);
return x_28;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_Meta_DiscrTree_mkPath(x_2, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2(x_1, x_13, x_3);
lean_dec(x_13);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
x_17 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2(x_1, x_15, x_3);
lean_dec(x_15);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
else
{
uint8_t x_19; 
lean_dec(x_3);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_11);
if (x_19 == 0)
{
return x_11;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_11, 0);
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_11);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("should not be marked simp", 25, 25);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__2;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__3;
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___boxed), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_10 = l_Lean_Meta_isExprDefEq(x_1, x_2, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; uint8_t x_12; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_unbox(x_11);
lean_dec(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_3);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_13);
lean_dec(x_10);
x_14 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___closed__1;
x_15 = lean_box(0);
x_16 = lean_apply_6(x_14, x_15, x_5, x_6, x_7, x_8, x_13);
return x_16;
}
else
{
uint8_t x_17; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_17 = !lean_is_exclusive(x_10);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_10, 0);
lean_dec(x_18);
lean_ctor_set(x_10, 0, x_3);
return x_10;
}
else
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_10, 1);
lean_inc(x_19);
lean_dec(x_10);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_3);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
}
else
{
uint8_t x_21; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
x_21 = !lean_is_exclusive(x_10);
if (x_21 == 0)
{
return x_10;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_10, 0);
x_23 = lean_ctor_get(x_10, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_10);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Meta_DiscrTree_empty(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; 
x_11 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___closed__1;
x_12 = lean_box(0);
x_13 = l_Lean_Meta_simpDtConfig;
x_14 = 0;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_15 = l_Lean_Meta_DiscrTree_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__1(x_11, x_1, x_12, x_13, x_14, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_2);
x_18 = l_Lean_Meta_DiscrTree_getMatch___rarg(x_16, x_2, x_13, x_6, x_7, x_8, x_9, x_17);
if (lean_obj_tag(x_18) == 0)
{
uint8_t x_19; 
x_19 = !lean_is_exclusive(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_20 = lean_ctor_get(x_18, 0);
x_21 = lean_ctor_get(x_18, 1);
x_22 = l_Array_isEmpty___rarg(x_20);
lean_dec(x_20);
if (x_22 == 0)
{
lean_object* x_23; 
lean_free_object(x_18);
x_23 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2(x_2, x_3, x_4, x_12, x_6, x_7, x_8, x_9, x_21);
return x_23;
}
else
{
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_ctor_set(x_18, 0, x_4);
return x_18;
}
}
else
{
lean_object* x_24; lean_object* x_25; uint8_t x_26; 
x_24 = lean_ctor_get(x_18, 0);
x_25 = lean_ctor_get(x_18, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_18);
x_26 = l_Array_isEmpty___rarg(x_24);
lean_dec(x_24);
if (x_26 == 0)
{
lean_object* x_27; 
x_27 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2(x_2, x_3, x_4, x_12, x_6, x_7, x_8, x_9, x_25);
return x_27;
}
else
{
lean_object* x_28; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_4);
lean_ctor_set(x_28, 1, x_25);
return x_28;
}
}
}
else
{
uint8_t x_29; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_29 = !lean_is_exclusive(x_18);
if (x_29 == 0)
{
return x_18;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_18, 0);
x_31 = lean_ctor_get(x_18, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_18);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
else
{
uint8_t x_33; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_33 = !lean_is_exclusive(x_15);
if (x_33 == 0)
{
return x_15;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_15, 0);
x_35 = lean_ctor_get(x_15, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_15);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; lean_object* x_13; 
x_12 = 0;
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
x_13 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_1, x_12, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_unbox(x_14);
lean_dec(x_14);
if (x_15 == 0)
{
uint8_t x_16; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_16 = !lean_is_exclusive(x_13);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_13, 0);
lean_dec(x_17);
lean_ctor_set(x_13, 0, x_2);
return x_13;
}
else
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_13, 1);
lean_inc(x_18);
lean_dec(x_13);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_2);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_13, 1);
lean_inc(x_20);
lean_dec(x_13);
x_21 = lean_box(0);
x_22 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3(x_3, x_4, x_5, x_2, x_21, x_7, x_8, x_9, x_10, x_20);
return x_22;
}
}
else
{
uint8_t x_23; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_23 = !lean_is_exclusive(x_13);
if (x_23 == 0)
{
return x_13;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_13, 0);
x_25 = lean_ctor_get(x_13, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_13);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; uint8_t x_11; lean_object* x_12; 
x_9 = lean_box(0);
x_10 = 1;
x_11 = 0;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_12 = l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(x_1, x_10, x_9, x_11, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_35; uint8_t x_36; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_35 = lean_ctor_get(x_14, 1);
lean_inc(x_35);
lean_dec(x_14);
x_36 = !lean_is_exclusive(x_35);
if (x_36 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_37 = lean_ctor_get(x_35, 1);
x_38 = lean_ctor_get(x_35, 0);
lean_dec(x_38);
x_39 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2;
x_40 = lean_unsigned_to_nat(3u);
x_41 = l_Lean_Expr_isAppOfArity(x_37, x_39, x_40);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_42 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1;
x_43 = lean_unsigned_to_nat(2u);
x_44 = l_Lean_Expr_isAppOfArity(x_37, x_42, x_43);
if (x_44 == 0)
{
lean_free_object(x_35);
lean_dec(x_37);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_ctor_set(x_12, 0, x_9);
return x_12;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
lean_free_object(x_12);
x_45 = l_Lean_Expr_appFn_x21(x_37);
x_46 = l_Lean_Expr_appArg_x21(x_45);
lean_dec(x_45);
x_47 = l_Lean_Expr_appArg_x21(x_37);
lean_dec(x_37);
lean_ctor_set(x_35, 1, x_47);
lean_ctor_set(x_35, 0, x_46);
x_16 = x_35;
goto block_34;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
lean_free_object(x_12);
x_48 = l_Lean_Expr_appFn_x21(x_37);
x_49 = l_Lean_Expr_appArg_x21(x_48);
lean_dec(x_48);
x_50 = l_Lean_Expr_appArg_x21(x_37);
lean_dec(x_37);
lean_ctor_set(x_35, 1, x_50);
lean_ctor_set(x_35, 0, x_49);
x_16 = x_35;
goto block_34;
}
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; uint8_t x_54; 
x_51 = lean_ctor_get(x_35, 1);
lean_inc(x_51);
lean_dec(x_35);
x_52 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2;
x_53 = lean_unsigned_to_nat(3u);
x_54 = l_Lean_Expr_isAppOfArity(x_51, x_52, x_53);
if (x_54 == 0)
{
lean_object* x_55; lean_object* x_56; uint8_t x_57; 
x_55 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1;
x_56 = lean_unsigned_to_nat(2u);
x_57 = l_Lean_Expr_isAppOfArity(x_51, x_55, x_56);
if (x_57 == 0)
{
lean_dec(x_51);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_ctor_set(x_12, 0, x_9);
return x_12;
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
lean_free_object(x_12);
x_58 = l_Lean_Expr_appFn_x21(x_51);
x_59 = l_Lean_Expr_appArg_x21(x_58);
lean_dec(x_58);
x_60 = l_Lean_Expr_appArg_x21(x_51);
lean_dec(x_51);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
x_16 = x_61;
goto block_34;
}
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
lean_free_object(x_12);
x_62 = l_Lean_Expr_appFn_x21(x_51);
x_63 = l_Lean_Expr_appArg_x21(x_62);
lean_dec(x_62);
x_64 = l_Lean_Expr_appArg_x21(x_51);
lean_dec(x_51);
x_65 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
x_16 = x_65;
goto block_34;
}
}
block_34:
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
lean_inc(x_17);
lean_inc(x_2);
x_19 = lean_alloc_closure((void*)(l_Lean_Meta_isDefEq), 7, 2);
lean_closure_set(x_19, 0, x_2);
lean_closure_set(x_19, 1, x_17);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_17);
lean_inc(x_2);
x_20 = l_Lean_Meta_isExprDefEq(x_2, x_17, x_4, x_5, x_6, x_7, x_15);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_unbox(x_21);
lean_dec(x_21);
if (x_22 == 0)
{
uint8_t x_23; 
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_23 = !lean_is_exclusive(x_20);
if (x_23 == 0)
{
lean_object* x_24; 
x_24 = lean_ctor_get(x_20, 0);
lean_dec(x_24);
lean_ctor_set(x_20, 0, x_9);
return x_20;
}
else
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_20, 1);
lean_inc(x_25);
lean_dec(x_20);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_9);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_20, 1);
lean_inc(x_27);
lean_dec(x_20);
x_28 = lean_box(0);
x_29 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4(x_19, x_9, x_2, x_17, x_18, x_28, x_4, x_5, x_6, x_7, x_27);
return x_29;
}
}
else
{
uint8_t x_30; 
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_30 = !lean_is_exclusive(x_20);
if (x_30 == 0)
{
return x_20;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_20, 0);
x_32 = lean_ctor_get(x_20, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_20);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; uint8_t x_91; 
x_66 = lean_ctor_get(x_12, 0);
x_67 = lean_ctor_get(x_12, 1);
lean_inc(x_67);
lean_inc(x_66);
lean_dec(x_12);
x_86 = lean_ctor_get(x_66, 1);
lean_inc(x_86);
lean_dec(x_66);
x_87 = lean_ctor_get(x_86, 1);
lean_inc(x_87);
if (lean_is_exclusive(x_86)) {
 lean_ctor_release(x_86, 0);
 lean_ctor_release(x_86, 1);
 x_88 = x_86;
} else {
 lean_dec_ref(x_86);
 x_88 = lean_box(0);
}
x_89 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2;
x_90 = lean_unsigned_to_nat(3u);
x_91 = l_Lean_Expr_isAppOfArity(x_87, x_89, x_90);
if (x_91 == 0)
{
lean_object* x_92; lean_object* x_93; uint8_t x_94; 
x_92 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1;
x_93 = lean_unsigned_to_nat(2u);
x_94 = l_Lean_Expr_isAppOfArity(x_87, x_92, x_93);
if (x_94 == 0)
{
lean_object* x_95; 
lean_dec(x_88);
lean_dec(x_87);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_95 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_95, 0, x_9);
lean_ctor_set(x_95, 1, x_67);
return x_95;
}
else
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_96 = l_Lean_Expr_appFn_x21(x_87);
x_97 = l_Lean_Expr_appArg_x21(x_96);
lean_dec(x_96);
x_98 = l_Lean_Expr_appArg_x21(x_87);
lean_dec(x_87);
if (lean_is_scalar(x_88)) {
 x_99 = lean_alloc_ctor(0, 2, 0);
} else {
 x_99 = x_88;
}
lean_ctor_set(x_99, 0, x_97);
lean_ctor_set(x_99, 1, x_98);
x_68 = x_99;
goto block_85;
}
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; 
x_100 = l_Lean_Expr_appFn_x21(x_87);
x_101 = l_Lean_Expr_appArg_x21(x_100);
lean_dec(x_100);
x_102 = l_Lean_Expr_appArg_x21(x_87);
lean_dec(x_87);
if (lean_is_scalar(x_88)) {
 x_103 = lean_alloc_ctor(0, 2, 0);
} else {
 x_103 = x_88;
}
lean_ctor_set(x_103, 0, x_101);
lean_ctor_set(x_103, 1, x_102);
x_68 = x_103;
goto block_85;
}
block_85:
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_69 = lean_ctor_get(x_68, 0);
lean_inc(x_69);
x_70 = lean_ctor_get(x_68, 1);
lean_inc(x_70);
lean_dec(x_68);
lean_inc(x_69);
lean_inc(x_2);
x_71 = lean_alloc_closure((void*)(l_Lean_Meta_isDefEq), 7, 2);
lean_closure_set(x_71, 0, x_2);
lean_closure_set(x_71, 1, x_69);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_69);
lean_inc(x_2);
x_72 = l_Lean_Meta_isExprDefEq(x_2, x_69, x_4, x_5, x_6, x_7, x_67);
if (lean_obj_tag(x_72) == 0)
{
lean_object* x_73; uint8_t x_74; 
x_73 = lean_ctor_get(x_72, 0);
lean_inc(x_73);
x_74 = lean_unbox(x_73);
lean_dec(x_73);
if (x_74 == 0)
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; 
lean_dec(x_71);
lean_dec(x_70);
lean_dec(x_69);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_75 = lean_ctor_get(x_72, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_72)) {
 lean_ctor_release(x_72, 0);
 lean_ctor_release(x_72, 1);
 x_76 = x_72;
} else {
 lean_dec_ref(x_72);
 x_76 = lean_box(0);
}
if (lean_is_scalar(x_76)) {
 x_77 = lean_alloc_ctor(0, 2, 0);
} else {
 x_77 = x_76;
}
lean_ctor_set(x_77, 0, x_9);
lean_ctor_set(x_77, 1, x_75);
return x_77;
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; 
x_78 = lean_ctor_get(x_72, 1);
lean_inc(x_78);
lean_dec(x_72);
x_79 = lean_box(0);
x_80 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4(x_71, x_9, x_2, x_69, x_70, x_79, x_4, x_5, x_6, x_7, x_78);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; 
lean_dec(x_71);
lean_dec(x_70);
lean_dec(x_69);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_81 = lean_ctor_get(x_72, 0);
lean_inc(x_81);
x_82 = lean_ctor_get(x_72, 1);
lean_inc(x_82);
if (lean_is_exclusive(x_72)) {
 lean_ctor_release(x_72, 0);
 lean_ctor_release(x_72, 1);
 x_83 = x_72;
} else {
 lean_dec_ref(x_72);
 x_83 = lean_box(0);
}
if (lean_is_scalar(x_83)) {
 x_84 = lean_alloc_ctor(1, 2, 0);
} else {
 x_84 = x_83;
}
lean_ctor_set(x_84, 0, x_81);
lean_ctor_set(x_84, 1, x_82);
return x_84;
}
}
}
}
else
{
uint8_t x_104; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
x_104 = !lean_is_exclusive(x_12);
if (x_104 == 0)
{
return x_12;
}
else
{
lean_object* x_105; lean_object* x_106; lean_object* x_107; 
x_105 = lean_ctor_get(x_12, 0);
x_106 = lean_ctor_get(x_12, 1);
lean_inc(x_106);
lean_inc(x_105);
lean_dec(x_12);
x_107 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_107, 0, x_105);
lean_ctor_set(x_107, 1, x_106);
return x_107;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_33; lean_object* x_34; uint8_t x_35; 
x_33 = l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2;
x_34 = lean_unsigned_to_nat(3u);
x_35 = l_Lean_Expr_isAppOfArity(x_3, x_33, x_34);
if (x_35 == 0)
{
lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_36 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1;
x_37 = lean_unsigned_to_nat(2u);
x_38 = l_Lean_Expr_isAppOfArity(x_3, x_36, x_37);
if (x_38 == 0)
{
lean_object* x_39; lean_object* x_40; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_39 = lean_box(0);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_39);
lean_ctor_set(x_40, 1, x_8);
return x_40;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_41 = l_Lean_Expr_appFn_x21(x_3);
x_42 = l_Lean_Expr_appArg_x21(x_41);
lean_dec(x_41);
x_43 = l_Lean_Expr_appArg_x21(x_3);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
x_9 = x_44;
goto block_32;
}
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_45 = l_Lean_Expr_appFn_x21(x_3);
x_46 = l_Lean_Expr_appArg_x21(x_45);
lean_dec(x_45);
x_47 = l_Lean_Expr_appArg_x21(x_3);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
x_9 = x_48;
goto block_32;
}
block_32:
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_9, 1);
x_13 = l_Lean_Expr_getAppFn(x_11);
lean_dec(x_11);
x_14 = l_Lean_Expr_constName_x3f(x_13);
lean_dec(x_13);
x_15 = l_Lean_Expr_getAppFn(x_12);
x_16 = l_Lean_Expr_constName_x3f(x_15);
lean_dec(x_15);
x_17 = l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Lean_IR_IRType_beq___spec__1(x_14, x_16);
lean_dec(x_16);
lean_dec(x_14);
if (x_17 == 0)
{
lean_object* x_18; 
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_18 = lean_box(0);
lean_ctor_set(x_9, 1, x_8);
lean_ctor_set(x_9, 0, x_18);
return x_9;
}
else
{
lean_object* x_19; lean_object* x_20; 
lean_free_object(x_9);
x_19 = lean_box(0);
x_20 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5(x_1, x_12, x_19, x_4, x_5, x_6, x_7, x_8);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_21 = lean_ctor_get(x_9, 0);
x_22 = lean_ctor_get(x_9, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_9);
x_23 = l_Lean_Expr_getAppFn(x_21);
lean_dec(x_21);
x_24 = l_Lean_Expr_constName_x3f(x_23);
lean_dec(x_23);
x_25 = l_Lean_Expr_getAppFn(x_22);
x_26 = l_Lean_Expr_constName_x3f(x_25);
lean_dec(x_25);
x_27 = l___private_Init_Data_Option_Basic_0__Option_beqOption____x40_Init_Data_Option_Basic___hyg_159____at_Lean_IR_IRType_beq___spec__1(x_24, x_26);
lean_dec(x_26);
lean_dec(x_24);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; 
lean_dec(x_22);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_28 = lean_box(0);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_8);
return x_29;
}
else
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_box(0);
x_31 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5(x_1, x_22, x_30, x_4, x_5, x_6, x_7, x_8);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Lean_ConstantInfo_type(x_9);
lean_dec(x_9);
lean_inc(x_11);
x_12 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__6___boxed), 8, 1);
lean_closure_set(x_12, 0, x_11);
x_13 = 0;
x_14 = l_Lean_Meta_forallTelescopeReducing___at_Lean_Meta_getParamNames___spec__2___rarg(x_11, x_12, x_13, x_3, x_4, x_5, x_6, x_10);
return x_14;
}
else
{
uint8_t x_15; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_15 = !lean_is_exclusive(x_8);
if (x_15 == 0)
{
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_8, 0);
x_17 = lean_ctor_get(x_8, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_8);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_2);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
uint8_t x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = 2;
lean_ctor_set_uint8(x_8, 9, x_10);
lean_inc(x_1);
x_11 = l_Batteries_Tactic_Lint_isSimpTheorem(x_1, x_2, x_3, x_4, x_5, x_6);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_unbox(x_12);
lean_dec(x_12);
if (x_13 == 0)
{
uint8_t x_14; 
lean_dec(x_2);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_14 = !lean_is_exclusive(x_11);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_11, 0);
lean_dec(x_15);
x_16 = lean_box(0);
lean_ctor_set(x_11, 0, x_16);
return x_11;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_dec(x_11);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_11, 1);
lean_inc(x_20);
lean_dec(x_11);
x_21 = lean_box(0);
x_22 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7(x_1, x_21, x_2, x_3, x_4, x_5, x_20);
if (lean_obj_tag(x_22) == 0)
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
return x_22;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_22, 0);
x_25 = lean_ctor_get(x_22, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_22);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
else
{
uint8_t x_27; 
x_27 = !lean_is_exclusive(x_22);
if (x_27 == 0)
{
return x_22;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_22, 0);
x_29 = lean_ctor_get(x_22, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_22);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
else
{
uint8_t x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; uint8_t x_37; uint8_t x_38; uint8_t x_39; uint8_t x_40; uint8_t x_41; uint8_t x_42; uint8_t x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_31 = lean_ctor_get_uint8(x_8, 0);
x_32 = lean_ctor_get_uint8(x_8, 1);
x_33 = lean_ctor_get_uint8(x_8, 2);
x_34 = lean_ctor_get_uint8(x_8, 3);
x_35 = lean_ctor_get_uint8(x_8, 4);
x_36 = lean_ctor_get_uint8(x_8, 5);
x_37 = lean_ctor_get_uint8(x_8, 6);
x_38 = lean_ctor_get_uint8(x_8, 7);
x_39 = lean_ctor_get_uint8(x_8, 8);
x_40 = lean_ctor_get_uint8(x_8, 10);
x_41 = lean_ctor_get_uint8(x_8, 11);
x_42 = lean_ctor_get_uint8(x_8, 12);
lean_dec(x_8);
x_43 = 2;
x_44 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_44, 0, x_31);
lean_ctor_set_uint8(x_44, 1, x_32);
lean_ctor_set_uint8(x_44, 2, x_33);
lean_ctor_set_uint8(x_44, 3, x_34);
lean_ctor_set_uint8(x_44, 4, x_35);
lean_ctor_set_uint8(x_44, 5, x_36);
lean_ctor_set_uint8(x_44, 6, x_37);
lean_ctor_set_uint8(x_44, 7, x_38);
lean_ctor_set_uint8(x_44, 8, x_39);
lean_ctor_set_uint8(x_44, 9, x_43);
lean_ctor_set_uint8(x_44, 10, x_40);
lean_ctor_set_uint8(x_44, 11, x_41);
lean_ctor_set_uint8(x_44, 12, x_42);
lean_ctor_set(x_2, 0, x_44);
lean_inc(x_1);
x_45 = l_Batteries_Tactic_Lint_isSimpTheorem(x_1, x_2, x_3, x_4, x_5, x_6);
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
x_47 = lean_unbox(x_46);
lean_dec(x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; 
lean_dec(x_2);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_48 = lean_ctor_get(x_45, 1);
lean_inc(x_48);
if (lean_is_exclusive(x_45)) {
 lean_ctor_release(x_45, 0);
 lean_ctor_release(x_45, 1);
 x_49 = x_45;
} else {
 lean_dec_ref(x_45);
 x_49 = lean_box(0);
}
x_50 = lean_box(0);
if (lean_is_scalar(x_49)) {
 x_51 = lean_alloc_ctor(0, 2, 0);
} else {
 x_51 = x_49;
}
lean_ctor_set(x_51, 0, x_50);
lean_ctor_set(x_51, 1, x_48);
return x_51;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_45, 1);
lean_inc(x_52);
lean_dec(x_45);
x_53 = lean_box(0);
x_54 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7(x_1, x_53, x_2, x_3, x_4, x_5, x_52);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_55 = lean_ctor_get(x_54, 0);
lean_inc(x_55);
x_56 = lean_ctor_get(x_54, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_54)) {
 lean_ctor_release(x_54, 0);
 lean_ctor_release(x_54, 1);
 x_57 = x_54;
} else {
 lean_dec_ref(x_54);
 x_57 = lean_box(0);
}
if (lean_is_scalar(x_57)) {
 x_58 = lean_alloc_ctor(0, 2, 0);
} else {
 x_58 = x_57;
}
lean_ctor_set(x_58, 0, x_55);
lean_ctor_set(x_58, 1, x_56);
return x_58;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_54, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_54, 1);
lean_inc(x_60);
if (lean_is_exclusive(x_54)) {
 lean_ctor_release(x_54, 0);
 lean_ctor_release(x_54, 1);
 x_61 = x_54;
} else {
 lean_dec_ref(x_54);
 x_61 = lean_box(0);
}
if (lean_is_scalar(x_61)) {
 x_62 = lean_alloc_ctor(1, 2, 0);
} else {
 x_62 = x_61;
}
lean_ctor_set(x_62, 0, x_59);
lean_ctor_set(x_62, 1, x_60);
return x_62;
}
}
}
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; uint8_t x_69; uint8_t x_70; uint8_t x_71; uint8_t x_72; uint8_t x_73; uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; lean_object* x_83; uint8_t x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; uint8_t x_89; 
x_63 = lean_ctor_get(x_2, 0);
x_64 = lean_ctor_get(x_2, 1);
x_65 = lean_ctor_get(x_2, 2);
x_66 = lean_ctor_get(x_2, 3);
x_67 = lean_ctor_get(x_2, 4);
x_68 = lean_ctor_get(x_2, 5);
x_69 = lean_ctor_get_uint8(x_2, sizeof(void*)*6);
x_70 = lean_ctor_get_uint8(x_2, sizeof(void*)*6 + 1);
lean_inc(x_68);
lean_inc(x_67);
lean_inc(x_66);
lean_inc(x_65);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_2);
x_71 = lean_ctor_get_uint8(x_63, 0);
x_72 = lean_ctor_get_uint8(x_63, 1);
x_73 = lean_ctor_get_uint8(x_63, 2);
x_74 = lean_ctor_get_uint8(x_63, 3);
x_75 = lean_ctor_get_uint8(x_63, 4);
x_76 = lean_ctor_get_uint8(x_63, 5);
x_77 = lean_ctor_get_uint8(x_63, 6);
x_78 = lean_ctor_get_uint8(x_63, 7);
x_79 = lean_ctor_get_uint8(x_63, 8);
x_80 = lean_ctor_get_uint8(x_63, 10);
x_81 = lean_ctor_get_uint8(x_63, 11);
x_82 = lean_ctor_get_uint8(x_63, 12);
if (lean_is_exclusive(x_63)) {
 x_83 = x_63;
} else {
 lean_dec_ref(x_63);
 x_83 = lean_box(0);
}
x_84 = 2;
if (lean_is_scalar(x_83)) {
 x_85 = lean_alloc_ctor(0, 0, 13);
} else {
 x_85 = x_83;
}
lean_ctor_set_uint8(x_85, 0, x_71);
lean_ctor_set_uint8(x_85, 1, x_72);
lean_ctor_set_uint8(x_85, 2, x_73);
lean_ctor_set_uint8(x_85, 3, x_74);
lean_ctor_set_uint8(x_85, 4, x_75);
lean_ctor_set_uint8(x_85, 5, x_76);
lean_ctor_set_uint8(x_85, 6, x_77);
lean_ctor_set_uint8(x_85, 7, x_78);
lean_ctor_set_uint8(x_85, 8, x_79);
lean_ctor_set_uint8(x_85, 9, x_84);
lean_ctor_set_uint8(x_85, 10, x_80);
lean_ctor_set_uint8(x_85, 11, x_81);
lean_ctor_set_uint8(x_85, 12, x_82);
x_86 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_86, 0, x_85);
lean_ctor_set(x_86, 1, x_64);
lean_ctor_set(x_86, 2, x_65);
lean_ctor_set(x_86, 3, x_66);
lean_ctor_set(x_86, 4, x_67);
lean_ctor_set(x_86, 5, x_68);
lean_ctor_set_uint8(x_86, sizeof(void*)*6, x_69);
lean_ctor_set_uint8(x_86, sizeof(void*)*6 + 1, x_70);
lean_inc(x_1);
x_87 = l_Batteries_Tactic_Lint_isSimpTheorem(x_1, x_86, x_3, x_4, x_5, x_6);
x_88 = lean_ctor_get(x_87, 0);
lean_inc(x_88);
x_89 = lean_unbox(x_88);
lean_dec(x_88);
if (x_89 == 0)
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; 
lean_dec(x_86);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_90 = lean_ctor_get(x_87, 1);
lean_inc(x_90);
if (lean_is_exclusive(x_87)) {
 lean_ctor_release(x_87, 0);
 lean_ctor_release(x_87, 1);
 x_91 = x_87;
} else {
 lean_dec_ref(x_87);
 x_91 = lean_box(0);
}
x_92 = lean_box(0);
if (lean_is_scalar(x_91)) {
 x_93 = lean_alloc_ctor(0, 2, 0);
} else {
 x_93 = x_91;
}
lean_ctor_set(x_93, 0, x_92);
lean_ctor_set(x_93, 1, x_90);
return x_93;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; 
x_94 = lean_ctor_get(x_87, 1);
lean_inc(x_94);
lean_dec(x_87);
x_95 = lean_box(0);
x_96 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7(x_1, x_95, x_86, x_3, x_4, x_5, x_94);
if (lean_obj_tag(x_96) == 0)
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_97 = lean_ctor_get(x_96, 0);
lean_inc(x_97);
x_98 = lean_ctor_get(x_96, 1);
lean_inc(x_98);
if (lean_is_exclusive(x_96)) {
 lean_ctor_release(x_96, 0);
 lean_ctor_release(x_96, 1);
 x_99 = x_96;
} else {
 lean_dec_ref(x_96);
 x_99 = lean_box(0);
}
if (lean_is_scalar(x_99)) {
 x_100 = lean_alloc_ctor(0, 2, 0);
} else {
 x_100 = x_99;
}
lean_ctor_set(x_100, 0, x_97);
lean_ctor_set(x_100, 1, x_98);
return x_100;
}
else
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; 
x_101 = lean_ctor_get(x_96, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_96, 1);
lean_inc(x_102);
if (lean_is_exclusive(x_96)) {
 lean_ctor_release(x_96, 0);
 lean_ctor_release(x_96, 1);
 x_103 = x_96;
} else {
 lean_dec_ref(x_96);
 x_103 = lean_box(0);
}
if (lean_is_scalar(x_103)) {
 x_104 = lean_alloc_ctor(1, 2, 0);
} else {
 x_104 = x_103;
}
lean_ctor_set(x_104, 0, x_101);
lean_ctor_set(x_104, 1, x_102);
return x_104;
}
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No commutativity lemma is marked simp.", 38, 38);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpComm___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpComm___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("COMMUTATIVITY LEMMA IS SIMP.\nSome commutativity lemmas are simp lemmas:", 71, 71);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpComm___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_simpComm___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_simpComm___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_simpComm___closed__7;
x_2 = l_Batteries_Tactic_Lint_simpComm___closed__3;
x_3 = l_Batteries_Tactic_Lint_simpComm___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_simpComm() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_simpComm___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAtAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Lean_PersistentHashMap_findAtAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__5(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; lean_object* x_5; 
x_4 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_5 = l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4(x_1, x_4, x_3);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_PersistentHashMap_find_x3f___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__3(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; lean_object* x_8; 
x_7 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_8 = l_Lean_PersistentHashMap_insertAux_traverse___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__8(x_7, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_7 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_8 = l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7(x_1, x_6, x_7, x_4, x_5);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertVal_loop___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__11(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Init_Data_Array_BinSearch_0__Array_binInsertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__13___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l___private_Init_Data_Array_BinSearch_0__Array_binInsertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__13(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Array_binInsertM___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__12(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_3);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10(x_1, x_2, x_3, x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_DiscrTree_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = lean_unbox(x_5);
lean_dec(x_5);
x_12 = l_Lean_Meta_DiscrTree_insert___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__1(x_1, x_2, x_3, x_4, x_11, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_4);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_6);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__6(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__7(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Simp_Main(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Lint_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_OpenPrivate(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Util_LibraryNote(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Tactic_Lint_Simp(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Simp_Main(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Lint_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_OpenPrivate(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Util_LibraryNote(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1 = _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1();
lean_mark_persistent(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__1);
l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2 = _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2();
lean_mark_persistent(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__2);
l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__3 = _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__3();
lean_mark_persistent(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__3);
l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__4 = _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__4();
lean_mark_persistent(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__4);
l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__5 = _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__5();
lean_mark_persistent(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__5);
l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6 = _init_l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6();
lean_mark_persistent(l_Array_mapMUnsafe_map___at_Batteries_Tactic_Lint_withSimpTheoremInfos___spec__2___rarg___lambda__1___closed__6);
l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1 = _init_l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1();
lean_mark_persistent(l_Array_filterMapM___at_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___spec__1___closed__1);
l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkAllSimpTheoremInfos___lambda__2___closed__1);
l_Batteries_Tactic_Lint_isSimpTheorem___closed__1 = _init_l_Batteries_Tactic_Lint_isSimpTheorem___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_isSimpTheorem___closed__1);
l_Lean_Meta_DiscrTree_elements___rarg___closed__1 = _init_l_Lean_Meta_DiscrTree_elements___rarg___closed__1();
lean_mark_persistent(l_Lean_Meta_DiscrTree_elements___rarg___closed__1);
l_Batteries_Tactic_Lint_decorateError___rarg___closed__1 = _init_l_Batteries_Tactic_Lint_decorateError___rarg___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_decorateError___rarg___closed__1);
l_Batteries_Tactic_Lint_decorateError___rarg___closed__2 = _init_l_Batteries_Tactic_Lint_decorateError___rarg___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_decorateError___rarg___closed__2);
l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__1 = _init_l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__1);
l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__2 = _init_l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__2();
lean_mark_persistent(l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_formatLemmas___spec__1___closed__2);
l_Batteries_Tactic_Lint_formatLemmas___closed__1 = _init_l_Batteries_Tactic_Lint_formatLemmas___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_formatLemmas___closed__1);
l_Batteries_Tactic_Lint_formatLemmas___closed__2 = _init_l_Batteries_Tactic_Lint_formatLemmas___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_formatLemmas___closed__2);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__3 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__3);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__1___closed__4);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__1 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__1);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__2 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__2);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__3 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__3);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__4 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__4);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__5 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__5);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__6 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__6);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__7 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__7);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__8);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__9 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__9();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__9);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__10);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__11 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__11();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__11);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__12);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__13 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__13();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__13);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__14);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__15 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__15();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__15);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__16 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__16();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__3___closed__16);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__1 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__1);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__2 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__2);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__3 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__3);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__4 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__4);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__5);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__6 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__6);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__7);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__8 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__8);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__9 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__9();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__9);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__10 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__10();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__10);
l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11 = _init_l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___elambda__1___lambda__4___closed__11);
l_Batteries_Tactic_Lint_simpNF___closed__1 = _init_l_Batteries_Tactic_Lint_simpNF___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__1);
l_Batteries_Tactic_Lint_simpNF___closed__2 = _init_l_Batteries_Tactic_Lint_simpNF___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__2);
l_Batteries_Tactic_Lint_simpNF___closed__3 = _init_l_Batteries_Tactic_Lint_simpNF___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__3);
l_Batteries_Tactic_Lint_simpNF___closed__4 = _init_l_Batteries_Tactic_Lint_simpNF___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__4);
l_Batteries_Tactic_Lint_simpNF___closed__5 = _init_l_Batteries_Tactic_Lint_simpNF___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__5);
l_Batteries_Tactic_Lint_simpNF___closed__6 = _init_l_Batteries_Tactic_Lint_simpNF___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__6);
l_Batteries_Tactic_Lint_simpNF___closed__7 = _init_l_Batteries_Tactic_Lint_simpNF___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__7);
l_Batteries_Tactic_Lint_simpNF___closed__8 = _init_l_Batteries_Tactic_Lint_simpNF___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF___closed__8);
l_Batteries_Tactic_Lint_simpNF = _init_l_Batteries_Tactic_Lint_simpNF();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpNF);
l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___closed__1 = _init_l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___elambda__1___lambda__3___closed__1);
l_Batteries_Tactic_Lint_simpVarHead___closed__1 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__1);
l_Batteries_Tactic_Lint_simpVarHead___closed__2 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__2);
l_Batteries_Tactic_Lint_simpVarHead___closed__3 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__3);
l_Batteries_Tactic_Lint_simpVarHead___closed__4 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__4);
l_Batteries_Tactic_Lint_simpVarHead___closed__5 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__5);
l_Batteries_Tactic_Lint_simpVarHead___closed__6 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__6);
l_Batteries_Tactic_Lint_simpVarHead___closed__7 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__7);
l_Batteries_Tactic_Lint_simpVarHead___closed__8 = _init_l_Batteries_Tactic_Lint_simpVarHead___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead___closed__8);
l_Batteries_Tactic_Lint_simpVarHead = _init_l_Batteries_Tactic_Lint_simpVarHead();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpVarHead);
l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1 = _init_l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Simp_0__Batteries_Tactic_Lint_Expr_eqOrIff_x3f___closed__1);
l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__1 = _init_l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__1();
l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2 = _init_l_Lean_PersistentHashMap_findAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__4___closed__2();
l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1 = _init_l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1();
lean_mark_persistent(l_Lean_PersistentHashMap_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__7___closed__1);
l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1 = _init_l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1();
lean_mark_persistent(l___private_Lean_Meta_DiscrTree_0__Lean_Meta_DiscrTree_insertAux___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__10___closed__1);
l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14___closed__1 = _init_l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14___closed__1();
lean_mark_persistent(l_panic___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__14___closed__1);
l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__1 = _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__1();
lean_mark_persistent(l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__1);
l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__2 = _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__2();
lean_mark_persistent(l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__2);
l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__3 = _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__3();
lean_mark_persistent(l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__3);
l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__4 = _init_l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__4();
lean_mark_persistent(l_Lean_Meta_DiscrTree_insertCore___at_Batteries_Tactic_Lint_simpComm___elambda__1___spec__2___closed__4);
l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__3 = _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__1___closed__3);
l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___closed__1 = _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__3___closed__1);
l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1 = _init_l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___elambda__1___lambda__5___closed__1);
l_Batteries_Tactic_Lint_simpComm___closed__1 = _init_l_Batteries_Tactic_Lint_simpComm___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__1);
l_Batteries_Tactic_Lint_simpComm___closed__2 = _init_l_Batteries_Tactic_Lint_simpComm___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__2);
l_Batteries_Tactic_Lint_simpComm___closed__3 = _init_l_Batteries_Tactic_Lint_simpComm___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__3);
l_Batteries_Tactic_Lint_simpComm___closed__4 = _init_l_Batteries_Tactic_Lint_simpComm___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__4);
l_Batteries_Tactic_Lint_simpComm___closed__5 = _init_l_Batteries_Tactic_Lint_simpComm___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__5);
l_Batteries_Tactic_Lint_simpComm___closed__6 = _init_l_Batteries_Tactic_Lint_simpComm___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__6);
l_Batteries_Tactic_Lint_simpComm___closed__7 = _init_l_Batteries_Tactic_Lint_simpComm___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__7);
l_Batteries_Tactic_Lint_simpComm___closed__8 = _init_l_Batteries_Tactic_Lint_simpComm___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm___closed__8);
l_Batteries_Tactic_Lint_simpComm = _init_l_Batteries_Tactic_Lint_simpComm();
lean_mark_persistent(l_Batteries_Tactic_Lint_simpComm);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
