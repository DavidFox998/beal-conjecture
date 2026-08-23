// Lean compiler output
// Module: Batteries.Data.List.Basic
// Imports: Init Batteries.Data.List.Init.Lemmas Batteries.Tactic.Alias
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
LEAN_EXPORT lean_object* l_List_replaceFTR(lean_object*);
LEAN_EXPORT lean_object* l_List_transpose_go___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipRight_x27___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeList_match__2_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_toChunks_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sublists_x27(lean_object*);
LEAN_EXPORT uint8_t l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_takeD___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeft(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdx(lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__1;
LEAN_EXPORT lean_object* l_List_splitAtD(lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffixAux___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__10;
LEAN_EXPORT lean_object* l_List_sectionsTR_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_scanlTR_go_match__1_splitter(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeListTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_splitAtD_go(lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnP_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeDTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_replaceFTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_any_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSliceTR_go(lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_pwFilter___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNthTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_tailsTR_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082_match__2_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithRight_x27___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithRight___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sublistsFast(lean_object*);
LEAN_EXPORT lean_object* l_List_instUnionOfBEq__batteries___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_initsTR___spec__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_product(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists_x27___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_extractP_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sublistsFast___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnP___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_product___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeftTR_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists_x27___spec__2___rarg(lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6;
LEAN_EXPORT lean_object* l_List_dropSliceTR_go___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_removeNth___rarg(lean_object*, lean_object*);
lean_object* l_Array_push___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeList_match__2_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipLeft(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_transpose(lean_object*);
LEAN_EXPORT lean_object* l_List_zipWith_u2084(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_findIdxs___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sections___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_all_u2082(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__8;
LEAN_EXPORT lean_object* l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdxM___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__9;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2(lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__3;
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_fillNonesTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_toChunksAux___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeftTR_go___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnPTR(lean_object*);
LEAN_EXPORT uint8_t l_List_isSubperm___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnPTR_go_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffixAux(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sigma(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_scanr(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesValues___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_product___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNthTR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_product___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_after(lean_object*);
LEAN_EXPORT lean_object* l_List_scanlTR_go(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_next_x3f___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3(lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_product___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_foldlIdx_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_instDecidableForall_u2082(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_filterMap___at_List_fillNones___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_inits___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_replaceFTR_go(lean_object*);
lean_object* l_List_reverseAux___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyLast(lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_List_diff___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_indexesValues(lean_object*);
lean_object* l_Lean_replaceRef(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldlIdx___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
static lean_object* l_List_zipRight_x27___rarg___closed__1;
LEAN_EXPORT lean_object* l_List_revzip(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
static lean_object* l_List_inits___rarg___closed__1;
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__9;
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublistsFast___spec__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_sectionsTR_go___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_rotate_x27_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR_go(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_takeList(lean_object*);
LEAN_EXPORT lean_object* l_List_next_x3f(lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdxM(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeWhile_u2082(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sigma___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_isSubperm(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sectionsTR___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_eraseDup___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1(lean_object*);
LEAN_EXPORT uint8_t l_List_instDecidableForall_u2082___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists___spec__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSliceTR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_ofFnNthVal___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNthTail___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_insertP_loop___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5;
LEAN_EXPORT lean_object* l_List_zipWithLeft___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sections___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_scanl___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__2(lean_object*);
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdx_go(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_takeWhile_u2082___rarg___closed__1;
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_any_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_insertP_loop(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeDTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeft_x27TR_go___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_ofFn(lean_object*);
uint8_t l_List_any___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeftTR_go___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeftTR_go___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_fillNonesTR_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeListTR_go(lean_object*);
LEAN_EXPORT lean_object* l_List_productTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instInterOfBEq__batteries___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sections___spec__2___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__5;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesOf___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bagInter___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_traverse___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeDTR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_pwFilter___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWith_u2083___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_replaceF___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNonesTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNthTR(lean_object*);
LEAN_EXPORT lean_object* l_List_insertNthTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnP_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_lookmap(lean_object*);
lean_object* l_List_appendTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyLast_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNones_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesOf___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_List_toChunks___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_toChunks(lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdx___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_bagInter___rarg___closed__1;
LEAN_EXPORT lean_object* l_List_sublists(lean_object*);
lean_object* l_List_isEmpty___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_List_takeD(lean_object*);
LEAN_EXPORT lean_object* l_List_takeD___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitOn(lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_filterTR_loop___at_List_inter___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sections___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_initsTR___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_lookmap_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082TR_go_match__1_splitter(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_scanlTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWith_u2085(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_ofFnNthVal___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_toChunks_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNones_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_transpose___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_pwFilter___at_List_eraseDup___spec__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_inter___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_SourceInfo_fromRef(lean_object*, uint8_t);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__2;
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_insertNthTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipRight(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_rotate___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_zipLeft___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__11;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_initsTR___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_insertNth___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_replaceFTR_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeftTR___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* l_List_splitAt___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitAtD_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSlice_match__1_splitter(lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__7;
LEAN_EXPORT lean_object* l_List_tailsTR_go___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNthTail___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_tailsTR___rarg(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_rotate_x27_match__1_splitter(lean_object*, lean_object*);
lean_object* l_List_tail___rarg(lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__1;
LEAN_EXPORT uint8_t l_List_isSubperm___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_foldlIdx_match__1_splitter(lean_object*, lean_object*);
lean_object* l_flip___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_union___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_pwFilter___at_List_eraseDup___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnPTR_go___at_List_splitOn___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_product___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnPTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceFTR_go_match__1_splitter(lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__12;
LEAN_EXPORT lean_object* l_List_modifyLast___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_filterMapTR_go___at_List_fillNonesTR_go___spec__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instDecidableForall_u2082___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_getRest(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffix___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipLeft___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_ofFn___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_eraseDup___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithComplement___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_forM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sigma___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_node3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sectionsTR___spec__1___rarg(lean_object*, lean_object*);
static lean_object* l_List_replaceFTR_go___rarg___closed__1;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_removeNth(lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeftTR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_findIdxs___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_initsTR(lean_object*);
LEAN_EXPORT lean_object* l_List_allSome___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_sectionsTR_go___rarg___boxed(lean_object*, lean_object*);
lean_object* l_List_replicateTR___rarg(lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__1;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_findIdxs(lean_object*);
lean_object* l_Fin_foldr_loop___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeDTR_go(lean_object*);
LEAN_EXPORT lean_object* l_List_indexesValues___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_findIdxs___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_transpose_go___spec__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_List_all_u2082___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnP(lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithRight___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2(lean_object*, lean_object*);
lean_object* l_List_lengthTRAux___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyHead___rarg(lean_object*, lean_object*);
lean_object* l_Lean_addMacroScope(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_scanlTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapDiagM_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceFTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_scanlTR(lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_extractP(lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithComplement___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldlIdx(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_toChunks_go___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter(lean_object*, lean_object*);
lean_object* l_Lean_Syntax_node2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_scanlTR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapDiagM(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27TR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instInterOfBEq__batteries(lean_object*);
LEAN_EXPORT lean_object* l_List_term___x3c_x2b_x7e__;
LEAN_EXPORT lean_object* l_List_tailsTR(lean_object*);
LEAN_EXPORT lean_object* l_List_inter(lean_object*);
LEAN_EXPORT lean_object* l_List_zipLeft_x27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_matchesNull(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_indexesOf___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNonesTR_go_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
uint8_t l_List_elem___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSliceTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_rotate_x27(lean_object*);
LEAN_EXPORT lean_object* l_List_all_u2082___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_eraseDup(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_replaceFTR_go___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_getRest___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_List_eraseIdxTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_revzip___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_modifyLast_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_toChunksAux(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_tails___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg(lean_object*, size_t, size_t, lean_object*);
uint8_t l_List_decidableBAll___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipLeft_x27___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWith_u2083(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeListTR_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_pwFilter___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sigmaTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesValues___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_traverse(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipRight_x27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instUnionOfBEq__batteries(lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdxM_go___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_findIdxs___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdxM_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082_match__2_splitter(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeftTR(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeft_x27TR_go___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_forDiagM___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_zipLeft_x27___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeListTR(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_initsTR___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSlice(lean_object*);
LEAN_EXPORT lean_object* l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_insertP___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sublists_x27___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithComplement(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNth___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg(size_t, size_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sectionsTR___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sigma___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_sigmaTR(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldlM___at_List_mapDiagM_go___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffix(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_filterMapTR_go___at_List_fillNonesTR_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnP_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sectionsTR_go___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_lookmap___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_filterTR_loop___at_List_inter___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_insertNthTR___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_replaceF(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_isSubperm___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_transpose___rarg(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_isSubperm___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSliceTR(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_sublists___rarg(lean_object*);
lean_object* l_List_headD___rarg(lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__4;
lean_object* l_List_drop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_transpose___spec__1___rarg(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapDiagM_go___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_mod(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sigma___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_traverse___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__8;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNth___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_ofFn___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeList___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_insertNth(lean_object*);
LEAN_EXPORT lean_object* l_List_inits___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_insertNthTR_go(lean_object*);
LEAN_EXPORT lean_object* l_List_insertNthTR(lean_object*);
LEAN_EXPORT lean_object* l_List_extractP_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_removeNthTR(lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__10;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeWhile_u2082___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNthTail(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithLeftTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_fillNones(lean_object*);
LEAN_EXPORT lean_object* l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__6;
LEAN_EXPORT lean_object* l_List_modifyHead(lean_object*);
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_forDiagM(lean_object*, lean_object*);
extern lean_object* l_Id_instMonad;
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSlice___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__12;
LEAN_EXPORT lean_object* l_List_sectionsTR(lean_object*);
LEAN_EXPORT lean_object* l_List_diff(lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sigma___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_transpose_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__7;
LEAN_EXPORT lean_object* l_List_splitOn___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_transpose_pop(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSlice_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublistsFast___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_toChunks___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeDTR_go_match__1_splitter(lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__2;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_extractP___rarg(lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__4;
LEAN_EXPORT lean_object* l_List_union(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5(lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_sectionsTR_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_fillNonesTR(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTR_go_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_scanr___spec__1(lean_object*, lean_object*);
lean_object* l_List_foldl___at_Array_appendList___spec__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_allSome(lean_object*);
LEAN_EXPORT lean_object* l_List_insertNth___rarg___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_List_concat___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27_match__1_splitter(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithRight_x27(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitAtD___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_pwFilter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWith_u2084___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_reverse___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_zipWith_u2085___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_fillNones___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeDTR(lean_object*);
LEAN_EXPORT lean_object* l_List_transpose_go(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082TR_go_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_zipLeft_x27___rarg___closed__1;
size_t lean_usize_sub(size_t, size_t);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_sections(lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnPTR_go___at_List_splitOn___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__11;
LEAN_EXPORT lean_object* l_List_modifyNthTR_go(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_transpose_pop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4(lean_object*);
LEAN_EXPORT lean_object* l_List_zipRight___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__2___rarg(lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_List_ofFnNthVal(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27TR_go_match__1_splitter(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sublists___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_scanr___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_traverse___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_insertP(lean_object*);
lean_object* l_Array_foldrMUnsafe_fold___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
LEAN_EXPORT lean_object* l_List_fillNonesTR_go(lean_object*);
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdxM_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_dropSliceTR___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_insertNthTR_go_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeListTR_go_match__1_splitter(lean_object*, lean_object*);
lean_object* l_List_redLength___rarg(lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnP_go_match__1_splitter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_union___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_initsTR___rarg___closed__1;
LEAN_EXPORT lean_object* l_List_mapM_loop___at_List_allSome___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_dropSlice___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesOf___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_sectionsTR___rarg___closed__1;
LEAN_EXPORT lean_object* l_List_filterMap___at_List_fillNones___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_zipRight___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__3;
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__13;
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_union___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_List_eraseDup___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_scanr___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapM_loop___at_List_allSome___spec__1___rarg(lean_object*, lean_object*);
static lean_object* l_List_term___x3c_x2b_x7e_____closed__2;
LEAN_EXPORT lean_object* l_List_mapDiagM___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnPTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT lean_object* l_List_splitOnPTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sublists___spec__1(lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__3(lean_object*);
LEAN_EXPORT lean_object* l_List_tails(lean_object*);
LEAN_EXPORT lean_object* l_List_productTR(lean_object*, lean_object*);
lean_object* l_List_eraseTR_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_lookmap_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_scanl(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_modifyNth(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_toChunksAux___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapIdx_go___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_splitOnPTR_go(lean_object*);
LEAN_EXPORT lean_object* l_List_removeNthTR___rarg(lean_object*, lean_object*);
lean_object* l_String_toSubstring_x27(lean_object*);
LEAN_EXPORT lean_object* l_List_rotate_x27___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg(lean_object*, size_t, size_t, lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sections___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_List_inits(lean_object*);
lean_object* l_List_zipWith___at_List_zip___spec__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bagInter(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_zipWithRight(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_takeListTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_after___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_rotate___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_inits___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_rotate(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesValues___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_toArrayAux___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_indexesOf(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4(lean_object*);
static lean_object* l_List_initsTR___rarg___closed__2;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapDiagM_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1(lean_object*);
static lean_object* _init_l_List_bagInter___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_bagInter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_3);
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; 
lean_dec(x_2);
lean_dec(x_1);
x_5 = lean_box(0);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
lean_dec(x_2);
lean_inc(x_3);
lean_inc(x_6);
lean_inc(x_1);
x_8 = l_List_elem___rarg(x_1, x_6, x_3);
if (x_8 == 0)
{
lean_dec(x_6);
x_2 = x_7;
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = l_List_bagInter___rarg___closed__1;
lean_inc(x_6);
lean_inc(x_3);
lean_inc(x_1);
x_11 = l_List_eraseTR_go___rarg(x_1, x_3, x_6, x_3, x_10);
x_12 = !lean_is_exclusive(x_3);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_3, 1);
lean_dec(x_13);
x_14 = lean_ctor_get(x_3, 0);
lean_dec(x_14);
x_15 = l_List_bagInter___rarg(x_1, x_7, x_11);
lean_ctor_set(x_3, 1, x_15);
lean_ctor_set(x_3, 0, x_6);
return x_3;
}
else
{
lean_object* x_16; lean_object* x_17; 
lean_dec(x_3);
x_16 = l_List_bagInter___rarg(x_1, x_7, x_11);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_6);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_bagInter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_bagInter___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_diff___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
lean_inc(x_2);
lean_inc(x_4);
lean_inc(x_1);
x_6 = l_List_elem___rarg(x_1, x_4, x_2);
if (x_6 == 0)
{
lean_dec(x_4);
x_3 = x_5;
goto _start;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_List_bagInter___rarg___closed__1;
lean_inc(x_2);
lean_inc(x_1);
x_9 = l_List_eraseTR_go___rarg(x_1, x_2, x_4, x_2, x_8);
lean_dec(x_2);
x_2 = x_9;
x_3 = x_5;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_diff(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_diff___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_next_x3f___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; 
lean_ctor_set_tag(x_1, 0);
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_1);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_1);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
x_8 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_8, 0, x_7);
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_List_next_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_next_x3f___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_mapIdx_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_array_get_size(x_3);
lean_inc(x_1);
x_8 = lean_apply_2(x_1, x_7, x_5);
x_9 = lean_array_push(x_3, x_8);
x_2 = x_6;
x_3 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_mapIdx_go(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapIdx_go___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapIdx___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_mapIdx_go___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapIdx(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapIdx___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapIdxM_go___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_array_push(x_1, x_5);
x_7 = l_List_mapIdxM_go___rarg(x_2, x_3, x_4, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_mapIdxM_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_2);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_array_to_list(lean_box(0), x_4);
x_8 = lean_apply_2(x_6, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_dec(x_3);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
x_12 = lean_array_get_size(x_4);
lean_inc(x_2);
x_13 = lean_apply_2(x_2, x_12, x_9);
x_14 = lean_alloc_closure((void*)(l_List_mapIdxM_go___rarg___lambda__1), 5, 4);
lean_closure_set(x_14, 0, x_4);
lean_closure_set(x_14, 1, x_1);
lean_closure_set(x_14, 2, x_2);
lean_closure_set(x_14, 3, x_10);
x_15 = lean_apply_4(x_11, lean_box(0), lean_box(0), x_13, x_14);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_List_mapIdxM_go(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_mapIdxM_go___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapIdxM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_mapIdxM_go___rarg(x_1, x_3, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_mapIdxM(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_mapIdxM___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_after___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
lean_dec(x_1);
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
lean_dec(x_2);
lean_inc(x_1);
x_6 = lean_apply_1(x_1, x_4);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
x_2 = x_5;
goto _start;
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_List_after(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_after___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_removeNth___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
lean_inc(x_1);
x_4 = l_List_eraseIdxTR_go___rarg(x_1, x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_removeNth(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_removeNth___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_removeNthTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
lean_inc(x_1);
x_4 = l_List_eraseIdxTR_go___rarg(x_1, x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_removeNthTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_removeNthTR___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_replaceF___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
lean_dec(x_1);
x_3 = lean_box(0);
return x_3;
}
else
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_2);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_2, 0);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
lean_inc(x_5);
x_7 = lean_apply_1(x_1, x_5);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; 
x_8 = l_List_replaceF___rarg(x_1, x_6);
lean_ctor_set(x_2, 1, x_8);
return x_2;
}
else
{
lean_object* x_9; 
lean_dec(x_5);
lean_dec(x_1);
x_9 = lean_ctor_get(x_7, 0);
lean_inc(x_9);
lean_dec(x_7);
lean_ctor_set(x_2, 0, x_9);
return x_2;
}
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_2, 0);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_10);
x_12 = lean_apply_1(x_1, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = l_List_replaceF___rarg(x_1, x_11);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; 
lean_dec(x_10);
lean_dec(x_1);
x_15 = lean_ctor_get(x_12, 0);
lean_inc(x_15);
lean_dec(x_12);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_11);
return x_16;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_replaceF(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_replaceF___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_dec(x_3);
lean_inc(x_2);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_2(x_3, x_4, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Batteries_Data_List_Basic_0__List_next_x3f_match__1_splitter___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_replaceFTR_go___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_replaceFTR_go___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_replaceFTR_go___rarg___lambda__1), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_List_replaceFTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
lean_inc(x_6);
x_8 = lean_apply_1(x_1, x_6);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_free_object(x_2);
x_9 = lean_array_push(x_3, x_6);
x_2 = x_7;
x_3 = x_9;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
lean_dec(x_6);
lean_dec(x_1);
x_11 = lean_ctor_get(x_8, 0);
lean_inc(x_11);
lean_dec(x_8);
lean_ctor_set(x_2, 0, x_11);
x_12 = lean_array_get_size(x_3);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_12);
if (x_14 == 0)
{
lean_dec(x_12);
lean_dec(x_3);
return x_2;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_15 = lean_usize_of_nat(x_12);
lean_dec(x_12);
x_16 = 0;
x_17 = l_Id_instMonad;
x_18 = l_List_replaceFTR_go___rarg___closed__1;
x_19 = l_Array_foldrMUnsafe_fold___rarg(x_17, x_18, x_3, x_15, x_16, x_2);
return x_19;
}
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_2, 0);
x_21 = lean_ctor_get(x_2, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_20);
x_22 = lean_apply_1(x_1, x_20);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; 
x_23 = lean_array_push(x_3, x_20);
x_2 = x_21;
x_3 = x_23;
goto _start;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
lean_dec(x_20);
lean_dec(x_1);
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
lean_dec(x_22);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_21);
x_27 = lean_array_get_size(x_3);
x_28 = lean_unsigned_to_nat(0u);
x_29 = lean_nat_dec_lt(x_28, x_27);
if (x_29 == 0)
{
lean_dec(x_27);
lean_dec(x_3);
return x_26;
}
else
{
size_t x_30; size_t x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_30 = lean_usize_of_nat(x_27);
lean_dec(x_27);
x_31 = 0;
x_32 = l_Id_instMonad;
x_33 = l_List_replaceFTR_go___rarg___closed__1;
x_34 = l_Array_foldrMUnsafe_fold___rarg(x_32, x_33, x_3, x_30, x_31, x_26);
return x_34;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_replaceFTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_replaceFTR_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_replaceFTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_replaceFTR_go___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_replaceFTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_replaceFTR___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceFTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_2);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_apply_3(x_4, x_6, x_7, x_2);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceFTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_replaceFTR_go_match__1_splitter___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_dec(x_3);
lean_inc(x_2);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_1(x_3, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Batteries_Data_List_Basic_0__List_replaceF_match__1_splitter___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; uint8_t x_10; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
lean_inc(x_5);
lean_inc(x_9);
lean_inc(x_1);
x_10 = l_List_elem___rarg(x_1, x_9, x_5);
if (x_10 == 0)
{
lean_object* x_11; 
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_9);
lean_ctor_set(x_11, 1, x_5);
x_3 = x_8;
x_5 = x_11;
goto _start;
}
else
{
lean_dec(x_9);
x_3 = x_8;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; uint8_t x_10; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
lean_inc(x_5);
lean_inc(x_9);
lean_inc(x_1);
x_10 = l_List_elem___rarg(x_1, x_9, x_5);
if (x_10 == 0)
{
lean_object* x_11; 
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_9);
lean_ctor_set(x_11, 1, x_5);
x_3 = x_8;
x_5 = x_11;
goto _start;
}
else
{
lean_dec(x_9);
x_3 = x_8;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_union___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_4 = l_List_redLength___rarg(x_3);
x_5 = lean_mk_empty_array_with_capacity(x_4);
lean_dec(x_4);
x_6 = l_List_toArrayAux___rarg(x_3, x_5);
x_7 = lean_array_get_size(x_6);
x_8 = lean_nat_dec_le(x_7, x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_7);
if (x_10 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_12 = 0;
x_13 = l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg(x_1, x_6, x_11, x_12, x_2);
lean_dec(x_6);
return x_13;
}
}
else
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_nat_dec_lt(x_14, x_7);
if (x_15 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_16; size_t x_17; lean_object* x_18; 
x_16 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_17 = 0;
x_18 = l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg(x_1, x_6, x_16, x_17, x_2);
lean_dec(x_6);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_union___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_union___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_union___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_foldrTR___at_List_union___spec__1___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_union(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_union___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_union___spec__2___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_union___spec__3___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_instUnionOfBEq__batteries___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_union___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_instUnionOfBEq__batteries(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_instUnionOfBEq__batteries___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_filterTR_loop___at_List_inter___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; 
lean_dec(x_2);
lean_dec(x_1);
x_5 = l_List_reverse___rarg(x_4);
return x_5;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_3);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_2);
lean_inc(x_7);
lean_inc(x_1);
x_9 = l_List_elem___rarg(x_1, x_7, x_2);
if (x_9 == 0)
{
lean_free_object(x_3);
lean_dec(x_7);
x_3 = x_8;
goto _start;
}
else
{
lean_ctor_set(x_3, 1, x_4);
{
lean_object* _tmp_2 = x_8;
lean_object* _tmp_3 = x_3;
x_3 = _tmp_2;
x_4 = _tmp_3;
}
goto _start;
}
}
else
{
lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_12 = lean_ctor_get(x_3, 0);
x_13 = lean_ctor_get(x_3, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_3);
lean_inc(x_2);
lean_inc(x_12);
lean_inc(x_1);
x_14 = l_List_elem___rarg(x_1, x_12, x_2);
if (x_14 == 0)
{
lean_dec(x_12);
x_3 = x_13;
goto _start;
}
else
{
lean_object* x_16; 
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_12);
lean_ctor_set(x_16, 1, x_4);
x_3 = x_13;
x_4 = x_16;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_filterTR_loop___at_List_inter___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_filterTR_loop___at_List_inter___spec__1___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_inter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_box(0);
x_5 = l_List_filterTR_loop___at_List_inter___spec__1___rarg(x_1, x_3, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_inter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_inter___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_instInterOfBEq__batteries___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_inter___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_instInterOfBEq__batteries(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_instInterOfBEq__batteries___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitAtD_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_eq(x_2, x_5);
if (x_6 == 0)
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = l_List_replicateTR___rarg(x_2, x_1);
x_8 = l_List_reverseAux___rarg(x_4, x_7);
x_9 = lean_box(0);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
else
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_3);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_3, 1);
x_13 = lean_unsigned_to_nat(1u);
x_14 = lean_nat_sub(x_2, x_13);
lean_dec(x_2);
lean_ctor_set(x_3, 1, x_4);
{
lean_object* _tmp_1 = x_14;
lean_object* _tmp_2 = x_12;
lean_object* _tmp_3 = x_3;
x_2 = _tmp_1;
x_3 = _tmp_2;
x_4 = _tmp_3;
}
goto _start;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_3, 0);
x_17 = lean_ctor_get(x_3, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_3);
x_18 = lean_unsigned_to_nat(1u);
x_19 = lean_nat_sub(x_2, x_18);
lean_dec(x_2);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_16);
lean_ctor_set(x_20, 1, x_4);
x_2 = x_19;
x_3 = x_17;
x_4 = x_20;
goto _start;
}
}
}
else
{
lean_object* x_22; lean_object* x_23; 
lean_dec(x_2);
lean_dec(x_1);
x_22 = l_List_reverse___rarg(x_4);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_3);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_List_splitAtD_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitAtD_go___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitAtD___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_box(0);
x_5 = l_List_splitAtD_go___rarg(x_3, x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_splitAtD(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitAtD___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitOnP_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
x_5 = lean_box(0);
x_6 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_2);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
lean_inc(x_8);
x_10 = lean_apply_1(x_1, x_8);
x_11 = lean_unbox(x_10);
lean_dec(x_10);
if (x_11 == 0)
{
lean_ctor_set(x_2, 1, x_3);
{
lean_object* _tmp_1 = x_9;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_8);
x_13 = l_List_reverse___rarg(x_3);
x_14 = lean_box(0);
x_15 = l_List_splitOnP_go___rarg(x_1, x_9, x_14);
lean_ctor_set(x_2, 1, x_15);
lean_ctor_set(x_2, 0, x_13);
return x_2;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_2, 0);
x_17 = lean_ctor_get(x_2, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_16);
x_18 = lean_apply_1(x_1, x_16);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; 
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_16);
lean_ctor_set(x_20, 1, x_3);
x_2 = x_17;
x_3 = x_20;
goto _start;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
lean_dec(x_16);
x_22 = l_List_reverse___rarg(x_3);
x_23 = lean_box(0);
x_24 = l_List_splitOnP_go___rarg(x_1, x_17, x_23);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_22);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_splitOnP_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitOnP_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitOnP___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_List_splitOnP_go___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_splitOnP(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitOnP___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitOnPTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_dec(x_1);
x_5 = lean_array_to_list(lean_box(0), x_3);
x_6 = lean_box(0);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
x_8 = lean_array_get_size(x_4);
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_8);
if (x_10 == 0)
{
lean_dec(x_8);
lean_dec(x_4);
return x_7;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_12 = 0;
x_13 = l_Id_instMonad;
x_14 = l_List_replaceFTR_go___rarg___closed__1;
x_15 = l_Array_foldrMUnsafe_fold___rarg(x_13, x_14, x_4, x_11, x_12, x_7);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_2, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_2, 1);
lean_inc(x_17);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_16);
x_18 = lean_apply_1(x_1, x_16);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; 
x_20 = lean_array_push(x_3, x_16);
x_2 = x_17;
x_3 = x_20;
goto _start;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
lean_dec(x_16);
x_22 = lean_array_to_list(lean_box(0), x_3);
x_23 = lean_array_push(x_4, x_22);
x_24 = l_List_bagInter___rarg___closed__1;
x_2 = x_17;
x_3 = x_24;
x_4 = x_23;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_splitOnPTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitOnPTR_go___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitOnPTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_splitOnPTR_go___rarg(x_1, x_2, x_3, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_splitOnPTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitOnPTR___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnP_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_2);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_apply_3(x_4, x_6, x_7, x_2);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnP_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_splitOnP_go_match__1_splitter___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnPTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_6; 
lean_dec(x_5);
x_6 = lean_apply_2(x_4, x_2, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_apply_4(x_5, x_7, x_8, x_2, x_3);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_splitOnPTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_splitOnPTR_go_match__1_splitter___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitOnPTR_go___at_List_splitOn___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_array_to_list(lean_box(0), x_4);
x_7 = lean_box(0);
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
x_9 = lean_array_get_size(x_5);
x_10 = lean_nat_dec_le(x_9, x_9);
if (x_10 == 0)
{
lean_object* x_11; uint8_t x_12; 
x_11 = lean_unsigned_to_nat(0u);
x_12 = lean_nat_dec_lt(x_11, x_9);
if (x_12 == 0)
{
lean_dec(x_9);
lean_dec(x_5);
return x_8;
}
else
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_usize_of_nat(x_9);
lean_dec(x_9);
x_14 = 0;
x_15 = l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg(x_5, x_13, x_14, x_8);
lean_dec(x_5);
return x_15;
}
}
else
{
lean_object* x_16; uint8_t x_17; 
x_16 = lean_unsigned_to_nat(0u);
x_17 = lean_nat_dec_lt(x_16, x_9);
if (x_17 == 0)
{
lean_dec(x_9);
lean_dec(x_5);
return x_8;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = lean_usize_of_nat(x_9);
lean_dec(x_9);
x_19 = 0;
x_20 = l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg(x_5, x_18, x_19, x_8);
lean_dec(x_5);
return x_20;
}
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_21 = lean_ctor_get(x_3, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_3, 1);
lean_inc(x_22);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_2);
lean_inc(x_21);
x_23 = lean_apply_2(x_1, x_21, x_2);
x_24 = lean_unbox(x_23);
lean_dec(x_23);
if (x_24 == 0)
{
lean_object* x_25; 
x_25 = lean_array_push(x_4, x_21);
x_3 = x_22;
x_4 = x_25;
goto _start;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_21);
x_27 = lean_array_to_list(lean_box(0), x_4);
x_28 = lean_array_push(x_5, x_27);
x_29 = l_List_bagInter___rarg___closed__1;
x_3 = x_22;
x_4 = x_29;
x_5 = x_28;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_splitOnPTR_go___at_List_splitOn___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitOnPTR_go___at_List_splitOn___spec__1___rarg), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_splitOn___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_splitOnPTR_go___at_List_splitOn___spec__1___rarg(x_1, x_2, x_3, x_4, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_splitOn(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_splitOn___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_splitOn___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTail___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_2, x_4);
if (x_5 == 0)
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_6; 
lean_dec(x_1);
x_6 = lean_box(0);
return x_6;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_2, x_9);
x_11 = l_List_modifyNthTail___rarg(x_1, x_10, x_8);
lean_dec(x_10);
lean_ctor_set(x_3, 1, x_11);
return x_3;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_12 = lean_ctor_get(x_3, 0);
x_13 = lean_ctor_get(x_3, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_3);
x_14 = lean_unsigned_to_nat(1u);
x_15 = lean_nat_sub(x_2, x_14);
x_16 = l_List_modifyNthTail___rarg(x_1, x_15, x_13);
lean_dec(x_15);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_12);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
else
{
lean_object* x_18; 
x_18 = lean_apply_1(x_1, x_3);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTail(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyNthTail___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTail___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_modifyNthTail___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_1, x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
lean_dec(x_3);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_1, x_8);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_10; 
lean_dec(x_5);
x_10 = lean_apply_1(x_4, x_9);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_4);
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_dec(x_2);
x_13 = lean_apply_3(x_5, x_9, x_11, x_12);
return x_13;
}
}
else
{
lean_object* x_14; 
lean_dec(x_5);
lean_dec(x_4);
x_14 = lean_apply_1(x_3, x_2);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l___private_Batteries_Data_List_Basic_0__List_modifyNthTail_match__1_splitter___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_modifyHead___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
lean_dec(x_1);
x_3 = lean_box(0);
return x_3;
}
else
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_2);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_2, 0);
x_6 = lean_apply_1(x_1, x_5);
lean_ctor_set(x_2, 0, x_6);
return x_2;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_2, 0);
x_8 = lean_ctor_get(x_2, 1);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_2);
x_9 = lean_apply_1(x_1, x_7);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_List_modifyHead(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyHead___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_modifyNth___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_closure((void*)(l_List_modifyHead___rarg), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = l_List_modifyNthTail___rarg(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_modifyNth(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyNth___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_modifyNth___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_modifyNth___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
lean_dec(x_3);
lean_dec(x_1);
x_5 = lean_array_to_list(lean_box(0), x_4);
return x_5;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_2);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_7 = lean_ctor_get(x_2, 0);
x_8 = lean_ctor_get(x_2, 1);
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_eq(x_3, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_free_object(x_2);
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_sub(x_3, x_11);
lean_dec(x_3);
x_13 = lean_array_push(x_4, x_7);
x_2 = x_8;
x_3 = x_12;
x_4 = x_13;
goto _start;
}
else
{
lean_object* x_15; lean_object* x_16; uint8_t x_17; 
lean_dec(x_3);
x_15 = lean_apply_1(x_1, x_7);
lean_ctor_set(x_2, 0, x_15);
x_16 = lean_array_get_size(x_4);
x_17 = lean_nat_dec_le(x_16, x_16);
if (x_17 == 0)
{
uint8_t x_18; 
x_18 = lean_nat_dec_lt(x_9, x_16);
if (x_18 == 0)
{
lean_dec(x_16);
lean_dec(x_4);
return x_2;
}
else
{
size_t x_19; size_t x_20; lean_object* x_21; 
x_19 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_20 = 0;
x_21 = l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg(x_4, x_19, x_20, x_2);
lean_dec(x_4);
return x_21;
}
}
else
{
uint8_t x_22; 
x_22 = lean_nat_dec_lt(x_9, x_16);
if (x_22 == 0)
{
lean_dec(x_16);
lean_dec(x_4);
return x_2;
}
else
{
size_t x_23; size_t x_24; lean_object* x_25; 
x_23 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_24 = 0;
x_25 = l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg(x_4, x_23, x_24, x_2);
lean_dec(x_4);
return x_25;
}
}
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_26 = lean_ctor_get(x_2, 0);
x_27 = lean_ctor_get(x_2, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_2);
x_28 = lean_unsigned_to_nat(0u);
x_29 = lean_nat_dec_eq(x_3, x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_unsigned_to_nat(1u);
x_31 = lean_nat_sub(x_3, x_30);
lean_dec(x_3);
x_32 = lean_array_push(x_4, x_26);
x_2 = x_27;
x_3 = x_31;
x_4 = x_32;
goto _start;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; 
lean_dec(x_3);
x_34 = lean_apply_1(x_1, x_26);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_27);
x_36 = lean_array_get_size(x_4);
x_37 = lean_nat_dec_le(x_36, x_36);
if (x_37 == 0)
{
uint8_t x_38; 
x_38 = lean_nat_dec_lt(x_28, x_36);
if (x_38 == 0)
{
lean_dec(x_36);
lean_dec(x_4);
return x_35;
}
else
{
size_t x_39; size_t x_40; lean_object* x_41; 
x_39 = lean_usize_of_nat(x_36);
lean_dec(x_36);
x_40 = 0;
x_41 = l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg(x_4, x_39, x_40, x_35);
lean_dec(x_4);
return x_41;
}
}
else
{
uint8_t x_42; 
x_42 = lean_nat_dec_lt(x_28, x_36);
if (x_42 == 0)
{
lean_dec(x_36);
lean_dec(x_4);
return x_35;
}
else
{
size_t x_43; size_t x_44; lean_object* x_45; 
x_43 = lean_usize_of_nat(x_36);
lean_dec(x_36);
x_44 = 0;
x_45 = l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg(x_4, x_43, x_44, x_35);
lean_dec(x_4);
return x_45;
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyNthTR_go___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_modifyNthTR_go___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_modifyNthTR_go___rarg(x_1, x_3, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_modifyNthTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyNthTR___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_7; 
lean_dec(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_4, x_2, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
lean_dec(x_4);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_unsigned_to_nat(0u);
x_11 = lean_nat_dec_eq(x_2, x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_5);
x_12 = lean_unsigned_to_nat(1u);
x_13 = lean_nat_sub(x_2, x_12);
lean_dec(x_2);
x_14 = lean_apply_4(x_6, x_8, x_9, x_13, x_3);
return x_14;
}
else
{
lean_object* x_15; 
lean_dec(x_6);
lean_dec(x_2);
x_15 = lean_apply_3(x_5, x_8, x_9, x_3);
return x_15;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_modifyNthTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_modifyNthTR_go_match__1_splitter___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_modifyLast_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_3);
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
if (lean_obj_tag(x_5) == 0)
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_2);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_7 = lean_ctor_get(x_2, 0);
x_8 = lean_ctor_get(x_2, 1);
lean_dec(x_8);
x_9 = lean_apply_1(x_1, x_7);
x_10 = lean_box(0);
lean_ctor_set(x_2, 1, x_10);
lean_ctor_set(x_2, 0, x_9);
x_11 = lean_array_get_size(x_3);
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_nat_dec_lt(x_12, x_11);
if (x_13 == 0)
{
lean_dec(x_11);
lean_dec(x_3);
return x_2;
}
else
{
size_t x_14; size_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_usize_of_nat(x_11);
lean_dec(x_11);
x_15 = 0;
x_16 = l_Id_instMonad;
x_17 = l_List_replaceFTR_go___rarg___closed__1;
x_18 = l_Array_foldrMUnsafe_fold___rarg(x_16, x_17, x_3, x_14, x_15, x_2);
return x_18;
}
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_19 = lean_ctor_get(x_2, 0);
lean_inc(x_19);
lean_dec(x_2);
x_20 = lean_apply_1(x_1, x_19);
x_21 = lean_box(0);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
x_23 = lean_array_get_size(x_3);
x_24 = lean_unsigned_to_nat(0u);
x_25 = lean_nat_dec_lt(x_24, x_23);
if (x_25 == 0)
{
lean_dec(x_23);
lean_dec(x_3);
return x_22;
}
else
{
size_t x_26; size_t x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_26 = lean_usize_of_nat(x_23);
lean_dec(x_23);
x_27 = 0;
x_28 = l_Id_instMonad;
x_29 = l_List_replaceFTR_go___rarg___closed__1;
x_30 = l_Array_foldrMUnsafe_fold___rarg(x_28, x_29, x_3, x_26, x_27, x_22);
return x_30;
}
}
}
else
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_2, 0);
lean_inc(x_31);
lean_dec(x_2);
x_32 = lean_array_push(x_3, x_31);
x_2 = x_5;
x_3 = x_32;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_modifyLast_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyLast_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_modifyLast___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_modifyLast_go___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_modifyLast(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_modifyLast___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_insertNth___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_closure((void*)(l_List_replaceFTR_go___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_2);
x_5 = l_List_modifyNthTail___rarg(x_4, x_1, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_insertNth(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_insertNth___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_insertNth___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_insertNth___rarg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_insertNthTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_eq(x_2, x_5);
if (x_6 == 0)
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_7; 
lean_dec(x_2);
lean_dec(x_1);
x_7 = lean_array_to_list(lean_box(0), x_4);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_3, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_3, 1);
lean_inc(x_9);
lean_dec(x_3);
x_10 = lean_unsigned_to_nat(1u);
x_11 = lean_nat_sub(x_2, x_10);
lean_dec(x_2);
x_12 = lean_array_push(x_4, x_8);
x_2 = x_11;
x_3 = x_9;
x_4 = x_12;
goto _start;
}
}
else
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; 
lean_dec(x_2);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_1);
lean_ctor_set(x_14, 1, x_3);
x_15 = lean_array_get_size(x_4);
x_16 = lean_nat_dec_le(x_15, x_15);
if (x_16 == 0)
{
uint8_t x_17; 
x_17 = lean_nat_dec_lt(x_5, x_15);
if (x_17 == 0)
{
lean_dec(x_15);
lean_dec(x_4);
return x_14;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_19 = 0;
x_20 = l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg(x_4, x_18, x_19, x_14);
lean_dec(x_4);
return x_20;
}
}
else
{
uint8_t x_21; 
x_21 = lean_nat_dec_lt(x_5, x_15);
if (x_21 == 0)
{
lean_dec(x_15);
lean_dec(x_4);
return x_14;
}
else
{
size_t x_22; size_t x_23; lean_object* x_24; 
x_22 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_23 = 0;
x_24 = l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg(x_4, x_22, x_23, x_14);
lean_dec(x_4);
return x_24;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_insertNthTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_insertNthTR_go___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_insertNthTR_go___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_insertNthTR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_insertNthTR_go___rarg(x_2, x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_insertNthTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_insertNthTR___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_insertNthTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_eq(x_1, x_7);
if (x_8 == 0)
{
lean_dec(x_4);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_9; 
lean_dec(x_6);
x_9 = lean_apply_3(x_5, x_1, x_3, lean_box(0));
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_5);
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
x_12 = lean_unsigned_to_nat(1u);
x_13 = lean_nat_sub(x_1, x_12);
lean_dec(x_1);
x_14 = lean_apply_4(x_6, x_13, x_10, x_11, x_3);
return x_14;
}
}
else
{
lean_object* x_15; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_15 = lean_apply_2(x_4, x_2, x_3);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_insertNthTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_insertNthTR_go_match__1_splitter___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_takeD___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_1, x_6);
x_8 = l_List_headD___rarg(x_2, x_3);
x_9 = l_List_tail___rarg(x_2);
x_10 = l_List_takeD___rarg(x_7, x_9, x_3);
lean_dec(x_9);
lean_dec(x_7);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_8);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
else
{
lean_object* x_12; 
x_12 = lean_box(0);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_List_takeD(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_takeD___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_takeD___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_takeD___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_1, x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_4);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_1, x_8);
x_10 = lean_apply_3(x_5, x_9, x_2, x_3);
return x_10;
}
else
{
lean_object* x_11; 
lean_dec(x_5);
x_11 = lean_apply_2(x_4, x_2, x_3);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l___private_Batteries_Data_List_Basic_0__List_takeD_match__1_splitter___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_takeDTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_eq(x_2, x_5);
if (x_6 == 0)
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = l_List_replicateTR___rarg(x_2, x_1);
x_8 = lean_array_get_size(x_4);
x_9 = lean_nat_dec_le(x_8, x_8);
if (x_9 == 0)
{
uint8_t x_10; 
x_10 = lean_nat_dec_lt(x_5, x_8);
if (x_10 == 0)
{
lean_dec(x_8);
lean_dec(x_4);
return x_7;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_12 = 0;
x_13 = l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg(x_4, x_11, x_12, x_7);
lean_dec(x_4);
return x_13;
}
}
else
{
uint8_t x_14; 
x_14 = lean_nat_dec_lt(x_5, x_8);
if (x_14 == 0)
{
lean_dec(x_8);
lean_dec(x_4);
return x_7;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg(x_4, x_15, x_16, x_7);
lean_dec(x_4);
return x_17;
}
}
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_3, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_3, 1);
lean_inc(x_19);
lean_dec(x_3);
x_20 = lean_unsigned_to_nat(1u);
x_21 = lean_nat_sub(x_2, x_20);
lean_dec(x_2);
x_22 = lean_array_push(x_4, x_18);
x_2 = x_21;
x_3 = x_19;
x_4 = x_22;
goto _start;
}
}
else
{
lean_object* x_24; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_24 = lean_array_to_list(lean_box(0), x_4);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_List_takeDTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_takeDTR_go___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_takeDTR_go___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_takeDTR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_takeDTR_go___rarg(x_3, x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_takeDTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_takeDTR___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeDTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_eq(x_1, x_7);
if (x_8 == 0)
{
lean_dec(x_5);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_9; 
lean_dec(x_4);
x_9 = lean_apply_3(x_6, x_1, x_3, lean_box(0));
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_6);
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
x_12 = lean_unsigned_to_nat(1u);
x_13 = lean_nat_sub(x_1, x_12);
lean_dec(x_1);
x_14 = lean_apply_4(x_4, x_13, x_10, x_11, x_3);
return x_14;
}
}
else
{
lean_object* x_15; 
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_1);
x_15 = lean_apply_2(x_5, x_2, x_3);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeDTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_takeDTR_go_match__1_splitter___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_scanl___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; 
lean_dec(x_1);
x_4 = lean_box(0);
x_5 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_3);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_inc(x_2);
x_9 = lean_apply_2(x_1, x_2, x_7);
x_10 = l_List_scanl___rarg(x_1, x_9, x_8);
lean_ctor_set(x_3, 1, x_10);
lean_ctor_set(x_3, 0, x_2);
return x_3;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_2);
x_13 = lean_apply_2(x_1, x_2, x_11);
x_14 = l_List_scanl___rarg(x_1, x_13, x_12);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_2);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
}
}
LEAN_EXPORT lean_object* l_List_scanl(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_scanl___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_scanlTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
lean_dec(x_1);
x_5 = lean_box(0);
x_6 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
x_7 = lean_array_get_size(x_4);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_7);
if (x_9 == 0)
{
lean_dec(x_7);
lean_dec(x_4);
return x_6;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_11 = 0;
x_12 = l_Id_instMonad;
x_13 = l_List_replaceFTR_go___rarg___closed__1;
x_14 = l_Array_foldrMUnsafe_fold___rarg(x_12, x_13, x_4, x_10, x_11, x_6);
return x_14;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_2, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_3);
x_17 = lean_apply_2(x_1, x_3, x_15);
x_18 = lean_array_push(x_4, x_3);
x_2 = x_16;
x_3 = x_17;
x_4 = x_18;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_scanlTR_go(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_scanlTR_go___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_scanlTR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_scanlTR_go___rarg(x_1, x_3, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_scanlTR(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_scanlTR___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_scanlTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_6; 
lean_dec(x_5);
x_6 = lean_apply_2(x_4, x_2, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_apply_4(x_5, x_7, x_8, x_2, x_3);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_scanlTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_scanlTR_go_match__1_splitter___rarg), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; uint8_t x_10; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
x_10 = !lean_is_exclusive(x_5);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_5, 0);
x_12 = lean_ctor_get(x_5, 1);
lean_inc(x_1);
lean_inc(x_11);
x_13 = lean_apply_2(x_1, x_9, x_11);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_11);
lean_ctor_set(x_14, 1, x_12);
lean_ctor_set(x_5, 1, x_14);
lean_ctor_set(x_5, 0, x_13);
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_5, 0);
x_17 = lean_ctor_get(x_5, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_5);
lean_inc(x_1);
lean_inc(x_16);
x_18 = lean_apply_2(x_1, x_9, x_16);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_16);
lean_ctor_set(x_19, 1, x_17);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_3 = x_8;
x_5 = x_20;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; uint8_t x_10; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
x_10 = !lean_is_exclusive(x_5);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_5, 0);
x_12 = lean_ctor_get(x_5, 1);
lean_inc(x_1);
lean_inc(x_11);
x_13 = lean_apply_2(x_1, x_9, x_11);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_11);
lean_ctor_set(x_14, 1, x_12);
lean_ctor_set(x_5, 1, x_14);
lean_ctor_set(x_5, 0, x_13);
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_5, 0);
x_17 = lean_ctor_get(x_5, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_5);
lean_inc(x_1);
lean_inc(x_16);
x_18 = lean_apply_2(x_1, x_9, x_16);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_16);
lean_ctor_set(x_19, 1, x_17);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_3 = x_8;
x_5 = x_20;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_scanr___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_4 = l_List_redLength___rarg(x_3);
x_5 = lean_mk_empty_array_with_capacity(x_4);
lean_dec(x_4);
x_6 = l_List_toArrayAux___rarg(x_3, x_5);
x_7 = lean_array_get_size(x_6);
x_8 = lean_nat_dec_le(x_7, x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_7);
if (x_10 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_12 = 0;
x_13 = l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg(x_1, x_6, x_11, x_12, x_2);
lean_dec(x_6);
return x_13;
}
}
else
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_nat_dec_lt(x_14, x_7);
if (x_15 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_16; size_t x_17; lean_object* x_18; 
x_16 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_17 = 0;
x_18 = l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg(x_1, x_6, x_16, x_17, x_2);
lean_dec(x_6);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_scanr___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_scanr___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_scanr___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_box(0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
x_6 = l_List_foldrTR___at_List_scanr___spec__1___rarg(x_1, x_5, x_3);
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
lean_ctor_set_tag(x_6, 1);
return x_6;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_6, 0);
x_9 = lean_ctor_get(x_6, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_6);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_List_scanr(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_scanr___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_scanr___spec__2___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_scanr___spec__3___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_foldlIdx___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_4);
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_4);
x_7 = lean_apply_3(x_1, x_4, x_2, x_5);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_add(x_4, x_8);
lean_dec(x_4);
x_2 = x_7;
x_3 = x_6;
x_4 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_foldlIdx(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldlIdx___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_foldlIdx_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_2);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_apply_3(x_4, x_6, x_7, x_2);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_foldlIdx_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_foldlIdx_match__1_splitter___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_4);
lean_dec(x_1);
lean_inc(x_2);
return x_2;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_add(x_4, x_7);
lean_inc(x_1);
x_9 = l_List_foldrIdx___rarg(x_1, x_2, x_6, x_8);
x_10 = lean_apply_3(x_1, x_4, x_5, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldrIdx___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_foldrIdx___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_findIdxs___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_4);
lean_dec(x_1);
lean_inc(x_2);
return x_2;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_add(x_4, x_8);
lean_inc(x_1);
x_10 = l_List_foldrIdx___at_List_findIdxs___spec__1___rarg(x_1, x_2, x_7, x_9);
x_11 = lean_apply_1(x_1, x_6);
x_12 = lean_unbox(x_11);
lean_dec(x_11);
if (x_12 == 0)
{
lean_free_object(x_3);
lean_dec(x_4);
return x_10;
}
else
{
lean_ctor_set(x_3, 1, x_10);
lean_ctor_set(x_3, 0, x_4);
return x_3;
}
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_3, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_3);
x_15 = lean_unsigned_to_nat(1u);
x_16 = lean_nat_add(x_4, x_15);
lean_inc(x_1);
x_17 = l_List_foldrIdx___at_List_findIdxs___spec__1___rarg(x_1, x_2, x_14, x_16);
x_18 = lean_apply_1(x_1, x_13);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_dec(x_4);
return x_17;
}
else
{
lean_object* x_20; 
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_4);
lean_ctor_set(x_20, 1, x_17);
return x_20;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_findIdxs___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrIdx___at_List_findIdxs___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_findIdxs___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_box(0);
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_List_foldrIdx___at_List_findIdxs___spec__1___rarg(x_1, x_3, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_findIdxs(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_findIdxs___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_findIdxs___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_foldrIdx___at_List_findIdxs___spec__1___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesValues___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_4);
lean_dec(x_1);
lean_inc(x_2);
return x_2;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_add(x_4, x_8);
lean_inc(x_1);
x_10 = l_List_foldrIdx___at_List_indexesValues___spec__1___rarg(x_1, x_2, x_7, x_9);
lean_inc(x_6);
x_11 = lean_apply_1(x_1, x_6);
x_12 = lean_unbox(x_11);
lean_dec(x_11);
if (x_12 == 0)
{
lean_free_object(x_3);
lean_dec(x_6);
lean_dec(x_4);
return x_10;
}
else
{
lean_object* x_13; 
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_4);
lean_ctor_set(x_13, 1, x_6);
lean_ctor_set(x_3, 1, x_10);
lean_ctor_set(x_3, 0, x_13);
return x_3;
}
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_14 = lean_ctor_get(x_3, 0);
x_15 = lean_ctor_get(x_3, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_3);
x_16 = lean_unsigned_to_nat(1u);
x_17 = lean_nat_add(x_4, x_16);
lean_inc(x_1);
x_18 = l_List_foldrIdx___at_List_indexesValues___spec__1___rarg(x_1, x_2, x_15, x_17);
lean_inc(x_14);
x_19 = lean_apply_1(x_1, x_14);
x_20 = lean_unbox(x_19);
lean_dec(x_19);
if (x_20 == 0)
{
lean_dec(x_14);
lean_dec(x_4);
return x_18;
}
else
{
lean_object* x_21; lean_object* x_22; 
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_4);
lean_ctor_set(x_21, 1, x_14);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_18);
return x_22;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesValues___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrIdx___at_List_indexesValues___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_indexesValues___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_box(0);
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_List_foldrIdx___at_List_indexesValues___spec__1___rarg(x_1, x_3, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_indexesValues(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_indexesValues___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesValues___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_foldrIdx___at_List_indexesValues___spec__1___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesOf___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_4) == 0)
{
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
lean_inc(x_3);
return x_3;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_4);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_7 = lean_ctor_get(x_4, 0);
x_8 = lean_ctor_get(x_4, 1);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_add(x_5, x_9);
lean_inc(x_2);
lean_inc(x_1);
x_11 = l_List_foldrIdx___at_List_indexesOf___spec__1___rarg(x_1, x_2, x_3, x_8, x_10);
x_12 = lean_apply_2(x_1, x_7, x_2);
x_13 = lean_unbox(x_12);
lean_dec(x_12);
if (x_13 == 0)
{
lean_free_object(x_4);
lean_dec(x_5);
return x_11;
}
else
{
lean_ctor_set(x_4, 1, x_11);
lean_ctor_set(x_4, 0, x_5);
return x_4;
}
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_14 = lean_ctor_get(x_4, 0);
x_15 = lean_ctor_get(x_4, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_4);
x_16 = lean_unsigned_to_nat(1u);
x_17 = lean_nat_add(x_5, x_16);
lean_inc(x_2);
lean_inc(x_1);
x_18 = l_List_foldrIdx___at_List_indexesOf___spec__1___rarg(x_1, x_2, x_3, x_15, x_17);
x_19 = lean_apply_2(x_1, x_14, x_2);
x_20 = lean_unbox(x_19);
lean_dec(x_19);
if (x_20 == 0)
{
lean_dec(x_5);
return x_18;
}
else
{
lean_object* x_21; 
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_5);
lean_ctor_set(x_21, 1, x_18);
return x_21;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesOf___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrIdx___at_List_indexesOf___spec__1___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_indexesOf___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_box(0);
x_5 = lean_unsigned_to_nat(0u);
x_6 = l_List_foldrIdx___at_List_indexesOf___spec__1___rarg(x_1, x_2, x_4, x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_indexesOf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_indexesOf___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrIdx___at_List_indexesOf___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_List_foldrIdx___at_List_indexesOf___spec__1___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_lookmap_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
lean_inc(x_6);
x_8 = lean_apply_1(x_1, x_6);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_free_object(x_2);
x_9 = lean_array_push(x_3, x_6);
x_2 = x_7;
x_3 = x_9;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
lean_dec(x_6);
lean_dec(x_1);
x_11 = lean_ctor_get(x_8, 0);
lean_inc(x_11);
lean_dec(x_8);
lean_ctor_set(x_2, 0, x_11);
x_12 = lean_array_get_size(x_3);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_12);
if (x_14 == 0)
{
lean_dec(x_12);
lean_dec(x_3);
return x_2;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_15 = lean_usize_of_nat(x_12);
lean_dec(x_12);
x_16 = 0;
x_17 = l_Id_instMonad;
x_18 = l_List_replaceFTR_go___rarg___closed__1;
x_19 = l_Array_foldrMUnsafe_fold___rarg(x_17, x_18, x_3, x_15, x_16, x_2);
return x_19;
}
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_2, 0);
x_21 = lean_ctor_get(x_2, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_20);
x_22 = lean_apply_1(x_1, x_20);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; 
x_23 = lean_array_push(x_3, x_20);
x_2 = x_21;
x_3 = x_23;
goto _start;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
lean_dec(x_20);
lean_dec(x_1);
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
lean_dec(x_22);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_21);
x_27 = lean_array_get_size(x_3);
x_28 = lean_unsigned_to_nat(0u);
x_29 = lean_nat_dec_lt(x_28, x_27);
if (x_29 == 0)
{
lean_dec(x_27);
lean_dec(x_3);
return x_26;
}
else
{
size_t x_30; size_t x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_30 = lean_usize_of_nat(x_27);
lean_dec(x_27);
x_31 = 0;
x_32 = l_Id_instMonad;
x_33 = l_List_replaceFTR_go___rarg___closed__1;
x_34 = l_Array_foldrMUnsafe_fold___rarg(x_32, x_33, x_3, x_30, x_31, x_26);
return x_34;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_lookmap_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_lookmap_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_lookmap___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_lookmap_go___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_lookmap(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_lookmap___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_inits___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
lean_ctor_set(x_2, 1, x_6);
lean_ctor_set(x_2, 0, x_1);
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_2);
lean_ctor_set(x_8, 1, x_3);
x_2 = x_7;
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_2, 0);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_2);
lean_inc(x_1);
x_12 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_12, 0, x_1);
lean_ctor_set(x_12, 1, x_10);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_3);
x_2 = x_11;
x_3 = x_13;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_inits___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_inits___spec__1___rarg), 3, 0);
return x_2;
}
}
static lean_object* _init_l_List_inits___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_inits___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_List_inits___rarg___closed__1;
return x_2;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_box(0);
x_7 = l_List_inits___rarg(x_5);
x_8 = l_List_mapTR_loop___at_List_inits___spec__1___rarg(x_4, x_7, x_6);
lean_ctor_set(x_1, 1, x_8);
lean_ctor_set(x_1, 0, x_6);
return x_1;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_1, 0);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_1);
x_11 = lean_box(0);
x_12 = l_List_inits___rarg(x_10);
x_13 = l_List_mapTR_loop___at_List_inits___spec__1___rarg(x_9, x_12, x_11);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_11);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
}
LEAN_EXPORT lean_object* l_List_inits(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_inits___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_lt(x_3, x_2);
if (x_5 == 0)
{
lean_dec(x_1);
return x_4;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; size_t x_10; size_t x_11; lean_object* x_12; 
x_6 = lean_array_uget(x_4, x_3);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_array_uset(x_4, x_3, x_7);
lean_inc(x_1);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_6);
x_10 = 1;
x_11 = lean_usize_add(x_3, x_10);
x_12 = lean_array_uset(x_8, x_3, x_9);
x_3 = x_11;
x_4 = x_12;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_initsTR___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_array_size(x_4);
x_10 = 0;
x_11 = l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg(x_8, x_9, x_10, x_4);
x_12 = lean_box(0);
x_13 = lean_array_push(x_11, x_12);
x_2 = x_7;
x_4 = x_13;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_array_size(x_4);
x_10 = 0;
x_11 = l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg(x_8, x_9, x_10, x_4);
x_12 = lean_box(0);
x_13 = lean_array_push(x_11, x_12);
x_2 = x_7;
x_4 = x_13;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_initsTR___spec__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_List_redLength___rarg(x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_List_toArrayAux___rarg(x_2, x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_nat_dec_le(x_6, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_11 = 0;
x_12 = l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg(x_5, x_10, x_11, x_1);
lean_dec(x_5);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_6);
if (x_14 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg(x_5, x_15, x_16, x_1);
lean_dec(x_5);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_initsTR___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_initsTR___spec__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_4);
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
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg___boxed), 4, 0);
return x_2;
}
}
static lean_object* _init_l_List_initsTR___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_List_initsTR___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List_initsTR___rarg___closed__1;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_initsTR___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_2 = lean_box(0);
x_3 = l_List_initsTR___rarg___closed__2;
x_4 = l_List_foldrTR___at_List_initsTR___spec__2___rarg(x_3, x_1);
x_5 = lean_array_get_size(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_lt(x_6, x_5);
if (x_7 == 0)
{
lean_dec(x_5);
lean_dec(x_4);
return x_2;
}
else
{
uint8_t x_8; 
x_8 = lean_nat_dec_le(x_5, x_5);
if (x_8 == 0)
{
lean_dec(x_5);
lean_dec(x_4);
return x_2;
}
else
{
size_t x_9; size_t x_10; lean_object* x_11; 
x_9 = 0;
x_10 = lean_usize_of_nat(x_5);
lean_dec(x_5);
x_11 = l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg(x_4, x_9, x_10, x_2);
lean_dec(x_4);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_List_initsTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_initsTR___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_mapMUnsafe_map___at_List_initsTR___spec__1___rarg(x_1, x_5, x_6, x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_initsTR___spec__4___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at_List_initsTR___spec__5___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_tails___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_List_inits___rarg___closed__1;
return x_2;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = l_List_tails___rarg(x_4);
x_6 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_6, 0, x_1);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_ctor_get(x_1, 0);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_1);
lean_inc(x_8);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_7);
lean_ctor_set(x_9, 1, x_8);
x_10 = l_List_tails___rarg(x_8);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_9);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_List_tails(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_tails___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_tailsTR_go___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_array_get_size(x_2);
x_4 = lean_nat_dec_le(x_3, x_3);
if (x_4 == 0)
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_lt(x_5, x_3);
if (x_6 == 0)
{
lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
x_7 = l_List_inits___rarg___closed__1;
return x_7;
}
else
{
size_t x_8; size_t x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_9 = 0;
x_10 = l_List_inits___rarg___closed__1;
x_11 = l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg(x_2, x_8, x_9, x_10);
lean_dec(x_2);
return x_11;
}
}
else
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_nat_dec_lt(x_12, x_3);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_3);
lean_dec(x_2);
x_14 = l_List_inits___rarg___closed__1;
return x_14;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_16 = 0;
x_17 = l_List_inits___rarg___closed__1;
x_18 = l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg(x_2, x_15, x_16, x_17);
lean_dec(x_2);
return x_18;
}
}
}
else
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_1, 1);
lean_inc(x_19);
x_20 = lean_array_push(x_2, x_1);
x_1 = x_19;
x_2 = x_20;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_tailsTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_tailsTR_go___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_tailsTR_go___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_tailsTR___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_List_bagInter___rarg___closed__1;
x_3 = l_List_tailsTR_go___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_tailsTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_tailsTR___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; size_t x_10; size_t x_11; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_1);
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_7);
x_9 = lean_array_push(x_5, x_8);
x_10 = 1;
x_11 = lean_usize_add(x_3, x_10);
x_3 = x_11;
x_5 = x_9;
goto _start;
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_array_get_size(x_4);
x_10 = lean_unsigned_to_nat(0u);
x_11 = lean_nat_dec_lt(x_10, x_9);
if (x_11 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
x_2 = x_7;
goto _start;
}
else
{
uint8_t x_13; 
x_13 = lean_nat_dec_le(x_9, x_9);
if (x_13 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
x_2 = x_7;
goto _start;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = 0;
x_16 = lean_usize_of_nat(x_9);
lean_dec(x_9);
lean_inc(x_4);
x_17 = l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg(x_8, x_4, x_15, x_16, x_4);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_17;
goto _start;
}
}
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_array_get_size(x_4);
x_10 = lean_unsigned_to_nat(0u);
x_11 = lean_nat_dec_lt(x_10, x_9);
if (x_11 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
x_2 = x_7;
goto _start;
}
else
{
uint8_t x_13; 
x_13 = lean_nat_dec_le(x_9, x_9);
if (x_13 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
x_2 = x_7;
goto _start;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = 0;
x_16 = lean_usize_of_nat(x_9);
lean_dec(x_9);
lean_inc(x_4);
x_17 = l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg(x_8, x_4, x_15, x_16, x_4);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_17;
goto _start;
}
}
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists_x27___spec__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_List_redLength___rarg(x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_List_toArrayAux___rarg(x_2, x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_nat_dec_le(x_6, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_11 = 0;
x_12 = l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg(x_5, x_10, x_11, x_1);
lean_dec(x_5);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_6);
if (x_14 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg(x_5, x_15, x_16, x_1);
lean_dec(x_5);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists_x27___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_sublists_x27___spec__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_sublists_x27___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_List_initsTR___rarg___closed__2;
x_3 = l_List_foldrTR___at_List_sublists_x27___spec__2___rarg(x_2, x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_sublists_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_sublists_x27___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_List_sublists_x27___spec__1___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sublists_x27___spec__4___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sublists___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_inc(x_1);
lean_ctor_set(x_2, 1, x_6);
lean_ctor_set(x_2, 0, x_1);
x_8 = lean_box(0);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_2);
lean_ctor_set(x_9, 1, x_8);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_6);
lean_ctor_set(x_10, 1, x_9);
x_11 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_10);
x_2 = x_7;
x_3 = x_11;
goto _start;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_13 = lean_ctor_get(x_2, 0);
x_14 = lean_ctor_get(x_2, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_2);
lean_inc(x_13);
lean_inc(x_1);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_1);
lean_ctor_set(x_15, 1, x_13);
x_16 = lean_box(0);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_13);
lean_ctor_set(x_18, 1, x_17);
x_19 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_18);
x_2 = x_14;
x_3 = x_19;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sublists___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_sublists___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = l_List_bagInter___rarg___closed__1;
x_10 = l_List_bindTR_go___at_List_sublists___spec__1___rarg(x_8, x_4, x_9);
x_2 = x_7;
x_4 = x_10;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = l_List_bagInter___rarg___closed__1;
x_10 = l_List_bindTR_go___at_List_sublists___spec__1___rarg(x_8, x_4, x_9);
x_2 = x_7;
x_4 = x_10;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists___spec__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_List_redLength___rarg(x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_List_toArrayAux___rarg(x_2, x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_nat_dec_le(x_6, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_11 = 0;
x_12 = l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg(x_5, x_10, x_11, x_1);
lean_dec(x_5);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_6);
if (x_14 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg(x_5, x_15, x_16, x_1);
lean_dec(x_5);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublists___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_sublists___spec__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_sublists___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_List_inits___rarg___closed__1;
x_3 = l_List_foldrTR___at_List_sublists___spec__2___rarg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_sublists(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_sublists___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sublists___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sublists___spec__4___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; size_t x_11; size_t x_12; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_7);
x_8 = lean_array_push(x_5, x_7);
lean_inc(x_1);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_7);
x_10 = lean_array_push(x_8, x_9);
x_11 = 1;
x_12 = lean_usize_add(x_3, x_11);
x_3 = x_12;
x_5 = x_10;
goto _start;
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_array_get_size(x_4);
x_10 = lean_unsigned_to_nat(2u);
x_11 = lean_nat_mul(x_9, x_10);
x_12 = lean_mk_empty_array_with_capacity(x_11);
lean_dec(x_11);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_9);
if (x_14 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_12;
goto _start;
}
else
{
uint8_t x_16; 
x_16 = lean_nat_dec_le(x_9, x_9);
if (x_16 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_12;
goto _start;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = 0;
x_19 = lean_usize_of_nat(x_9);
lean_dec(x_9);
x_20 = l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg(x_8, x_4, x_18, x_19, x_12);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_20;
goto _start;
}
}
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_array_get_size(x_4);
x_10 = lean_unsigned_to_nat(2u);
x_11 = lean_nat_mul(x_9, x_10);
x_12 = lean_mk_empty_array_with_capacity(x_11);
lean_dec(x_11);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_9);
if (x_14 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_12;
goto _start;
}
else
{
uint8_t x_16; 
x_16 = lean_nat_dec_le(x_9, x_9);
if (x_16 == 0)
{
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_12;
goto _start;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = 0;
x_19 = lean_usize_of_nat(x_9);
lean_dec(x_9);
x_20 = l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg(x_8, x_4, x_18, x_19, x_12);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_20;
goto _start;
}
}
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublistsFast___spec__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_List_redLength___rarg(x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_List_toArrayAux___rarg(x_2, x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_nat_dec_le(x_6, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_11 = 0;
x_12 = l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg(x_5, x_10, x_11, x_1);
lean_dec(x_5);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_6);
if (x_14 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg(x_5, x_15, x_16, x_1);
lean_dec(x_5);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sublistsFast___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_sublistsFast___spec__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_sublistsFast___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_List_initsTR___rarg___closed__2;
x_3 = l_List_foldrTR___at_List_sublistsFast___spec__2___rarg(x_2, x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_sublistsFast(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_sublistsFast___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_List_sublistsFast___spec__1___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sublistsFast___spec__4___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT uint8_t l_List_all_u2082___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_dec(x_1);
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_4; 
x_4 = 1;
return x_4;
}
else
{
uint8_t x_5; 
lean_dec(x_3);
x_5 = 0;
return x_5;
}
}
else
{
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_6; 
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_7 = lean_ctor_get(x_2, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_2, 1);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_dec(x_3);
lean_inc(x_1);
x_11 = lean_apply_2(x_1, x_7, x_9);
x_12 = lean_unbox(x_11);
lean_dec(x_11);
if (x_12 == 0)
{
uint8_t x_13; 
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_1);
x_13 = 0;
return x_13;
}
else
{
x_2 = x_8;
x_3 = x_10;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_all_u2082(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_all_u2082___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_all_u2082___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_List_all_u2082___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_dec(x_4);
if (lean_obj_tag(x_2) == 0)
{
lean_dec(x_5);
lean_inc(x_3);
return x_3;
}
else
{
lean_object* x_6; 
x_6 = lean_apply_4(x_5, x_1, x_2, lean_box(0), lean_box(0));
return x_6;
}
}
else
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_7; 
lean_dec(x_4);
x_7 = lean_apply_4(x_5, x_1, x_2, lean_box(0), lean_box(0));
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_5);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
x_12 = lean_apply_4(x_4, x_8, x_9, x_10, x_11);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter___rarg___boxed), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l___private_Batteries_Data_List_Basic_0__List_all_u2082_match__1_splitter___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_3);
return x_6;
}
}
LEAN_EXPORT uint8_t l_List_instDecidableForall_u2082___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = l_List_all_u2082___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_instDecidableForall_u2082(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_instDecidableForall_u2082___rarg___boxed), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_instDecidableForall_u2082___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_List_instDecidableForall_u2082___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_transpose_pop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_2, 1);
lean_ctor_set(x_2, 1, x_1);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_2);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set(x_10, 1, x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_List_transpose_pop(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_transpose_pop___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_lt(x_2, x_1);
if (x_5 == 0)
{
lean_object* x_6; 
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_4);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; size_t x_13; size_t x_14; lean_object* x_15; 
x_7 = lean_array_uget(x_3, x_2);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_array_uset(x_3, x_2, x_8);
x_10 = l_List_transpose_pop___rarg(x_7, x_4);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = 1;
x_14 = lean_usize_add(x_2, x_13);
x_15 = lean_array_uset(x_9, x_2, x_11);
x_2 = x_14;
x_3 = x_15;
x_4 = x_12;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_transpose_go___spec__2___rarg(lean_object* x_1, lean_object* x_2) {
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
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_2, 1);
x_5 = lean_box(0);
lean_ctor_set(x_2, 1, x_5);
x_6 = lean_array_push(x_1, x_2);
x_1 = x_6;
x_2 = x_4;
goto _start;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
x_10 = lean_box(0);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_8);
lean_ctor_set(x_11, 1, x_10);
x_12 = lean_array_push(x_1, x_11);
x_1 = x_12;
x_2 = x_9;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_transpose_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldl___at_List_transpose_go___spec__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_transpose_go___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
size_t x_3; size_t x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_array_size(x_2);
x_4 = 0;
x_5 = l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg(x_3, x_4, x_2, x_1);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 1);
lean_inc(x_7);
lean_dec(x_5);
x_8 = l_List_foldl___at_List_transpose_go___spec__2___rarg(x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_transpose_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_transpose_go___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_6 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_7 = l_Array_mapMUnsafe_map___at_List_transpose_go___spec__1___rarg(x_5, x_6, x_3, x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = l_List_transpose_go___rarg(x_8, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = l_List_transpose_go___rarg(x_8, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_transpose___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_List_redLength___rarg(x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_List_toArrayAux___rarg(x_2, x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_nat_dec_le(x_6, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_11 = 0;
x_12 = l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg(x_5, x_10, x_11, x_1);
lean_dec(x_5);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_6);
if (x_14 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg(x_5, x_15, x_16, x_1);
lean_dec(x_5);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_transpose___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_transpose___spec__1___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_transpose___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_List_bagInter___rarg___closed__1;
x_3 = l_List_foldrTR___at_List_transpose___spec__1___rarg(x_2, x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_transpose(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_transpose___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_transpose___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_transpose___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sections___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
lean_ctor_set(x_2, 1, x_1);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_2);
lean_ctor_set(x_7, 1, x_3);
x_2 = x_6;
x_3 = x_7;
goto _start;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_2, 0);
x_10 = lean_ctor_get(x_2, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_2);
lean_inc(x_1);
x_11 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_11, 0, x_9);
lean_ctor_set(x_11, 1, x_1);
x_12 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_3);
x_2 = x_10;
x_3 = x_12;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sections___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_sections___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sections___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_box(0);
lean_inc(x_1);
x_8 = l_List_mapTR_loop___at_List_sections___spec__1___rarg(x_5, x_1, x_7);
x_9 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_8);
x_2 = x_6;
x_3 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sections___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_sections___spec__2___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_sections___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_List_inits___rarg___closed__1;
return x_2;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_List_sections___rarg(x_4);
x_6 = l_List_bagInter___rarg___closed__1;
x_7 = l_List_bindTR_go___at_List_sections___spec__2___rarg(x_3, x_5, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_List_sections(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_sections___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_dec(x_3);
lean_inc(x_2);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_2(x_3, x_4, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Batteries_Data_List_Basic_0__List_sections_match__1_splitter___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_sectionsTR_go___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_ctor_set(x_3, 1, x_1);
x_6 = lean_array_push(x_2, x_3);
x_2 = x_6;
x_3 = x_5;
goto _start;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_3);
lean_inc(x_1);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set(x_10, 1, x_1);
x_11 = lean_array_push(x_2, x_10);
x_2 = x_11;
x_3 = x_9;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_sectionsTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldl___at_List_sectionsTR_go___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_1);
x_8 = l_List_foldl___at_List_sectionsTR_go___spec__1___rarg(x_7, x_5, x_1);
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
x_3 = x_10;
x_5 = x_8;
goto _start;
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_sectionsTR_go___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_array_get_size(x_2);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_lt(x_4, x_3);
if (x_5 == 0)
{
lean_object* x_6; 
lean_dec(x_3);
lean_dec(x_1);
x_6 = l_List_bagInter___rarg___closed__1;
return x_6;
}
else
{
uint8_t x_7; 
x_7 = lean_nat_dec_le(x_3, x_3);
if (x_7 == 0)
{
lean_object* x_8; 
lean_dec(x_3);
lean_dec(x_1);
x_8 = l_List_bagInter___rarg___closed__1;
return x_8;
}
else
{
size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; 
x_9 = 0;
x_10 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_11 = l_List_bagInter___rarg___closed__1;
x_12 = l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg(x_1, x_2, x_9, x_10, x_11);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_List_sectionsTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_sectionsTR_go___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_List_sectionsTR_go___spec__2___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_sectionsTR_go___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_List_sectionsTR_go___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = l_List_sectionsTR_go___rarg(x_8, x_4);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = l_List_sectionsTR_go___rarg(x_8, x_4);
lean_dec(x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sectionsTR___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = l_List_redLength___rarg(x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_List_toArrayAux___rarg(x_2, x_4);
x_6 = lean_array_get_size(x_5);
x_7 = lean_nat_dec_le(x_6, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_6);
if (x_9 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_11 = 0;
x_12 = l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg(x_5, x_10, x_11, x_1);
lean_dec(x_5);
return x_12;
}
}
else
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_nat_dec_lt(x_13, x_6);
if (x_14 == 0)
{
lean_dec(x_6);
lean_dec(x_5);
return x_1;
}
else
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_16 = 0;
x_17 = l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg(x_5, x_15, x_16, x_1);
lean_dec(x_5);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_sectionsTR___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_sectionsTR___spec__1___rarg), 2, 0);
return x_2;
}
}
static lean_object* _init_l_List_sectionsTR___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_isEmpty___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_List_sectionsTR___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = l_List_sectionsTR___rarg___closed__1;
lean_inc(x_1);
x_3 = l_List_any___rarg(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_List_initsTR___rarg___closed__2;
x_5 = l_List_foldrTR___at_List_sectionsTR___spec__1___rarg(x_4, x_1);
x_6 = lean_array_to_list(lean_box(0), x_5);
return x_6;
}
else
{
lean_object* x_7; 
lean_dec(x_1);
x_7 = lean_box(0);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_List_sectionsTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_sectionsTR___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_sectionsTR___spec__3___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_any_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_2);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_apply_3(x_4, x_6, x_7, x_2);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_any_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_any_match__1_splitter___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_extractP_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; lean_object* x_6; 
lean_dec(x_4);
lean_dec(x_1);
x_5 = lean_box(0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_2);
return x_6;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_inc(x_8);
x_10 = lean_apply_1(x_1, x_8);
x_11 = lean_unbox(x_10);
lean_dec(x_10);
if (x_11 == 0)
{
lean_object* x_12; 
lean_free_object(x_3);
x_12 = lean_array_push(x_4, x_8);
x_3 = x_9;
x_4 = x_12;
goto _start;
}
else
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; 
lean_dec(x_2);
lean_dec(x_1);
x_14 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_14, 0, x_8);
x_15 = lean_array_get_size(x_4);
x_16 = lean_nat_dec_le(x_15, x_15);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_nat_dec_lt(x_17, x_15);
if (x_18 == 0)
{
lean_dec(x_15);
lean_dec(x_4);
lean_ctor_set_tag(x_3, 0);
lean_ctor_set(x_3, 0, x_14);
return x_3;
}
else
{
size_t x_19; size_t x_20; lean_object* x_21; 
x_19 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_20 = 0;
x_21 = l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg(x_4, x_19, x_20, x_9);
lean_dec(x_4);
lean_ctor_set_tag(x_3, 0);
lean_ctor_set(x_3, 1, x_21);
lean_ctor_set(x_3, 0, x_14);
return x_3;
}
}
else
{
lean_object* x_22; uint8_t x_23; 
x_22 = lean_unsigned_to_nat(0u);
x_23 = lean_nat_dec_lt(x_22, x_15);
if (x_23 == 0)
{
lean_dec(x_15);
lean_dec(x_4);
lean_ctor_set_tag(x_3, 0);
lean_ctor_set(x_3, 0, x_14);
return x_3;
}
else
{
size_t x_24; size_t x_25; lean_object* x_26; 
x_24 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_25 = 0;
x_26 = l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg(x_4, x_24, x_25, x_9);
lean_dec(x_4);
lean_ctor_set_tag(x_3, 0);
lean_ctor_set(x_3, 1, x_26);
lean_ctor_set(x_3, 0, x_14);
return x_3;
}
}
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_27 = lean_ctor_get(x_3, 0);
x_28 = lean_ctor_get(x_3, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_27);
x_29 = lean_apply_1(x_1, x_27);
x_30 = lean_unbox(x_29);
lean_dec(x_29);
if (x_30 == 0)
{
lean_object* x_31; 
x_31 = lean_array_push(x_4, x_27);
x_3 = x_28;
x_4 = x_31;
goto _start;
}
else
{
lean_object* x_33; lean_object* x_34; uint8_t x_35; 
lean_dec(x_2);
lean_dec(x_1);
x_33 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_33, 0, x_27);
x_34 = lean_array_get_size(x_4);
x_35 = lean_nat_dec_le(x_34, x_34);
if (x_35 == 0)
{
lean_object* x_36; uint8_t x_37; 
x_36 = lean_unsigned_to_nat(0u);
x_37 = lean_nat_dec_lt(x_36, x_34);
if (x_37 == 0)
{
lean_object* x_38; 
lean_dec(x_34);
lean_dec(x_4);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_33);
lean_ctor_set(x_38, 1, x_28);
return x_38;
}
else
{
size_t x_39; size_t x_40; lean_object* x_41; lean_object* x_42; 
x_39 = lean_usize_of_nat(x_34);
lean_dec(x_34);
x_40 = 0;
x_41 = l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg(x_4, x_39, x_40, x_28);
lean_dec(x_4);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_33);
lean_ctor_set(x_42, 1, x_41);
return x_42;
}
}
else
{
lean_object* x_43; uint8_t x_44; 
x_43 = lean_unsigned_to_nat(0u);
x_44 = lean_nat_dec_lt(x_43, x_34);
if (x_44 == 0)
{
lean_object* x_45; 
lean_dec(x_34);
lean_dec(x_4);
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_33);
lean_ctor_set(x_45, 1, x_28);
return x_45;
}
else
{
size_t x_46; size_t x_47; lean_object* x_48; lean_object* x_49; 
x_46 = lean_usize_of_nat(x_34);
lean_dec(x_34);
x_47 = 0;
x_48 = l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg(x_4, x_46, x_47, x_28);
lean_dec(x_4);
x_49 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_49, 0, x_33);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_extractP_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_extractP_go___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_extractP_go___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_extractP___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
lean_inc(x_2);
x_4 = l_List_extractP_go___rarg(x_1, x_2, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_extractP(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_extractP___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_revzip___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
lean_inc(x_1);
x_2 = l_List_reverse___rarg(x_1);
x_3 = l_List_zipWith___at_List_zip___spec__1___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_revzip(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_revzip___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_product___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_6);
lean_ctor_set(x_2, 1, x_3);
lean_ctor_set(x_2, 0, x_8);
{
lean_object* _tmp_1 = x_7;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_2, 0);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_2);
lean_inc(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_1);
lean_ctor_set(x_12, 1, x_10);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_3);
x_2 = x_11;
x_3 = x_13;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_product___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_product___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_product___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_box(0);
lean_inc(x_1);
x_8 = l_List_mapTR_loop___at_List_product___spec__1___rarg(x_5, x_1, x_7);
x_9 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_8);
x_2 = x_6;
x_3 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_product___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_product___spec__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_product___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_bindTR_go___at_List_product___spec__2___rarg(x_2, x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_product(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_product___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_ctor_set_tag(x_3, 0);
lean_ctor_set(x_3, 1, x_5);
lean_ctor_set(x_3, 0, x_1);
x_7 = lean_array_push(x_2, x_3);
x_2 = x_7;
x_3 = x_6;
goto _start;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_3);
lean_inc(x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_9);
x_12 = lean_array_push(x_2, x_11);
x_2 = x_12;
x_3 = x_10;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldl___at_List_productTR___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
lean_inc(x_1);
x_6 = l_List_foldl___at_List_productTR___spec__1___rarg(x_4, x_2, x_1);
x_2 = x_6;
x_3 = x_5;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_productTR___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldl___at_List_productTR___spec__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_productTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_foldl___at_List_productTR___spec__2___rarg(x_2, x_3, x_1);
x_5 = lean_array_to_list(lean_box(0), x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_productTR(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_productTR___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sigma___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_1);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_6);
lean_ctor_set(x_2, 1, x_3);
lean_ctor_set(x_2, 0, x_8);
{
lean_object* _tmp_1 = x_7;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_2, 0);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_2);
lean_inc(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_1);
lean_ctor_set(x_12, 1, x_10);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_3);
x_2 = x_11;
x_3 = x_13;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_sigma___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_sigma___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sigma___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_5);
x_7 = lean_apply_1(x_1, x_5);
x_8 = lean_box(0);
x_9 = l_List_mapTR_loop___at_List_sigma___spec__1___rarg(x_5, x_7, x_8);
x_10 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_9);
x_2 = x_6;
x_3 = x_10;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_sigma___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_sigma___spec__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_sigma___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_bindTR_go___at_List_sigma___spec__2___rarg(x_2, x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_sigma(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_sigma___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_ctor_set_tag(x_3, 0);
lean_ctor_set(x_3, 1, x_5);
lean_ctor_set(x_3, 0, x_1);
x_7 = lean_array_push(x_2, x_3);
x_2 = x_7;
x_3 = x_6;
goto _start;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_3);
lean_inc(x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_9);
x_12 = lean_array_push(x_2, x_11);
x_2 = x_12;
x_3 = x_10;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldl___at_List_sigmaTR___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_4);
x_6 = lean_apply_1(x_1, x_4);
x_7 = l_List_foldl___at_List_sigmaTR___spec__1___rarg(x_4, x_2, x_6);
x_2 = x_7;
x_3 = x_5;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_sigmaTR___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldl___at_List_sigmaTR___spec__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_sigmaTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_foldl___at_List_sigmaTR___spec__2___rarg(x_2, x_3, x_1);
x_5 = lean_array_to_list(lean_box(0), x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_sigmaTR(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_sigmaTR___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_ofFn___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_apply_1(x_1, x_2);
x_5 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_ofFn___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_alloc_closure((void*)(l_List_ofFn___rarg___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_box(0);
lean_inc(x_1);
x_5 = l_Fin_foldr_loop___rarg(x_1, x_3, x_1, x_4);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_ofFn(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_ofFn___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_ofFnNthVal___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_lt(x_3, x_1);
if (x_4 == 0)
{
lean_object* x_5; 
lean_dec(x_3);
lean_dec(x_2);
x_5 = lean_box(0);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_apply_1(x_2, x_3);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_List_ofFnNthVal(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_ofFnNthVal___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_ofFnNthVal___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_ofFnNthVal___rarg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
static lean_object* _init_l_List_takeWhile_u2082___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_takeWhile_u2082___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_3);
lean_dec(x_1);
x_4 = l_List_takeWhile_u2082___rarg___closed__1;
return x_4;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; 
lean_dec(x_2);
lean_dec(x_1);
x_5 = l_List_takeWhile_u2082___rarg___closed__1;
return x_5;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_2);
if (x_6 == 0)
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
x_10 = lean_ctor_get(x_3, 0);
x_11 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_inc(x_10);
lean_inc(x_8);
x_12 = lean_apply_2(x_1, x_8, x_10);
x_13 = lean_unbox(x_12);
lean_dec(x_12);
if (x_13 == 0)
{
lean_object* x_14; 
lean_free_object(x_3);
lean_dec(x_11);
lean_dec(x_10);
lean_free_object(x_2);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_1);
x_14 = l_List_takeWhile_u2082___rarg___closed__1;
return x_14;
}
else
{
lean_object* x_15; uint8_t x_16; 
x_15 = l_List_takeWhile_u2082___rarg(x_1, x_9, x_11);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
lean_ctor_set(x_3, 1, x_17);
lean_ctor_set(x_3, 0, x_8);
lean_ctor_set(x_2, 1, x_18);
lean_ctor_set(x_2, 0, x_10);
lean_ctor_set(x_15, 1, x_2);
lean_ctor_set(x_15, 0, x_3);
return x_15;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_15, 0);
x_20 = lean_ctor_get(x_15, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_15);
lean_ctor_set(x_3, 1, x_19);
lean_ctor_set(x_3, 0, x_8);
lean_ctor_set(x_2, 1, x_20);
lean_ctor_set(x_2, 0, x_10);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_3);
lean_ctor_set(x_21, 1, x_2);
return x_21;
}
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_22 = lean_ctor_get(x_2, 0);
x_23 = lean_ctor_get(x_2, 1);
x_24 = lean_ctor_get(x_3, 0);
x_25 = lean_ctor_get(x_3, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_24);
lean_inc(x_22);
x_26 = lean_apply_2(x_1, x_22, x_24);
x_27 = lean_unbox(x_26);
lean_dec(x_26);
if (x_27 == 0)
{
lean_object* x_28; 
lean_dec(x_25);
lean_dec(x_24);
lean_free_object(x_2);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_1);
x_28 = l_List_takeWhile_u2082___rarg___closed__1;
return x_28;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_29 = l_List_takeWhile_u2082___rarg(x_1, x_23, x_25);
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
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_22);
lean_ctor_set(x_33, 1, x_30);
lean_ctor_set(x_2, 1, x_31);
lean_ctor_set(x_2, 0, x_24);
if (lean_is_scalar(x_32)) {
 x_34 = lean_alloc_ctor(0, 2, 0);
} else {
 x_34 = x_32;
}
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_2);
return x_34;
}
}
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_35 = lean_ctor_get(x_2, 0);
x_36 = lean_ctor_get(x_2, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_2);
x_37 = lean_ctor_get(x_3, 0);
lean_inc(x_37);
x_38 = lean_ctor_get(x_3, 1);
lean_inc(x_38);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_39 = x_3;
} else {
 lean_dec_ref(x_3);
 x_39 = lean_box(0);
}
lean_inc(x_1);
lean_inc(x_37);
lean_inc(x_35);
x_40 = lean_apply_2(x_1, x_35, x_37);
x_41 = lean_unbox(x_40);
lean_dec(x_40);
if (x_41 == 0)
{
lean_object* x_42; 
lean_dec(x_39);
lean_dec(x_38);
lean_dec(x_37);
lean_dec(x_36);
lean_dec(x_35);
lean_dec(x_1);
x_42 = l_List_takeWhile_u2082___rarg___closed__1;
return x_42;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_43 = l_List_takeWhile_u2082___rarg(x_1, x_36, x_38);
x_44 = lean_ctor_get(x_43, 0);
lean_inc(x_44);
x_45 = lean_ctor_get(x_43, 1);
lean_inc(x_45);
if (lean_is_exclusive(x_43)) {
 lean_ctor_release(x_43, 0);
 lean_ctor_release(x_43, 1);
 x_46 = x_43;
} else {
 lean_dec_ref(x_43);
 x_46 = lean_box(0);
}
if (lean_is_scalar(x_39)) {
 x_47 = lean_alloc_ctor(1, 2, 0);
} else {
 x_47 = x_39;
}
lean_ctor_set(x_47, 0, x_35);
lean_ctor_set(x_47, 1, x_44);
x_48 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_48, 0, x_37);
lean_ctor_set(x_48, 1, x_45);
if (lean_is_scalar(x_46)) {
 x_49 = lean_alloc_ctor(0, 2, 0);
} else {
 x_49 = x_46;
}
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_takeWhile_u2082(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_takeWhile_u2082___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
lean_dec(x_1);
x_6 = l_List_reverse___rarg(x_4);
x_7 = l_List_reverse___rarg(x_5);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
lean_dec(x_2);
lean_dec(x_1);
x_9 = l_List_reverse___rarg(x_4);
x_10 = l_List_reverse___rarg(x_5);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_9);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
else
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_2);
if (x_12 == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_3);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_14 = lean_ctor_get(x_2, 0);
x_15 = lean_ctor_get(x_2, 1);
x_16 = lean_ctor_get(x_3, 0);
x_17 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_inc(x_16);
lean_inc(x_14);
x_18 = lean_apply_2(x_1, x_14, x_16);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
lean_free_object(x_3);
lean_dec(x_17);
lean_dec(x_16);
lean_free_object(x_2);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_1);
x_20 = l_List_reverse___rarg(x_4);
x_21 = l_List_reverse___rarg(x_5);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
else
{
lean_ctor_set(x_3, 1, x_4);
lean_ctor_set(x_3, 0, x_14);
lean_ctor_set(x_2, 1, x_5);
lean_ctor_set(x_2, 0, x_16);
{
lean_object* _tmp_1 = x_15;
lean_object* _tmp_2 = x_17;
lean_object* _tmp_3 = x_3;
lean_object* _tmp_4 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
x_4 = _tmp_3;
x_5 = _tmp_4;
}
goto _start;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_24 = lean_ctor_get(x_2, 0);
x_25 = lean_ctor_get(x_2, 1);
x_26 = lean_ctor_get(x_3, 0);
x_27 = lean_ctor_get(x_3, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_26);
lean_inc(x_24);
x_28 = lean_apply_2(x_1, x_24, x_26);
x_29 = lean_unbox(x_28);
lean_dec(x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_27);
lean_dec(x_26);
lean_free_object(x_2);
lean_dec(x_25);
lean_dec(x_24);
lean_dec(x_1);
x_30 = l_List_reverse___rarg(x_4);
x_31 = l_List_reverse___rarg(x_5);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
else
{
lean_object* x_33; 
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_24);
lean_ctor_set(x_33, 1, x_4);
lean_ctor_set(x_2, 1, x_5);
lean_ctor_set(x_2, 0, x_26);
{
lean_object* _tmp_1 = x_25;
lean_object* _tmp_2 = x_27;
lean_object* _tmp_3 = x_33;
lean_object* _tmp_4 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
x_4 = _tmp_3;
x_5 = _tmp_4;
}
goto _start;
}
}
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_35 = lean_ctor_get(x_2, 0);
x_36 = lean_ctor_get(x_2, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_2);
x_37 = lean_ctor_get(x_3, 0);
lean_inc(x_37);
x_38 = lean_ctor_get(x_3, 1);
lean_inc(x_38);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_39 = x_3;
} else {
 lean_dec_ref(x_3);
 x_39 = lean_box(0);
}
lean_inc(x_1);
lean_inc(x_37);
lean_inc(x_35);
x_40 = lean_apply_2(x_1, x_35, x_37);
x_41 = lean_unbox(x_40);
lean_dec(x_40);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
lean_dec(x_39);
lean_dec(x_38);
lean_dec(x_37);
lean_dec(x_36);
lean_dec(x_35);
lean_dec(x_1);
x_42 = l_List_reverse___rarg(x_4);
x_43 = l_List_reverse___rarg(x_5);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
else
{
lean_object* x_45; lean_object* x_46; 
if (lean_is_scalar(x_39)) {
 x_45 = lean_alloc_ctor(1, 2, 0);
} else {
 x_45 = x_39;
}
lean_ctor_set(x_45, 0, x_35);
lean_ctor_set(x_45, 1, x_4);
x_46 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_46, 0, x_37);
lean_ctor_set(x_46, 1, x_5);
x_2 = x_36;
x_3 = x_38;
x_4 = x_45;
x_5 = x_46;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR_go(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_takeWhile_u2082TR_go___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_box(0);
x_5 = l_List_takeWhile_u2082TR_go___rarg(x_1, x_2, x_3, x_4, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_takeWhile_u2082TR(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_takeWhile_u2082TR___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082TR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_7; 
lean_dec(x_5);
x_7 = lean_apply_5(x_6, x_1, x_2, x_3, x_4, lean_box(0));
return x_7;
}
else
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_8; 
lean_dec(x_5);
x_8 = lean_apply_5(x_6, x_1, x_2, x_3, x_4, lean_box(0));
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_6);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_dec(x_2);
x_13 = lean_apply_6(x_5, x_9, x_10, x_11, x_12, x_3, x_4);
return x_13;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082TR_go_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082TR_go_match__1_splitter___rarg), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082_match__2_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; 
lean_dec(x_3);
x_5 = lean_apply_3(x_4, x_1, x_2, lean_box(0));
return x_5;
}
else
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_6; 
lean_dec(x_3);
x_6 = lean_apply_3(x_4, x_1, x_2, lean_box(0));
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_2, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_2, 1);
lean_inc(x_10);
lean_dec(x_2);
x_11 = lean_apply_4(x_3, x_7, x_8, x_9, x_10);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082_match__2_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_takeWhile_u2082_match__2_splitter___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
lean_inc(x_1);
lean_inc(x_9);
x_10 = lean_apply_1(x_1, x_9);
lean_inc(x_5);
x_11 = l_List_decidableBAll___rarg(x_10, x_5);
if (x_11 == 0)
{
lean_dec(x_9);
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_13; 
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_5);
x_3 = x_8;
x_5 = x_13;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
lean_inc(x_1);
lean_inc(x_9);
x_10 = lean_apply_1(x_1, x_9);
lean_inc(x_5);
x_11 = l_List_decidableBAll___rarg(x_10, x_5);
if (x_11 == 0)
{
lean_dec(x_9);
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_13; 
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_5);
x_3 = x_8;
x_5 = x_13;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_pwFilter___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_4 = l_List_redLength___rarg(x_3);
x_5 = lean_mk_empty_array_with_capacity(x_4);
lean_dec(x_4);
x_6 = l_List_toArrayAux___rarg(x_3, x_5);
x_7 = lean_array_get_size(x_6);
x_8 = lean_nat_dec_le(x_7, x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_7);
if (x_10 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_12 = 0;
x_13 = l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg(x_1, x_6, x_11, x_12, x_2);
lean_dec(x_6);
return x_13;
}
}
else
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_nat_dec_lt(x_14, x_7);
if (x_15 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_16; size_t x_17; lean_object* x_18; 
x_16 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_17 = 0;
x_18 = l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg(x_1, x_6, x_16, x_17, x_2);
lean_dec(x_6);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_pwFilter___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_pwFilter___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_pwFilter___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_List_foldrTR___at_List_pwFilter___spec__1___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_pwFilter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_pwFilter___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__2___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_pwFilter___spec__3___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT uint8_t l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; 
x_6 = 1;
return x_6;
}
else
{
uint8_t x_7; 
x_7 = 0;
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
lean_inc(x_9);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_9);
lean_inc(x_5);
x_11 = l_List_decidableBAll___rarg(x_10, x_5);
if (x_11 == 0)
{
lean_dec(x_9);
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_13; 
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_5);
x_3 = x_8;
x_5 = x_13;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
size_t x_7; size_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = 1;
x_8 = lean_usize_sub(x_3, x_7);
x_9 = lean_array_uget(x_2, x_8);
lean_inc(x_9);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_9);
lean_inc(x_5);
x_11 = l_List_decidableBAll___rarg(x_10, x_5);
if (x_11 == 0)
{
lean_dec(x_9);
x_3 = x_8;
goto _start;
}
else
{
lean_object* x_13; 
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_5);
x_3 = x_8;
x_5 = x_13;
goto _start;
}
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_eraseDup___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_4 = l_List_redLength___rarg(x_3);
x_5 = lean_mk_empty_array_with_capacity(x_4);
lean_dec(x_4);
x_6 = l_List_toArrayAux___rarg(x_3, x_5);
x_7 = lean_array_get_size(x_6);
x_8 = lean_nat_dec_le(x_7, x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_7);
if (x_10 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_12 = 0;
x_13 = l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg(x_1, x_6, x_11, x_12, x_2);
lean_dec(x_6);
return x_13;
}
}
else
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_nat_dec_lt(x_14, x_7);
if (x_15 == 0)
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_2;
}
else
{
size_t x_16; size_t x_17; lean_object* x_18; 
x_16 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_17 = 0;
x_18 = l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg(x_1, x_6, x_16, x_17, x_2);
lean_dec(x_6);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_List_eraseDup___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldrTR___at_List_eraseDup___spec__2___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_pwFilter___at_List_eraseDup___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_List_foldrTR___at_List_eraseDup___spec__2___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_pwFilter___at_List_eraseDup___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_pwFilter___at_List_eraseDup___spec__1___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_eraseDup___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_List_pwFilter___at_List_eraseDup___spec__1___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_eraseDup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_eraseDup___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___lambda__1(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__3___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldrMUnsafe_fold___at_List_eraseDup___spec__4___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_List_rotate___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_List_lengthTRAux___rarg(x_1, x_3);
x_5 = lean_nat_mod(x_2, x_4);
lean_dec(x_4);
x_6 = l_List_splitAt___rarg(x_5, x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
x_9 = l_List_appendTR___rarg(x_8, x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_List_rotate(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_rotate___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_rotate___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_List_rotate___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_rotate_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; 
lean_dec(x_2);
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_2, x_6);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_1);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_1, 1);
lean_dec(x_9);
x_10 = lean_ctor_get(x_1, 0);
lean_dec(x_10);
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_sub(x_2, x_11);
lean_dec(x_2);
x_13 = lean_box(0);
lean_ctor_set(x_1, 1, x_13);
x_14 = l_List_appendTR___rarg(x_5, x_1);
x_1 = x_14;
x_2 = x_12;
goto _start;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_dec(x_1);
x_16 = lean_unsigned_to_nat(1u);
x_17 = lean_nat_sub(x_2, x_16);
lean_dec(x_2);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_4);
lean_ctor_set(x_19, 1, x_18);
x_20 = l_List_appendTR___rarg(x_5, x_19);
x_1 = x_20;
x_2 = x_17;
goto _start;
}
}
else
{
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_1;
}
}
}
}
LEAN_EXPORT lean_object* l_List_rotate_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_rotate_x27___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_rotate_x27_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_6; uint8_t x_7; 
lean_dec(x_5);
lean_dec(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_2, x_6);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_apply_1(x_3, x_2);
return x_8;
}
else
{
lean_object* x_9; 
lean_dec(x_2);
x_9 = lean_apply_1(x_3, x_6);
return x_9;
}
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
lean_dec(x_3);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_nat_dec_eq(x_2, x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_4);
lean_dec(x_1);
x_14 = lean_unsigned_to_nat(1u);
x_15 = lean_nat_sub(x_2, x_14);
lean_dec(x_2);
x_16 = lean_apply_3(x_5, x_10, x_11, x_15);
return x_16;
}
else
{
lean_object* x_17; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_5);
lean_dec(x_2);
x_17 = lean_apply_2(x_4, x_1, lean_box(0));
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_rotate_x27_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_rotate_x27_match__1_splitter___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg(x_1, x_2, x_3, x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_apply_2(x_7, lean_box(0), x_4);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_9 = lean_ctor_get(x_5, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_5, 1);
lean_inc(x_10);
lean_dec(x_5);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
lean_dec(x_13);
x_15 = lean_alloc_closure((void*)(l_Array_push___boxed), 3, 2);
lean_closure_set(x_15, 0, lean_box(0));
lean_closure_set(x_15, 1, x_4);
lean_inc(x_2);
lean_inc(x_3);
x_16 = lean_apply_2(x_2, x_3, x_9);
x_17 = lean_apply_4(x_14, lean_box(0), lean_box(0), x_15, x_16);
x_18 = lean_alloc_closure((void*)(l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg___lambda__1), 5, 4);
lean_closure_set(x_18, 0, x_1);
lean_closure_set(x_18, 1, x_2);
lean_closure_set(x_18, 2, x_3);
lean_closure_set(x_18, 3, x_10);
x_19 = lean_apply_4(x_11, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_List_foldlM___at_List_mapDiagM_go___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapDiagM_go___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_array_push(x_1, x_7);
lean_inc(x_5);
lean_inc(x_3);
lean_inc(x_2);
x_9 = l_List_foldlM___at_List_mapDiagM_go___spec__1___rarg(x_2, x_3, x_4, x_8, x_5);
x_10 = lean_alloc_closure((void*)(l_List_mapDiagM_go___rarg), 4, 3);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_3);
lean_closure_set(x_10, 2, x_5);
x_11 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_9, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_List_mapDiagM_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_2);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_array_to_list(lean_box(0), x_4);
x_8 = lean_apply_2(x_6, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_dec(x_3);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
lean_inc(x_2);
lean_inc_n(x_9, 2);
x_12 = lean_apply_2(x_2, x_9, x_9);
lean_inc(x_11);
x_13 = lean_alloc_closure((void*)(l_List_mapDiagM_go___rarg___lambda__1), 7, 6);
lean_closure_set(x_13, 0, x_4);
lean_closure_set(x_13, 1, x_1);
lean_closure_set(x_13, 2, x_2);
lean_closure_set(x_13, 3, x_9);
lean_closure_set(x_13, 4, x_10);
lean_closure_set(x_13, 5, x_11);
x_14 = lean_apply_4(x_11, lean_box(0), lean_box(0), x_12, x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_List_mapDiagM_go(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_mapDiagM_go___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapDiagM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_mapDiagM_go___rarg(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_mapDiagM(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_mapDiagM___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_forDiagM___rarg(x_1, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_inc(x_1);
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_4);
lean_inc(x_3);
x_8 = l_List_forM___rarg(x_3, lean_box(0), x_4, x_7);
x_9 = lean_alloc_closure((void*)(l_List_forDiagM___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_1);
lean_closure_set(x_9, 2, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_List_forDiagM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_dec(x_2);
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_ctor_get(x_3, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_3, 1);
lean_inc(x_9);
lean_dec(x_3);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_inc(x_2);
lean_inc_n(x_8, 2);
x_11 = lean_apply_2(x_2, x_8, x_8);
lean_inc(x_10);
x_12 = lean_alloc_closure((void*)(l_List_forDiagM___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_12, 0, x_2);
lean_closure_set(x_12, 1, x_8);
lean_closure_set(x_12, 2, x_1);
lean_closure_set(x_12, 3, x_9);
lean_closure_set(x_12, 4, x_10);
x_13 = lean_apply_4(x_10, lean_box(0), lean_box(0), x_11, x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_List_forDiagM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_forDiagM___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_forDiagM___rarg___lambda__1(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_forDiagM___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_List_forDiagM___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_getRest___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_dec(x_1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_5; 
lean_dec(x_3);
x_5 = lean_box(0);
return x_5;
}
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_6; 
lean_dec(x_1);
x_6 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_6, 0, x_2);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_7 = lean_ctor_get(x_2, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_2, 1);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_dec(x_3);
lean_inc(x_1);
x_11 = lean_apply_2(x_1, x_7, x_9);
x_12 = lean_unbox(x_11);
lean_dec(x_11);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_8);
lean_dec(x_1);
x_13 = lean_box(0);
return x_13;
}
else
{
x_2 = x_8;
x_3 = x_10;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_getRest(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_getRest___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_dropSlice___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_1, x_4);
if (x_5 == 0)
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_6; 
lean_dec(x_2);
x_6 = lean_box(0);
return x_6;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_3, 1);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_1, x_9);
x_11 = l_List_dropSlice___rarg(x_10, x_2, x_8);
lean_dec(x_10);
lean_ctor_set(x_3, 1, x_11);
return x_3;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_12 = lean_ctor_get(x_3, 0);
x_13 = lean_ctor_get(x_3, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_3);
x_14 = lean_unsigned_to_nat(1u);
x_15 = lean_nat_sub(x_1, x_14);
x_16 = l_List_dropSlice___rarg(x_15, x_2, x_13);
lean_dec(x_15);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_12);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_18; 
lean_dec(x_2);
x_18 = lean_box(0);
return x_18;
}
else
{
lean_object* x_19; 
x_19 = l_List_drop___rarg(x_2, x_3);
lean_dec(x_3);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_List_dropSlice(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_dropSlice___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_dropSlice___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_dropSlice___rarg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSlice_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_eq(x_1, x_7);
if (x_8 == 0)
{
lean_dec(x_5);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_9; 
lean_dec(x_6);
x_9 = lean_apply_2(x_4, x_1, x_2);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_4);
x_10 = lean_ctor_get(x_3, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_3, 1);
lean_inc(x_11);
lean_dec(x_3);
x_12 = lean_unsigned_to_nat(1u);
x_13 = lean_nat_sub(x_1, x_12);
lean_dec(x_1);
x_14 = lean_apply_4(x_6, x_13, x_2, x_10, x_11);
return x_14;
}
}
else
{
lean_dec(x_6);
lean_dec(x_1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_15; 
lean_dec(x_5);
x_15 = lean_apply_2(x_4, x_7, x_2);
return x_15;
}
else
{
lean_object* x_16; 
lean_dec(x_4);
x_16 = lean_apply_3(x_5, x_2, x_3, lean_box(0));
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSlice_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_dropSlice_match__1_splitter___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 1;
x_7 = lean_usize_sub(x_2, x_6);
x_8 = lean_array_uget(x_1, x_7);
x_9 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
x_2 = x_7;
x_4 = x_9;
goto _start;
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_dropSliceTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_inc(x_1);
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_3, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_dec(x_3);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_eq(x_4, x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_unsigned_to_nat(1u);
x_11 = lean_nat_sub(x_4, x_10);
lean_dec(x_4);
x_12 = lean_array_push(x_5, x_6);
x_3 = x_7;
x_4 = x_11;
x_5 = x_12;
goto _start;
}
else
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; 
lean_dec(x_6);
lean_dec(x_4);
x_14 = l_List_drop___rarg(x_2, x_7);
lean_dec(x_7);
x_15 = lean_array_get_size(x_5);
x_16 = lean_nat_dec_le(x_15, x_15);
if (x_16 == 0)
{
uint8_t x_17; 
x_17 = lean_nat_dec_lt(x_8, x_15);
if (x_17 == 0)
{
lean_dec(x_15);
lean_dec(x_5);
return x_14;
}
else
{
size_t x_18; size_t x_19; lean_object* x_20; 
x_18 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_19 = 0;
x_20 = l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg(x_5, x_18, x_19, x_14);
lean_dec(x_5);
return x_20;
}
}
else
{
uint8_t x_21; 
x_21 = lean_nat_dec_lt(x_8, x_15);
if (x_21 == 0)
{
lean_dec(x_15);
lean_dec(x_5);
return x_14;
}
else
{
size_t x_22; size_t x_23; lean_object* x_24; 
x_22 = lean_usize_of_nat(x_15);
lean_dec(x_15);
x_23 = 0;
x_24 = l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg(x_5, x_22, x_23, x_14);
lean_dec(x_5);
return x_24;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_dropSliceTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_dropSliceTR_go___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__1___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldrMUnsafe_fold___at_List_dropSliceTR_go___spec__2___rarg(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_dropSliceTR_go___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_List_dropSliceTR_go___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_dropSliceTR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_2, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_2, x_6);
x_8 = l_List_bagInter___rarg___closed__1;
lean_inc(x_3);
x_9 = l_List_dropSliceTR_go___rarg(x_3, x_7, x_3, x_1, x_8);
lean_dec(x_3);
return x_9;
}
else
{
lean_dec(x_1);
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_List_dropSliceTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_dropSliceTR___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_dropSliceTR___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_dropSliceTR___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_1, x_6);
x_8 = lean_apply_1(x_3, x_7);
return x_8;
}
else
{
lean_dec(x_3);
lean_inc(x_2);
return x_2;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Batteries_Data_List_Basic_0__List_dropSliceTR_match__1_splitter___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_box(0);
lean_inc(x_1);
x_9 = lean_apply_2(x_1, x_6, x_8);
lean_ctor_set(x_2, 1, x_3);
lean_ctor_set(x_2, 0, x_9);
{
lean_object* _tmp_1 = x_7;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_2);
x_13 = lean_box(0);
lean_inc(x_1);
x_14 = lean_apply_2(x_1, x_11, x_13);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_3);
x_2 = x_12;
x_3 = x_15;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; lean_object* x_5; 
lean_dec(x_1);
x_4 = lean_box(0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_2);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_box(0);
x_8 = l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1___rarg(x_1, x_2, x_7);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_10 = lean_ctor_get(x_2, 0);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_2);
x_12 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
x_13 = lean_box(0);
x_14 = l_List_mapTR_loop___at_List_zipWithLeft_x27___spec__1___rarg(x_1, x_12, x_13);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_16 = lean_ctor_get(x_2, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_2, 1);
lean_inc(x_17);
lean_dec(x_2);
x_18 = !lean_is_exclusive(x_3);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_19 = lean_ctor_get(x_3, 0);
x_20 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
x_21 = l_List_zipWithLeft_x27___rarg(x_1, x_17, x_20);
x_22 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_22, 0, x_19);
x_23 = lean_apply_2(x_1, x_16, x_22);
x_24 = !lean_is_exclusive(x_21);
if (x_24 == 0)
{
lean_object* x_25; 
x_25 = lean_ctor_get(x_21, 0);
lean_ctor_set(x_3, 1, x_25);
lean_ctor_set(x_3, 0, x_23);
lean_ctor_set(x_21, 0, x_3);
return x_21;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_21, 0);
x_27 = lean_ctor_get(x_21, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_21);
lean_ctor_set(x_3, 1, x_26);
lean_ctor_set(x_3, 0, x_23);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_3);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_29 = lean_ctor_get(x_3, 0);
x_30 = lean_ctor_get(x_3, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_3);
lean_inc(x_1);
x_31 = l_List_zipWithLeft_x27___rarg(x_1, x_17, x_30);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_29);
x_33 = lean_apply_2(x_1, x_16, x_32);
x_34 = lean_ctor_get(x_31, 0);
lean_inc(x_34);
x_35 = lean_ctor_get(x_31, 1);
lean_inc(x_35);
if (lean_is_exclusive(x_31)) {
 lean_ctor_release(x_31, 0);
 lean_ctor_release(x_31, 1);
 x_36 = x_31;
} else {
 lean_dec_ref(x_31);
 x_36 = lean_box(0);
}
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_33);
lean_ctor_set(x_37, 1, x_34);
if (lean_is_scalar(x_36)) {
 x_38 = lean_alloc_ctor(0, 2, 0);
} else {
 x_38 = x_36;
}
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_35);
return x_38;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithLeft_x27___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_6; 
lean_dec(x_5);
lean_dec(x_4);
x_6 = lean_apply_1(x_3, x_2);
return x_6;
}
else
{
lean_dec(x_3);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_5);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_apply_2(x_4, x_7, x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_4);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
lean_dec(x_1);
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_2, 1);
lean_inc(x_13);
lean_dec(x_2);
x_14 = lean_apply_4(x_5, x_10, x_11, x_12, x_13);
return x_14;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27_match__1_splitter___rarg), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeft_x27TR_go___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_box(0);
lean_inc(x_1);
x_7 = lean_apply_2(x_1, x_4, x_6);
x_8 = lean_array_push(x_2, x_7);
x_2 = x_8;
x_3 = x_5;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeft_x27TR_go___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_foldl___at_List_zipWithLeft_x27TR_go___spec__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; lean_object* x_6; 
lean_dec(x_1);
x_5 = lean_array_to_list(lean_box(0), x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_3);
return x_6;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_7; uint8_t x_8; 
lean_inc(x_2);
x_7 = l_List_foldl___at_List_zipWithLeft_x27TR_go___spec__1___rarg(x_1, x_4, x_2);
x_8 = !lean_is_exclusive(x_2);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_2, 1);
lean_dec(x_9);
x_10 = lean_ctor_get(x_2, 0);
lean_dec(x_10);
x_11 = lean_array_to_list(lean_box(0), x_7);
x_12 = lean_box(0);
lean_ctor_set_tag(x_2, 0);
lean_ctor_set(x_2, 1, x_12);
lean_ctor_set(x_2, 0, x_11);
return x_2;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_2);
x_13 = lean_array_to_list(lean_box(0), x_7);
x_14 = lean_box(0);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_2, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_2, 1);
lean_inc(x_17);
lean_dec(x_2);
x_18 = lean_ctor_get(x_3, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_3, 1);
lean_inc(x_19);
lean_dec(x_3);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_18);
lean_inc(x_1);
x_21 = lean_apply_2(x_1, x_16, x_20);
x_22 = lean_array_push(x_4, x_21);
x_2 = x_17;
x_3 = x_19;
x_4 = x_22;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR_go(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithLeft_x27TR_go___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_zipWithLeft_x27TR_go___rarg(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft_x27TR(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithLeft_x27TR___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27TR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_7; 
lean_dec(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_4, x_2, x_3);
return x_7;
}
else
{
lean_dec(x_4);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_8; 
lean_dec(x_6);
x_8 = lean_apply_3(x_5, x_1, x_3, lean_box(0));
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_5);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_dec(x_2);
x_13 = lean_apply_5(x_6, x_9, x_10, x_11, x_12, x_3);
return x_13;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27TR_go_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_zipWithLeft_x27TR_go_match__1_splitter___rarg), 6, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipWithRight_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_flip___rarg), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = l_List_bagInter___rarg___closed__1;
x_6 = l_List_zipWithLeft_x27TR_go___rarg(x_4, x_3, x_2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_zipWithRight_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithRight_x27___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipLeft_x27___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_zipLeft_x27___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_zipLeft_x27___rarg___lambda__1), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_List_zipLeft_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_List_zipLeft_x27___rarg___closed__1;
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_zipWithLeft_x27TR_go___rarg(x_3, x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipLeft_x27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_zipLeft_x27___rarg), 2, 0);
return x_3;
}
}
static lean_object* _init_l_List_zipRight_x27___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List_zipLeft_x27___rarg___closed__1;
x_2 = lean_alloc_closure((void*)(l_flip___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_zipRight_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_List_zipRight_x27___rarg___closed__1;
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_zipWithLeft_x27TR_go___rarg(x_3, x_2, x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipRight_x27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_zipRight_x27___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_box(0);
lean_inc(x_1);
x_9 = lean_apply_2(x_1, x_6, x_8);
lean_ctor_set(x_2, 1, x_3);
lean_ctor_set(x_2, 0, x_9);
{
lean_object* _tmp_1 = x_7;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_2);
x_13 = lean_box(0);
lean_inc(x_1);
x_14 = lean_apply_2(x_1, x_11, x_13);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_3);
x_2 = x_12;
x_3 = x_15;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_zipWithLeft___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_zipWithLeft___spec__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_3);
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_box(0);
x_7 = l_List_mapTR_loop___at_List_zipWithLeft___spec__1___rarg(x_1, x_2, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set(x_10, 1, x_9);
x_11 = lean_box(0);
x_12 = l_List_mapTR_loop___at_List_zipWithLeft___spec__1___rarg(x_1, x_10, x_11);
return x_12;
}
}
else
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = lean_ctor_get(x_2, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_2, 1);
lean_inc(x_14);
lean_dec(x_2);
x_15 = !lean_is_exclusive(x_3);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_3, 0);
x_17 = lean_ctor_get(x_3, 1);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_16);
lean_inc(x_1);
x_19 = lean_apply_2(x_1, x_13, x_18);
x_20 = l_List_zipWithLeft___rarg(x_1, x_14, x_17);
lean_ctor_set(x_3, 1, x_20);
lean_ctor_set(x_3, 0, x_19);
return x_3;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_21 = lean_ctor_get(x_3, 0);
x_22 = lean_ctor_get(x_3, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_3);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_21);
lean_inc(x_1);
x_24 = lean_apply_2(x_1, x_13, x_23);
x_25 = l_List_zipWithLeft___rarg(x_1, x_14, x_22);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeft(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithLeft___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeftTR_go___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_box(0);
lean_inc(x_1);
x_7 = lean_apply_2(x_1, x_4, x_6);
x_8 = lean_array_push(x_2, x_7);
x_2 = x_8;
x_3 = x_5;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_List_zipWithLeftTR_go___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_foldl___at_List_zipWithLeftTR_go___spec__1___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeftTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
lean_dec(x_1);
x_5 = lean_array_to_list(lean_box(0), x_4);
return x_5;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_List_foldl___at_List_zipWithLeftTR_go___spec__1___rarg(x_1, x_4, x_2);
x_7 = lean_array_to_list(lean_box(0), x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_dec(x_2);
x_10 = lean_ctor_get(x_3, 0);
x_11 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_10);
lean_inc(x_1);
x_13 = lean_apply_2(x_1, x_8, x_12);
x_14 = lean_array_push(x_4, x_13);
x_2 = x_9;
x_3 = x_11;
x_4 = x_14;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeftTR_go(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithLeftTR_go___rarg___boxed), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeftTR_go___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_zipWithLeftTR_go___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeftTR___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_zipWithLeftTR_go___rarg(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeftTR(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithLeftTR___rarg___boxed), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithLeftTR___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_zipWithLeftTR___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithRight___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_alloc_closure((void*)(l_flip___rarg), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = l_List_bagInter___rarg___closed__1;
x_6 = l_List_zipWithLeftTR_go___rarg(x_4, x_3, x_2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_zipWithRight(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_zipWithRight___rarg___boxed), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipWithRight___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_zipWithRight___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_zipLeft___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_List_zipLeft_x27___rarg___closed__1;
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_zipWithLeftTR_go___rarg(x_3, x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipLeft(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_zipLeft___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_zipLeft___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_List_zipLeft___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_zipRight___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_List_zipRight_x27___rarg___closed__1;
x_4 = l_List_bagInter___rarg___closed__1;
x_5 = l_List_zipWithLeftTR_go___rarg(x_3, x_2, x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipRight(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_zipRight___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_zipRight___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_List_zipRight___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapM_loop___at_List_allSome___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_reverse___rarg(x_2);
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_box(0);
return x_6;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_1);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_1, 1);
x_9 = lean_ctor_get(x_1, 0);
lean_dec(x_9);
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
lean_ctor_set(x_1, 1, x_2);
lean_ctor_set(x_1, 0, x_10);
{
lean_object* _tmp_0 = x_8;
lean_object* _tmp_1 = x_1;
x_1 = _tmp_0;
x_2 = _tmp_1;
}
goto _start;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_1, 1);
lean_inc(x_12);
lean_dec(x_1);
x_13 = lean_ctor_get(x_5, 0);
lean_inc(x_13);
lean_dec(x_5);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_2);
x_1 = x_12;
x_2 = x_14;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapM_loop___at_List_allSome___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_mapM_loop___at_List_allSome___spec__1___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_allSome___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_box(0);
x_3 = l_List_mapM_loop___at_List_allSome___spec__1___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_allSome(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_allSome___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_filterMap___at_List_fillNones___spec__1___rarg(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_1 = x_4;
goto _start;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_1);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_1, 1);
x_8 = lean_ctor_get(x_1, 0);
lean_dec(x_8);
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = l_List_filterMap___at_List_fillNones___spec__1___rarg(x_7);
lean_ctor_set(x_1, 1, x_10);
lean_ctor_set(x_1, 0, x_9);
return x_1;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
lean_dec(x_1);
x_12 = lean_ctor_get(x_3, 0);
lean_inc(x_12);
lean_dec(x_3);
x_13 = l_List_filterMap___at_List_fillNones___spec__1___rarg(x_11);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_filterMap___at_List_fillNones___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_filterMap___at_List_fillNones___spec__1___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_fillNones___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; 
lean_dec(x_2);
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
if (lean_obj_tag(x_4) == 0)
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_List_filterMap___at_List_fillNones___spec__1___rarg(x_5);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = !lean_is_exclusive(x_2);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_2, 1);
x_10 = l_List_fillNones___rarg(x_7, x_9);
lean_ctor_set(x_2, 1, x_10);
return x_2;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_ctor_get(x_2, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_2);
x_13 = l_List_fillNones___rarg(x_7, x_12);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_11);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
else
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_1);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_1, 1);
x_17 = lean_ctor_get(x_1, 0);
lean_dec(x_17);
x_18 = lean_ctor_get(x_4, 0);
lean_inc(x_18);
lean_dec(x_4);
x_19 = l_List_fillNones___rarg(x_16, x_2);
lean_ctor_set(x_1, 1, x_19);
lean_ctor_set(x_1, 0, x_18);
return x_1;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_20 = lean_ctor_get(x_1, 1);
lean_inc(x_20);
lean_dec(x_1);
x_21 = lean_ctor_get(x_4, 0);
lean_inc(x_21);
lean_dec(x_4);
x_22 = l_List_fillNones___rarg(x_20, x_2);
x_23 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_fillNones(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_fillNones___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNones_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_7; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_7 = lean_apply_1(x_3, x_2);
return x_7;
}
else
{
lean_object* x_8; 
lean_dec(x_3);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
if (lean_obj_tag(x_8) == 0)
{
lean_dec(x_4);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_9; lean_object* x_10; 
lean_dec(x_6);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_apply_1(x_5, x_9);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_5);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
lean_dec(x_1);
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_2, 1);
lean_inc(x_13);
lean_dec(x_2);
x_14 = lean_apply_3(x_6, x_11, x_12, x_13);
return x_14;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_6);
lean_dec(x_5);
x_15 = lean_ctor_get(x_1, 1);
lean_inc(x_15);
lean_dec(x_1);
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_apply_3(x_4, x_16, x_15, x_2);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNones_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_fillNones_match__1_splitter___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_filterMapTR_go___at_List_fillNonesTR_go___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; 
x_3 = lean_array_to_list(lean_box(0), x_2);
return x_3;
}
else
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_1 = x_5;
goto _start;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_ctor_get(x_4, 0);
lean_inc(x_8);
lean_dec(x_4);
x_9 = lean_array_push(x_2, x_8);
x_1 = x_7;
x_2 = x_9;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_filterMapTR_go___at_List_fillNonesTR_go___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_filterMapTR_go___at_List_fillNonesTR_go___spec__1___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_fillNonesTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_4; 
lean_dec(x_2);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
if (lean_obj_tag(x_5) == 0)
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_dec(x_1);
x_7 = l_List_filterMapTR_go___at_List_fillNonesTR_go___spec__1___rarg(x_6, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_2, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_2, 1);
lean_inc(x_10);
lean_dec(x_2);
x_11 = lean_array_push(x_3, x_9);
x_1 = x_8;
x_2 = x_10;
x_3 = x_11;
goto _start;
}
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_1, 1);
lean_inc(x_13);
lean_dec(x_1);
x_14 = lean_ctor_get(x_5, 0);
lean_inc(x_14);
lean_dec(x_5);
x_15 = lean_array_push(x_3, x_14);
x_1 = x_13;
x_3 = x_15;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_fillNonesTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_fillNonesTR_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_fillNonesTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_fillNonesTR_go___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_fillNonesTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_fillNonesTR___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNonesTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_8; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_8 = lean_apply_2(x_4, x_2, x_3);
return x_8;
}
else
{
lean_object* x_9; 
lean_dec(x_4);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
if (lean_obj_tag(x_9) == 0)
{
lean_dec(x_5);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_10; lean_object* x_11; 
lean_dec(x_7);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_apply_2(x_6, x_10, x_3);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_6);
x_12 = lean_ctor_get(x_1, 1);
lean_inc(x_12);
lean_dec(x_1);
x_13 = lean_ctor_get(x_2, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_2, 1);
lean_inc(x_14);
lean_dec(x_2);
x_15 = lean_apply_4(x_7, x_12, x_13, x_14, x_3);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_dec(x_7);
lean_dec(x_6);
x_16 = lean_ctor_get(x_1, 1);
lean_inc(x_16);
lean_dec(x_1);
x_17 = lean_ctor_get(x_9, 0);
lean_inc(x_17);
lean_dec(x_9);
x_18 = lean_apply_4(x_5, x_17, x_16, x_2, x_3);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_fillNonesTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_fillNonesTR_go_match__1_splitter___rarg), 7, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_takeList___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = l_List_splitAt___rarg(x_6, x_1);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_List_takeList___rarg(x_10, x_7);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; 
x_13 = lean_ctor_get(x_11, 0);
lean_ctor_set(x_2, 1, x_13);
lean_ctor_set(x_2, 0, x_9);
lean_ctor_set(x_11, 0, x_2);
return x_11;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_11, 0);
x_15 = lean_ctor_get(x_11, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_11);
lean_ctor_set(x_2, 1, x_14);
lean_ctor_set(x_2, 0, x_9);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_2);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_17 = lean_ctor_get(x_2, 0);
x_18 = lean_ctor_get(x_2, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_2);
x_19 = l_List_splitAt___rarg(x_17, x_1);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = l_List_takeList___rarg(x_21, x_18);
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
x_26 = lean_alloc_ctor(1, 2, 0);
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
}
LEAN_EXPORT lean_object* l_List_takeList(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_takeList___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_takeListTR_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_array_to_list(lean_box(0), x_3);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_2);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = l_List_splitAt___rarg(x_6, x_2);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = lean_array_push(x_3, x_9);
x_1 = x_7;
x_2 = x_10;
x_3 = x_11;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_takeListTR_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_takeListTR_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_takeListTR___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_List_bagInter___rarg___closed__1;
x_4 = l_List_takeListTR_go___rarg(x_2, x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_takeListTR(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_takeListTR___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeListTR_go_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_6; 
lean_dec(x_5);
x_6 = lean_apply_2(x_4, x_2, x_3);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_apply_4(x_5, x_7, x_8, x_2, x_3);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeListTR_go_match__1_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_takeListTR_go_match__1_splitter___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeList_match__2_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_1);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
lean_dec(x_2);
x_8 = lean_apply_3(x_4, x_1, x_6, x_7);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l___private_Batteries_Data_List_Basic_0__List_takeList_match__2_splitter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l___private_Batteries_Data_List_Basic_0__List_takeList_match__2_splitter___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_toChunksAux___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
x_4 = l_List_takeWhile_u2082___rarg___closed__1;
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_6 = lean_ctor_get(x_2, 1);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_eq(x_3, x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_3, x_9);
x_11 = l_List_toChunksAux___rarg(x_1, x_6, x_10);
lean_dec(x_10);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; 
x_13 = lean_ctor_get(x_11, 0);
lean_ctor_set(x_2, 1, x_13);
lean_ctor_set(x_11, 0, x_2);
return x_11;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_11, 0);
x_15 = lean_ctor_get(x_11, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_11);
lean_ctor_set(x_2, 1, x_14);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_2);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
else
{
lean_object* x_17; uint8_t x_18; 
x_17 = l_List_toChunksAux___rarg(x_1, x_6, x_1);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_19 = lean_ctor_get(x_17, 0);
x_20 = lean_ctor_get(x_17, 1);
x_21 = lean_box(0);
lean_ctor_set(x_2, 1, x_19);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_2);
lean_ctor_set(x_22, 1, x_20);
lean_ctor_set(x_17, 1, x_22);
lean_ctor_set(x_17, 0, x_21);
return x_17;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_23 = lean_ctor_get(x_17, 0);
x_24 = lean_ctor_get(x_17, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_17);
x_25 = lean_box(0);
lean_ctor_set(x_2, 1, x_23);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_2);
lean_ctor_set(x_26, 1, x_24);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; uint8_t x_31; 
x_28 = lean_ctor_get(x_2, 0);
x_29 = lean_ctor_get(x_2, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_2);
x_30 = lean_unsigned_to_nat(0u);
x_31 = lean_nat_dec_eq(x_3, x_30);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_32 = lean_unsigned_to_nat(1u);
x_33 = lean_nat_sub(x_3, x_32);
x_34 = l_List_toChunksAux___rarg(x_1, x_29, x_33);
lean_dec(x_33);
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_34, 1);
lean_inc(x_36);
if (lean_is_exclusive(x_34)) {
 lean_ctor_release(x_34, 0);
 lean_ctor_release(x_34, 1);
 x_37 = x_34;
} else {
 lean_dec_ref(x_34);
 x_37 = lean_box(0);
}
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_28);
lean_ctor_set(x_38, 1, x_35);
if (lean_is_scalar(x_37)) {
 x_39 = lean_alloc_ctor(0, 2, 0);
} else {
 x_39 = x_37;
}
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_36);
return x_39;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_40 = l_List_toChunksAux___rarg(x_1, x_29, x_1);
x_41 = lean_ctor_get(x_40, 0);
lean_inc(x_41);
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
x_44 = lean_box(0);
x_45 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_45, 0, x_28);
lean_ctor_set(x_45, 1, x_41);
x_46 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_42);
if (lean_is_scalar(x_43)) {
 x_47 = lean_alloc_ctor(0, 2, 0);
} else {
 x_47 = x_43;
}
lean_ctor_set(x_47, 0, x_44);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_toChunksAux(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_toChunksAux___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_toChunksAux___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_toChunksAux___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_toChunks_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_array_to_list(lean_box(0), x_3);
x_6 = lean_array_push(x_4, x_5);
x_7 = lean_array_to_list(lean_box(0), x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_dec(x_2);
x_10 = lean_array_get_size(x_3);
x_11 = lean_nat_dec_eq(x_10, x_1);
lean_dec(x_10);
if (x_11 == 0)
{
lean_object* x_12; 
x_12 = lean_array_push(x_3, x_8);
x_2 = x_9;
x_3 = x_12;
goto _start;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_mk_empty_array_with_capacity(x_1);
x_15 = lean_array_push(x_14, x_8);
x_16 = lean_array_to_list(lean_box(0), x_3);
x_17 = lean_array_push(x_4, x_16);
x_2 = x_9;
x_3 = x_15;
x_4 = x_17;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_toChunks_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_toChunks_go___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_toChunks_go___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_toChunks_go___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_toChunks___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = lean_nat_dec_eq(x_1, x_3);
if (x_4 == 0)
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
x_5 = lean_box(0);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
lean_dec(x_2);
x_8 = l_List_initsTR___rarg___closed__1;
x_9 = lean_array_push(x_8, x_6);
x_10 = l_List_bagInter___rarg___closed__1;
x_11 = l_List_toChunks_go___rarg(x_1, x_7, x_9, x_10);
return x_11;
}
}
else
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_12; 
x_12 = lean_box(0);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_box(0);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_2);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
}
LEAN_EXPORT lean_object* l_List_toChunks(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_toChunks___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_toChunks___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_List_toChunks___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_zipWith_u2083___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_5 = lean_box(0);
return x_5;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_6; 
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_box(0);
return x_6;
}
else
{
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_7 = lean_box(0);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_dec(x_2);
x_10 = lean_ctor_get(x_3, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_3, 1);
lean_inc(x_11);
lean_dec(x_3);
x_12 = !lean_is_exclusive(x_4);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_4, 0);
x_14 = lean_ctor_get(x_4, 1);
lean_inc(x_1);
x_15 = lean_apply_3(x_1, x_8, x_10, x_13);
x_16 = l_List_zipWith_u2083___rarg(x_1, x_9, x_11, x_14);
lean_ctor_set(x_4, 1, x_16);
lean_ctor_set(x_4, 0, x_15);
return x_4;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_4, 0);
x_18 = lean_ctor_get(x_4, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_4);
lean_inc(x_1);
x_19 = lean_apply_3(x_1, x_8, x_10, x_17);
x_20 = l_List_zipWith_u2083___rarg(x_1, x_9, x_11, x_18);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWith_u2083(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_List_zipWith_u2083___rarg), 4, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_zipWith_u2084___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_6; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_6 = lean_box(0);
return x_6;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_7; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_7 = lean_box(0);
return x_7;
}
else
{
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_8; 
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_8 = lean_box(0);
return x_8;
}
else
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_9 = lean_box(0);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
x_12 = lean_ctor_get(x_3, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_3, 1);
lean_inc(x_13);
lean_dec(x_3);
x_14 = lean_ctor_get(x_4, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_4, 1);
lean_inc(x_15);
lean_dec(x_4);
x_16 = !lean_is_exclusive(x_5);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_17 = lean_ctor_get(x_5, 0);
x_18 = lean_ctor_get(x_5, 1);
lean_inc(x_1);
x_19 = lean_apply_4(x_1, x_10, x_12, x_14, x_17);
x_20 = l_List_zipWith_u2084___rarg(x_1, x_11, x_13, x_15, x_18);
lean_ctor_set(x_5, 1, x_20);
lean_ctor_set(x_5, 0, x_19);
return x_5;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_21 = lean_ctor_get(x_5, 0);
x_22 = lean_ctor_get(x_5, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_5);
lean_inc(x_1);
x_23 = lean_apply_4(x_1, x_10, x_12, x_14, x_21);
x_24 = l_List_zipWith_u2084___rarg(x_1, x_11, x_13, x_15, x_22);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWith_u2084(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_alloc_closure((void*)(l_List_zipWith_u2084___rarg), 5, 0);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_zipWith_u2085___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_7; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_7 = lean_box(0);
return x_7;
}
else
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_8; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_8 = lean_box(0);
return x_8;
}
else
{
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_9; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_9 = lean_box(0);
return x_9;
}
else
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_10; 
lean_dec(x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_10 = lean_box(0);
return x_10;
}
else
{
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_11; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_11 = lean_box(0);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_2, 1);
lean_inc(x_13);
lean_dec(x_2);
x_14 = lean_ctor_get(x_3, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_3, 1);
lean_inc(x_15);
lean_dec(x_3);
x_16 = lean_ctor_get(x_4, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_4, 1);
lean_inc(x_17);
lean_dec(x_4);
x_18 = lean_ctor_get(x_5, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_5, 1);
lean_inc(x_19);
lean_dec(x_5);
x_20 = !lean_is_exclusive(x_6);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_6, 0);
x_22 = lean_ctor_get(x_6, 1);
lean_inc(x_1);
x_23 = lean_apply_5(x_1, x_12, x_14, x_16, x_18, x_21);
x_24 = l_List_zipWith_u2085___rarg(x_1, x_13, x_15, x_17, x_19, x_22);
lean_ctor_set(x_6, 1, x_24);
lean_ctor_set(x_6, 0, x_23);
return x_6;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_25 = lean_ctor_get(x_6, 0);
x_26 = lean_ctor_get(x_6, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_6);
lean_inc(x_1);
x_27 = lean_apply_5(x_1, x_12, x_14, x_16, x_18, x_25);
x_28 = l_List_zipWith_u2085___rarg(x_1, x_13, x_15, x_17, x_19, x_26);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_zipWith_u2085(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_List_zipWith_u2085___rarg), 6, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffixAux___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_3, 0);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_2);
x_8 = lean_apply_3(x_1, x_2, x_6, x_7);
x_9 = l_List_concat___rarg(x_2, x_6);
x_10 = l_List_mapWithPrefixSuffixAux___rarg(x_1, x_9, x_7);
lean_ctor_set(x_3, 1, x_10);
lean_ctor_set(x_3, 0, x_8);
return x_3;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_2);
x_13 = lean_apply_3(x_1, x_2, x_11, x_12);
x_14 = l_List_concat___rarg(x_2, x_11);
x_15 = l_List_mapWithPrefixSuffixAux___rarg(x_1, x_14, x_12);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_13);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffixAux(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapWithPrefixSuffixAux___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffix___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_List_mapWithPrefixSuffixAux___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapWithPrefixSuffix(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapWithPrefixSuffix___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapWithComplement___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_List_appendTR___rarg(x_2, x_4);
x_6 = lean_apply_2(x_1, x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_mapWithComplement___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_alloc_closure((void*)(l_List_mapWithComplement___rarg___lambda__1), 4, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = l_List_mapWithPrefixSuffix___rarg(x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_mapWithComplement(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapWithComplement___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_traverse___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_traverse___rarg(x_1, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_traverse___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_dec(x_2);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_box(0);
x_6 = lean_apply_2(x_4, lean_box(0), x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_8);
lean_dec(x_3);
x_9 = lean_ctor_get(x_1, 2);
lean_inc(x_9);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
lean_inc(x_2);
x_12 = lean_apply_1(x_2, x_7);
x_13 = l_List_replaceFTR_go___rarg___closed__1;
x_14 = lean_apply_4(x_11, lean_box(0), lean_box(0), x_13, x_12);
x_15 = lean_alloc_closure((void*)(l_List_traverse___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_15, 0, x_1);
lean_closure_set(x_15, 1, x_2);
lean_closure_set(x_15, 2, x_8);
x_16 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_14, x_15);
return x_16;
}
}
}
LEAN_EXPORT lean_object* l_List_traverse(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_traverse___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_traverse___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_traverse___rarg___lambda__1(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("List", 4, 4);
return x_1;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term_<+~_", 9, 9);
return x_1;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__1;
x_2 = l_List_term___x3c_x2b_x7e_____closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List_term___x3c_x2b_x7e_____closed__4;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" <+~ ", 5, 5);
return x_1;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__6;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List_term___x3c_x2b_x7e_____closed__8;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__9;
x_2 = lean_unsigned_to_nat(51u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__5;
x_2 = l_List_term___x3c_x2b_x7e_____closed__7;
x_3 = l_List_term___x3c_x2b_x7e_____closed__10;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e_____closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__3;
x_2 = lean_unsigned_to_nat(50u);
x_3 = l_List_term___x3c_x2b_x7e_____closed__11;
x_4 = lean_alloc_ctor(4, 4, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_2);
lean_ctor_set(x_4, 3, x_3);
return x_4;
}
}
static lean_object* _init_l_List_term___x3c_x2b_x7e__() {
_start:
{
lean_object* x_1; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__12;
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("app", 3, 3);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__1;
x_2 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__2;
x_3 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__3;
x_4 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Subperm", 7, 7);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6;
x_2 = l_String_toSubstring_x27(x_1);
return x_2;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_List_term___x3c_x2b_x7e_____closed__1;
x_2 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__9;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__10;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("null", 4, 4);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__12;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_List_term___x3c_x2b_x7e_____closed__3;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_box(1);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = lean_unsigned_to_nat(2u);
x_11 = l_Lean_Syntax_getArg(x_1, x_10);
lean_dec(x_1);
x_12 = lean_ctor_get(x_2, 5);
lean_inc(x_12);
x_13 = 0;
x_14 = l_Lean_SourceInfo_fromRef(x_12, x_13);
lean_dec(x_12);
x_15 = lean_ctor_get(x_2, 2);
lean_inc(x_15);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__8;
x_18 = l_Lean_addMacroScope(x_16, x_17, x_15);
x_19 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__7;
x_20 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__11;
lean_inc(x_14);
x_21 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_21, 0, x_14);
lean_ctor_set(x_21, 1, x_19);
lean_ctor_set(x_21, 2, x_18);
lean_ctor_set(x_21, 3, x_20);
x_22 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__13;
lean_inc(x_14);
x_23 = l_Lean_Syntax_node2(x_14, x_22, x_9, x_11);
x_24 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5;
x_25 = l_Lean_Syntax_node2(x_14, x_24, x_21, x_23);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_3);
return x_26;
}
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_1);
x_6 = lean_box(0);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__2;
lean_inc(x_9);
x_11 = l_Lean_Syntax_isOfKind(x_9, x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_1);
x_12 = lean_box(0);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_3);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
lean_dec(x_1);
x_16 = lean_unsigned_to_nat(2u);
lean_inc(x_15);
x_17 = l_Lean_Syntax_matchesNull(x_15, x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
lean_dec(x_15);
lean_dec(x_9);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_3);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_20 = l_Lean_Syntax_getArg(x_15, x_8);
x_21 = l_Lean_Syntax_getArg(x_15, x_14);
lean_dec(x_15);
x_22 = l_Lean_replaceRef(x_9, x_2);
lean_dec(x_9);
x_23 = 0;
x_24 = l_Lean_SourceInfo_fromRef(x_22, x_23);
lean_dec(x_22);
x_25 = l_List_term___x3c_x2b_x7e_____closed__6;
lean_inc(x_24);
x_26 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
x_27 = l_List_term___x3c_x2b_x7e_____closed__3;
x_28 = l_Lean_Syntax_node3(x_24, x_27, x_20, x_26, x_21);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_3);
return x_29;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_2);
x_7 = lean_apply_2(x_1, x_5, x_2);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
x_3 = x_6;
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_unsigned_to_nat(1u);
x_11 = lean_nat_add(x_4, x_10);
lean_dec(x_4);
x_3 = x_6;
x_4 = x_11;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_countP_go___at_List_isSubperm___spec__1___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_2);
x_7 = lean_apply_2(x_1, x_5, x_2);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
x_3 = x_6;
goto _start;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_unsigned_to_nat(1u);
x_11 = lean_nat_add(x_4, x_10);
lean_dec(x_4);
x_3 = x_6;
x_4 = x_11;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_countP_go___at_List_isSubperm___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_countP_go___at_List_isSubperm___spec__2___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT uint8_t l_List_isSubperm___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_unsigned_to_nat(0u);
lean_inc(x_4);
lean_inc(x_1);
x_6 = l_List_countP_go___at_List_isSubperm___spec__1___rarg(x_1, x_4, x_2, x_5);
x_7 = l_List_countP_go___at_List_isSubperm___spec__2___rarg(x_1, x_4, x_3, x_5);
x_8 = lean_nat_dec_le(x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
return x_8;
}
}
LEAN_EXPORT uint8_t l_List_isSubperm___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_2);
x_4 = lean_alloc_closure((void*)(l_List_isSubperm___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
lean_closure_set(x_4, 2, x_3);
x_5 = l_List_decidableBAll___rarg(x_4, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_isSubperm(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_isSubperm___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_isSubperm___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = l_List_isSubperm___rarg___lambda__1(x_1, x_2, x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_isSubperm___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_List_isSubperm___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_insertP_loop___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_dec(x_1);
x_5 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
x_6 = lean_box(0);
x_7 = l_List_reverseAux___rarg(x_5, x_6);
return x_7;
}
else
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_inc(x_9);
x_11 = lean_apply_1(x_1, x_9);
x_12 = lean_unbox(x_11);
lean_dec(x_11);
if (x_12 == 0)
{
lean_ctor_set(x_3, 1, x_4);
{
lean_object* _tmp_2 = x_10;
lean_object* _tmp_3 = x_3;
x_3 = _tmp_2;
x_4 = _tmp_3;
}
goto _start;
}
else
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_1);
lean_ctor_set(x_3, 1, x_4);
lean_ctor_set(x_3, 0, x_2);
x_14 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_14, 0, x_9);
lean_ctor_set(x_14, 1, x_10);
x_15 = l_List_reverseAux___rarg(x_3, x_14);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_3, 0);
x_17 = lean_ctor_get(x_3, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_3);
lean_inc(x_1);
lean_inc(x_16);
x_18 = lean_apply_1(x_1, x_16);
x_19 = lean_unbox(x_18);
lean_dec(x_18);
if (x_19 == 0)
{
lean_object* x_20; 
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_16);
lean_ctor_set(x_20, 1, x_4);
x_3 = x_17;
x_4 = x_20;
goto _start;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_2);
lean_ctor_set(x_22, 1, x_4);
x_23 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_23, 0, x_16);
lean_ctor_set(x_23, 1, x_17);
x_24 = l_List_reverseAux___rarg(x_22, x_23);
return x_24;
}
}
}
}
}
LEAN_EXPORT lean_object* l_List_insertP_loop(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_insertP_loop___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_insertP___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_box(0);
x_5 = l_List_insertP_loop___rarg(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_insertP(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_insertP___rarg), 3, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Data_List_Init_Lemmas(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Alias(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Data_List_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Data_List_Init_Lemmas(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Alias(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_List_bagInter___rarg___closed__1 = _init_l_List_bagInter___rarg___closed__1();
lean_mark_persistent(l_List_bagInter___rarg___closed__1);
l_List_replaceFTR_go___rarg___closed__1 = _init_l_List_replaceFTR_go___rarg___closed__1();
lean_mark_persistent(l_List_replaceFTR_go___rarg___closed__1);
l_List_inits___rarg___closed__1 = _init_l_List_inits___rarg___closed__1();
lean_mark_persistent(l_List_inits___rarg___closed__1);
l_List_initsTR___rarg___closed__1 = _init_l_List_initsTR___rarg___closed__1();
lean_mark_persistent(l_List_initsTR___rarg___closed__1);
l_List_initsTR___rarg___closed__2 = _init_l_List_initsTR___rarg___closed__2();
lean_mark_persistent(l_List_initsTR___rarg___closed__2);
l_List_sectionsTR___rarg___closed__1 = _init_l_List_sectionsTR___rarg___closed__1();
lean_mark_persistent(l_List_sectionsTR___rarg___closed__1);
l_List_takeWhile_u2082___rarg___closed__1 = _init_l_List_takeWhile_u2082___rarg___closed__1();
lean_mark_persistent(l_List_takeWhile_u2082___rarg___closed__1);
l_List_zipLeft_x27___rarg___closed__1 = _init_l_List_zipLeft_x27___rarg___closed__1();
lean_mark_persistent(l_List_zipLeft_x27___rarg___closed__1);
l_List_zipRight_x27___rarg___closed__1 = _init_l_List_zipRight_x27___rarg___closed__1();
lean_mark_persistent(l_List_zipRight_x27___rarg___closed__1);
l_List_term___x3c_x2b_x7e_____closed__1 = _init_l_List_term___x3c_x2b_x7e_____closed__1();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__1);
l_List_term___x3c_x2b_x7e_____closed__2 = _init_l_List_term___x3c_x2b_x7e_____closed__2();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__2);
l_List_term___x3c_x2b_x7e_____closed__3 = _init_l_List_term___x3c_x2b_x7e_____closed__3();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__3);
l_List_term___x3c_x2b_x7e_____closed__4 = _init_l_List_term___x3c_x2b_x7e_____closed__4();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__4);
l_List_term___x3c_x2b_x7e_____closed__5 = _init_l_List_term___x3c_x2b_x7e_____closed__5();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__5);
l_List_term___x3c_x2b_x7e_____closed__6 = _init_l_List_term___x3c_x2b_x7e_____closed__6();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__6);
l_List_term___x3c_x2b_x7e_____closed__7 = _init_l_List_term___x3c_x2b_x7e_____closed__7();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__7);
l_List_term___x3c_x2b_x7e_____closed__8 = _init_l_List_term___x3c_x2b_x7e_____closed__8();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__8);
l_List_term___x3c_x2b_x7e_____closed__9 = _init_l_List_term___x3c_x2b_x7e_____closed__9();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__9);
l_List_term___x3c_x2b_x7e_____closed__10 = _init_l_List_term___x3c_x2b_x7e_____closed__10();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__10);
l_List_term___x3c_x2b_x7e_____closed__11 = _init_l_List_term___x3c_x2b_x7e_____closed__11();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__11);
l_List_term___x3c_x2b_x7e_____closed__12 = _init_l_List_term___x3c_x2b_x7e_____closed__12();
lean_mark_persistent(l_List_term___x3c_x2b_x7e_____closed__12);
l_List_term___x3c_x2b_x7e__ = _init_l_List_term___x3c_x2b_x7e__();
lean_mark_persistent(l_List_term___x3c_x2b_x7e__);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__1 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__1();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__1);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__2 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__2();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__2);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__3 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__3();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__3);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__4 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__4();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__4);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__5);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__6);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__7 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__7();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__7);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__8 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__8();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__8);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__9 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__9();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__9);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__10 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__10();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__10);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__11 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__11();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__11);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__12 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__12();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__12);
l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__13 = _init_l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__13();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______macroRules__List__term___x3c_x2b_x7e____1___closed__13);
l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__1 = _init_l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__1();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__1);
l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__2 = _init_l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__2();
lean_mark_persistent(l_List___aux__Batteries__Data__List__Basic______unexpand__List__Subperm__1___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
