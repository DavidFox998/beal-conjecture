// Lean compiler output
// Module: Aesop.Tree.AddRapp
// Imports: Init Aesop.Check Aesop.Tree.Traversal Aesop.Tree.TreeM Aesop.Util.UnionFind
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
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__3;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__6(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
lean_object* l_instBEqOfDecidableEq___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__13___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__35___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__12___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__14(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_UnorderedArraySet_ofHashSet___at_Aesop_partitionGoalsAndMVars___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15(lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Lean_Meta_getAssignedExprMVars___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1;
LEAN_EXPORT lean_object* l_Aesop_UnionFind_addArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__2___boxed(lean_object*, lean_object*);
uint8_t l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__13(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint64_t lean_uint64_of_nat(lean_object*);
size_t lean_uint64_to_usize(uint64_t);
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(lean_object*, lean_object*);
lean_object* l_Aesop_partitionGoalsAndMVars___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__14(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__23(lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* l_Lean_MessageData_ofList(lean_object*);
extern lean_object* l_Aesop_UnorderedArraySet_empty___at_Aesop_partitionGoalsAndMVars___spec__1;
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_mergeUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__17(lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__1;
uint8_t lean_usize_dec_eq(size_t, size_t);
lean_object* l_Aesop_treeImpl___elambda__5(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__9___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__15(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* lean_array_fset(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__10___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals(lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12(size_t, double, lean_object*, lean_object*, size_t, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1(lean_object*);
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__11___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2(lean_object*, lean_object*);
static lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__5;
static lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___lambda__1(lean_object*);
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(size_t, lean_object*);
static lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__1;
static lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1;
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__10(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___boxed(lean_object*);
lean_object* l_Aesop_getAndIncrementNextGoalId___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__8(size_t, size_t, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__18___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__15___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1(lean_object*, size_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__18(size_t, lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* l_Aesop_treeImpl___elambda__1(lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__12(lean_object*, lean_object*, size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_sets___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__24(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__11(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
uint64_t lean_uint64_shift_right(uint64_t, uint64_t);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_feraseIdx___rarg(lean_object*, lean_object*);
uint64_t lean_usize_to_uint64(size_t);
lean_object* l_Aesop_Goal_instBEq___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__5(lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__8___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__14___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__35(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__32(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed__const__1;
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__6___boxed(lean_object*, lean_object*);
lean_object* l_Lean_Meta_SavedState_runMetaM_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_incrementNumRapps(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1(lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint64_t l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__4(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnionFind_addArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__2(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__33___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__15(size_t, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__2;
LEAN_EXPORT lean_object* l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7___boxed(lean_object*, lean_object*);
lean_object* l_Aesop_instDecidableEqGoalId___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4(lean_object*, lean_object*);
extern lean_object* l_Aesop_Iteration_none;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21(lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__2;
LEAN_EXPORT uint8_t l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___closed__1;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__4(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__11(lean_object*, lean_object*, size_t, size_t);
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20___boxed(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___closed__1;
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(lean_object*, lean_object*, lean_object*, lean_object*, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11(lean_object*, lean_object*);
lean_object* l_Array_indexOfAux___at_Lean_MetavarContext_eraseExprMVarAssignment___spec__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__3;
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17(size_t, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_incrementNumGoals(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_treeImpl___elambda__3(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__7(size_t, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__28(lean_object*, lean_object*, lean_object*);
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Goal_originalGoalId(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Subarray_empty(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__10(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__3;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(size_t, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__7___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__8(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__29(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__7(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__8(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4___boxed(lean_object*, lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint64_t lean_uint64_xor(uint64_t, uint64_t);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__10___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Goal_instHashable___boxed(lean_object*);
lean_object* l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1___boxed(lean_object*, lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__6(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26___boxed(lean_object*, lean_object*);
static size_t l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__2(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MVarId_getMVarDependencies(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__33(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__29___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__30(lean_object*, lean_object*);
size_t lean_usize_sub(size_t, size_t);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1(lean_object*, double, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_getAndIncrementNextRappId___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___closed__1;
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__23___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals(lean_object*, lean_object*, lean_object*, double, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
uint8_t l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(size_t, lean_object*);
lean_object* l_Aesop_getRootGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__3___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_List_mapTR_loop___at_Lean_compileDecl___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_mergeUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__17___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(lean_object*, lean_object*);
static lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__5;
static lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__2;
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__4___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13___boxed(lean_object*, lean_object*, lean_object*);
size_t lean_usize_land(size_t, size_t);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__9(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__11___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__34(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4(lean_object* x_1, lean_object* x_2) {
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
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = l_Aesop_treeImpl___elambda__5(x_4);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = l_Aesop_treeImpl___elambda__5(x_1);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_nat_dec_eq(x_7, x_9);
lean_dec(x_9);
lean_dec(x_7);
if (x_10 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
uint8_t x_12; 
x_12 = 1;
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__7(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__7___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__8(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; size_t x_16; size_t x_17; size_t x_18; size_t x_19; size_t x_20; lean_object* x_21; lean_object* x_22; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_array_get_size(x_1);
x_7 = l_Aesop_treeImpl___elambda__5(x_4);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_uint64_of_nat(x_8);
lean_dec(x_8);
x_10 = 32;
x_11 = lean_uint64_shift_right(x_9, x_10);
x_12 = lean_uint64_xor(x_9, x_11);
x_13 = 16;
x_14 = lean_uint64_shift_right(x_12, x_13);
x_15 = lean_uint64_xor(x_12, x_14);
x_16 = lean_uint64_to_usize(x_15);
x_17 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_18 = 1;
x_19 = lean_usize_sub(x_17, x_18);
x_20 = lean_usize_land(x_16, x_19);
x_21 = lean_array_uget(x_1, x_20);
lean_ctor_set(x_2, 2, x_21);
x_22 = lean_array_uset(x_1, x_20, x_2);
x_1 = x_22;
x_2 = x_5;
goto _start;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; uint64_t x_30; uint64_t x_31; uint64_t x_32; uint64_t x_33; uint64_t x_34; uint64_t x_35; uint64_t x_36; size_t x_37; size_t x_38; size_t x_39; size_t x_40; size_t x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_24 = lean_ctor_get(x_2, 0);
x_25 = lean_ctor_get(x_2, 1);
x_26 = lean_ctor_get(x_2, 2);
lean_inc(x_26);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_2);
x_27 = lean_array_get_size(x_1);
x_28 = l_Aesop_treeImpl___elambda__5(x_24);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
lean_dec(x_28);
x_30 = lean_uint64_of_nat(x_29);
lean_dec(x_29);
x_31 = 32;
x_32 = lean_uint64_shift_right(x_30, x_31);
x_33 = lean_uint64_xor(x_30, x_32);
x_34 = 16;
x_35 = lean_uint64_shift_right(x_33, x_34);
x_36 = lean_uint64_xor(x_33, x_35);
x_37 = lean_uint64_to_usize(x_36);
x_38 = lean_usize_of_nat(x_27);
lean_dec(x_27);
x_39 = 1;
x_40 = lean_usize_sub(x_38, x_39);
x_41 = lean_usize_land(x_37, x_40);
x_42 = lean_array_uget(x_1, x_41);
x_43 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_43, 0, x_24);
lean_ctor_set(x_43, 1, x_25);
lean_ctor_set(x_43, 2, x_42);
x_44 = lean_array_uset(x_1, x_41, x_43);
x_1 = x_44;
x_2 = x_26;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
x_9 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__7___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__8(x_3, x_6);
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__5(lean_object* x_1) {
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
x_8 = l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__6(x_7, x_1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(lean_object* x_1, size_t x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = l_Aesop_treeImpl___elambda__5(x_6);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
x_11 = l_Aesop_treeImpl___elambda__5(x_1);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_nat_dec_eq(x_10, x_12);
lean_dec(x_12);
lean_dec(x_10);
if (x_13 == 0)
{
lean_object* x_14; 
x_14 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(x_1, x_2, x_8);
lean_ctor_set(x_3, 2, x_14);
return x_3;
}
else
{
lean_object* x_15; 
lean_dec(x_7);
lean_dec(x_6);
x_15 = lean_box_usize(x_2);
lean_ctor_set(x_3, 1, x_15);
lean_ctor_set(x_3, 0, x_1);
return x_3;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_16 = lean_ctor_get(x_3, 0);
x_17 = lean_ctor_get(x_3, 1);
x_18 = lean_ctor_get(x_3, 2);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_3);
x_19 = l_Aesop_treeImpl___elambda__5(x_16);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
lean_dec(x_19);
x_21 = l_Aesop_treeImpl___elambda__5(x_1);
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
lean_dec(x_21);
x_23 = lean_nat_dec_eq(x_20, x_22);
lean_dec(x_22);
lean_dec(x_20);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; 
x_24 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(x_1, x_2, x_18);
x_25 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_25, 0, x_16);
lean_ctor_set(x_25, 1, x_17);
lean_ctor_set(x_25, 2, x_24);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; 
lean_dec(x_17);
lean_dec(x_16);
x_26 = lean_box_usize(x_2);
x_27 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_27, 0, x_1);
lean_ctor_set(x_27, 1, x_26);
lean_ctor_set(x_27, 2, x_18);
return x_27;
}
}
}
}
}
static lean_object* _init_l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Goal_instBEq___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Goal_instHashable___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed__const__1() {
_start:
{
size_t x_1; lean_object* x_2; 
x_1 = 1;
x_2 = lean_box_usize(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; size_t x_6; lean_object* x_7; lean_object* x_8; size_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
x_5 = lean_array_get_size(x_4);
x_6 = lean_usize_of_nat(x_5);
lean_dec(x_5);
x_7 = lean_box_usize(x_6);
lean_inc(x_4);
x_8 = lean_array_push(x_4, x_7);
x_9 = 1;
x_10 = l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed__const__1;
x_11 = lean_array_push(x_4, x_10);
x_12 = lean_ctor_get(x_1, 2);
lean_inc(x_12);
lean_dec(x_1);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; uint64_t x_22; uint64_t x_23; uint64_t x_24; uint64_t x_25; size_t x_26; size_t x_27; size_t x_28; size_t x_29; lean_object* x_30; uint8_t x_31; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = lean_array_get_size(x_15);
x_17 = l_Aesop_treeImpl___elambda__5(x_2);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_uint64_of_nat(x_18);
lean_dec(x_18);
x_20 = 32;
x_21 = lean_uint64_shift_right(x_19, x_20);
x_22 = lean_uint64_xor(x_19, x_21);
x_23 = 16;
x_24 = lean_uint64_shift_right(x_22, x_23);
x_25 = lean_uint64_xor(x_22, x_24);
x_26 = lean_uint64_to_usize(x_25);
x_27 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_28 = lean_usize_sub(x_27, x_9);
x_29 = lean_usize_land(x_26, x_28);
x_30 = lean_array_uget(x_15, x_29);
x_31 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4(x_2, x_30);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_32 = lean_unsigned_to_nat(1u);
x_33 = lean_nat_add(x_14, x_32);
lean_dec(x_14);
x_34 = lean_box_usize(x_6);
x_35 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_35, 0, x_2);
lean_ctor_set(x_35, 1, x_34);
lean_ctor_set(x_35, 2, x_30);
x_36 = lean_array_uset(x_15, x_29, x_35);
x_37 = lean_unsigned_to_nat(4u);
x_38 = lean_nat_mul(x_33, x_37);
x_39 = lean_unsigned_to_nat(3u);
x_40 = lean_nat_div(x_38, x_39);
lean_dec(x_38);
x_41 = lean_array_get_size(x_36);
x_42 = lean_nat_dec_le(x_40, x_41);
lean_dec(x_41);
lean_dec(x_40);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; 
x_43 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__5(x_36);
lean_ctor_set(x_12, 1, x_43);
lean_ctor_set(x_12, 0, x_33);
x_44 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_44, 0, x_8);
lean_ctor_set(x_44, 1, x_11);
lean_ctor_set(x_44, 2, x_12);
return x_44;
}
else
{
lean_object* x_45; 
lean_ctor_set(x_12, 1, x_36);
lean_ctor_set(x_12, 0, x_33);
x_45 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_45, 0, x_8);
lean_ctor_set(x_45, 1, x_11);
lean_ctor_set(x_45, 2, x_12);
return x_45;
}
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_46 = lean_box(0);
x_47 = lean_array_uset(x_15, x_29, x_46);
x_48 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(x_2, x_6, x_30);
x_49 = lean_array_uset(x_47, x_29, x_48);
lean_ctor_set(x_12, 1, x_49);
x_50 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_50, 0, x_8);
lean_ctor_set(x_50, 1, x_11);
lean_ctor_set(x_50, 2, x_12);
return x_50;
}
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; uint64_t x_56; uint64_t x_57; uint64_t x_58; uint64_t x_59; uint64_t x_60; uint64_t x_61; uint64_t x_62; size_t x_63; size_t x_64; size_t x_65; size_t x_66; lean_object* x_67; uint8_t x_68; 
x_51 = lean_ctor_get(x_12, 0);
x_52 = lean_ctor_get(x_12, 1);
lean_inc(x_52);
lean_inc(x_51);
lean_dec(x_12);
x_53 = lean_array_get_size(x_52);
x_54 = l_Aesop_treeImpl___elambda__5(x_2);
x_55 = lean_ctor_get(x_54, 0);
lean_inc(x_55);
lean_dec(x_54);
x_56 = lean_uint64_of_nat(x_55);
lean_dec(x_55);
x_57 = 32;
x_58 = lean_uint64_shift_right(x_56, x_57);
x_59 = lean_uint64_xor(x_56, x_58);
x_60 = 16;
x_61 = lean_uint64_shift_right(x_59, x_60);
x_62 = lean_uint64_xor(x_59, x_61);
x_63 = lean_uint64_to_usize(x_62);
x_64 = lean_usize_of_nat(x_53);
lean_dec(x_53);
x_65 = lean_usize_sub(x_64, x_9);
x_66 = lean_usize_land(x_63, x_65);
x_67 = lean_array_uget(x_52, x_66);
x_68 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4(x_2, x_67);
if (x_68 == 0)
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; uint8_t x_79; 
x_69 = lean_unsigned_to_nat(1u);
x_70 = lean_nat_add(x_51, x_69);
lean_dec(x_51);
x_71 = lean_box_usize(x_6);
x_72 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_72, 0, x_2);
lean_ctor_set(x_72, 1, x_71);
lean_ctor_set(x_72, 2, x_67);
x_73 = lean_array_uset(x_52, x_66, x_72);
x_74 = lean_unsigned_to_nat(4u);
x_75 = lean_nat_mul(x_70, x_74);
x_76 = lean_unsigned_to_nat(3u);
x_77 = lean_nat_div(x_75, x_76);
lean_dec(x_75);
x_78 = lean_array_get_size(x_73);
x_79 = lean_nat_dec_le(x_77, x_78);
lean_dec(x_78);
lean_dec(x_77);
if (x_79 == 0)
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_80 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__5(x_73);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_70);
lean_ctor_set(x_81, 1, x_80);
x_82 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_82, 0, x_8);
lean_ctor_set(x_82, 1, x_11);
lean_ctor_set(x_82, 2, x_81);
return x_82;
}
else
{
lean_object* x_83; lean_object* x_84; 
x_83 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_83, 0, x_70);
lean_ctor_set(x_83, 1, x_73);
x_84 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_84, 0, x_8);
lean_ctor_set(x_84, 1, x_11);
lean_ctor_set(x_84, 2, x_83);
return x_84;
}
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_85 = lean_box(0);
x_86 = lean_array_uset(x_52, x_66, x_85);
x_87 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(x_2, x_6, x_67);
x_88 = lean_array_uset(x_86, x_66, x_87);
x_89 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_89, 0, x_51);
lean_ctor_set(x_89, 1, x_88);
x_90 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_90, 0, x_8);
lean_ctor_set(x_90, 1, x_11);
lean_ctor_set(x_90, 2, x_89);
return x_90;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint64_t x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; uint64_t x_14; size_t x_15; size_t x_16; size_t x_17; size_t x_18; size_t x_19; lean_object* x_20; uint8_t x_21; 
x_3 = lean_ctor_get(x_2, 2);
lean_inc(x_3);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_array_get_size(x_4);
x_6 = l_Aesop_treeImpl___elambda__5(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_uint64_of_nat(x_7);
lean_dec(x_7);
x_9 = 32;
x_10 = lean_uint64_shift_right(x_8, x_9);
x_11 = lean_uint64_xor(x_8, x_10);
x_12 = 16;
x_13 = lean_uint64_shift_right(x_11, x_12);
x_14 = lean_uint64_xor(x_11, x_13);
x_15 = lean_uint64_to_usize(x_14);
x_16 = lean_usize_of_nat(x_5);
lean_dec(x_5);
x_17 = 1;
x_18 = lean_usize_sub(x_16, x_17);
x_19 = lean_usize_land(x_15, x_18);
x_20 = lean_array_uget(x_4, x_19);
lean_dec(x_4);
x_21 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4(x_1, x_20);
lean_dec(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; 
x_22 = lean_box(0);
x_23 = l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1(x_2, x_1, x_22);
return x_23;
}
else
{
lean_dec(x_1);
return x_2;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__10(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3(x_6, x_4);
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
LEAN_EXPORT lean_object* l_Aesop_UnionFind_addArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_array_get_size(x_1);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_lt(x_4, x_3);
if (x_5 == 0)
{
lean_dec(x_3);
return x_2;
}
else
{
uint8_t x_6; 
x_6 = lean_nat_dec_le(x_3, x_3);
if (x_6 == 0)
{
lean_dec(x_3);
return x_2;
}
else
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = 0;
x_8 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_9 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__10(x_1, x_7, x_8, x_2);
return x_9;
}
}
}
}
static lean_object* _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__2;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__3;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
x_3 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 2, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__5;
x_3 = l_Aesop_UnionFind_addArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__2(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
x_6 = lean_ctor_get(x_2, 2);
x_7 = lean_name_eq(x_4, x_1);
if (x_7 == 0)
{
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_9; 
lean_inc(x_5);
x_9 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_9, 0, x_5);
return x_9;
}
}
}
}
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(lean_object* x_1, lean_object* x_2) {
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
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_name_eq(x_4, x_1);
if (x_6 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
uint8_t x_8; 
x_8 = 1;
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__15(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint64_t x_7; uint64_t x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; size_t x_14; size_t x_15; size_t x_16; size_t x_17; size_t x_18; lean_object* x_19; lean_object* x_20; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_array_get_size(x_1);
x_7 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_4);
x_8 = 32;
x_9 = lean_uint64_shift_right(x_7, x_8);
x_10 = lean_uint64_xor(x_7, x_9);
x_11 = 16;
x_12 = lean_uint64_shift_right(x_10, x_11);
x_13 = lean_uint64_xor(x_10, x_12);
x_14 = lean_uint64_to_usize(x_13);
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 1;
x_17 = lean_usize_sub(x_15, x_16);
x_18 = lean_usize_land(x_14, x_17);
x_19 = lean_array_uget(x_1, x_18);
lean_ctor_set(x_2, 2, x_19);
x_20 = lean_array_uset(x_1, x_18, x_2);
x_1 = x_20;
x_2 = x_5;
goto _start;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint64_t x_26; uint64_t x_27; uint64_t x_28; uint64_t x_29; uint64_t x_30; uint64_t x_31; uint64_t x_32; size_t x_33; size_t x_34; size_t x_35; size_t x_36; size_t x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_22 = lean_ctor_get(x_2, 0);
x_23 = lean_ctor_get(x_2, 1);
x_24 = lean_ctor_get(x_2, 2);
lean_inc(x_24);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_2);
x_25 = lean_array_get_size(x_1);
x_26 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_22);
x_27 = 32;
x_28 = lean_uint64_shift_right(x_26, x_27);
x_29 = lean_uint64_xor(x_26, x_28);
x_30 = 16;
x_31 = lean_uint64_shift_right(x_29, x_30);
x_32 = lean_uint64_xor(x_29, x_31);
x_33 = lean_uint64_to_usize(x_32);
x_34 = lean_usize_of_nat(x_25);
lean_dec(x_25);
x_35 = 1;
x_36 = lean_usize_sub(x_34, x_35);
x_37 = lean_usize_land(x_33, x_36);
x_38 = lean_array_uget(x_1, x_37);
x_39 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_39, 0, x_22);
lean_ctor_set(x_39, 1, x_23);
lean_ctor_set(x_39, 2, x_38);
x_40 = lean_array_uset(x_1, x_37, x_39);
x_1 = x_40;
x_2 = x_24;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__14(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
x_9 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__15(x_3, x_6);
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(lean_object* x_1) {
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
x_8 = l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__14(x_7, x_1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_name_eq(x_6, x_1);
if (x_9 == 0)
{
lean_object* x_10; 
x_10 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_1, x_2, x_8);
lean_ctor_set(x_3, 2, x_10);
return x_3;
}
else
{
lean_dec(x_7);
lean_dec(x_6);
lean_ctor_set(x_3, 1, x_2);
lean_ctor_set(x_3, 0, x_1);
return x_3;
}
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
x_13 = lean_ctor_get(x_3, 2);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
x_14 = lean_name_eq(x_11, x_1);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_1, x_2, x_13);
x_16 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_16, 0, x_11);
lean_ctor_set(x_16, 1, x_12);
lean_ctor_set(x_16, 2, x_15);
return x_16;
}
else
{
lean_object* x_17; 
lean_dec(x_12);
lean_dec(x_11);
x_17 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_17, 0, x_1);
lean_ctor_set(x_17, 1, x_2);
lean_ctor_set(x_17, 2, x_13);
return x_17;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
x_6 = lean_ctor_get(x_2, 2);
x_7 = l_Aesop_treeImpl___elambda__5(x_4);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = l_Aesop_treeImpl___elambda__5(x_1);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_nat_dec_eq(x_8, x_10);
lean_dec(x_10);
lean_dec(x_8);
if (x_11 == 0)
{
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_13; 
lean_inc(x_5);
x_13 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_13, 0, x_5);
return x_13;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(size_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; size_t x_5; uint8_t x_6; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_array_uget(x_3, x_1);
lean_dec(x_3);
x_5 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_6 = lean_usize_dec_eq(x_5, x_1);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; 
x_7 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_5, x_2);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_7, 0);
x_12 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
x_13 = lean_array_uset(x_12, x_1, x_11);
lean_ctor_set(x_9, 0, x_13);
return x_7;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_7, 0);
x_15 = lean_ctor_get(x_9, 0);
x_16 = lean_ctor_get(x_9, 1);
x_17 = lean_ctor_get(x_9, 2);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_9);
lean_inc(x_14);
x_18 = lean_array_uset(x_15, x_1, x_14);
x_19 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_16);
lean_ctor_set(x_19, 2, x_17);
lean_ctor_set(x_7, 1, x_19);
return x_7;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_20 = lean_ctor_get(x_7, 1);
x_21 = lean_ctor_get(x_7, 0);
lean_inc(x_20);
lean_inc(x_21);
lean_dec(x_7);
x_22 = lean_ctor_get(x_20, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_20, 1);
lean_inc(x_23);
x_24 = lean_ctor_get(x_20, 2);
lean_inc(x_24);
if (lean_is_exclusive(x_20)) {
 lean_ctor_release(x_20, 0);
 lean_ctor_release(x_20, 1);
 lean_ctor_release(x_20, 2);
 x_25 = x_20;
} else {
 lean_dec_ref(x_20);
 x_25 = lean_box(0);
}
lean_inc(x_21);
x_26 = lean_array_uset(x_22, x_1, x_21);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(0, 3, 0);
} else {
 x_27 = x_25;
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_23);
lean_ctor_set(x_27, 2, x_24);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_21);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
else
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_box_usize(x_5);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_2);
return x_30;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_2, 2);
lean_inc(x_3);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; size_t x_17; size_t x_18; size_t x_19; size_t x_20; size_t x_21; lean_object* x_22; lean_object* x_23; 
x_5 = lean_ctor_get(x_3, 1);
x_6 = lean_ctor_get(x_3, 0);
lean_dec(x_6);
x_7 = lean_array_get_size(x_5);
x_8 = l_Aesop_treeImpl___elambda__5(x_1);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_uint64_of_nat(x_9);
lean_dec(x_9);
x_11 = 32;
x_12 = lean_uint64_shift_right(x_10, x_11);
x_13 = lean_uint64_xor(x_10, x_12);
x_14 = 16;
x_15 = lean_uint64_shift_right(x_13, x_14);
x_16 = lean_uint64_xor(x_13, x_15);
x_17 = lean_uint64_to_usize(x_16);
x_18 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_19 = 1;
x_20 = lean_usize_sub(x_18, x_19);
x_21 = lean_usize_land(x_17, x_20);
x_22 = lean_array_uget(x_5, x_21);
lean_dec(x_5);
x_23 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19(x_1, x_22);
lean_dec(x_22);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; 
x_24 = lean_box(0);
lean_ctor_set(x_3, 1, x_2);
lean_ctor_set(x_3, 0, x_24);
return x_3;
}
else
{
uint8_t x_25; 
lean_free_object(x_3);
x_25 = !lean_is_exclusive(x_23);
if (x_25 == 0)
{
lean_object* x_26; size_t x_27; lean_object* x_28; uint8_t x_29; 
x_26 = lean_ctor_get(x_23, 0);
x_27 = lean_unbox_usize(x_26);
lean_dec(x_26);
x_28 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_27, x_2);
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; 
x_30 = lean_ctor_get(x_28, 0);
lean_ctor_set(x_23, 0, x_30);
lean_ctor_set(x_28, 0, x_23);
return x_28;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_28, 0);
x_32 = lean_ctor_get(x_28, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_28);
lean_ctor_set(x_23, 0, x_31);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_23);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
else
{
lean_object* x_34; size_t x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_34 = lean_ctor_get(x_23, 0);
lean_inc(x_34);
lean_dec(x_23);
x_35 = lean_unbox_usize(x_34);
lean_dec(x_34);
x_36 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_35, x_2);
x_37 = lean_ctor_get(x_36, 0);
lean_inc(x_37);
x_38 = lean_ctor_get(x_36, 1);
lean_inc(x_38);
if (lean_is_exclusive(x_36)) {
 lean_ctor_release(x_36, 0);
 lean_ctor_release(x_36, 1);
 x_39 = x_36;
} else {
 lean_dec_ref(x_36);
 x_39 = lean_box(0);
}
x_40 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_40, 0, x_37);
if (lean_is_scalar(x_39)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_39;
}
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_38);
return x_41;
}
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; uint64_t x_46; uint64_t x_47; uint64_t x_48; uint64_t x_49; uint64_t x_50; uint64_t x_51; uint64_t x_52; size_t x_53; size_t x_54; size_t x_55; size_t x_56; size_t x_57; lean_object* x_58; lean_object* x_59; 
x_42 = lean_ctor_get(x_3, 1);
lean_inc(x_42);
lean_dec(x_3);
x_43 = lean_array_get_size(x_42);
x_44 = l_Aesop_treeImpl___elambda__5(x_1);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
lean_dec(x_44);
x_46 = lean_uint64_of_nat(x_45);
lean_dec(x_45);
x_47 = 32;
x_48 = lean_uint64_shift_right(x_46, x_47);
x_49 = lean_uint64_xor(x_46, x_48);
x_50 = 16;
x_51 = lean_uint64_shift_right(x_49, x_50);
x_52 = lean_uint64_xor(x_49, x_51);
x_53 = lean_uint64_to_usize(x_52);
x_54 = lean_usize_of_nat(x_43);
lean_dec(x_43);
x_55 = 1;
x_56 = lean_usize_sub(x_54, x_55);
x_57 = lean_usize_land(x_53, x_56);
x_58 = lean_array_uget(x_42, x_57);
lean_dec(x_42);
x_59 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19(x_1, x_58);
lean_dec(x_58);
if (lean_obj_tag(x_59) == 0)
{
lean_object* x_60; lean_object* x_61; 
x_60 = lean_box(0);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set(x_61, 1, x_2);
return x_61;
}
else
{
lean_object* x_62; lean_object* x_63; size_t x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_62 = lean_ctor_get(x_59, 0);
lean_inc(x_62);
if (lean_is_exclusive(x_59)) {
 lean_ctor_release(x_59, 0);
 x_63 = x_59;
} else {
 lean_dec_ref(x_59);
 x_63 = lean_box(0);
}
x_64 = lean_unbox_usize(x_62);
lean_dec(x_62);
x_65 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_64, x_2);
x_66 = lean_ctor_get(x_65, 0);
lean_inc(x_66);
x_67 = lean_ctor_get(x_65, 1);
lean_inc(x_67);
if (lean_is_exclusive(x_65)) {
 lean_ctor_release(x_65, 0);
 lean_ctor_release(x_65, 1);
 x_68 = x_65;
} else {
 lean_dec_ref(x_65);
 x_68 = lean_box(0);
}
if (lean_is_scalar(x_63)) {
 x_69 = lean_alloc_ctor(1, 1, 0);
} else {
 x_69 = x_63;
}
lean_ctor_set(x_69, 0, x_66);
if (lean_is_scalar(x_68)) {
 x_70 = lean_alloc_ctor(0, 2, 0);
} else {
 x_70 = x_68;
}
lean_ctor_set(x_70, 0, x_69);
lean_ctor_set(x_70, 1, x_67);
return x_70;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_mergeUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__17(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
lean_inc(x_3);
x_4 = l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18(x_1, x_3);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
if (lean_obj_tag(x_5) == 0)
{
lean_dec(x_4);
return x_3;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
lean_inc(x_6);
x_8 = l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18(x_2, x_6);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
if (lean_obj_tag(x_9) == 0)
{
lean_dec(x_8);
lean_dec(x_7);
return x_6;
}
else
{
lean_object* x_10; lean_object* x_11; size_t x_12; size_t x_13; uint8_t x_14; 
lean_dec(x_6);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_unbox_usize(x_7);
x_13 = lean_unbox_usize(x_11);
x_14 = lean_usize_dec_eq(x_12, x_13);
if (x_14 == 0)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_10);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; size_t x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; size_t x_23; uint8_t x_24; 
x_16 = lean_ctor_get(x_10, 0);
x_17 = lean_ctor_get(x_10, 1);
x_18 = lean_unbox_usize(x_7);
x_19 = lean_array_uget(x_17, x_18);
x_20 = lean_unbox_usize(x_19);
lean_dec(x_19);
x_21 = lean_unbox_usize(x_11);
x_22 = lean_array_uget(x_17, x_21);
x_23 = lean_unbox_usize(x_22);
lean_dec(x_22);
x_24 = lean_usize_dec_lt(x_20, x_23);
if (x_24 == 0)
{
size_t x_25; lean_object* x_26; size_t x_27; size_t x_28; lean_object* x_29; lean_object* x_30; 
x_25 = lean_unbox_usize(x_11);
lean_dec(x_11);
lean_inc(x_7);
x_26 = lean_array_uset(x_16, x_25, x_7);
x_27 = lean_usize_add(x_20, x_23);
x_28 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_29 = lean_box_usize(x_27);
x_30 = lean_array_uset(x_17, x_28, x_29);
lean_ctor_set(x_10, 1, x_30);
lean_ctor_set(x_10, 0, x_26);
return x_10;
}
else
{
size_t x_31; lean_object* x_32; size_t x_33; size_t x_34; lean_object* x_35; lean_object* x_36; 
x_31 = lean_unbox_usize(x_7);
lean_dec(x_7);
lean_inc(x_11);
x_32 = lean_array_uset(x_16, x_31, x_11);
x_33 = lean_usize_add(x_20, x_23);
x_34 = lean_unbox_usize(x_11);
lean_dec(x_11);
x_35 = lean_box_usize(x_33);
x_36 = lean_array_uset(x_17, x_34, x_35);
lean_ctor_set(x_10, 1, x_36);
lean_ctor_set(x_10, 0, x_32);
return x_10;
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; size_t x_40; lean_object* x_41; size_t x_42; size_t x_43; lean_object* x_44; size_t x_45; uint8_t x_46; 
x_37 = lean_ctor_get(x_10, 0);
x_38 = lean_ctor_get(x_10, 1);
x_39 = lean_ctor_get(x_10, 2);
lean_inc(x_39);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_10);
x_40 = lean_unbox_usize(x_7);
x_41 = lean_array_uget(x_38, x_40);
x_42 = lean_unbox_usize(x_41);
lean_dec(x_41);
x_43 = lean_unbox_usize(x_11);
x_44 = lean_array_uget(x_38, x_43);
x_45 = lean_unbox_usize(x_44);
lean_dec(x_44);
x_46 = lean_usize_dec_lt(x_42, x_45);
if (x_46 == 0)
{
size_t x_47; lean_object* x_48; size_t x_49; size_t x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_47 = lean_unbox_usize(x_11);
lean_dec(x_11);
lean_inc(x_7);
x_48 = lean_array_uset(x_37, x_47, x_7);
x_49 = lean_usize_add(x_42, x_45);
x_50 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_51 = lean_box_usize(x_49);
x_52 = lean_array_uset(x_38, x_50, x_51);
x_53 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_53, 0, x_48);
lean_ctor_set(x_53, 1, x_52);
lean_ctor_set(x_53, 2, x_39);
return x_53;
}
else
{
size_t x_54; lean_object* x_55; size_t x_56; size_t x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_54 = lean_unbox_usize(x_7);
lean_dec(x_7);
lean_inc(x_11);
x_55 = lean_array_uset(x_37, x_54, x_11);
x_56 = lean_usize_add(x_42, x_45);
x_57 = lean_unbox_usize(x_11);
lean_dec(x_11);
x_58 = lean_box_usize(x_56);
x_59 = lean_array_uset(x_38, x_57, x_58);
x_60 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_60, 0, x_55);
lean_ctor_set(x_60, 1, x_59);
lean_ctor_set(x_60, 2, x_39);
return x_60;
}
}
}
else
{
lean_dec(x_11);
lean_dec(x_7);
return x_10;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_lt(x_4, x_3);
if (x_6 == 0)
{
return x_5;
}
else
{
lean_object* x_7; lean_object* x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_4);
x_8 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_mergeUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__17(x_1, x_7, x_5);
lean_dec(x_7);
x_9 = 1;
x_10 = lean_usize_add(x_4, x_9);
x_4 = x_10;
x_5 = x_8;
goto _start;
}
}
}
static lean_object* _init_l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
else
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_array_uget(x_3, x_5);
x_9 = !lean_is_exclusive(x_6);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_6, 1);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; uint64_t x_22; size_t x_23; size_t x_24; size_t x_25; size_t x_26; size_t x_27; lean_object* x_28; lean_object* x_29; 
x_12 = lean_ctor_get(x_6, 0);
x_13 = lean_ctor_get(x_10, 0);
x_14 = lean_ctor_get(x_10, 1);
x_15 = lean_array_get_size(x_14);
x_16 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_17 = 32;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = 16;
x_21 = lean_uint64_shift_right(x_19, x_20);
x_22 = lean_uint64_xor(x_19, x_21);
x_23 = lean_uint64_to_usize(x_22);
x_24 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_25 = 1;
x_26 = lean_usize_sub(x_24, x_25);
x_27 = lean_usize_land(x_23, x_26);
x_28 = lean_array_uget(x_14, x_27);
x_29 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11(x_8, x_28);
if (lean_obj_tag(x_29) == 0)
{
lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_30 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
lean_inc(x_2);
x_31 = lean_array_push(x_30, x_2);
x_32 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_8, x_28);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_33 = lean_unsigned_to_nat(1u);
x_34 = lean_nat_add(x_13, x_33);
lean_dec(x_13);
x_35 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_35, 0, x_8);
lean_ctor_set(x_35, 1, x_31);
lean_ctor_set(x_35, 2, x_28);
x_36 = lean_array_uset(x_14, x_27, x_35);
x_37 = lean_unsigned_to_nat(4u);
x_38 = lean_nat_mul(x_34, x_37);
x_39 = lean_unsigned_to_nat(3u);
x_40 = lean_nat_div(x_38, x_39);
lean_dec(x_38);
x_41 = lean_array_get_size(x_36);
x_42 = lean_nat_dec_le(x_40, x_41);
lean_dec(x_41);
lean_dec(x_40);
if (x_42 == 0)
{
lean_object* x_43; size_t x_44; 
x_43 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(x_36);
lean_ctor_set(x_10, 1, x_43);
lean_ctor_set(x_10, 0, x_34);
x_44 = lean_usize_add(x_5, x_25);
x_5 = x_44;
goto _start;
}
else
{
size_t x_46; 
lean_ctor_set(x_10, 1, x_36);
lean_ctor_set(x_10, 0, x_34);
x_46 = lean_usize_add(x_5, x_25);
x_5 = x_46;
goto _start;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; size_t x_51; 
lean_inc(x_1);
x_48 = lean_array_uset(x_14, x_27, x_1);
x_49 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_8, x_31, x_28);
x_50 = lean_array_uset(x_48, x_27, x_49);
lean_ctor_set(x_10, 1, x_50);
x_51 = lean_usize_add(x_5, x_25);
x_5 = x_51;
goto _start;
}
}
else
{
lean_object* x_53; size_t x_54; size_t x_55; lean_object* x_56; lean_object* x_57; uint8_t x_58; 
x_53 = lean_ctor_get(x_29, 0);
lean_inc(x_53);
lean_dec(x_29);
x_54 = lean_array_size(x_53);
x_55 = 0;
x_56 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21(x_2, x_53, x_54, x_55, x_12);
lean_inc(x_2);
x_57 = lean_array_push(x_53, x_2);
x_58 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_8, x_28);
if (x_58 == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; uint8_t x_68; 
x_59 = lean_unsigned_to_nat(1u);
x_60 = lean_nat_add(x_13, x_59);
lean_dec(x_13);
x_61 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_61, 0, x_8);
lean_ctor_set(x_61, 1, x_57);
lean_ctor_set(x_61, 2, x_28);
x_62 = lean_array_uset(x_14, x_27, x_61);
x_63 = lean_unsigned_to_nat(4u);
x_64 = lean_nat_mul(x_60, x_63);
x_65 = lean_unsigned_to_nat(3u);
x_66 = lean_nat_div(x_64, x_65);
lean_dec(x_64);
x_67 = lean_array_get_size(x_62);
x_68 = lean_nat_dec_le(x_66, x_67);
lean_dec(x_67);
lean_dec(x_66);
if (x_68 == 0)
{
lean_object* x_69; size_t x_70; 
x_69 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(x_62);
lean_ctor_set(x_10, 1, x_69);
lean_ctor_set(x_10, 0, x_60);
lean_ctor_set(x_6, 0, x_56);
x_70 = lean_usize_add(x_5, x_25);
x_5 = x_70;
goto _start;
}
else
{
size_t x_72; 
lean_ctor_set(x_10, 1, x_62);
lean_ctor_set(x_10, 0, x_60);
lean_ctor_set(x_6, 0, x_56);
x_72 = lean_usize_add(x_5, x_25);
x_5 = x_72;
goto _start;
}
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; size_t x_77; 
lean_inc(x_1);
x_74 = lean_array_uset(x_14, x_27, x_1);
x_75 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_8, x_57, x_28);
x_76 = lean_array_uset(x_74, x_27, x_75);
lean_ctor_set(x_10, 1, x_76);
lean_ctor_set(x_6, 0, x_56);
x_77 = lean_usize_add(x_5, x_25);
x_5 = x_77;
goto _start;
}
}
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; uint64_t x_83; uint64_t x_84; uint64_t x_85; uint64_t x_86; uint64_t x_87; uint64_t x_88; uint64_t x_89; size_t x_90; size_t x_91; size_t x_92; size_t x_93; size_t x_94; lean_object* x_95; lean_object* x_96; 
x_79 = lean_ctor_get(x_6, 0);
x_80 = lean_ctor_get(x_10, 0);
x_81 = lean_ctor_get(x_10, 1);
lean_inc(x_81);
lean_inc(x_80);
lean_dec(x_10);
x_82 = lean_array_get_size(x_81);
x_83 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_84 = 32;
x_85 = lean_uint64_shift_right(x_83, x_84);
x_86 = lean_uint64_xor(x_83, x_85);
x_87 = 16;
x_88 = lean_uint64_shift_right(x_86, x_87);
x_89 = lean_uint64_xor(x_86, x_88);
x_90 = lean_uint64_to_usize(x_89);
x_91 = lean_usize_of_nat(x_82);
lean_dec(x_82);
x_92 = 1;
x_93 = lean_usize_sub(x_91, x_92);
x_94 = lean_usize_land(x_90, x_93);
x_95 = lean_array_uget(x_81, x_94);
x_96 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11(x_8, x_95);
if (lean_obj_tag(x_96) == 0)
{
lean_object* x_97; lean_object* x_98; uint8_t x_99; 
x_97 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
lean_inc(x_2);
x_98 = lean_array_push(x_97, x_2);
x_99 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_8, x_95);
if (x_99 == 0)
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_100 = lean_unsigned_to_nat(1u);
x_101 = lean_nat_add(x_80, x_100);
lean_dec(x_80);
x_102 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_102, 0, x_8);
lean_ctor_set(x_102, 1, x_98);
lean_ctor_set(x_102, 2, x_95);
x_103 = lean_array_uset(x_81, x_94, x_102);
x_104 = lean_unsigned_to_nat(4u);
x_105 = lean_nat_mul(x_101, x_104);
x_106 = lean_unsigned_to_nat(3u);
x_107 = lean_nat_div(x_105, x_106);
lean_dec(x_105);
x_108 = lean_array_get_size(x_103);
x_109 = lean_nat_dec_le(x_107, x_108);
lean_dec(x_108);
lean_dec(x_107);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; size_t x_112; 
x_110 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(x_103);
x_111 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_111, 0, x_101);
lean_ctor_set(x_111, 1, x_110);
lean_ctor_set(x_6, 1, x_111);
x_112 = lean_usize_add(x_5, x_92);
x_5 = x_112;
goto _start;
}
else
{
lean_object* x_114; size_t x_115; 
x_114 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_114, 0, x_101);
lean_ctor_set(x_114, 1, x_103);
lean_ctor_set(x_6, 1, x_114);
x_115 = lean_usize_add(x_5, x_92);
x_5 = x_115;
goto _start;
}
}
else
{
lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; size_t x_121; 
lean_inc(x_1);
x_117 = lean_array_uset(x_81, x_94, x_1);
x_118 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_8, x_98, x_95);
x_119 = lean_array_uset(x_117, x_94, x_118);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_80);
lean_ctor_set(x_120, 1, x_119);
lean_ctor_set(x_6, 1, x_120);
x_121 = lean_usize_add(x_5, x_92);
x_5 = x_121;
goto _start;
}
}
else
{
lean_object* x_123; size_t x_124; size_t x_125; lean_object* x_126; lean_object* x_127; uint8_t x_128; 
x_123 = lean_ctor_get(x_96, 0);
lean_inc(x_123);
lean_dec(x_96);
x_124 = lean_array_size(x_123);
x_125 = 0;
x_126 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21(x_2, x_123, x_124, x_125, x_79);
lean_inc(x_2);
x_127 = lean_array_push(x_123, x_2);
x_128 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_8, x_95);
if (x_128 == 0)
{
lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; uint8_t x_138; 
x_129 = lean_unsigned_to_nat(1u);
x_130 = lean_nat_add(x_80, x_129);
lean_dec(x_80);
x_131 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_131, 0, x_8);
lean_ctor_set(x_131, 1, x_127);
lean_ctor_set(x_131, 2, x_95);
x_132 = lean_array_uset(x_81, x_94, x_131);
x_133 = lean_unsigned_to_nat(4u);
x_134 = lean_nat_mul(x_130, x_133);
x_135 = lean_unsigned_to_nat(3u);
x_136 = lean_nat_div(x_134, x_135);
lean_dec(x_134);
x_137 = lean_array_get_size(x_132);
x_138 = lean_nat_dec_le(x_136, x_137);
lean_dec(x_137);
lean_dec(x_136);
if (x_138 == 0)
{
lean_object* x_139; lean_object* x_140; size_t x_141; 
x_139 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(x_132);
x_140 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_140, 0, x_130);
lean_ctor_set(x_140, 1, x_139);
lean_ctor_set(x_6, 1, x_140);
lean_ctor_set(x_6, 0, x_126);
x_141 = lean_usize_add(x_5, x_92);
x_5 = x_141;
goto _start;
}
else
{
lean_object* x_143; size_t x_144; 
x_143 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_143, 0, x_130);
lean_ctor_set(x_143, 1, x_132);
lean_ctor_set(x_6, 1, x_143);
lean_ctor_set(x_6, 0, x_126);
x_144 = lean_usize_add(x_5, x_92);
x_5 = x_144;
goto _start;
}
}
else
{
lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; size_t x_150; 
lean_inc(x_1);
x_146 = lean_array_uset(x_81, x_94, x_1);
x_147 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_8, x_127, x_95);
x_148 = lean_array_uset(x_146, x_94, x_147);
x_149 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_149, 0, x_80);
lean_ctor_set(x_149, 1, x_148);
lean_ctor_set(x_6, 1, x_149);
lean_ctor_set(x_6, 0, x_126);
x_150 = lean_usize_add(x_5, x_92);
x_5 = x_150;
goto _start;
}
}
}
}
else
{
lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; uint64_t x_158; uint64_t x_159; uint64_t x_160; uint64_t x_161; uint64_t x_162; uint64_t x_163; uint64_t x_164; size_t x_165; size_t x_166; size_t x_167; size_t x_168; size_t x_169; lean_object* x_170; lean_object* x_171; 
x_152 = lean_ctor_get(x_6, 1);
x_153 = lean_ctor_get(x_6, 0);
lean_inc(x_152);
lean_inc(x_153);
lean_dec(x_6);
x_154 = lean_ctor_get(x_152, 0);
lean_inc(x_154);
x_155 = lean_ctor_get(x_152, 1);
lean_inc(x_155);
if (lean_is_exclusive(x_152)) {
 lean_ctor_release(x_152, 0);
 lean_ctor_release(x_152, 1);
 x_156 = x_152;
} else {
 lean_dec_ref(x_152);
 x_156 = lean_box(0);
}
x_157 = lean_array_get_size(x_155);
x_158 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_159 = 32;
x_160 = lean_uint64_shift_right(x_158, x_159);
x_161 = lean_uint64_xor(x_158, x_160);
x_162 = 16;
x_163 = lean_uint64_shift_right(x_161, x_162);
x_164 = lean_uint64_xor(x_161, x_163);
x_165 = lean_uint64_to_usize(x_164);
x_166 = lean_usize_of_nat(x_157);
lean_dec(x_157);
x_167 = 1;
x_168 = lean_usize_sub(x_166, x_167);
x_169 = lean_usize_land(x_165, x_168);
x_170 = lean_array_uget(x_155, x_169);
x_171 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11(x_8, x_170);
if (lean_obj_tag(x_171) == 0)
{
lean_object* x_172; lean_object* x_173; uint8_t x_174; 
x_172 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
lean_inc(x_2);
x_173 = lean_array_push(x_172, x_2);
x_174 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_8, x_170);
if (x_174 == 0)
{
lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; uint8_t x_184; 
x_175 = lean_unsigned_to_nat(1u);
x_176 = lean_nat_add(x_154, x_175);
lean_dec(x_154);
x_177 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_177, 0, x_8);
lean_ctor_set(x_177, 1, x_173);
lean_ctor_set(x_177, 2, x_170);
x_178 = lean_array_uset(x_155, x_169, x_177);
x_179 = lean_unsigned_to_nat(4u);
x_180 = lean_nat_mul(x_176, x_179);
x_181 = lean_unsigned_to_nat(3u);
x_182 = lean_nat_div(x_180, x_181);
lean_dec(x_180);
x_183 = lean_array_get_size(x_178);
x_184 = lean_nat_dec_le(x_182, x_183);
lean_dec(x_183);
lean_dec(x_182);
if (x_184 == 0)
{
lean_object* x_185; lean_object* x_186; lean_object* x_187; size_t x_188; 
x_185 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(x_178);
if (lean_is_scalar(x_156)) {
 x_186 = lean_alloc_ctor(0, 2, 0);
} else {
 x_186 = x_156;
}
lean_ctor_set(x_186, 0, x_176);
lean_ctor_set(x_186, 1, x_185);
x_187 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_187, 0, x_153);
lean_ctor_set(x_187, 1, x_186);
x_188 = lean_usize_add(x_5, x_167);
x_5 = x_188;
x_6 = x_187;
goto _start;
}
else
{
lean_object* x_190; lean_object* x_191; size_t x_192; 
if (lean_is_scalar(x_156)) {
 x_190 = lean_alloc_ctor(0, 2, 0);
} else {
 x_190 = x_156;
}
lean_ctor_set(x_190, 0, x_176);
lean_ctor_set(x_190, 1, x_178);
x_191 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_191, 0, x_153);
lean_ctor_set(x_191, 1, x_190);
x_192 = lean_usize_add(x_5, x_167);
x_5 = x_192;
x_6 = x_191;
goto _start;
}
}
else
{
lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; size_t x_199; 
lean_inc(x_1);
x_194 = lean_array_uset(x_155, x_169, x_1);
x_195 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_8, x_173, x_170);
x_196 = lean_array_uset(x_194, x_169, x_195);
if (lean_is_scalar(x_156)) {
 x_197 = lean_alloc_ctor(0, 2, 0);
} else {
 x_197 = x_156;
}
lean_ctor_set(x_197, 0, x_154);
lean_ctor_set(x_197, 1, x_196);
x_198 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_198, 0, x_153);
lean_ctor_set(x_198, 1, x_197);
x_199 = lean_usize_add(x_5, x_167);
x_5 = x_199;
x_6 = x_198;
goto _start;
}
}
else
{
lean_object* x_201; size_t x_202; size_t x_203; lean_object* x_204; lean_object* x_205; uint8_t x_206; 
x_201 = lean_ctor_get(x_171, 0);
lean_inc(x_201);
lean_dec(x_171);
x_202 = lean_array_size(x_201);
x_203 = 0;
x_204 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21(x_2, x_201, x_202, x_203, x_153);
lean_inc(x_2);
x_205 = lean_array_push(x_201, x_2);
x_206 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_8, x_170);
if (x_206 == 0)
{
lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; uint8_t x_216; 
x_207 = lean_unsigned_to_nat(1u);
x_208 = lean_nat_add(x_154, x_207);
lean_dec(x_154);
x_209 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_209, 0, x_8);
lean_ctor_set(x_209, 1, x_205);
lean_ctor_set(x_209, 2, x_170);
x_210 = lean_array_uset(x_155, x_169, x_209);
x_211 = lean_unsigned_to_nat(4u);
x_212 = lean_nat_mul(x_208, x_211);
x_213 = lean_unsigned_to_nat(3u);
x_214 = lean_nat_div(x_212, x_213);
lean_dec(x_212);
x_215 = lean_array_get_size(x_210);
x_216 = lean_nat_dec_le(x_214, x_215);
lean_dec(x_215);
lean_dec(x_214);
if (x_216 == 0)
{
lean_object* x_217; lean_object* x_218; lean_object* x_219; size_t x_220; 
x_217 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__13(x_210);
if (lean_is_scalar(x_156)) {
 x_218 = lean_alloc_ctor(0, 2, 0);
} else {
 x_218 = x_156;
}
lean_ctor_set(x_218, 0, x_208);
lean_ctor_set(x_218, 1, x_217);
x_219 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_219, 0, x_204);
lean_ctor_set(x_219, 1, x_218);
x_220 = lean_usize_add(x_5, x_167);
x_5 = x_220;
x_6 = x_219;
goto _start;
}
else
{
lean_object* x_222; lean_object* x_223; size_t x_224; 
if (lean_is_scalar(x_156)) {
 x_222 = lean_alloc_ctor(0, 2, 0);
} else {
 x_222 = x_156;
}
lean_ctor_set(x_222, 0, x_208);
lean_ctor_set(x_222, 1, x_210);
x_223 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_223, 0, x_204);
lean_ctor_set(x_223, 1, x_222);
x_224 = lean_usize_add(x_5, x_167);
x_5 = x_224;
x_6 = x_223;
goto _start;
}
}
else
{
lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; size_t x_231; 
lean_inc(x_1);
x_226 = lean_array_uset(x_155, x_169, x_1);
x_227 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__16(x_8, x_205, x_170);
x_228 = lean_array_uset(x_226, x_169, x_227);
if (lean_is_scalar(x_156)) {
 x_229 = lean_alloc_ctor(0, 2, 0);
} else {
 x_229 = x_156;
}
lean_ctor_set(x_229, 0, x_154);
lean_ctor_set(x_229, 1, x_228);
x_230 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_230, 0, x_204);
lean_ctor_set(x_230, 1, x_229);
x_231 = lean_usize_add(x_5, x_167);
x_5 = x_231;
x_6 = x_230;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__23(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_lt(x_4, x_3);
if (x_6 == 0)
{
lean_dec(x_1);
return x_5;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_array_uget(x_2, x_4);
x_8 = !lean_is_exclusive(x_5);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; size_t x_11; size_t x_12; lean_object* x_13; uint8_t x_14; 
x_9 = l_Aesop_treeImpl___elambda__5(x_7);
x_10 = lean_ctor_get(x_9, 7);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_array_size(x_10);
x_12 = 0;
lean_inc(x_1);
x_13 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22(x_1, x_7, x_10, x_11, x_12, x_5);
lean_dec(x_10);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
size_t x_15; size_t x_16; 
x_15 = 1;
x_16 = lean_usize_add(x_4, x_15);
x_4 = x_16;
x_5 = x_13;
goto _start;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; size_t x_21; size_t x_22; 
x_18 = lean_ctor_get(x_13, 0);
x_19 = lean_ctor_get(x_13, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_13);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = 1;
x_22 = lean_usize_add(x_4, x_21);
x_4 = x_22;
x_5 = x_20;
goto _start;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; size_t x_29; size_t x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; size_t x_36; size_t x_37; 
x_24 = lean_ctor_get(x_5, 0);
x_25 = lean_ctor_get(x_5, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_5);
x_26 = l_Aesop_treeImpl___elambda__5(x_7);
x_27 = lean_ctor_get(x_26, 7);
lean_inc(x_27);
lean_dec(x_26);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_24);
lean_ctor_set(x_28, 1, x_25);
x_29 = lean_array_size(x_27);
x_30 = 0;
lean_inc(x_1);
x_31 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22(x_1, x_7, x_27, x_29, x_30, x_28);
lean_dec(x_27);
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_31, 1);
lean_inc(x_33);
if (lean_is_exclusive(x_31)) {
 lean_ctor_release(x_31, 0);
 lean_ctor_release(x_31, 1);
 x_34 = x_31;
} else {
 lean_dec_ref(x_31);
 x_34 = lean_box(0);
}
if (lean_is_scalar(x_34)) {
 x_35 = lean_alloc_ctor(0, 2, 0);
} else {
 x_35 = x_34;
}
lean_ctor_set(x_35, 0, x_32);
lean_ctor_set(x_35, 1, x_33);
x_36 = 1;
x_37 = lean_usize_add(x_4, x_36);
x_4 = x_37;
x_5 = x_35;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(size_t x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; size_t x_7; uint8_t x_8; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 2);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_usize_dec_eq(x_7, x_1);
if (x_8 == 0)
{
lean_dec(x_5);
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_10; 
lean_dec(x_6);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_5);
return x_10;
}
}
}
}
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(size_t x_1, lean_object* x_2) {
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
lean_object* x_4; lean_object* x_5; size_t x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 2);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_7 = lean_usize_dec_eq(x_6, x_1);
if (x_7 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
uint8_t x_9; 
lean_dec(x_5);
x_9 = 1;
return x_9;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__29(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__29___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__30(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; size_t x_7; uint64_t x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; uint64_t x_14; size_t x_15; size_t x_16; size_t x_17; size_t x_18; size_t x_19; lean_object* x_20; lean_object* x_21; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_array_get_size(x_1);
x_7 = lean_unbox_usize(x_4);
x_8 = lean_usize_to_uint64(x_7);
x_9 = 32;
x_10 = lean_uint64_shift_right(x_8, x_9);
x_11 = lean_uint64_xor(x_8, x_10);
x_12 = 16;
x_13 = lean_uint64_shift_right(x_11, x_12);
x_14 = lean_uint64_xor(x_11, x_13);
x_15 = lean_uint64_to_usize(x_14);
x_16 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_17 = 1;
x_18 = lean_usize_sub(x_16, x_17);
x_19 = lean_usize_land(x_15, x_18);
x_20 = lean_array_uget(x_1, x_19);
lean_ctor_set(x_2, 2, x_20);
x_21 = lean_array_uset(x_1, x_19, x_2);
x_1 = x_21;
x_2 = x_5;
goto _start;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; size_t x_27; uint64_t x_28; uint64_t x_29; uint64_t x_30; uint64_t x_31; uint64_t x_32; uint64_t x_33; uint64_t x_34; size_t x_35; size_t x_36; size_t x_37; size_t x_38; size_t x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_23 = lean_ctor_get(x_2, 0);
x_24 = lean_ctor_get(x_2, 1);
x_25 = lean_ctor_get(x_2, 2);
lean_inc(x_25);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_2);
x_26 = lean_array_get_size(x_1);
x_27 = lean_unbox_usize(x_23);
x_28 = lean_usize_to_uint64(x_27);
x_29 = 32;
x_30 = lean_uint64_shift_right(x_28, x_29);
x_31 = lean_uint64_xor(x_28, x_30);
x_32 = 16;
x_33 = lean_uint64_shift_right(x_31, x_32);
x_34 = lean_uint64_xor(x_31, x_33);
x_35 = lean_uint64_to_usize(x_34);
x_36 = lean_usize_of_nat(x_26);
lean_dec(x_26);
x_37 = 1;
x_38 = lean_usize_sub(x_36, x_37);
x_39 = lean_usize_land(x_35, x_38);
x_40 = lean_array_uget(x_1, x_39);
x_41 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_41, 0, x_23);
lean_ctor_set(x_41, 1, x_24);
lean_ctor_set(x_41, 2, x_40);
x_42 = lean_array_uset(x_1, x_39, x_41);
x_1 = x_42;
x_2 = x_25;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__28(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
x_9 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__29___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__30(x_3, x_6);
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(lean_object* x_1) {
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
x_8 = l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__28(x_7, x_1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(size_t x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
lean_dec(x_2);
x_4 = lean_box(0);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; size_t x_9; uint8_t x_10; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_unbox_usize(x_6);
x_10 = lean_usize_dec_eq(x_9, x_1);
if (x_10 == 0)
{
lean_object* x_11; 
x_11 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_1, x_2, x_8);
lean_ctor_set(x_3, 2, x_11);
return x_3;
}
else
{
lean_object* x_12; 
lean_dec(x_7);
lean_dec(x_6);
x_12 = lean_box_usize(x_1);
lean_ctor_set(x_3, 1, x_2);
lean_ctor_set(x_3, 0, x_12);
return x_3;
}
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; size_t x_16; uint8_t x_17; 
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_3, 1);
x_15 = lean_ctor_get(x_3, 2);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_3);
x_16 = lean_unbox_usize(x_13);
x_17 = lean_usize_dec_eq(x_16, x_1);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_1, x_2, x_15);
x_19 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_19, 0, x_13);
lean_ctor_set(x_19, 1, x_14);
lean_ctor_set(x_19, 2, x_18);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; 
lean_dec(x_14);
lean_dec(x_13);
x_20 = lean_box_usize(x_1);
x_21 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_2);
lean_ctor_set(x_21, 2, x_15);
return x_21;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__32(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_2, 1);
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
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__33(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__32(x_4, x_6);
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__34(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; size_t x_9; lean_object* x_10; uint8_t x_11; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
x_6 = lean_ctor_get(x_2, 2);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_10 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_9, x_8);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_7);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; size_t x_17; uint64_t x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; uint64_t x_22; uint64_t x_23; uint64_t x_24; size_t x_25; size_t x_26; size_t x_27; size_t x_28; size_t x_29; lean_object* x_30; size_t x_31; lean_object* x_32; 
x_13 = lean_ctor_get(x_10, 0);
x_14 = lean_ctor_get(x_7, 0);
x_15 = lean_ctor_get(x_7, 1);
x_16 = lean_array_get_size(x_15);
x_17 = lean_unbox_usize(x_13);
x_18 = lean_usize_to_uint64(x_17);
x_19 = 32;
x_20 = lean_uint64_shift_right(x_18, x_19);
x_21 = lean_uint64_xor(x_18, x_20);
x_22 = 16;
x_23 = lean_uint64_shift_right(x_21, x_22);
x_24 = lean_uint64_xor(x_21, x_23);
x_25 = lean_uint64_to_usize(x_24);
x_26 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_27 = 1;
x_28 = lean_usize_sub(x_26, x_27);
x_29 = lean_usize_land(x_25, x_28);
x_30 = lean_array_uget(x_15, x_29);
x_31 = lean_unbox_usize(x_13);
lean_inc(x_30);
x_32 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(x_31, x_30);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_33; lean_object* x_34; size_t x_35; uint8_t x_36; 
x_33 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
x_34 = lean_array_push(x_33, x_4);
x_35 = lean_unbox_usize(x_13);
lean_inc(x_30);
x_36 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_35, x_30);
if (x_36 == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_37 = lean_unsigned_to_nat(1u);
x_38 = lean_nat_add(x_14, x_37);
lean_dec(x_14);
lean_ctor_set(x_2, 2, x_30);
lean_ctor_set(x_2, 1, x_34);
lean_ctor_set(x_2, 0, x_13);
x_39 = lean_array_uset(x_15, x_29, x_2);
x_40 = lean_unsigned_to_nat(4u);
x_41 = lean_nat_mul(x_38, x_40);
x_42 = lean_unsigned_to_nat(3u);
x_43 = lean_nat_div(x_41, x_42);
lean_dec(x_41);
x_44 = lean_array_get_size(x_39);
x_45 = lean_nat_dec_le(x_43, x_44);
lean_dec(x_44);
lean_dec(x_43);
if (x_45 == 0)
{
lean_object* x_46; 
x_46 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_39);
lean_ctor_set(x_7, 1, x_46);
lean_ctor_set(x_7, 0, x_38);
lean_ctor_set(x_10, 0, x_7);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
else
{
lean_ctor_set(x_7, 1, x_39);
lean_ctor_set(x_7, 0, x_38);
lean_ctor_set(x_10, 0, x_7);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_49; lean_object* x_50; size_t x_51; lean_object* x_52; lean_object* x_53; 
lean_free_object(x_2);
x_49 = lean_box(0);
x_50 = lean_array_uset(x_15, x_29, x_49);
x_51 = lean_unbox_usize(x_13);
lean_dec(x_13);
x_52 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_51, x_34, x_30);
x_53 = lean_array_uset(x_50, x_29, x_52);
lean_ctor_set(x_7, 1, x_53);
lean_ctor_set(x_10, 0, x_7);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_55; lean_object* x_56; size_t x_57; uint8_t x_58; 
x_55 = lean_ctor_get(x_32, 0);
lean_inc(x_55);
lean_dec(x_32);
x_56 = lean_array_push(x_55, x_4);
x_57 = lean_unbox_usize(x_13);
lean_inc(x_30);
x_58 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_57, x_30);
if (x_58 == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; uint8_t x_67; 
x_59 = lean_unsigned_to_nat(1u);
x_60 = lean_nat_add(x_14, x_59);
lean_dec(x_14);
lean_ctor_set(x_2, 2, x_30);
lean_ctor_set(x_2, 1, x_56);
lean_ctor_set(x_2, 0, x_13);
x_61 = lean_array_uset(x_15, x_29, x_2);
x_62 = lean_unsigned_to_nat(4u);
x_63 = lean_nat_mul(x_60, x_62);
x_64 = lean_unsigned_to_nat(3u);
x_65 = lean_nat_div(x_63, x_64);
lean_dec(x_63);
x_66 = lean_array_get_size(x_61);
x_67 = lean_nat_dec_le(x_65, x_66);
lean_dec(x_66);
lean_dec(x_65);
if (x_67 == 0)
{
lean_object* x_68; 
x_68 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_61);
lean_ctor_set(x_7, 1, x_68);
lean_ctor_set(x_7, 0, x_60);
lean_ctor_set(x_10, 0, x_7);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
else
{
lean_ctor_set(x_7, 1, x_61);
lean_ctor_set(x_7, 0, x_60);
lean_ctor_set(x_10, 0, x_7);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_71; lean_object* x_72; size_t x_73; lean_object* x_74; lean_object* x_75; 
lean_free_object(x_2);
x_71 = lean_box(0);
x_72 = lean_array_uset(x_15, x_29, x_71);
x_73 = lean_unbox_usize(x_13);
lean_dec(x_13);
x_74 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_73, x_56, x_30);
x_75 = lean_array_uset(x_72, x_29, x_74);
lean_ctor_set(x_7, 1, x_75);
lean_ctor_set(x_10, 0, x_7);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; size_t x_81; uint64_t x_82; uint64_t x_83; uint64_t x_84; uint64_t x_85; uint64_t x_86; uint64_t x_87; uint64_t x_88; size_t x_89; size_t x_90; size_t x_91; size_t x_92; size_t x_93; lean_object* x_94; size_t x_95; lean_object* x_96; 
x_77 = lean_ctor_get(x_10, 0);
x_78 = lean_ctor_get(x_7, 0);
x_79 = lean_ctor_get(x_7, 1);
lean_inc(x_79);
lean_inc(x_78);
lean_dec(x_7);
x_80 = lean_array_get_size(x_79);
x_81 = lean_unbox_usize(x_77);
x_82 = lean_usize_to_uint64(x_81);
x_83 = 32;
x_84 = lean_uint64_shift_right(x_82, x_83);
x_85 = lean_uint64_xor(x_82, x_84);
x_86 = 16;
x_87 = lean_uint64_shift_right(x_85, x_86);
x_88 = lean_uint64_xor(x_85, x_87);
x_89 = lean_uint64_to_usize(x_88);
x_90 = lean_usize_of_nat(x_80);
lean_dec(x_80);
x_91 = 1;
x_92 = lean_usize_sub(x_90, x_91);
x_93 = lean_usize_land(x_89, x_92);
x_94 = lean_array_uget(x_79, x_93);
x_95 = lean_unbox_usize(x_77);
lean_inc(x_94);
x_96 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(x_95, x_94);
if (lean_obj_tag(x_96) == 0)
{
lean_object* x_97; lean_object* x_98; size_t x_99; uint8_t x_100; 
x_97 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
x_98 = lean_array_push(x_97, x_4);
x_99 = lean_unbox_usize(x_77);
lean_inc(x_94);
x_100 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_99, x_94);
if (x_100 == 0)
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
x_101 = lean_unsigned_to_nat(1u);
x_102 = lean_nat_add(x_78, x_101);
lean_dec(x_78);
lean_ctor_set(x_2, 2, x_94);
lean_ctor_set(x_2, 1, x_98);
lean_ctor_set(x_2, 0, x_77);
x_103 = lean_array_uset(x_79, x_93, x_2);
x_104 = lean_unsigned_to_nat(4u);
x_105 = lean_nat_mul(x_102, x_104);
x_106 = lean_unsigned_to_nat(3u);
x_107 = lean_nat_div(x_105, x_106);
lean_dec(x_105);
x_108 = lean_array_get_size(x_103);
x_109 = lean_nat_dec_le(x_107, x_108);
lean_dec(x_108);
lean_dec(x_107);
if (x_109 == 0)
{
lean_object* x_110; lean_object* x_111; 
x_110 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_103);
x_111 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_111, 0, x_102);
lean_ctor_set(x_111, 1, x_110);
lean_ctor_set(x_10, 0, x_111);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_113; 
x_113 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_113, 0, x_102);
lean_ctor_set(x_113, 1, x_103);
lean_ctor_set(x_10, 0, x_113);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_115; lean_object* x_116; size_t x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; 
lean_free_object(x_2);
x_115 = lean_box(0);
x_116 = lean_array_uset(x_79, x_93, x_115);
x_117 = lean_unbox_usize(x_77);
lean_dec(x_77);
x_118 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_117, x_98, x_94);
x_119 = lean_array_uset(x_116, x_93, x_118);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_78);
lean_ctor_set(x_120, 1, x_119);
lean_ctor_set(x_10, 0, x_120);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_122; lean_object* x_123; size_t x_124; uint8_t x_125; 
x_122 = lean_ctor_get(x_96, 0);
lean_inc(x_122);
lean_dec(x_96);
x_123 = lean_array_push(x_122, x_4);
x_124 = lean_unbox_usize(x_77);
lean_inc(x_94);
x_125 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_124, x_94);
if (x_125 == 0)
{
lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; uint8_t x_134; 
x_126 = lean_unsigned_to_nat(1u);
x_127 = lean_nat_add(x_78, x_126);
lean_dec(x_78);
lean_ctor_set(x_2, 2, x_94);
lean_ctor_set(x_2, 1, x_123);
lean_ctor_set(x_2, 0, x_77);
x_128 = lean_array_uset(x_79, x_93, x_2);
x_129 = lean_unsigned_to_nat(4u);
x_130 = lean_nat_mul(x_127, x_129);
x_131 = lean_unsigned_to_nat(3u);
x_132 = lean_nat_div(x_130, x_131);
lean_dec(x_130);
x_133 = lean_array_get_size(x_128);
x_134 = lean_nat_dec_le(x_132, x_133);
lean_dec(x_133);
lean_dec(x_132);
if (x_134 == 0)
{
lean_object* x_135; lean_object* x_136; 
x_135 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_128);
x_136 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_136, 0, x_127);
lean_ctor_set(x_136, 1, x_135);
lean_ctor_set(x_10, 0, x_136);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_138; 
x_138 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_138, 0, x_127);
lean_ctor_set(x_138, 1, x_128);
lean_ctor_set(x_10, 0, x_138);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_140; lean_object* x_141; size_t x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; 
lean_free_object(x_2);
x_140 = lean_box(0);
x_141 = lean_array_uset(x_79, x_93, x_140);
x_142 = lean_unbox_usize(x_77);
lean_dec(x_77);
x_143 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_142, x_123, x_94);
x_144 = lean_array_uset(x_141, x_93, x_143);
x_145 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_145, 0, x_78);
lean_ctor_set(x_145, 1, x_144);
lean_ctor_set(x_10, 0, x_145);
x_1 = x_10;
x_2 = x_6;
goto _start;
}
}
}
}
else
{
lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; size_t x_153; uint64_t x_154; uint64_t x_155; uint64_t x_156; uint64_t x_157; uint64_t x_158; uint64_t x_159; uint64_t x_160; size_t x_161; size_t x_162; size_t x_163; size_t x_164; size_t x_165; lean_object* x_166; size_t x_167; lean_object* x_168; 
x_147 = lean_ctor_get(x_10, 0);
x_148 = lean_ctor_get(x_10, 1);
lean_inc(x_148);
lean_inc(x_147);
lean_dec(x_10);
x_149 = lean_ctor_get(x_7, 0);
lean_inc(x_149);
x_150 = lean_ctor_get(x_7, 1);
lean_inc(x_150);
if (lean_is_exclusive(x_7)) {
 lean_ctor_release(x_7, 0);
 lean_ctor_release(x_7, 1);
 x_151 = x_7;
} else {
 lean_dec_ref(x_7);
 x_151 = lean_box(0);
}
x_152 = lean_array_get_size(x_150);
x_153 = lean_unbox_usize(x_147);
x_154 = lean_usize_to_uint64(x_153);
x_155 = 32;
x_156 = lean_uint64_shift_right(x_154, x_155);
x_157 = lean_uint64_xor(x_154, x_156);
x_158 = 16;
x_159 = lean_uint64_shift_right(x_157, x_158);
x_160 = lean_uint64_xor(x_157, x_159);
x_161 = lean_uint64_to_usize(x_160);
x_162 = lean_usize_of_nat(x_152);
lean_dec(x_152);
x_163 = 1;
x_164 = lean_usize_sub(x_162, x_163);
x_165 = lean_usize_land(x_161, x_164);
x_166 = lean_array_uget(x_150, x_165);
x_167 = lean_unbox_usize(x_147);
lean_inc(x_166);
x_168 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(x_167, x_166);
if (lean_obj_tag(x_168) == 0)
{
lean_object* x_169; lean_object* x_170; size_t x_171; uint8_t x_172; 
x_169 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
x_170 = lean_array_push(x_169, x_4);
x_171 = lean_unbox_usize(x_147);
lean_inc(x_166);
x_172 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_171, x_166);
if (x_172 == 0)
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; uint8_t x_181; 
x_173 = lean_unsigned_to_nat(1u);
x_174 = lean_nat_add(x_149, x_173);
lean_dec(x_149);
lean_ctor_set(x_2, 2, x_166);
lean_ctor_set(x_2, 1, x_170);
lean_ctor_set(x_2, 0, x_147);
x_175 = lean_array_uset(x_150, x_165, x_2);
x_176 = lean_unsigned_to_nat(4u);
x_177 = lean_nat_mul(x_174, x_176);
x_178 = lean_unsigned_to_nat(3u);
x_179 = lean_nat_div(x_177, x_178);
lean_dec(x_177);
x_180 = lean_array_get_size(x_175);
x_181 = lean_nat_dec_le(x_179, x_180);
lean_dec(x_180);
lean_dec(x_179);
if (x_181 == 0)
{
lean_object* x_182; lean_object* x_183; lean_object* x_184; 
x_182 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_175);
if (lean_is_scalar(x_151)) {
 x_183 = lean_alloc_ctor(0, 2, 0);
} else {
 x_183 = x_151;
}
lean_ctor_set(x_183, 0, x_174);
lean_ctor_set(x_183, 1, x_182);
x_184 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_184, 0, x_183);
lean_ctor_set(x_184, 1, x_148);
x_1 = x_184;
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_186; lean_object* x_187; 
if (lean_is_scalar(x_151)) {
 x_186 = lean_alloc_ctor(0, 2, 0);
} else {
 x_186 = x_151;
}
lean_ctor_set(x_186, 0, x_174);
lean_ctor_set(x_186, 1, x_175);
x_187 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_187, 0, x_186);
lean_ctor_set(x_187, 1, x_148);
x_1 = x_187;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_189; lean_object* x_190; size_t x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; 
lean_free_object(x_2);
x_189 = lean_box(0);
x_190 = lean_array_uset(x_150, x_165, x_189);
x_191 = lean_unbox_usize(x_147);
lean_dec(x_147);
x_192 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_191, x_170, x_166);
x_193 = lean_array_uset(x_190, x_165, x_192);
if (lean_is_scalar(x_151)) {
 x_194 = lean_alloc_ctor(0, 2, 0);
} else {
 x_194 = x_151;
}
lean_ctor_set(x_194, 0, x_149);
lean_ctor_set(x_194, 1, x_193);
x_195 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_195, 0, x_194);
lean_ctor_set(x_195, 1, x_148);
x_1 = x_195;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_197; lean_object* x_198; size_t x_199; uint8_t x_200; 
x_197 = lean_ctor_get(x_168, 0);
lean_inc(x_197);
lean_dec(x_168);
x_198 = lean_array_push(x_197, x_4);
x_199 = lean_unbox_usize(x_147);
lean_inc(x_166);
x_200 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_199, x_166);
if (x_200 == 0)
{
lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; uint8_t x_209; 
x_201 = lean_unsigned_to_nat(1u);
x_202 = lean_nat_add(x_149, x_201);
lean_dec(x_149);
lean_ctor_set(x_2, 2, x_166);
lean_ctor_set(x_2, 1, x_198);
lean_ctor_set(x_2, 0, x_147);
x_203 = lean_array_uset(x_150, x_165, x_2);
x_204 = lean_unsigned_to_nat(4u);
x_205 = lean_nat_mul(x_202, x_204);
x_206 = lean_unsigned_to_nat(3u);
x_207 = lean_nat_div(x_205, x_206);
lean_dec(x_205);
x_208 = lean_array_get_size(x_203);
x_209 = lean_nat_dec_le(x_207, x_208);
lean_dec(x_208);
lean_dec(x_207);
if (x_209 == 0)
{
lean_object* x_210; lean_object* x_211; lean_object* x_212; 
x_210 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_203);
if (lean_is_scalar(x_151)) {
 x_211 = lean_alloc_ctor(0, 2, 0);
} else {
 x_211 = x_151;
}
lean_ctor_set(x_211, 0, x_202);
lean_ctor_set(x_211, 1, x_210);
x_212 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_212, 0, x_211);
lean_ctor_set(x_212, 1, x_148);
x_1 = x_212;
x_2 = x_6;
goto _start;
}
else
{
lean_object* x_214; lean_object* x_215; 
if (lean_is_scalar(x_151)) {
 x_214 = lean_alloc_ctor(0, 2, 0);
} else {
 x_214 = x_151;
}
lean_ctor_set(x_214, 0, x_202);
lean_ctor_set(x_214, 1, x_203);
x_215 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_215, 0, x_214);
lean_ctor_set(x_215, 1, x_148);
x_1 = x_215;
x_2 = x_6;
goto _start;
}
}
else
{
lean_object* x_217; lean_object* x_218; size_t x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; 
lean_free_object(x_2);
x_217 = lean_box(0);
x_218 = lean_array_uset(x_150, x_165, x_217);
x_219 = lean_unbox_usize(x_147);
lean_dec(x_147);
x_220 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_219, x_198, x_166);
x_221 = lean_array_uset(x_218, x_165, x_220);
if (lean_is_scalar(x_151)) {
 x_222 = lean_alloc_ctor(0, 2, 0);
} else {
 x_222 = x_151;
}
lean_ctor_set(x_222, 0, x_149);
lean_ctor_set(x_222, 1, x_221);
x_223 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_223, 0, x_222);
lean_ctor_set(x_223, 1, x_148);
x_1 = x_223;
x_2 = x_6;
goto _start;
}
}
}
}
else
{
lean_object* x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; size_t x_230; lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; lean_object* x_235; lean_object* x_236; lean_object* x_237; lean_object* x_238; size_t x_239; uint64_t x_240; uint64_t x_241; uint64_t x_242; uint64_t x_243; uint64_t x_244; uint64_t x_245; uint64_t x_246; size_t x_247; size_t x_248; size_t x_249; size_t x_250; size_t x_251; lean_object* x_252; size_t x_253; lean_object* x_254; 
x_225 = lean_ctor_get(x_2, 0);
x_226 = lean_ctor_get(x_2, 1);
x_227 = lean_ctor_get(x_2, 2);
lean_inc(x_227);
lean_inc(x_226);
lean_inc(x_225);
lean_dec(x_2);
x_228 = lean_ctor_get(x_1, 0);
lean_inc(x_228);
x_229 = lean_ctor_get(x_1, 1);
lean_inc(x_229);
lean_dec(x_1);
x_230 = lean_unbox_usize(x_226);
lean_dec(x_226);
x_231 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_230, x_229);
x_232 = lean_ctor_get(x_231, 0);
lean_inc(x_232);
x_233 = lean_ctor_get(x_231, 1);
lean_inc(x_233);
if (lean_is_exclusive(x_231)) {
 lean_ctor_release(x_231, 0);
 lean_ctor_release(x_231, 1);
 x_234 = x_231;
} else {
 lean_dec_ref(x_231);
 x_234 = lean_box(0);
}
x_235 = lean_ctor_get(x_228, 0);
lean_inc(x_235);
x_236 = lean_ctor_get(x_228, 1);
lean_inc(x_236);
if (lean_is_exclusive(x_228)) {
 lean_ctor_release(x_228, 0);
 lean_ctor_release(x_228, 1);
 x_237 = x_228;
} else {
 lean_dec_ref(x_228);
 x_237 = lean_box(0);
}
x_238 = lean_array_get_size(x_236);
x_239 = lean_unbox_usize(x_232);
x_240 = lean_usize_to_uint64(x_239);
x_241 = 32;
x_242 = lean_uint64_shift_right(x_240, x_241);
x_243 = lean_uint64_xor(x_240, x_242);
x_244 = 16;
x_245 = lean_uint64_shift_right(x_243, x_244);
x_246 = lean_uint64_xor(x_243, x_245);
x_247 = lean_uint64_to_usize(x_246);
x_248 = lean_usize_of_nat(x_238);
lean_dec(x_238);
x_249 = 1;
x_250 = lean_usize_sub(x_248, x_249);
x_251 = lean_usize_land(x_247, x_250);
x_252 = lean_array_uget(x_236, x_251);
x_253 = lean_unbox_usize(x_232);
lean_inc(x_252);
x_254 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(x_253, x_252);
if (lean_obj_tag(x_254) == 0)
{
lean_object* x_255; lean_object* x_256; size_t x_257; uint8_t x_258; 
x_255 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1;
x_256 = lean_array_push(x_255, x_225);
x_257 = lean_unbox_usize(x_232);
lean_inc(x_252);
x_258 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_257, x_252);
if (x_258 == 0)
{
lean_object* x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; lean_object* x_267; uint8_t x_268; 
x_259 = lean_unsigned_to_nat(1u);
x_260 = lean_nat_add(x_235, x_259);
lean_dec(x_235);
x_261 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_261, 0, x_232);
lean_ctor_set(x_261, 1, x_256);
lean_ctor_set(x_261, 2, x_252);
x_262 = lean_array_uset(x_236, x_251, x_261);
x_263 = lean_unsigned_to_nat(4u);
x_264 = lean_nat_mul(x_260, x_263);
x_265 = lean_unsigned_to_nat(3u);
x_266 = lean_nat_div(x_264, x_265);
lean_dec(x_264);
x_267 = lean_array_get_size(x_262);
x_268 = lean_nat_dec_le(x_266, x_267);
lean_dec(x_267);
lean_dec(x_266);
if (x_268 == 0)
{
lean_object* x_269; lean_object* x_270; lean_object* x_271; 
x_269 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_262);
if (lean_is_scalar(x_237)) {
 x_270 = lean_alloc_ctor(0, 2, 0);
} else {
 x_270 = x_237;
}
lean_ctor_set(x_270, 0, x_260);
lean_ctor_set(x_270, 1, x_269);
if (lean_is_scalar(x_234)) {
 x_271 = lean_alloc_ctor(0, 2, 0);
} else {
 x_271 = x_234;
}
lean_ctor_set(x_271, 0, x_270);
lean_ctor_set(x_271, 1, x_233);
x_1 = x_271;
x_2 = x_227;
goto _start;
}
else
{
lean_object* x_273; lean_object* x_274; 
if (lean_is_scalar(x_237)) {
 x_273 = lean_alloc_ctor(0, 2, 0);
} else {
 x_273 = x_237;
}
lean_ctor_set(x_273, 0, x_260);
lean_ctor_set(x_273, 1, x_262);
if (lean_is_scalar(x_234)) {
 x_274 = lean_alloc_ctor(0, 2, 0);
} else {
 x_274 = x_234;
}
lean_ctor_set(x_274, 0, x_273);
lean_ctor_set(x_274, 1, x_233);
x_1 = x_274;
x_2 = x_227;
goto _start;
}
}
else
{
lean_object* x_276; lean_object* x_277; size_t x_278; lean_object* x_279; lean_object* x_280; lean_object* x_281; lean_object* x_282; 
x_276 = lean_box(0);
x_277 = lean_array_uset(x_236, x_251, x_276);
x_278 = lean_unbox_usize(x_232);
lean_dec(x_232);
x_279 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_278, x_256, x_252);
x_280 = lean_array_uset(x_277, x_251, x_279);
if (lean_is_scalar(x_237)) {
 x_281 = lean_alloc_ctor(0, 2, 0);
} else {
 x_281 = x_237;
}
lean_ctor_set(x_281, 0, x_235);
lean_ctor_set(x_281, 1, x_280);
if (lean_is_scalar(x_234)) {
 x_282 = lean_alloc_ctor(0, 2, 0);
} else {
 x_282 = x_234;
}
lean_ctor_set(x_282, 0, x_281);
lean_ctor_set(x_282, 1, x_233);
x_1 = x_282;
x_2 = x_227;
goto _start;
}
}
else
{
lean_object* x_284; lean_object* x_285; size_t x_286; uint8_t x_287; 
x_284 = lean_ctor_get(x_254, 0);
lean_inc(x_284);
lean_dec(x_254);
x_285 = lean_array_push(x_284, x_225);
x_286 = lean_unbox_usize(x_232);
lean_inc(x_252);
x_287 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_286, x_252);
if (x_287 == 0)
{
lean_object* x_288; lean_object* x_289; lean_object* x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; lean_object* x_296; uint8_t x_297; 
x_288 = lean_unsigned_to_nat(1u);
x_289 = lean_nat_add(x_235, x_288);
lean_dec(x_235);
x_290 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_290, 0, x_232);
lean_ctor_set(x_290, 1, x_285);
lean_ctor_set(x_290, 2, x_252);
x_291 = lean_array_uset(x_236, x_251, x_290);
x_292 = lean_unsigned_to_nat(4u);
x_293 = lean_nat_mul(x_289, x_292);
x_294 = lean_unsigned_to_nat(3u);
x_295 = lean_nat_div(x_293, x_294);
lean_dec(x_293);
x_296 = lean_array_get_size(x_291);
x_297 = lean_nat_dec_le(x_295, x_296);
lean_dec(x_296);
lean_dec(x_295);
if (x_297 == 0)
{
lean_object* x_298; lean_object* x_299; lean_object* x_300; 
x_298 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__27(x_291);
if (lean_is_scalar(x_237)) {
 x_299 = lean_alloc_ctor(0, 2, 0);
} else {
 x_299 = x_237;
}
lean_ctor_set(x_299, 0, x_289);
lean_ctor_set(x_299, 1, x_298);
if (lean_is_scalar(x_234)) {
 x_300 = lean_alloc_ctor(0, 2, 0);
} else {
 x_300 = x_234;
}
lean_ctor_set(x_300, 0, x_299);
lean_ctor_set(x_300, 1, x_233);
x_1 = x_300;
x_2 = x_227;
goto _start;
}
else
{
lean_object* x_302; lean_object* x_303; 
if (lean_is_scalar(x_237)) {
 x_302 = lean_alloc_ctor(0, 2, 0);
} else {
 x_302 = x_237;
}
lean_ctor_set(x_302, 0, x_289);
lean_ctor_set(x_302, 1, x_291);
if (lean_is_scalar(x_234)) {
 x_303 = lean_alloc_ctor(0, 2, 0);
} else {
 x_303 = x_234;
}
lean_ctor_set(x_303, 0, x_302);
lean_ctor_set(x_303, 1, x_233);
x_1 = x_303;
x_2 = x_227;
goto _start;
}
}
else
{
lean_object* x_305; lean_object* x_306; size_t x_307; lean_object* x_308; lean_object* x_309; lean_object* x_310; lean_object* x_311; 
x_305 = lean_box(0);
x_306 = lean_array_uset(x_236, x_251, x_305);
x_307 = lean_unbox_usize(x_232);
lean_dec(x_232);
x_308 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_307, x_285, x_252);
x_309 = lean_array_uset(x_306, x_251, x_308);
if (lean_is_scalar(x_237)) {
 x_310 = lean_alloc_ctor(0, 2, 0);
} else {
 x_310 = x_237;
}
lean_ctor_set(x_310, 0, x_235);
lean_ctor_set(x_310, 1, x_309);
if (lean_is_scalar(x_234)) {
 x_311 = lean_alloc_ctor(0, 2, 0);
} else {
 x_311 = x_234;
}
lean_ctor_set(x_311, 0, x_310);
lean_ctor_set(x_311, 1, x_233);
x_1 = x_311;
x_2 = x_227;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__35(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__34(x_4, x_6);
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
LEAN_EXPORT lean_object* l_Aesop_UnionFind_sets___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__24(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_18 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
lean_inc(x_1);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_1);
x_20 = lean_ctor_get(x_1, 2);
lean_inc(x_20);
x_21 = lean_ctor_get(x_20, 1);
lean_inc(x_21);
lean_dec(x_20);
x_22 = lean_array_get_size(x_21);
x_23 = lean_unsigned_to_nat(0u);
x_24 = lean_nat_dec_lt(x_23, x_22);
if (x_24 == 0)
{
lean_dec(x_22);
lean_dec(x_21);
lean_dec(x_19);
x_2 = x_18;
x_3 = x_1;
goto block_17;
}
else
{
uint8_t x_25; 
x_25 = lean_nat_dec_le(x_22, x_22);
if (x_25 == 0)
{
lean_dec(x_22);
lean_dec(x_21);
lean_dec(x_19);
x_2 = x_18;
x_3 = x_1;
goto block_17;
}
else
{
size_t x_26; size_t x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_1);
x_26 = 0;
x_27 = lean_usize_of_nat(x_22);
lean_dec(x_22);
x_28 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__35(x_21, x_26, x_27, x_19);
lean_dec(x_21);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_2 = x_29;
x_3 = x_30;
goto block_17;
}
}
block_17:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
x_5 = lean_mk_empty_array_with_capacity(x_4);
lean_dec(x_4);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_array_get_size(x_6);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_7);
if (x_9 == 0)
{
lean_object* x_10; 
lean_dec(x_7);
lean_dec(x_6);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_5);
lean_ctor_set(x_10, 1, x_3);
return x_10;
}
else
{
uint8_t x_11; 
x_11 = lean_nat_dec_le(x_7, x_7);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_7);
lean_dec(x_6);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_3);
return x_12;
}
else
{
size_t x_13; size_t x_14; lean_object* x_15; lean_object* x_16; 
x_13 = 0;
x_14 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_15 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__33(x_6, x_13, x_14, x_5);
lean_dec(x_6);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_3);
return x_16;
}
}
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1(x_1);
x_3 = lean_box(0);
x_4 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
x_6 = lean_array_size(x_1);
x_7 = 0;
x_8 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__23(x_3, x_1, x_6, x_7, x_5);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = l_Aesop_UnionFind_sets___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__24(x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__4(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; lean_object* x_5; 
x_4 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_5 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__9(x_1, x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__10(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_addArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_UnionFind_addArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__2(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__11(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__12(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__19(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
size_t x_3; lean_object* x_4; 
x_3 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_4 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_findRepUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__20(x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_UnionFind_find_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__18(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_mergeUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__17___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Aesop_Util_UnionFind_0__Aesop_UnionFind_mergeUnsafe___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__17(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__21(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__23___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__23(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
size_t x_3; lean_object* x_4; 
x_3 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_4 = l_Std_DHashMap_Internal_AssocList_get_x3f___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__25(x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
size_t x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_4 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__26(x_3, x_2);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; lean_object* x_5; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__31(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__33___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__33(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__35___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__35(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(lean_object* x_1, lean_object* x_2) {
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
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_nat_dec_eq(x_4, x_1);
if (x_6 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
uint8_t x_8; 
x_8 = 1;
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__4___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint64_t x_7; uint64_t x_8; uint64_t x_9; uint64_t x_10; uint64_t x_11; uint64_t x_12; uint64_t x_13; size_t x_14; size_t x_15; size_t x_16; size_t x_17; size_t x_18; lean_object* x_19; lean_object* x_20; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 2);
x_6 = lean_array_get_size(x_1);
x_7 = lean_uint64_of_nat(x_4);
x_8 = 32;
x_9 = lean_uint64_shift_right(x_7, x_8);
x_10 = lean_uint64_xor(x_7, x_9);
x_11 = 16;
x_12 = lean_uint64_shift_right(x_10, x_11);
x_13 = lean_uint64_xor(x_10, x_12);
x_14 = lean_uint64_to_usize(x_13);
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 1;
x_17 = lean_usize_sub(x_15, x_16);
x_18 = lean_usize_land(x_14, x_17);
x_19 = lean_array_uget(x_1, x_18);
lean_ctor_set(x_2, 2, x_19);
x_20 = lean_array_uset(x_1, x_18, x_2);
x_1 = x_20;
x_2 = x_5;
goto _start;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint64_t x_26; uint64_t x_27; uint64_t x_28; uint64_t x_29; uint64_t x_30; uint64_t x_31; uint64_t x_32; size_t x_33; size_t x_34; size_t x_35; size_t x_36; size_t x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_22 = lean_ctor_get(x_2, 0);
x_23 = lean_ctor_get(x_2, 1);
x_24 = lean_ctor_get(x_2, 2);
lean_inc(x_24);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_2);
x_25 = lean_array_get_size(x_1);
x_26 = lean_uint64_of_nat(x_22);
x_27 = 32;
x_28 = lean_uint64_shift_right(x_26, x_27);
x_29 = lean_uint64_xor(x_26, x_28);
x_30 = 16;
x_31 = lean_uint64_shift_right(x_29, x_30);
x_32 = lean_uint64_xor(x_29, x_31);
x_33 = lean_uint64_to_usize(x_32);
x_34 = lean_usize_of_nat(x_25);
lean_dec(x_25);
x_35 = 1;
x_36 = lean_usize_sub(x_34, x_35);
x_37 = lean_usize_land(x_33, x_36);
x_38 = lean_array_uget(x_1, x_37);
x_39 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_39, 0, x_22);
lean_ctor_set(x_39, 1, x_23);
lean_ctor_set(x_39, 2, x_38);
x_40 = lean_array_uset(x_1, x_37, x_39);
x_1 = x_40;
x_2 = x_24;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
x_9 = l_Std_DHashMap_Internal_AssocList_foldlM___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__4___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__5(x_3, x_6);
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(lean_object* x_1) {
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
x_8 = l_Std_DHashMap_Internal_Raw_u2080_expand_go___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__3(x_7, x_1, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Array_indexOfAux___at_Lean_MetavarContext_eraseExprMVarAssignment___spec__3(x_1, x_2, x_3);
if (lean_obj_tag(x_4) == 0)
{
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_dec(x_4);
x_6 = l_Array_feraseIdx___rarg(x_1, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__8(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_lt(x_4, x_3);
if (x_13 == 0)
{
lean_object* x_14; 
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_5);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; size_t x_22; size_t x_23; lean_object* x_24; 
lean_dec(x_5);
x_15 = lean_array_uget(x_2, x_4);
x_16 = lean_st_ref_take(x_1, x_12);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7(x_17, x_15);
lean_dec(x_15);
x_20 = lean_st_ref_set(x_1, x_19, x_18);
x_21 = lean_ctor_get(x_20, 1);
lean_inc(x_21);
lean_dec(x_20);
x_22 = 1;
x_23 = lean_usize_add(x_4, x_22);
x_24 = lean_box(0);
x_4 = x_23;
x_5 = x_24;
x_12 = x_21;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_box(0);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
}
static lean_object* _init_l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___lambda__1___boxed), 8, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
switch (lean_obj_tag(x_5)) {
case 0:
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_13 = lean_ctor_get(x_5, 0);
lean_inc(x_13);
if (lean_is_exclusive(x_5)) {
 lean_ctor_release(x_5, 0);
 x_14 = x_5;
} else {
 lean_dec_ref(x_5);
 x_14 = lean_box(0);
}
x_37 = lean_st_ref_get(x_13, x_12);
x_38 = lean_ctor_get(x_37, 0);
lean_inc(x_38);
x_39 = lean_ctor_get(x_37, 1);
lean_inc(x_39);
lean_dec(x_37);
x_40 = l_Aesop_Goal_originalGoalId(x_38);
lean_dec(x_38);
x_41 = lean_st_ref_take(x_4, x_39);
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_41, 1);
lean_inc(x_43);
lean_dec(x_41);
x_44 = !lean_is_exclusive(x_42);
if (x_44 == 0)
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; uint64_t x_48; uint64_t x_49; uint64_t x_50; uint64_t x_51; uint64_t x_52; uint64_t x_53; uint64_t x_54; size_t x_55; size_t x_56; size_t x_57; size_t x_58; size_t x_59; lean_object* x_60; uint8_t x_61; 
x_45 = lean_ctor_get(x_42, 0);
x_46 = lean_ctor_get(x_42, 1);
x_47 = lean_array_get_size(x_46);
x_48 = lean_uint64_of_nat(x_40);
x_49 = 32;
x_50 = lean_uint64_shift_right(x_48, x_49);
x_51 = lean_uint64_xor(x_48, x_50);
x_52 = 16;
x_53 = lean_uint64_shift_right(x_51, x_52);
x_54 = lean_uint64_xor(x_51, x_53);
x_55 = lean_uint64_to_usize(x_54);
x_56 = lean_usize_of_nat(x_47);
lean_dec(x_47);
x_57 = 1;
x_58 = lean_usize_sub(x_56, x_57);
x_59 = lean_usize_land(x_55, x_58);
x_60 = lean_array_uget(x_46, x_59);
x_61 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_40, x_60);
if (x_61 == 0)
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; uint8_t x_72; 
x_62 = lean_unsigned_to_nat(1u);
x_63 = lean_nat_add(x_45, x_62);
lean_dec(x_45);
x_64 = lean_box(0);
x_65 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_65, 0, x_40);
lean_ctor_set(x_65, 1, x_64);
lean_ctor_set(x_65, 2, x_60);
x_66 = lean_array_uset(x_46, x_59, x_65);
x_67 = lean_unsigned_to_nat(4u);
x_68 = lean_nat_mul(x_63, x_67);
x_69 = lean_unsigned_to_nat(3u);
x_70 = lean_nat_div(x_68, x_69);
lean_dec(x_68);
x_71 = lean_array_get_size(x_66);
x_72 = lean_nat_dec_le(x_70, x_71);
lean_dec(x_71);
lean_dec(x_70);
if (x_72 == 0)
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; uint8_t x_76; 
x_73 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(x_66);
lean_ctor_set(x_42, 1, x_73);
lean_ctor_set(x_42, 0, x_63);
x_74 = lean_st_ref_set(x_4, x_42, x_43);
x_75 = lean_ctor_get(x_74, 1);
lean_inc(x_75);
lean_dec(x_74);
x_76 = 1;
x_15 = x_76;
x_16 = x_75;
goto block_36;
}
else
{
lean_object* x_77; lean_object* x_78; uint8_t x_79; 
lean_ctor_set(x_42, 1, x_66);
lean_ctor_set(x_42, 0, x_63);
x_77 = lean_st_ref_set(x_4, x_42, x_43);
x_78 = lean_ctor_get(x_77, 1);
lean_inc(x_78);
lean_dec(x_77);
x_79 = 1;
x_15 = x_79;
x_16 = x_78;
goto block_36;
}
}
else
{
lean_object* x_80; lean_object* x_81; uint8_t x_82; 
lean_dec(x_60);
lean_dec(x_40);
x_80 = lean_st_ref_set(x_4, x_42, x_43);
x_81 = lean_ctor_get(x_80, 1);
lean_inc(x_81);
lean_dec(x_80);
x_82 = 1;
x_15 = x_82;
x_16 = x_81;
goto block_36;
}
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; uint64_t x_86; uint64_t x_87; uint64_t x_88; uint64_t x_89; uint64_t x_90; uint64_t x_91; uint64_t x_92; size_t x_93; size_t x_94; size_t x_95; size_t x_96; size_t x_97; lean_object* x_98; uint8_t x_99; 
x_83 = lean_ctor_get(x_42, 0);
x_84 = lean_ctor_get(x_42, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_42);
x_85 = lean_array_get_size(x_84);
x_86 = lean_uint64_of_nat(x_40);
x_87 = 32;
x_88 = lean_uint64_shift_right(x_86, x_87);
x_89 = lean_uint64_xor(x_86, x_88);
x_90 = 16;
x_91 = lean_uint64_shift_right(x_89, x_90);
x_92 = lean_uint64_xor(x_89, x_91);
x_93 = lean_uint64_to_usize(x_92);
x_94 = lean_usize_of_nat(x_85);
lean_dec(x_85);
x_95 = 1;
x_96 = lean_usize_sub(x_94, x_95);
x_97 = lean_usize_land(x_93, x_96);
x_98 = lean_array_uget(x_84, x_97);
x_99 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_40, x_98);
if (x_99 == 0)
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; uint8_t x_110; 
x_100 = lean_unsigned_to_nat(1u);
x_101 = lean_nat_add(x_83, x_100);
lean_dec(x_83);
x_102 = lean_box(0);
x_103 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_103, 0, x_40);
lean_ctor_set(x_103, 1, x_102);
lean_ctor_set(x_103, 2, x_98);
x_104 = lean_array_uset(x_84, x_97, x_103);
x_105 = lean_unsigned_to_nat(4u);
x_106 = lean_nat_mul(x_101, x_105);
x_107 = lean_unsigned_to_nat(3u);
x_108 = lean_nat_div(x_106, x_107);
lean_dec(x_106);
x_109 = lean_array_get_size(x_104);
x_110 = lean_nat_dec_le(x_108, x_109);
lean_dec(x_109);
lean_dec(x_108);
if (x_110 == 0)
{
lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; uint8_t x_115; 
x_111 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(x_104);
x_112 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_112, 0, x_101);
lean_ctor_set(x_112, 1, x_111);
x_113 = lean_st_ref_set(x_4, x_112, x_43);
x_114 = lean_ctor_get(x_113, 1);
lean_inc(x_114);
lean_dec(x_113);
x_115 = 1;
x_15 = x_115;
x_16 = x_114;
goto block_36;
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; uint8_t x_119; 
x_116 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_116, 0, x_101);
lean_ctor_set(x_116, 1, x_104);
x_117 = lean_st_ref_set(x_4, x_116, x_43);
x_118 = lean_ctor_get(x_117, 1);
lean_inc(x_118);
lean_dec(x_117);
x_119 = 1;
x_15 = x_119;
x_16 = x_118;
goto block_36;
}
}
else
{
lean_object* x_120; lean_object* x_121; lean_object* x_122; uint8_t x_123; 
lean_dec(x_98);
lean_dec(x_40);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_83);
lean_ctor_set(x_120, 1, x_84);
x_121 = lean_st_ref_set(x_4, x_120, x_43);
x_122 = lean_ctor_get(x_121, 1);
lean_inc(x_122);
lean_dec(x_121);
x_123 = 1;
x_15 = x_123;
x_16 = x_122;
goto block_36;
}
}
block_36:
{
if (x_15 == 0)
{
lean_object* x_17; lean_object* x_18; 
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_19 = lean_st_ref_get(x_13, x_16);
lean_dec(x_13);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_treeImpl___elambda__5(x_20);
lean_dec(x_20);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
if (lean_is_scalar(x_14)) {
 x_24 = lean_alloc_ctor(2, 1, 0);
} else {
 x_24 = x_14;
 lean_ctor_set_tag(x_24, 2);
}
lean_ctor_set(x_24, 0, x_23);
x_25 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(x_1, x_2, x_3, x_4, x_24, x_6, x_7, x_8, x_9, x_10, x_11, x_21);
if (lean_obj_tag(x_25) == 0)
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_ctor_get(x_25, 0);
lean_dec(x_27);
x_28 = lean_box(0);
lean_ctor_set(x_25, 0, x_28);
return x_25;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_25, 1);
lean_inc(x_29);
lean_dec(x_25);
x_30 = lean_box(0);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_29);
return x_31;
}
}
else
{
uint8_t x_32; 
x_32 = !lean_is_exclusive(x_25);
if (x_32 == 0)
{
return x_25;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_25, 0);
x_34 = lean_ctor_get(x_25, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_25);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
}
case 1:
{
lean_object* x_124; lean_object* x_125; uint8_t x_126; lean_object* x_127; lean_object* x_148; lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; size_t x_159; size_t x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; lean_object* x_166; uint8_t x_167; 
x_124 = lean_ctor_get(x_5, 0);
lean_inc(x_124);
if (lean_is_exclusive(x_5)) {
 lean_ctor_release(x_5, 0);
 x_125 = x_5;
} else {
 lean_dec_ref(x_5);
 x_125 = lean_box(0);
}
x_148 = lean_st_ref_take(x_2, x_12);
x_149 = lean_ctor_get(x_148, 0);
lean_inc(x_149);
x_150 = lean_ctor_get(x_148, 1);
lean_inc(x_150);
lean_dec(x_148);
lean_inc(x_124);
x_151 = lean_array_push(x_149, x_124);
x_152 = lean_st_ref_set(x_2, x_151, x_150);
x_153 = lean_ctor_get(x_152, 1);
lean_inc(x_153);
lean_dec(x_152);
x_154 = lean_st_ref_get(x_124, x_153);
x_155 = lean_ctor_get(x_154, 0);
lean_inc(x_155);
x_156 = lean_ctor_get(x_154, 1);
lean_inc(x_156);
lean_dec(x_154);
x_157 = l_Aesop_treeImpl___elambda__3(x_155);
lean_dec(x_155);
x_158 = lean_ctor_get(x_157, 8);
lean_inc(x_158);
lean_dec(x_157);
x_159 = lean_array_size(x_158);
x_160 = 0;
x_161 = lean_box(0);
x_162 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__8(x_1, x_158, x_159, x_160, x_161, x_6, x_7, x_8, x_9, x_10, x_11, x_156);
lean_dec(x_158);
x_163 = lean_ctor_get(x_162, 1);
lean_inc(x_163);
lean_dec(x_162);
x_164 = lean_st_ref_get(x_1, x_163);
x_165 = lean_ctor_get(x_164, 0);
lean_inc(x_165);
x_166 = lean_ctor_get(x_164, 1);
lean_inc(x_166);
lean_dec(x_164);
x_167 = l_Array_isEmpty___rarg(x_165);
lean_dec(x_165);
if (x_167 == 0)
{
uint8_t x_168; 
x_168 = 1;
x_126 = x_168;
x_127 = x_166;
goto block_147;
}
else
{
uint8_t x_169; 
x_169 = 0;
x_126 = x_169;
x_127 = x_166;
goto block_147;
}
block_147:
{
if (x_126 == 0)
{
lean_object* x_128; lean_object* x_129; 
lean_dec(x_125);
lean_dec(x_124);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_128 = lean_box(0);
x_129 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_129, 0, x_128);
lean_ctor_set(x_129, 1, x_127);
return x_129;
}
else
{
lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; 
x_130 = lean_st_ref_get(x_124, x_127);
lean_dec(x_124);
x_131 = lean_ctor_get(x_130, 0);
lean_inc(x_131);
x_132 = lean_ctor_get(x_130, 1);
lean_inc(x_132);
lean_dec(x_130);
x_133 = l_Aesop_treeImpl___elambda__3(x_131);
lean_dec(x_131);
x_134 = lean_ctor_get(x_133, 1);
lean_inc(x_134);
lean_dec(x_133);
if (lean_is_scalar(x_125)) {
 x_135 = lean_alloc_ctor(0, 1, 0);
} else {
 x_135 = x_125;
 lean_ctor_set_tag(x_135, 0);
}
lean_ctor_set(x_135, 0, x_134);
x_136 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(x_1, x_2, x_3, x_4, x_135, x_6, x_7, x_8, x_9, x_10, x_11, x_132);
if (lean_obj_tag(x_136) == 0)
{
uint8_t x_137; 
x_137 = !lean_is_exclusive(x_136);
if (x_137 == 0)
{
lean_object* x_138; lean_object* x_139; 
x_138 = lean_ctor_get(x_136, 0);
lean_dec(x_138);
x_139 = lean_box(0);
lean_ctor_set(x_136, 0, x_139);
return x_136;
}
else
{
lean_object* x_140; lean_object* x_141; lean_object* x_142; 
x_140 = lean_ctor_get(x_136, 1);
lean_inc(x_140);
lean_dec(x_136);
x_141 = lean_box(0);
x_142 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_142, 1, x_140);
return x_142;
}
}
else
{
uint8_t x_143; 
x_143 = !lean_is_exclusive(x_136);
if (x_143 == 0)
{
return x_136;
}
else
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; 
x_144 = lean_ctor_get(x_136, 0);
x_145 = lean_ctor_get(x_136, 1);
lean_inc(x_145);
lean_inc(x_144);
lean_dec(x_136);
x_146 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_146, 0, x_144);
lean_ctor_set(x_146, 1, x_145);
return x_146;
}
}
}
}
}
default: 
{
uint8_t x_170; 
x_170 = !lean_is_exclusive(x_5);
if (x_170 == 0)
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; 
x_171 = lean_ctor_get(x_5, 0);
x_172 = lean_st_ref_get(x_171, x_12);
lean_dec(x_171);
x_173 = lean_ctor_get(x_172, 0);
lean_inc(x_173);
x_174 = lean_ctor_get(x_172, 1);
lean_inc(x_174);
lean_dec(x_172);
x_175 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1;
x_176 = l_Aesop_treeImpl___elambda__1(x_173);
lean_dec(x_173);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
lean_dec(x_176);
if (lean_obj_tag(x_177) == 0)
{
lean_object* x_178; lean_object* x_179; 
lean_free_object(x_5);
x_178 = lean_box(0);
x_179 = lean_apply_8(x_175, x_178, x_6, x_7, x_8, x_9, x_10, x_11, x_174);
return x_179;
}
else
{
lean_object* x_180; lean_object* x_181; 
x_180 = lean_ctor_get(x_177, 0);
lean_inc(x_180);
lean_dec(x_177);
lean_ctor_set_tag(x_5, 1);
lean_ctor_set(x_5, 0, x_180);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_181 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_174);
if (lean_obj_tag(x_181) == 0)
{
lean_object* x_182; lean_object* x_183; lean_object* x_184; 
x_182 = lean_ctor_get(x_181, 0);
lean_inc(x_182);
x_183 = lean_ctor_get(x_181, 1);
lean_inc(x_183);
lean_dec(x_181);
x_184 = lean_apply_8(x_175, x_182, x_6, x_7, x_8, x_9, x_10, x_11, x_183);
return x_184;
}
else
{
uint8_t x_185; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_185 = !lean_is_exclusive(x_181);
if (x_185 == 0)
{
return x_181;
}
else
{
lean_object* x_186; lean_object* x_187; lean_object* x_188; 
x_186 = lean_ctor_get(x_181, 0);
x_187 = lean_ctor_get(x_181, 1);
lean_inc(x_187);
lean_inc(x_186);
lean_dec(x_181);
x_188 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_188, 0, x_186);
lean_ctor_set(x_188, 1, x_187);
return x_188;
}
}
}
}
else
{
lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; 
x_189 = lean_ctor_get(x_5, 0);
lean_inc(x_189);
lean_dec(x_5);
x_190 = lean_st_ref_get(x_189, x_12);
lean_dec(x_189);
x_191 = lean_ctor_get(x_190, 0);
lean_inc(x_191);
x_192 = lean_ctor_get(x_190, 1);
lean_inc(x_192);
lean_dec(x_190);
x_193 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1;
x_194 = l_Aesop_treeImpl___elambda__1(x_191);
lean_dec(x_191);
x_195 = lean_ctor_get(x_194, 0);
lean_inc(x_195);
lean_dec(x_194);
if (lean_obj_tag(x_195) == 0)
{
lean_object* x_196; lean_object* x_197; 
x_196 = lean_box(0);
x_197 = lean_apply_8(x_193, x_196, x_6, x_7, x_8, x_9, x_10, x_11, x_192);
return x_197;
}
else
{
lean_object* x_198; lean_object* x_199; lean_object* x_200; 
x_198 = lean_ctor_get(x_195, 0);
lean_inc(x_198);
lean_dec(x_195);
x_199 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_199, 0, x_198);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_200 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(x_1, x_2, x_3, x_4, x_199, x_6, x_7, x_8, x_9, x_10, x_11, x_192);
if (lean_obj_tag(x_200) == 0)
{
lean_object* x_201; lean_object* x_202; lean_object* x_203; 
x_201 = lean_ctor_get(x_200, 0);
lean_inc(x_201);
x_202 = lean_ctor_get(x_200, 1);
lean_inc(x_202);
lean_dec(x_200);
x_203 = lean_apply_8(x_193, x_201, x_6, x_7, x_8, x_9, x_10, x_11, x_202);
return x_203;
}
else
{
lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_204 = lean_ctor_get(x_200, 0);
lean_inc(x_204);
x_205 = lean_ctor_get(x_200, 1);
lean_inc(x_205);
if (lean_is_exclusive(x_200)) {
 lean_ctor_release(x_200, 0);
 lean_ctor_release(x_200, 1);
 x_206 = x_200;
} else {
 lean_dec_ref(x_200);
 x_206 = lean_box(0);
}
if (lean_is_scalar(x_206)) {
 x_207 = lean_alloc_ctor(1, 2, 0);
} else {
 x_207 = x_206;
}
lean_ctor_set(x_207, 0, x_204);
lean_ctor_set(x_207, 1, x_205);
return x_207;
}
}
}
}
}
}
}
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__11(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_6 = lean_array_uget(x_2, x_3);
lean_inc(x_1);
x_7 = lean_apply_1(x_1, x_6);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
size_t x_9; size_t x_10; 
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
x_3 = x_10;
goto _start;
}
else
{
uint8_t x_12; 
lean_dec(x_1);
x_12 = 1;
return x_12;
}
}
else
{
uint8_t x_13; 
lean_dec(x_1);
x_13 = 0;
return x_13;
}
}
}
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__12(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_6 = lean_array_uget(x_2, x_3);
lean_inc(x_1);
x_7 = lean_apply_1(x_1, x_6);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
size_t x_9; size_t x_10; 
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
x_3 = x_10;
goto _start;
}
else
{
uint8_t x_12; 
lean_dec(x_1);
x_12 = 1;
return x_12;
}
}
else
{
uint8_t x_13; 
lean_dec(x_1);
x_13 = 0;
return x_13;
}
}
}
LEAN_EXPORT uint8_t l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_nat_dec_lt(x_3, x_4);
if (x_5 == 0)
{
uint8_t x_6; 
lean_dec(x_1);
x_6 = 0;
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_array_get_size(x_2);
x_8 = lean_nat_dec_le(x_4, x_7);
if (x_8 == 0)
{
uint8_t x_9; 
x_9 = lean_nat_dec_lt(x_3, x_7);
if (x_9 == 0)
{
uint8_t x_10; 
lean_dec(x_7);
lean_dec(x_1);
x_10 = 0;
return x_10;
}
else
{
size_t x_11; size_t x_12; uint8_t x_13; 
x_11 = lean_usize_of_nat(x_3);
x_12 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_13 = l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__11(x_1, x_2, x_11, x_12);
return x_13;
}
}
else
{
size_t x_14; size_t x_15; uint8_t x_16; 
lean_dec(x_7);
x_14 = lean_usize_of_nat(x_3);
x_15 = lean_usize_of_nat(x_4);
x_16 = l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__12(x_1, x_2, x_14, x_15);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(size_t x_1, size_t x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_usize_dec_lt(x_2, x_1);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; lean_object* x_10; 
x_5 = lean_array_uget(x_3, x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_array_uset(x_3, x_2, x_6);
x_8 = 1;
x_9 = lean_usize_add(x_2, x_8);
x_10 = lean_array_uset(x_7, x_2, x_5);
x_2 = x_9;
x_3 = x_10;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_9 = lean_ctor_get(x_6, 5);
x_10 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_4, x_5, x_6, x_7, x_8);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_10, 0);
lean_inc(x_9);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_12);
lean_ctor_set_tag(x_10, 1);
lean_ctor_set(x_10, 0, x_13);
return x_10;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_10, 0);
x_15 = lean_ctor_get(x_10, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_10);
lean_inc(x_9);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_9);
lean_ctor_set(x_16, 1, x_14);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
x_8 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_1, x_7);
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
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = lean_st_ref_get(x_1, x_10);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = lean_ctor_get(x_11, 1);
x_14 = lean_st_ref_get(x_2, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; 
x_16 = lean_ctor_get(x_14, 0);
lean_ctor_set(x_11, 1, x_16);
lean_ctor_set(x_14, 0, x_11);
return x_14;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_14, 0);
x_18 = lean_ctor_get(x_14, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_14);
lean_ctor_set(x_11, 1, x_17);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_11);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_20 = lean_ctor_get(x_11, 0);
x_21 = lean_ctor_get(x_11, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_11);
x_22 = lean_st_ref_get(x_2, x_21);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 lean_ctor_release(x_22, 1);
 x_25 = x_22;
} else {
 lean_dec_ref(x_22);
 x_25 = lean_box(0);
}
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_20);
lean_ctor_set(x_26, 1, x_23);
if (lean_is_scalar(x_25)) {
 x_27 = lean_alloc_ctor(0, 2, 0);
} else {
 x_27 = x_25;
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
return x_27;
}
}
}
LEAN_EXPORT uint8_t l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_1, x_2);
if (x_3 == 0)
{
uint8_t x_4; 
x_4 = 1;
return x_4;
}
else
{
uint8_t x_5; 
x_5 = 0;
return x_5;
}
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_instDecidableEqGoalId___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__1;
x_2 = lean_alloc_closure((void*)(l_instBEqOfDecidableEq___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: internal error: introducing rapps not found for these mvars: ", 68, 68);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static size_t _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7() {
_start:
{
lean_object* x_1; size_t x_2; 
x_1 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_2 = lean_array_size(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_11 = lean_st_mk_ref(x_1, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_15 = lean_st_mk_ref(x_14, x_13);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
x_19 = lean_st_mk_ref(x_18, x_17);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_22, 0, x_2);
x_23 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_24 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(x_12, x_16, x_23, x_20, x_22, x_4, x_5, x_6, x_7, x_8, x_9, x_21);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec(x_24);
x_26 = lean_st_ref_get(x_12, x_25);
lean_dec(x_12);
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = lean_ctor_get(x_26, 1);
x_30 = l_Array_isEmpty___rarg(x_28);
if (x_30 == 0)
{
lean_object* x_31; 
x_31 = l_Aesop_getRootGoal(x_4, x_5, x_6, x_7, x_8, x_9, x_29);
if (lean_obj_tag(x_31) == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; uint8_t x_35; 
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_31, 1);
lean_inc(x_33);
lean_dec(x_31);
x_34 = lean_st_ref_get(x_32, x_33);
lean_dec(x_32);
x_35 = !lean_is_exclusive(x_34);
if (x_35 == 0)
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; 
x_36 = lean_ctor_get(x_34, 0);
x_37 = lean_ctor_get(x_34, 1);
x_38 = l_Aesop_treeImpl___elambda__5(x_36);
lean_dec(x_36);
x_39 = lean_ctor_get(x_38, 7);
lean_inc(x_39);
lean_dec(x_38);
lean_inc(x_39);
x_40 = lean_alloc_closure((void*)(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2___boxed), 2, 1);
lean_closure_set(x_40, 0, x_39);
x_41 = lean_array_get_size(x_28);
x_42 = lean_unsigned_to_nat(0u);
x_43 = l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(x_40, x_28, x_42, x_41);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; 
lean_dec(x_41);
lean_dec(x_39);
lean_free_object(x_34);
lean_free_object(x_26);
lean_dec(x_28);
x_44 = lean_box(0);
x_45 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(x_16, x_20, x_44, x_4, x_5, x_6, x_7, x_8, x_9, x_37);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_20);
lean_dec(x_16);
return x_45;
}
else
{
uint8_t x_46; size_t x_47; lean_object* x_48; 
lean_dec(x_20);
lean_dec(x_16);
x_46 = lean_nat_dec_lt(x_42, x_41);
x_47 = 0;
x_48 = lean_box(0);
if (x_46 == 0)
{
size_t x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; uint8_t x_57; 
lean_dec(x_41);
lean_dec(x_39);
lean_dec(x_28);
x_49 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
x_50 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_49, x_47, x_14);
x_51 = lean_array_to_list(lean_box(0), x_50);
x_52 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_51, x_48);
x_53 = l_Lean_MessageData_ofList(x_52);
x_54 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
lean_ctor_set_tag(x_34, 7);
lean_ctor_set(x_34, 1, x_53);
lean_ctor_set(x_34, 0, x_54);
x_55 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
lean_ctor_set_tag(x_26, 7);
lean_ctor_set(x_26, 1, x_55);
lean_ctor_set(x_26, 0, x_34);
x_56 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_37);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_57 = !lean_is_exclusive(x_56);
if (x_57 == 0)
{
return x_56;
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_58 = lean_ctor_get(x_56, 0);
x_59 = lean_ctor_get(x_56, 1);
lean_inc(x_59);
lean_inc(x_58);
lean_dec(x_56);
x_60 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
return x_60;
}
}
else
{
uint8_t x_61; 
x_61 = lean_nat_dec_le(x_41, x_41);
if (x_61 == 0)
{
size_t x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; uint8_t x_70; 
lean_dec(x_41);
lean_dec(x_39);
lean_dec(x_28);
x_62 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
x_63 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_62, x_47, x_14);
x_64 = lean_array_to_list(lean_box(0), x_63);
x_65 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_64, x_48);
x_66 = l_Lean_MessageData_ofList(x_65);
x_67 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
lean_ctor_set_tag(x_34, 7);
lean_ctor_set(x_34, 1, x_66);
lean_ctor_set(x_34, 0, x_67);
x_68 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
lean_ctor_set_tag(x_26, 7);
lean_ctor_set(x_26, 1, x_68);
lean_ctor_set(x_26, 0, x_34);
x_69 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_37);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_70 = !lean_is_exclusive(x_69);
if (x_70 == 0)
{
return x_69;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_69, 0);
x_72 = lean_ctor_get(x_69, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_69);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
else
{
size_t x_74; lean_object* x_75; size_t x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; uint8_t x_84; 
x_74 = lean_usize_of_nat(x_41);
lean_dec(x_41);
x_75 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15(x_39, x_28, x_47, x_74, x_14);
lean_dec(x_28);
lean_dec(x_39);
x_76 = lean_array_size(x_75);
x_77 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_76, x_47, x_75);
x_78 = lean_array_to_list(lean_box(0), x_77);
x_79 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_78, x_48);
x_80 = l_Lean_MessageData_ofList(x_79);
x_81 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
lean_ctor_set_tag(x_34, 7);
lean_ctor_set(x_34, 1, x_80);
lean_ctor_set(x_34, 0, x_81);
x_82 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
lean_ctor_set_tag(x_26, 7);
lean_ctor_set(x_26, 1, x_82);
lean_ctor_set(x_26, 0, x_34);
x_83 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_37);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_84 = !lean_is_exclusive(x_83);
if (x_84 == 0)
{
return x_83;
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_85 = lean_ctor_get(x_83, 0);
x_86 = lean_ctor_get(x_83, 1);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_83);
x_87 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_87, 0, x_85);
lean_ctor_set(x_87, 1, x_86);
return x_87;
}
}
}
}
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; uint8_t x_95; 
x_88 = lean_ctor_get(x_34, 0);
x_89 = lean_ctor_get(x_34, 1);
lean_inc(x_89);
lean_inc(x_88);
lean_dec(x_34);
x_90 = l_Aesop_treeImpl___elambda__5(x_88);
lean_dec(x_88);
x_91 = lean_ctor_get(x_90, 7);
lean_inc(x_91);
lean_dec(x_90);
lean_inc(x_91);
x_92 = lean_alloc_closure((void*)(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2___boxed), 2, 1);
lean_closure_set(x_92, 0, x_91);
x_93 = lean_array_get_size(x_28);
x_94 = lean_unsigned_to_nat(0u);
x_95 = l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(x_92, x_28, x_94, x_93);
if (x_95 == 0)
{
lean_object* x_96; lean_object* x_97; 
lean_dec(x_93);
lean_dec(x_91);
lean_free_object(x_26);
lean_dec(x_28);
x_96 = lean_box(0);
x_97 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(x_16, x_20, x_96, x_4, x_5, x_6, x_7, x_8, x_9, x_89);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_20);
lean_dec(x_16);
return x_97;
}
else
{
uint8_t x_98; size_t x_99; lean_object* x_100; 
lean_dec(x_20);
lean_dec(x_16);
x_98 = lean_nat_dec_lt(x_94, x_93);
x_99 = 0;
x_100 = lean_box(0);
if (x_98 == 0)
{
size_t x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; 
lean_dec(x_93);
lean_dec(x_91);
lean_dec(x_28);
x_101 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
x_102 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_101, x_99, x_14);
x_103 = lean_array_to_list(lean_box(0), x_102);
x_104 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_103, x_100);
x_105 = l_Lean_MessageData_ofList(x_104);
x_106 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
x_107 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_107, 0, x_106);
lean_ctor_set(x_107, 1, x_105);
x_108 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
lean_ctor_set_tag(x_26, 7);
lean_ctor_set(x_26, 1, x_108);
lean_ctor_set(x_26, 0, x_107);
x_109 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_89);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_110 = lean_ctor_get(x_109, 0);
lean_inc(x_110);
x_111 = lean_ctor_get(x_109, 1);
lean_inc(x_111);
if (lean_is_exclusive(x_109)) {
 lean_ctor_release(x_109, 0);
 lean_ctor_release(x_109, 1);
 x_112 = x_109;
} else {
 lean_dec_ref(x_109);
 x_112 = lean_box(0);
}
if (lean_is_scalar(x_112)) {
 x_113 = lean_alloc_ctor(1, 2, 0);
} else {
 x_113 = x_112;
}
lean_ctor_set(x_113, 0, x_110);
lean_ctor_set(x_113, 1, x_111);
return x_113;
}
else
{
uint8_t x_114; 
x_114 = lean_nat_dec_le(x_93, x_93);
if (x_114 == 0)
{
size_t x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; 
lean_dec(x_93);
lean_dec(x_91);
lean_dec(x_28);
x_115 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
x_116 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_115, x_99, x_14);
x_117 = lean_array_to_list(lean_box(0), x_116);
x_118 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_117, x_100);
x_119 = l_Lean_MessageData_ofList(x_118);
x_120 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
x_121 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_121, 0, x_120);
lean_ctor_set(x_121, 1, x_119);
x_122 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
lean_ctor_set_tag(x_26, 7);
lean_ctor_set(x_26, 1, x_122);
lean_ctor_set(x_26, 0, x_121);
x_123 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_89);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
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
 x_127 = lean_alloc_ctor(1, 2, 0);
} else {
 x_127 = x_126;
}
lean_ctor_set(x_127, 0, x_124);
lean_ctor_set(x_127, 1, x_125);
return x_127;
}
else
{
size_t x_128; lean_object* x_129; size_t x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; 
x_128 = lean_usize_of_nat(x_93);
lean_dec(x_93);
x_129 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15(x_91, x_28, x_99, x_128, x_14);
lean_dec(x_28);
lean_dec(x_91);
x_130 = lean_array_size(x_129);
x_131 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_130, x_99, x_129);
x_132 = lean_array_to_list(lean_box(0), x_131);
x_133 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_132, x_100);
x_134 = l_Lean_MessageData_ofList(x_133);
x_135 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
x_136 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_136, 0, x_135);
lean_ctor_set(x_136, 1, x_134);
x_137 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
lean_ctor_set_tag(x_26, 7);
lean_ctor_set(x_26, 1, x_137);
lean_ctor_set(x_26, 0, x_136);
x_138 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_89);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_139 = lean_ctor_get(x_138, 0);
lean_inc(x_139);
x_140 = lean_ctor_get(x_138, 1);
lean_inc(x_140);
if (lean_is_exclusive(x_138)) {
 lean_ctor_release(x_138, 0);
 lean_ctor_release(x_138, 1);
 x_141 = x_138;
} else {
 lean_dec_ref(x_138);
 x_141 = lean_box(0);
}
if (lean_is_scalar(x_141)) {
 x_142 = lean_alloc_ctor(1, 2, 0);
} else {
 x_142 = x_141;
}
lean_ctor_set(x_142, 0, x_139);
lean_ctor_set(x_142, 1, x_140);
return x_142;
}
}
}
}
}
else
{
uint8_t x_143; 
lean_free_object(x_26);
lean_dec(x_28);
lean_dec(x_20);
lean_dec(x_16);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_143 = !lean_is_exclusive(x_31);
if (x_143 == 0)
{
return x_31;
}
else
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; 
x_144 = lean_ctor_get(x_31, 0);
x_145 = lean_ctor_get(x_31, 1);
lean_inc(x_145);
lean_inc(x_144);
lean_dec(x_31);
x_146 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_146, 0, x_144);
lean_ctor_set(x_146, 1, x_145);
return x_146;
}
}
}
else
{
lean_object* x_147; lean_object* x_148; 
lean_free_object(x_26);
lean_dec(x_28);
x_147 = lean_box(0);
x_148 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(x_16, x_20, x_147, x_4, x_5, x_6, x_7, x_8, x_9, x_29);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_20);
lean_dec(x_16);
return x_148;
}
}
else
{
lean_object* x_149; lean_object* x_150; uint8_t x_151; 
x_149 = lean_ctor_get(x_26, 0);
x_150 = lean_ctor_get(x_26, 1);
lean_inc(x_150);
lean_inc(x_149);
lean_dec(x_26);
x_151 = l_Array_isEmpty___rarg(x_149);
if (x_151 == 0)
{
lean_object* x_152; 
x_152 = l_Aesop_getRootGoal(x_4, x_5, x_6, x_7, x_8, x_9, x_150);
if (lean_obj_tag(x_152) == 0)
{
lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; uint8_t x_164; 
x_153 = lean_ctor_get(x_152, 0);
lean_inc(x_153);
x_154 = lean_ctor_get(x_152, 1);
lean_inc(x_154);
lean_dec(x_152);
x_155 = lean_st_ref_get(x_153, x_154);
lean_dec(x_153);
x_156 = lean_ctor_get(x_155, 0);
lean_inc(x_156);
x_157 = lean_ctor_get(x_155, 1);
lean_inc(x_157);
if (lean_is_exclusive(x_155)) {
 lean_ctor_release(x_155, 0);
 lean_ctor_release(x_155, 1);
 x_158 = x_155;
} else {
 lean_dec_ref(x_155);
 x_158 = lean_box(0);
}
x_159 = l_Aesop_treeImpl___elambda__5(x_156);
lean_dec(x_156);
x_160 = lean_ctor_get(x_159, 7);
lean_inc(x_160);
lean_dec(x_159);
lean_inc(x_160);
x_161 = lean_alloc_closure((void*)(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2___boxed), 2, 1);
lean_closure_set(x_161, 0, x_160);
x_162 = lean_array_get_size(x_149);
x_163 = lean_unsigned_to_nat(0u);
x_164 = l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(x_161, x_149, x_163, x_162);
if (x_164 == 0)
{
lean_object* x_165; lean_object* x_166; 
lean_dec(x_162);
lean_dec(x_160);
lean_dec(x_158);
lean_dec(x_149);
x_165 = lean_box(0);
x_166 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(x_16, x_20, x_165, x_4, x_5, x_6, x_7, x_8, x_9, x_157);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_20);
lean_dec(x_16);
return x_166;
}
else
{
uint8_t x_167; size_t x_168; lean_object* x_169; 
lean_dec(x_20);
lean_dec(x_16);
x_167 = lean_nat_dec_lt(x_163, x_162);
x_168 = 0;
x_169 = lean_box(0);
if (x_167 == 0)
{
size_t x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; 
lean_dec(x_162);
lean_dec(x_160);
lean_dec(x_149);
x_170 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
x_171 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_170, x_168, x_14);
x_172 = lean_array_to_list(lean_box(0), x_171);
x_173 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_172, x_169);
x_174 = l_Lean_MessageData_ofList(x_173);
x_175 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
if (lean_is_scalar(x_158)) {
 x_176 = lean_alloc_ctor(7, 2, 0);
} else {
 x_176 = x_158;
 lean_ctor_set_tag(x_176, 7);
}
lean_ctor_set(x_176, 0, x_175);
lean_ctor_set(x_176, 1, x_174);
x_177 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
x_178 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_178, 0, x_176);
lean_ctor_set(x_178, 1, x_177);
x_179 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_178, x_4, x_5, x_6, x_7, x_8, x_9, x_157);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_180 = lean_ctor_get(x_179, 0);
lean_inc(x_180);
x_181 = lean_ctor_get(x_179, 1);
lean_inc(x_181);
if (lean_is_exclusive(x_179)) {
 lean_ctor_release(x_179, 0);
 lean_ctor_release(x_179, 1);
 x_182 = x_179;
} else {
 lean_dec_ref(x_179);
 x_182 = lean_box(0);
}
if (lean_is_scalar(x_182)) {
 x_183 = lean_alloc_ctor(1, 2, 0);
} else {
 x_183 = x_182;
}
lean_ctor_set(x_183, 0, x_180);
lean_ctor_set(x_183, 1, x_181);
return x_183;
}
else
{
uint8_t x_184; 
x_184 = lean_nat_dec_le(x_162, x_162);
if (x_184 == 0)
{
size_t x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; 
lean_dec(x_162);
lean_dec(x_160);
lean_dec(x_149);
x_185 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7;
x_186 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_185, x_168, x_14);
x_187 = lean_array_to_list(lean_box(0), x_186);
x_188 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_187, x_169);
x_189 = l_Lean_MessageData_ofList(x_188);
x_190 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
if (lean_is_scalar(x_158)) {
 x_191 = lean_alloc_ctor(7, 2, 0);
} else {
 x_191 = x_158;
 lean_ctor_set_tag(x_191, 7);
}
lean_ctor_set(x_191, 0, x_190);
lean_ctor_set(x_191, 1, x_189);
x_192 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
x_193 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_193, 0, x_191);
lean_ctor_set(x_193, 1, x_192);
x_194 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_193, x_4, x_5, x_6, x_7, x_8, x_9, x_157);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_195 = lean_ctor_get(x_194, 0);
lean_inc(x_195);
x_196 = lean_ctor_get(x_194, 1);
lean_inc(x_196);
if (lean_is_exclusive(x_194)) {
 lean_ctor_release(x_194, 0);
 lean_ctor_release(x_194, 1);
 x_197 = x_194;
} else {
 lean_dec_ref(x_194);
 x_197 = lean_box(0);
}
if (lean_is_scalar(x_197)) {
 x_198 = lean_alloc_ctor(1, 2, 0);
} else {
 x_198 = x_197;
}
lean_ctor_set(x_198, 0, x_195);
lean_ctor_set(x_198, 1, x_196);
return x_198;
}
else
{
size_t x_199; lean_object* x_200; size_t x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; 
x_199 = lean_usize_of_nat(x_162);
lean_dec(x_162);
x_200 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15(x_160, x_149, x_168, x_199, x_14);
lean_dec(x_149);
lean_dec(x_160);
x_201 = lean_array_size(x_200);
x_202 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_201, x_168, x_200);
x_203 = lean_array_to_list(lean_box(0), x_202);
x_204 = l_List_mapTR_loop___at_Lean_compileDecl___spec__1(x_203, x_169);
x_205 = l_Lean_MessageData_ofList(x_204);
x_206 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4;
if (lean_is_scalar(x_158)) {
 x_207 = lean_alloc_ctor(7, 2, 0);
} else {
 x_207 = x_158;
 lean_ctor_set_tag(x_207, 7);
}
lean_ctor_set(x_207, 0, x_206);
lean_ctor_set(x_207, 1, x_205);
x_208 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6;
x_209 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_209, 0, x_207);
lean_ctor_set(x_209, 1, x_208);
x_210 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_209, x_4, x_5, x_6, x_7, x_8, x_9, x_157);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_211 = lean_ctor_get(x_210, 0);
lean_inc(x_211);
x_212 = lean_ctor_get(x_210, 1);
lean_inc(x_212);
if (lean_is_exclusive(x_210)) {
 lean_ctor_release(x_210, 0);
 lean_ctor_release(x_210, 1);
 x_213 = x_210;
} else {
 lean_dec_ref(x_210);
 x_213 = lean_box(0);
}
if (lean_is_scalar(x_213)) {
 x_214 = lean_alloc_ctor(1, 2, 0);
} else {
 x_214 = x_213;
}
lean_ctor_set(x_214, 0, x_211);
lean_ctor_set(x_214, 1, x_212);
return x_214;
}
}
}
}
else
{
lean_object* x_215; lean_object* x_216; lean_object* x_217; lean_object* x_218; 
lean_dec(x_149);
lean_dec(x_20);
lean_dec(x_16);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_215 = lean_ctor_get(x_152, 0);
lean_inc(x_215);
x_216 = lean_ctor_get(x_152, 1);
lean_inc(x_216);
if (lean_is_exclusive(x_152)) {
 lean_ctor_release(x_152, 0);
 lean_ctor_release(x_152, 1);
 x_217 = x_152;
} else {
 lean_dec_ref(x_152);
 x_217 = lean_box(0);
}
if (lean_is_scalar(x_217)) {
 x_218 = lean_alloc_ctor(1, 2, 0);
} else {
 x_218 = x_217;
}
lean_ctor_set(x_218, 0, x_215);
lean_ctor_set(x_218, 1, x_216);
return x_218;
}
}
else
{
lean_object* x_219; lean_object* x_220; 
lean_dec(x_149);
x_219 = lean_box(0);
x_220 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(x_16, x_20, x_219, x_4, x_5, x_6, x_7, x_8, x_9, x_150);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_20);
lean_dec(x_16);
return x_220;
}
}
}
else
{
uint8_t x_221; 
lean_dec(x_20);
lean_dec(x_16);
lean_dec(x_12);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_221 = !lean_is_exclusive(x_24);
if (x_221 == 0)
{
return x_24;
}
else
{
lean_object* x_222; lean_object* x_223; lean_object* x_224; 
x_222 = lean_ctor_get(x_24, 0);
x_223 = lean_ctor_get(x_24, 1);
lean_inc(x_223);
lean_inc(x_222);
lean_dec(x_24);
x_224 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_224, 0, x_222);
lean_ctor_set(x_224, 1, x_223);
return x_224;
}
}
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = l_Array_isEmpty___rarg(x_1);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_box(0);
x_12 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3(x_1, x_2, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___closed__1;
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Array_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__7(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__6___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_UnorderedArraySet_erase___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__6(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__8(x_1, x_2, x_13, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
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
LEAN_EXPORT lean_object* l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__11___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; uint8_t x_7; lean_object* x_8; 
x_5 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_6 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_7 = l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__11(x_1, x_2, x_5, x_6);
lean_dec(x_2);
x_8 = lean_box(x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__12___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; uint8_t x_7; lean_object* x_8; 
x_5 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_6 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_7 = l_Array_anyMUnsafe_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__12(x_1, x_2, x_5, x_6);
lean_dec(x_2);
x_8 = lean_box(x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__13(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_throwError___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__14(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__15(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_11;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__2(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; 
x_15 = lean_usize_dec_lt(x_6, x_5);
if (x_15 == 0)
{
lean_object* x_16; 
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_7);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_25; 
x_17 = lean_array_uget(x_4, x_6);
x_25 = !lean_is_exclusive(x_7);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; uint64_t x_34; uint64_t x_35; uint64_t x_36; uint64_t x_37; uint64_t x_38; uint64_t x_39; uint64_t x_40; size_t x_41; size_t x_42; size_t x_43; size_t x_44; size_t x_45; lean_object* x_46; uint8_t x_47; 
x_26 = lean_ctor_get(x_7, 0);
x_27 = lean_ctor_get(x_7, 1);
x_28 = lean_st_ref_get(x_17, x_14);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = l_Aesop_Goal_originalGoalId(x_29);
x_32 = lean_ctor_get(x_2, 1);
x_33 = lean_array_get_size(x_32);
x_34 = lean_uint64_of_nat(x_31);
x_35 = 32;
x_36 = lean_uint64_shift_right(x_34, x_35);
x_37 = lean_uint64_xor(x_34, x_36);
x_38 = 16;
x_39 = lean_uint64_shift_right(x_37, x_38);
x_40 = lean_uint64_xor(x_37, x_39);
x_41 = lean_uint64_to_usize(x_40);
x_42 = lean_usize_of_nat(x_33);
lean_dec(x_33);
x_43 = 1;
x_44 = lean_usize_sub(x_42, x_43);
x_45 = lean_usize_land(x_41, x_44);
x_46 = lean_array_uget(x_32, x_45);
x_47 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_31, x_46);
lean_dec(x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; size_t x_51; size_t x_52; size_t x_53; lean_object* x_54; uint8_t x_55; 
x_48 = lean_ctor_get(x_27, 0);
lean_inc(x_48);
x_49 = lean_ctor_get(x_27, 1);
lean_inc(x_49);
x_50 = lean_array_get_size(x_49);
x_51 = lean_usize_of_nat(x_50);
lean_dec(x_50);
x_52 = lean_usize_sub(x_51, x_43);
x_53 = lean_usize_land(x_41, x_52);
x_54 = lean_array_uget(x_49, x_53);
x_55 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_31, x_54);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; uint8_t x_61; 
lean_inc(x_1);
x_56 = lean_alloc_closure((void*)(l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1___boxed), 2, 1);
lean_closure_set(x_56, 0, x_1);
x_57 = l_Aesop_treeImpl___elambda__5(x_29);
lean_dec(x_29);
x_58 = lean_ctor_get(x_57, 7);
lean_inc(x_58);
lean_dec(x_57);
x_59 = lean_array_get_size(x_58);
x_60 = lean_unsigned_to_nat(0u);
x_61 = l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(x_56, x_58, x_60, x_59);
lean_dec(x_59);
lean_dec(x_58);
if (x_61 == 0)
{
lean_object* x_62; 
lean_dec(x_54);
lean_dec(x_49);
lean_dec(x_48);
lean_dec(x_31);
lean_dec(x_17);
x_62 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_62, 0, x_7);
x_18 = x_62;
x_19 = x_30;
goto block_24;
}
else
{
uint8_t x_63; 
x_63 = !lean_is_exclusive(x_27);
if (x_63 == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; uint8_t x_77; 
x_64 = lean_ctor_get(x_27, 1);
lean_dec(x_64);
x_65 = lean_ctor_get(x_27, 0);
lean_dec(x_65);
x_66 = lean_array_push(x_26, x_17);
x_67 = lean_unsigned_to_nat(1u);
x_68 = lean_nat_add(x_48, x_67);
lean_dec(x_48);
x_69 = lean_box(0);
x_70 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_70, 0, x_31);
lean_ctor_set(x_70, 1, x_69);
lean_ctor_set(x_70, 2, x_54);
x_71 = lean_array_uset(x_49, x_53, x_70);
x_72 = lean_unsigned_to_nat(4u);
x_73 = lean_nat_mul(x_68, x_72);
x_74 = lean_unsigned_to_nat(3u);
x_75 = lean_nat_div(x_73, x_74);
lean_dec(x_73);
x_76 = lean_array_get_size(x_71);
x_77 = lean_nat_dec_le(x_75, x_76);
lean_dec(x_76);
lean_dec(x_75);
if (x_77 == 0)
{
lean_object* x_78; lean_object* x_79; 
x_78 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(x_71);
lean_ctor_set(x_27, 1, x_78);
lean_ctor_set(x_27, 0, x_68);
lean_ctor_set(x_7, 0, x_66);
x_79 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_79, 0, x_7);
x_18 = x_79;
x_19 = x_30;
goto block_24;
}
else
{
lean_object* x_80; 
lean_ctor_set(x_27, 1, x_71);
lean_ctor_set(x_27, 0, x_68);
lean_ctor_set(x_7, 0, x_66);
x_80 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_80, 0, x_7);
x_18 = x_80;
x_19 = x_30;
goto block_24;
}
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; uint8_t x_92; 
lean_dec(x_27);
x_81 = lean_array_push(x_26, x_17);
x_82 = lean_unsigned_to_nat(1u);
x_83 = lean_nat_add(x_48, x_82);
lean_dec(x_48);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_85, 0, x_31);
lean_ctor_set(x_85, 1, x_84);
lean_ctor_set(x_85, 2, x_54);
x_86 = lean_array_uset(x_49, x_53, x_85);
x_87 = lean_unsigned_to_nat(4u);
x_88 = lean_nat_mul(x_83, x_87);
x_89 = lean_unsigned_to_nat(3u);
x_90 = lean_nat_div(x_88, x_89);
lean_dec(x_88);
x_91 = lean_array_get_size(x_86);
x_92 = lean_nat_dec_le(x_90, x_91);
lean_dec(x_91);
lean_dec(x_90);
if (x_92 == 0)
{
lean_object* x_93; lean_object* x_94; lean_object* x_95; 
x_93 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(x_86);
x_94 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_94, 0, x_83);
lean_ctor_set(x_94, 1, x_93);
lean_ctor_set(x_7, 1, x_94);
lean_ctor_set(x_7, 0, x_81);
x_95 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_95, 0, x_7);
x_18 = x_95;
x_19 = x_30;
goto block_24;
}
else
{
lean_object* x_96; lean_object* x_97; 
x_96 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_96, 0, x_83);
lean_ctor_set(x_96, 1, x_86);
lean_ctor_set(x_7, 1, x_96);
lean_ctor_set(x_7, 0, x_81);
x_97 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_97, 0, x_7);
x_18 = x_97;
x_19 = x_30;
goto block_24;
}
}
}
}
else
{
lean_object* x_98; 
lean_dec(x_54);
lean_dec(x_49);
lean_dec(x_48);
lean_dec(x_31);
lean_dec(x_29);
lean_dec(x_17);
x_98 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_98, 0, x_7);
x_18 = x_98;
x_19 = x_30;
goto block_24;
}
}
else
{
lean_object* x_99; 
lean_dec(x_31);
lean_dec(x_29);
lean_dec(x_17);
x_99 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_99, 0, x_7);
x_18 = x_99;
x_19 = x_30;
goto block_24;
}
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; uint64_t x_108; uint64_t x_109; uint64_t x_110; uint64_t x_111; uint64_t x_112; uint64_t x_113; uint64_t x_114; size_t x_115; size_t x_116; size_t x_117; size_t x_118; size_t x_119; lean_object* x_120; uint8_t x_121; 
x_100 = lean_ctor_get(x_7, 0);
x_101 = lean_ctor_get(x_7, 1);
lean_inc(x_101);
lean_inc(x_100);
lean_dec(x_7);
x_102 = lean_st_ref_get(x_17, x_14);
x_103 = lean_ctor_get(x_102, 0);
lean_inc(x_103);
x_104 = lean_ctor_get(x_102, 1);
lean_inc(x_104);
lean_dec(x_102);
x_105 = l_Aesop_Goal_originalGoalId(x_103);
x_106 = lean_ctor_get(x_2, 1);
x_107 = lean_array_get_size(x_106);
x_108 = lean_uint64_of_nat(x_105);
x_109 = 32;
x_110 = lean_uint64_shift_right(x_108, x_109);
x_111 = lean_uint64_xor(x_108, x_110);
x_112 = 16;
x_113 = lean_uint64_shift_right(x_111, x_112);
x_114 = lean_uint64_xor(x_111, x_113);
x_115 = lean_uint64_to_usize(x_114);
x_116 = lean_usize_of_nat(x_107);
lean_dec(x_107);
x_117 = 1;
x_118 = lean_usize_sub(x_116, x_117);
x_119 = lean_usize_land(x_115, x_118);
x_120 = lean_array_uget(x_106, x_119);
x_121 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_105, x_120);
lean_dec(x_120);
if (x_121 == 0)
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; size_t x_125; size_t x_126; size_t x_127; lean_object* x_128; uint8_t x_129; 
x_122 = lean_ctor_get(x_101, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_101, 1);
lean_inc(x_123);
x_124 = lean_array_get_size(x_123);
x_125 = lean_usize_of_nat(x_124);
lean_dec(x_124);
x_126 = lean_usize_sub(x_125, x_117);
x_127 = lean_usize_land(x_115, x_126);
x_128 = lean_array_uget(x_123, x_127);
x_129 = l_Std_DHashMap_Internal_AssocList_contains___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__1(x_105, x_128);
if (x_129 == 0)
{
lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; uint8_t x_135; 
lean_inc(x_1);
x_130 = lean_alloc_closure((void*)(l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1___boxed), 2, 1);
lean_closure_set(x_130, 0, x_1);
x_131 = l_Aesop_treeImpl___elambda__5(x_103);
lean_dec(x_103);
x_132 = lean_ctor_get(x_131, 7);
lean_inc(x_132);
lean_dec(x_131);
x_133 = lean_array_get_size(x_132);
x_134 = lean_unsigned_to_nat(0u);
x_135 = l_Aesop_UnorderedArraySet_any___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__10(x_130, x_132, x_134, x_133);
lean_dec(x_133);
lean_dec(x_132);
if (x_135 == 0)
{
lean_object* x_136; lean_object* x_137; 
lean_dec(x_128);
lean_dec(x_123);
lean_dec(x_122);
lean_dec(x_105);
lean_dec(x_17);
x_136 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_136, 0, x_100);
lean_ctor_set(x_136, 1, x_101);
x_137 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_137, 0, x_136);
x_18 = x_137;
x_19 = x_104;
goto block_24;
}
else
{
lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; lean_object* x_149; uint8_t x_150; 
if (lean_is_exclusive(x_101)) {
 lean_ctor_release(x_101, 0);
 lean_ctor_release(x_101, 1);
 x_138 = x_101;
} else {
 lean_dec_ref(x_101);
 x_138 = lean_box(0);
}
x_139 = lean_array_push(x_100, x_17);
x_140 = lean_unsigned_to_nat(1u);
x_141 = lean_nat_add(x_122, x_140);
lean_dec(x_122);
x_142 = lean_box(0);
x_143 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_143, 0, x_105);
lean_ctor_set(x_143, 1, x_142);
lean_ctor_set(x_143, 2, x_128);
x_144 = lean_array_uset(x_123, x_127, x_143);
x_145 = lean_unsigned_to_nat(4u);
x_146 = lean_nat_mul(x_141, x_145);
x_147 = lean_unsigned_to_nat(3u);
x_148 = lean_nat_div(x_146, x_147);
lean_dec(x_146);
x_149 = lean_array_get_size(x_144);
x_150 = lean_nat_dec_le(x_148, x_149);
lean_dec(x_149);
lean_dec(x_148);
if (x_150 == 0)
{
lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; 
x_151 = l_Std_DHashMap_Internal_Raw_u2080_expand___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__2(x_144);
if (lean_is_scalar(x_138)) {
 x_152 = lean_alloc_ctor(0, 2, 0);
} else {
 x_152 = x_138;
}
lean_ctor_set(x_152, 0, x_141);
lean_ctor_set(x_152, 1, x_151);
x_153 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_153, 0, x_139);
lean_ctor_set(x_153, 1, x_152);
x_154 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_154, 0, x_153);
x_18 = x_154;
x_19 = x_104;
goto block_24;
}
else
{
lean_object* x_155; lean_object* x_156; lean_object* x_157; 
if (lean_is_scalar(x_138)) {
 x_155 = lean_alloc_ctor(0, 2, 0);
} else {
 x_155 = x_138;
}
lean_ctor_set(x_155, 0, x_141);
lean_ctor_set(x_155, 1, x_144);
x_156 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_156, 0, x_139);
lean_ctor_set(x_156, 1, x_155);
x_157 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_157, 0, x_156);
x_18 = x_157;
x_19 = x_104;
goto block_24;
}
}
}
else
{
lean_object* x_158; lean_object* x_159; 
lean_dec(x_128);
lean_dec(x_123);
lean_dec(x_122);
lean_dec(x_105);
lean_dec(x_103);
lean_dec(x_17);
x_158 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_158, 0, x_100);
lean_ctor_set(x_158, 1, x_101);
x_159 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_159, 0, x_158);
x_18 = x_159;
x_19 = x_104;
goto block_24;
}
}
else
{
lean_object* x_160; lean_object* x_161; 
lean_dec(x_105);
lean_dec(x_103);
lean_dec(x_17);
x_160 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_160, 0, x_100);
lean_ctor_set(x_160, 1, x_101);
x_161 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_161, 0, x_160);
x_18 = x_161;
x_19 = x_104;
goto block_24;
}
}
block_24:
{
lean_object* x_20; size_t x_21; size_t x_22; 
x_20 = lean_ctor_get(x_18, 0);
lean_inc(x_20);
lean_dec(x_18);
x_21 = 1;
x_22 = lean_usize_add(x_6, x_21);
x_6 = x_22;
x_7 = x_20;
x_14 = x_19;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; 
x_15 = lean_usize_dec_lt(x_6, x_5);
if (x_15 == 0)
{
lean_object* x_16; 
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_7);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
else
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_array_uget(x_4, x_6);
x_18 = !lean_is_exclusive(x_7);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; size_t x_24; size_t x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_19 = lean_st_ref_get(x_17, x_14);
lean_dec(x_17);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_treeImpl___elambda__1(x_20);
lean_dec(x_20);
x_23 = lean_ctor_get(x_22, 1);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_array_size(x_23);
x_25 = 0;
lean_inc(x_1);
x_26 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1(x_1, x_2, x_3, x_23, x_24, x_25, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_21);
lean_dec(x_23);
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_26, 1);
lean_inc(x_28);
lean_dec(x_26);
x_29 = !lean_is_exclusive(x_27);
if (x_29 == 0)
{
size_t x_30; size_t x_31; 
x_30 = 1;
x_31 = lean_usize_add(x_6, x_30);
x_6 = x_31;
x_7 = x_27;
x_14 = x_28;
goto _start;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; size_t x_36; size_t x_37; 
x_33 = lean_ctor_get(x_27, 0);
x_34 = lean_ctor_get(x_27, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_27);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
x_36 = 1;
x_37 = lean_usize_add(x_6, x_36);
x_6 = x_37;
x_7 = x_35;
x_14 = x_28;
goto _start;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; size_t x_47; size_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; size_t x_56; size_t x_57; 
x_39 = lean_ctor_get(x_7, 0);
x_40 = lean_ctor_get(x_7, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_7);
x_41 = lean_st_ref_get(x_17, x_14);
lean_dec(x_17);
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_41, 1);
lean_inc(x_43);
lean_dec(x_41);
x_44 = l_Aesop_treeImpl___elambda__1(x_42);
lean_dec(x_42);
x_45 = lean_ctor_get(x_44, 1);
lean_inc(x_45);
lean_dec(x_44);
x_46 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_46, 0, x_39);
lean_ctor_set(x_46, 1, x_40);
x_47 = lean_array_size(x_45);
x_48 = 0;
lean_inc(x_1);
x_49 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1(x_1, x_2, x_3, x_45, x_47, x_48, x_46, x_8, x_9, x_10, x_11, x_12, x_13, x_43);
lean_dec(x_45);
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = lean_ctor_get(x_49, 1);
lean_inc(x_51);
lean_dec(x_49);
x_52 = lean_ctor_get(x_50, 0);
lean_inc(x_52);
x_53 = lean_ctor_get(x_50, 1);
lean_inc(x_53);
if (lean_is_exclusive(x_50)) {
 lean_ctor_release(x_50, 0);
 lean_ctor_release(x_50, 1);
 x_54 = x_50;
} else {
 lean_dec_ref(x_50);
 x_54 = lean_box(0);
}
if (lean_is_scalar(x_54)) {
 x_55 = lean_alloc_ctor(0, 2, 0);
} else {
 x_55 = x_54;
}
lean_ctor_set(x_55, 0, x_52);
lean_ctor_set(x_55, 1, x_53);
x_56 = 1;
x_57 = lean_usize_add(x_6, x_56);
x_6 = x_57;
x_7 = x_55;
x_14 = x_51;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; 
x_15 = lean_usize_dec_lt(x_6, x_5);
if (x_15 == 0)
{
lean_object* x_16; 
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_7);
lean_ctor_set(x_16, 1, x_14);
return x_16;
}
else
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_array_uget(x_4, x_6);
x_18 = !lean_is_exclusive(x_7);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; size_t x_24; size_t x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_19 = lean_st_ref_get(x_17, x_14);
lean_dec(x_17);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_treeImpl___elambda__3(x_20);
lean_dec(x_20);
x_23 = lean_ctor_get(x_22, 2);
lean_inc(x_23);
lean_dec(x_22);
x_24 = lean_array_size(x_23);
x_25 = 0;
lean_inc(x_1);
x_26 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2(x_1, x_2, x_3, x_23, x_24, x_25, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_21);
lean_dec(x_23);
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_26, 1);
lean_inc(x_28);
lean_dec(x_26);
x_29 = !lean_is_exclusive(x_27);
if (x_29 == 0)
{
size_t x_30; size_t x_31; 
x_30 = 1;
x_31 = lean_usize_add(x_6, x_30);
x_6 = x_31;
x_7 = x_27;
x_14 = x_28;
goto _start;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; size_t x_36; size_t x_37; 
x_33 = lean_ctor_get(x_27, 0);
x_34 = lean_ctor_get(x_27, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_27);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
x_36 = 1;
x_37 = lean_usize_add(x_6, x_36);
x_6 = x_37;
x_7 = x_35;
x_14 = x_28;
goto _start;
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; size_t x_47; size_t x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; size_t x_56; size_t x_57; 
x_39 = lean_ctor_get(x_7, 0);
x_40 = lean_ctor_get(x_7, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_7);
x_41 = lean_st_ref_get(x_17, x_14);
lean_dec(x_17);
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_41, 1);
lean_inc(x_43);
lean_dec(x_41);
x_44 = l_Aesop_treeImpl___elambda__3(x_42);
lean_dec(x_42);
x_45 = lean_ctor_get(x_44, 2);
lean_inc(x_45);
lean_dec(x_44);
x_46 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_46, 0, x_39);
lean_ctor_set(x_46, 1, x_40);
x_47 = lean_array_size(x_45);
x_48 = 0;
lean_inc(x_1);
x_49 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2(x_1, x_2, x_3, x_45, x_47, x_48, x_46, x_8, x_9, x_10, x_11, x_12, x_13, x_43);
lean_dec(x_45);
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = lean_ctor_get(x_49, 1);
lean_inc(x_51);
lean_dec(x_49);
x_52 = lean_ctor_get(x_50, 0);
lean_inc(x_52);
x_53 = lean_ctor_get(x_50, 1);
lean_inc(x_53);
if (lean_is_exclusive(x_50)) {
 lean_ctor_release(x_50, 0);
 lean_ctor_release(x_50, 1);
 x_54 = x_50;
} else {
 lean_dec_ref(x_50);
 x_54 = lean_box(0);
}
if (lean_is_scalar(x_54)) {
 x_55 = lean_alloc_ctor(0, 2, 0);
} else {
 x_55 = x_54;
}
lean_ctor_set(x_55, 0, x_52);
lean_ctor_set(x_55, 1, x_53);
x_56 = 1;
x_57 = lean_usize_add(x_6, x_56);
x_6 = x_57;
x_7 = x_55;
x_14 = x_51;
goto _start;
}
}
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_2 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_10 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; size_t x_15; size_t x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_14);
lean_dec(x_11);
x_15 = lean_array_size(x_13);
x_16 = 0;
x_17 = l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2;
x_18 = l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___closed__1;
x_19 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__3(x_1, x_14, x_17, x_13, x_15, x_16, x_18, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_13);
lean_dec(x_14);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
lean_dec(x_21);
lean_ctor_set(x_19, 0, x_22);
return x_19;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_23 = lean_ctor_get(x_19, 0);
x_24 = lean_ctor_get(x_19, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_19);
x_25 = lean_ctor_get(x_23, 0);
lean_inc(x_25);
lean_dec(x_23);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_24);
return x_26;
}
}
else
{
uint8_t x_27; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_27 = !lean_is_exclusive(x_10);
if (x_27 == 0)
{
return x_10;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_10, 0);
x_29 = lean_ctor_get(x_10, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_10);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_16 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_17 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__1(x_1, x_2, x_3, x_4, x_15, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_16 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_17 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__2(x_1, x_2, x_3, x_4, x_15, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_16 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_17 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___spec__3(x_1, x_2, x_3, x_4, x_15, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; lean_object* x_8; 
x_7 = 0;
x_8 = l_Lean_MVarId_getMVarDependencies(x_1, x_7, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_8) == 0)
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = l_Aesop_UnorderedArraySet_ofHashSet___at_Aesop_partitionGoalsAndMVars___spec__2(x_10);
lean_dec(x_10);
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
x_14 = l_Aesop_UnorderedArraySet_ofHashSet___at_Aesop_partitionGoalsAndMVars___spec__2(x_12);
lean_dec(x_12);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_8);
if (x_16 == 0)
{
return x_8;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_8, 0);
x_18 = lean_ctor_get(x_8, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_8);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Subarray_empty(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1(lean_object* x_1, double x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; 
x_14 = lean_usize_dec_lt(x_5, x_4);
if (x_14 == 0)
{
lean_object* x_15; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_3);
lean_dec(x_1);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_6);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_16 = lean_array_uget(x_6, x_5);
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_array_uset(x_6, x_5, x_17);
x_19 = lean_st_ref_get(x_16, x_13);
lean_dec(x_16);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_Aesop_treeImpl___elambda__5(x_20);
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_24 = lean_ctor_get(x_22, 0);
x_25 = lean_ctor_get(x_22, 5);
x_26 = lean_ctor_get(x_22, 12);
lean_dec(x_26);
x_27 = lean_ctor_get(x_22, 11);
lean_dec(x_27);
x_28 = lean_ctor_get(x_22, 10);
lean_dec(x_28);
x_29 = lean_ctor_get(x_22, 9);
lean_dec(x_29);
x_30 = lean_ctor_get(x_22, 8);
lean_dec(x_30);
x_31 = lean_ctor_get(x_22, 7);
lean_dec(x_31);
x_32 = lean_ctor_get(x_22, 6);
lean_dec(x_32);
x_33 = lean_ctor_get(x_22, 4);
lean_dec(x_33);
x_34 = lean_ctor_get(x_22, 3);
lean_dec(x_34);
x_35 = lean_ctor_get(x_22, 2);
lean_dec(x_35);
x_36 = lean_ctor_get(x_22, 1);
lean_dec(x_36);
lean_inc(x_25);
x_37 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1___boxed), 6, 1);
lean_closure_set(x_37, 0, x_25);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_1);
x_38 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_1, x_37, x_9, x_10, x_11, x_12, x_21);
if (lean_obj_tag(x_38) == 0)
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_39 = lean_ctor_get(x_38, 0);
lean_inc(x_39);
x_40 = lean_ctor_get(x_38, 1);
lean_inc(x_40);
lean_dec(x_38);
x_41 = l_Aesop_getAndIncrementNextGoalId___rarg(x_8, x_9, x_10, x_11, x_12, x_40);
x_42 = !lean_is_exclusive(x_41);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; uint8_t x_48; uint8_t x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; size_t x_55; size_t x_56; lean_object* x_57; 
x_43 = lean_ctor_get(x_41, 0);
x_44 = lean_ctor_get(x_41, 1);
x_45 = l_Aesop_Goal_originalGoalId(x_20);
lean_dec(x_20);
lean_ctor_set_tag(x_41, 1);
lean_ctor_set(x_41, 1, x_45);
lean_ctor_set(x_41, 0, x_24);
x_46 = lean_box(0);
x_47 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_48 = 0;
x_49 = 0;
x_50 = lean_box(0);
x_51 = l_Aesop_Iteration_none;
x_52 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1;
x_53 = lean_box_float(x_2);
lean_inc(x_7);
lean_inc(x_3);
lean_ctor_set(x_22, 12, x_47);
lean_ctor_set(x_22, 11, x_52);
lean_ctor_set(x_22, 10, x_51);
lean_ctor_set(x_22, 9, x_7);
lean_ctor_set(x_22, 8, x_53);
lean_ctor_set(x_22, 7, x_39);
lean_ctor_set(x_22, 6, x_50);
lean_ctor_set(x_22, 4, x_3);
lean_ctor_set(x_22, 3, x_41);
lean_ctor_set(x_22, 2, x_47);
lean_ctor_set(x_22, 1, x_46);
lean_ctor_set(x_22, 0, x_43);
lean_ctor_set_uint8(x_22, sizeof(void*)*13, x_48);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 1, x_49);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 2, x_49);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 3, x_49);
x_54 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_54, 0, x_22);
x_55 = 1;
x_56 = lean_usize_add(x_5, x_55);
x_57 = lean_array_uset(x_18, x_5, x_54);
x_5 = x_56;
x_6 = x_57;
x_13 = x_44;
goto _start;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; uint8_t x_65; uint8_t x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; size_t x_72; size_t x_73; lean_object* x_74; 
x_59 = lean_ctor_get(x_41, 0);
x_60 = lean_ctor_get(x_41, 1);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_41);
x_61 = l_Aesop_Goal_originalGoalId(x_20);
lean_dec(x_20);
x_62 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_62, 0, x_24);
lean_ctor_set(x_62, 1, x_61);
x_63 = lean_box(0);
x_64 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_65 = 0;
x_66 = 0;
x_67 = lean_box(0);
x_68 = l_Aesop_Iteration_none;
x_69 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1;
x_70 = lean_box_float(x_2);
lean_inc(x_7);
lean_inc(x_3);
lean_ctor_set(x_22, 12, x_64);
lean_ctor_set(x_22, 11, x_69);
lean_ctor_set(x_22, 10, x_68);
lean_ctor_set(x_22, 9, x_7);
lean_ctor_set(x_22, 8, x_70);
lean_ctor_set(x_22, 7, x_39);
lean_ctor_set(x_22, 6, x_67);
lean_ctor_set(x_22, 4, x_3);
lean_ctor_set(x_22, 3, x_62);
lean_ctor_set(x_22, 2, x_64);
lean_ctor_set(x_22, 1, x_63);
lean_ctor_set(x_22, 0, x_59);
lean_ctor_set_uint8(x_22, sizeof(void*)*13, x_65);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 1, x_66);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 2, x_66);
lean_ctor_set_uint8(x_22, sizeof(void*)*13 + 3, x_66);
x_71 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_71, 0, x_22);
x_72 = 1;
x_73 = lean_usize_add(x_5, x_72);
x_74 = lean_array_uset(x_18, x_5, x_71);
x_5 = x_73;
x_6 = x_74;
x_13 = x_60;
goto _start;
}
}
else
{
uint8_t x_76; 
lean_free_object(x_22);
lean_dec(x_25);
lean_dec(x_24);
lean_dec(x_20);
lean_dec(x_18);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_3);
lean_dec(x_1);
x_76 = !lean_is_exclusive(x_38);
if (x_76 == 0)
{
return x_38;
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_77 = lean_ctor_get(x_38, 0);
x_78 = lean_ctor_get(x_38, 1);
lean_inc(x_78);
lean_inc(x_77);
lean_dec(x_38);
x_79 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_79, 0, x_77);
lean_ctor_set(x_79, 1, x_78);
return x_79;
}
}
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
x_80 = lean_ctor_get(x_22, 0);
x_81 = lean_ctor_get(x_22, 5);
lean_inc(x_81);
lean_inc(x_80);
lean_dec(x_22);
lean_inc(x_81);
x_82 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1___boxed), 6, 1);
lean_closure_set(x_82, 0, x_81);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_1);
x_83 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_1, x_82, x_9, x_10, x_11, x_12, x_21);
if (lean_obj_tag(x_83) == 0)
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint8_t x_94; uint8_t x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; size_t x_102; size_t x_103; lean_object* x_104; 
x_84 = lean_ctor_get(x_83, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_83, 1);
lean_inc(x_85);
lean_dec(x_83);
x_86 = l_Aesop_getAndIncrementNextGoalId___rarg(x_8, x_9, x_10, x_11, x_12, x_85);
x_87 = lean_ctor_get(x_86, 0);
lean_inc(x_87);
x_88 = lean_ctor_get(x_86, 1);
lean_inc(x_88);
if (lean_is_exclusive(x_86)) {
 lean_ctor_release(x_86, 0);
 lean_ctor_release(x_86, 1);
 x_89 = x_86;
} else {
 lean_dec_ref(x_86);
 x_89 = lean_box(0);
}
x_90 = l_Aesop_Goal_originalGoalId(x_20);
lean_dec(x_20);
if (lean_is_scalar(x_89)) {
 x_91 = lean_alloc_ctor(1, 2, 0);
} else {
 x_91 = x_89;
 lean_ctor_set_tag(x_91, 1);
}
lean_ctor_set(x_91, 0, x_80);
lean_ctor_set(x_91, 1, x_90);
x_92 = lean_box(0);
x_93 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_94 = 0;
x_95 = 0;
x_96 = lean_box(0);
x_97 = l_Aesop_Iteration_none;
x_98 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1;
x_99 = lean_box_float(x_2);
lean_inc(x_7);
lean_inc(x_3);
x_100 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_100, 0, x_87);
lean_ctor_set(x_100, 1, x_92);
lean_ctor_set(x_100, 2, x_93);
lean_ctor_set(x_100, 3, x_91);
lean_ctor_set(x_100, 4, x_3);
lean_ctor_set(x_100, 5, x_81);
lean_ctor_set(x_100, 6, x_96);
lean_ctor_set(x_100, 7, x_84);
lean_ctor_set(x_100, 8, x_99);
lean_ctor_set(x_100, 9, x_7);
lean_ctor_set(x_100, 10, x_97);
lean_ctor_set(x_100, 11, x_98);
lean_ctor_set(x_100, 12, x_93);
lean_ctor_set_uint8(x_100, sizeof(void*)*13, x_94);
lean_ctor_set_uint8(x_100, sizeof(void*)*13 + 1, x_95);
lean_ctor_set_uint8(x_100, sizeof(void*)*13 + 2, x_95);
lean_ctor_set_uint8(x_100, sizeof(void*)*13 + 3, x_95);
x_101 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_101, 0, x_100);
x_102 = 1;
x_103 = lean_usize_add(x_5, x_102);
x_104 = lean_array_uset(x_18, x_5, x_101);
x_5 = x_103;
x_6 = x_104;
x_13 = x_88;
goto _start;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; 
lean_dec(x_81);
lean_dec(x_80);
lean_dec(x_20);
lean_dec(x_18);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_3);
lean_dec(x_1);
x_106 = lean_ctor_get(x_83, 0);
lean_inc(x_106);
x_107 = lean_ctor_get(x_83, 1);
lean_inc(x_107);
if (lean_is_exclusive(x_83)) {
 lean_ctor_release(x_83, 0);
 lean_ctor_release(x_83, 1);
 x_108 = x_83;
} else {
 lean_dec_ref(x_83);
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
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals(lean_object* x_1, lean_object* x_2, lean_object* x_3, double x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_13 = l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy(x_1, x_2, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; size_t x_16; size_t x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_array_size(x_14);
x_17 = 0;
x_18 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1(x_3, x_4, x_5, x_16, x_17, x_14, x_6, x_7, x_8, x_9, x_10, x_11, x_15);
lean_dec(x_7);
return x_18;
}
else
{
uint8_t x_19; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
x_19 = !lean_is_exclusive(x_13);
if (x_19 == 0)
{
return x_13;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_13, 0);
x_21 = lean_ctor_get(x_13, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_13);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
double x_14; size_t x_15; size_t x_16; lean_object* x_17; 
x_14 = lean_unbox_float(x_2);
lean_dec(x_2);
x_15 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_16 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_17 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1(x_1, x_14, x_3, x_15, x_16, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_8);
return x_17;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
double x_13; lean_object* x_14; 
x_13 = lean_unbox_float(x_4);
lean_dec(x_4);
x_14 = l___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals(x_1, x_2, x_3, x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
return x_14;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, double x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; uint8_t x_15; 
x_14 = l_Aesop_getAndIncrementNextGoalId___rarg(x_8, x_9, x_10, x_11, x_12, x_13);
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; uint8_t x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_18 = 0;
x_19 = 0;
x_20 = lean_box(0);
x_21 = l_Aesop_Iteration_none;
x_22 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1;
x_23 = lean_box_float(x_5);
x_24 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_24, 0, x_16);
lean_ctor_set(x_24, 1, x_3);
lean_ctor_set(x_24, 2, x_17);
lean_ctor_set(x_24, 3, x_6);
lean_ctor_set(x_24, 4, x_4);
lean_ctor_set(x_24, 5, x_1);
lean_ctor_set(x_24, 6, x_20);
lean_ctor_set(x_24, 7, x_2);
lean_ctor_set(x_24, 8, x_23);
lean_ctor_set(x_24, 9, x_7);
lean_ctor_set(x_24, 10, x_21);
lean_ctor_set(x_24, 11, x_22);
lean_ctor_set(x_24, 12, x_17);
lean_ctor_set_uint8(x_24, sizeof(void*)*13, x_18);
lean_ctor_set_uint8(x_24, sizeof(void*)*13 + 1, x_19);
lean_ctor_set_uint8(x_24, sizeof(void*)*13 + 2, x_19);
lean_ctor_set_uint8(x_24, sizeof(void*)*13 + 3, x_19);
x_25 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_14, 0, x_25);
return x_14;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_26 = lean_ctor_get(x_14, 0);
x_27 = lean_ctor_get(x_14, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_14);
x_28 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_29 = 0;
x_30 = 0;
x_31 = lean_box(0);
x_32 = l_Aesop_Iteration_none;
x_33 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1;
x_34 = lean_box_float(x_5);
x_35 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_35, 0, x_26);
lean_ctor_set(x_35, 1, x_3);
lean_ctor_set(x_35, 2, x_28);
lean_ctor_set(x_35, 3, x_6);
lean_ctor_set(x_35, 4, x_4);
lean_ctor_set(x_35, 5, x_1);
lean_ctor_set(x_35, 6, x_31);
lean_ctor_set(x_35, 7, x_2);
lean_ctor_set(x_35, 8, x_34);
lean_ctor_set(x_35, 9, x_7);
lean_ctor_set(x_35, 10, x_32);
lean_ctor_set(x_35, 11, x_33);
lean_ctor_set(x_35, 12, x_28);
lean_ctor_set_uint8(x_35, sizeof(void*)*13, x_29);
lean_ctor_set_uint8(x_35, sizeof(void*)*13 + 1, x_30);
lean_ctor_set_uint8(x_35, sizeof(void*)*13 + 2, x_30);
lean_ctor_set_uint8(x_35, sizeof(void*)*13 + 3, x_30);
x_36 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_36, 0, x_35);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_27);
return x_37;
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
double x_14; lean_object* x_15; 
x_14 = lean_unbox_float(x_5);
lean_dec(x_5);
x_15 = l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(x_1, x_2, x_3, x_4, x_14, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__1(size_t x_1, size_t x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_usize_dec_lt(x_2, x_1);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; 
x_5 = lean_array_uget(x_3, x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_array_uset(x_3, x_2, x_6);
x_8 = lean_ctor_get(x_5, 0);
lean_inc(x_8);
lean_dec(x_5);
x_9 = 1;
x_10 = lean_usize_add(x_2, x_9);
x_11 = lean_array_uset(x_7, x_2, x_8);
x_2 = x_10;
x_3 = x_11;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_ctor_get(x_3, 2);
x_9 = lean_name_eq(x_6, x_1);
if (x_9 == 0)
{
lean_object* x_10; 
x_10 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_1, x_2, x_8);
lean_ctor_set(x_3, 2, x_10);
return x_3;
}
else
{
lean_dec(x_7);
lean_dec(x_6);
lean_ctor_set(x_3, 1, x_2);
lean_ctor_set(x_3, 0, x_1);
return x_3;
}
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
x_13 = lean_ctor_get(x_3, 2);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
x_14 = lean_name_eq(x_11, x_1);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; 
x_15 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_1, x_2, x_13);
x_16 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_16, 0, x_11);
lean_ctor_set(x_16, 1, x_12);
lean_ctor_set(x_16, 2, x_15);
return x_16;
}
else
{
lean_object* x_17; 
lean_dec(x_12);
lean_dec(x_11);
x_17 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_17, 0, x_1);
lean_ctor_set(x_17, 1, x_2);
lean_ctor_set(x_17, 2, x_13);
return x_17;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 2);
x_8 = lean_ctor_get(x_2, 1);
lean_dec(x_8);
x_9 = !lean_is_exclusive(x_3);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; size_t x_20; size_t x_21; size_t x_22; size_t x_23; size_t x_24; lean_object* x_25; uint8_t x_26; 
x_10 = lean_ctor_get(x_3, 0);
x_11 = lean_ctor_get(x_3, 1);
x_12 = lean_array_get_size(x_11);
x_13 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_6);
x_14 = 32;
x_15 = lean_uint64_shift_right(x_13, x_14);
x_16 = lean_uint64_xor(x_13, x_15);
x_17 = 16;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = lean_uint64_to_usize(x_19);
x_21 = lean_usize_of_nat(x_12);
lean_dec(x_12);
x_22 = 1;
x_23 = lean_usize_sub(x_21, x_22);
x_24 = lean_usize_land(x_20, x_23);
x_25 = lean_array_uget(x_11, x_24);
x_26 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_6, x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; uint8_t x_36; 
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_10, x_27);
lean_dec(x_10);
x_29 = lean_box(0);
lean_ctor_set(x_2, 2, x_25);
lean_ctor_set(x_2, 1, x_29);
x_30 = lean_array_uset(x_11, x_24, x_2);
x_31 = lean_unsigned_to_nat(4u);
x_32 = lean_nat_mul(x_28, x_31);
x_33 = lean_unsigned_to_nat(3u);
x_34 = lean_nat_div(x_32, x_33);
lean_dec(x_32);
x_35 = lean_array_get_size(x_30);
x_36 = lean_nat_dec_le(x_34, x_35);
lean_dec(x_35);
lean_dec(x_34);
if (x_36 == 0)
{
lean_object* x_37; 
x_37 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_30);
lean_ctor_set(x_3, 1, x_37);
lean_ctor_set(x_3, 0, x_28);
x_2 = x_7;
goto _start;
}
else
{
lean_ctor_set(x_3, 1, x_30);
lean_ctor_set(x_3, 0, x_28);
x_2 = x_7;
goto _start;
}
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
lean_free_object(x_2);
x_40 = lean_box(0);
x_41 = lean_array_uset(x_11, x_24, x_40);
x_42 = lean_box(0);
x_43 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_6, x_42, x_25);
x_44 = lean_array_uset(x_41, x_24, x_43);
lean_ctor_set(x_3, 1, x_44);
x_2 = x_7;
goto _start;
}
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; uint64_t x_49; uint64_t x_50; uint64_t x_51; uint64_t x_52; uint64_t x_53; uint64_t x_54; uint64_t x_55; size_t x_56; size_t x_57; size_t x_58; size_t x_59; size_t x_60; lean_object* x_61; uint8_t x_62; 
x_46 = lean_ctor_get(x_3, 0);
x_47 = lean_ctor_get(x_3, 1);
lean_inc(x_47);
lean_inc(x_46);
lean_dec(x_3);
x_48 = lean_array_get_size(x_47);
x_49 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_6);
x_50 = 32;
x_51 = lean_uint64_shift_right(x_49, x_50);
x_52 = lean_uint64_xor(x_49, x_51);
x_53 = 16;
x_54 = lean_uint64_shift_right(x_52, x_53);
x_55 = lean_uint64_xor(x_52, x_54);
x_56 = lean_uint64_to_usize(x_55);
x_57 = lean_usize_of_nat(x_48);
lean_dec(x_48);
x_58 = 1;
x_59 = lean_usize_sub(x_57, x_58);
x_60 = lean_usize_land(x_56, x_59);
x_61 = lean_array_uget(x_47, x_60);
x_62 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_6, x_61);
if (x_62 == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; uint8_t x_72; 
x_63 = lean_unsigned_to_nat(1u);
x_64 = lean_nat_add(x_46, x_63);
lean_dec(x_46);
x_65 = lean_box(0);
lean_ctor_set(x_2, 2, x_61);
lean_ctor_set(x_2, 1, x_65);
x_66 = lean_array_uset(x_47, x_60, x_2);
x_67 = lean_unsigned_to_nat(4u);
x_68 = lean_nat_mul(x_64, x_67);
x_69 = lean_unsigned_to_nat(3u);
x_70 = lean_nat_div(x_68, x_69);
lean_dec(x_68);
x_71 = lean_array_get_size(x_66);
x_72 = lean_nat_dec_le(x_70, x_71);
lean_dec(x_71);
lean_dec(x_70);
if (x_72 == 0)
{
lean_object* x_73; lean_object* x_74; 
x_73 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_66);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_64);
lean_ctor_set(x_74, 1, x_73);
x_2 = x_7;
x_3 = x_74;
goto _start;
}
else
{
lean_object* x_76; 
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_64);
lean_ctor_set(x_76, 1, x_66);
x_2 = x_7;
x_3 = x_76;
goto _start;
}
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
lean_free_object(x_2);
x_78 = lean_box(0);
x_79 = lean_array_uset(x_47, x_60, x_78);
x_80 = lean_box(0);
x_81 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_6, x_80, x_61);
x_82 = lean_array_uset(x_79, x_60, x_81);
x_83 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_83, 0, x_46);
lean_ctor_set(x_83, 1, x_82);
x_2 = x_7;
x_3 = x_83;
goto _start;
}
}
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; uint64_t x_91; uint64_t x_92; uint64_t x_93; uint64_t x_94; uint64_t x_95; uint64_t x_96; uint64_t x_97; size_t x_98; size_t x_99; size_t x_100; size_t x_101; size_t x_102; lean_object* x_103; uint8_t x_104; 
x_85 = lean_ctor_get(x_2, 0);
x_86 = lean_ctor_get(x_2, 2);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_2);
x_87 = lean_ctor_get(x_3, 0);
lean_inc(x_87);
x_88 = lean_ctor_get(x_3, 1);
lean_inc(x_88);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_89 = x_3;
} else {
 lean_dec_ref(x_3);
 x_89 = lean_box(0);
}
x_90 = lean_array_get_size(x_88);
x_91 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_85);
x_92 = 32;
x_93 = lean_uint64_shift_right(x_91, x_92);
x_94 = lean_uint64_xor(x_91, x_93);
x_95 = 16;
x_96 = lean_uint64_shift_right(x_94, x_95);
x_97 = lean_uint64_xor(x_94, x_96);
x_98 = lean_uint64_to_usize(x_97);
x_99 = lean_usize_of_nat(x_90);
lean_dec(x_90);
x_100 = 1;
x_101 = lean_usize_sub(x_99, x_100);
x_102 = lean_usize_land(x_98, x_101);
x_103 = lean_array_uget(x_88, x_102);
x_104 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_85, x_103);
if (x_104 == 0)
{
lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; uint8_t x_115; 
x_105 = lean_unsigned_to_nat(1u);
x_106 = lean_nat_add(x_87, x_105);
lean_dec(x_87);
x_107 = lean_box(0);
x_108 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_108, 0, x_85);
lean_ctor_set(x_108, 1, x_107);
lean_ctor_set(x_108, 2, x_103);
x_109 = lean_array_uset(x_88, x_102, x_108);
x_110 = lean_unsigned_to_nat(4u);
x_111 = lean_nat_mul(x_106, x_110);
x_112 = lean_unsigned_to_nat(3u);
x_113 = lean_nat_div(x_111, x_112);
lean_dec(x_111);
x_114 = lean_array_get_size(x_109);
x_115 = lean_nat_dec_le(x_113, x_114);
lean_dec(x_114);
lean_dec(x_113);
if (x_115 == 0)
{
lean_object* x_116; lean_object* x_117; 
x_116 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_109);
if (lean_is_scalar(x_89)) {
 x_117 = lean_alloc_ctor(0, 2, 0);
} else {
 x_117 = x_89;
}
lean_ctor_set(x_117, 0, x_106);
lean_ctor_set(x_117, 1, x_116);
x_2 = x_86;
x_3 = x_117;
goto _start;
}
else
{
lean_object* x_119; 
if (lean_is_scalar(x_89)) {
 x_119 = lean_alloc_ctor(0, 2, 0);
} else {
 x_119 = x_89;
}
lean_ctor_set(x_119, 0, x_106);
lean_ctor_set(x_119, 1, x_109);
x_2 = x_86;
x_3 = x_119;
goto _start;
}
}
else
{
lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; 
x_121 = lean_box(0);
x_122 = lean_array_uset(x_88, x_102, x_121);
x_123 = lean_box(0);
x_124 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_85, x_123, x_103);
x_125 = lean_array_uset(x_122, x_102, x_124);
if (lean_is_scalar(x_89)) {
 x_126 = lean_alloc_ctor(0, 2, 0);
} else {
 x_126 = x_89;
}
lean_ctor_set(x_126, 0, x_87);
lean_ctor_set(x_126, 1, x_125);
x_2 = x_86;
x_3 = x_126;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__4(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_lt(x_4, x_3);
if (x_6 == 0)
{
return x_5;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; size_t x_10; size_t x_11; 
x_7 = lean_array_uget(x_2, x_4);
x_8 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__3(x_1, x_7, x_5);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = 1;
x_11 = lean_usize_add(x_4, x_10);
x_4 = x_11;
x_5 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_2, x_1);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_array_push(x_2, x_1);
return x_4;
}
else
{
lean_dec(x_1);
return x_2;
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__6(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_4, x_3);
if (x_11 == 0)
{
lean_object* x_12; 
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_array_uget(x_2, x_4);
x_14 = !lean_is_exclusive(x_5);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_15 = lean_ctor_get(x_5, 0);
x_16 = lean_ctor_get(x_5, 1);
x_17 = l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Lean_Meta_getAssignedExprMVars___spec__1(x_13, x_6, x_7, x_8, x_9, x_10);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint64_t x_23; uint64_t x_24; uint64_t x_25; uint64_t x_26; uint64_t x_27; uint64_t x_28; uint64_t x_29; size_t x_30; size_t x_31; size_t x_32; size_t x_33; size_t x_34; lean_object* x_35; uint8_t x_36; 
x_20 = lean_ctor_get(x_17, 1);
lean_inc(x_20);
lean_dec(x_17);
x_21 = lean_ctor_get(x_1, 1);
x_22 = lean_array_get_size(x_21);
x_23 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_13);
x_24 = 32;
x_25 = lean_uint64_shift_right(x_23, x_24);
x_26 = lean_uint64_xor(x_23, x_25);
x_27 = 16;
x_28 = lean_uint64_shift_right(x_26, x_27);
x_29 = lean_uint64_xor(x_26, x_28);
x_30 = lean_uint64_to_usize(x_29);
x_31 = lean_usize_of_nat(x_22);
lean_dec(x_22);
x_32 = 1;
x_33 = lean_usize_sub(x_31, x_32);
x_34 = lean_usize_land(x_30, x_33);
x_35 = lean_array_uget(x_21, x_34);
x_36 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_13, x_35);
lean_dec(x_35);
if (x_36 == 0)
{
lean_object* x_37; size_t x_38; 
x_37 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_13, x_16);
lean_ctor_set(x_5, 1, x_37);
x_38 = lean_usize_add(x_4, x_32);
x_4 = x_38;
x_10 = x_20;
goto _start;
}
else
{
size_t x_40; 
lean_dec(x_13);
x_40 = lean_usize_add(x_4, x_32);
x_4 = x_40;
x_10 = x_20;
goto _start;
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; size_t x_45; size_t x_46; 
x_42 = lean_ctor_get(x_17, 1);
lean_inc(x_42);
lean_dec(x_17);
lean_inc(x_13);
x_43 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_13, x_15);
x_44 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_13, x_16);
lean_ctor_set(x_5, 1, x_44);
lean_ctor_set(x_5, 0, x_43);
x_45 = 1;
x_46 = lean_usize_add(x_4, x_45);
x_4 = x_46;
x_10 = x_42;
goto _start;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; uint8_t x_52; 
x_48 = lean_ctor_get(x_5, 0);
x_49 = lean_ctor_get(x_5, 1);
lean_inc(x_49);
lean_inc(x_48);
lean_dec(x_5);
x_50 = l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Lean_Meta_getAssignedExprMVars___spec__1(x_13, x_6, x_7, x_8, x_9, x_10);
x_51 = lean_ctor_get(x_50, 0);
lean_inc(x_51);
x_52 = lean_unbox(x_51);
lean_dec(x_51);
if (x_52 == 0)
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; uint64_t x_56; uint64_t x_57; uint64_t x_58; uint64_t x_59; uint64_t x_60; uint64_t x_61; uint64_t x_62; size_t x_63; size_t x_64; size_t x_65; size_t x_66; size_t x_67; lean_object* x_68; uint8_t x_69; 
x_53 = lean_ctor_get(x_50, 1);
lean_inc(x_53);
lean_dec(x_50);
x_54 = lean_ctor_get(x_1, 1);
x_55 = lean_array_get_size(x_54);
x_56 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_13);
x_57 = 32;
x_58 = lean_uint64_shift_right(x_56, x_57);
x_59 = lean_uint64_xor(x_56, x_58);
x_60 = 16;
x_61 = lean_uint64_shift_right(x_59, x_60);
x_62 = lean_uint64_xor(x_59, x_61);
x_63 = lean_uint64_to_usize(x_62);
x_64 = lean_usize_of_nat(x_55);
lean_dec(x_55);
x_65 = 1;
x_66 = lean_usize_sub(x_64, x_65);
x_67 = lean_usize_land(x_63, x_66);
x_68 = lean_array_uget(x_54, x_67);
x_69 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_13, x_68);
lean_dec(x_68);
if (x_69 == 0)
{
lean_object* x_70; lean_object* x_71; size_t x_72; 
x_70 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_13, x_49);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_48);
lean_ctor_set(x_71, 1, x_70);
x_72 = lean_usize_add(x_4, x_65);
x_4 = x_72;
x_5 = x_71;
x_10 = x_53;
goto _start;
}
else
{
lean_object* x_74; size_t x_75; 
lean_dec(x_13);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_48);
lean_ctor_set(x_74, 1, x_49);
x_75 = lean_usize_add(x_4, x_65);
x_4 = x_75;
x_5 = x_74;
x_10 = x_53;
goto _start;
}
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; size_t x_81; size_t x_82; 
x_77 = lean_ctor_get(x_50, 1);
lean_inc(x_77);
lean_dec(x_50);
lean_inc(x_13);
x_78 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_13, x_48);
x_79 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_13, x_49);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_78);
lean_ctor_set(x_80, 1, x_79);
x_81 = 1;
x_82 = lean_usize_add(x_4, x_81);
x_4 = x_82;
x_5 = x_80;
x_10 = x_77;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__7(size_t x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_eq(x_3, x_4);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_12 = lean_array_uget(x_2, x_3);
x_13 = 0;
lean_inc(x_8);
x_14 = l_Lean_MVarId_getMVarDependencies(x_12, x_13, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; size_t x_18; lean_object* x_19; size_t x_20; size_t x_21; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_array_size(x_17);
lean_inc(x_5);
x_19 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__4(x_5, x_17, x_18, x_1, x_5);
lean_dec(x_17);
lean_dec(x_5);
x_20 = 1;
x_21 = lean_usize_add(x_3, x_20);
x_3 = x_21;
x_5 = x_19;
x_10 = x_16;
goto _start;
}
else
{
uint8_t x_23; 
lean_dec(x_8);
lean_dec(x_5);
x_23 = !lean_is_exclusive(x_14);
if (x_23 == 0)
{
return x_14;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_14, 0);
x_25 = lean_ctor_get(x_14, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_14);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
else
{
lean_object* x_27; 
lean_dec(x_8);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_5);
lean_ctor_set(x_27, 1, x_10);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__8(size_t x_1, size_t x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_usize_dec_lt(x_2, x_1);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; size_t x_10; size_t x_11; lean_object* x_12; 
x_5 = lean_array_uget(x_3, x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_array_uset(x_3, x_2, x_6);
x_8 = l_Aesop_treeImpl___elambda__5(x_5);
lean_dec(x_5);
x_9 = lean_ctor_get(x_8, 5);
lean_inc(x_9);
lean_dec(x_8);
x_10 = 1;
x_11 = lean_usize_add(x_2, x_10);
x_12 = lean_array_uset(x_7, x_2, x_9);
x_2 = x_11;
x_3 = x_12;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_dec(x_1);
return x_6;
}
else
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_array_uget(x_3, x_5);
x_9 = !lean_is_exclusive(x_6);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; size_t x_20; size_t x_21; size_t x_22; size_t x_23; size_t x_24; lean_object* x_25; uint8_t x_26; 
x_10 = lean_ctor_get(x_6, 0);
x_11 = lean_ctor_get(x_6, 1);
x_12 = lean_array_get_size(x_11);
x_13 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_14 = 32;
x_15 = lean_uint64_shift_right(x_13, x_14);
x_16 = lean_uint64_xor(x_13, x_15);
x_17 = 16;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = lean_uint64_to_usize(x_19);
x_21 = lean_usize_of_nat(x_12);
lean_dec(x_12);
x_22 = 1;
x_23 = lean_usize_sub(x_21, x_22);
x_24 = lean_usize_land(x_20, x_23);
x_25 = lean_array_uget(x_11, x_24);
x_26 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_8, x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; 
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_10, x_27);
lean_dec(x_10);
x_29 = lean_box(0);
x_30 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_30, 0, x_8);
lean_ctor_set(x_30, 1, x_29);
lean_ctor_set(x_30, 2, x_25);
x_31 = lean_array_uset(x_11, x_24, x_30);
x_32 = lean_unsigned_to_nat(4u);
x_33 = lean_nat_mul(x_28, x_32);
x_34 = lean_unsigned_to_nat(3u);
x_35 = lean_nat_div(x_33, x_34);
lean_dec(x_33);
x_36 = lean_array_get_size(x_31);
x_37 = lean_nat_dec_le(x_35, x_36);
lean_dec(x_36);
lean_dec(x_35);
if (x_37 == 0)
{
lean_object* x_38; size_t x_39; 
x_38 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_31);
lean_ctor_set(x_6, 1, x_38);
lean_ctor_set(x_6, 0, x_28);
x_39 = lean_usize_add(x_5, x_22);
x_5 = x_39;
goto _start;
}
else
{
size_t x_41; 
lean_ctor_set(x_6, 1, x_31);
lean_ctor_set(x_6, 0, x_28);
x_41 = lean_usize_add(x_5, x_22);
x_5 = x_41;
goto _start;
}
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; size_t x_47; 
lean_inc(x_1);
x_43 = lean_array_uset(x_11, x_24, x_1);
x_44 = lean_box(0);
x_45 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_8, x_44, x_25);
x_46 = lean_array_uset(x_43, x_24, x_45);
lean_ctor_set(x_6, 1, x_46);
x_47 = lean_usize_add(x_5, x_22);
x_5 = x_47;
goto _start;
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; uint64_t x_52; uint64_t x_53; uint64_t x_54; uint64_t x_55; uint64_t x_56; uint64_t x_57; uint64_t x_58; size_t x_59; size_t x_60; size_t x_61; size_t x_62; size_t x_63; lean_object* x_64; uint8_t x_65; 
x_49 = lean_ctor_get(x_6, 0);
x_50 = lean_ctor_get(x_6, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_6);
x_51 = lean_array_get_size(x_50);
x_52 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_8);
x_53 = 32;
x_54 = lean_uint64_shift_right(x_52, x_53);
x_55 = lean_uint64_xor(x_52, x_54);
x_56 = 16;
x_57 = lean_uint64_shift_right(x_55, x_56);
x_58 = lean_uint64_xor(x_55, x_57);
x_59 = lean_uint64_to_usize(x_58);
x_60 = lean_usize_of_nat(x_51);
lean_dec(x_51);
x_61 = 1;
x_62 = lean_usize_sub(x_60, x_61);
x_63 = lean_usize_land(x_59, x_62);
x_64 = lean_array_uget(x_50, x_63);
x_65 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_8, x_64);
if (x_65 == 0)
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; uint8_t x_76; 
x_66 = lean_unsigned_to_nat(1u);
x_67 = lean_nat_add(x_49, x_66);
lean_dec(x_49);
x_68 = lean_box(0);
x_69 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_69, 0, x_8);
lean_ctor_set(x_69, 1, x_68);
lean_ctor_set(x_69, 2, x_64);
x_70 = lean_array_uset(x_50, x_63, x_69);
x_71 = lean_unsigned_to_nat(4u);
x_72 = lean_nat_mul(x_67, x_71);
x_73 = lean_unsigned_to_nat(3u);
x_74 = lean_nat_div(x_72, x_73);
lean_dec(x_72);
x_75 = lean_array_get_size(x_70);
x_76 = lean_nat_dec_le(x_74, x_75);
lean_dec(x_75);
lean_dec(x_74);
if (x_76 == 0)
{
lean_object* x_77; lean_object* x_78; size_t x_79; 
x_77 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_70);
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_67);
lean_ctor_set(x_78, 1, x_77);
x_79 = lean_usize_add(x_5, x_61);
x_5 = x_79;
x_6 = x_78;
goto _start;
}
else
{
lean_object* x_81; size_t x_82; 
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_67);
lean_ctor_set(x_81, 1, x_70);
x_82 = lean_usize_add(x_5, x_61);
x_5 = x_82;
x_6 = x_81;
goto _start;
}
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; size_t x_89; 
lean_inc(x_1);
x_84 = lean_array_uset(x_50, x_63, x_1);
x_85 = lean_box(0);
x_86 = l_Std_DHashMap_Internal_AssocList_replace___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__2(x_8, x_85, x_64);
x_87 = lean_array_uset(x_84, x_63, x_86);
x_88 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_88, 0, x_49);
lean_ctor_set(x_88, 1, x_87);
x_89 = lean_usize_add(x_5, x_61);
x_5 = x_89;
x_6 = x_88;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__10(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_4, x_3);
if (x_11 == 0)
{
lean_object* x_12; 
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; uint64_t x_22; size_t x_23; size_t x_24; size_t x_25; size_t x_26; size_t x_27; lean_object* x_28; uint8_t x_29; 
x_13 = lean_array_uget(x_2, x_4);
x_14 = lean_ctor_get(x_1, 1);
x_15 = lean_array_get_size(x_14);
x_16 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_13);
x_17 = 32;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = 16;
x_21 = lean_uint64_shift_right(x_19, x_20);
x_22 = lean_uint64_xor(x_19, x_21);
x_23 = lean_uint64_to_usize(x_22);
x_24 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_25 = 1;
x_26 = lean_usize_sub(x_24, x_25);
x_27 = lean_usize_land(x_23, x_26);
x_28 = lean_array_uget(x_14, x_27);
x_29 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_13, x_28);
lean_dec(x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_30 = l_Lean_MVarId_isAssignedOrDelayedAssigned___at_Lean_Meta_getAssignedExprMVars___spec__1(x_13, x_6, x_7, x_8, x_9, x_10);
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_unbox(x_31);
lean_dec(x_31);
if (x_32 == 0)
{
lean_object* x_33; lean_object* x_34; size_t x_35; 
x_33 = lean_ctor_get(x_30, 1);
lean_inc(x_33);
lean_dec(x_30);
x_34 = lean_array_push(x_5, x_13);
x_35 = lean_usize_add(x_4, x_25);
x_4 = x_35;
x_5 = x_34;
x_10 = x_33;
goto _start;
}
else
{
lean_object* x_37; size_t x_38; 
lean_dec(x_13);
x_37 = lean_ctor_get(x_30, 1);
lean_inc(x_37);
lean_dec(x_30);
x_38 = lean_usize_add(x_4, x_25);
x_4 = x_38;
x_10 = x_37;
goto _start;
}
}
else
{
size_t x_40; 
lean_dec(x_13);
x_40 = lean_usize_add(x_4, x_25);
x_4 = x_40;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__11(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_inc(x_6);
return x_6;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_array_uget(x_3, x_5);
x_9 = l_Aesop_treeImpl___elambda__5(x_8);
x_10 = lean_ctor_get(x_9, 5);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_name_eq(x_10, x_1);
lean_dec(x_10);
if (x_11 == 0)
{
size_t x_12; size_t x_13; 
lean_dec(x_8);
x_12 = 1;
x_13 = lean_usize_add(x_5, x_12);
{
size_t _tmp_4 = x_13;
lean_object* _tmp_5 = x_2;
x_5 = _tmp_4;
x_6 = _tmp_5;
}
goto _start;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_15, 0, x_8);
x_16 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_16, 0, x_15);
x_17 = lean_box(0);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__2;
x_2 = lean_box(0);
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12(size_t x_1, double x_2, lean_object* x_3, lean_object* x_4, size_t x_5, lean_object* x_6, size_t x_7, size_t x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16) {
_start:
{
uint8_t x_17; 
x_17 = lean_usize_dec_lt(x_8, x_7);
if (x_17 == 0)
{
lean_object* x_18; 
lean_dec(x_10);
lean_dec(x_3);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_9);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_19 = lean_array_uget(x_9, x_8);
x_20 = lean_unsigned_to_nat(0u);
x_21 = lean_array_uset(x_9, x_8, x_20);
x_22 = lean_ctor_get(x_19, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_23);
lean_dec(x_19);
x_24 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__1;
x_25 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__11(x_22, x_24, x_4, x_5, x_1, x_24);
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
lean_dec(x_25);
if (lean_obj_tag(x_26) == 0)
{
lean_object* x_27; 
x_27 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__3;
if (lean_obj_tag(x_27) == 0)
{
uint8_t x_28; 
x_28 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_6, x_22);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; size_t x_34; size_t x_35; lean_object* x_36; 
x_29 = lean_box(0);
x_30 = lean_box(0);
lean_inc(x_10);
lean_inc(x_3);
x_31 = l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(x_22, x_23, x_29, x_3, x_2, x_30, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_31, 1);
lean_inc(x_33);
lean_dec(x_31);
x_34 = 1;
x_35 = lean_usize_add(x_8, x_34);
x_36 = lean_array_uset(x_21, x_8, x_32);
x_8 = x_35;
x_9 = x_36;
x_16 = x_33;
goto _start;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; size_t x_43; size_t x_44; lean_object* x_45; 
x_38 = lean_box(0);
x_39 = lean_box(2);
lean_inc(x_10);
lean_inc(x_3);
x_40 = l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(x_22, x_23, x_38, x_3, x_2, x_39, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
x_42 = lean_ctor_get(x_40, 1);
lean_inc(x_42);
lean_dec(x_40);
x_43 = 1;
x_44 = lean_usize_add(x_8, x_43);
x_45 = lean_array_uset(x_21, x_8, x_41);
x_8 = x_44;
x_9 = x_45;
x_16 = x_42;
goto _start;
}
}
else
{
lean_object* x_47; size_t x_48; size_t x_49; lean_object* x_50; 
lean_dec(x_23);
lean_dec(x_22);
x_47 = lean_ctor_get(x_27, 0);
lean_inc(x_47);
x_48 = 1;
x_49 = lean_usize_add(x_8, x_48);
x_50 = lean_array_uset(x_21, x_8, x_47);
x_8 = x_49;
x_9 = x_50;
goto _start;
}
}
else
{
lean_object* x_52; 
x_52 = lean_ctor_get(x_26, 0);
lean_inc(x_52);
lean_dec(x_26);
if (lean_obj_tag(x_52) == 0)
{
uint8_t x_53; 
x_53 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_6, x_22);
if (x_53 == 0)
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; size_t x_59; size_t x_60; lean_object* x_61; 
x_54 = lean_box(0);
x_55 = lean_box(0);
lean_inc(x_10);
lean_inc(x_3);
x_56 = l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(x_22, x_23, x_54, x_3, x_2, x_55, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
x_57 = lean_ctor_get(x_56, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_56, 1);
lean_inc(x_58);
lean_dec(x_56);
x_59 = 1;
x_60 = lean_usize_add(x_8, x_59);
x_61 = lean_array_uset(x_21, x_8, x_57);
x_8 = x_60;
x_9 = x_61;
x_16 = x_58;
goto _start;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; size_t x_68; size_t x_69; lean_object* x_70; 
x_63 = lean_box(0);
x_64 = lean_box(2);
lean_inc(x_10);
lean_inc(x_3);
x_65 = l___private_Aesop_Tree_AddRapp_0__Aesop_makeInitialGoal(x_22, x_23, x_63, x_3, x_2, x_64, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
x_66 = lean_ctor_get(x_65, 0);
lean_inc(x_66);
x_67 = lean_ctor_get(x_65, 1);
lean_inc(x_67);
lean_dec(x_65);
x_68 = 1;
x_69 = lean_usize_add(x_8, x_68);
x_70 = lean_array_uset(x_21, x_8, x_66);
x_8 = x_69;
x_9 = x_70;
x_16 = x_67;
goto _start;
}
}
else
{
lean_object* x_72; size_t x_73; size_t x_74; lean_object* x_75; 
lean_dec(x_23);
lean_dec(x_22);
x_72 = lean_ctor_get(x_52, 0);
lean_inc(x_72);
lean_dec(x_52);
x_73 = 1;
x_74 = lean_usize_add(x_8, x_73);
x_75 = lean_array_uset(x_21, x_8, x_72);
x_8 = x_74;
x_9 = x_75;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__13(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_2, x_1);
if (x_11 == 0)
{
lean_object* x_12; 
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_3);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; lean_object* x_21; 
x_13 = lean_array_uget(x_3, x_2);
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_array_uset(x_3, x_2, x_14);
x_16 = lean_st_mk_ref(x_13, x_10);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_2, x_19);
x_21 = lean_array_uset(x_15, x_2, x_17);
x_2 = x_20;
x_3 = x_21;
x_10 = x_18;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__14(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_eq(x_3, x_4);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
lean_dec(x_5);
x_14 = lean_array_uget(x_2, x_3);
x_15 = lean_st_ref_take(x_14, x_12);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Aesop_treeImpl___elambda__5(x_16);
lean_dec(x_16);
x_19 = !lean_is_exclusive(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; size_t x_25; size_t x_26; 
x_20 = lean_ctor_get(x_18, 1);
lean_dec(x_20);
lean_inc(x_1);
lean_ctor_set(x_18, 1, x_1);
x_21 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_21, 0, x_18);
x_22 = lean_st_ref_set(x_14, x_21, x_17);
lean_dec(x_14);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = 1;
x_26 = lean_usize_add(x_3, x_25);
x_3 = x_26;
x_5 = x_23;
x_12 = x_24;
goto _start;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; uint8_t x_33; uint8_t x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; size_t x_49; size_t x_50; 
x_28 = lean_ctor_get(x_18, 0);
x_29 = lean_ctor_get(x_18, 2);
x_30 = lean_ctor_get(x_18, 3);
x_31 = lean_ctor_get(x_18, 4);
x_32 = lean_ctor_get_uint8(x_18, sizeof(void*)*13);
x_33 = lean_ctor_get_uint8(x_18, sizeof(void*)*13 + 1);
x_34 = lean_ctor_get_uint8(x_18, sizeof(void*)*13 + 2);
x_35 = lean_ctor_get(x_18, 5);
x_36 = lean_ctor_get(x_18, 6);
x_37 = lean_ctor_get(x_18, 7);
x_38 = lean_ctor_get(x_18, 8);
x_39 = lean_ctor_get(x_18, 9);
x_40 = lean_ctor_get(x_18, 10);
x_41 = lean_ctor_get_uint8(x_18, sizeof(void*)*13 + 3);
x_42 = lean_ctor_get(x_18, 11);
x_43 = lean_ctor_get(x_18, 12);
lean_inc(x_43);
lean_inc(x_42);
lean_inc(x_40);
lean_inc(x_39);
lean_inc(x_38);
lean_inc(x_37);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_31);
lean_inc(x_30);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_18);
lean_inc(x_1);
x_44 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_44, 0, x_28);
lean_ctor_set(x_44, 1, x_1);
lean_ctor_set(x_44, 2, x_29);
lean_ctor_set(x_44, 3, x_30);
lean_ctor_set(x_44, 4, x_31);
lean_ctor_set(x_44, 5, x_35);
lean_ctor_set(x_44, 6, x_36);
lean_ctor_set(x_44, 7, x_37);
lean_ctor_set(x_44, 8, x_38);
lean_ctor_set(x_44, 9, x_39);
lean_ctor_set(x_44, 10, x_40);
lean_ctor_set(x_44, 11, x_42);
lean_ctor_set(x_44, 12, x_43);
lean_ctor_set_uint8(x_44, sizeof(void*)*13, x_32);
lean_ctor_set_uint8(x_44, sizeof(void*)*13 + 1, x_33);
lean_ctor_set_uint8(x_44, sizeof(void*)*13 + 2, x_34);
lean_ctor_set_uint8(x_44, sizeof(void*)*13 + 3, x_41);
x_45 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_45, 0, x_44);
x_46 = lean_st_ref_set(x_14, x_45, x_17);
lean_dec(x_14);
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_46, 1);
lean_inc(x_48);
lean_dec(x_46);
x_49 = 1;
x_50 = lean_usize_add(x_3, x_49);
x_3 = x_50;
x_5 = x_47;
x_12 = x_48;
goto _start;
}
}
else
{
lean_object* x_52; 
lean_dec(x_1);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_5);
lean_ctor_set(x_52, 1, x_12);
return x_52;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__15(size_t x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_lt(x_4, x_3);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_2);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_5);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; size_t x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; uint8_t x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; uint8_t x_31; 
x_15 = lean_array_uget(x_5, x_4);
x_16 = lean_unsigned_to_nat(0u);
x_17 = lean_array_uset(x_5, x_4, x_16);
x_18 = lean_array_size(x_15);
x_19 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__13(x_18, x_1, x_15, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
lean_inc(x_2);
x_22 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_22, 0, x_2);
x_23 = 0;
x_24 = 0;
lean_inc(x_20);
x_25 = lean_alloc_ctor(0, 2, 2);
lean_ctor_set(x_25, 0, x_22);
lean_ctor_set(x_25, 1, x_20);
lean_ctor_set_uint8(x_25, sizeof(void*)*2, x_23);
lean_ctor_set_uint8(x_25, sizeof(void*)*2 + 1, x_24);
x_26 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_26, 0, x_25);
x_27 = lean_st_mk_ref(x_26, x_21);
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_27, 1);
lean_inc(x_29);
lean_dec(x_27);
x_30 = lean_array_get_size(x_20);
x_31 = lean_nat_dec_lt(x_16, x_30);
if (x_31 == 0)
{
size_t x_32; size_t x_33; lean_object* x_34; 
lean_dec(x_30);
lean_dec(x_20);
x_32 = 1;
x_33 = lean_usize_add(x_4, x_32);
x_34 = lean_array_uset(x_17, x_4, x_28);
x_4 = x_33;
x_5 = x_34;
x_12 = x_29;
goto _start;
}
else
{
uint8_t x_36; 
x_36 = lean_nat_dec_le(x_30, x_30);
if (x_36 == 0)
{
size_t x_37; size_t x_38; lean_object* x_39; 
lean_dec(x_30);
lean_dec(x_20);
x_37 = 1;
x_38 = lean_usize_add(x_4, x_37);
x_39 = lean_array_uset(x_17, x_4, x_28);
x_4 = x_38;
x_5 = x_39;
x_12 = x_29;
goto _start;
}
else
{
size_t x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; size_t x_45; size_t x_46; lean_object* x_47; 
x_41 = lean_usize_of_nat(x_30);
lean_dec(x_30);
x_42 = lean_box(0);
lean_inc(x_28);
x_43 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__14(x_28, x_20, x_1, x_41, x_42, x_6, x_7, x_8, x_9, x_10, x_11, x_29);
lean_dec(x_20);
x_44 = lean_ctor_get(x_43, 1);
lean_inc(x_44);
lean_dec(x_43);
x_45 = 1;
x_46 = lean_usize_add(x_4, x_45);
x_47 = lean_array_uset(x_17, x_4, x_28);
x_4 = x_46;
x_5 = x_47;
x_12 = x_44;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_lt(x_4, x_3);
if (x_13 == 0)
{
lean_object* x_14; 
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_5);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; uint8_t x_16; 
x_15 = lean_array_uget(x_2, x_4);
x_16 = !lean_is_exclusive(x_5);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_ctor_get(x_5, 0);
x_18 = lean_ctor_get(x_5, 1);
x_19 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_1, x_15);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint64_t x_23; uint64_t x_24; uint64_t x_25; uint64_t x_26; uint64_t x_27; uint64_t x_28; uint64_t x_29; size_t x_30; size_t x_31; size_t x_32; size_t x_33; size_t x_34; lean_object* x_35; uint8_t x_36; 
x_20 = lean_ctor_get(x_17, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_17, 1);
lean_inc(x_21);
x_22 = lean_array_get_size(x_21);
x_23 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_15);
x_24 = 32;
x_25 = lean_uint64_shift_right(x_23, x_24);
x_26 = lean_uint64_xor(x_23, x_25);
x_27 = 16;
x_28 = lean_uint64_shift_right(x_26, x_27);
x_29 = lean_uint64_xor(x_26, x_28);
x_30 = lean_uint64_to_usize(x_29);
x_31 = lean_usize_of_nat(x_22);
lean_dec(x_22);
x_32 = 1;
x_33 = lean_usize_sub(x_31, x_32);
x_34 = lean_usize_land(x_30, x_33);
x_35 = lean_array_uget(x_21, x_34);
x_36 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_15, x_35);
if (x_36 == 0)
{
uint8_t x_37; 
x_37 = !lean_is_exclusive(x_17);
if (x_37 == 0)
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
x_38 = lean_ctor_get(x_17, 1);
lean_dec(x_38);
x_39 = lean_ctor_get(x_17, 0);
lean_dec(x_39);
lean_inc(x_15);
x_40 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_15, x_18);
x_41 = lean_unsigned_to_nat(1u);
x_42 = lean_nat_add(x_20, x_41);
lean_dec(x_20);
x_43 = lean_box(0);
x_44 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_44, 0, x_15);
lean_ctor_set(x_44, 1, x_43);
lean_ctor_set(x_44, 2, x_35);
x_45 = lean_array_uset(x_21, x_34, x_44);
x_46 = lean_unsigned_to_nat(4u);
x_47 = lean_nat_mul(x_42, x_46);
x_48 = lean_unsigned_to_nat(3u);
x_49 = lean_nat_div(x_47, x_48);
lean_dec(x_47);
x_50 = lean_array_get_size(x_45);
x_51 = lean_nat_dec_le(x_49, x_50);
lean_dec(x_50);
lean_dec(x_49);
if (x_51 == 0)
{
lean_object* x_52; size_t x_53; 
x_52 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_45);
lean_ctor_set(x_17, 1, x_52);
lean_ctor_set(x_17, 0, x_42);
lean_ctor_set(x_5, 1, x_40);
x_53 = lean_usize_add(x_4, x_32);
x_4 = x_53;
goto _start;
}
else
{
size_t x_55; 
lean_ctor_set(x_17, 1, x_45);
lean_ctor_set(x_17, 0, x_42);
lean_ctor_set(x_5, 1, x_40);
x_55 = lean_usize_add(x_4, x_32);
x_4 = x_55;
goto _start;
}
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; uint8_t x_68; 
lean_dec(x_17);
lean_inc(x_15);
x_57 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_15, x_18);
x_58 = lean_unsigned_to_nat(1u);
x_59 = lean_nat_add(x_20, x_58);
lean_dec(x_20);
x_60 = lean_box(0);
x_61 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_61, 0, x_15);
lean_ctor_set(x_61, 1, x_60);
lean_ctor_set(x_61, 2, x_35);
x_62 = lean_array_uset(x_21, x_34, x_61);
x_63 = lean_unsigned_to_nat(4u);
x_64 = lean_nat_mul(x_59, x_63);
x_65 = lean_unsigned_to_nat(3u);
x_66 = lean_nat_div(x_64, x_65);
lean_dec(x_64);
x_67 = lean_array_get_size(x_62);
x_68 = lean_nat_dec_le(x_66, x_67);
lean_dec(x_67);
lean_dec(x_66);
if (x_68 == 0)
{
lean_object* x_69; lean_object* x_70; size_t x_71; 
x_69 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_62);
x_70 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_70, 0, x_59);
lean_ctor_set(x_70, 1, x_69);
lean_ctor_set(x_5, 1, x_57);
lean_ctor_set(x_5, 0, x_70);
x_71 = lean_usize_add(x_4, x_32);
x_4 = x_71;
goto _start;
}
else
{
lean_object* x_73; size_t x_74; 
x_73 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_73, 0, x_59);
lean_ctor_set(x_73, 1, x_62);
lean_ctor_set(x_5, 1, x_57);
lean_ctor_set(x_5, 0, x_73);
x_74 = lean_usize_add(x_4, x_32);
x_4 = x_74;
goto _start;
}
}
}
else
{
size_t x_76; 
lean_dec(x_35);
lean_dec(x_21);
lean_dec(x_20);
lean_dec(x_15);
x_76 = lean_usize_add(x_4, x_32);
x_4 = x_76;
goto _start;
}
}
else
{
size_t x_78; size_t x_79; 
lean_dec(x_15);
x_78 = 1;
x_79 = lean_usize_add(x_4, x_78);
x_4 = x_79;
goto _start;
}
}
else
{
lean_object* x_81; lean_object* x_82; uint8_t x_83; 
x_81 = lean_ctor_get(x_5, 0);
x_82 = lean_ctor_get(x_5, 1);
lean_inc(x_82);
lean_inc(x_81);
lean_dec(x_5);
x_83 = l_Array_contains___at_Lean_Elab_Term_logUnassignedUsingErrorInfos___spec__1(x_1, x_15);
if (x_83 == 0)
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; uint64_t x_87; uint64_t x_88; uint64_t x_89; uint64_t x_90; uint64_t x_91; uint64_t x_92; uint64_t x_93; size_t x_94; size_t x_95; size_t x_96; size_t x_97; size_t x_98; lean_object* x_99; uint8_t x_100; 
x_84 = lean_ctor_get(x_81, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_81, 1);
lean_inc(x_85);
x_86 = lean_array_get_size(x_85);
x_87 = l___private_Lean_Expr_0__Lean_hashMVarId____x40_Lean_Expr___hyg_1976_(x_15);
x_88 = 32;
x_89 = lean_uint64_shift_right(x_87, x_88);
x_90 = lean_uint64_xor(x_87, x_89);
x_91 = 16;
x_92 = lean_uint64_shift_right(x_90, x_91);
x_93 = lean_uint64_xor(x_90, x_92);
x_94 = lean_uint64_to_usize(x_93);
x_95 = lean_usize_of_nat(x_86);
lean_dec(x_86);
x_96 = 1;
x_97 = lean_usize_sub(x_95, x_96);
x_98 = lean_usize_land(x_94, x_97);
x_99 = lean_array_uget(x_85, x_98);
x_100 = l_Std_DHashMap_Internal_AssocList_contains___at_Lean_MVarId_getMVarDependencies_addMVars___spec__1(x_15, x_99);
if (x_100 == 0)
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; uint8_t x_113; 
if (lean_is_exclusive(x_81)) {
 lean_ctor_release(x_81, 0);
 lean_ctor_release(x_81, 1);
 x_101 = x_81;
} else {
 lean_dec_ref(x_81);
 x_101 = lean_box(0);
}
lean_inc(x_15);
x_102 = l_Aesop_UnorderedArraySet_insert___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__5(x_15, x_82);
x_103 = lean_unsigned_to_nat(1u);
x_104 = lean_nat_add(x_84, x_103);
lean_dec(x_84);
x_105 = lean_box(0);
x_106 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_106, 0, x_15);
lean_ctor_set(x_106, 1, x_105);
lean_ctor_set(x_106, 2, x_99);
x_107 = lean_array_uset(x_85, x_98, x_106);
x_108 = lean_unsigned_to_nat(4u);
x_109 = lean_nat_mul(x_104, x_108);
x_110 = lean_unsigned_to_nat(3u);
x_111 = lean_nat_div(x_109, x_110);
lean_dec(x_109);
x_112 = lean_array_get_size(x_107);
x_113 = lean_nat_dec_le(x_111, x_112);
lean_dec(x_112);
lean_dec(x_111);
if (x_113 == 0)
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; size_t x_117; 
x_114 = l_Std_DHashMap_Internal_Raw_u2080_expand___at_Lean_MVarId_getMVarDependencies_addMVars___spec__2(x_107);
if (lean_is_scalar(x_101)) {
 x_115 = lean_alloc_ctor(0, 2, 0);
} else {
 x_115 = x_101;
}
lean_ctor_set(x_115, 0, x_104);
lean_ctor_set(x_115, 1, x_114);
x_116 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_116, 0, x_115);
lean_ctor_set(x_116, 1, x_102);
x_117 = lean_usize_add(x_4, x_96);
x_4 = x_117;
x_5 = x_116;
goto _start;
}
else
{
lean_object* x_119; lean_object* x_120; size_t x_121; 
if (lean_is_scalar(x_101)) {
 x_119 = lean_alloc_ctor(0, 2, 0);
} else {
 x_119 = x_101;
}
lean_ctor_set(x_119, 0, x_104);
lean_ctor_set(x_119, 1, x_107);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_119);
lean_ctor_set(x_120, 1, x_102);
x_121 = lean_usize_add(x_4, x_96);
x_4 = x_121;
x_5 = x_120;
goto _start;
}
}
else
{
lean_object* x_123; size_t x_124; 
lean_dec(x_99);
lean_dec(x_85);
lean_dec(x_84);
lean_dec(x_15);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_81);
lean_ctor_set(x_123, 1, x_82);
x_124 = lean_usize_add(x_4, x_96);
x_4 = x_124;
x_5 = x_123;
goto _start;
}
}
else
{
lean_object* x_126; size_t x_127; size_t x_128; 
lean_dec(x_15);
x_126 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_126, 0, x_81);
lean_ctor_set(x_126, 1, x_82);
x_127 = 1;
x_128 = lean_usize_add(x_4, x_127);
x_4 = x_128;
x_5 = x_126;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17(size_t x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; 
x_14 = lean_usize_dec_lt(x_5, x_4);
if (x_14 == 0)
{
lean_object* x_15; 
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_6);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
else
{
lean_object* x_16; uint8_t x_17; 
x_16 = lean_array_uget(x_3, x_5);
x_17 = !lean_is_exclusive(x_6);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_18 = l_Aesop_treeImpl___elambda__5(x_16);
lean_dec(x_16);
x_19 = lean_ctor_get(x_18, 7);
lean_inc(x_19);
lean_dec(x_18);
x_20 = lean_array_size(x_19);
x_21 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16(x_2, x_19, x_20, x_1, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_19);
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_21, 1);
lean_inc(x_23);
lean_dec(x_21);
x_24 = !lean_is_exclusive(x_22);
if (x_24 == 0)
{
size_t x_25; size_t x_26; 
x_25 = 1;
x_26 = lean_usize_add(x_5, x_25);
x_5 = x_26;
x_6 = x_22;
x_13 = x_23;
goto _start;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; size_t x_31; size_t x_32; 
x_28 = lean_ctor_get(x_22, 0);
x_29 = lean_ctor_get(x_22, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_22);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
x_31 = 1;
x_32 = lean_usize_add(x_5, x_31);
x_5 = x_32;
x_6 = x_30;
x_13 = x_23;
goto _start;
}
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; size_t x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; size_t x_47; size_t x_48; 
x_34 = lean_ctor_get(x_6, 0);
x_35 = lean_ctor_get(x_6, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_6);
x_36 = l_Aesop_treeImpl___elambda__5(x_16);
lean_dec(x_16);
x_37 = lean_ctor_get(x_36, 7);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_34);
lean_ctor_set(x_38, 1, x_35);
x_39 = lean_array_size(x_37);
x_40 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16(x_2, x_37, x_39, x_1, x_38, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_37);
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
x_42 = lean_ctor_get(x_40, 1);
lean_inc(x_42);
lean_dec(x_40);
x_43 = lean_ctor_get(x_41, 0);
lean_inc(x_43);
x_44 = lean_ctor_get(x_41, 1);
lean_inc(x_44);
if (lean_is_exclusive(x_41)) {
 lean_ctor_release(x_41, 0);
 lean_ctor_release(x_41, 1);
 x_45 = x_41;
} else {
 lean_dec_ref(x_41);
 x_45 = lean_box(0);
}
if (lean_is_scalar(x_45)) {
 x_46 = lean_alloc_ctor(0, 2, 0);
} else {
 x_46 = x_45;
}
lean_ctor_set(x_46, 0, x_43);
lean_ctor_set(x_46, 1, x_44);
x_47 = 1;
x_48 = lean_usize_add(x_5, x_47);
x_5 = x_48;
x_6 = x_46;
x_13 = x_42;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__18(size_t x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_eq(x_4, x_5);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; size_t x_11; lean_object* x_12; size_t x_13; size_t x_14; 
x_8 = lean_array_uget(x_3, x_4);
x_9 = l_Aesop_treeImpl___elambda__5(x_8);
lean_dec(x_8);
x_10 = lean_ctor_get(x_9, 7);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_array_size(x_10);
lean_inc(x_6);
lean_inc(x_2);
x_12 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__9(x_2, x_6, x_10, x_11, x_1, x_6);
lean_dec(x_10);
lean_dec(x_6);
x_13 = 1;
x_14 = lean_usize_add(x_4, x_13);
x_4 = x_14;
x_6 = x_12;
goto _start;
}
else
{
lean_dec(x_2);
return x_6;
}
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_UnorderedArraySet_empty___at_Aesop_partitionGoalsAndMVars___spec__1;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1(lean_object* x_1, size_t x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
if (x_3 == 0)
{
x_12 = x_4;
x_13 = x_11;
goto block_34;
}
else
{
uint8_t x_35; 
x_35 = lean_nat_dec_le(x_5, x_5);
if (x_35 == 0)
{
x_12 = x_4;
x_13 = x_11;
goto block_34;
}
else
{
size_t x_36; lean_object* x_37; 
x_36 = lean_usize_of_nat(x_5);
lean_inc(x_9);
x_37 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__7(x_2, x_6, x_2, x_36, x_4, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; lean_object* x_39; 
x_38 = lean_ctor_get(x_37, 0);
lean_inc(x_38);
x_39 = lean_ctor_get(x_37, 1);
lean_inc(x_39);
lean_dec(x_37);
x_12 = x_38;
x_13 = x_39;
goto block_34;
}
else
{
uint8_t x_40; 
lean_dec(x_9);
x_40 = !lean_is_exclusive(x_37);
if (x_40 == 0)
{
return x_37;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_37, 0);
x_42 = lean_ctor_get(x_37, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_37);
x_43 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
}
}
block_34:
{
lean_object* x_14; size_t x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_14 = lean_ctor_get(x_1, 7);
x_15 = lean_array_size(x_14);
x_16 = l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___closed__1;
x_17 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__6(x_12, x_14, x_15, x_2, x_16, x_7, x_8, x_9, x_10, x_13);
lean_dec(x_9);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = lean_ctor_get(x_17, 0);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; 
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_12);
lean_ctor_set(x_21, 1, x_19);
lean_ctor_set(x_17, 0, x_21);
return x_17;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_22 = lean_ctor_get(x_19, 0);
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_19);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_12);
lean_ctor_set(x_25, 1, x_24);
lean_ctor_set(x_17, 0, x_25);
return x_17;
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_26 = lean_ctor_get(x_17, 0);
x_27 = lean_ctor_get(x_17, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_17);
x_28 = lean_ctor_get(x_26, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_26, 1);
lean_inc(x_29);
if (lean_is_exclusive(x_26)) {
 lean_ctor_release(x_26, 0);
 lean_ctor_release(x_26, 1);
 x_30 = x_26;
} else {
 lean_dec_ref(x_26);
 x_30 = lean_box(0);
}
if (lean_is_scalar(x_30)) {
 x_31 = lean_alloc_ctor(0, 2, 0);
} else {
 x_31 = x_30;
}
lean_ctor_set(x_31, 0, x_28);
lean_ctor_set(x_31, 1, x_29);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_12);
lean_ctor_set(x_32, 1, x_31);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_27);
return x_33;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__2(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__10(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
return x_11;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_11);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
}
static lean_object* _init_l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1() {
_start:
{
size_t x_1; lean_object* x_2; 
x_1 = 0;
x_2 = lean_box_usize(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; size_t x_14; size_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; uint8_t x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
x_11 = lean_ctor_get(x_1, 2);
lean_inc(x_11);
x_12 = lean_ctor_get(x_1, 3);
lean_inc(x_12);
lean_dec(x_1);
x_13 = lean_ctor_get(x_9, 0);
lean_inc(x_13);
x_14 = lean_array_size(x_13);
x_15 = 0;
x_16 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__1(x_14, x_15, x_13);
x_17 = l_Aesop_getAndIncrementNextRappId___rarg(x_3, x_4, x_5, x_6, x_7, x_8);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = lean_ctor_get(x_9, 2);
lean_inc(x_20);
x_21 = lean_ctor_get(x_9, 1);
lean_inc(x_21);
lean_dec(x_9);
x_22 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1;
x_23 = 0;
x_24 = 0;
x_25 = l_Aesop_UnorderedArraySet_empty___at_Aesop_partitionGoalsAndMVars___spec__1;
lean_inc(x_21);
lean_inc(x_12);
lean_inc(x_16);
lean_inc(x_10);
x_26 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_26, 0, x_18);
lean_ctor_set(x_26, 1, x_10);
lean_ctor_set(x_26, 2, x_22);
lean_ctor_set(x_26, 3, x_11);
lean_ctor_set(x_26, 4, x_20);
lean_ctor_set(x_26, 5, x_16);
lean_ctor_set(x_26, 6, x_12);
lean_ctor_set(x_26, 7, x_21);
lean_ctor_set(x_26, 8, x_25);
lean_ctor_set(x_26, 9, x_25);
lean_ctor_set_uint8(x_26, sizeof(void*)*10, x_23);
lean_ctor_set_uint8(x_26, sizeof(void*)*10 + 1, x_24);
x_27 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_27, 0, x_26);
x_28 = lean_st_mk_ref(x_27, x_19);
x_29 = lean_ctor_get(x_28, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_28, 1);
lean_inc(x_30);
lean_dec(x_28);
x_31 = lean_st_ref_get(x_10, x_30);
x_32 = lean_ctor_get(x_31, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_31, 1);
lean_inc(x_33);
lean_dec(x_31);
x_34 = l_Aesop_treeImpl___elambda__5(x_32);
lean_dec(x_32);
x_35 = lean_ctor_get(x_34, 4);
lean_inc(x_35);
x_36 = lean_unsigned_to_nat(1u);
x_37 = lean_nat_add(x_35, x_36);
lean_dec(x_35);
x_38 = lean_box(0);
x_39 = lean_array_get_size(x_16);
x_40 = lean_unsigned_to_nat(0u);
x_41 = lean_nat_dec_lt(x_40, x_39);
x_42 = l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4;
x_43 = l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1;
x_44 = lean_box(x_41);
lean_inc(x_16);
lean_inc(x_34);
x_45 = lean_alloc_closure((void*)(l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___boxed), 11, 6);
lean_closure_set(x_45, 0, x_34);
lean_closure_set(x_45, 1, x_43);
lean_closure_set(x_45, 2, x_44);
lean_closure_set(x_45, 3, x_42);
lean_closure_set(x_45, 4, x_39);
lean_closure_set(x_45, 5, x_16);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_21);
x_46 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_21, x_45, x_4, x_5, x_6, x_7, x_33);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; double x_53; lean_object* x_54; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_47, 1);
lean_inc(x_48);
x_49 = lean_ctor_get(x_46, 1);
lean_inc(x_49);
lean_dec(x_46);
x_50 = lean_ctor_get(x_47, 0);
lean_inc(x_50);
lean_dec(x_47);
x_51 = lean_ctor_get(x_48, 0);
lean_inc(x_51);
x_52 = lean_ctor_get(x_48, 1);
lean_inc(x_52);
lean_dec(x_48);
x_53 = lean_unbox_float(x_12);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_37);
lean_inc(x_21);
lean_inc(x_10);
x_54 = l___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals(x_52, x_10, x_21, x_53, x_37, x_2, x_3, x_4, x_5, x_6, x_7, x_49);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; size_t x_57; lean_object* x_58; lean_object* x_59; uint8_t x_60; lean_object* x_61; size_t x_62; lean_object* x_63; 
x_55 = lean_ctor_get(x_54, 0);
lean_inc(x_55);
x_56 = lean_ctor_get(x_54, 1);
lean_inc(x_56);
lean_dec(x_54);
x_57 = lean_array_size(x_55);
lean_inc(x_55);
x_58 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__8(x_57, x_15, x_55);
x_59 = lean_array_get_size(x_55);
x_60 = lean_nat_dec_lt(x_40, x_59);
x_61 = lean_ctor_get(x_34, 7);
lean_inc(x_61);
lean_dec(x_34);
x_62 = lean_array_size(x_61);
if (x_60 == 0)
{
lean_dec(x_59);
x_63 = x_50;
goto block_686;
}
else
{
uint8_t x_687; 
x_687 = lean_nat_dec_le(x_59, x_59);
if (x_687 == 0)
{
lean_dec(x_59);
x_63 = x_50;
goto block_686;
}
else
{
size_t x_688; lean_object* x_689; 
x_688 = lean_usize_of_nat(x_59);
lean_dec(x_59);
x_689 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__18(x_15, x_38, x_55, x_15, x_688, x_50);
x_63 = x_689;
goto block_686;
}
}
block_686:
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
x_64 = lean_box_usize(x_62);
x_65 = l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1;
lean_inc(x_61);
x_66 = lean_alloc_closure((void*)(l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__2___boxed), 10, 5);
lean_closure_set(x_66, 0, x_63);
lean_closure_set(x_66, 1, x_61);
lean_closure_set(x_66, 2, x_64);
lean_closure_set(x_66, 3, x_65);
lean_closure_set(x_66, 4, x_22);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_21);
x_67 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_21, x_66, x_4, x_5, x_6, x_7, x_56);
if (lean_obj_tag(x_67) == 0)
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_68 = lean_ctor_get(x_67, 0);
lean_inc(x_68);
x_69 = lean_ctor_get(x_67, 1);
lean_inc(x_69);
lean_dec(x_67);
x_70 = l_Array_append___rarg(x_16, x_58);
lean_dec(x_58);
x_71 = l_Array_append___rarg(x_70, x_68);
x_72 = lean_alloc_closure((void*)(l_Aesop_partitionGoalsAndMVars___boxed), 6, 1);
lean_closure_set(x_72, 0, x_71);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_73 = l_Lean_Meta_SavedState_runMetaM_x27___rarg(x_21, x_72, x_4, x_5, x_6, x_7, x_69);
if (lean_obj_tag(x_73) == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; size_t x_77; double x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; size_t x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; uint8_t x_90; 
x_74 = lean_ctor_get(x_73, 0);
lean_inc(x_74);
x_75 = lean_ctor_get(x_73, 1);
lean_inc(x_75);
lean_dec(x_73);
x_76 = lean_ctor_get(x_74, 0);
lean_inc(x_76);
lean_dec(x_74);
x_77 = lean_array_size(x_76);
x_78 = lean_unbox_float(x_12);
lean_dec(x_12);
lean_inc(x_2);
x_79 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12(x_15, x_78, x_37, x_55, x_57, x_68, x_77, x_15, x_76, x_2, x_3, x_4, x_5, x_6, x_7, x_75);
lean_dec(x_68);
lean_dec(x_55);
x_80 = lean_ctor_get(x_79, 0);
lean_inc(x_80);
x_81 = lean_ctor_get(x_79, 1);
lean_inc(x_81);
lean_dec(x_79);
x_82 = l___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals(x_80);
x_83 = lean_array_size(x_82);
lean_inc(x_29);
x_84 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__15(x_15, x_29, x_83, x_15, x_82, x_2, x_3, x_4, x_5, x_6, x_7, x_81);
x_85 = lean_ctor_get(x_84, 0);
lean_inc(x_85);
x_86 = lean_ctor_get(x_84, 1);
lean_inc(x_86);
lean_dec(x_84);
x_87 = lean_st_ref_take(x_3, x_86);
x_88 = lean_ctor_get(x_87, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_87, 1);
lean_inc(x_89);
lean_dec(x_87);
x_90 = !lean_is_exclusive(x_88);
if (x_90 == 0)
{
lean_object* x_91; lean_object* x_92; uint8_t x_93; 
x_91 = lean_ctor_get(x_88, 6);
lean_ctor_set(x_88, 6, x_42);
x_92 = lean_st_ref_set(x_3, x_88, x_89);
x_93 = !lean_is_exclusive(x_92);
if (x_93 == 0)
{
lean_object* x_94; lean_object* x_95; size_t x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; uint8_t x_105; 
x_94 = lean_ctor_get(x_92, 1);
x_95 = lean_ctor_get(x_92, 0);
lean_dec(x_95);
lean_ctor_set(x_92, 1, x_25);
lean_ctor_set(x_92, 0, x_91);
x_96 = lean_array_size(x_80);
x_97 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17(x_15, x_61, x_80, x_96, x_15, x_92, x_2, x_3, x_4, x_5, x_6, x_7, x_94);
lean_dec(x_61);
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
lean_dec(x_97);
x_100 = lean_ctor_get(x_98, 0);
lean_inc(x_100);
x_101 = lean_ctor_get(x_98, 1);
lean_inc(x_101);
lean_dec(x_98);
x_102 = lean_st_ref_take(x_3, x_99);
x_103 = lean_ctor_get(x_102, 0);
lean_inc(x_103);
x_104 = lean_ctor_get(x_102, 1);
lean_inc(x_104);
lean_dec(x_102);
x_105 = !lean_is_exclusive(x_103);
if (x_105 == 0)
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; uint8_t x_113; 
x_106 = lean_ctor_get(x_103, 6);
lean_dec(x_106);
lean_ctor_set(x_103, 6, x_100);
x_107 = lean_st_ref_set(x_3, x_103, x_104);
x_108 = lean_ctor_get(x_107, 1);
lean_inc(x_108);
lean_dec(x_107);
x_109 = lean_st_ref_take(x_29, x_108);
x_110 = lean_ctor_get(x_109, 0);
lean_inc(x_110);
x_111 = lean_ctor_get(x_109, 1);
lean_inc(x_111);
lean_dec(x_109);
x_112 = l_Aesop_treeImpl___elambda__3(x_110);
lean_dec(x_110);
x_113 = !lean_is_exclusive(x_112);
if (x_113 == 0)
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; uint8_t x_117; 
x_114 = lean_ctor_get(x_112, 2);
lean_dec(x_114);
lean_ctor_set(x_112, 2, x_85);
x_115 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_115, 0, x_112);
x_116 = l_Aesop_treeImpl___elambda__3(x_115);
lean_dec(x_115);
x_117 = !lean_is_exclusive(x_116);
if (x_117 == 0)
{
lean_object* x_118; lean_object* x_119; lean_object* x_120; uint8_t x_121; 
x_118 = lean_ctor_get(x_116, 8);
lean_dec(x_118);
lean_ctor_set(x_116, 8, x_101);
x_119 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_119, 0, x_116);
x_120 = l_Aesop_treeImpl___elambda__3(x_119);
lean_dec(x_119);
x_121 = !lean_is_exclusive(x_120);
if (x_121 == 0)
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; uint8_t x_130; 
x_122 = lean_ctor_get(x_120, 9);
lean_dec(x_122);
lean_ctor_set(x_120, 9, x_51);
x_123 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_123, 0, x_120);
x_124 = lean_st_ref_set(x_29, x_123, x_111);
x_125 = lean_ctor_get(x_124, 1);
lean_inc(x_125);
lean_dec(x_124);
x_126 = lean_st_ref_take(x_10, x_125);
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
x_128 = lean_ctor_get(x_126, 1);
lean_inc(x_128);
lean_dec(x_126);
x_129 = l_Aesop_treeImpl___elambda__5(x_127);
lean_dec(x_127);
x_130 = !lean_is_exclusive(x_129);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; uint8_t x_140; 
x_131 = lean_ctor_get(x_129, 2);
lean_inc(x_29);
x_132 = lean_array_push(x_131, x_29);
lean_ctor_set(x_129, 2, x_132);
x_133 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_133, 0, x_129);
x_134 = lean_st_ref_set(x_10, x_133, x_128);
lean_dec(x_10);
x_135 = lean_ctor_get(x_134, 1);
lean_inc(x_135);
lean_dec(x_134);
x_136 = lean_array_get_size(x_80);
lean_dec(x_80);
x_137 = l_Aesop_incrementNumGoals(x_136, x_2, x_3, x_4, x_5, x_6, x_7, x_135);
lean_dec(x_136);
x_138 = lean_ctor_get(x_137, 1);
lean_inc(x_138);
lean_dec(x_137);
x_139 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_138);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_140 = !lean_is_exclusive(x_139);
if (x_140 == 0)
{
lean_object* x_141; 
x_141 = lean_ctor_get(x_139, 0);
lean_dec(x_141);
lean_ctor_set(x_139, 0, x_29);
return x_139;
}
else
{
lean_object* x_142; lean_object* x_143; 
x_142 = lean_ctor_get(x_139, 1);
lean_inc(x_142);
lean_dec(x_139);
x_143 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_143, 0, x_29);
lean_ctor_set(x_143, 1, x_142);
return x_143;
}
}
else
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; uint8_t x_149; uint8_t x_150; uint8_t x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; uint8_t x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; 
x_144 = lean_ctor_get(x_129, 0);
x_145 = lean_ctor_get(x_129, 1);
x_146 = lean_ctor_get(x_129, 2);
x_147 = lean_ctor_get(x_129, 3);
x_148 = lean_ctor_get(x_129, 4);
x_149 = lean_ctor_get_uint8(x_129, sizeof(void*)*13);
x_150 = lean_ctor_get_uint8(x_129, sizeof(void*)*13 + 1);
x_151 = lean_ctor_get_uint8(x_129, sizeof(void*)*13 + 2);
x_152 = lean_ctor_get(x_129, 5);
x_153 = lean_ctor_get(x_129, 6);
x_154 = lean_ctor_get(x_129, 7);
x_155 = lean_ctor_get(x_129, 8);
x_156 = lean_ctor_get(x_129, 9);
x_157 = lean_ctor_get(x_129, 10);
x_158 = lean_ctor_get_uint8(x_129, sizeof(void*)*13 + 3);
x_159 = lean_ctor_get(x_129, 11);
x_160 = lean_ctor_get(x_129, 12);
lean_inc(x_160);
lean_inc(x_159);
lean_inc(x_157);
lean_inc(x_156);
lean_inc(x_155);
lean_inc(x_154);
lean_inc(x_153);
lean_inc(x_152);
lean_inc(x_148);
lean_inc(x_147);
lean_inc(x_146);
lean_inc(x_145);
lean_inc(x_144);
lean_dec(x_129);
lean_inc(x_29);
x_161 = lean_array_push(x_146, x_29);
x_162 = lean_alloc_ctor(0, 13, 4);
lean_ctor_set(x_162, 0, x_144);
lean_ctor_set(x_162, 1, x_145);
lean_ctor_set(x_162, 2, x_161);
lean_ctor_set(x_162, 3, x_147);
lean_ctor_set(x_162, 4, x_148);
lean_ctor_set(x_162, 5, x_152);
lean_ctor_set(x_162, 6, x_153);
lean_ctor_set(x_162, 7, x_154);
lean_ctor_set(x_162, 8, x_155);
lean_ctor_set(x_162, 9, x_156);
lean_ctor_set(x_162, 10, x_157);
lean_ctor_set(x_162, 11, x_159);
lean_ctor_set(x_162, 12, x_160);
lean_ctor_set_uint8(x_162, sizeof(void*)*13, x_149);
lean_ctor_set_uint8(x_162, sizeof(void*)*13 + 1, x_150);
lean_ctor_set_uint8(x_162, sizeof(void*)*13 + 2, x_151);
lean_ctor_set_uint8(x_162, sizeof(void*)*13 + 3, x_158);
x_163 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_163, 0, x_162);
x_164 = lean_st_ref_set(x_10, x_163, x_128);
lean_dec(x_10);
x_165 = lean_ctor_get(x_164, 1);
lean_inc(x_165);
lean_dec(x_164);
x_166 = lean_array_get_size(x_80);
lean_dec(x_80);
x_167 = l_Aesop_incrementNumGoals(x_166, x_2, x_3, x_4, x_5, x_6, x_7, x_165);
lean_dec(x_166);
x_168 = lean_ctor_get(x_167, 1);
lean_inc(x_168);
lean_dec(x_167);
x_169 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_168);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_170 = lean_ctor_get(x_169, 1);
lean_inc(x_170);
if (lean_is_exclusive(x_169)) {
 lean_ctor_release(x_169, 0);
 lean_ctor_release(x_169, 1);
 x_171 = x_169;
} else {
 lean_dec_ref(x_169);
 x_171 = lean_box(0);
}
if (lean_is_scalar(x_171)) {
 x_172 = lean_alloc_ctor(0, 2, 0);
} else {
 x_172 = x_171;
}
lean_ctor_set(x_172, 0, x_29);
lean_ctor_set(x_172, 1, x_170);
return x_172;
}
}
else
{
lean_object* x_173; lean_object* x_174; lean_object* x_175; uint8_t x_176; uint8_t x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; uint8_t x_197; uint8_t x_198; uint8_t x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; uint8_t x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; lean_object* x_221; 
x_173 = lean_ctor_get(x_120, 0);
x_174 = lean_ctor_get(x_120, 1);
x_175 = lean_ctor_get(x_120, 2);
x_176 = lean_ctor_get_uint8(x_120, sizeof(void*)*10);
x_177 = lean_ctor_get_uint8(x_120, sizeof(void*)*10 + 1);
x_178 = lean_ctor_get(x_120, 3);
x_179 = lean_ctor_get(x_120, 4);
x_180 = lean_ctor_get(x_120, 5);
x_181 = lean_ctor_get(x_120, 6);
x_182 = lean_ctor_get(x_120, 7);
x_183 = lean_ctor_get(x_120, 8);
lean_inc(x_183);
lean_inc(x_182);
lean_inc(x_181);
lean_inc(x_180);
lean_inc(x_179);
lean_inc(x_178);
lean_inc(x_175);
lean_inc(x_174);
lean_inc(x_173);
lean_dec(x_120);
x_184 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_184, 0, x_173);
lean_ctor_set(x_184, 1, x_174);
lean_ctor_set(x_184, 2, x_175);
lean_ctor_set(x_184, 3, x_178);
lean_ctor_set(x_184, 4, x_179);
lean_ctor_set(x_184, 5, x_180);
lean_ctor_set(x_184, 6, x_181);
lean_ctor_set(x_184, 7, x_182);
lean_ctor_set(x_184, 8, x_183);
lean_ctor_set(x_184, 9, x_51);
lean_ctor_set_uint8(x_184, sizeof(void*)*10, x_176);
lean_ctor_set_uint8(x_184, sizeof(void*)*10 + 1, x_177);
x_185 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_185, 0, x_184);
x_186 = lean_st_ref_set(x_29, x_185, x_111);
x_187 = lean_ctor_get(x_186, 1);
lean_inc(x_187);
lean_dec(x_186);
x_188 = lean_st_ref_take(x_10, x_187);
x_189 = lean_ctor_get(x_188, 0);
lean_inc(x_189);
x_190 = lean_ctor_get(x_188, 1);
lean_inc(x_190);
lean_dec(x_188);
x_191 = l_Aesop_treeImpl___elambda__5(x_189);
lean_dec(x_189);
x_192 = lean_ctor_get(x_191, 0);
lean_inc(x_192);
x_193 = lean_ctor_get(x_191, 1);
lean_inc(x_193);
x_194 = lean_ctor_get(x_191, 2);
lean_inc(x_194);
x_195 = lean_ctor_get(x_191, 3);
lean_inc(x_195);
x_196 = lean_ctor_get(x_191, 4);
lean_inc(x_196);
x_197 = lean_ctor_get_uint8(x_191, sizeof(void*)*13);
x_198 = lean_ctor_get_uint8(x_191, sizeof(void*)*13 + 1);
x_199 = lean_ctor_get_uint8(x_191, sizeof(void*)*13 + 2);
x_200 = lean_ctor_get(x_191, 5);
lean_inc(x_200);
x_201 = lean_ctor_get(x_191, 6);
lean_inc(x_201);
x_202 = lean_ctor_get(x_191, 7);
lean_inc(x_202);
x_203 = lean_ctor_get(x_191, 8);
lean_inc(x_203);
x_204 = lean_ctor_get(x_191, 9);
lean_inc(x_204);
x_205 = lean_ctor_get(x_191, 10);
lean_inc(x_205);
x_206 = lean_ctor_get_uint8(x_191, sizeof(void*)*13 + 3);
x_207 = lean_ctor_get(x_191, 11);
lean_inc(x_207);
x_208 = lean_ctor_get(x_191, 12);
lean_inc(x_208);
if (lean_is_exclusive(x_191)) {
 lean_ctor_release(x_191, 0);
 lean_ctor_release(x_191, 1);
 lean_ctor_release(x_191, 2);
 lean_ctor_release(x_191, 3);
 lean_ctor_release(x_191, 4);
 lean_ctor_release(x_191, 5);
 lean_ctor_release(x_191, 6);
 lean_ctor_release(x_191, 7);
 lean_ctor_release(x_191, 8);
 lean_ctor_release(x_191, 9);
 lean_ctor_release(x_191, 10);
 lean_ctor_release(x_191, 11);
 lean_ctor_release(x_191, 12);
 x_209 = x_191;
} else {
 lean_dec_ref(x_191);
 x_209 = lean_box(0);
}
lean_inc(x_29);
x_210 = lean_array_push(x_194, x_29);
if (lean_is_scalar(x_209)) {
 x_211 = lean_alloc_ctor(0, 13, 4);
} else {
 x_211 = x_209;
}
lean_ctor_set(x_211, 0, x_192);
lean_ctor_set(x_211, 1, x_193);
lean_ctor_set(x_211, 2, x_210);
lean_ctor_set(x_211, 3, x_195);
lean_ctor_set(x_211, 4, x_196);
lean_ctor_set(x_211, 5, x_200);
lean_ctor_set(x_211, 6, x_201);
lean_ctor_set(x_211, 7, x_202);
lean_ctor_set(x_211, 8, x_203);
lean_ctor_set(x_211, 9, x_204);
lean_ctor_set(x_211, 10, x_205);
lean_ctor_set(x_211, 11, x_207);
lean_ctor_set(x_211, 12, x_208);
lean_ctor_set_uint8(x_211, sizeof(void*)*13, x_197);
lean_ctor_set_uint8(x_211, sizeof(void*)*13 + 1, x_198);
lean_ctor_set_uint8(x_211, sizeof(void*)*13 + 2, x_199);
lean_ctor_set_uint8(x_211, sizeof(void*)*13 + 3, x_206);
x_212 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_212, 0, x_211);
x_213 = lean_st_ref_set(x_10, x_212, x_190);
lean_dec(x_10);
x_214 = lean_ctor_get(x_213, 1);
lean_inc(x_214);
lean_dec(x_213);
x_215 = lean_array_get_size(x_80);
lean_dec(x_80);
x_216 = l_Aesop_incrementNumGoals(x_215, x_2, x_3, x_4, x_5, x_6, x_7, x_214);
lean_dec(x_215);
x_217 = lean_ctor_get(x_216, 1);
lean_inc(x_217);
lean_dec(x_216);
x_218 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_217);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_219 = lean_ctor_get(x_218, 1);
lean_inc(x_219);
if (lean_is_exclusive(x_218)) {
 lean_ctor_release(x_218, 0);
 lean_ctor_release(x_218, 1);
 x_220 = x_218;
} else {
 lean_dec_ref(x_218);
 x_220 = lean_box(0);
}
if (lean_is_scalar(x_220)) {
 x_221 = lean_alloc_ctor(0, 2, 0);
} else {
 x_221 = x_220;
}
lean_ctor_set(x_221, 0, x_29);
lean_ctor_set(x_221, 1, x_219);
return x_221;
}
}
else
{
lean_object* x_222; lean_object* x_223; lean_object* x_224; uint8_t x_225; uint8_t x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; lean_object* x_235; lean_object* x_236; lean_object* x_237; lean_object* x_238; uint8_t x_239; uint8_t x_240; lean_object* x_241; lean_object* x_242; lean_object* x_243; lean_object* x_244; lean_object* x_245; lean_object* x_246; lean_object* x_247; lean_object* x_248; lean_object* x_249; lean_object* x_250; lean_object* x_251; lean_object* x_252; lean_object* x_253; lean_object* x_254; lean_object* x_255; lean_object* x_256; lean_object* x_257; lean_object* x_258; lean_object* x_259; lean_object* x_260; uint8_t x_261; uint8_t x_262; uint8_t x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; lean_object* x_267; lean_object* x_268; lean_object* x_269; uint8_t x_270; lean_object* x_271; lean_object* x_272; lean_object* x_273; lean_object* x_274; lean_object* x_275; lean_object* x_276; lean_object* x_277; lean_object* x_278; lean_object* x_279; lean_object* x_280; lean_object* x_281; lean_object* x_282; lean_object* x_283; lean_object* x_284; lean_object* x_285; 
x_222 = lean_ctor_get(x_116, 0);
x_223 = lean_ctor_get(x_116, 1);
x_224 = lean_ctor_get(x_116, 2);
x_225 = lean_ctor_get_uint8(x_116, sizeof(void*)*10);
x_226 = lean_ctor_get_uint8(x_116, sizeof(void*)*10 + 1);
x_227 = lean_ctor_get(x_116, 3);
x_228 = lean_ctor_get(x_116, 4);
x_229 = lean_ctor_get(x_116, 5);
x_230 = lean_ctor_get(x_116, 6);
x_231 = lean_ctor_get(x_116, 7);
x_232 = lean_ctor_get(x_116, 9);
lean_inc(x_232);
lean_inc(x_231);
lean_inc(x_230);
lean_inc(x_229);
lean_inc(x_228);
lean_inc(x_227);
lean_inc(x_224);
lean_inc(x_223);
lean_inc(x_222);
lean_dec(x_116);
x_233 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_233, 0, x_222);
lean_ctor_set(x_233, 1, x_223);
lean_ctor_set(x_233, 2, x_224);
lean_ctor_set(x_233, 3, x_227);
lean_ctor_set(x_233, 4, x_228);
lean_ctor_set(x_233, 5, x_229);
lean_ctor_set(x_233, 6, x_230);
lean_ctor_set(x_233, 7, x_231);
lean_ctor_set(x_233, 8, x_101);
lean_ctor_set(x_233, 9, x_232);
lean_ctor_set_uint8(x_233, sizeof(void*)*10, x_225);
lean_ctor_set_uint8(x_233, sizeof(void*)*10 + 1, x_226);
x_234 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_234, 0, x_233);
x_235 = l_Aesop_treeImpl___elambda__3(x_234);
lean_dec(x_234);
x_236 = lean_ctor_get(x_235, 0);
lean_inc(x_236);
x_237 = lean_ctor_get(x_235, 1);
lean_inc(x_237);
x_238 = lean_ctor_get(x_235, 2);
lean_inc(x_238);
x_239 = lean_ctor_get_uint8(x_235, sizeof(void*)*10);
x_240 = lean_ctor_get_uint8(x_235, sizeof(void*)*10 + 1);
x_241 = lean_ctor_get(x_235, 3);
lean_inc(x_241);
x_242 = lean_ctor_get(x_235, 4);
lean_inc(x_242);
x_243 = lean_ctor_get(x_235, 5);
lean_inc(x_243);
x_244 = lean_ctor_get(x_235, 6);
lean_inc(x_244);
x_245 = lean_ctor_get(x_235, 7);
lean_inc(x_245);
x_246 = lean_ctor_get(x_235, 8);
lean_inc(x_246);
if (lean_is_exclusive(x_235)) {
 lean_ctor_release(x_235, 0);
 lean_ctor_release(x_235, 1);
 lean_ctor_release(x_235, 2);
 lean_ctor_release(x_235, 3);
 lean_ctor_release(x_235, 4);
 lean_ctor_release(x_235, 5);
 lean_ctor_release(x_235, 6);
 lean_ctor_release(x_235, 7);
 lean_ctor_release(x_235, 8);
 lean_ctor_release(x_235, 9);
 x_247 = x_235;
} else {
 lean_dec_ref(x_235);
 x_247 = lean_box(0);
}
if (lean_is_scalar(x_247)) {
 x_248 = lean_alloc_ctor(0, 10, 2);
} else {
 x_248 = x_247;
}
lean_ctor_set(x_248, 0, x_236);
lean_ctor_set(x_248, 1, x_237);
lean_ctor_set(x_248, 2, x_238);
lean_ctor_set(x_248, 3, x_241);
lean_ctor_set(x_248, 4, x_242);
lean_ctor_set(x_248, 5, x_243);
lean_ctor_set(x_248, 6, x_244);
lean_ctor_set(x_248, 7, x_245);
lean_ctor_set(x_248, 8, x_246);
lean_ctor_set(x_248, 9, x_51);
lean_ctor_set_uint8(x_248, sizeof(void*)*10, x_239);
lean_ctor_set_uint8(x_248, sizeof(void*)*10 + 1, x_240);
x_249 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_249, 0, x_248);
x_250 = lean_st_ref_set(x_29, x_249, x_111);
x_251 = lean_ctor_get(x_250, 1);
lean_inc(x_251);
lean_dec(x_250);
x_252 = lean_st_ref_take(x_10, x_251);
x_253 = lean_ctor_get(x_252, 0);
lean_inc(x_253);
x_254 = lean_ctor_get(x_252, 1);
lean_inc(x_254);
lean_dec(x_252);
x_255 = l_Aesop_treeImpl___elambda__5(x_253);
lean_dec(x_253);
x_256 = lean_ctor_get(x_255, 0);
lean_inc(x_256);
x_257 = lean_ctor_get(x_255, 1);
lean_inc(x_257);
x_258 = lean_ctor_get(x_255, 2);
lean_inc(x_258);
x_259 = lean_ctor_get(x_255, 3);
lean_inc(x_259);
x_260 = lean_ctor_get(x_255, 4);
lean_inc(x_260);
x_261 = lean_ctor_get_uint8(x_255, sizeof(void*)*13);
x_262 = lean_ctor_get_uint8(x_255, sizeof(void*)*13 + 1);
x_263 = lean_ctor_get_uint8(x_255, sizeof(void*)*13 + 2);
x_264 = lean_ctor_get(x_255, 5);
lean_inc(x_264);
x_265 = lean_ctor_get(x_255, 6);
lean_inc(x_265);
x_266 = lean_ctor_get(x_255, 7);
lean_inc(x_266);
x_267 = lean_ctor_get(x_255, 8);
lean_inc(x_267);
x_268 = lean_ctor_get(x_255, 9);
lean_inc(x_268);
x_269 = lean_ctor_get(x_255, 10);
lean_inc(x_269);
x_270 = lean_ctor_get_uint8(x_255, sizeof(void*)*13 + 3);
x_271 = lean_ctor_get(x_255, 11);
lean_inc(x_271);
x_272 = lean_ctor_get(x_255, 12);
lean_inc(x_272);
if (lean_is_exclusive(x_255)) {
 lean_ctor_release(x_255, 0);
 lean_ctor_release(x_255, 1);
 lean_ctor_release(x_255, 2);
 lean_ctor_release(x_255, 3);
 lean_ctor_release(x_255, 4);
 lean_ctor_release(x_255, 5);
 lean_ctor_release(x_255, 6);
 lean_ctor_release(x_255, 7);
 lean_ctor_release(x_255, 8);
 lean_ctor_release(x_255, 9);
 lean_ctor_release(x_255, 10);
 lean_ctor_release(x_255, 11);
 lean_ctor_release(x_255, 12);
 x_273 = x_255;
} else {
 lean_dec_ref(x_255);
 x_273 = lean_box(0);
}
lean_inc(x_29);
x_274 = lean_array_push(x_258, x_29);
if (lean_is_scalar(x_273)) {
 x_275 = lean_alloc_ctor(0, 13, 4);
} else {
 x_275 = x_273;
}
lean_ctor_set(x_275, 0, x_256);
lean_ctor_set(x_275, 1, x_257);
lean_ctor_set(x_275, 2, x_274);
lean_ctor_set(x_275, 3, x_259);
lean_ctor_set(x_275, 4, x_260);
lean_ctor_set(x_275, 5, x_264);
lean_ctor_set(x_275, 6, x_265);
lean_ctor_set(x_275, 7, x_266);
lean_ctor_set(x_275, 8, x_267);
lean_ctor_set(x_275, 9, x_268);
lean_ctor_set(x_275, 10, x_269);
lean_ctor_set(x_275, 11, x_271);
lean_ctor_set(x_275, 12, x_272);
lean_ctor_set_uint8(x_275, sizeof(void*)*13, x_261);
lean_ctor_set_uint8(x_275, sizeof(void*)*13 + 1, x_262);
lean_ctor_set_uint8(x_275, sizeof(void*)*13 + 2, x_263);
lean_ctor_set_uint8(x_275, sizeof(void*)*13 + 3, x_270);
x_276 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_276, 0, x_275);
x_277 = lean_st_ref_set(x_10, x_276, x_254);
lean_dec(x_10);
x_278 = lean_ctor_get(x_277, 1);
lean_inc(x_278);
lean_dec(x_277);
x_279 = lean_array_get_size(x_80);
lean_dec(x_80);
x_280 = l_Aesop_incrementNumGoals(x_279, x_2, x_3, x_4, x_5, x_6, x_7, x_278);
lean_dec(x_279);
x_281 = lean_ctor_get(x_280, 1);
lean_inc(x_281);
lean_dec(x_280);
x_282 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_281);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_283 = lean_ctor_get(x_282, 1);
lean_inc(x_283);
if (lean_is_exclusive(x_282)) {
 lean_ctor_release(x_282, 0);
 lean_ctor_release(x_282, 1);
 x_284 = x_282;
} else {
 lean_dec_ref(x_282);
 x_284 = lean_box(0);
}
if (lean_is_scalar(x_284)) {
 x_285 = lean_alloc_ctor(0, 2, 0);
} else {
 x_285 = x_284;
}
lean_ctor_set(x_285, 0, x_29);
lean_ctor_set(x_285, 1, x_283);
return x_285;
}
}
else
{
lean_object* x_286; lean_object* x_287; uint8_t x_288; uint8_t x_289; lean_object* x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; lean_object* x_296; lean_object* x_297; lean_object* x_298; lean_object* x_299; lean_object* x_300; lean_object* x_301; lean_object* x_302; uint8_t x_303; uint8_t x_304; lean_object* x_305; lean_object* x_306; lean_object* x_307; lean_object* x_308; lean_object* x_309; lean_object* x_310; lean_object* x_311; lean_object* x_312; lean_object* x_313; lean_object* x_314; lean_object* x_315; lean_object* x_316; lean_object* x_317; uint8_t x_318; uint8_t x_319; lean_object* x_320; lean_object* x_321; lean_object* x_322; lean_object* x_323; lean_object* x_324; lean_object* x_325; lean_object* x_326; lean_object* x_327; lean_object* x_328; lean_object* x_329; lean_object* x_330; lean_object* x_331; lean_object* x_332; lean_object* x_333; lean_object* x_334; lean_object* x_335; lean_object* x_336; lean_object* x_337; lean_object* x_338; lean_object* x_339; uint8_t x_340; uint8_t x_341; uint8_t x_342; lean_object* x_343; lean_object* x_344; lean_object* x_345; lean_object* x_346; lean_object* x_347; lean_object* x_348; uint8_t x_349; lean_object* x_350; lean_object* x_351; lean_object* x_352; lean_object* x_353; lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; lean_object* x_358; lean_object* x_359; lean_object* x_360; lean_object* x_361; lean_object* x_362; lean_object* x_363; lean_object* x_364; 
x_286 = lean_ctor_get(x_112, 0);
x_287 = lean_ctor_get(x_112, 1);
x_288 = lean_ctor_get_uint8(x_112, sizeof(void*)*10);
x_289 = lean_ctor_get_uint8(x_112, sizeof(void*)*10 + 1);
x_290 = lean_ctor_get(x_112, 3);
x_291 = lean_ctor_get(x_112, 4);
x_292 = lean_ctor_get(x_112, 5);
x_293 = lean_ctor_get(x_112, 6);
x_294 = lean_ctor_get(x_112, 7);
x_295 = lean_ctor_get(x_112, 8);
x_296 = lean_ctor_get(x_112, 9);
lean_inc(x_296);
lean_inc(x_295);
lean_inc(x_294);
lean_inc(x_293);
lean_inc(x_292);
lean_inc(x_291);
lean_inc(x_290);
lean_inc(x_287);
lean_inc(x_286);
lean_dec(x_112);
x_297 = lean_alloc_ctor(0, 10, 2);
lean_ctor_set(x_297, 0, x_286);
lean_ctor_set(x_297, 1, x_287);
lean_ctor_set(x_297, 2, x_85);
lean_ctor_set(x_297, 3, x_290);
lean_ctor_set(x_297, 4, x_291);
lean_ctor_set(x_297, 5, x_292);
lean_ctor_set(x_297, 6, x_293);
lean_ctor_set(x_297, 7, x_294);
lean_ctor_set(x_297, 8, x_295);
lean_ctor_set(x_297, 9, x_296);
lean_ctor_set_uint8(x_297, sizeof(void*)*10, x_288);
lean_ctor_set_uint8(x_297, sizeof(void*)*10 + 1, x_289);
x_298 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_298, 0, x_297);
x_299 = l_Aesop_treeImpl___elambda__3(x_298);
lean_dec(x_298);
x_300 = lean_ctor_get(x_299, 0);
lean_inc(x_300);
x_301 = lean_ctor_get(x_299, 1);
lean_inc(x_301);
x_302 = lean_ctor_get(x_299, 2);
lean_inc(x_302);
x_303 = lean_ctor_get_uint8(x_299, sizeof(void*)*10);
x_304 = lean_ctor_get_uint8(x_299, sizeof(void*)*10 + 1);
x_305 = lean_ctor_get(x_299, 3);
lean_inc(x_305);
x_306 = lean_ctor_get(x_299, 4);
lean_inc(x_306);
x_307 = lean_ctor_get(x_299, 5);
lean_inc(x_307);
x_308 = lean_ctor_get(x_299, 6);
lean_inc(x_308);
x_309 = lean_ctor_get(x_299, 7);
lean_inc(x_309);
x_310 = lean_ctor_get(x_299, 9);
lean_inc(x_310);
if (lean_is_exclusive(x_299)) {
 lean_ctor_release(x_299, 0);
 lean_ctor_release(x_299, 1);
 lean_ctor_release(x_299, 2);
 lean_ctor_release(x_299, 3);
 lean_ctor_release(x_299, 4);
 lean_ctor_release(x_299, 5);
 lean_ctor_release(x_299, 6);
 lean_ctor_release(x_299, 7);
 lean_ctor_release(x_299, 8);
 lean_ctor_release(x_299, 9);
 x_311 = x_299;
} else {
 lean_dec_ref(x_299);
 x_311 = lean_box(0);
}
if (lean_is_scalar(x_311)) {
 x_312 = lean_alloc_ctor(0, 10, 2);
} else {
 x_312 = x_311;
}
lean_ctor_set(x_312, 0, x_300);
lean_ctor_set(x_312, 1, x_301);
lean_ctor_set(x_312, 2, x_302);
lean_ctor_set(x_312, 3, x_305);
lean_ctor_set(x_312, 4, x_306);
lean_ctor_set(x_312, 5, x_307);
lean_ctor_set(x_312, 6, x_308);
lean_ctor_set(x_312, 7, x_309);
lean_ctor_set(x_312, 8, x_101);
lean_ctor_set(x_312, 9, x_310);
lean_ctor_set_uint8(x_312, sizeof(void*)*10, x_303);
lean_ctor_set_uint8(x_312, sizeof(void*)*10 + 1, x_304);
x_313 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_313, 0, x_312);
x_314 = l_Aesop_treeImpl___elambda__3(x_313);
lean_dec(x_313);
x_315 = lean_ctor_get(x_314, 0);
lean_inc(x_315);
x_316 = lean_ctor_get(x_314, 1);
lean_inc(x_316);
x_317 = lean_ctor_get(x_314, 2);
lean_inc(x_317);
x_318 = lean_ctor_get_uint8(x_314, sizeof(void*)*10);
x_319 = lean_ctor_get_uint8(x_314, sizeof(void*)*10 + 1);
x_320 = lean_ctor_get(x_314, 3);
lean_inc(x_320);
x_321 = lean_ctor_get(x_314, 4);
lean_inc(x_321);
x_322 = lean_ctor_get(x_314, 5);
lean_inc(x_322);
x_323 = lean_ctor_get(x_314, 6);
lean_inc(x_323);
x_324 = lean_ctor_get(x_314, 7);
lean_inc(x_324);
x_325 = lean_ctor_get(x_314, 8);
lean_inc(x_325);
if (lean_is_exclusive(x_314)) {
 lean_ctor_release(x_314, 0);
 lean_ctor_release(x_314, 1);
 lean_ctor_release(x_314, 2);
 lean_ctor_release(x_314, 3);
 lean_ctor_release(x_314, 4);
 lean_ctor_release(x_314, 5);
 lean_ctor_release(x_314, 6);
 lean_ctor_release(x_314, 7);
 lean_ctor_release(x_314, 8);
 lean_ctor_release(x_314, 9);
 x_326 = x_314;
} else {
 lean_dec_ref(x_314);
 x_326 = lean_box(0);
}
if (lean_is_scalar(x_326)) {
 x_327 = lean_alloc_ctor(0, 10, 2);
} else {
 x_327 = x_326;
}
lean_ctor_set(x_327, 0, x_315);
lean_ctor_set(x_327, 1, x_316);
lean_ctor_set(x_327, 2, x_317);
lean_ctor_set(x_327, 3, x_320);
lean_ctor_set(x_327, 4, x_321);
lean_ctor_set(x_327, 5, x_322);
lean_ctor_set(x_327, 6, x_323);
lean_ctor_set(x_327, 7, x_324);
lean_ctor_set(x_327, 8, x_325);
lean_ctor_set(x_327, 9, x_51);
lean_ctor_set_uint8(x_327, sizeof(void*)*10, x_318);
lean_ctor_set_uint8(x_327, sizeof(void*)*10 + 1, x_319);
x_328 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_328, 0, x_327);
x_329 = lean_st_ref_set(x_29, x_328, x_111);
x_330 = lean_ctor_get(x_329, 1);
lean_inc(x_330);
lean_dec(x_329);
x_331 = lean_st_ref_take(x_10, x_330);
x_332 = lean_ctor_get(x_331, 0);
lean_inc(x_332);
x_333 = lean_ctor_get(x_331, 1);
lean_inc(x_333);
lean_dec(x_331);
x_334 = l_Aesop_treeImpl___elambda__5(x_332);
lean_dec(x_332);
x_335 = lean_ctor_get(x_334, 0);
lean_inc(x_335);
x_336 = lean_ctor_get(x_334, 1);
lean_inc(x_336);
x_337 = lean_ctor_get(x_334, 2);
lean_inc(x_337);
x_338 = lean_ctor_get(x_334, 3);
lean_inc(x_338);
x_339 = lean_ctor_get(x_334, 4);
lean_inc(x_339);
x_340 = lean_ctor_get_uint8(x_334, sizeof(void*)*13);
x_341 = lean_ctor_get_uint8(x_334, sizeof(void*)*13 + 1);
x_342 = lean_ctor_get_uint8(x_334, sizeof(void*)*13 + 2);
x_343 = lean_ctor_get(x_334, 5);
lean_inc(x_343);
x_344 = lean_ctor_get(x_334, 6);
lean_inc(x_344);
x_345 = lean_ctor_get(x_334, 7);
lean_inc(x_345);
x_346 = lean_ctor_get(x_334, 8);
lean_inc(x_346);
x_347 = lean_ctor_get(x_334, 9);
lean_inc(x_347);
x_348 = lean_ctor_get(x_334, 10);
lean_inc(x_348);
x_349 = lean_ctor_get_uint8(x_334, sizeof(void*)*13 + 3);
x_350 = lean_ctor_get(x_334, 11);
lean_inc(x_350);
x_351 = lean_ctor_get(x_334, 12);
lean_inc(x_351);
if (lean_is_exclusive(x_334)) {
 lean_ctor_release(x_334, 0);
 lean_ctor_release(x_334, 1);
 lean_ctor_release(x_334, 2);
 lean_ctor_release(x_334, 3);
 lean_ctor_release(x_334, 4);
 lean_ctor_release(x_334, 5);
 lean_ctor_release(x_334, 6);
 lean_ctor_release(x_334, 7);
 lean_ctor_release(x_334, 8);
 lean_ctor_release(x_334, 9);
 lean_ctor_release(x_334, 10);
 lean_ctor_release(x_334, 11);
 lean_ctor_release(x_334, 12);
 x_352 = x_334;
} else {
 lean_dec_ref(x_334);
 x_352 = lean_box(0);
}
lean_inc(x_29);
x_353 = lean_array_push(x_337, x_29);
if (lean_is_scalar(x_352)) {
 x_354 = lean_alloc_ctor(0, 13, 4);
} else {
 x_354 = x_352;
}
lean_ctor_set(x_354, 0, x_335);
lean_ctor_set(x_354, 1, x_336);
lean_ctor_set(x_354, 2, x_353);
lean_ctor_set(x_354, 3, x_338);
lean_ctor_set(x_354, 4, x_339);
lean_ctor_set(x_354, 5, x_343);
lean_ctor_set(x_354, 6, x_344);
lean_ctor_set(x_354, 7, x_345);
lean_ctor_set(x_354, 8, x_346);
lean_ctor_set(x_354, 9, x_347);
lean_ctor_set(x_354, 10, x_348);
lean_ctor_set(x_354, 11, x_350);
lean_ctor_set(x_354, 12, x_351);
lean_ctor_set_uint8(x_354, sizeof(void*)*13, x_340);
lean_ctor_set_uint8(x_354, sizeof(void*)*13 + 1, x_341);
lean_ctor_set_uint8(x_354, sizeof(void*)*13 + 2, x_342);
lean_ctor_set_uint8(x_354, sizeof(void*)*13 + 3, x_349);
x_355 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_355, 0, x_354);
x_356 = lean_st_ref_set(x_10, x_355, x_333);
lean_dec(x_10);
x_357 = lean_ctor_get(x_356, 1);
lean_inc(x_357);
lean_dec(x_356);
x_358 = lean_array_get_size(x_80);
lean_dec(x_80);
x_359 = l_Aesop_incrementNumGoals(x_358, x_2, x_3, x_4, x_5, x_6, x_7, x_357);
lean_dec(x_358);
x_360 = lean_ctor_get(x_359, 1);
lean_inc(x_360);
lean_dec(x_359);
x_361 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_360);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_362 = lean_ctor_get(x_361, 1);
lean_inc(x_362);
if (lean_is_exclusive(x_361)) {
 lean_ctor_release(x_361, 0);
 lean_ctor_release(x_361, 1);
 x_363 = x_361;
} else {
 lean_dec_ref(x_361);
 x_363 = lean_box(0);
}
if (lean_is_scalar(x_363)) {
 x_364 = lean_alloc_ctor(0, 2, 0);
} else {
 x_364 = x_363;
}
lean_ctor_set(x_364, 0, x_29);
lean_ctor_set(x_364, 1, x_362);
return x_364;
}
}
else
{
lean_object* x_365; lean_object* x_366; lean_object* x_367; lean_object* x_368; lean_object* x_369; lean_object* x_370; lean_object* x_371; lean_object* x_372; lean_object* x_373; lean_object* x_374; lean_object* x_375; lean_object* x_376; lean_object* x_377; lean_object* x_378; lean_object* x_379; uint8_t x_380; uint8_t x_381; lean_object* x_382; lean_object* x_383; lean_object* x_384; lean_object* x_385; lean_object* x_386; lean_object* x_387; lean_object* x_388; lean_object* x_389; lean_object* x_390; lean_object* x_391; lean_object* x_392; lean_object* x_393; lean_object* x_394; lean_object* x_395; uint8_t x_396; uint8_t x_397; lean_object* x_398; lean_object* x_399; lean_object* x_400; lean_object* x_401; lean_object* x_402; lean_object* x_403; lean_object* x_404; lean_object* x_405; lean_object* x_406; lean_object* x_407; lean_object* x_408; lean_object* x_409; lean_object* x_410; uint8_t x_411; uint8_t x_412; lean_object* x_413; lean_object* x_414; lean_object* x_415; lean_object* x_416; lean_object* x_417; lean_object* x_418; lean_object* x_419; lean_object* x_420; lean_object* x_421; lean_object* x_422; lean_object* x_423; lean_object* x_424; lean_object* x_425; lean_object* x_426; lean_object* x_427; lean_object* x_428; lean_object* x_429; lean_object* x_430; lean_object* x_431; lean_object* x_432; uint8_t x_433; uint8_t x_434; uint8_t x_435; lean_object* x_436; lean_object* x_437; lean_object* x_438; lean_object* x_439; lean_object* x_440; lean_object* x_441; uint8_t x_442; lean_object* x_443; lean_object* x_444; lean_object* x_445; lean_object* x_446; lean_object* x_447; lean_object* x_448; lean_object* x_449; lean_object* x_450; lean_object* x_451; lean_object* x_452; lean_object* x_453; lean_object* x_454; lean_object* x_455; lean_object* x_456; lean_object* x_457; 
x_365 = lean_ctor_get(x_103, 0);
x_366 = lean_ctor_get(x_103, 1);
x_367 = lean_ctor_get(x_103, 2);
x_368 = lean_ctor_get(x_103, 3);
x_369 = lean_ctor_get(x_103, 4);
x_370 = lean_ctor_get(x_103, 5);
lean_inc(x_370);
lean_inc(x_369);
lean_inc(x_368);
lean_inc(x_367);
lean_inc(x_366);
lean_inc(x_365);
lean_dec(x_103);
x_371 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_371, 0, x_365);
lean_ctor_set(x_371, 1, x_366);
lean_ctor_set(x_371, 2, x_367);
lean_ctor_set(x_371, 3, x_368);
lean_ctor_set(x_371, 4, x_369);
lean_ctor_set(x_371, 5, x_370);
lean_ctor_set(x_371, 6, x_100);
x_372 = lean_st_ref_set(x_3, x_371, x_104);
x_373 = lean_ctor_get(x_372, 1);
lean_inc(x_373);
lean_dec(x_372);
x_374 = lean_st_ref_take(x_29, x_373);
x_375 = lean_ctor_get(x_374, 0);
lean_inc(x_375);
x_376 = lean_ctor_get(x_374, 1);
lean_inc(x_376);
lean_dec(x_374);
x_377 = l_Aesop_treeImpl___elambda__3(x_375);
lean_dec(x_375);
x_378 = lean_ctor_get(x_377, 0);
lean_inc(x_378);
x_379 = lean_ctor_get(x_377, 1);
lean_inc(x_379);
x_380 = lean_ctor_get_uint8(x_377, sizeof(void*)*10);
x_381 = lean_ctor_get_uint8(x_377, sizeof(void*)*10 + 1);
x_382 = lean_ctor_get(x_377, 3);
lean_inc(x_382);
x_383 = lean_ctor_get(x_377, 4);
lean_inc(x_383);
x_384 = lean_ctor_get(x_377, 5);
lean_inc(x_384);
x_385 = lean_ctor_get(x_377, 6);
lean_inc(x_385);
x_386 = lean_ctor_get(x_377, 7);
lean_inc(x_386);
x_387 = lean_ctor_get(x_377, 8);
lean_inc(x_387);
x_388 = lean_ctor_get(x_377, 9);
lean_inc(x_388);
if (lean_is_exclusive(x_377)) {
 lean_ctor_release(x_377, 0);
 lean_ctor_release(x_377, 1);
 lean_ctor_release(x_377, 2);
 lean_ctor_release(x_377, 3);
 lean_ctor_release(x_377, 4);
 lean_ctor_release(x_377, 5);
 lean_ctor_release(x_377, 6);
 lean_ctor_release(x_377, 7);
 lean_ctor_release(x_377, 8);
 lean_ctor_release(x_377, 9);
 x_389 = x_377;
} else {
 lean_dec_ref(x_377);
 x_389 = lean_box(0);
}
if (lean_is_scalar(x_389)) {
 x_390 = lean_alloc_ctor(0, 10, 2);
} else {
 x_390 = x_389;
}
lean_ctor_set(x_390, 0, x_378);
lean_ctor_set(x_390, 1, x_379);
lean_ctor_set(x_390, 2, x_85);
lean_ctor_set(x_390, 3, x_382);
lean_ctor_set(x_390, 4, x_383);
lean_ctor_set(x_390, 5, x_384);
lean_ctor_set(x_390, 6, x_385);
lean_ctor_set(x_390, 7, x_386);
lean_ctor_set(x_390, 8, x_387);
lean_ctor_set(x_390, 9, x_388);
lean_ctor_set_uint8(x_390, sizeof(void*)*10, x_380);
lean_ctor_set_uint8(x_390, sizeof(void*)*10 + 1, x_381);
x_391 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_391, 0, x_390);
x_392 = l_Aesop_treeImpl___elambda__3(x_391);
lean_dec(x_391);
x_393 = lean_ctor_get(x_392, 0);
lean_inc(x_393);
x_394 = lean_ctor_get(x_392, 1);
lean_inc(x_394);
x_395 = lean_ctor_get(x_392, 2);
lean_inc(x_395);
x_396 = lean_ctor_get_uint8(x_392, sizeof(void*)*10);
x_397 = lean_ctor_get_uint8(x_392, sizeof(void*)*10 + 1);
x_398 = lean_ctor_get(x_392, 3);
lean_inc(x_398);
x_399 = lean_ctor_get(x_392, 4);
lean_inc(x_399);
x_400 = lean_ctor_get(x_392, 5);
lean_inc(x_400);
x_401 = lean_ctor_get(x_392, 6);
lean_inc(x_401);
x_402 = lean_ctor_get(x_392, 7);
lean_inc(x_402);
x_403 = lean_ctor_get(x_392, 9);
lean_inc(x_403);
if (lean_is_exclusive(x_392)) {
 lean_ctor_release(x_392, 0);
 lean_ctor_release(x_392, 1);
 lean_ctor_release(x_392, 2);
 lean_ctor_release(x_392, 3);
 lean_ctor_release(x_392, 4);
 lean_ctor_release(x_392, 5);
 lean_ctor_release(x_392, 6);
 lean_ctor_release(x_392, 7);
 lean_ctor_release(x_392, 8);
 lean_ctor_release(x_392, 9);
 x_404 = x_392;
} else {
 lean_dec_ref(x_392);
 x_404 = lean_box(0);
}
if (lean_is_scalar(x_404)) {
 x_405 = lean_alloc_ctor(0, 10, 2);
} else {
 x_405 = x_404;
}
lean_ctor_set(x_405, 0, x_393);
lean_ctor_set(x_405, 1, x_394);
lean_ctor_set(x_405, 2, x_395);
lean_ctor_set(x_405, 3, x_398);
lean_ctor_set(x_405, 4, x_399);
lean_ctor_set(x_405, 5, x_400);
lean_ctor_set(x_405, 6, x_401);
lean_ctor_set(x_405, 7, x_402);
lean_ctor_set(x_405, 8, x_101);
lean_ctor_set(x_405, 9, x_403);
lean_ctor_set_uint8(x_405, sizeof(void*)*10, x_396);
lean_ctor_set_uint8(x_405, sizeof(void*)*10 + 1, x_397);
x_406 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_406, 0, x_405);
x_407 = l_Aesop_treeImpl___elambda__3(x_406);
lean_dec(x_406);
x_408 = lean_ctor_get(x_407, 0);
lean_inc(x_408);
x_409 = lean_ctor_get(x_407, 1);
lean_inc(x_409);
x_410 = lean_ctor_get(x_407, 2);
lean_inc(x_410);
x_411 = lean_ctor_get_uint8(x_407, sizeof(void*)*10);
x_412 = lean_ctor_get_uint8(x_407, sizeof(void*)*10 + 1);
x_413 = lean_ctor_get(x_407, 3);
lean_inc(x_413);
x_414 = lean_ctor_get(x_407, 4);
lean_inc(x_414);
x_415 = lean_ctor_get(x_407, 5);
lean_inc(x_415);
x_416 = lean_ctor_get(x_407, 6);
lean_inc(x_416);
x_417 = lean_ctor_get(x_407, 7);
lean_inc(x_417);
x_418 = lean_ctor_get(x_407, 8);
lean_inc(x_418);
if (lean_is_exclusive(x_407)) {
 lean_ctor_release(x_407, 0);
 lean_ctor_release(x_407, 1);
 lean_ctor_release(x_407, 2);
 lean_ctor_release(x_407, 3);
 lean_ctor_release(x_407, 4);
 lean_ctor_release(x_407, 5);
 lean_ctor_release(x_407, 6);
 lean_ctor_release(x_407, 7);
 lean_ctor_release(x_407, 8);
 lean_ctor_release(x_407, 9);
 x_419 = x_407;
} else {
 lean_dec_ref(x_407);
 x_419 = lean_box(0);
}
if (lean_is_scalar(x_419)) {
 x_420 = lean_alloc_ctor(0, 10, 2);
} else {
 x_420 = x_419;
}
lean_ctor_set(x_420, 0, x_408);
lean_ctor_set(x_420, 1, x_409);
lean_ctor_set(x_420, 2, x_410);
lean_ctor_set(x_420, 3, x_413);
lean_ctor_set(x_420, 4, x_414);
lean_ctor_set(x_420, 5, x_415);
lean_ctor_set(x_420, 6, x_416);
lean_ctor_set(x_420, 7, x_417);
lean_ctor_set(x_420, 8, x_418);
lean_ctor_set(x_420, 9, x_51);
lean_ctor_set_uint8(x_420, sizeof(void*)*10, x_411);
lean_ctor_set_uint8(x_420, sizeof(void*)*10 + 1, x_412);
x_421 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_421, 0, x_420);
x_422 = lean_st_ref_set(x_29, x_421, x_376);
x_423 = lean_ctor_get(x_422, 1);
lean_inc(x_423);
lean_dec(x_422);
x_424 = lean_st_ref_take(x_10, x_423);
x_425 = lean_ctor_get(x_424, 0);
lean_inc(x_425);
x_426 = lean_ctor_get(x_424, 1);
lean_inc(x_426);
lean_dec(x_424);
x_427 = l_Aesop_treeImpl___elambda__5(x_425);
lean_dec(x_425);
x_428 = lean_ctor_get(x_427, 0);
lean_inc(x_428);
x_429 = lean_ctor_get(x_427, 1);
lean_inc(x_429);
x_430 = lean_ctor_get(x_427, 2);
lean_inc(x_430);
x_431 = lean_ctor_get(x_427, 3);
lean_inc(x_431);
x_432 = lean_ctor_get(x_427, 4);
lean_inc(x_432);
x_433 = lean_ctor_get_uint8(x_427, sizeof(void*)*13);
x_434 = lean_ctor_get_uint8(x_427, sizeof(void*)*13 + 1);
x_435 = lean_ctor_get_uint8(x_427, sizeof(void*)*13 + 2);
x_436 = lean_ctor_get(x_427, 5);
lean_inc(x_436);
x_437 = lean_ctor_get(x_427, 6);
lean_inc(x_437);
x_438 = lean_ctor_get(x_427, 7);
lean_inc(x_438);
x_439 = lean_ctor_get(x_427, 8);
lean_inc(x_439);
x_440 = lean_ctor_get(x_427, 9);
lean_inc(x_440);
x_441 = lean_ctor_get(x_427, 10);
lean_inc(x_441);
x_442 = lean_ctor_get_uint8(x_427, sizeof(void*)*13 + 3);
x_443 = lean_ctor_get(x_427, 11);
lean_inc(x_443);
x_444 = lean_ctor_get(x_427, 12);
lean_inc(x_444);
if (lean_is_exclusive(x_427)) {
 lean_ctor_release(x_427, 0);
 lean_ctor_release(x_427, 1);
 lean_ctor_release(x_427, 2);
 lean_ctor_release(x_427, 3);
 lean_ctor_release(x_427, 4);
 lean_ctor_release(x_427, 5);
 lean_ctor_release(x_427, 6);
 lean_ctor_release(x_427, 7);
 lean_ctor_release(x_427, 8);
 lean_ctor_release(x_427, 9);
 lean_ctor_release(x_427, 10);
 lean_ctor_release(x_427, 11);
 lean_ctor_release(x_427, 12);
 x_445 = x_427;
} else {
 lean_dec_ref(x_427);
 x_445 = lean_box(0);
}
lean_inc(x_29);
x_446 = lean_array_push(x_430, x_29);
if (lean_is_scalar(x_445)) {
 x_447 = lean_alloc_ctor(0, 13, 4);
} else {
 x_447 = x_445;
}
lean_ctor_set(x_447, 0, x_428);
lean_ctor_set(x_447, 1, x_429);
lean_ctor_set(x_447, 2, x_446);
lean_ctor_set(x_447, 3, x_431);
lean_ctor_set(x_447, 4, x_432);
lean_ctor_set(x_447, 5, x_436);
lean_ctor_set(x_447, 6, x_437);
lean_ctor_set(x_447, 7, x_438);
lean_ctor_set(x_447, 8, x_439);
lean_ctor_set(x_447, 9, x_440);
lean_ctor_set(x_447, 10, x_441);
lean_ctor_set(x_447, 11, x_443);
lean_ctor_set(x_447, 12, x_444);
lean_ctor_set_uint8(x_447, sizeof(void*)*13, x_433);
lean_ctor_set_uint8(x_447, sizeof(void*)*13 + 1, x_434);
lean_ctor_set_uint8(x_447, sizeof(void*)*13 + 2, x_435);
lean_ctor_set_uint8(x_447, sizeof(void*)*13 + 3, x_442);
x_448 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_448, 0, x_447);
x_449 = lean_st_ref_set(x_10, x_448, x_426);
lean_dec(x_10);
x_450 = lean_ctor_get(x_449, 1);
lean_inc(x_450);
lean_dec(x_449);
x_451 = lean_array_get_size(x_80);
lean_dec(x_80);
x_452 = l_Aesop_incrementNumGoals(x_451, x_2, x_3, x_4, x_5, x_6, x_7, x_450);
lean_dec(x_451);
x_453 = lean_ctor_get(x_452, 1);
lean_inc(x_453);
lean_dec(x_452);
x_454 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_453);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_455 = lean_ctor_get(x_454, 1);
lean_inc(x_455);
if (lean_is_exclusive(x_454)) {
 lean_ctor_release(x_454, 0);
 lean_ctor_release(x_454, 1);
 x_456 = x_454;
} else {
 lean_dec_ref(x_454);
 x_456 = lean_box(0);
}
if (lean_is_scalar(x_456)) {
 x_457 = lean_alloc_ctor(0, 2, 0);
} else {
 x_457 = x_456;
}
lean_ctor_set(x_457, 0, x_29);
lean_ctor_set(x_457, 1, x_455);
return x_457;
}
}
else
{
lean_object* x_458; lean_object* x_459; size_t x_460; lean_object* x_461; lean_object* x_462; lean_object* x_463; lean_object* x_464; lean_object* x_465; lean_object* x_466; lean_object* x_467; lean_object* x_468; lean_object* x_469; lean_object* x_470; lean_object* x_471; lean_object* x_472; lean_object* x_473; lean_object* x_474; lean_object* x_475; lean_object* x_476; lean_object* x_477; lean_object* x_478; lean_object* x_479; lean_object* x_480; lean_object* x_481; lean_object* x_482; lean_object* x_483; lean_object* x_484; uint8_t x_485; uint8_t x_486; lean_object* x_487; lean_object* x_488; lean_object* x_489; lean_object* x_490; lean_object* x_491; lean_object* x_492; lean_object* x_493; lean_object* x_494; lean_object* x_495; lean_object* x_496; lean_object* x_497; lean_object* x_498; lean_object* x_499; lean_object* x_500; uint8_t x_501; uint8_t x_502; lean_object* x_503; lean_object* x_504; lean_object* x_505; lean_object* x_506; lean_object* x_507; lean_object* x_508; lean_object* x_509; lean_object* x_510; lean_object* x_511; lean_object* x_512; lean_object* x_513; lean_object* x_514; lean_object* x_515; uint8_t x_516; uint8_t x_517; lean_object* x_518; lean_object* x_519; lean_object* x_520; lean_object* x_521; lean_object* x_522; lean_object* x_523; lean_object* x_524; lean_object* x_525; lean_object* x_526; lean_object* x_527; lean_object* x_528; lean_object* x_529; lean_object* x_530; lean_object* x_531; lean_object* x_532; lean_object* x_533; lean_object* x_534; lean_object* x_535; lean_object* x_536; lean_object* x_537; uint8_t x_538; uint8_t x_539; uint8_t x_540; lean_object* x_541; lean_object* x_542; lean_object* x_543; lean_object* x_544; lean_object* x_545; lean_object* x_546; uint8_t x_547; lean_object* x_548; lean_object* x_549; lean_object* x_550; lean_object* x_551; lean_object* x_552; lean_object* x_553; lean_object* x_554; lean_object* x_555; lean_object* x_556; lean_object* x_557; lean_object* x_558; lean_object* x_559; lean_object* x_560; lean_object* x_561; lean_object* x_562; 
x_458 = lean_ctor_get(x_92, 1);
lean_inc(x_458);
lean_dec(x_92);
x_459 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_459, 0, x_91);
lean_ctor_set(x_459, 1, x_25);
x_460 = lean_array_size(x_80);
x_461 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17(x_15, x_61, x_80, x_460, x_15, x_459, x_2, x_3, x_4, x_5, x_6, x_7, x_458);
lean_dec(x_61);
x_462 = lean_ctor_get(x_461, 0);
lean_inc(x_462);
x_463 = lean_ctor_get(x_461, 1);
lean_inc(x_463);
lean_dec(x_461);
x_464 = lean_ctor_get(x_462, 0);
lean_inc(x_464);
x_465 = lean_ctor_get(x_462, 1);
lean_inc(x_465);
lean_dec(x_462);
x_466 = lean_st_ref_take(x_3, x_463);
x_467 = lean_ctor_get(x_466, 0);
lean_inc(x_467);
x_468 = lean_ctor_get(x_466, 1);
lean_inc(x_468);
lean_dec(x_466);
x_469 = lean_ctor_get(x_467, 0);
lean_inc(x_469);
x_470 = lean_ctor_get(x_467, 1);
lean_inc(x_470);
x_471 = lean_ctor_get(x_467, 2);
lean_inc(x_471);
x_472 = lean_ctor_get(x_467, 3);
lean_inc(x_472);
x_473 = lean_ctor_get(x_467, 4);
lean_inc(x_473);
x_474 = lean_ctor_get(x_467, 5);
lean_inc(x_474);
if (lean_is_exclusive(x_467)) {
 lean_ctor_release(x_467, 0);
 lean_ctor_release(x_467, 1);
 lean_ctor_release(x_467, 2);
 lean_ctor_release(x_467, 3);
 lean_ctor_release(x_467, 4);
 lean_ctor_release(x_467, 5);
 lean_ctor_release(x_467, 6);
 x_475 = x_467;
} else {
 lean_dec_ref(x_467);
 x_475 = lean_box(0);
}
if (lean_is_scalar(x_475)) {
 x_476 = lean_alloc_ctor(0, 7, 0);
} else {
 x_476 = x_475;
}
lean_ctor_set(x_476, 0, x_469);
lean_ctor_set(x_476, 1, x_470);
lean_ctor_set(x_476, 2, x_471);
lean_ctor_set(x_476, 3, x_472);
lean_ctor_set(x_476, 4, x_473);
lean_ctor_set(x_476, 5, x_474);
lean_ctor_set(x_476, 6, x_464);
x_477 = lean_st_ref_set(x_3, x_476, x_468);
x_478 = lean_ctor_get(x_477, 1);
lean_inc(x_478);
lean_dec(x_477);
x_479 = lean_st_ref_take(x_29, x_478);
x_480 = lean_ctor_get(x_479, 0);
lean_inc(x_480);
x_481 = lean_ctor_get(x_479, 1);
lean_inc(x_481);
lean_dec(x_479);
x_482 = l_Aesop_treeImpl___elambda__3(x_480);
lean_dec(x_480);
x_483 = lean_ctor_get(x_482, 0);
lean_inc(x_483);
x_484 = lean_ctor_get(x_482, 1);
lean_inc(x_484);
x_485 = lean_ctor_get_uint8(x_482, sizeof(void*)*10);
x_486 = lean_ctor_get_uint8(x_482, sizeof(void*)*10 + 1);
x_487 = lean_ctor_get(x_482, 3);
lean_inc(x_487);
x_488 = lean_ctor_get(x_482, 4);
lean_inc(x_488);
x_489 = lean_ctor_get(x_482, 5);
lean_inc(x_489);
x_490 = lean_ctor_get(x_482, 6);
lean_inc(x_490);
x_491 = lean_ctor_get(x_482, 7);
lean_inc(x_491);
x_492 = lean_ctor_get(x_482, 8);
lean_inc(x_492);
x_493 = lean_ctor_get(x_482, 9);
lean_inc(x_493);
if (lean_is_exclusive(x_482)) {
 lean_ctor_release(x_482, 0);
 lean_ctor_release(x_482, 1);
 lean_ctor_release(x_482, 2);
 lean_ctor_release(x_482, 3);
 lean_ctor_release(x_482, 4);
 lean_ctor_release(x_482, 5);
 lean_ctor_release(x_482, 6);
 lean_ctor_release(x_482, 7);
 lean_ctor_release(x_482, 8);
 lean_ctor_release(x_482, 9);
 x_494 = x_482;
} else {
 lean_dec_ref(x_482);
 x_494 = lean_box(0);
}
if (lean_is_scalar(x_494)) {
 x_495 = lean_alloc_ctor(0, 10, 2);
} else {
 x_495 = x_494;
}
lean_ctor_set(x_495, 0, x_483);
lean_ctor_set(x_495, 1, x_484);
lean_ctor_set(x_495, 2, x_85);
lean_ctor_set(x_495, 3, x_487);
lean_ctor_set(x_495, 4, x_488);
lean_ctor_set(x_495, 5, x_489);
lean_ctor_set(x_495, 6, x_490);
lean_ctor_set(x_495, 7, x_491);
lean_ctor_set(x_495, 8, x_492);
lean_ctor_set(x_495, 9, x_493);
lean_ctor_set_uint8(x_495, sizeof(void*)*10, x_485);
lean_ctor_set_uint8(x_495, sizeof(void*)*10 + 1, x_486);
x_496 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_496, 0, x_495);
x_497 = l_Aesop_treeImpl___elambda__3(x_496);
lean_dec(x_496);
x_498 = lean_ctor_get(x_497, 0);
lean_inc(x_498);
x_499 = lean_ctor_get(x_497, 1);
lean_inc(x_499);
x_500 = lean_ctor_get(x_497, 2);
lean_inc(x_500);
x_501 = lean_ctor_get_uint8(x_497, sizeof(void*)*10);
x_502 = lean_ctor_get_uint8(x_497, sizeof(void*)*10 + 1);
x_503 = lean_ctor_get(x_497, 3);
lean_inc(x_503);
x_504 = lean_ctor_get(x_497, 4);
lean_inc(x_504);
x_505 = lean_ctor_get(x_497, 5);
lean_inc(x_505);
x_506 = lean_ctor_get(x_497, 6);
lean_inc(x_506);
x_507 = lean_ctor_get(x_497, 7);
lean_inc(x_507);
x_508 = lean_ctor_get(x_497, 9);
lean_inc(x_508);
if (lean_is_exclusive(x_497)) {
 lean_ctor_release(x_497, 0);
 lean_ctor_release(x_497, 1);
 lean_ctor_release(x_497, 2);
 lean_ctor_release(x_497, 3);
 lean_ctor_release(x_497, 4);
 lean_ctor_release(x_497, 5);
 lean_ctor_release(x_497, 6);
 lean_ctor_release(x_497, 7);
 lean_ctor_release(x_497, 8);
 lean_ctor_release(x_497, 9);
 x_509 = x_497;
} else {
 lean_dec_ref(x_497);
 x_509 = lean_box(0);
}
if (lean_is_scalar(x_509)) {
 x_510 = lean_alloc_ctor(0, 10, 2);
} else {
 x_510 = x_509;
}
lean_ctor_set(x_510, 0, x_498);
lean_ctor_set(x_510, 1, x_499);
lean_ctor_set(x_510, 2, x_500);
lean_ctor_set(x_510, 3, x_503);
lean_ctor_set(x_510, 4, x_504);
lean_ctor_set(x_510, 5, x_505);
lean_ctor_set(x_510, 6, x_506);
lean_ctor_set(x_510, 7, x_507);
lean_ctor_set(x_510, 8, x_465);
lean_ctor_set(x_510, 9, x_508);
lean_ctor_set_uint8(x_510, sizeof(void*)*10, x_501);
lean_ctor_set_uint8(x_510, sizeof(void*)*10 + 1, x_502);
x_511 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_511, 0, x_510);
x_512 = l_Aesop_treeImpl___elambda__3(x_511);
lean_dec(x_511);
x_513 = lean_ctor_get(x_512, 0);
lean_inc(x_513);
x_514 = lean_ctor_get(x_512, 1);
lean_inc(x_514);
x_515 = lean_ctor_get(x_512, 2);
lean_inc(x_515);
x_516 = lean_ctor_get_uint8(x_512, sizeof(void*)*10);
x_517 = lean_ctor_get_uint8(x_512, sizeof(void*)*10 + 1);
x_518 = lean_ctor_get(x_512, 3);
lean_inc(x_518);
x_519 = lean_ctor_get(x_512, 4);
lean_inc(x_519);
x_520 = lean_ctor_get(x_512, 5);
lean_inc(x_520);
x_521 = lean_ctor_get(x_512, 6);
lean_inc(x_521);
x_522 = lean_ctor_get(x_512, 7);
lean_inc(x_522);
x_523 = lean_ctor_get(x_512, 8);
lean_inc(x_523);
if (lean_is_exclusive(x_512)) {
 lean_ctor_release(x_512, 0);
 lean_ctor_release(x_512, 1);
 lean_ctor_release(x_512, 2);
 lean_ctor_release(x_512, 3);
 lean_ctor_release(x_512, 4);
 lean_ctor_release(x_512, 5);
 lean_ctor_release(x_512, 6);
 lean_ctor_release(x_512, 7);
 lean_ctor_release(x_512, 8);
 lean_ctor_release(x_512, 9);
 x_524 = x_512;
} else {
 lean_dec_ref(x_512);
 x_524 = lean_box(0);
}
if (lean_is_scalar(x_524)) {
 x_525 = lean_alloc_ctor(0, 10, 2);
} else {
 x_525 = x_524;
}
lean_ctor_set(x_525, 0, x_513);
lean_ctor_set(x_525, 1, x_514);
lean_ctor_set(x_525, 2, x_515);
lean_ctor_set(x_525, 3, x_518);
lean_ctor_set(x_525, 4, x_519);
lean_ctor_set(x_525, 5, x_520);
lean_ctor_set(x_525, 6, x_521);
lean_ctor_set(x_525, 7, x_522);
lean_ctor_set(x_525, 8, x_523);
lean_ctor_set(x_525, 9, x_51);
lean_ctor_set_uint8(x_525, sizeof(void*)*10, x_516);
lean_ctor_set_uint8(x_525, sizeof(void*)*10 + 1, x_517);
x_526 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_526, 0, x_525);
x_527 = lean_st_ref_set(x_29, x_526, x_481);
x_528 = lean_ctor_get(x_527, 1);
lean_inc(x_528);
lean_dec(x_527);
x_529 = lean_st_ref_take(x_10, x_528);
x_530 = lean_ctor_get(x_529, 0);
lean_inc(x_530);
x_531 = lean_ctor_get(x_529, 1);
lean_inc(x_531);
lean_dec(x_529);
x_532 = l_Aesop_treeImpl___elambda__5(x_530);
lean_dec(x_530);
x_533 = lean_ctor_get(x_532, 0);
lean_inc(x_533);
x_534 = lean_ctor_get(x_532, 1);
lean_inc(x_534);
x_535 = lean_ctor_get(x_532, 2);
lean_inc(x_535);
x_536 = lean_ctor_get(x_532, 3);
lean_inc(x_536);
x_537 = lean_ctor_get(x_532, 4);
lean_inc(x_537);
x_538 = lean_ctor_get_uint8(x_532, sizeof(void*)*13);
x_539 = lean_ctor_get_uint8(x_532, sizeof(void*)*13 + 1);
x_540 = lean_ctor_get_uint8(x_532, sizeof(void*)*13 + 2);
x_541 = lean_ctor_get(x_532, 5);
lean_inc(x_541);
x_542 = lean_ctor_get(x_532, 6);
lean_inc(x_542);
x_543 = lean_ctor_get(x_532, 7);
lean_inc(x_543);
x_544 = lean_ctor_get(x_532, 8);
lean_inc(x_544);
x_545 = lean_ctor_get(x_532, 9);
lean_inc(x_545);
x_546 = lean_ctor_get(x_532, 10);
lean_inc(x_546);
x_547 = lean_ctor_get_uint8(x_532, sizeof(void*)*13 + 3);
x_548 = lean_ctor_get(x_532, 11);
lean_inc(x_548);
x_549 = lean_ctor_get(x_532, 12);
lean_inc(x_549);
if (lean_is_exclusive(x_532)) {
 lean_ctor_release(x_532, 0);
 lean_ctor_release(x_532, 1);
 lean_ctor_release(x_532, 2);
 lean_ctor_release(x_532, 3);
 lean_ctor_release(x_532, 4);
 lean_ctor_release(x_532, 5);
 lean_ctor_release(x_532, 6);
 lean_ctor_release(x_532, 7);
 lean_ctor_release(x_532, 8);
 lean_ctor_release(x_532, 9);
 lean_ctor_release(x_532, 10);
 lean_ctor_release(x_532, 11);
 lean_ctor_release(x_532, 12);
 x_550 = x_532;
} else {
 lean_dec_ref(x_532);
 x_550 = lean_box(0);
}
lean_inc(x_29);
x_551 = lean_array_push(x_535, x_29);
if (lean_is_scalar(x_550)) {
 x_552 = lean_alloc_ctor(0, 13, 4);
} else {
 x_552 = x_550;
}
lean_ctor_set(x_552, 0, x_533);
lean_ctor_set(x_552, 1, x_534);
lean_ctor_set(x_552, 2, x_551);
lean_ctor_set(x_552, 3, x_536);
lean_ctor_set(x_552, 4, x_537);
lean_ctor_set(x_552, 5, x_541);
lean_ctor_set(x_552, 6, x_542);
lean_ctor_set(x_552, 7, x_543);
lean_ctor_set(x_552, 8, x_544);
lean_ctor_set(x_552, 9, x_545);
lean_ctor_set(x_552, 10, x_546);
lean_ctor_set(x_552, 11, x_548);
lean_ctor_set(x_552, 12, x_549);
lean_ctor_set_uint8(x_552, sizeof(void*)*13, x_538);
lean_ctor_set_uint8(x_552, sizeof(void*)*13 + 1, x_539);
lean_ctor_set_uint8(x_552, sizeof(void*)*13 + 2, x_540);
lean_ctor_set_uint8(x_552, sizeof(void*)*13 + 3, x_547);
x_553 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_553, 0, x_552);
x_554 = lean_st_ref_set(x_10, x_553, x_531);
lean_dec(x_10);
x_555 = lean_ctor_get(x_554, 1);
lean_inc(x_555);
lean_dec(x_554);
x_556 = lean_array_get_size(x_80);
lean_dec(x_80);
x_557 = l_Aesop_incrementNumGoals(x_556, x_2, x_3, x_4, x_5, x_6, x_7, x_555);
lean_dec(x_556);
x_558 = lean_ctor_get(x_557, 1);
lean_inc(x_558);
lean_dec(x_557);
x_559 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_558);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_560 = lean_ctor_get(x_559, 1);
lean_inc(x_560);
if (lean_is_exclusive(x_559)) {
 lean_ctor_release(x_559, 0);
 lean_ctor_release(x_559, 1);
 x_561 = x_559;
} else {
 lean_dec_ref(x_559);
 x_561 = lean_box(0);
}
if (lean_is_scalar(x_561)) {
 x_562 = lean_alloc_ctor(0, 2, 0);
} else {
 x_562 = x_561;
}
lean_ctor_set(x_562, 0, x_29);
lean_ctor_set(x_562, 1, x_560);
return x_562;
}
}
else
{
lean_object* x_563; lean_object* x_564; lean_object* x_565; lean_object* x_566; lean_object* x_567; lean_object* x_568; lean_object* x_569; lean_object* x_570; lean_object* x_571; lean_object* x_572; lean_object* x_573; lean_object* x_574; size_t x_575; lean_object* x_576; lean_object* x_577; lean_object* x_578; lean_object* x_579; lean_object* x_580; lean_object* x_581; lean_object* x_582; lean_object* x_583; lean_object* x_584; lean_object* x_585; lean_object* x_586; lean_object* x_587; lean_object* x_588; lean_object* x_589; lean_object* x_590; lean_object* x_591; lean_object* x_592; lean_object* x_593; lean_object* x_594; lean_object* x_595; lean_object* x_596; lean_object* x_597; lean_object* x_598; lean_object* x_599; uint8_t x_600; uint8_t x_601; lean_object* x_602; lean_object* x_603; lean_object* x_604; lean_object* x_605; lean_object* x_606; lean_object* x_607; lean_object* x_608; lean_object* x_609; lean_object* x_610; lean_object* x_611; lean_object* x_612; lean_object* x_613; lean_object* x_614; lean_object* x_615; uint8_t x_616; uint8_t x_617; lean_object* x_618; lean_object* x_619; lean_object* x_620; lean_object* x_621; lean_object* x_622; lean_object* x_623; lean_object* x_624; lean_object* x_625; lean_object* x_626; lean_object* x_627; lean_object* x_628; lean_object* x_629; lean_object* x_630; uint8_t x_631; uint8_t x_632; lean_object* x_633; lean_object* x_634; lean_object* x_635; lean_object* x_636; lean_object* x_637; lean_object* x_638; lean_object* x_639; lean_object* x_640; lean_object* x_641; lean_object* x_642; lean_object* x_643; lean_object* x_644; lean_object* x_645; lean_object* x_646; lean_object* x_647; lean_object* x_648; lean_object* x_649; lean_object* x_650; lean_object* x_651; lean_object* x_652; uint8_t x_653; uint8_t x_654; uint8_t x_655; lean_object* x_656; lean_object* x_657; lean_object* x_658; lean_object* x_659; lean_object* x_660; lean_object* x_661; uint8_t x_662; lean_object* x_663; lean_object* x_664; lean_object* x_665; lean_object* x_666; lean_object* x_667; lean_object* x_668; lean_object* x_669; lean_object* x_670; lean_object* x_671; lean_object* x_672; lean_object* x_673; lean_object* x_674; lean_object* x_675; lean_object* x_676; lean_object* x_677; 
x_563 = lean_ctor_get(x_88, 0);
x_564 = lean_ctor_get(x_88, 1);
x_565 = lean_ctor_get(x_88, 2);
x_566 = lean_ctor_get(x_88, 3);
x_567 = lean_ctor_get(x_88, 4);
x_568 = lean_ctor_get(x_88, 5);
x_569 = lean_ctor_get(x_88, 6);
lean_inc(x_569);
lean_inc(x_568);
lean_inc(x_567);
lean_inc(x_566);
lean_inc(x_565);
lean_inc(x_564);
lean_inc(x_563);
lean_dec(x_88);
x_570 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_570, 0, x_563);
lean_ctor_set(x_570, 1, x_564);
lean_ctor_set(x_570, 2, x_565);
lean_ctor_set(x_570, 3, x_566);
lean_ctor_set(x_570, 4, x_567);
lean_ctor_set(x_570, 5, x_568);
lean_ctor_set(x_570, 6, x_42);
x_571 = lean_st_ref_set(x_3, x_570, x_89);
x_572 = lean_ctor_get(x_571, 1);
lean_inc(x_572);
if (lean_is_exclusive(x_571)) {
 lean_ctor_release(x_571, 0);
 lean_ctor_release(x_571, 1);
 x_573 = x_571;
} else {
 lean_dec_ref(x_571);
 x_573 = lean_box(0);
}
if (lean_is_scalar(x_573)) {
 x_574 = lean_alloc_ctor(0, 2, 0);
} else {
 x_574 = x_573;
}
lean_ctor_set(x_574, 0, x_569);
lean_ctor_set(x_574, 1, x_25);
x_575 = lean_array_size(x_80);
x_576 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17(x_15, x_61, x_80, x_575, x_15, x_574, x_2, x_3, x_4, x_5, x_6, x_7, x_572);
lean_dec(x_61);
x_577 = lean_ctor_get(x_576, 0);
lean_inc(x_577);
x_578 = lean_ctor_get(x_576, 1);
lean_inc(x_578);
lean_dec(x_576);
x_579 = lean_ctor_get(x_577, 0);
lean_inc(x_579);
x_580 = lean_ctor_get(x_577, 1);
lean_inc(x_580);
lean_dec(x_577);
x_581 = lean_st_ref_take(x_3, x_578);
x_582 = lean_ctor_get(x_581, 0);
lean_inc(x_582);
x_583 = lean_ctor_get(x_581, 1);
lean_inc(x_583);
lean_dec(x_581);
x_584 = lean_ctor_get(x_582, 0);
lean_inc(x_584);
x_585 = lean_ctor_get(x_582, 1);
lean_inc(x_585);
x_586 = lean_ctor_get(x_582, 2);
lean_inc(x_586);
x_587 = lean_ctor_get(x_582, 3);
lean_inc(x_587);
x_588 = lean_ctor_get(x_582, 4);
lean_inc(x_588);
x_589 = lean_ctor_get(x_582, 5);
lean_inc(x_589);
if (lean_is_exclusive(x_582)) {
 lean_ctor_release(x_582, 0);
 lean_ctor_release(x_582, 1);
 lean_ctor_release(x_582, 2);
 lean_ctor_release(x_582, 3);
 lean_ctor_release(x_582, 4);
 lean_ctor_release(x_582, 5);
 lean_ctor_release(x_582, 6);
 x_590 = x_582;
} else {
 lean_dec_ref(x_582);
 x_590 = lean_box(0);
}
if (lean_is_scalar(x_590)) {
 x_591 = lean_alloc_ctor(0, 7, 0);
} else {
 x_591 = x_590;
}
lean_ctor_set(x_591, 0, x_584);
lean_ctor_set(x_591, 1, x_585);
lean_ctor_set(x_591, 2, x_586);
lean_ctor_set(x_591, 3, x_587);
lean_ctor_set(x_591, 4, x_588);
lean_ctor_set(x_591, 5, x_589);
lean_ctor_set(x_591, 6, x_579);
x_592 = lean_st_ref_set(x_3, x_591, x_583);
x_593 = lean_ctor_get(x_592, 1);
lean_inc(x_593);
lean_dec(x_592);
x_594 = lean_st_ref_take(x_29, x_593);
x_595 = lean_ctor_get(x_594, 0);
lean_inc(x_595);
x_596 = lean_ctor_get(x_594, 1);
lean_inc(x_596);
lean_dec(x_594);
x_597 = l_Aesop_treeImpl___elambda__3(x_595);
lean_dec(x_595);
x_598 = lean_ctor_get(x_597, 0);
lean_inc(x_598);
x_599 = lean_ctor_get(x_597, 1);
lean_inc(x_599);
x_600 = lean_ctor_get_uint8(x_597, sizeof(void*)*10);
x_601 = lean_ctor_get_uint8(x_597, sizeof(void*)*10 + 1);
x_602 = lean_ctor_get(x_597, 3);
lean_inc(x_602);
x_603 = lean_ctor_get(x_597, 4);
lean_inc(x_603);
x_604 = lean_ctor_get(x_597, 5);
lean_inc(x_604);
x_605 = lean_ctor_get(x_597, 6);
lean_inc(x_605);
x_606 = lean_ctor_get(x_597, 7);
lean_inc(x_606);
x_607 = lean_ctor_get(x_597, 8);
lean_inc(x_607);
x_608 = lean_ctor_get(x_597, 9);
lean_inc(x_608);
if (lean_is_exclusive(x_597)) {
 lean_ctor_release(x_597, 0);
 lean_ctor_release(x_597, 1);
 lean_ctor_release(x_597, 2);
 lean_ctor_release(x_597, 3);
 lean_ctor_release(x_597, 4);
 lean_ctor_release(x_597, 5);
 lean_ctor_release(x_597, 6);
 lean_ctor_release(x_597, 7);
 lean_ctor_release(x_597, 8);
 lean_ctor_release(x_597, 9);
 x_609 = x_597;
} else {
 lean_dec_ref(x_597);
 x_609 = lean_box(0);
}
if (lean_is_scalar(x_609)) {
 x_610 = lean_alloc_ctor(0, 10, 2);
} else {
 x_610 = x_609;
}
lean_ctor_set(x_610, 0, x_598);
lean_ctor_set(x_610, 1, x_599);
lean_ctor_set(x_610, 2, x_85);
lean_ctor_set(x_610, 3, x_602);
lean_ctor_set(x_610, 4, x_603);
lean_ctor_set(x_610, 5, x_604);
lean_ctor_set(x_610, 6, x_605);
lean_ctor_set(x_610, 7, x_606);
lean_ctor_set(x_610, 8, x_607);
lean_ctor_set(x_610, 9, x_608);
lean_ctor_set_uint8(x_610, sizeof(void*)*10, x_600);
lean_ctor_set_uint8(x_610, sizeof(void*)*10 + 1, x_601);
x_611 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_611, 0, x_610);
x_612 = l_Aesop_treeImpl___elambda__3(x_611);
lean_dec(x_611);
x_613 = lean_ctor_get(x_612, 0);
lean_inc(x_613);
x_614 = lean_ctor_get(x_612, 1);
lean_inc(x_614);
x_615 = lean_ctor_get(x_612, 2);
lean_inc(x_615);
x_616 = lean_ctor_get_uint8(x_612, sizeof(void*)*10);
x_617 = lean_ctor_get_uint8(x_612, sizeof(void*)*10 + 1);
x_618 = lean_ctor_get(x_612, 3);
lean_inc(x_618);
x_619 = lean_ctor_get(x_612, 4);
lean_inc(x_619);
x_620 = lean_ctor_get(x_612, 5);
lean_inc(x_620);
x_621 = lean_ctor_get(x_612, 6);
lean_inc(x_621);
x_622 = lean_ctor_get(x_612, 7);
lean_inc(x_622);
x_623 = lean_ctor_get(x_612, 9);
lean_inc(x_623);
if (lean_is_exclusive(x_612)) {
 lean_ctor_release(x_612, 0);
 lean_ctor_release(x_612, 1);
 lean_ctor_release(x_612, 2);
 lean_ctor_release(x_612, 3);
 lean_ctor_release(x_612, 4);
 lean_ctor_release(x_612, 5);
 lean_ctor_release(x_612, 6);
 lean_ctor_release(x_612, 7);
 lean_ctor_release(x_612, 8);
 lean_ctor_release(x_612, 9);
 x_624 = x_612;
} else {
 lean_dec_ref(x_612);
 x_624 = lean_box(0);
}
if (lean_is_scalar(x_624)) {
 x_625 = lean_alloc_ctor(0, 10, 2);
} else {
 x_625 = x_624;
}
lean_ctor_set(x_625, 0, x_613);
lean_ctor_set(x_625, 1, x_614);
lean_ctor_set(x_625, 2, x_615);
lean_ctor_set(x_625, 3, x_618);
lean_ctor_set(x_625, 4, x_619);
lean_ctor_set(x_625, 5, x_620);
lean_ctor_set(x_625, 6, x_621);
lean_ctor_set(x_625, 7, x_622);
lean_ctor_set(x_625, 8, x_580);
lean_ctor_set(x_625, 9, x_623);
lean_ctor_set_uint8(x_625, sizeof(void*)*10, x_616);
lean_ctor_set_uint8(x_625, sizeof(void*)*10 + 1, x_617);
x_626 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_626, 0, x_625);
x_627 = l_Aesop_treeImpl___elambda__3(x_626);
lean_dec(x_626);
x_628 = lean_ctor_get(x_627, 0);
lean_inc(x_628);
x_629 = lean_ctor_get(x_627, 1);
lean_inc(x_629);
x_630 = lean_ctor_get(x_627, 2);
lean_inc(x_630);
x_631 = lean_ctor_get_uint8(x_627, sizeof(void*)*10);
x_632 = lean_ctor_get_uint8(x_627, sizeof(void*)*10 + 1);
x_633 = lean_ctor_get(x_627, 3);
lean_inc(x_633);
x_634 = lean_ctor_get(x_627, 4);
lean_inc(x_634);
x_635 = lean_ctor_get(x_627, 5);
lean_inc(x_635);
x_636 = lean_ctor_get(x_627, 6);
lean_inc(x_636);
x_637 = lean_ctor_get(x_627, 7);
lean_inc(x_637);
x_638 = lean_ctor_get(x_627, 8);
lean_inc(x_638);
if (lean_is_exclusive(x_627)) {
 lean_ctor_release(x_627, 0);
 lean_ctor_release(x_627, 1);
 lean_ctor_release(x_627, 2);
 lean_ctor_release(x_627, 3);
 lean_ctor_release(x_627, 4);
 lean_ctor_release(x_627, 5);
 lean_ctor_release(x_627, 6);
 lean_ctor_release(x_627, 7);
 lean_ctor_release(x_627, 8);
 lean_ctor_release(x_627, 9);
 x_639 = x_627;
} else {
 lean_dec_ref(x_627);
 x_639 = lean_box(0);
}
if (lean_is_scalar(x_639)) {
 x_640 = lean_alloc_ctor(0, 10, 2);
} else {
 x_640 = x_639;
}
lean_ctor_set(x_640, 0, x_628);
lean_ctor_set(x_640, 1, x_629);
lean_ctor_set(x_640, 2, x_630);
lean_ctor_set(x_640, 3, x_633);
lean_ctor_set(x_640, 4, x_634);
lean_ctor_set(x_640, 5, x_635);
lean_ctor_set(x_640, 6, x_636);
lean_ctor_set(x_640, 7, x_637);
lean_ctor_set(x_640, 8, x_638);
lean_ctor_set(x_640, 9, x_51);
lean_ctor_set_uint8(x_640, sizeof(void*)*10, x_631);
lean_ctor_set_uint8(x_640, sizeof(void*)*10 + 1, x_632);
x_641 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_641, 0, x_640);
x_642 = lean_st_ref_set(x_29, x_641, x_596);
x_643 = lean_ctor_get(x_642, 1);
lean_inc(x_643);
lean_dec(x_642);
x_644 = lean_st_ref_take(x_10, x_643);
x_645 = lean_ctor_get(x_644, 0);
lean_inc(x_645);
x_646 = lean_ctor_get(x_644, 1);
lean_inc(x_646);
lean_dec(x_644);
x_647 = l_Aesop_treeImpl___elambda__5(x_645);
lean_dec(x_645);
x_648 = lean_ctor_get(x_647, 0);
lean_inc(x_648);
x_649 = lean_ctor_get(x_647, 1);
lean_inc(x_649);
x_650 = lean_ctor_get(x_647, 2);
lean_inc(x_650);
x_651 = lean_ctor_get(x_647, 3);
lean_inc(x_651);
x_652 = lean_ctor_get(x_647, 4);
lean_inc(x_652);
x_653 = lean_ctor_get_uint8(x_647, sizeof(void*)*13);
x_654 = lean_ctor_get_uint8(x_647, sizeof(void*)*13 + 1);
x_655 = lean_ctor_get_uint8(x_647, sizeof(void*)*13 + 2);
x_656 = lean_ctor_get(x_647, 5);
lean_inc(x_656);
x_657 = lean_ctor_get(x_647, 6);
lean_inc(x_657);
x_658 = lean_ctor_get(x_647, 7);
lean_inc(x_658);
x_659 = lean_ctor_get(x_647, 8);
lean_inc(x_659);
x_660 = lean_ctor_get(x_647, 9);
lean_inc(x_660);
x_661 = lean_ctor_get(x_647, 10);
lean_inc(x_661);
x_662 = lean_ctor_get_uint8(x_647, sizeof(void*)*13 + 3);
x_663 = lean_ctor_get(x_647, 11);
lean_inc(x_663);
x_664 = lean_ctor_get(x_647, 12);
lean_inc(x_664);
if (lean_is_exclusive(x_647)) {
 lean_ctor_release(x_647, 0);
 lean_ctor_release(x_647, 1);
 lean_ctor_release(x_647, 2);
 lean_ctor_release(x_647, 3);
 lean_ctor_release(x_647, 4);
 lean_ctor_release(x_647, 5);
 lean_ctor_release(x_647, 6);
 lean_ctor_release(x_647, 7);
 lean_ctor_release(x_647, 8);
 lean_ctor_release(x_647, 9);
 lean_ctor_release(x_647, 10);
 lean_ctor_release(x_647, 11);
 lean_ctor_release(x_647, 12);
 x_665 = x_647;
} else {
 lean_dec_ref(x_647);
 x_665 = lean_box(0);
}
lean_inc(x_29);
x_666 = lean_array_push(x_650, x_29);
if (lean_is_scalar(x_665)) {
 x_667 = lean_alloc_ctor(0, 13, 4);
} else {
 x_667 = x_665;
}
lean_ctor_set(x_667, 0, x_648);
lean_ctor_set(x_667, 1, x_649);
lean_ctor_set(x_667, 2, x_666);
lean_ctor_set(x_667, 3, x_651);
lean_ctor_set(x_667, 4, x_652);
lean_ctor_set(x_667, 5, x_656);
lean_ctor_set(x_667, 6, x_657);
lean_ctor_set(x_667, 7, x_658);
lean_ctor_set(x_667, 8, x_659);
lean_ctor_set(x_667, 9, x_660);
lean_ctor_set(x_667, 10, x_661);
lean_ctor_set(x_667, 11, x_663);
lean_ctor_set(x_667, 12, x_664);
lean_ctor_set_uint8(x_667, sizeof(void*)*13, x_653);
lean_ctor_set_uint8(x_667, sizeof(void*)*13 + 1, x_654);
lean_ctor_set_uint8(x_667, sizeof(void*)*13 + 2, x_655);
lean_ctor_set_uint8(x_667, sizeof(void*)*13 + 3, x_662);
x_668 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_668, 0, x_667);
x_669 = lean_st_ref_set(x_10, x_668, x_646);
lean_dec(x_10);
x_670 = lean_ctor_get(x_669, 1);
lean_inc(x_670);
lean_dec(x_669);
x_671 = lean_array_get_size(x_80);
lean_dec(x_80);
x_672 = l_Aesop_incrementNumGoals(x_671, x_2, x_3, x_4, x_5, x_6, x_7, x_670);
lean_dec(x_671);
x_673 = lean_ctor_get(x_672, 1);
lean_inc(x_673);
lean_dec(x_672);
x_674 = l_Aesop_incrementNumRapps(x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_673);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_675 = lean_ctor_get(x_674, 1);
lean_inc(x_675);
if (lean_is_exclusive(x_674)) {
 lean_ctor_release(x_674, 0);
 lean_ctor_release(x_674, 1);
 x_676 = x_674;
} else {
 lean_dec_ref(x_674);
 x_676 = lean_box(0);
}
if (lean_is_scalar(x_676)) {
 x_677 = lean_alloc_ctor(0, 2, 0);
} else {
 x_677 = x_676;
}
lean_ctor_set(x_677, 0, x_29);
lean_ctor_set(x_677, 1, x_675);
return x_677;
}
}
else
{
uint8_t x_678; 
lean_dec(x_68);
lean_dec(x_61);
lean_dec(x_55);
lean_dec(x_51);
lean_dec(x_37);
lean_dec(x_29);
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_678 = !lean_is_exclusive(x_73);
if (x_678 == 0)
{
return x_73;
}
else
{
lean_object* x_679; lean_object* x_680; lean_object* x_681; 
x_679 = lean_ctor_get(x_73, 0);
x_680 = lean_ctor_get(x_73, 1);
lean_inc(x_680);
lean_inc(x_679);
lean_dec(x_73);
x_681 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_681, 0, x_679);
lean_ctor_set(x_681, 1, x_680);
return x_681;
}
}
}
else
{
uint8_t x_682; 
lean_dec(x_61);
lean_dec(x_58);
lean_dec(x_55);
lean_dec(x_51);
lean_dec(x_37);
lean_dec(x_29);
lean_dec(x_21);
lean_dec(x_16);
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_682 = !lean_is_exclusive(x_67);
if (x_682 == 0)
{
return x_67;
}
else
{
lean_object* x_683; lean_object* x_684; lean_object* x_685; 
x_683 = lean_ctor_get(x_67, 0);
x_684 = lean_ctor_get(x_67, 1);
lean_inc(x_684);
lean_inc(x_683);
lean_dec(x_67);
x_685 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_685, 0, x_683);
lean_ctor_set(x_685, 1, x_684);
return x_685;
}
}
}
}
else
{
uint8_t x_690; 
lean_dec(x_51);
lean_dec(x_50);
lean_dec(x_37);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_21);
lean_dec(x_16);
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_690 = !lean_is_exclusive(x_54);
if (x_690 == 0)
{
return x_54;
}
else
{
lean_object* x_691; lean_object* x_692; lean_object* x_693; 
x_691 = lean_ctor_get(x_54, 0);
x_692 = lean_ctor_get(x_54, 1);
lean_inc(x_692);
lean_inc(x_691);
lean_dec(x_54);
x_693 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_693, 0, x_691);
lean_ctor_set(x_693, 1, x_692);
return x_693;
}
}
}
else
{
uint8_t x_694; 
lean_dec(x_37);
lean_dec(x_34);
lean_dec(x_29);
lean_dec(x_21);
lean_dec(x_16);
lean_dec(x_12);
lean_dec(x_10);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_694 = !lean_is_exclusive(x_46);
if (x_694 == 0)
{
return x_46;
}
else
{
lean_object* x_695; lean_object* x_696; lean_object* x_697; 
x_695 = lean_ctor_get(x_46, 0);
x_696 = lean_ctor_get(x_46, 1);
lean_inc(x_696);
lean_inc(x_695);
lean_dec(x_46);
x_697 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_697, 0, x_695);
lean_ctor_set(x_697, 1, x_696);
return x_697;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__1(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_forInStep_go___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Std_DHashMap_Internal_AssocList_forInStep_go___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__3(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__4(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__6(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; size_t x_13; lean_object* x_14; 
x_11 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_12 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_13 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_14 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__7(x_11, x_2, x_12, x_13, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__8(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__9(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__10(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__11___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__11(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16) {
_start:
{
size_t x_17; double x_18; size_t x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_17 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_18 = lean_unbox_float(x_2);
lean_dec(x_2);
x_19 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_20 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_21 = lean_unbox_usize(x_8);
lean_dec(x_8);
x_22 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12(x_17, x_18, x_3, x_4, x_19, x_6, x_20, x_21, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_4);
return x_22;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__13___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_12 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_13 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__13(x_11, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__14___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__14(x_1, x_2, x_13, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__15___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; size_t x_15; lean_object* x_16; 
x_13 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_14 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_15 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_16 = l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__15(x_13, x_2, x_14, x_15, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_14 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_15 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__16(x_1, x_2, x_13, x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
size_t x_14; size_t x_15; size_t x_16; lean_object* x_17; 
x_14 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_15 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_16 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_17 = l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__17(x_14, x_2, x_3, x_15, x_16, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_3);
lean_dec(x_2);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__18___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; size_t x_9; lean_object* x_10; 
x_7 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_8 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_9 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_10 = l_Array_foldlMUnsafe_fold___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__18(x_7, x_2, x_3, x_8, x_9, x_6);
lean_dec(x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; uint8_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_13 = lean_unbox(x_3);
lean_dec(x_3);
x_14 = l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1(x_1, x_12, x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
return x_14;
}
}
LEAN_EXPORT lean_object* l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__2(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Check(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_Traversal(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_TreeM(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Util_UnionFind(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Tree_AddRapp(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Check(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_Traversal(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_TreeM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Util_UnionFind(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__1 = _init_l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__1);
l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__2 = _init_l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___closed__2);
l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed__const__1 = _init_l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed__const__1();
lean_mark_persistent(l_Aesop_UnionFind_add___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__3___lambda__1___boxed__const__1);
l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1 = _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1();
lean_mark_persistent(l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__1);
l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__2 = _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__2();
lean_mark_persistent(l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__2);
l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__3 = _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__3();
lean_mark_persistent(l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__3);
l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4 = _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4();
lean_mark_persistent(l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__4);
l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__5 = _init_l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__5();
lean_mark_persistent(l_Aesop_UnionFind_ofArray___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__1___closed__5);
l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1 = _init_l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1();
lean_mark_persistent(l_Array_forInUnsafe_loop___at___private_Aesop_Tree_AddRapp_0__Aesop_clusterGoals___spec__22___closed__1);
l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1 = _init_l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1();
lean_mark_persistent(l_Aesop_traverseUp___at___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___spec__9___closed__1);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__1 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__1();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__1);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__2);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__3 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__3();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__3);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__4);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__5 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__5();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__5);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__6);
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___lambda__3___closed__7();
l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___closed__1 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___closed__1();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_findPathForAssignedMVars___closed__1);
l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___closed__1 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___closed__1();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_getGoalsToCopy___closed__1);
l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1 = _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1();
lean_mark_persistent(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_copyGoals___spec__1___closed__1);
l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__1 = _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__1();
lean_mark_persistent(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__1);
l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__2 = _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__2();
lean_mark_persistent(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__2);
l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__3 = _init_l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__3();
lean_mark_persistent(l_Array_mapMUnsafe_map___at___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___spec__12___closed__3);
l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___closed__1 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___closed__1();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___lambda__1___closed__1);
l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1 = _init_l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1();
lean_mark_persistent(l___private_Aesop_Tree_AddRapp_0__Aesop_addRappUnsafe___boxed__const__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
