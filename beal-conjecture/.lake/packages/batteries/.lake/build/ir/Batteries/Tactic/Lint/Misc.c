// Lean compiler output
// Module: Batteries.Tactic.Lint.Misc
// Imports: Init Lean.Util.CollectLevelParams Lean.Util.ForEachExpr Lean.Meta.ForEachExpr Lean.Meta.GlobalInstances Lean.Meta.Check Lean.Util.Recognizers Lean.DocString Batteries.Tactic.Lint.Basic
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
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__3;
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Array_isEqvAux___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__5;
lean_object* l_Batteries_Tactic_Lint_isAutoDecl(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__5;
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2;
LEAN_EXPORT lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__5;
LEAN_EXPORT lean_object* l_Array_filterMapM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Lean_mkAppN(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__8;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__4;
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8;
lean_object* l_Lean_ConstantInfo_type(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__4;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1___boxed(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__4;
lean_object* l_Lean_Meta_isProp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint64_t lean_uint64_mix_hash(uint64_t, uint64_t);
lean_object* l_Array_instBEq___rarg___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__2;
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__3;
lean_object* l_Lean_MessageData_joinSep(lean_object*, lean_object*);
size_t lean_uint64_to_usize(uint64_t);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Expr_isAppOfArity(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_filterMapM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__1(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_findDocString_x3f(lean_object*, lean_object*, uint8_t, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__1;
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofList(lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__1;
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__7;
uint8_t l_Array_contains___at_Lean_findField_x3f___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__4;
uint8_t lean_usize_dec_eq(size_t, size_t);
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__8;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___closed__1;
uint8_t lean_is_instance(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__3(lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__5;
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__2;
lean_object* l_Lean_Meta_forallTelescope___at_Lean_Meta_mapForallTelescope_x27___spec__1___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_fset(lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2;
lean_object* l_Lean_CollectLevelParams_visitLevel(lean_object*, lean_object*);
lean_object* l_Lean_Expr_fvarId_x21(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__6;
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_find_x3f___rarg(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__2;
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__2;
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__4;
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__1;
lean_object* l_Lean_stringToMessageData(lean_object*);
uint8_t l_Lean_MapDeclarationExtension_contains___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___closed__1;
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4;
uint8_t lean_string_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__6___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__7(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__1;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__4(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__3;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__5;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__5;
lean_object* lean_string_utf8_byte_size(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__5;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_appArg_x21(lean_object*);
lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at_Lean_Meta_forEachExpr_x27_visit___spec__1(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__2;
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__2(lean_object*, size_t, size_t, lean_object*);
lean_object* l_Lean_ConstantInfo_value_x3f(lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__4;
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__8;
extern lean_object* l_Lean_projectionFnInfoExt;
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__8;
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__3;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_instHashableArray___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_isTypeCorrect(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_runST___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__2;
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__5;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__3;
lean_object* lean_st_ref_take(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__6;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__2;
uint8_t lean_expr_eqv(lean_object*, lean_object*);
lean_object* l_Array_zip___rarg(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__1(lean_object*, lean_object*);
uint64_t lean_uint64_shift_right(uint64_t, uint64_t);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_eraseDups___at_Lean_ResolveName_resolveGlobalName_loop___spec__1(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__4;
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__7;
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__2;
LEAN_EXPORT lean_object* l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__2;
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__4;
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__5;
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__4;
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__2;
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__3;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_components(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Lean_MetavarContext_0__Lean_DependsOn_shouldVisit___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__8;
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__3;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma;
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__7;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs;
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
uint8_t l_Lean_Expr_hasLooseBVars(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__7;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__4;
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__3;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__3;
uint64_t l_Lean_Expr_hash(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__5;
uint8_t lean_name_eq(lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__6;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace;
LEAN_EXPORT uint8_t l_Array_isEqvAux___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__6;
static lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__2;
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3;
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__1___boxed(lean_object*);
lean_object* l_Array_range(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__7;
lean_object* l_Lean_Expr_appFn_x21(lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__2;
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__4(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___closed__1;
extern lean_object* l_Lean_instInhabitedProjectionFunctionInfo;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut;
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofExpr(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff;
static lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__1;
lean_object* l_List_tail_x21___rarg(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__8;
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2;
lean_object* l_Substring_nextn(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__1;
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__5;
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__6;
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__3;
uint8_t l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_Meta_forEachExpr___at_Lean_Meta_setMVarUserNamesAt___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__6;
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__3;
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__3;
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__7;
LEAN_EXPORT uint8_t l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__2(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3;
lean_object* l_Lean_Expr_app___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_string_length(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* l_Lean_Meta_getFVarLocalDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__6(lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__2;
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__2(lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__6;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_BinderInfo_isExplicit(uint8_t);
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__7;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__1;
uint64_t l_Lean_Name_hash___override(lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__3;
lean_object* l_Lean_LocalDecl_type(lean_object*);
uint64_t lean_uint64_xor(uint64_t, uint64_t);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__5(lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1;
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__7;
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__8;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6;
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__8;
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__5;
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__1;
lean_object* l_Std_DHashMap_Internal_AssocList_replace___at_Lean_Meta_forEachExpr_x27_visit___spec__11(lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_LocalDecl_binderInfo(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8;
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__1;
lean_object* lean_erase_macro_scopes(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__6;
static lean_object* l_Batteries_Tactic_Lint_unusedArguments___closed__1;
lean_object* l_List_reverse___rarg(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__3;
lean_object* l_Array_flatten___rarg(lean_object*);
uint8_t l_Lean_Expr_hasSorry(lean_object*);
size_t lean_usize_sub(size_t, size_t);
static lean_object* l_Batteries_Tactic_Lint_docBlame___closed__6;
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__7;
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__8;
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__3;
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__6;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__2;
uint8_t l_Substring_beq(lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType;
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__8;
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__4;
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__6;
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_redLength___rarg(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint64_t l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(lean_object*, size_t, size_t, uint64_t);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___closed__5;
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__1;
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__2;
lean_object* l_Lean_Expr_headBeta(lean_object*);
lean_object* l_Lean_LocalDecl_value_x3f(lean_object*);
extern lean_object* l_Lean_Name_instBEq;
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlameThm___closed__7;
static lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__7;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__2(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices;
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__3(lean_object*);
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT lean_object* l_List_foldl___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_letFun_x3f(lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
lean_object* l_List_mapTR_loop___at_Lean_compileDecl___spec__1(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___closed__2;
static lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__3;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__1;
lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Lean_MetavarContext_0__Lean_DependsOn_shouldVisit___spec__2(lean_object*);
uint8_t l_Lean_Name_isInternal(lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__2;
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__7;
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofName(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__1;
static lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__3;
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_zipWith___at_List_zip___spec__1___rarg(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__4;
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__1(lean_object*, lean_object*);
static lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__2;
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_land(size_t, size_t);
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__3;
lean_object* l_List_toArrayAux___rarg(lean_object*, lean_object*);
extern lean_object* l_Lean_instHashableName;
static lean_object* l_Batteries_Tactic_Lint_dupNamespace___closed__6;
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__7;
uint8_t l_Array_isEmpty___rarg(lean_object*);
static lean_object* l_Batteries_Tactic_Lint_synTaut___closed__1;
LEAN_EXPORT uint8_t l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_name_eq(x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("The namespace ", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" is duplicated in the name", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = l_Lean_Name_components(x_1);
x_9 = l_List_tail_x21___rarg(x_8);
x_10 = l_List_zipWith___at_List_zip___spec__1___rarg(x_8, x_9);
x_11 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__1;
x_12 = l_List_find_x3f___rarg(x_11, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_box(0);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_7);
return x_14;
}
else
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_12);
if (x_15 == 0)
{
lean_object* x_16; uint8_t x_17; 
x_16 = lean_ctor_get(x_12, 0);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_16, 1);
lean_dec(x_19);
x_20 = l_Lean_MessageData_ofName(x_18);
x_21 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3;
lean_ctor_set_tag(x_16, 7);
lean_ctor_set(x_16, 1, x_20);
lean_ctor_set(x_16, 0, x_21);
x_22 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5;
x_23 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_23, 0, x_16);
lean_ctor_set(x_23, 1, x_22);
lean_ctor_set(x_12, 0, x_23);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_12);
lean_ctor_set(x_24, 1, x_7);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_16, 0);
lean_inc(x_25);
lean_dec(x_16);
x_26 = l_Lean_MessageData_ofName(x_25);
x_27 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3;
x_28 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_26);
x_29 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5;
x_30 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
lean_ctor_set(x_12, 0, x_30);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_12);
lean_ctor_set(x_31, 1, x_7);
return x_31;
}
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_32 = lean_ctor_get(x_12, 0);
lean_inc(x_32);
lean_dec(x_12);
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
if (lean_is_exclusive(x_32)) {
 lean_ctor_release(x_32, 0);
 lean_ctor_release(x_32, 1);
 x_34 = x_32;
} else {
 lean_dec_ref(x_32);
 x_34 = lean_box(0);
}
x_35 = l_Lean_MessageData_ofName(x_33);
x_36 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3;
if (lean_is_scalar(x_34)) {
 x_37 = lean_alloc_ctor(7, 2, 0);
} else {
 x_37 = x_34;
 lean_ctor_set_tag(x_37, 7);
}
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_35);
x_38 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5;
x_39 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
x_40 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_40, 0, x_39);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_7);
return x_41;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_6, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
x_12 = lean_ctor_get(x_10, 0);
lean_inc(x_12);
lean_dec(x_10);
lean_inc(x_1);
x_13 = lean_is_instance(x_12, x_1);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
lean_free_object(x_8);
x_14 = lean_box(0);
x_15 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2(x_1, x_14, x_3, x_4, x_5, x_6, x_11);
return x_15;
}
else
{
lean_object* x_16; 
lean_dec(x_1);
x_16 = lean_box(0);
lean_ctor_set(x_8, 0, x_16);
return x_8;
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
x_19 = lean_ctor_get(x_17, 0);
lean_inc(x_19);
lean_dec(x_17);
lean_inc(x_1);
x_20 = lean_is_instance(x_19, x_1);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_box(0);
x_22 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2(x_1, x_21, x_3, x_4, x_5, x_6, x_18);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_box(0);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_18);
return x_24;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__3(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
lean_dec(x_5);
lean_dec(x_4);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No declarations have a duplicate namespace.", 43, 43);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("DUPLICATED NAMESPACES IN NAME:", 30, 30);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___closed__7;
x_2 = l_Batteries_Tactic_Lint_dupNamespace___closed__3;
x_3 = l_Batteries_Tactic_Lint_dupNamespace___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_dupNamespace() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_dupNamespace___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__1___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__1(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_dupNamespace___elambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Batteries_Tactic_Lint_dupNamespace___elambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
static lean_object* _init_l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_projectionFnInfoExt;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_st_ref_get(x_5, x_6);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 0);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
x_11 = l_Lean_instInhabitedProjectionFunctionInfo;
x_12 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1;
x_13 = l_Lean_MapDeclarationExtension_contains___rarg(x_11, x_12, x_10, x_1);
lean_dec(x_10);
x_14 = lean_box(x_13);
lean_ctor_set(x_7, 0, x_14);
return x_7;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_instInhabitedProjectionFunctionInfo;
x_19 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1;
x_20 = l_Lean_MapDeclarationExtension_contains___rarg(x_18, x_19, x_17, x_1);
lean_dec(x_17);
x_21 = lean_box(x_20);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_16);
return x_22;
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__2(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = lean_usize_dec_lt(x_3, x_2);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_5);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_4);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_array_uget(x_1, x_3);
lean_inc(x_5);
x_13 = l_Lean_Meta_getFVarLocalDecl(x_12, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_LocalDecl_type(x_14);
x_17 = l_Lean_Expr_app___override(x_4, x_16);
x_18 = l_Lean_LocalDecl_value_x3f(x_14);
lean_dec(x_14);
if (lean_obj_tag(x_18) == 0)
{
size_t x_19; size_t x_20; 
x_19 = 1;
x_20 = lean_usize_add(x_3, x_19);
x_3 = x_20;
x_4 = x_17;
x_9 = x_15;
goto _start;
}
else
{
lean_object* x_22; lean_object* x_23; size_t x_24; size_t x_25; 
x_22 = lean_ctor_get(x_18, 0);
lean_inc(x_22);
lean_dec(x_18);
x_23 = l_Lean_Expr_app___override(x_17, x_22);
x_24 = 1;
x_25 = lean_usize_add(x_3, x_24);
x_3 = x_25;
x_4 = x_23;
x_9 = x_15;
goto _start;
}
}
else
{
uint8_t x_27; 
lean_dec(x_5);
lean_dec(x_4);
x_27 = !lean_is_exclusive(x_13);
if (x_27 == 0)
{
return x_13;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_13, 0);
x_29 = lean_ctor_get(x_13, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_13);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("argument ", 9, 9);
return x_1;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" ", 1, 1);
return x_1;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" : ", 3, 3);
return x_1;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__7;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; lean_object* x_9; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_8 = l_List_reverse___rarg(x_2);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_1);
if (x_10 == 0)
{
lean_object* x_11; uint8_t x_12; 
x_11 = lean_ctor_get(x_1, 0);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_1, 1);
x_14 = lean_ctor_get(x_11, 0);
x_15 = lean_ctor_get(x_11, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_14);
x_16 = lean_infer_type(x_14, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_unsigned_to_nat(1u);
x_20 = lean_nat_add(x_15, x_19);
lean_dec(x_15);
x_21 = l___private_Init_Data_Repr_0__Nat_reprFast(x_20);
x_22 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_22, 0, x_21);
x_23 = l_Lean_MessageData_ofFormat(x_22);
x_24 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2;
lean_ctor_set_tag(x_11, 7);
lean_ctor_set(x_11, 1, x_23);
lean_ctor_set(x_11, 0, x_24);
x_25 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4;
x_26 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_26, 0, x_11);
lean_ctor_set(x_26, 1, x_25);
x_27 = l_Lean_MessageData_ofExpr(x_14);
x_28 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
x_29 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6;
x_30 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
x_31 = l_Lean_MessageData_ofExpr(x_17);
x_32 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
x_33 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_34 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
lean_ctor_set(x_1, 1, x_2);
lean_ctor_set(x_1, 0, x_34);
{
lean_object* _tmp_0 = x_13;
lean_object* _tmp_1 = x_1;
lean_object* _tmp_6 = x_18;
x_1 = _tmp_0;
x_2 = _tmp_1;
x_7 = _tmp_6;
}
goto _start;
}
else
{
uint8_t x_36; 
lean_free_object(x_11);
lean_dec(x_15);
lean_dec(x_14);
lean_free_object(x_1);
lean_dec(x_13);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_36 = !lean_is_exclusive(x_16);
if (x_36 == 0)
{
return x_16;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_16, 0);
x_38 = lean_ctor_get(x_16, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_16);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_40 = lean_ctor_get(x_1, 1);
x_41 = lean_ctor_get(x_11, 0);
x_42 = lean_ctor_get(x_11, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_11);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_41);
x_43 = lean_infer_type(x_41, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_43) == 0)
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_44 = lean_ctor_get(x_43, 0);
lean_inc(x_44);
x_45 = lean_ctor_get(x_43, 1);
lean_inc(x_45);
lean_dec(x_43);
x_46 = lean_unsigned_to_nat(1u);
x_47 = lean_nat_add(x_42, x_46);
lean_dec(x_42);
x_48 = l___private_Init_Data_Repr_0__Nat_reprFast(x_47);
x_49 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_49, 0, x_48);
x_50 = l_Lean_MessageData_ofFormat(x_49);
x_51 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2;
x_52 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_50);
x_53 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4;
x_54 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
x_55 = l_Lean_MessageData_ofExpr(x_41);
x_56 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
x_57 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6;
x_58 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
x_59 = l_Lean_MessageData_ofExpr(x_44);
x_60 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
x_61 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_62 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_62, 0, x_60);
lean_ctor_set(x_62, 1, x_61);
lean_ctor_set(x_1, 1, x_2);
lean_ctor_set(x_1, 0, x_62);
{
lean_object* _tmp_0 = x_40;
lean_object* _tmp_1 = x_1;
lean_object* _tmp_6 = x_45;
x_1 = _tmp_0;
x_2 = _tmp_1;
x_7 = _tmp_6;
}
goto _start;
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
lean_dec(x_42);
lean_dec(x_41);
lean_free_object(x_1);
lean_dec(x_40);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_64 = lean_ctor_get(x_43, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_43, 1);
lean_inc(x_65);
if (lean_is_exclusive(x_43)) {
 lean_ctor_release(x_43, 0);
 lean_ctor_release(x_43, 1);
 x_66 = x_43;
} else {
 lean_dec_ref(x_43);
 x_66 = lean_box(0);
}
if (lean_is_scalar(x_66)) {
 x_67 = lean_alloc_ctor(1, 2, 0);
} else {
 x_67 = x_66;
}
lean_ctor_set(x_67, 0, x_64);
lean_ctor_set(x_67, 1, x_65);
return x_67;
}
}
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_68 = lean_ctor_get(x_1, 0);
x_69 = lean_ctor_get(x_1, 1);
lean_inc(x_69);
lean_inc(x_68);
lean_dec(x_1);
x_70 = lean_ctor_get(x_68, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_68, 1);
lean_inc(x_71);
if (lean_is_exclusive(x_68)) {
 lean_ctor_release(x_68, 0);
 lean_ctor_release(x_68, 1);
 x_72 = x_68;
} else {
 lean_dec_ref(x_68);
 x_72 = lean_box(0);
}
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_70);
x_73 = lean_infer_type(x_70, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_73) == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_74 = lean_ctor_get(x_73, 0);
lean_inc(x_74);
x_75 = lean_ctor_get(x_73, 1);
lean_inc(x_75);
lean_dec(x_73);
x_76 = lean_unsigned_to_nat(1u);
x_77 = lean_nat_add(x_71, x_76);
lean_dec(x_71);
x_78 = l___private_Init_Data_Repr_0__Nat_reprFast(x_77);
x_79 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_79, 0, x_78);
x_80 = l_Lean_MessageData_ofFormat(x_79);
x_81 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2;
if (lean_is_scalar(x_72)) {
 x_82 = lean_alloc_ctor(7, 2, 0);
} else {
 x_82 = x_72;
 lean_ctor_set_tag(x_82, 7);
}
lean_ctor_set(x_82, 0, x_81);
lean_ctor_set(x_82, 1, x_80);
x_83 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4;
x_84 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_84, 0, x_82);
lean_ctor_set(x_84, 1, x_83);
x_85 = l_Lean_MessageData_ofExpr(x_70);
x_86 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_86, 0, x_84);
lean_ctor_set(x_86, 1, x_85);
x_87 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6;
x_88 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_88, 0, x_86);
lean_ctor_set(x_88, 1, x_87);
x_89 = l_Lean_MessageData_ofExpr(x_74);
x_90 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_90, 0, x_88);
lean_ctor_set(x_90, 1, x_89);
x_91 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_92 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_92, 0, x_90);
lean_ctor_set(x_92, 1, x_91);
x_93 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_93, 0, x_92);
lean_ctor_set(x_93, 1, x_2);
x_1 = x_69;
x_2 = x_93;
x_7 = x_75;
goto _start;
}
else
{
lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; 
lean_dec(x_72);
lean_dec(x_71);
lean_dec(x_70);
lean_dec(x_69);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_95 = lean_ctor_get(x_73, 0);
lean_inc(x_95);
x_96 = lean_ctor_get(x_73, 1);
lean_inc(x_96);
if (lean_is_exclusive(x_73)) {
 lean_ctor_release(x_73, 0);
 lean_ctor_release(x_73, 1);
 x_97 = x_73;
} else {
 lean_dec_ref(x_73);
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
}
LEAN_EXPORT lean_object* l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_st_ref_get(x_5, x_6);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_7, 0);
x_10 = lean_ctor_get(x_7, 1);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_st_ref_get(x_3, x_10);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_2, 1);
x_17 = lean_ctor_get(x_4, 2);
lean_inc(x_17);
lean_inc(x_16);
x_18 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_18, 0, x_11);
lean_ctor_set(x_18, 1, x_15);
lean_ctor_set(x_18, 2, x_16);
lean_ctor_set(x_18, 3, x_17);
lean_ctor_set_tag(x_7, 3);
lean_ctor_set(x_7, 1, x_1);
lean_ctor_set(x_7, 0, x_18);
lean_ctor_set(x_12, 0, x_7);
return x_12;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_19 = lean_ctor_get(x_12, 0);
x_20 = lean_ctor_get(x_12, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_12);
x_21 = lean_ctor_get(x_19, 0);
lean_inc(x_21);
lean_dec(x_19);
x_22 = lean_ctor_get(x_2, 1);
x_23 = lean_ctor_get(x_4, 2);
lean_inc(x_23);
lean_inc(x_22);
x_24 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_24, 0, x_11);
lean_ctor_set(x_24, 1, x_21);
lean_ctor_set(x_24, 2, x_22);
lean_ctor_set(x_24, 3, x_23);
lean_ctor_set_tag(x_7, 3);
lean_ctor_set(x_7, 1, x_1);
lean_ctor_set(x_7, 0, x_24);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_7);
lean_ctor_set(x_25, 1, x_20);
return x_25;
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_26 = lean_ctor_get(x_7, 0);
x_27 = lean_ctor_get(x_7, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_7);
x_28 = lean_ctor_get(x_26, 0);
lean_inc(x_28);
lean_dec(x_26);
x_29 = lean_st_ref_get(x_3, x_27);
x_30 = lean_ctor_get(x_29, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_29, 1);
lean_inc(x_31);
if (lean_is_exclusive(x_29)) {
 lean_ctor_release(x_29, 0);
 lean_ctor_release(x_29, 1);
 x_32 = x_29;
} else {
 lean_dec_ref(x_29);
 x_32 = lean_box(0);
}
x_33 = lean_ctor_get(x_30, 0);
lean_inc(x_33);
lean_dec(x_30);
x_34 = lean_ctor_get(x_2, 1);
x_35 = lean_ctor_get(x_4, 2);
lean_inc(x_35);
lean_inc(x_34);
x_36 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_36, 0, x_28);
lean_ctor_set(x_36, 1, x_33);
lean_ctor_set(x_36, 2, x_34);
lean_ctor_set(x_36, 3, x_35);
x_37 = lean_alloc_ctor(3, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_1);
if (lean_is_scalar(x_32)) {
 x_38 = lean_alloc_ctor(0, 2, 0);
} else {
 x_38 = x_32;
}
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_31);
return x_38;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__5(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; size_t x_8; size_t x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_7 = lean_array_uget(x_2, x_3);
x_8 = 1;
x_9 = lean_usize_add(x_3, x_8);
x_10 = lean_ctor_get(x_7, 0);
lean_inc(x_10);
x_11 = l_Lean_Expr_fvarId_x21(x_10);
lean_dec(x_10);
x_12 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_11, x_1);
lean_dec(x_11);
if (x_12 == 0)
{
lean_object* x_13; 
x_13 = lean_array_push(x_5, x_7);
x_3 = x_9;
x_5 = x_13;
goto _start;
}
else
{
lean_dec(x_7);
x_3 = x_9;
goto _start;
}
}
else
{
return x_5;
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(", ", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_array_to_list(lean_box(0), x_1);
x_9 = lean_box(0);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_10 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3(x_8, x_9, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__2;
x_14 = l_Lean_MessageData_joinSep(x_11, x_13);
x_15 = l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4(x_14, x_3, x_4, x_5, x_6, x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_15, 0, x_18);
return x_15;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_19 = lean_ctor_get(x_15, 0);
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_15);
x_21 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_21, 0, x_19);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
}
else
{
uint8_t x_23; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_23 = !lean_is_exclusive(x_10);
if (x_23 == 0)
{
return x_10;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_10, 0);
x_25 = lean_ctor_get(x_10, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_10);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; size_t x_12; size_t x_13; lean_object* x_14; 
x_9 = l_Lean_mkAppN(x_1, x_2);
x_10 = l_Lean_Expr_headBeta(x_9);
x_11 = l_Lean_Expr_app___override(x_10, x_3);
x_12 = lean_array_size(x_2);
x_13 = 0;
lean_inc(x_4);
x_14 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__2(x_2, x_12, x_13, x_11, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
if (lean_is_exclusive(x_14)) {
 lean_ctor_release(x_14, 0);
 lean_ctor_release(x_14, 1);
 x_17 = x_14;
} else {
 lean_dec_ref(x_14);
 x_17 = lean_box(0);
}
x_25 = lean_array_get_size(x_2);
x_26 = l_Array_range(x_25);
x_27 = l_Array_zip___rarg(x_2, x_26);
lean_dec(x_26);
x_28 = lean_array_get_size(x_27);
x_29 = lean_unsigned_to_nat(0u);
x_30 = lean_nat_dec_lt(x_29, x_28);
if (x_30 == 0)
{
lean_object* x_31; 
lean_dec(x_28);
lean_dec(x_27);
lean_dec(x_15);
x_31 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_18 = x_31;
goto block_24;
}
else
{
uint8_t x_32; 
x_32 = lean_nat_dec_le(x_28, x_28);
if (x_32 == 0)
{
lean_object* x_33; 
lean_dec(x_28);
lean_dec(x_27);
lean_dec(x_15);
x_33 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_18 = x_33;
goto block_24;
}
else
{
size_t x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_usize_of_nat(x_28);
lean_dec(x_28);
x_35 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_36 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__5(x_15, x_27, x_13, x_34, x_35);
lean_dec(x_27);
lean_dec(x_15);
x_18 = x_36;
goto block_24;
}
}
block_24:
{
uint8_t x_19; 
x_19 = l_Array_isEmpty___rarg(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
lean_dec(x_17);
x_20 = lean_box(0);
x_21 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1(x_18, x_20, x_4, x_5, x_6, x_7, x_16);
return x_21;
}
else
{
lean_object* x_22; lean_object* x_23; 
lean_dec(x_18);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_22 = lean_box(0);
if (lean_is_scalar(x_17)) {
 x_23 = lean_alloc_ctor(0, 2, 0);
} else {
 x_23 = x_17;
}
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_16);
return x_23;
}
}
}
else
{
uint8_t x_37; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_37 = !lean_is_exclusive(x_14);
if (x_37 == 0)
{
return x_14;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_14, 0);
x_39 = lean_ctor_get(x_14, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_14);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; lean_object* x_11; 
x_9 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___boxed), 8, 1);
lean_closure_set(x_9, 0, x_1);
x_10 = 0;
x_11 = l_Lean_Meta_forallTelescope___at_Lean_Meta_mapForallTelescope_x27___spec__1___rarg(x_2, x_9, x_10, x_4, x_5, x_6, x_7, x_8);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
x_12 = l_Lean_ConstantInfo_type(x_10);
x_13 = l_Lean_ConstantInfo_value_x3f(x_10);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; 
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_14 = lean_box(0);
lean_ctor_set(x_8, 0, x_14);
return x_8;
}
else
{
lean_object* x_15; uint8_t x_16; 
x_15 = lean_ctor_get(x_13, 0);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_Expr_hasSorry(x_15);
if (x_16 == 0)
{
uint8_t x_17; 
x_17 = l_Lean_Expr_hasSorry(x_12);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
lean_free_object(x_8);
x_18 = lean_box(0);
x_19 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3(x_15, x_12, x_18, x_3, x_4, x_5, x_6, x_11);
return x_19;
}
else
{
lean_object* x_20; 
lean_dec(x_15);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_20 = lean_box(0);
lean_ctor_set(x_8, 0, x_20);
return x_8;
}
}
else
{
lean_object* x_21; 
lean_dec(x_15);
lean_dec(x_12);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_21 = lean_box(0);
lean_ctor_set(x_8, 0, x_21);
return x_8;
}
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_22 = lean_ctor_get(x_8, 0);
x_23 = lean_ctor_get(x_8, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_8);
x_24 = l_Lean_ConstantInfo_type(x_22);
x_25 = l_Lean_ConstantInfo_value_x3f(x_22);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; lean_object* x_27; 
lean_dec(x_24);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_26 = lean_box(0);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_23);
return x_27;
}
else
{
lean_object* x_28; uint8_t x_29; 
x_28 = lean_ctor_get(x_25, 0);
lean_inc(x_28);
lean_dec(x_25);
x_29 = l_Lean_Expr_hasSorry(x_28);
if (x_29 == 0)
{
uint8_t x_30; 
x_30 = l_Lean_Expr_hasSorry(x_24);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_box(0);
x_32 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3(x_28, x_24, x_31, x_3, x_4, x_5, x_6, x_23);
return x_32;
}
else
{
lean_object* x_33; lean_object* x_34; 
lean_dec(x_28);
lean_dec(x_24);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_33 = lean_box(0);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_23);
return x_34;
}
}
else
{
lean_object* x_35; lean_object* x_36; 
lean_dec(x_28);
lean_dec(x_24);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_35 = lean_box(0);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_23);
return x_36;
}
}
}
}
else
{
uint8_t x_37; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_37 = !lean_is_exclusive(x_8);
if (x_37 == 0)
{
return x_8;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_8, 0);
x_39 = lean_ctor_get(x_8, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_8);
x_40 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_inc(x_1);
x_8 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_unbox(x_9);
lean_dec(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_11);
lean_dec(x_8);
x_12 = lean_box(0);
x_13 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__4(x_1, x_12, x_3, x_4, x_5, x_6, x_11);
return x_13;
}
else
{
uint8_t x_14; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_14 = !lean_is_exclusive(x_8);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_8, 0);
lean_dec(x_15);
x_16 = lean_box(0);
lean_ctor_set(x_8, 0, x_16);
return x_8;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_8, 1);
lean_inc(x_17);
lean_dec(x_8);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__5(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No unused arguments.", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("UNUSED ARGUMENTS.", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_unusedArguments___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___closed__7;
x_2 = l_Batteries_Tactic_Lint_unusedArguments___closed__3;
x_3 = l_Batteries_Tactic_Lint_unusedArguments___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedArguments() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = l_Array_forInUnsafe_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__2(x_1, x_10, x_11, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__5(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" missing documentation string", 29, 29);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_6, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_8, 1);
x_12 = lean_ctor_get(x_10, 0);
lean_inc(x_12);
lean_dec(x_10);
x_13 = 1;
x_14 = l_Lean_findDocString_x3f(x_12, x_1, x_13, x_11);
lean_dec(x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
if (lean_obj_tag(x_15) == 0)
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_14);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_17 = lean_ctor_get(x_14, 0);
lean_dec(x_17);
x_18 = l_Lean_stringToMessageData(x_2);
x_19 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
lean_ctor_set_tag(x_8, 7);
lean_ctor_set(x_8, 1, x_18);
lean_ctor_set(x_8, 0, x_19);
x_20 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2;
x_21 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_21, 0, x_8);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_14, 0, x_22);
return x_14;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_23 = lean_ctor_get(x_14, 1);
lean_inc(x_23);
lean_dec(x_14);
x_24 = l_Lean_stringToMessageData(x_2);
x_25 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
lean_ctor_set_tag(x_8, 7);
lean_ctor_set(x_8, 1, x_24);
lean_ctor_set(x_8, 0, x_25);
x_26 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_8);
lean_ctor_set(x_27, 1, x_26);
x_28 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_28, 0, x_27);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_23);
return x_29;
}
}
else
{
uint8_t x_30; 
lean_dec(x_15);
lean_free_object(x_8);
x_30 = !lean_is_exclusive(x_14);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_14, 0);
lean_dec(x_31);
x_32 = lean_box(0);
lean_ctor_set(x_14, 0, x_32);
return x_14;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_14, 1);
lean_inc(x_33);
lean_dec(x_14);
x_34 = lean_box(0);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_33);
return x_35;
}
}
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; lean_object* x_40; lean_object* x_41; 
x_36 = lean_ctor_get(x_8, 0);
x_37 = lean_ctor_get(x_8, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_8);
x_38 = lean_ctor_get(x_36, 0);
lean_inc(x_38);
lean_dec(x_36);
x_39 = 1;
x_40 = l_Lean_findDocString_x3f(x_38, x_1, x_39, x_37);
lean_dec(x_38);
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
if (lean_obj_tag(x_41) == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_42 = lean_ctor_get(x_40, 1);
lean_inc(x_42);
if (lean_is_exclusive(x_40)) {
 lean_ctor_release(x_40, 0);
 lean_ctor_release(x_40, 1);
 x_43 = x_40;
} else {
 lean_dec_ref(x_40);
 x_43 = lean_box(0);
}
x_44 = l_Lean_stringToMessageData(x_2);
x_45 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_46 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_44);
x_47 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2;
x_48 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_48);
if (lean_is_scalar(x_43)) {
 x_50 = lean_alloc_ctor(0, 2, 0);
} else {
 x_50 = x_43;
}
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_42);
return x_50;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; 
lean_dec(x_41);
x_51 = lean_ctor_get(x_40, 1);
lean_inc(x_51);
if (lean_is_exclusive(x_40)) {
 lean_ctor_release(x_40, 0);
 lean_ctor_release(x_40, 1);
 x_52 = x_40;
} else {
 lean_dec_ref(x_40);
 x_52 = lean_box(0);
}
x_53 = lean_box(0);
if (lean_is_scalar(x_52)) {
 x_54 = lean_alloc_ctor(0, 2, 0);
} else {
 x_54 = x_52;
}
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_51);
return x_54;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("definition", 10, 10);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___closed__1;
x_9 = lean_apply_6(x_1, x_8, x_3, x_4, x_5, x_6, x_7);
return x_9;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("axiom", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("constant", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("inductive", 9, 9);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
lean_inc(x_1);
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
switch (lean_obj_tag(x_9)) {
case 0:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__1;
x_12 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_11, x_3, x_4, x_5, x_6, x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_12;
}
case 1:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_dec(x_8);
x_14 = lean_ctor_get(x_9, 0);
lean_inc(x_14);
lean_dec(x_9);
lean_inc(x_1);
x_15 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(x_1, x_3, x_4, x_5, x_6, x_13);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_unbox(x_16);
lean_dec(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_dec(x_14);
x_18 = lean_ctor_get(x_15, 1);
lean_inc(x_18);
lean_dec(x_15);
x_19 = lean_mk_string_unchecked("definition", 10, 10);
x_20 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_19, x_3, x_4, x_5, x_6, x_18);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_19);
return x_20;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_15, 1);
lean_inc(x_21);
lean_dec(x_15);
x_22 = lean_ctor_get(x_14, 0);
lean_inc(x_22);
lean_dec(x_14);
x_23 = lean_ctor_get(x_22, 2);
lean_inc(x_23);
lean_dec(x_22);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_24 = l_Lean_Meta_isProp(x_23, x_3, x_4, x_5, x_6, x_21);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; uint8_t x_26; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_unbox(x_25);
lean_dec(x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
lean_dec(x_24);
x_28 = lean_mk_string_unchecked("definition", 10, 10);
x_29 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_28, x_3, x_4, x_5, x_6, x_27);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_28);
return x_29;
}
else
{
uint8_t x_30; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_30 = !lean_is_exclusive(x_24);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_24, 0);
lean_dec(x_31);
x_32 = lean_box(0);
lean_ctor_set(x_24, 0, x_32);
return x_24;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_24, 1);
lean_inc(x_33);
lean_dec(x_24);
x_34 = lean_box(0);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_33);
return x_35;
}
}
}
else
{
uint8_t x_36; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_36 = !lean_is_exclusive(x_24);
if (x_36 == 0)
{
return x_24;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_24, 0);
x_38 = lean_ctor_get(x_24, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_24);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
}
}
case 3:
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
lean_dec(x_9);
x_40 = lean_ctor_get(x_8, 1);
lean_inc(x_40);
lean_dec(x_8);
x_41 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__2;
x_42 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_41, x_3, x_4, x_5, x_6, x_40);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_42;
}
case 5:
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
lean_dec(x_9);
x_43 = lean_ctor_get(x_8, 1);
lean_inc(x_43);
lean_dec(x_8);
x_44 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__3;
x_45 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_44, x_3, x_4, x_5, x_6, x_43);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_45;
}
default: 
{
uint8_t x_46; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_46 = !lean_is_exclusive(x_8);
if (x_46 == 0)
{
lean_object* x_47; lean_object* x_48; 
x_47 = lean_ctor_get(x_8, 0);
lean_dec(x_47);
x_48 = lean_box(0);
lean_ctor_set(x_8, 0, x_48);
return x_8;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_8, 1);
lean_inc(x_49);
lean_dec(x_8);
x_50 = lean_box(0);
x_51 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_51, 0, x_50);
lean_ctor_set(x_51, 1, x_49);
return x_51;
}
}
}
}
else
{
uint8_t x_52; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_52 = !lean_is_exclusive(x_8);
if (x_52 == 0)
{
return x_8;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_8, 0);
x_54 = lean_ctor_get(x_8, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_8);
x_55 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_55, 0, x_53);
lean_ctor_set(x_55, 1, x_54);
return x_55;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("parenthesizer", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("formatter", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("delaborator", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("quot", 4, 4);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 1)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
x_9 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__1;
x_10 = lean_string_dec_eq(x_8, x_9);
if (x_10 == 0)
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__2;
x_12 = lean_string_dec_eq(x_8, x_11);
if (x_12 == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__3;
x_14 = lean_string_dec_eq(x_8, x_13);
if (x_14 == 0)
{
lean_object* x_15; uint8_t x_16; 
x_15 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__4;
x_16 = lean_string_dec_eq(x_8, x_15);
lean_dec(x_8);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_box(0);
x_18 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3(x_1, x_17, x_3, x_4, x_5, x_6, x_7);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_19 = lean_box(0);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_7);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; 
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_21 = lean_box(0);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_7);
return x_22;
}
}
else
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_23 = lean_box(0);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_7);
return x_24;
}
}
else
{
lean_object* x_25; lean_object* x_26; 
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_25 = lean_box(0);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_7);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_box(0);
x_28 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3(x_1, x_27, x_3, x_4, x_5, x_6, x_7);
return x_28;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_st_ref_get(x_5, x_9);
x_11 = lean_unbox(x_8);
lean_dec(x_8);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_10, 0);
x_14 = lean_ctor_get(x_10, 1);
x_15 = lean_ctor_get(x_13, 0);
lean_inc(x_15);
lean_dec(x_13);
lean_inc(x_1);
x_16 = lean_is_instance(x_15, x_1);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_free_object(x_10);
x_17 = lean_box(0);
x_18 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4(x_1, x_17, x_2, x_3, x_4, x_5, x_14);
return x_18;
}
else
{
lean_object* x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = lean_box(0);
lean_ctor_set(x_10, 0, x_19);
return x_10;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_20 = lean_ctor_get(x_10, 0);
x_21 = lean_ctor_get(x_10, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_10);
x_22 = lean_ctor_get(x_20, 0);
lean_inc(x_22);
lean_dec(x_20);
lean_inc(x_1);
x_23 = lean_is_instance(x_22, x_1);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_box(0);
x_25 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4(x_1, x_24, x_2, x_3, x_4, x_5, x_21);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_26 = lean_box(0);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_21);
return x_27;
}
}
}
else
{
uint8_t x_28; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_28 = !lean_is_exclusive(x_10);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_ctor_get(x_10, 0);
lean_dec(x_29);
x_30 = lean_box(0);
lean_ctor_set(x_10, 0, x_30);
return x_10;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_10, 1);
lean_inc(x_31);
lean_dec(x_10);
x_32 = lean_box(0);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_31);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_34 = !lean_is_exclusive(x_7);
if (x_34 == 0)
{
return x_7;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_7, 0);
x_36 = lean_ctor_get(x_7, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_7);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No definitions are missing documentation.", 41, 41);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlame___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlame___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("DEFINITIONS ARE MISSING DOCUMENTATION STRINGS:", 46, 46);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlame___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlame___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_docBlame___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_docBlame___closed__7;
x_2 = l_Batteries_Tactic_Lint_docBlame___closed__3;
x_3 = l_Batteries_Tactic_Lint_docBlame___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlame() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_docBlame___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Prop projection", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("theorem", 7, 7);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
lean_inc(x_1);
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
switch (lean_obj_tag(x_9)) {
case 1:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
lean_inc(x_1);
x_12 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(x_1, x_3, x_4, x_5, x_6, x_10);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_unbox(x_13);
lean_dec(x_13);
if (x_14 == 0)
{
uint8_t x_15; 
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_15 = !lean_is_exclusive(x_12);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_ctor_get(x_12, 0);
lean_dec(x_16);
x_17 = lean_box(0);
lean_ctor_set(x_12, 0, x_17);
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_12, 1);
lean_inc(x_18);
lean_dec(x_12);
x_19 = lean_box(0);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_18);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_12, 1);
lean_inc(x_21);
lean_dec(x_12);
x_22 = lean_ctor_get(x_11, 0);
lean_inc(x_22);
lean_dec(x_11);
x_23 = lean_ctor_get(x_22, 2);
lean_inc(x_23);
lean_dec(x_22);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_24 = l_Lean_Meta_isProp(x_23, x_3, x_4, x_5, x_6, x_21);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; uint8_t x_26; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_unbox(x_25);
lean_dec(x_25);
if (x_26 == 0)
{
uint8_t x_27; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_27 = !lean_is_exclusive(x_24);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_24, 0);
lean_dec(x_28);
x_29 = lean_box(0);
lean_ctor_set(x_24, 0, x_29);
return x_24;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_24, 1);
lean_inc(x_30);
lean_dec(x_24);
x_31 = lean_box(0);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_30);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_24, 1);
lean_inc(x_33);
lean_dec(x_24);
x_34 = l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__1;
x_35 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_34, x_3, x_4, x_5, x_6, x_33);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_35;
}
}
else
{
uint8_t x_36; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_36 = !lean_is_exclusive(x_24);
if (x_36 == 0)
{
return x_24;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_24, 0);
x_38 = lean_ctor_get(x_24, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_24);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
}
}
case 2:
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
lean_dec(x_9);
x_40 = lean_ctor_get(x_8, 1);
lean_inc(x_40);
lean_dec(x_8);
x_41 = l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__2;
x_42 = l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1(x_1, x_41, x_3, x_4, x_5, x_6, x_40);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_42;
}
default: 
{
uint8_t x_43; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_43 = !lean_is_exclusive(x_8);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; 
x_44 = lean_ctor_get(x_8, 0);
lean_dec(x_44);
x_45 = lean_box(0);
lean_ctor_set(x_8, 0, x_45);
return x_8;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_46 = lean_ctor_get(x_8, 1);
lean_inc(x_46);
lean_dec(x_8);
x_47 = lean_box(0);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_46);
return x_48;
}
}
}
}
else
{
uint8_t x_49; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_49 = !lean_is_exclusive(x_8);
if (x_49 == 0)
{
return x_8;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_8, 0);
x_51 = lean_ctor_get(x_8, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_8);
x_52 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
return x_52;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No theorems are missing documentation.", 38, 38);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlameThm___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlameThm___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("THEOREMS ARE MISSING DOCUMENTATION STRINGS:", 43, 43);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlameThm___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_docBlameThm___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_docBlameThm___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_docBlameThm___closed__7;
x_2 = l_Batteries_Tactic_Lint_docBlameThm___closed__3;
x_3 = l_Batteries_Tactic_Lint_docBlameThm___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_docBlameThm() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_docBlameThm___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("is a def, should be lemma/theorem", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__3;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("is a lemma/theorem, should be a def", 35, 35);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__5;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__6;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__7;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Lean_ConstantInfo_type(x_1);
x_9 = l_Lean_Meta_isProp(x_8, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_9) == 0)
{
if (x_2 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_unbox(x_10);
lean_dec(x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_9);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_9, 0);
lean_dec(x_13);
x_14 = lean_box(0);
lean_ctor_set(x_9, 0, x_14);
return x_9;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_9, 1);
lean_inc(x_15);
lean_dec(x_9);
x_16 = lean_box(0);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
return x_17;
}
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_9);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_9, 0);
lean_dec(x_19);
x_20 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4;
lean_ctor_set(x_9, 0, x_20);
return x_9;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_9, 1);
lean_inc(x_21);
lean_dec(x_9);
x_22 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4;
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_21);
return x_23;
}
}
}
else
{
lean_object* x_24; uint8_t x_25; 
x_24 = lean_ctor_get(x_9, 0);
lean_inc(x_24);
x_25 = lean_unbox(x_24);
lean_dec(x_24);
if (x_25 == 0)
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_9);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_ctor_get(x_9, 0);
lean_dec(x_27);
x_28 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8;
lean_ctor_set(x_9, 0, x_28);
return x_9;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_9, 1);
lean_inc(x_29);
lean_dec(x_9);
x_30 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8;
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_29);
return x_31;
}
}
else
{
uint8_t x_32; 
x_32 = !lean_is_exclusive(x_9);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_9, 0);
lean_dec(x_33);
x_34 = lean_box(0);
lean_ctor_set(x_9, 0, x_34);
return x_9;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_9, 1);
lean_inc(x_35);
lean_dec(x_9);
x_36 = lean_box(0);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_35);
return x_37;
}
}
}
}
else
{
uint8_t x_38; 
x_38 = !lean_is_exclusive(x_9);
if (x_38 == 0)
{
return x_9;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_9, 0);
x_40 = lean_ctor_get(x_9, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_9);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
switch (lean_obj_tag(x_9)) {
case 1:
{
lean_object* x_10; uint8_t x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = 0;
x_12 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1(x_9, x_11, x_3, x_4, x_5, x_6, x_10);
lean_dec(x_9);
return x_12;
}
case 2:
{
lean_object* x_13; uint8_t x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_dec(x_8);
x_14 = 1;
x_15 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1(x_9, x_14, x_3, x_4, x_5, x_6, x_13);
lean_dec(x_9);
return x_15;
}
default: 
{
uint8_t x_16; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_16 = !lean_is_exclusive(x_8);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_8, 0);
lean_dec(x_17);
x_18 = lean_box(0);
lean_ctor_set(x_8, 0, x_18);
return x_8;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_8, 1);
lean_inc(x_19);
lean_dec(x_8);
x_20 = lean_box(0);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_19);
return x_21;
}
}
}
}
else
{
uint8_t x_22; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_22 = !lean_is_exclusive(x_8);
if (x_22 == 0)
{
return x_8;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_8, 0);
x_24 = lean_ctor_get(x_8, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_8);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_inc(x_1);
x_8 = l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_unbox(x_9);
lean_dec(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_11);
lean_dec(x_8);
x_12 = lean_box(0);
x_13 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__2(x_1, x_12, x_3, x_4, x_5, x_6, x_11);
return x_13;
}
else
{
uint8_t x_14; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_14 = !lean_is_exclusive(x_8);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_8, 0);
lean_dec(x_15);
x_16 = lean_box(0);
lean_ctor_set(x_8, 0, x_16);
return x_8;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_8, 1);
lean_inc(x_17);
lean_dec(x_8);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_st_ref_get(x_5, x_9);
x_11 = lean_unbox(x_8);
lean_dec(x_8);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_10, 0);
x_14 = lean_ctor_get(x_10, 1);
x_15 = lean_ctor_get(x_13, 0);
lean_inc(x_15);
lean_dec(x_13);
lean_inc(x_1);
x_16 = lean_is_instance(x_15, x_1);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_free_object(x_10);
x_17 = lean_box(0);
x_18 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3(x_1, x_17, x_2, x_3, x_4, x_5, x_14);
return x_18;
}
else
{
lean_object* x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = lean_box(0);
lean_ctor_set(x_10, 0, x_19);
return x_10;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_20 = lean_ctor_get(x_10, 0);
x_21 = lean_ctor_get(x_10, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_10);
x_22 = lean_ctor_get(x_20, 0);
lean_inc(x_22);
lean_dec(x_20);
lean_inc(x_1);
x_23 = lean_is_instance(x_22, x_1);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_box(0);
x_25 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3(x_1, x_24, x_2, x_3, x_4, x_5, x_21);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_26 = lean_box(0);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_21);
return x_27;
}
}
}
else
{
uint8_t x_28; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_28 = !lean_is_exclusive(x_10);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_ctor_get(x_10, 0);
lean_dec(x_29);
x_30 = lean_box(0);
lean_ctor_set(x_10, 0, x_30);
return x_10;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_10, 1);
lean_inc(x_31);
lean_dec(x_10);
x_32 = lean_box(0);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_31);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_34 = !lean_is_exclusive(x_7);
if (x_34 == 0)
{
return x_7;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_7, 0);
x_36 = lean_ctor_get(x_7, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_7);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("All declarations correctly marked as def/lemma.", 47, 47);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("INCORRECT DEF/LEMMA:", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_defLemma___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_defLemma___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_defLemma___closed__7;
x_2 = l_Batteries_Tactic_Lint_defLemma___closed__3;
x_3 = l_Batteries_Tactic_Lint_defLemma___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_defLemma() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_defLemma___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; lean_object* x_9; 
x_8 = lean_unbox(x_2);
lean_dec(x_2);
x_9 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1(x_1, x_8, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("the statement doesn't type check.", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__2;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__3;
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___boxed), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Lean_ConstantInfo_type(x_9);
lean_dec(x_9);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_12 = l_Lean_Meta_isTypeCorrect(x_11, x_3, x_4, x_5, x_6, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_unbox(x_13);
lean_dec(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
x_16 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___closed__1;
x_17 = lean_box(0);
x_18 = lean_apply_6(x_16, x_17, x_3, x_4, x_5, x_6, x_15);
return x_18;
}
else
{
uint8_t x_19; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_19 = !lean_is_exclusive(x_12);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_12, 0);
lean_dec(x_20);
x_21 = lean_box(0);
lean_ctor_set(x_12, 0, x_21);
return x_12;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_12, 1);
lean_inc(x_22);
lean_dec(x_12);
x_23 = lean_box(0);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_22);
return x_24;
}
}
}
else
{
uint8_t x_25; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_25 = !lean_is_exclusive(x_12);
if (x_25 == 0)
{
return x_12;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_12, 0);
x_27 = lean_ctor_get(x_12, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_12);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
else
{
uint8_t x_29; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_29 = !lean_is_exclusive(x_8);
if (x_29 == 0)
{
return x_8;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_8, 0);
x_31 = lean_ctor_get(x_8, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_8);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("The statements of all declarations type-check with default reducibility settings.", 81, 81);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkType___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkType___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("THE STATEMENTS OF THE FOLLOWING DECLARATIONS DO NOT TYPE-CHECK.", 63, 63);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkType___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkType___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_checkType___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_checkType___closed__7;
x_2 = l_Batteries_Tactic_Lint_checkType___closed__3;
x_3 = l_Batteries_Tactic_Lint_checkType___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkType() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_checkType___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT uint8_t l_Array_isEqvAux___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_array_get_size(x_4);
x_8 = lean_nat_dec_lt(x_6, x_7);
lean_dec(x_7);
if (x_8 == 0)
{
uint8_t x_9; 
lean_dec(x_6);
x_9 = 1;
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_array_fget(x_4, x_6);
x_11 = lean_array_fget(x_5, x_6);
x_12 = lean_name_eq(x_10, x_11);
lean_dec(x_11);
lean_dec(x_10);
if (x_12 == 0)
{
uint8_t x_13; 
lean_dec(x_6);
x_13 = 0;
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = lean_nat_add(x_6, x_14);
lean_dec(x_6);
x_3 = lean_box(0);
x_6 = x_15;
goto _start;
}
}
}
}
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_array_get_size(x_4);
x_7 = lean_array_get_size(x_1);
x_8 = lean_nat_dec_eq(x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
if (x_8 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_unsigned_to_nat(0u);
x_11 = l_Array_isEqvAux___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__2(x_1, x_4, lean_box(0), x_4, x_1, x_10);
if (x_11 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
uint8_t x_13; 
x_13 = 1;
return x_13;
}
}
}
}
}
LEAN_EXPORT uint64_t l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(lean_object* x_1, size_t x_2, size_t x_3, uint64_t x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; uint64_t x_7; uint64_t x_8; size_t x_9; size_t x_10; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Lean_Name_hash___override(x_6);
lean_dec(x_6);
x_8 = lean_uint64_mix_hash(x_4, x_7);
x_9 = 1;
x_10 = lean_usize_add(x_2, x_9);
x_2 = x_10;
x_4 = x_8;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; size_t x_16; size_t x_17; size_t x_18; size_t x_19; size_t x_20; lean_object* x_21; lean_object* x_22; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_3, 2);
x_7 = lean_array_get_size(x_2);
lean_inc(x_1);
lean_inc(x_5);
x_8 = lean_apply_1(x_1, x_5);
x_9 = lean_unbox_uint64(x_8);
lean_dec(x_8);
x_10 = 32;
x_11 = lean_uint64_shift_right(x_9, x_10);
x_12 = lean_uint64_xor(x_9, x_11);
x_13 = 16;
x_14 = lean_uint64_shift_right(x_12, x_13);
x_15 = lean_uint64_xor(x_12, x_14);
x_16 = lean_uint64_to_usize(x_15);
x_17 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_18 = 1;
x_19 = lean_usize_sub(x_17, x_18);
x_20 = lean_usize_land(x_16, x_19);
x_21 = lean_array_uget(x_2, x_20);
lean_ctor_set(x_3, 2, x_21);
x_22 = lean_array_uset(x_2, x_20, x_3);
x_2 = x_22;
x_3 = x_6;
goto _start;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint64_t x_29; uint64_t x_30; uint64_t x_31; uint64_t x_32; uint64_t x_33; uint64_t x_34; uint64_t x_35; size_t x_36; size_t x_37; size_t x_38; size_t x_39; size_t x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_24 = lean_ctor_get(x_3, 0);
x_25 = lean_ctor_get(x_3, 1);
x_26 = lean_ctor_get(x_3, 2);
lean_inc(x_26);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_3);
x_27 = lean_array_get_size(x_2);
lean_inc(x_1);
lean_inc(x_24);
x_28 = lean_apply_1(x_1, x_24);
x_29 = lean_unbox_uint64(x_28);
lean_dec(x_28);
x_30 = 32;
x_31 = lean_uint64_shift_right(x_29, x_30);
x_32 = lean_uint64_xor(x_29, x_31);
x_33 = 16;
x_34 = lean_uint64_shift_right(x_32, x_33);
x_35 = lean_uint64_xor(x_32, x_34);
x_36 = lean_uint64_to_usize(x_35);
x_37 = lean_usize_of_nat(x_27);
lean_dec(x_27);
x_38 = 1;
x_39 = lean_usize_sub(x_37, x_38);
x_40 = lean_usize_land(x_36, x_39);
x_41 = lean_array_uget(x_2, x_40);
x_42 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_42, 0, x_24);
lean_ctor_set(x_42, 1, x_25);
lean_ctor_set(x_42, 2, x_41);
x_43 = lean_array_uset(x_2, x_40, x_42);
x_2 = x_43;
x_3 = x_26;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__6___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint64_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; uint64_t x_12; uint64_t x_13; size_t x_14; size_t x_15; size_t x_16; uint64_t x_17; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 2);
lean_inc(x_5);
if (lean_is_exclusive(x_2)) {
 lean_ctor_release(x_2, 0);
 lean_ctor_release(x_2, 1);
 lean_ctor_release(x_2, 2);
 x_6 = x_2;
} else {
 lean_dec_ref(x_2);
 x_6 = lean_box(0);
}
x_7 = lean_array_get_size(x_1);
x_8 = 7;
x_9 = lean_array_get_size(x_3);
x_10 = lean_unsigned_to_nat(0u);
x_11 = lean_nat_dec_lt(x_10, x_9);
x_12 = 32;
x_13 = 16;
x_14 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_15 = 1;
x_16 = lean_usize_sub(x_14, x_15);
if (x_11 == 0)
{
lean_dec(x_9);
x_17 = x_8;
goto block_28;
}
else
{
uint8_t x_29; 
x_29 = lean_nat_dec_le(x_9, x_9);
if (x_29 == 0)
{
lean_dec(x_9);
x_17 = x_8;
goto block_28;
}
else
{
size_t x_30; size_t x_31; uint64_t x_32; 
x_30 = 0;
x_31 = lean_usize_of_nat(x_9);
lean_dec(x_9);
x_32 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(x_3, x_30, x_31, x_8);
x_17 = x_32;
goto block_28;
}
}
block_28:
{
uint64_t x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; size_t x_22; size_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_18 = lean_uint64_shift_right(x_17, x_12);
x_19 = lean_uint64_xor(x_17, x_18);
x_20 = lean_uint64_shift_right(x_19, x_13);
x_21 = lean_uint64_xor(x_19, x_20);
x_22 = lean_uint64_to_usize(x_21);
x_23 = lean_usize_land(x_22, x_16);
x_24 = lean_array_uget(x_1, x_23);
if (lean_is_scalar(x_6)) {
 x_25 = lean_alloc_ctor(1, 3, 0);
} else {
 x_25 = x_6;
}
lean_ctor_set(x_25, 0, x_3);
lean_ctor_set(x_25, 1, x_4);
lean_ctor_set(x_25, 2, x_24);
x_26 = lean_array_uset(x_1, x_23, x_25);
x_1 = x_26;
x_2 = x_5;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_array_get_size(x_2);
x_5 = lean_nat_dec_lt(x_1, x_4);
lean_dec(x_4);
if (x_5 == 0)
{
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_array_fget(x_2, x_1);
x_7 = lean_box(0);
x_8 = lean_array_fset(x_2, x_1, x_7);
x_9 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__6___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__7(x_3, x_6);
x_10 = lean_unsigned_to_nat(1u);
x_11 = lean_nat_add(x_1, x_10);
lean_dec(x_1);
x_1 = x_11;
x_2 = x_8;
x_3 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_2 = lean_array_get_size(x_1);
x_3 = lean_unsigned_to_nat(2u);
x_4 = lean_nat_mul(x_2, x_3);
lean_dec(x_2);
x_5 = lean_box(0);
x_6 = lean_mk_array(x_4, x_5);
x_7 = lean_unsigned_to_nat(0u);
x_8 = l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__4(x_7, x_1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_dec(x_3);
return x_4;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint64_t x_20; lean_object* x_21; uint8_t x_22; uint64_t x_23; uint64_t x_24; size_t x_25; size_t x_26; size_t x_27; uint64_t x_28; 
x_7 = lean_ctor_get(x_5, 0);
x_8 = lean_ctor_get(x_5, 1);
x_9 = lean_box(0);
lean_inc(x_3);
x_10 = lean_mk_array(x_3, x_9);
x_11 = lean_unsigned_to_nat(0u);
lean_ctor_set_tag(x_5, 0);
lean_ctor_set(x_5, 1, x_10);
lean_ctor_set(x_5, 0, x_11);
x_12 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
lean_inc(x_5);
x_13 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_13, 0, x_5);
lean_ctor_set(x_13, 1, x_5);
lean_ctor_set(x_13, 2, x_12);
x_14 = l_Lean_CollectLevelParams_visitLevel(x_7, x_13);
x_15 = lean_ctor_get(x_14, 2);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_ctor_get(x_4, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_4, 1);
lean_inc(x_17);
if (lean_is_exclusive(x_4)) {
 lean_ctor_release(x_4, 0);
 lean_ctor_release(x_4, 1);
 x_18 = x_4;
} else {
 lean_dec_ref(x_4);
 x_18 = lean_box(0);
}
x_19 = lean_array_get_size(x_17);
x_20 = 7;
x_21 = lean_array_get_size(x_15);
x_22 = lean_nat_dec_lt(x_11, x_21);
x_23 = 32;
x_24 = 16;
x_25 = lean_usize_of_nat(x_19);
lean_dec(x_19);
x_26 = 1;
x_27 = lean_usize_sub(x_25, x_26);
if (x_22 == 0)
{
lean_dec(x_21);
x_28 = x_20;
goto block_55;
}
else
{
uint8_t x_56; 
x_56 = lean_nat_dec_le(x_21, x_21);
if (x_56 == 0)
{
lean_dec(x_21);
x_28 = x_20;
goto block_55;
}
else
{
size_t x_57; size_t x_58; uint64_t x_59; 
x_57 = 0;
x_58 = lean_usize_of_nat(x_21);
lean_dec(x_21);
x_59 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(x_15, x_57, x_58, x_20);
x_28 = x_59;
goto block_55;
}
}
block_55:
{
uint64_t x_29; uint64_t x_30; uint64_t x_31; uint64_t x_32; size_t x_33; size_t x_34; lean_object* x_35; uint8_t x_36; 
x_29 = lean_uint64_shift_right(x_28, x_23);
x_30 = lean_uint64_xor(x_28, x_29);
x_31 = lean_uint64_shift_right(x_30, x_24);
x_32 = lean_uint64_xor(x_30, x_31);
x_33 = lean_uint64_to_usize(x_32);
x_34 = lean_usize_land(x_33, x_27);
x_35 = lean_array_uget(x_17, x_34);
x_36 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1(x_15, x_35);
if (x_36 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_37 = lean_unsigned_to_nat(1u);
x_38 = lean_nat_add(x_16, x_37);
lean_dec(x_16);
x_39 = lean_box(0);
x_40 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_40, 0, x_15);
lean_ctor_set(x_40, 1, x_39);
lean_ctor_set(x_40, 2, x_35);
x_41 = lean_array_uset(x_17, x_34, x_40);
x_42 = lean_unsigned_to_nat(4u);
x_43 = lean_nat_mul(x_38, x_42);
x_44 = lean_unsigned_to_nat(3u);
x_45 = lean_nat_div(x_43, x_44);
lean_dec(x_43);
x_46 = lean_array_get_size(x_41);
x_47 = lean_nat_dec_le(x_45, x_46);
lean_dec(x_46);
lean_dec(x_45);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; 
x_48 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__3(x_41);
if (lean_is_scalar(x_18)) {
 x_49 = lean_alloc_ctor(0, 2, 0);
} else {
 x_49 = x_18;
}
lean_ctor_set(x_49, 0, x_38);
lean_ctor_set(x_49, 1, x_48);
x_4 = x_49;
x_5 = x_8;
goto _start;
}
else
{
lean_object* x_51; 
if (lean_is_scalar(x_18)) {
 x_51 = lean_alloc_ctor(0, 2, 0);
} else {
 x_51 = x_18;
}
lean_ctor_set(x_51, 0, x_38);
lean_ctor_set(x_51, 1, x_41);
x_4 = x_51;
x_5 = x_8;
goto _start;
}
}
else
{
lean_object* x_53; 
lean_dec(x_35);
lean_dec(x_15);
if (lean_is_scalar(x_18)) {
 x_53 = lean_alloc_ctor(0, 2, 0);
} else {
 x_53 = x_18;
}
lean_ctor_set(x_53, 0, x_16);
lean_ctor_set(x_53, 1, x_17);
x_4 = x_53;
x_5 = x_8;
goto _start;
}
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; uint64_t x_74; lean_object* x_75; uint8_t x_76; uint64_t x_77; uint64_t x_78; size_t x_79; size_t x_80; size_t x_81; uint64_t x_82; 
x_60 = lean_ctor_get(x_5, 0);
x_61 = lean_ctor_get(x_5, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_5);
x_62 = lean_box(0);
lean_inc(x_3);
x_63 = lean_mk_array(x_3, x_62);
x_64 = lean_unsigned_to_nat(0u);
x_65 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_65, 0, x_64);
lean_ctor_set(x_65, 1, x_63);
x_66 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
lean_inc(x_65);
x_67 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_67, 0, x_65);
lean_ctor_set(x_67, 1, x_65);
lean_ctor_set(x_67, 2, x_66);
x_68 = l_Lean_CollectLevelParams_visitLevel(x_60, x_67);
x_69 = lean_ctor_get(x_68, 2);
lean_inc(x_69);
lean_dec(x_68);
x_70 = lean_ctor_get(x_4, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_4, 1);
lean_inc(x_71);
if (lean_is_exclusive(x_4)) {
 lean_ctor_release(x_4, 0);
 lean_ctor_release(x_4, 1);
 x_72 = x_4;
} else {
 lean_dec_ref(x_4);
 x_72 = lean_box(0);
}
x_73 = lean_array_get_size(x_71);
x_74 = 7;
x_75 = lean_array_get_size(x_69);
x_76 = lean_nat_dec_lt(x_64, x_75);
x_77 = 32;
x_78 = 16;
x_79 = lean_usize_of_nat(x_73);
lean_dec(x_73);
x_80 = 1;
x_81 = lean_usize_sub(x_79, x_80);
if (x_76 == 0)
{
lean_dec(x_75);
x_82 = x_74;
goto block_109;
}
else
{
uint8_t x_110; 
x_110 = lean_nat_dec_le(x_75, x_75);
if (x_110 == 0)
{
lean_dec(x_75);
x_82 = x_74;
goto block_109;
}
else
{
size_t x_111; size_t x_112; uint64_t x_113; 
x_111 = 0;
x_112 = lean_usize_of_nat(x_75);
lean_dec(x_75);
x_113 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(x_69, x_111, x_112, x_74);
x_82 = x_113;
goto block_109;
}
}
block_109:
{
uint64_t x_83; uint64_t x_84; uint64_t x_85; uint64_t x_86; size_t x_87; size_t x_88; lean_object* x_89; uint8_t x_90; 
x_83 = lean_uint64_shift_right(x_82, x_77);
x_84 = lean_uint64_xor(x_82, x_83);
x_85 = lean_uint64_shift_right(x_84, x_78);
x_86 = lean_uint64_xor(x_84, x_85);
x_87 = lean_uint64_to_usize(x_86);
x_88 = lean_usize_land(x_87, x_81);
x_89 = lean_array_uget(x_71, x_88);
x_90 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1(x_69, x_89);
if (x_90 == 0)
{
lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; uint8_t x_101; 
x_91 = lean_unsigned_to_nat(1u);
x_92 = lean_nat_add(x_70, x_91);
lean_dec(x_70);
x_93 = lean_box(0);
x_94 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_94, 0, x_69);
lean_ctor_set(x_94, 1, x_93);
lean_ctor_set(x_94, 2, x_89);
x_95 = lean_array_uset(x_71, x_88, x_94);
x_96 = lean_unsigned_to_nat(4u);
x_97 = lean_nat_mul(x_92, x_96);
x_98 = lean_unsigned_to_nat(3u);
x_99 = lean_nat_div(x_97, x_98);
lean_dec(x_97);
x_100 = lean_array_get_size(x_95);
x_101 = lean_nat_dec_le(x_99, x_100);
lean_dec(x_100);
lean_dec(x_99);
if (x_101 == 0)
{
lean_object* x_102; lean_object* x_103; 
x_102 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__3(x_95);
if (lean_is_scalar(x_72)) {
 x_103 = lean_alloc_ctor(0, 2, 0);
} else {
 x_103 = x_72;
}
lean_ctor_set(x_103, 0, x_92);
lean_ctor_set(x_103, 1, x_102);
x_4 = x_103;
x_5 = x_61;
goto _start;
}
else
{
lean_object* x_105; 
if (lean_is_scalar(x_72)) {
 x_105 = lean_alloc_ctor(0, 2, 0);
} else {
 x_105 = x_72;
}
lean_ctor_set(x_105, 0, x_92);
lean_ctor_set(x_105, 1, x_95);
x_4 = x_105;
x_5 = x_61;
goto _start;
}
}
else
{
lean_object* x_107; 
lean_dec(x_89);
lean_dec(x_69);
if (lean_is_scalar(x_72)) {
 x_107 = lean_alloc_ctor(0, 2, 0);
} else {
 x_107 = x_72;
}
lean_ctor_set(x_107, 0, x_70);
lean_ctor_set(x_107, 1, x_71);
x_4 = x_107;
x_5 = x_61;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_134; 
x_134 = lean_st_ref_get(x_3, x_4);
if (lean_obj_tag(x_134) == 0)
{
uint8_t x_135; 
x_135 = !lean_is_exclusive(x_134);
if (x_135 == 0)
{
lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; uint64_t x_140; uint64_t x_141; uint64_t x_142; uint64_t x_143; uint64_t x_144; uint64_t x_145; uint64_t x_146; size_t x_147; size_t x_148; size_t x_149; size_t x_150; size_t x_151; lean_object* x_152; lean_object* x_153; 
x_136 = lean_ctor_get(x_134, 0);
x_137 = lean_ctor_get(x_134, 1);
x_138 = lean_ctor_get(x_136, 1);
lean_inc(x_138);
lean_dec(x_136);
x_139 = lean_array_get_size(x_138);
x_140 = l_Lean_Expr_hash(x_2);
x_141 = 32;
x_142 = lean_uint64_shift_right(x_140, x_141);
x_143 = lean_uint64_xor(x_140, x_142);
x_144 = 16;
x_145 = lean_uint64_shift_right(x_143, x_144);
x_146 = lean_uint64_xor(x_143, x_145);
x_147 = lean_uint64_to_usize(x_146);
x_148 = lean_usize_of_nat(x_139);
lean_dec(x_139);
x_149 = 1;
x_150 = lean_usize_sub(x_148, x_149);
x_151 = lean_usize_land(x_147, x_150);
x_152 = lean_array_uget(x_138, x_151);
lean_dec(x_138);
x_153 = l_Std_DHashMap_Internal_AssocList_get_x3f___at_Lean_Meta_forEachExpr_x27_visit___spec__1(x_2, x_152);
lean_dec(x_152);
if (lean_obj_tag(x_153) == 0)
{
lean_object* x_154; 
lean_free_object(x_134);
lean_inc(x_1);
lean_inc(x_2);
x_154 = lean_apply_2(x_1, x_2, x_137);
if (lean_obj_tag(x_154) == 0)
{
lean_object* x_155; uint8_t x_156; 
x_155 = lean_ctor_get(x_154, 0);
lean_inc(x_155);
x_156 = lean_unbox(x_155);
lean_dec(x_155);
if (x_156 == 0)
{
lean_object* x_157; lean_object* x_158; 
lean_dec(x_1);
x_157 = lean_ctor_get(x_154, 1);
lean_inc(x_157);
lean_dec(x_154);
x_158 = lean_box(0);
x_5 = x_158;
x_6 = x_157;
goto block_133;
}
else
{
switch (lean_obj_tag(x_2)) {
case 5:
{
lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; 
x_159 = lean_ctor_get(x_154, 1);
lean_inc(x_159);
lean_dec(x_154);
x_160 = lean_ctor_get(x_2, 0);
lean_inc(x_160);
x_161 = lean_ctor_get(x_2, 1);
lean_inc(x_161);
lean_inc(x_1);
x_162 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_160, x_3, x_159);
if (lean_obj_tag(x_162) == 0)
{
lean_object* x_163; lean_object* x_164; 
x_163 = lean_ctor_get(x_162, 1);
lean_inc(x_163);
lean_dec(x_162);
x_164 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_161, x_3, x_163);
if (lean_obj_tag(x_164) == 0)
{
lean_object* x_165; lean_object* x_166; 
x_165 = lean_ctor_get(x_164, 0);
lean_inc(x_165);
x_166 = lean_ctor_get(x_164, 1);
lean_inc(x_166);
lean_dec(x_164);
x_5 = x_165;
x_6 = x_166;
goto block_133;
}
else
{
uint8_t x_167; 
lean_dec(x_2);
x_167 = !lean_is_exclusive(x_164);
if (x_167 == 0)
{
return x_164;
}
else
{
lean_object* x_168; lean_object* x_169; lean_object* x_170; 
x_168 = lean_ctor_get(x_164, 0);
x_169 = lean_ctor_get(x_164, 1);
lean_inc(x_169);
lean_inc(x_168);
lean_dec(x_164);
x_170 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_170, 0, x_168);
lean_ctor_set(x_170, 1, x_169);
return x_170;
}
}
}
else
{
uint8_t x_171; 
lean_dec(x_161);
lean_dec(x_2);
lean_dec(x_1);
x_171 = !lean_is_exclusive(x_162);
if (x_171 == 0)
{
return x_162;
}
else
{
lean_object* x_172; lean_object* x_173; lean_object* x_174; 
x_172 = lean_ctor_get(x_162, 0);
x_173 = lean_ctor_get(x_162, 1);
lean_inc(x_173);
lean_inc(x_172);
lean_dec(x_162);
x_174 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_174, 0, x_172);
lean_ctor_set(x_174, 1, x_173);
return x_174;
}
}
}
case 6:
{
lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; 
x_175 = lean_ctor_get(x_154, 1);
lean_inc(x_175);
lean_dec(x_154);
x_176 = lean_ctor_get(x_2, 1);
lean_inc(x_176);
x_177 = lean_ctor_get(x_2, 2);
lean_inc(x_177);
lean_inc(x_1);
x_178 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_176, x_3, x_175);
if (lean_obj_tag(x_178) == 0)
{
lean_object* x_179; lean_object* x_180; 
x_179 = lean_ctor_get(x_178, 1);
lean_inc(x_179);
lean_dec(x_178);
x_180 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_177, x_3, x_179);
if (lean_obj_tag(x_180) == 0)
{
lean_object* x_181; lean_object* x_182; 
x_181 = lean_ctor_get(x_180, 0);
lean_inc(x_181);
x_182 = lean_ctor_get(x_180, 1);
lean_inc(x_182);
lean_dec(x_180);
x_5 = x_181;
x_6 = x_182;
goto block_133;
}
else
{
uint8_t x_183; 
lean_dec(x_2);
x_183 = !lean_is_exclusive(x_180);
if (x_183 == 0)
{
return x_180;
}
else
{
lean_object* x_184; lean_object* x_185; lean_object* x_186; 
x_184 = lean_ctor_get(x_180, 0);
x_185 = lean_ctor_get(x_180, 1);
lean_inc(x_185);
lean_inc(x_184);
lean_dec(x_180);
x_186 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_186, 0, x_184);
lean_ctor_set(x_186, 1, x_185);
return x_186;
}
}
}
else
{
uint8_t x_187; 
lean_dec(x_177);
lean_dec(x_2);
lean_dec(x_1);
x_187 = !lean_is_exclusive(x_178);
if (x_187 == 0)
{
return x_178;
}
else
{
lean_object* x_188; lean_object* x_189; lean_object* x_190; 
x_188 = lean_ctor_get(x_178, 0);
x_189 = lean_ctor_get(x_178, 1);
lean_inc(x_189);
lean_inc(x_188);
lean_dec(x_178);
x_190 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_190, 0, x_188);
lean_ctor_set(x_190, 1, x_189);
return x_190;
}
}
}
case 7:
{
lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; 
x_191 = lean_ctor_get(x_154, 1);
lean_inc(x_191);
lean_dec(x_154);
x_192 = lean_ctor_get(x_2, 1);
lean_inc(x_192);
x_193 = lean_ctor_get(x_2, 2);
lean_inc(x_193);
lean_inc(x_1);
x_194 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_192, x_3, x_191);
if (lean_obj_tag(x_194) == 0)
{
lean_object* x_195; lean_object* x_196; 
x_195 = lean_ctor_get(x_194, 1);
lean_inc(x_195);
lean_dec(x_194);
x_196 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_193, x_3, x_195);
if (lean_obj_tag(x_196) == 0)
{
lean_object* x_197; lean_object* x_198; 
x_197 = lean_ctor_get(x_196, 0);
lean_inc(x_197);
x_198 = lean_ctor_get(x_196, 1);
lean_inc(x_198);
lean_dec(x_196);
x_5 = x_197;
x_6 = x_198;
goto block_133;
}
else
{
uint8_t x_199; 
lean_dec(x_2);
x_199 = !lean_is_exclusive(x_196);
if (x_199 == 0)
{
return x_196;
}
else
{
lean_object* x_200; lean_object* x_201; lean_object* x_202; 
x_200 = lean_ctor_get(x_196, 0);
x_201 = lean_ctor_get(x_196, 1);
lean_inc(x_201);
lean_inc(x_200);
lean_dec(x_196);
x_202 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_202, 0, x_200);
lean_ctor_set(x_202, 1, x_201);
return x_202;
}
}
}
else
{
uint8_t x_203; 
lean_dec(x_193);
lean_dec(x_2);
lean_dec(x_1);
x_203 = !lean_is_exclusive(x_194);
if (x_203 == 0)
{
return x_194;
}
else
{
lean_object* x_204; lean_object* x_205; lean_object* x_206; 
x_204 = lean_ctor_get(x_194, 0);
x_205 = lean_ctor_get(x_194, 1);
lean_inc(x_205);
lean_inc(x_204);
lean_dec(x_194);
x_206 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_206, 0, x_204);
lean_ctor_set(x_206, 1, x_205);
return x_206;
}
}
}
case 8:
{
lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; 
x_207 = lean_ctor_get(x_154, 1);
lean_inc(x_207);
lean_dec(x_154);
x_208 = lean_ctor_get(x_2, 1);
lean_inc(x_208);
x_209 = lean_ctor_get(x_2, 2);
lean_inc(x_209);
x_210 = lean_ctor_get(x_2, 3);
lean_inc(x_210);
lean_inc(x_1);
x_211 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_208, x_3, x_207);
if (lean_obj_tag(x_211) == 0)
{
lean_object* x_212; lean_object* x_213; 
x_212 = lean_ctor_get(x_211, 1);
lean_inc(x_212);
lean_dec(x_211);
lean_inc(x_1);
x_213 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_209, x_3, x_212);
if (lean_obj_tag(x_213) == 0)
{
lean_object* x_214; lean_object* x_215; 
x_214 = lean_ctor_get(x_213, 1);
lean_inc(x_214);
lean_dec(x_213);
x_215 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_210, x_3, x_214);
if (lean_obj_tag(x_215) == 0)
{
lean_object* x_216; lean_object* x_217; 
x_216 = lean_ctor_get(x_215, 0);
lean_inc(x_216);
x_217 = lean_ctor_get(x_215, 1);
lean_inc(x_217);
lean_dec(x_215);
x_5 = x_216;
x_6 = x_217;
goto block_133;
}
else
{
uint8_t x_218; 
lean_dec(x_2);
x_218 = !lean_is_exclusive(x_215);
if (x_218 == 0)
{
return x_215;
}
else
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; 
x_219 = lean_ctor_get(x_215, 0);
x_220 = lean_ctor_get(x_215, 1);
lean_inc(x_220);
lean_inc(x_219);
lean_dec(x_215);
x_221 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_221, 0, x_219);
lean_ctor_set(x_221, 1, x_220);
return x_221;
}
}
}
else
{
uint8_t x_222; 
lean_dec(x_210);
lean_dec(x_2);
lean_dec(x_1);
x_222 = !lean_is_exclusive(x_213);
if (x_222 == 0)
{
return x_213;
}
else
{
lean_object* x_223; lean_object* x_224; lean_object* x_225; 
x_223 = lean_ctor_get(x_213, 0);
x_224 = lean_ctor_get(x_213, 1);
lean_inc(x_224);
lean_inc(x_223);
lean_dec(x_213);
x_225 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_225, 0, x_223);
lean_ctor_set(x_225, 1, x_224);
return x_225;
}
}
}
else
{
uint8_t x_226; 
lean_dec(x_210);
lean_dec(x_209);
lean_dec(x_2);
lean_dec(x_1);
x_226 = !lean_is_exclusive(x_211);
if (x_226 == 0)
{
return x_211;
}
else
{
lean_object* x_227; lean_object* x_228; lean_object* x_229; 
x_227 = lean_ctor_get(x_211, 0);
x_228 = lean_ctor_get(x_211, 1);
lean_inc(x_228);
lean_inc(x_227);
lean_dec(x_211);
x_229 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_229, 0, x_227);
lean_ctor_set(x_229, 1, x_228);
return x_229;
}
}
}
case 10:
{
lean_object* x_230; lean_object* x_231; lean_object* x_232; 
x_230 = lean_ctor_get(x_154, 1);
lean_inc(x_230);
lean_dec(x_154);
x_231 = lean_ctor_get(x_2, 1);
lean_inc(x_231);
x_232 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_231, x_3, x_230);
if (lean_obj_tag(x_232) == 0)
{
lean_object* x_233; lean_object* x_234; 
x_233 = lean_ctor_get(x_232, 0);
lean_inc(x_233);
x_234 = lean_ctor_get(x_232, 1);
lean_inc(x_234);
lean_dec(x_232);
x_5 = x_233;
x_6 = x_234;
goto block_133;
}
else
{
uint8_t x_235; 
lean_dec(x_2);
x_235 = !lean_is_exclusive(x_232);
if (x_235 == 0)
{
return x_232;
}
else
{
lean_object* x_236; lean_object* x_237; lean_object* x_238; 
x_236 = lean_ctor_get(x_232, 0);
x_237 = lean_ctor_get(x_232, 1);
lean_inc(x_237);
lean_inc(x_236);
lean_dec(x_232);
x_238 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_238, 0, x_236);
lean_ctor_set(x_238, 1, x_237);
return x_238;
}
}
}
case 11:
{
lean_object* x_239; lean_object* x_240; lean_object* x_241; 
x_239 = lean_ctor_get(x_154, 1);
lean_inc(x_239);
lean_dec(x_154);
x_240 = lean_ctor_get(x_2, 2);
lean_inc(x_240);
x_241 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_240, x_3, x_239);
if (lean_obj_tag(x_241) == 0)
{
lean_object* x_242; lean_object* x_243; 
x_242 = lean_ctor_get(x_241, 0);
lean_inc(x_242);
x_243 = lean_ctor_get(x_241, 1);
lean_inc(x_243);
lean_dec(x_241);
x_5 = x_242;
x_6 = x_243;
goto block_133;
}
else
{
uint8_t x_244; 
lean_dec(x_2);
x_244 = !lean_is_exclusive(x_241);
if (x_244 == 0)
{
return x_241;
}
else
{
lean_object* x_245; lean_object* x_246; lean_object* x_247; 
x_245 = lean_ctor_get(x_241, 0);
x_246 = lean_ctor_get(x_241, 1);
lean_inc(x_246);
lean_inc(x_245);
lean_dec(x_241);
x_247 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_247, 0, x_245);
lean_ctor_set(x_247, 1, x_246);
return x_247;
}
}
}
default: 
{
lean_object* x_248; lean_object* x_249; 
lean_dec(x_1);
x_248 = lean_ctor_get(x_154, 1);
lean_inc(x_248);
lean_dec(x_154);
x_249 = lean_box(0);
x_5 = x_249;
x_6 = x_248;
goto block_133;
}
}
}
}
else
{
uint8_t x_250; 
lean_dec(x_2);
lean_dec(x_1);
x_250 = !lean_is_exclusive(x_154);
if (x_250 == 0)
{
return x_154;
}
else
{
lean_object* x_251; lean_object* x_252; lean_object* x_253; 
x_251 = lean_ctor_get(x_154, 0);
x_252 = lean_ctor_get(x_154, 1);
lean_inc(x_252);
lean_inc(x_251);
lean_dec(x_154);
x_253 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_253, 0, x_251);
lean_ctor_set(x_253, 1, x_252);
return x_253;
}
}
}
else
{
lean_object* x_254; 
lean_dec(x_2);
lean_dec(x_1);
x_254 = lean_ctor_get(x_153, 0);
lean_inc(x_254);
lean_dec(x_153);
lean_ctor_set(x_134, 0, x_254);
return x_134;
}
}
else
{
lean_object* x_255; lean_object* x_256; lean_object* x_257; lean_object* x_258; uint64_t x_259; uint64_t x_260; uint64_t x_261; uint64_t x_262; uint64_t x_263; uint64_t x_264; uint64_t x_265; size_t x_266; size_t x_267; size_t x_268; size_t x_269; size_t x_270; lean_object* x_271; lean_object* x_272; 
x_255 = lean_ctor_get(x_134, 0);
x_256 = lean_ctor_get(x_134, 1);
lean_inc(x_256);
lean_inc(x_255);
lean_dec(x_134);
x_257 = lean_ctor_get(x_255, 1);
lean_inc(x_257);
lean_dec(x_255);
x_258 = lean_array_get_size(x_257);
x_259 = l_Lean_Expr_hash(x_2);
x_260 = 32;
x_261 = lean_uint64_shift_right(x_259, x_260);
x_262 = lean_uint64_xor(x_259, x_261);
x_263 = 16;
x_264 = lean_uint64_shift_right(x_262, x_263);
x_265 = lean_uint64_xor(x_262, x_264);
x_266 = lean_uint64_to_usize(x_265);
x_267 = lean_usize_of_nat(x_258);
lean_dec(x_258);
x_268 = 1;
x_269 = lean_usize_sub(x_267, x_268);
x_270 = lean_usize_land(x_266, x_269);
x_271 = lean_array_uget(x_257, x_270);
lean_dec(x_257);
x_272 = l_Std_DHashMap_Internal_AssocList_get_x3f___at_Lean_Meta_forEachExpr_x27_visit___spec__1(x_2, x_271);
lean_dec(x_271);
if (lean_obj_tag(x_272) == 0)
{
lean_object* x_273; 
lean_inc(x_1);
lean_inc(x_2);
x_273 = lean_apply_2(x_1, x_2, x_256);
if (lean_obj_tag(x_273) == 0)
{
lean_object* x_274; uint8_t x_275; 
x_274 = lean_ctor_get(x_273, 0);
lean_inc(x_274);
x_275 = lean_unbox(x_274);
lean_dec(x_274);
if (x_275 == 0)
{
lean_object* x_276; lean_object* x_277; 
lean_dec(x_1);
x_276 = lean_ctor_get(x_273, 1);
lean_inc(x_276);
lean_dec(x_273);
x_277 = lean_box(0);
x_5 = x_277;
x_6 = x_276;
goto block_133;
}
else
{
switch (lean_obj_tag(x_2)) {
case 5:
{
lean_object* x_278; lean_object* x_279; lean_object* x_280; lean_object* x_281; 
x_278 = lean_ctor_get(x_273, 1);
lean_inc(x_278);
lean_dec(x_273);
x_279 = lean_ctor_get(x_2, 0);
lean_inc(x_279);
x_280 = lean_ctor_get(x_2, 1);
lean_inc(x_280);
lean_inc(x_1);
x_281 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_279, x_3, x_278);
if (lean_obj_tag(x_281) == 0)
{
lean_object* x_282; lean_object* x_283; 
x_282 = lean_ctor_get(x_281, 1);
lean_inc(x_282);
lean_dec(x_281);
x_283 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_280, x_3, x_282);
if (lean_obj_tag(x_283) == 0)
{
lean_object* x_284; lean_object* x_285; 
x_284 = lean_ctor_get(x_283, 0);
lean_inc(x_284);
x_285 = lean_ctor_get(x_283, 1);
lean_inc(x_285);
lean_dec(x_283);
x_5 = x_284;
x_6 = x_285;
goto block_133;
}
else
{
lean_object* x_286; lean_object* x_287; lean_object* x_288; lean_object* x_289; 
lean_dec(x_2);
x_286 = lean_ctor_get(x_283, 0);
lean_inc(x_286);
x_287 = lean_ctor_get(x_283, 1);
lean_inc(x_287);
if (lean_is_exclusive(x_283)) {
 lean_ctor_release(x_283, 0);
 lean_ctor_release(x_283, 1);
 x_288 = x_283;
} else {
 lean_dec_ref(x_283);
 x_288 = lean_box(0);
}
if (lean_is_scalar(x_288)) {
 x_289 = lean_alloc_ctor(1, 2, 0);
} else {
 x_289 = x_288;
}
lean_ctor_set(x_289, 0, x_286);
lean_ctor_set(x_289, 1, x_287);
return x_289;
}
}
else
{
lean_object* x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; 
lean_dec(x_280);
lean_dec(x_2);
lean_dec(x_1);
x_290 = lean_ctor_get(x_281, 0);
lean_inc(x_290);
x_291 = lean_ctor_get(x_281, 1);
lean_inc(x_291);
if (lean_is_exclusive(x_281)) {
 lean_ctor_release(x_281, 0);
 lean_ctor_release(x_281, 1);
 x_292 = x_281;
} else {
 lean_dec_ref(x_281);
 x_292 = lean_box(0);
}
if (lean_is_scalar(x_292)) {
 x_293 = lean_alloc_ctor(1, 2, 0);
} else {
 x_293 = x_292;
}
lean_ctor_set(x_293, 0, x_290);
lean_ctor_set(x_293, 1, x_291);
return x_293;
}
}
case 6:
{
lean_object* x_294; lean_object* x_295; lean_object* x_296; lean_object* x_297; 
x_294 = lean_ctor_get(x_273, 1);
lean_inc(x_294);
lean_dec(x_273);
x_295 = lean_ctor_get(x_2, 1);
lean_inc(x_295);
x_296 = lean_ctor_get(x_2, 2);
lean_inc(x_296);
lean_inc(x_1);
x_297 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_295, x_3, x_294);
if (lean_obj_tag(x_297) == 0)
{
lean_object* x_298; lean_object* x_299; 
x_298 = lean_ctor_get(x_297, 1);
lean_inc(x_298);
lean_dec(x_297);
x_299 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_296, x_3, x_298);
if (lean_obj_tag(x_299) == 0)
{
lean_object* x_300; lean_object* x_301; 
x_300 = lean_ctor_get(x_299, 0);
lean_inc(x_300);
x_301 = lean_ctor_get(x_299, 1);
lean_inc(x_301);
lean_dec(x_299);
x_5 = x_300;
x_6 = x_301;
goto block_133;
}
else
{
lean_object* x_302; lean_object* x_303; lean_object* x_304; lean_object* x_305; 
lean_dec(x_2);
x_302 = lean_ctor_get(x_299, 0);
lean_inc(x_302);
x_303 = lean_ctor_get(x_299, 1);
lean_inc(x_303);
if (lean_is_exclusive(x_299)) {
 lean_ctor_release(x_299, 0);
 lean_ctor_release(x_299, 1);
 x_304 = x_299;
} else {
 lean_dec_ref(x_299);
 x_304 = lean_box(0);
}
if (lean_is_scalar(x_304)) {
 x_305 = lean_alloc_ctor(1, 2, 0);
} else {
 x_305 = x_304;
}
lean_ctor_set(x_305, 0, x_302);
lean_ctor_set(x_305, 1, x_303);
return x_305;
}
}
else
{
lean_object* x_306; lean_object* x_307; lean_object* x_308; lean_object* x_309; 
lean_dec(x_296);
lean_dec(x_2);
lean_dec(x_1);
x_306 = lean_ctor_get(x_297, 0);
lean_inc(x_306);
x_307 = lean_ctor_get(x_297, 1);
lean_inc(x_307);
if (lean_is_exclusive(x_297)) {
 lean_ctor_release(x_297, 0);
 lean_ctor_release(x_297, 1);
 x_308 = x_297;
} else {
 lean_dec_ref(x_297);
 x_308 = lean_box(0);
}
if (lean_is_scalar(x_308)) {
 x_309 = lean_alloc_ctor(1, 2, 0);
} else {
 x_309 = x_308;
}
lean_ctor_set(x_309, 0, x_306);
lean_ctor_set(x_309, 1, x_307);
return x_309;
}
}
case 7:
{
lean_object* x_310; lean_object* x_311; lean_object* x_312; lean_object* x_313; 
x_310 = lean_ctor_get(x_273, 1);
lean_inc(x_310);
lean_dec(x_273);
x_311 = lean_ctor_get(x_2, 1);
lean_inc(x_311);
x_312 = lean_ctor_get(x_2, 2);
lean_inc(x_312);
lean_inc(x_1);
x_313 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_311, x_3, x_310);
if (lean_obj_tag(x_313) == 0)
{
lean_object* x_314; lean_object* x_315; 
x_314 = lean_ctor_get(x_313, 1);
lean_inc(x_314);
lean_dec(x_313);
x_315 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_312, x_3, x_314);
if (lean_obj_tag(x_315) == 0)
{
lean_object* x_316; lean_object* x_317; 
x_316 = lean_ctor_get(x_315, 0);
lean_inc(x_316);
x_317 = lean_ctor_get(x_315, 1);
lean_inc(x_317);
lean_dec(x_315);
x_5 = x_316;
x_6 = x_317;
goto block_133;
}
else
{
lean_object* x_318; lean_object* x_319; lean_object* x_320; lean_object* x_321; 
lean_dec(x_2);
x_318 = lean_ctor_get(x_315, 0);
lean_inc(x_318);
x_319 = lean_ctor_get(x_315, 1);
lean_inc(x_319);
if (lean_is_exclusive(x_315)) {
 lean_ctor_release(x_315, 0);
 lean_ctor_release(x_315, 1);
 x_320 = x_315;
} else {
 lean_dec_ref(x_315);
 x_320 = lean_box(0);
}
if (lean_is_scalar(x_320)) {
 x_321 = lean_alloc_ctor(1, 2, 0);
} else {
 x_321 = x_320;
}
lean_ctor_set(x_321, 0, x_318);
lean_ctor_set(x_321, 1, x_319);
return x_321;
}
}
else
{
lean_object* x_322; lean_object* x_323; lean_object* x_324; lean_object* x_325; 
lean_dec(x_312);
lean_dec(x_2);
lean_dec(x_1);
x_322 = lean_ctor_get(x_313, 0);
lean_inc(x_322);
x_323 = lean_ctor_get(x_313, 1);
lean_inc(x_323);
if (lean_is_exclusive(x_313)) {
 lean_ctor_release(x_313, 0);
 lean_ctor_release(x_313, 1);
 x_324 = x_313;
} else {
 lean_dec_ref(x_313);
 x_324 = lean_box(0);
}
if (lean_is_scalar(x_324)) {
 x_325 = lean_alloc_ctor(1, 2, 0);
} else {
 x_325 = x_324;
}
lean_ctor_set(x_325, 0, x_322);
lean_ctor_set(x_325, 1, x_323);
return x_325;
}
}
case 8:
{
lean_object* x_326; lean_object* x_327; lean_object* x_328; lean_object* x_329; lean_object* x_330; 
x_326 = lean_ctor_get(x_273, 1);
lean_inc(x_326);
lean_dec(x_273);
x_327 = lean_ctor_get(x_2, 1);
lean_inc(x_327);
x_328 = lean_ctor_get(x_2, 2);
lean_inc(x_328);
x_329 = lean_ctor_get(x_2, 3);
lean_inc(x_329);
lean_inc(x_1);
x_330 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_327, x_3, x_326);
if (lean_obj_tag(x_330) == 0)
{
lean_object* x_331; lean_object* x_332; 
x_331 = lean_ctor_get(x_330, 1);
lean_inc(x_331);
lean_dec(x_330);
lean_inc(x_1);
x_332 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_328, x_3, x_331);
if (lean_obj_tag(x_332) == 0)
{
lean_object* x_333; lean_object* x_334; 
x_333 = lean_ctor_get(x_332, 1);
lean_inc(x_333);
lean_dec(x_332);
x_334 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_329, x_3, x_333);
if (lean_obj_tag(x_334) == 0)
{
lean_object* x_335; lean_object* x_336; 
x_335 = lean_ctor_get(x_334, 0);
lean_inc(x_335);
x_336 = lean_ctor_get(x_334, 1);
lean_inc(x_336);
lean_dec(x_334);
x_5 = x_335;
x_6 = x_336;
goto block_133;
}
else
{
lean_object* x_337; lean_object* x_338; lean_object* x_339; lean_object* x_340; 
lean_dec(x_2);
x_337 = lean_ctor_get(x_334, 0);
lean_inc(x_337);
x_338 = lean_ctor_get(x_334, 1);
lean_inc(x_338);
if (lean_is_exclusive(x_334)) {
 lean_ctor_release(x_334, 0);
 lean_ctor_release(x_334, 1);
 x_339 = x_334;
} else {
 lean_dec_ref(x_334);
 x_339 = lean_box(0);
}
if (lean_is_scalar(x_339)) {
 x_340 = lean_alloc_ctor(1, 2, 0);
} else {
 x_340 = x_339;
}
lean_ctor_set(x_340, 0, x_337);
lean_ctor_set(x_340, 1, x_338);
return x_340;
}
}
else
{
lean_object* x_341; lean_object* x_342; lean_object* x_343; lean_object* x_344; 
lean_dec(x_329);
lean_dec(x_2);
lean_dec(x_1);
x_341 = lean_ctor_get(x_332, 0);
lean_inc(x_341);
x_342 = lean_ctor_get(x_332, 1);
lean_inc(x_342);
if (lean_is_exclusive(x_332)) {
 lean_ctor_release(x_332, 0);
 lean_ctor_release(x_332, 1);
 x_343 = x_332;
} else {
 lean_dec_ref(x_332);
 x_343 = lean_box(0);
}
if (lean_is_scalar(x_343)) {
 x_344 = lean_alloc_ctor(1, 2, 0);
} else {
 x_344 = x_343;
}
lean_ctor_set(x_344, 0, x_341);
lean_ctor_set(x_344, 1, x_342);
return x_344;
}
}
else
{
lean_object* x_345; lean_object* x_346; lean_object* x_347; lean_object* x_348; 
lean_dec(x_329);
lean_dec(x_328);
lean_dec(x_2);
lean_dec(x_1);
x_345 = lean_ctor_get(x_330, 0);
lean_inc(x_345);
x_346 = lean_ctor_get(x_330, 1);
lean_inc(x_346);
if (lean_is_exclusive(x_330)) {
 lean_ctor_release(x_330, 0);
 lean_ctor_release(x_330, 1);
 x_347 = x_330;
} else {
 lean_dec_ref(x_330);
 x_347 = lean_box(0);
}
if (lean_is_scalar(x_347)) {
 x_348 = lean_alloc_ctor(1, 2, 0);
} else {
 x_348 = x_347;
}
lean_ctor_set(x_348, 0, x_345);
lean_ctor_set(x_348, 1, x_346);
return x_348;
}
}
case 10:
{
lean_object* x_349; lean_object* x_350; lean_object* x_351; 
x_349 = lean_ctor_get(x_273, 1);
lean_inc(x_349);
lean_dec(x_273);
x_350 = lean_ctor_get(x_2, 1);
lean_inc(x_350);
x_351 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_350, x_3, x_349);
if (lean_obj_tag(x_351) == 0)
{
lean_object* x_352; lean_object* x_353; 
x_352 = lean_ctor_get(x_351, 0);
lean_inc(x_352);
x_353 = lean_ctor_get(x_351, 1);
lean_inc(x_353);
lean_dec(x_351);
x_5 = x_352;
x_6 = x_353;
goto block_133;
}
else
{
lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; 
lean_dec(x_2);
x_354 = lean_ctor_get(x_351, 0);
lean_inc(x_354);
x_355 = lean_ctor_get(x_351, 1);
lean_inc(x_355);
if (lean_is_exclusive(x_351)) {
 lean_ctor_release(x_351, 0);
 lean_ctor_release(x_351, 1);
 x_356 = x_351;
} else {
 lean_dec_ref(x_351);
 x_356 = lean_box(0);
}
if (lean_is_scalar(x_356)) {
 x_357 = lean_alloc_ctor(1, 2, 0);
} else {
 x_357 = x_356;
}
lean_ctor_set(x_357, 0, x_354);
lean_ctor_set(x_357, 1, x_355);
return x_357;
}
}
case 11:
{
lean_object* x_358; lean_object* x_359; lean_object* x_360; 
x_358 = lean_ctor_get(x_273, 1);
lean_inc(x_358);
lean_dec(x_273);
x_359 = lean_ctor_get(x_2, 2);
lean_inc(x_359);
x_360 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_359, x_3, x_358);
if (lean_obj_tag(x_360) == 0)
{
lean_object* x_361; lean_object* x_362; 
x_361 = lean_ctor_get(x_360, 0);
lean_inc(x_361);
x_362 = lean_ctor_get(x_360, 1);
lean_inc(x_362);
lean_dec(x_360);
x_5 = x_361;
x_6 = x_362;
goto block_133;
}
else
{
lean_object* x_363; lean_object* x_364; lean_object* x_365; lean_object* x_366; 
lean_dec(x_2);
x_363 = lean_ctor_get(x_360, 0);
lean_inc(x_363);
x_364 = lean_ctor_get(x_360, 1);
lean_inc(x_364);
if (lean_is_exclusive(x_360)) {
 lean_ctor_release(x_360, 0);
 lean_ctor_release(x_360, 1);
 x_365 = x_360;
} else {
 lean_dec_ref(x_360);
 x_365 = lean_box(0);
}
if (lean_is_scalar(x_365)) {
 x_366 = lean_alloc_ctor(1, 2, 0);
} else {
 x_366 = x_365;
}
lean_ctor_set(x_366, 0, x_363);
lean_ctor_set(x_366, 1, x_364);
return x_366;
}
}
default: 
{
lean_object* x_367; lean_object* x_368; 
lean_dec(x_1);
x_367 = lean_ctor_get(x_273, 1);
lean_inc(x_367);
lean_dec(x_273);
x_368 = lean_box(0);
x_5 = x_368;
x_6 = x_367;
goto block_133;
}
}
}
}
else
{
lean_object* x_369; lean_object* x_370; lean_object* x_371; lean_object* x_372; 
lean_dec(x_2);
lean_dec(x_1);
x_369 = lean_ctor_get(x_273, 0);
lean_inc(x_369);
x_370 = lean_ctor_get(x_273, 1);
lean_inc(x_370);
if (lean_is_exclusive(x_273)) {
 lean_ctor_release(x_273, 0);
 lean_ctor_release(x_273, 1);
 x_371 = x_273;
} else {
 lean_dec_ref(x_273);
 x_371 = lean_box(0);
}
if (lean_is_scalar(x_371)) {
 x_372 = lean_alloc_ctor(1, 2, 0);
} else {
 x_372 = x_371;
}
lean_ctor_set(x_372, 0, x_369);
lean_ctor_set(x_372, 1, x_370);
return x_372;
}
}
else
{
lean_object* x_373; lean_object* x_374; 
lean_dec(x_2);
lean_dec(x_1);
x_373 = lean_ctor_get(x_272, 0);
lean_inc(x_373);
lean_dec(x_272);
x_374 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_374, 0, x_373);
lean_ctor_set(x_374, 1, x_256);
return x_374;
}
}
}
else
{
uint8_t x_375; 
lean_dec(x_2);
lean_dec(x_1);
x_375 = !lean_is_exclusive(x_134);
if (x_375 == 0)
{
return x_134;
}
else
{
lean_object* x_376; lean_object* x_377; lean_object* x_378; 
x_376 = lean_ctor_get(x_134, 0);
x_377 = lean_ctor_get(x_134, 1);
lean_inc(x_377);
lean_inc(x_376);
lean_dec(x_134);
x_378 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_378, 0, x_376);
lean_ctor_set(x_378, 1, x_377);
return x_378;
}
}
block_133:
{
lean_object* x_7; 
x_7 = lean_st_ref_take(x_3, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; uint64_t x_20; size_t x_21; size_t x_22; size_t x_23; size_t x_24; size_t x_25; lean_object* x_26; uint8_t x_27; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_8, 1);
x_13 = lean_array_get_size(x_12);
x_14 = l_Lean_Expr_hash(x_2);
x_15 = 32;
x_16 = lean_uint64_shift_right(x_14, x_15);
x_17 = lean_uint64_xor(x_14, x_16);
x_18 = 16;
x_19 = lean_uint64_shift_right(x_17, x_18);
x_20 = lean_uint64_xor(x_17, x_19);
x_21 = lean_uint64_to_usize(x_20);
x_22 = lean_usize_of_nat(x_13);
lean_dec(x_13);
x_23 = 1;
x_24 = lean_usize_sub(x_22, x_23);
x_25 = lean_usize_land(x_21, x_24);
x_26 = lean_array_uget(x_12, x_25);
x_27 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Lean_MetavarContext_0__Lean_DependsOn_shouldVisit___spec__1(x_2, x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; 
x_28 = lean_unsigned_to_nat(1u);
x_29 = lean_nat_add(x_11, x_28);
lean_dec(x_11);
lean_inc(x_5);
x_30 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_30, 0, x_2);
lean_ctor_set(x_30, 1, x_5);
lean_ctor_set(x_30, 2, x_26);
x_31 = lean_array_uset(x_12, x_25, x_30);
x_32 = lean_unsigned_to_nat(4u);
x_33 = lean_nat_mul(x_29, x_32);
x_34 = lean_unsigned_to_nat(3u);
x_35 = lean_nat_div(x_33, x_34);
lean_dec(x_33);
x_36 = lean_array_get_size(x_31);
x_37 = lean_nat_dec_le(x_35, x_36);
lean_dec(x_36);
lean_dec(x_35);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Lean_MetavarContext_0__Lean_DependsOn_shouldVisit___spec__2(x_31);
lean_ctor_set(x_8, 1, x_38);
lean_ctor_set(x_8, 0, x_29);
x_39 = lean_st_ref_set(x_3, x_8, x_9);
if (lean_obj_tag(x_39) == 0)
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_39);
if (x_40 == 0)
{
lean_object* x_41; 
x_41 = lean_ctor_get(x_39, 0);
lean_dec(x_41);
lean_ctor_set(x_39, 0, x_5);
return x_39;
}
else
{
lean_object* x_42; lean_object* x_43; 
x_42 = lean_ctor_get(x_39, 1);
lean_inc(x_42);
lean_dec(x_39);
x_43 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_43, 0, x_5);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
else
{
uint8_t x_44; 
lean_dec(x_5);
x_44 = !lean_is_exclusive(x_39);
if (x_44 == 0)
{
return x_39;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_39, 0);
x_46 = lean_ctor_get(x_39, 1);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_39);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
}
else
{
lean_object* x_48; 
lean_ctor_set(x_8, 1, x_31);
lean_ctor_set(x_8, 0, x_29);
x_48 = lean_st_ref_set(x_3, x_8, x_9);
if (lean_obj_tag(x_48) == 0)
{
uint8_t x_49; 
x_49 = !lean_is_exclusive(x_48);
if (x_49 == 0)
{
lean_object* x_50; 
x_50 = lean_ctor_get(x_48, 0);
lean_dec(x_50);
lean_ctor_set(x_48, 0, x_5);
return x_48;
}
else
{
lean_object* x_51; lean_object* x_52; 
x_51 = lean_ctor_get(x_48, 1);
lean_inc(x_51);
lean_dec(x_48);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_5);
lean_ctor_set(x_52, 1, x_51);
return x_52;
}
}
else
{
uint8_t x_53; 
lean_dec(x_5);
x_53 = !lean_is_exclusive(x_48);
if (x_53 == 0)
{
return x_48;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_48, 0);
x_55 = lean_ctor_get(x_48, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_48);
x_56 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
return x_56;
}
}
}
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_57 = lean_box(0);
x_58 = lean_array_uset(x_12, x_25, x_57);
lean_inc(x_5);
x_59 = l_Std_DHashMap_Internal_AssocList_replace___at_Lean_Meta_forEachExpr_x27_visit___spec__11(x_2, x_5, x_26);
x_60 = lean_array_uset(x_58, x_25, x_59);
lean_ctor_set(x_8, 1, x_60);
x_61 = lean_st_ref_set(x_3, x_8, x_9);
if (lean_obj_tag(x_61) == 0)
{
uint8_t x_62; 
x_62 = !lean_is_exclusive(x_61);
if (x_62 == 0)
{
lean_object* x_63; 
x_63 = lean_ctor_get(x_61, 0);
lean_dec(x_63);
lean_ctor_set(x_61, 0, x_5);
return x_61;
}
else
{
lean_object* x_64; lean_object* x_65; 
x_64 = lean_ctor_get(x_61, 1);
lean_inc(x_64);
lean_dec(x_61);
x_65 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_65, 0, x_5);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
else
{
uint8_t x_66; 
lean_dec(x_5);
x_66 = !lean_is_exclusive(x_61);
if (x_66 == 0)
{
return x_61;
}
else
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_67 = lean_ctor_get(x_61, 0);
x_68 = lean_ctor_get(x_61, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_61);
x_69 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_69, 0, x_67);
lean_ctor_set(x_69, 1, x_68);
return x_69;
}
}
}
}
else
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; uint64_t x_73; uint64_t x_74; uint64_t x_75; uint64_t x_76; uint64_t x_77; uint64_t x_78; uint64_t x_79; size_t x_80; size_t x_81; size_t x_82; size_t x_83; size_t x_84; lean_object* x_85; uint8_t x_86; 
x_70 = lean_ctor_get(x_8, 0);
x_71 = lean_ctor_get(x_8, 1);
lean_inc(x_71);
lean_inc(x_70);
lean_dec(x_8);
x_72 = lean_array_get_size(x_71);
x_73 = l_Lean_Expr_hash(x_2);
x_74 = 32;
x_75 = lean_uint64_shift_right(x_73, x_74);
x_76 = lean_uint64_xor(x_73, x_75);
x_77 = 16;
x_78 = lean_uint64_shift_right(x_76, x_77);
x_79 = lean_uint64_xor(x_76, x_78);
x_80 = lean_uint64_to_usize(x_79);
x_81 = lean_usize_of_nat(x_72);
lean_dec(x_72);
x_82 = 1;
x_83 = lean_usize_sub(x_81, x_82);
x_84 = lean_usize_land(x_80, x_83);
x_85 = lean_array_uget(x_71, x_84);
x_86 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Lean_MetavarContext_0__Lean_DependsOn_shouldVisit___spec__1(x_2, x_85);
if (x_86 == 0)
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; uint8_t x_96; 
x_87 = lean_unsigned_to_nat(1u);
x_88 = lean_nat_add(x_70, x_87);
lean_dec(x_70);
lean_inc(x_5);
x_89 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_89, 0, x_2);
lean_ctor_set(x_89, 1, x_5);
lean_ctor_set(x_89, 2, x_85);
x_90 = lean_array_uset(x_71, x_84, x_89);
x_91 = lean_unsigned_to_nat(4u);
x_92 = lean_nat_mul(x_88, x_91);
x_93 = lean_unsigned_to_nat(3u);
x_94 = lean_nat_div(x_92, x_93);
lean_dec(x_92);
x_95 = lean_array_get_size(x_90);
x_96 = lean_nat_dec_le(x_94, x_95);
lean_dec(x_95);
lean_dec(x_94);
if (x_96 == 0)
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_97 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Lean_MetavarContext_0__Lean_DependsOn_shouldVisit___spec__2(x_90);
x_98 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_98, 0, x_88);
lean_ctor_set(x_98, 1, x_97);
x_99 = lean_st_ref_set(x_3, x_98, x_9);
if (lean_obj_tag(x_99) == 0)
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_100 = lean_ctor_get(x_99, 1);
lean_inc(x_100);
if (lean_is_exclusive(x_99)) {
 lean_ctor_release(x_99, 0);
 lean_ctor_release(x_99, 1);
 x_101 = x_99;
} else {
 lean_dec_ref(x_99);
 x_101 = lean_box(0);
}
if (lean_is_scalar(x_101)) {
 x_102 = lean_alloc_ctor(0, 2, 0);
} else {
 x_102 = x_101;
}
lean_ctor_set(x_102, 0, x_5);
lean_ctor_set(x_102, 1, x_100);
return x_102;
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; 
lean_dec(x_5);
x_103 = lean_ctor_get(x_99, 0);
lean_inc(x_103);
x_104 = lean_ctor_get(x_99, 1);
lean_inc(x_104);
if (lean_is_exclusive(x_99)) {
 lean_ctor_release(x_99, 0);
 lean_ctor_release(x_99, 1);
 x_105 = x_99;
} else {
 lean_dec_ref(x_99);
 x_105 = lean_box(0);
}
if (lean_is_scalar(x_105)) {
 x_106 = lean_alloc_ctor(1, 2, 0);
} else {
 x_106 = x_105;
}
lean_ctor_set(x_106, 0, x_103);
lean_ctor_set(x_106, 1, x_104);
return x_106;
}
}
else
{
lean_object* x_107; lean_object* x_108; 
x_107 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_107, 0, x_88);
lean_ctor_set(x_107, 1, x_90);
x_108 = lean_st_ref_set(x_3, x_107, x_9);
if (lean_obj_tag(x_108) == 0)
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; 
x_109 = lean_ctor_get(x_108, 1);
lean_inc(x_109);
if (lean_is_exclusive(x_108)) {
 lean_ctor_release(x_108, 0);
 lean_ctor_release(x_108, 1);
 x_110 = x_108;
} else {
 lean_dec_ref(x_108);
 x_110 = lean_box(0);
}
if (lean_is_scalar(x_110)) {
 x_111 = lean_alloc_ctor(0, 2, 0);
} else {
 x_111 = x_110;
}
lean_ctor_set(x_111, 0, x_5);
lean_ctor_set(x_111, 1, x_109);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; 
lean_dec(x_5);
x_112 = lean_ctor_get(x_108, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_108, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_108)) {
 lean_ctor_release(x_108, 0);
 lean_ctor_release(x_108, 1);
 x_114 = x_108;
} else {
 lean_dec_ref(x_108);
 x_114 = lean_box(0);
}
if (lean_is_scalar(x_114)) {
 x_115 = lean_alloc_ctor(1, 2, 0);
} else {
 x_115 = x_114;
}
lean_ctor_set(x_115, 0, x_112);
lean_ctor_set(x_115, 1, x_113);
return x_115;
}
}
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; 
x_116 = lean_box(0);
x_117 = lean_array_uset(x_71, x_84, x_116);
lean_inc(x_5);
x_118 = l_Std_DHashMap_Internal_AssocList_replace___at_Lean_Meta_forEachExpr_x27_visit___spec__11(x_2, x_5, x_85);
x_119 = lean_array_uset(x_117, x_84, x_118);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_70);
lean_ctor_set(x_120, 1, x_119);
x_121 = lean_st_ref_set(x_3, x_120, x_9);
if (lean_obj_tag(x_121) == 0)
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; 
x_122 = lean_ctor_get(x_121, 1);
lean_inc(x_122);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_123 = x_121;
} else {
 lean_dec_ref(x_121);
 x_123 = lean_box(0);
}
if (lean_is_scalar(x_123)) {
 x_124 = lean_alloc_ctor(0, 2, 0);
} else {
 x_124 = x_123;
}
lean_ctor_set(x_124, 0, x_5);
lean_ctor_set(x_124, 1, x_122);
return x_124;
}
else
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; 
lean_dec(x_5);
x_125 = lean_ctor_get(x_121, 0);
lean_inc(x_125);
x_126 = lean_ctor_get(x_121, 1);
lean_inc(x_126);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_127 = x_121;
} else {
 lean_dec_ref(x_121);
 x_127 = lean_box(0);
}
if (lean_is_scalar(x_127)) {
 x_128 = lean_alloc_ctor(1, 2, 0);
} else {
 x_128 = x_127;
}
lean_ctor_set(x_128, 0, x_125);
lean_ctor_set(x_128, 1, x_126);
return x_128;
}
}
}
}
else
{
uint8_t x_129; 
lean_dec(x_5);
lean_dec(x_2);
x_129 = !lean_is_exclusive(x_7);
if (x_129 == 0)
{
return x_7;
}
else
{
lean_object* x_130; lean_object* x_131; lean_object* x_132; 
x_130 = lean_ctor_get(x_7, 0);
x_131 = lean_ctor_get(x_7, 1);
lean_inc(x_131);
lean_inc(x_130);
lean_dec(x_7);
x_132 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_132, 0, x_130);
lean_ctor_set(x_132, 1, x_131);
return x_132;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_st_ref_take(x_1, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_List_foldl___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__8(x_2, x_3, x_4, x_9, x_5);
x_12 = lean_st_ref_set(x_1, x_11, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
x_13 = !lean_is_exclusive(x_8);
if (x_13 == 0)
{
return x_8;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_8, 0);
x_15 = lean_ctor_get(x_8, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_8);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("proof_", 6, 6);
return x_1;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1;
x_2 = lean_string_length(x_1);
return x_2;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1;
x_2 = lean_string_utf8_byte_size(x_1);
return x_2;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1;
x_2 = lean_unsigned_to_nat(0u);
x_3 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__3;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
switch (lean_obj_tag(x_7)) {
case 3:
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_5);
x_23 = lean_ctor_get(x_7, 0);
lean_inc(x_23);
lean_dec(x_7);
x_24 = lean_st_ref_take(x_1, x_8);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; uint64_t x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; uint64_t x_39; uint64_t x_40; size_t x_41; size_t x_42; size_t x_43; uint64_t x_44; 
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
lean_dec(x_24);
x_27 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
lean_inc(x_2);
x_28 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_28, 0, x_2);
lean_ctor_set(x_28, 1, x_2);
lean_ctor_set(x_28, 2, x_27);
x_29 = l_Lean_CollectLevelParams_visitLevel(x_23, x_28);
x_30 = lean_ctor_get(x_29, 2);
lean_inc(x_30);
lean_dec(x_29);
x_31 = lean_ctor_get(x_25, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_25, 1);
lean_inc(x_32);
if (lean_is_exclusive(x_25)) {
 lean_ctor_release(x_25, 0);
 lean_ctor_release(x_25, 1);
 x_33 = x_25;
} else {
 lean_dec_ref(x_25);
 x_33 = lean_box(0);
}
x_34 = lean_array_get_size(x_32);
x_35 = 7;
x_36 = lean_array_get_size(x_30);
x_37 = lean_unsigned_to_nat(0u);
x_38 = lean_nat_dec_lt(x_37, x_36);
x_39 = 32;
x_40 = 16;
x_41 = lean_usize_of_nat(x_34);
lean_dec(x_34);
x_42 = 1;
x_43 = lean_usize_sub(x_41, x_42);
if (x_38 == 0)
{
lean_dec(x_36);
x_44 = x_35;
goto block_71;
}
else
{
uint8_t x_72; 
x_72 = lean_nat_dec_le(x_36, x_36);
if (x_72 == 0)
{
lean_dec(x_36);
x_44 = x_35;
goto block_71;
}
else
{
size_t x_73; size_t x_74; uint64_t x_75; 
x_73 = 0;
x_74 = lean_usize_of_nat(x_36);
lean_dec(x_36);
x_75 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(x_30, x_73, x_74, x_35);
x_44 = x_75;
goto block_71;
}
}
block_71:
{
uint64_t x_45; uint64_t x_46; uint64_t x_47; uint64_t x_48; size_t x_49; size_t x_50; lean_object* x_51; uint8_t x_52; 
x_45 = lean_uint64_shift_right(x_44, x_39);
x_46 = lean_uint64_xor(x_44, x_45);
x_47 = lean_uint64_shift_right(x_46, x_40);
x_48 = lean_uint64_xor(x_46, x_47);
x_49 = lean_uint64_to_usize(x_48);
x_50 = lean_usize_land(x_49, x_43);
x_51 = lean_array_uget(x_32, x_50);
x_52 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1(x_30, x_51);
if (x_52 == 0)
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; uint8_t x_63; 
x_53 = lean_unsigned_to_nat(1u);
x_54 = lean_nat_add(x_31, x_53);
lean_dec(x_31);
x_55 = lean_box(0);
x_56 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_56, 0, x_30);
lean_ctor_set(x_56, 1, x_55);
lean_ctor_set(x_56, 2, x_51);
x_57 = lean_array_uset(x_32, x_50, x_56);
x_58 = lean_unsigned_to_nat(4u);
x_59 = lean_nat_mul(x_54, x_58);
x_60 = lean_unsigned_to_nat(3u);
x_61 = lean_nat_div(x_59, x_60);
lean_dec(x_59);
x_62 = lean_array_get_size(x_57);
x_63 = lean_nat_dec_le(x_61, x_62);
lean_dec(x_62);
lean_dec(x_61);
if (x_63 == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_64 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__3(x_57);
if (lean_is_scalar(x_33)) {
 x_65 = lean_alloc_ctor(0, 2, 0);
} else {
 x_65 = x_33;
}
lean_ctor_set(x_65, 0, x_54);
lean_ctor_set(x_65, 1, x_64);
x_66 = lean_st_ref_set(x_1, x_65, x_26);
x_9 = x_66;
goto block_22;
}
else
{
lean_object* x_67; lean_object* x_68; 
if (lean_is_scalar(x_33)) {
 x_67 = lean_alloc_ctor(0, 2, 0);
} else {
 x_67 = x_33;
}
lean_ctor_set(x_67, 0, x_54);
lean_ctor_set(x_67, 1, x_57);
x_68 = lean_st_ref_set(x_1, x_67, x_26);
x_9 = x_68;
goto block_22;
}
}
else
{
lean_object* x_69; lean_object* x_70; 
lean_dec(x_51);
lean_dec(x_30);
if (lean_is_scalar(x_33)) {
 x_69 = lean_alloc_ctor(0, 2, 0);
} else {
 x_69 = x_33;
}
lean_ctor_set(x_69, 0, x_31);
lean_ctor_set(x_69, 1, x_32);
x_70 = lean_st_ref_set(x_1, x_69, x_26);
x_9 = x_70;
goto block_22;
}
}
}
else
{
uint8_t x_76; 
lean_dec(x_23);
lean_dec(x_2);
x_76 = !lean_is_exclusive(x_24);
if (x_76 == 0)
{
x_9 = x_24;
goto block_22;
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_77 = lean_ctor_get(x_24, 0);
x_78 = lean_ctor_get(x_24, 1);
lean_inc(x_78);
lean_inc(x_77);
lean_dec(x_24);
x_79 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_79, 0, x_77);
lean_ctor_set(x_79, 1, x_78);
x_9 = x_79;
goto block_22;
}
}
}
case 4:
{
lean_object* x_80; 
lean_dec(x_2);
x_80 = lean_ctor_get(x_7, 0);
lean_inc(x_80);
if (lean_obj_tag(x_80) == 1)
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; uint8_t x_84; 
x_81 = lean_ctor_get(x_7, 1);
lean_inc(x_81);
lean_dec(x_7);
x_82 = lean_ctor_get(x_80, 0);
lean_inc(x_82);
x_83 = lean_ctor_get(x_80, 1);
lean_inc(x_83);
lean_dec(x_80);
x_84 = lean_name_eq(x_82, x_6);
lean_dec(x_82);
if (x_84 == 0)
{
lean_object* x_85; lean_object* x_86; 
lean_dec(x_83);
x_85 = lean_box(0);
x_86 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1(x_1, x_3, x_4, x_5, x_81, x_85, x_8);
x_9 = x_86;
goto block_22;
}
else
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; uint8_t x_95; 
x_87 = lean_string_utf8_byte_size(x_83);
x_88 = lean_unsigned_to_nat(0u);
lean_inc(x_83);
x_89 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_89, 0, x_83);
lean_ctor_set(x_89, 1, x_88);
lean_ctor_set(x_89, 2, x_87);
x_90 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__2;
x_91 = l_Substring_nextn(x_89, x_90, x_88);
lean_dec(x_89);
x_92 = lean_nat_add(x_88, x_91);
lean_dec(x_91);
x_93 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_93, 0, x_83);
lean_ctor_set(x_93, 1, x_88);
lean_ctor_set(x_93, 2, x_92);
x_94 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__4;
x_95 = l_Substring_beq(x_93, x_94);
if (x_95 == 0)
{
lean_object* x_96; lean_object* x_97; 
x_96 = lean_box(0);
x_97 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1(x_1, x_3, x_4, x_5, x_81, x_96, x_8);
x_9 = x_97;
goto block_22;
}
else
{
lean_object* x_98; lean_object* x_99; 
lean_dec(x_81);
lean_dec(x_5);
x_98 = lean_box(0);
x_99 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_99, 0, x_98);
lean_ctor_set(x_99, 1, x_8);
x_9 = x_99;
goto block_22;
}
}
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; 
lean_dec(x_80);
x_100 = lean_ctor_get(x_7, 1);
lean_inc(x_100);
lean_dec(x_7);
x_101 = lean_box(0);
x_102 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1(x_1, x_3, x_4, x_5, x_100, x_101, x_8);
x_9 = x_102;
goto block_22;
}
}
default: 
{
lean_object* x_103; lean_object* x_104; 
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_2);
x_103 = lean_box(0);
x_104 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_104, 0, x_103);
lean_ctor_set(x_104, 1, x_8);
x_9 = x_104;
goto block_22;
}
}
block_22:
{
if (lean_obj_tag(x_9) == 0)
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; uint8_t x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_9, 0);
lean_dec(x_11);
x_12 = 1;
x_13 = lean_box(x_12);
lean_ctor_set(x_9, 0, x_13);
return x_9;
}
else
{
lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_9, 1);
lean_inc(x_14);
lean_dec(x_9);
x_15 = 1;
x_16 = lean_box(x_15);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_14);
return x_17;
}
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_9);
if (x_18 == 0)
{
return x_9;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_9, 0);
x_20 = lean_ctor_get(x_9, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_9);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Name_instBEq;
x_2 = lean_alloc_closure((void*)(l_Array_instBEq___rarg___boxed), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_instHashableName;
x_2 = lean_alloc_closure((void*)(l_instHashableArray___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__5;
x_6 = lean_st_mk_ref(x_5, x_4);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
x_9 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__1;
x_10 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__2;
x_11 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3;
lean_inc(x_7);
x_12 = lean_alloc_closure((void*)(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___boxed), 8, 6);
lean_closure_set(x_12, 0, x_7);
lean_closure_set(x_12, 1, x_5);
lean_closure_set(x_12, 2, x_9);
lean_closure_set(x_12, 3, x_10);
lean_closure_set(x_12, 4, x_11);
lean_closure_set(x_12, 5, x_1);
x_13 = lean_st_mk_ref(x_5, x_8);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_12, x_2, x_14, x_15);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_st_ref_get(x_14, x_17);
lean_dec(x_14);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = lean_st_ref_get(x_7, x_19);
lean_dec(x_7);
return x_20;
}
else
{
uint8_t x_21; 
lean_dec(x_7);
x_21 = !lean_is_exclusive(x_18);
if (x_21 == 0)
{
return x_18;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_18, 0);
x_23 = lean_ctor_get(x_18, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_18);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
else
{
uint8_t x_25; 
lean_dec(x_14);
lean_dec(x_7);
x_25 = !lean_is_exclusive(x_16);
if (x_25 == 0)
{
return x_16;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_16, 0);
x_27 = lean_ctor_get(x_16, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_16);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
else
{
uint8_t x_29; 
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_2);
x_29 = !lean_is_exclusive(x_13);
if (x_29 == 0)
{
return x_13;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_13, 0);
x_31 = lean_ctor_get(x_13, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_13);
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
lean_dec(x_2);
lean_dec(x_1);
x_33 = !lean_is_exclusive(x_6);
if (x_33 == 0)
{
return x_6;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_6, 0);
x_35 = lean_ctor_get(x_6, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_6);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3), 4, 2);
lean_closure_set(x_3, 0, x_2);
lean_closure_set(x_3, 1, x_1);
x_4 = l_runST___rarg(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_isEqvAux___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; lean_object* x_8; 
x_7 = l_Array_isEqvAux___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_8 = lean_box(x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; uint64_t x_7; uint64_t x_8; lean_object* x_9; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_uint64(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__5(x_1, x_5, x_6, x_7);
lean_dec(x_1);
x_9 = lean_box_uint64(x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_List_foldl___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__8(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Lean_ForEachExpr_visit___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___spec__9___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__2(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; size_t x_10; size_t x_11; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = lean_array_get_size(x_6);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_dec_eq(x_7, x_8);
lean_dec(x_7);
x_10 = 1;
x_11 = lean_usize_add(x_2, x_10);
if (x_9 == 0)
{
lean_dec(x_6);
x_2 = x_11;
goto _start;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_array_fget(x_6, x_13);
lean_dec(x_6);
x_15 = lean_array_push(x_4, x_14);
x_2 = x_11;
x_4 = x_15;
goto _start;
}
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_filterMapM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_lt(x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
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
x_8 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
return x_8;
}
else
{
size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_usize_of_nat(x_2);
x_10 = lean_usize_of_nat(x_3);
x_11 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_12 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__2(x_1, x_9, x_10, x_11);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__3(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
x_8 = l_Array_contains___at_Lean_findField_x3f___spec__1(x_1, x_7);
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
if (x_8 == 0)
{
lean_object* x_11; 
x_11 = lean_array_push(x_5, x_7);
x_3 = x_10;
x_5 = x_11;
goto _start;
}
else
{
lean_dec(x_7);
x_3 = x_10;
goto _start;
}
}
else
{
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__4(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_lt(x_3, x_2);
if (x_5 == 0)
{
return x_4;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; size_t x_11; size_t x_12; 
x_6 = lean_array_uget(x_4, x_3);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_array_uset(x_4, x_3, x_7);
x_9 = lean_array_get_size(x_6);
x_10 = lean_nat_dec_lt(x_7, x_9);
x_11 = 1;
x_12 = lean_usize_add(x_3, x_11);
if (x_10 == 0)
{
lean_object* x_13; lean_object* x_14; 
lean_dec(x_9);
lean_dec(x_6);
x_13 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_14 = lean_array_uset(x_8, x_3, x_13);
x_3 = x_12;
x_4 = x_14;
goto _start;
}
else
{
uint8_t x_16; 
x_16 = lean_nat_dec_le(x_9, x_9);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_dec(x_9);
lean_dec(x_6);
x_17 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_18 = lean_array_uset(x_8, x_3, x_17);
x_3 = x_12;
x_4 = x_18;
goto _start;
}
else
{
size_t x_20; size_t x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_20 = 0;
x_21 = lean_usize_of_nat(x_9);
lean_dec(x_9);
x_22 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_23 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__3(x_1, x_6, x_20, x_21, x_22);
lean_dec(x_6);
x_24 = lean_array_uset(x_8, x_3, x_23);
x_3 = x_12;
x_4 = x_24;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_2 = lean_array_get_size(x_1);
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Array_filterMapM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__1(x_1, x_3, x_2);
lean_dec(x_2);
x_5 = l_Array_isEmpty___rarg(x_4);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_array_size(x_1);
x_7 = 0;
x_8 = l_Array_mapMUnsafe_map___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__4(x_4, x_6, x_7, x_1);
lean_dec(x_4);
x_1 = x_8;
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_4);
x_10 = l_Array_flatten___rarg(x_1);
lean_dec(x_1);
x_11 = lean_array_to_list(lean_box(0), x_10);
x_12 = l_List_eraseDups___at_Lean_ResolveName_resolveGlobalName_loop___spec__1(x_11);
x_13 = l_List_redLength___rarg(x_12);
x_14 = lean_mk_empty_array_with_capacity(x_13);
lean_dec(x_13);
x_15 = l_List_toArrayAux___rarg(x_12, x_14);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__2(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_filterMapM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Array_filterMapM___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__1(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__3(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_mapMUnsafe_map___at___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams___spec__4(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 2);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_array_push(x_1, x_3);
x_1 = x_5;
x_2 = x_4;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__2(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Std_DHashMap_Internal_AssocList_foldlM___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__1(x_4, x_6);
x_8 = 1;
x_9 = lean_usize_add(x_2, x_8);
x_2 = x_9;
x_4 = x_7;
goto _start;
}
else
{
return x_4;
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("universes ", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" only occur together.", 21, 21);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_8 = lean_array_to_list(lean_box(0), x_1);
x_9 = lean_box(0);
x_10 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_8, x_9);
x_11 = l_Lean_MessageData_ofList(x_10);
x_12 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__2;
x_13 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
x_14 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__4;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
x_16 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_16, 0, x_15);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_7);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
lean_inc(x_1);
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
if (lean_is_exclusive(x_8)) {
 lean_ctor_release(x_8, 0);
 lean_ctor_release(x_8, 1);
 x_11 = x_8;
} else {
 lean_dec_ref(x_8);
 x_11 = lean_box(0);
}
x_20 = l_Lean_ConstantInfo_type(x_9);
lean_dec(x_9);
x_21 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped(x_20, x_1);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = lean_array_get_size(x_22);
x_24 = lean_unsigned_to_nat(0u);
x_25 = lean_nat_dec_lt(x_24, x_23);
if (x_25 == 0)
{
lean_object* x_26; 
lean_dec(x_23);
lean_dec(x_22);
x_26 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_12 = x_26;
goto block_19;
}
else
{
uint8_t x_27; 
x_27 = lean_nat_dec_le(x_23, x_23);
if (x_27 == 0)
{
lean_object* x_28; 
lean_dec(x_23);
lean_dec(x_22);
x_28 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_12 = x_28;
goto block_19;
}
else
{
size_t x_29; size_t x_30; lean_object* x_31; lean_object* x_32; 
x_29 = 0;
x_30 = lean_usize_of_nat(x_23);
lean_dec(x_23);
x_31 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_32 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__2(x_22, x_29, x_30, x_31);
lean_dec(x_22);
x_12 = x_32;
goto block_19;
}
}
block_19:
{
lean_object* x_13; uint8_t x_14; 
x_13 = l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_badParams(x_12);
x_14 = l_Array_isEmpty___rarg(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
lean_dec(x_11);
x_15 = lean_box(0);
x_16 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1(x_13, x_15, x_3, x_4, x_5, x_6, x_10);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; 
lean_dec(x_13);
x_17 = lean_box(0);
if (lean_is_scalar(x_11)) {
 x_18 = lean_alloc_ctor(0, 2, 0);
} else {
 x_18 = x_11;
}
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_10);
return x_18;
}
}
}
else
{
uint8_t x_33; 
lean_dec(x_1);
x_33 = !lean_is_exclusive(x_8);
if (x_33 == 0)
{
return x_8;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_8, 0);
x_35 = lean_ctor_get(x_8, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_8);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
return x_36;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__2(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
lean_dec(x_5);
lean_dec(x_4);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("All declarations have good universe levels.", 43, 43);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("THE STATEMENTS OF THE FOLLOWING DECLARATIONS HAVE BAD UNIVERSE LEVELS. This usually means that there is a `max u v` in the type where neither `u` nor `v` occur by themselves. Solution: Find the type (or type bundled with data) that has this universe argument and provide the universe level explicitly. If this happens in an implicit argument of the declaration, a better solution is to move this argument to a `variables` command (then it's not necessary to provide the universe level).\n\nIt is possible that this linter gives a false positive on definitions where the value of the definition has the universes occur separately, and the definition will usually be used with explicit universe arguments. In this case, feel free to add `@[nolint checkUnivs]`.", 756, 756);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_checkUnivs___elambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___closed__7;
x_2 = l_Batteries_Tactic_Lint_checkUnivs___closed__3;
x_3 = l_Batteries_Tactic_Lint_checkUnivs___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_checkUnivs() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_checkUnivs___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_checkUnivs___elambda__1___spec__2(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_checkUnivs___elambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Batteries_Tactic_Lint_checkUnivs___elambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_box(0);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Eq", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Iff", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("LHS equals RHS syntactically", 28, 28);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__6;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__7;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__2;
x_9 = lean_unsigned_to_nat(3u);
x_10 = l_Lean_Expr_isAppOfArity(x_2, x_8, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4;
x_12 = lean_unsigned_to_nat(2u);
x_13 = l_Lean_Expr_isAppOfArity(x_2, x_11, x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_7);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_16 = l_Lean_Expr_appFn_x21(x_2);
x_17 = l_Lean_Expr_appArg_x21(x_16);
lean_dec(x_16);
x_18 = l_Lean_Expr_appArg_x21(x_2);
x_19 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5;
x_20 = lean_expr_eqv(x_17, x_18);
lean_dec(x_18);
lean_dec(x_17);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_box(0);
x_22 = lean_apply_6(x_19, x_21, x_3, x_4, x_5, x_6, x_7);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_23 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8;
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_7);
return x_24;
}
}
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_25 = l_Lean_Expr_appFn_x21(x_2);
x_26 = l_Lean_Expr_appArg_x21(x_25);
lean_dec(x_25);
x_27 = l_Lean_Expr_appArg_x21(x_2);
x_28 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5;
x_29 = lean_expr_eqv(x_26, x_27);
lean_dec(x_27);
lean_dec(x_26);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_box(0);
x_31 = lean_apply_6(x_28, x_30, x_3, x_4, x_5, x_6, x_7);
return x_31;
}
else
{
lean_object* x_32; lean_object* x_33; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_32 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8;
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_7);
return x_33;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___boxed), 7, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
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
x_12 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___closed__1;
x_13 = 0;
x_14 = l_Lean_Meta_forallTelescope___at_Lean_Meta_mapForallTelescope_x27___spec__1___rarg(x_11, x_12, x_13, x_3, x_4, x_5, x_6, x_10);
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
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No declarations are syntactic tautologies.", 42, 42);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_synTaut___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_synTaut___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("THE FOLLOWING DECLARATIONS ARE SYNTACTIC TAUTOLOGIES. This usually means that they are of the form `∀ a b ... z, e₁ = e₂` where `e₁` and `e₂` are identical expressions. We call declarations of this form syntactic tautologies. Such lemmas are (mostly) useless and sometimes introduced unintentionally when proving basic facts using `rfl`, when elaboration results in a different term than the user intended. You should check that the declaration really says what you think it does.", 490, 480);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_synTaut___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_synTaut___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_synTaut___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_synTaut___closed__7;
x_2 = l_Batteries_Tactic_Lint_synTaut___closed__3;
x_3 = l_Batteries_Tactic_Lint_synTaut___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_synTaut() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_synTaut___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unnecessary have ", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_10 = lean_erase_macro_scopes(x_1);
x_11 = l_Lean_MessageData_ofName(x_10);
x_12 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__2;
x_13 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
x_14 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6;
x_15 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
x_16 = l_Lean_MessageData_ofExpr(x_2);
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
x_18 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_19, x_5, x_6, x_7, x_8, x_9);
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = lean_st_ref_take(x_3, x_22);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
x_26 = lean_array_push(x_24, x_21);
x_27 = lean_st_ref_set(x_3, x_26, x_25);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
return x_27;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_27, 0);
x_30 = lean_ctor_get(x_27, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_27);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = l_Lean_Expr_hasLooseBVars(x_4);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_box(0);
x_13 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1(x_1, x_2, x_3, x_12, x_6, x_7, x_8, x_9, x_10);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_2);
lean_dec(x_1);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_10);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Expr_letFun_x3f(x_2);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_box(0);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_7);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_11 = lean_ctor_get(x_8, 0);
lean_inc(x_11);
lean_dec(x_8);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
x_14 = lean_ctor_get(x_11, 0);
lean_inc(x_14);
lean_dec(x_11);
x_15 = lean_ctor_get(x_12, 0);
lean_inc(x_15);
lean_dec(x_12);
x_16 = !lean_is_exclusive(x_13);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_ctor_get(x_13, 1);
x_18 = lean_ctor_get(x_13, 0);
lean_dec(x_18);
x_19 = l_Lean_Name_isInternal(x_14);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; 
lean_free_object(x_13);
x_20 = lean_box(0);
x_21 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2(x_14, x_15, x_1, x_17, x_20, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_17);
return x_21;
}
else
{
lean_object* x_22; 
lean_dec(x_17);
lean_dec(x_15);
lean_dec(x_14);
x_22 = lean_box(0);
lean_ctor_set(x_13, 1, x_7);
lean_ctor_set(x_13, 0, x_22);
return x_13;
}
}
else
{
lean_object* x_23; uint8_t x_24; 
x_23 = lean_ctor_get(x_13, 1);
lean_inc(x_23);
lean_dec(x_13);
x_24 = l_Lean_Name_isInternal(x_14);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_box(0);
x_26 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2(x_14, x_15, x_1, x_23, x_25, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_23);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; 
lean_dec(x_23);
lean_dec(x_15);
lean_dec(x_14);
x_27 = lean_box(0);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_7);
return x_28;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_7 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_8 = lean_st_mk_ref(x_7, x_6);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
lean_inc(x_9);
x_11 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_findUnusedHaves___lambda__3___boxed), 7, 1);
lean_closure_set(x_11, 0, x_9);
x_12 = l_Lean_Meta_forEachExpr___at_Lean_Meta_setMVarUserNamesAt___spec__5(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_st_ref_get(x_9, x_13);
lean_dec(x_9);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
return x_14;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_14, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_14);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
else
{
uint8_t x_19; 
lean_dec(x_9);
x_19 = !lean_is_exclusive(x_12);
if (x_19 == 0)
{
return x_12;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_12, 0);
x_21 = lean_ctor_get(x_12, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_12);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_findUnusedHaves___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_findUnusedHaves___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_8;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5;
x_9 = l_Array_isEmpty___rarg(x_1);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_10 = lean_array_to_list(lean_box(0), x_1);
x_11 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2;
x_12 = l_Lean_MessageData_joinSep(x_10, x_11);
x_13 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_13, 0, x_12);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; 
lean_dec(x_1);
x_15 = lean_box(0);
x_16 = lean_apply_6(x_8, x_15, x_3, x_4, x_5, x_6, x_7);
return x_16;
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___boxed), 7, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_getConstInfo___at_Lean_Meta_mkConstWithFreshMVarLevels___spec__1(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Lean_ConstantInfo_type(x_9);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_12 = l_Batteries_Tactic_Lint_findUnusedHaves(x_11, x_3, x_4, x_5, x_6, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___closed__1;
x_16 = l_Lean_ConstantInfo_value_x3f(x_9);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_box(0);
x_18 = lean_apply_7(x_15, x_13, x_17, x_3, x_4, x_5, x_6, x_14);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_16, 0);
lean_inc(x_19);
lean_dec(x_16);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_20 = l_Batteries_Tactic_Lint_findUnusedHaves(x_19, x_3, x_4, x_5, x_6, x_14);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = l_Array_append___rarg(x_13, x_21);
lean_dec(x_21);
x_24 = lean_box(0);
x_25 = lean_apply_7(x_15, x_23, x_24, x_3, x_4, x_5, x_6, x_22);
return x_25;
}
else
{
uint8_t x_26; 
lean_dec(x_13);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_26 = !lean_is_exclusive(x_20);
if (x_26 == 0)
{
return x_20;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_20, 0);
x_28 = lean_ctor_get(x_20, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_20);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
}
else
{
uint8_t x_30; 
lean_dec(x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_30 = !lean_is_exclusive(x_12);
if (x_30 == 0)
{
return x_12;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_12, 0);
x_32 = lean_ctor_get(x_12, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_12);
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
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_34 = !lean_is_exclusive(x_8);
if (x_34 == 0)
{
return x_8;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_8, 0);
x_36 = lean_ctor_get(x_8, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_8);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No declarations have unused term mode have statements.", 54, 54);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("THE FOLLOWING DECLARATIONS HAVE INEFFECTUAL TERM MODE HAVE/SUFFICES BLOCKS. In the case of `have` this is a term of the form `have h := foo, bar` where `bar` does not refer to `foo`. Such statements have no effect on the generated proof, and can just be replaced by `bar`, in addition to being ineffectual, they may make unnecessary assumptions in proofs appear as if they are used. For `suffices` this is a term of the form `suffices h : foo, proof_of_goal, proof_of_foo` where `proof_of_goal` does not refer to `foo`. Such statements have no effect on the generated proof, and can just be replaced by `proof_of_goal`, in addition to being ineffectual, they may make unnecessary assumptions in proofs appear as if they are used.", 729, 729);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__7;
x_2 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__3;
x_3 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_unusedHavesSuffices() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; 
x_3 = l_List_reverse___rarg(x_2);
return x_3;
}
else
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
x_7 = l_Lean_MessageData_ofExpr(x_5);
x_8 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_9 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
x_10 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
lean_ctor_set(x_1, 1, x_2);
lean_ctor_set(x_1, 0, x_10);
{
lean_object* _tmp_0 = x_6;
lean_object* _tmp_1 = x_1;
x_1 = _tmp_0;
x_2 = _tmp_1;
}
goto _start;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_12 = lean_ctor_get(x_1, 0);
x_13 = lean_ctor_get(x_1, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_1);
x_14 = l_Lean_MessageData_ofExpr(x_12);
x_15 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_16 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_14);
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_2);
x_1 = x_13;
x_2 = x_18;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_eq(x_4, x_5);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_array_uget(x_3, x_4);
lean_inc(x_7);
x_14 = l_Lean_Meta_getFVarLocalDecl(x_13, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; uint8_t x_17; uint8_t x_18; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Lean_LocalDecl_binderInfo(x_15);
lean_dec(x_15);
x_18 = l_Lean_BinderInfo_isExplicit(x_17);
if (x_18 == 0)
{
size_t x_19; size_t x_20; 
lean_dec(x_13);
x_19 = 1;
x_20 = lean_usize_add(x_4, x_19);
x_4 = x_20;
x_11 = x_16;
goto _start;
}
else
{
lean_object* x_22; uint8_t x_23; 
x_22 = l_Lean_Expr_fvarId_x21(x_13);
x_23 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_22, x_1);
if (x_23 == 0)
{
size_t x_24; size_t x_25; 
lean_dec(x_22);
lean_dec(x_13);
x_24 = 1;
x_25 = lean_usize_add(x_4, x_24);
x_4 = x_25;
x_11 = x_16;
goto _start;
}
else
{
uint8_t x_27; 
x_27 = l_Lean_Expr_hasAnyFVar_visit___at_Lean_Expr_containsFVar___spec__1(x_22, x_2);
lean_dec(x_22);
if (x_27 == 0)
{
size_t x_28; size_t x_29; 
lean_dec(x_13);
x_28 = 1;
x_29 = lean_usize_add(x_4, x_28);
x_4 = x_29;
x_11 = x_16;
goto _start;
}
else
{
lean_object* x_31; size_t x_32; size_t x_33; 
x_31 = lean_array_push(x_6, x_13);
x_32 = 1;
x_33 = lean_usize_add(x_4, x_32);
x_4 = x_33;
x_6 = x_31;
x_11 = x_16;
goto _start;
}
}
}
}
else
{
uint8_t x_35; 
lean_dec(x_13);
lean_dec(x_7);
lean_dec(x_6);
x_35 = !lean_is_exclusive(x_14);
if (x_35 == 0)
{
return x_14;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_14, 0);
x_37 = lean_ctor_get(x_14, 1);
lean_inc(x_37);
lean_inc(x_36);
lean_dec(x_14);
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
lean_dec(x_7);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_6);
lean_ctor_set(x_39, 1, x_11);
return x_39;
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("should be made implicit: ", 25, 25);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_8 = lean_array_to_list(lean_box(0), x_1);
x_9 = lean_box(0);
x_10 = l_List_mapTR_loop___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__1(x_8, x_9);
x_11 = l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2;
x_12 = l_Lean_MessageData_joinSep(x_10, x_11);
x_13 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__2;
x_14 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_12);
x_15 = l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8;
x_16 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = l_Lean_addMessageContextFull___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__4(x_16, x_3, x_4, x_5, x_6, x_7);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_17, 0);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_17, 0, x_20);
return x_17;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_17, 0);
x_22 = lean_ctor_get(x_17, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_17);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_21);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_22);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4;
x_9 = lean_unsigned_to_nat(2u);
x_10 = l_Lean_Expr_isAppOfArity(x_2, x_8, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
lean_dec(x_3);
x_11 = lean_box(0);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_7);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; lean_object* x_19; lean_object* x_20; 
x_13 = l_Lean_Expr_appFn_x21(x_2);
x_14 = l_Lean_Expr_appArg_x21(x_13);
lean_dec(x_13);
x_15 = l_Lean_Expr_appArg_x21(x_2);
x_16 = lean_array_get_size(x_1);
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_nat_dec_lt(x_17, x_16);
if (x_18 == 0)
{
lean_object* x_27; 
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
x_27 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_19 = x_27;
x_20 = x_7;
goto block_26;
}
else
{
uint8_t x_28; 
x_28 = lean_nat_dec_le(x_16, x_16);
if (x_28 == 0)
{
lean_object* x_29; 
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
x_29 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
x_19 = x_29;
x_20 = x_7;
goto block_26;
}
else
{
size_t x_30; size_t x_31; lean_object* x_32; lean_object* x_33; 
x_30 = 0;
x_31 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_32 = l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1;
lean_inc(x_3);
x_33 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__2(x_14, x_15, x_1, x_30, x_31, x_32, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_15);
lean_dec(x_14);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
x_35 = lean_ctor_get(x_33, 1);
lean_inc(x_35);
lean_dec(x_33);
x_19 = x_34;
x_20 = x_35;
goto block_26;
}
else
{
uint8_t x_36; 
lean_dec(x_3);
x_36 = !lean_is_exclusive(x_33);
if (x_36 == 0)
{
return x_33;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_33, 0);
x_38 = lean_ctor_get(x_33, 1);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_33);
x_39 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_38);
return x_39;
}
}
}
}
block_26:
{
uint8_t x_21; 
x_21 = l_Array_isEmpty___rarg(x_19);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; 
x_22 = lean_box(0);
x_23 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1(x_19, x_22, x_3, x_4, x_5, x_6, x_20);
lean_dec(x_3);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; 
lean_dec(x_19);
lean_dec(x_3);
x_24 = lean_box(0);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_20);
return x_25;
}
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__2___boxed), 7, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
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
x_12 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___closed__1;
x_13 = 0;
x_14 = l_Lean_Meta_forallTelescope___at_Lean_Meta_mapForallTelescope_x27___spec__1___rarg(x_11, x_12, x_13, x_3, x_4, x_5, x_6, x_10);
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
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_7 = l_Batteries_Tactic_Lint_isAutoDecl(x_1, x_4, x_5, x_6);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_unbox(x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_box(0);
x_12 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3(x_1, x_11, x_2, x_3, x_4, x_5, x_10);
return x_12;
}
else
{
uint8_t x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_7, 0);
lean_dec(x_14);
x_15 = lean_box(0);
lean_ctor_set(x_7, 0, x_15);
return x_7;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
else
{
uint8_t x_19; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = !lean_is_exclusive(x_7);
if (x_19 == 0)
{
return x_7;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_7, 0);
x_21 = lean_ctor_get(x_7, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_7);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("No explicit variables on both sides of iff", 42, 42);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__2;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("EXPLICIT VARIABLES ON BOTH SIDES OF IFF", 39, 39);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__7;
x_2 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__3;
x_3 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__6;
x_4 = 1;
x_5 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Batteries_Tactic_Lint_explicitVarsOfIff() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__8;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_14 = l_Array_foldlMUnsafe_fold___at_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___spec__2(x_1, x_2, x_3, x_12, x_13, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Util_CollectLevelParams(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Util_ForEachExpr(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_ForEachExpr(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_GlobalInstances(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Check(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Util_Recognizers(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_DocString(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Lint_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Tactic_Lint_Misc(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Util_CollectLevelParams(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Util_ForEachExpr(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_ForEachExpr(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_GlobalInstances(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Check(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Util_Recognizers(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_DocString(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Lint_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__2 = _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__2);
l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3 = _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__3);
l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__4 = _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__4);
l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5 = _init_l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___elambda__1___lambda__2___closed__5);
l_Batteries_Tactic_Lint_dupNamespace___closed__1 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__1);
l_Batteries_Tactic_Lint_dupNamespace___closed__2 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__2);
l_Batteries_Tactic_Lint_dupNamespace___closed__3 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__3);
l_Batteries_Tactic_Lint_dupNamespace___closed__4 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__4);
l_Batteries_Tactic_Lint_dupNamespace___closed__5 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__5);
l_Batteries_Tactic_Lint_dupNamespace___closed__6 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__6);
l_Batteries_Tactic_Lint_dupNamespace___closed__7 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__7);
l_Batteries_Tactic_Lint_dupNamespace___closed__8 = _init_l_Batteries_Tactic_Lint_dupNamespace___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace___closed__8);
l_Batteries_Tactic_Lint_dupNamespace = _init_l_Batteries_Tactic_Lint_dupNamespace();
lean_mark_persistent(l_Batteries_Tactic_Lint_dupNamespace);
l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1 = _init_l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1();
lean_mark_persistent(l_Lean_isProjectionFn___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__1___closed__1);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__1 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__1();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__1);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__2);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__3 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__3();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__3);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__4);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__5 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__5();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__5);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__6);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__7 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__7();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__7);
l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8 = _init_l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8();
lean_mark_persistent(l_List_mapM_loop___at_Batteries_Tactic_Lint_unusedArguments___elambda__1___spec__3___closed__8);
l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_unusedArguments___closed__1 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__1);
l_Batteries_Tactic_Lint_unusedArguments___closed__2 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__2);
l_Batteries_Tactic_Lint_unusedArguments___closed__3 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__3);
l_Batteries_Tactic_Lint_unusedArguments___closed__4 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__4);
l_Batteries_Tactic_Lint_unusedArguments___closed__5 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__5);
l_Batteries_Tactic_Lint_unusedArguments___closed__6 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__6);
l_Batteries_Tactic_Lint_unusedArguments___closed__7 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__7);
l_Batteries_Tactic_Lint_unusedArguments___closed__8 = _init_l_Batteries_Tactic_Lint_unusedArguments___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments___closed__8);
l_Batteries_Tactic_Lint_unusedArguments = _init_l_Batteries_Tactic_Lint_unusedArguments();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedArguments);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__1 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__1);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__2 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__2);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__3 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__3___closed__3);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__1 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__1);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__2 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__2);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__3 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__3);
l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__4 = _init_l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___elambda__1___lambda__4___closed__4);
l_Batteries_Tactic_Lint_docBlame___closed__1 = _init_l_Batteries_Tactic_Lint_docBlame___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__1);
l_Batteries_Tactic_Lint_docBlame___closed__2 = _init_l_Batteries_Tactic_Lint_docBlame___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__2);
l_Batteries_Tactic_Lint_docBlame___closed__3 = _init_l_Batteries_Tactic_Lint_docBlame___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__3);
l_Batteries_Tactic_Lint_docBlame___closed__4 = _init_l_Batteries_Tactic_Lint_docBlame___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__4);
l_Batteries_Tactic_Lint_docBlame___closed__5 = _init_l_Batteries_Tactic_Lint_docBlame___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__5);
l_Batteries_Tactic_Lint_docBlame___closed__6 = _init_l_Batteries_Tactic_Lint_docBlame___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__6);
l_Batteries_Tactic_Lint_docBlame___closed__7 = _init_l_Batteries_Tactic_Lint_docBlame___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__7);
l_Batteries_Tactic_Lint_docBlame___closed__8 = _init_l_Batteries_Tactic_Lint_docBlame___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame___closed__8);
l_Batteries_Tactic_Lint_docBlame = _init_l_Batteries_Tactic_Lint_docBlame();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlame);
l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_docBlameThm___closed__1 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__1);
l_Batteries_Tactic_Lint_docBlameThm___closed__2 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__2);
l_Batteries_Tactic_Lint_docBlameThm___closed__3 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__3);
l_Batteries_Tactic_Lint_docBlameThm___closed__4 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__4);
l_Batteries_Tactic_Lint_docBlameThm___closed__5 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__5);
l_Batteries_Tactic_Lint_docBlameThm___closed__6 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__6);
l_Batteries_Tactic_Lint_docBlameThm___closed__7 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__7);
l_Batteries_Tactic_Lint_docBlameThm___closed__8 = _init_l_Batteries_Tactic_Lint_docBlameThm___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm___closed__8);
l_Batteries_Tactic_Lint_docBlameThm = _init_l_Batteries_Tactic_Lint_docBlameThm();
lean_mark_persistent(l_Batteries_Tactic_Lint_docBlameThm);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__3 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__3);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__4);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__5 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__5);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__6 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__6);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__7 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__7);
l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8 = _init_l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___elambda__1___lambda__1___closed__8);
l_Batteries_Tactic_Lint_defLemma___closed__1 = _init_l_Batteries_Tactic_Lint_defLemma___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__1);
l_Batteries_Tactic_Lint_defLemma___closed__2 = _init_l_Batteries_Tactic_Lint_defLemma___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__2);
l_Batteries_Tactic_Lint_defLemma___closed__3 = _init_l_Batteries_Tactic_Lint_defLemma___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__3);
l_Batteries_Tactic_Lint_defLemma___closed__4 = _init_l_Batteries_Tactic_Lint_defLemma___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__4);
l_Batteries_Tactic_Lint_defLemma___closed__5 = _init_l_Batteries_Tactic_Lint_defLemma___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__5);
l_Batteries_Tactic_Lint_defLemma___closed__6 = _init_l_Batteries_Tactic_Lint_defLemma___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__6);
l_Batteries_Tactic_Lint_defLemma___closed__7 = _init_l_Batteries_Tactic_Lint_defLemma___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__7);
l_Batteries_Tactic_Lint_defLemma___closed__8 = _init_l_Batteries_Tactic_Lint_defLemma___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma___closed__8);
l_Batteries_Tactic_Lint_defLemma = _init_l_Batteries_Tactic_Lint_defLemma();
lean_mark_persistent(l_Batteries_Tactic_Lint_defLemma);
l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__3 = _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__1___closed__3);
l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_checkType___closed__1 = _init_l_Batteries_Tactic_Lint_checkType___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__1);
l_Batteries_Tactic_Lint_checkType___closed__2 = _init_l_Batteries_Tactic_Lint_checkType___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__2);
l_Batteries_Tactic_Lint_checkType___closed__3 = _init_l_Batteries_Tactic_Lint_checkType___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__3);
l_Batteries_Tactic_Lint_checkType___closed__4 = _init_l_Batteries_Tactic_Lint_checkType___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__4);
l_Batteries_Tactic_Lint_checkType___closed__5 = _init_l_Batteries_Tactic_Lint_checkType___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__5);
l_Batteries_Tactic_Lint_checkType___closed__6 = _init_l_Batteries_Tactic_Lint_checkType___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__6);
l_Batteries_Tactic_Lint_checkType___closed__7 = _init_l_Batteries_Tactic_Lint_checkType___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__7);
l_Batteries_Tactic_Lint_checkType___closed__8 = _init_l_Batteries_Tactic_Lint_checkType___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType___closed__8);
l_Batteries_Tactic_Lint_checkType = _init_l_Batteries_Tactic_Lint_checkType();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkType);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__1);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__2 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__2();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__2);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__3 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__3();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__3);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__4 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__4();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__2___closed__4);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__1 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__1();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__1);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__2 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__2();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__2);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__3);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__4 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__4();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__4);
l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__5 = _init_l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__5();
lean_mark_persistent(l___private_Batteries_Tactic_Lint_Misc_0__Batteries_Tactic_Lint_univParamsGrouped___lambda__3___closed__5);
l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__3 = _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__3);
l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__4 = _init_l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___elambda__1___lambda__1___closed__4);
l_Batteries_Tactic_Lint_checkUnivs___closed__1 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__1);
l_Batteries_Tactic_Lint_checkUnivs___closed__2 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__2);
l_Batteries_Tactic_Lint_checkUnivs___closed__3 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__3);
l_Batteries_Tactic_Lint_checkUnivs___closed__4 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__4);
l_Batteries_Tactic_Lint_checkUnivs___closed__5 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__5);
l_Batteries_Tactic_Lint_checkUnivs___closed__6 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__6);
l_Batteries_Tactic_Lint_checkUnivs___closed__7 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__7);
l_Batteries_Tactic_Lint_checkUnivs___closed__8 = _init_l_Batteries_Tactic_Lint_checkUnivs___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs___closed__8);
l_Batteries_Tactic_Lint_checkUnivs = _init_l_Batteries_Tactic_Lint_checkUnivs();
lean_mark_persistent(l_Batteries_Tactic_Lint_checkUnivs);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__2 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__2);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__3 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__3);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__4);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__5);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__6 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__6);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__7 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__7);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__2___closed__8);
l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___closed__1 = _init_l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___elambda__1___lambda__3___closed__1);
l_Batteries_Tactic_Lint_synTaut___closed__1 = _init_l_Batteries_Tactic_Lint_synTaut___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__1);
l_Batteries_Tactic_Lint_synTaut___closed__2 = _init_l_Batteries_Tactic_Lint_synTaut___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__2);
l_Batteries_Tactic_Lint_synTaut___closed__3 = _init_l_Batteries_Tactic_Lint_synTaut___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__3);
l_Batteries_Tactic_Lint_synTaut___closed__4 = _init_l_Batteries_Tactic_Lint_synTaut___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__4);
l_Batteries_Tactic_Lint_synTaut___closed__5 = _init_l_Batteries_Tactic_Lint_synTaut___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__5);
l_Batteries_Tactic_Lint_synTaut___closed__6 = _init_l_Batteries_Tactic_Lint_synTaut___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__6);
l_Batteries_Tactic_Lint_synTaut___closed__7 = _init_l_Batteries_Tactic_Lint_synTaut___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__7);
l_Batteries_Tactic_Lint_synTaut___closed__8 = _init_l_Batteries_Tactic_Lint_synTaut___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut___closed__8);
l_Batteries_Tactic_Lint_synTaut = _init_l_Batteries_Tactic_Lint_synTaut();
lean_mark_persistent(l_Batteries_Tactic_Lint_synTaut);
l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__1);
l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_findUnusedHaves___lambda__1___closed__2);
l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___closed__1 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___elambda__1___lambda__2___closed__1);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__1 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__1);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__2 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__2);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__3 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__3);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__4 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__4);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__5 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__5);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__6 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__6);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__7 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__7);
l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__8 = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices___closed__8);
l_Batteries_Tactic_Lint_unusedHavesSuffices = _init_l_Batteries_Tactic_Lint_unusedHavesSuffices();
lean_mark_persistent(l_Batteries_Tactic_Lint_unusedHavesSuffices);
l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__1 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__1);
l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__2 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__1___closed__2);
l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___closed__1 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___elambda__1___lambda__3___closed__1);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__1 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__1();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__1);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__2 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__2();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__2);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__3 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__3();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__3);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__4 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__4();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__4);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__5 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__5();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__5);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__6 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__6();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__6);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__7 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__7();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__7);
l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__8 = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__8();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff___closed__8);
l_Batteries_Tactic_Lint_explicitVarsOfIff = _init_l_Batteries_Tactic_Lint_explicitVarsOfIff();
lean_mark_persistent(l_Batteries_Tactic_Lint_explicitVarsOfIff);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
