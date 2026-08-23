// Lean compiler output
// Module: Aesop.Search.SearchM
// Imports: Init Aesop.Options Aesop.Search.Queue.Class Aesop.Stats.Basic Aesop.RuleSet Aesop.Tree.TreeM
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
static lean_object* l_Aesop_SearchM_instMonadRef___closed__1;
LEAN_EXPORT lean_object* l_Aesop_getTree___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonad___closed__4;
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonad___boxed(lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__5;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_ReaderT_instMonadLift___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_popGoal_x3f___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_run___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__6;
static lean_object* l_Aesop_SearchM_instMonadStateState___closed__1;
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonad___closed__3;
uint32_t l_UInt32_ofNatTruncate(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getIteration___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_setTree___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__9;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadRef___closed__2;
LEAN_EXPORT lean_object* l_Aesop_incrementIteration___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getTree(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__6;
lean_object* lean_array_push(lean_object*, lean_object*);
lean_object* l_Lean_Core_instMonadLiftIOCoreM(lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
lean_object* l_IO_instMonadLiftSTRealWorldBaseIO(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabitedState___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_setMaxRuleApplicationDepthReached___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_modifyTree(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_run___rarg___closed__3;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabitedState(lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__19;
LEAN_EXPORT lean_object* l_Aesop_setTree___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonad(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__17;
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__15;
lean_object* l_Lean_stringToMessageData(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_run_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_instMonadLiftT(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__7;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg(lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStateState___closed__2;
lean_object* l_Aesop_mkInitialTree(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_getSimpCongrTheorems___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_getTree___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_modifyTree___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1(lean_object*);
lean_object* l_Aesop_treeImpl___elambda__1(lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_setMaxRuleApplicationDepthReached(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabitedState___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadReaderContext___rarg(lean_object*);
static lean_object* l_Aesop_SearchM_instInhabited___rarg___closed__2;
lean_object* l_StateRefT_x27_lift___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__21;
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__20;
LEAN_EXPORT lean_object* l_Aesop_SearchM_run_x27___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_Queue_init_x27___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getIteration___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_ReaderT_instMonadLift(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__9;
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__10;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_run___rarg___closed__2;
static lean_object* l_Aesop_SearchM_instInhabited___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedNormSimpContext;
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonad___closed__5;
lean_object* l_ReaderT_instApplicativeOfMonad___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_incrementIteration(lean_object*);
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__1;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadReaderContext___rarg___boxed(lean_object*);
static lean_object* l_Aesop_SearchM_instMonadRef___closed__3;
LEAN_EXPORT lean_object* l_Aesop_getTree___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_run(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_modifyTree___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__16;
static lean_object* l_Aesop_SearchM_instMonadStateState___closed__4;
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__8;
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Meta_instMonadMetaM;
LEAN_EXPORT lean_object* l_Aesop_getIteration(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadReaderContext(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_enqueueGoals___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__14;
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg___boxed(lean_object*);
static lean_object* l_Aesop_SearchM_instMonad___closed__2;
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__8;
LEAN_EXPORT lean_object* l_Aesop_enqueueGoals(lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__3;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__18;
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_setTree(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef(lean_object*, lean_object*);
lean_object* l_StateRefT_x27_lift(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__11;
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_modifyTree___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_run___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__12;
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___boxed(lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__4;
LEAN_EXPORT lean_object* l_Aesop_incrementIteration___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_setTree___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getIteration___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__13;
static lean_object* l_Aesop_SearchM_instMonad___closed__1;
LEAN_EXPORT lean_object* l_Aesop_SearchM_run_x27(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__5;
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStateState___closed__3;
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_popGoal_x3f(lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__10;
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__7;
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__3;
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_setMaxRuleApplicationDepthReached___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1(size_t, size_t, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
lean_object* lean_nat_add(lean_object*, lean_object*);
lean_object* l_instMonadLiftBaseIOEIO(lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__2;
lean_object* l_instMonadLiftTOfMonadLift___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_SearchM_instMonadStats___rarg___closed__2;
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
static lean_object* l_Aesop_instInhabitedNormSimpContext___closed__4;
lean_object* l_ReaderT_instMonad___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Core_instMonadOptionsCoreM___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = 0;
x_3 = 0;
x_4 = lean_alloc_ctor(0, 2, 19);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_1);
lean_ctor_set_uint8(x_4, sizeof(void*)*2, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 1, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 2, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 3, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 4, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 5, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 6, x_3);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 7, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 8, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 9, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 10, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 11, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 12, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 13, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 14, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 15, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 16, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 17, x_2);
lean_ctor_set_uint8(x_4, sizeof(void*)*2 + 18, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedNormSimpContext___closed__3;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Aesop_instInhabitedNormSimpContext___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instInhabitedNormSimpContext___closed__6;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__8() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = 1;
x_2 = l_Aesop_instInhabitedNormSimpContext___closed__5;
x_3 = l_Aesop_instInhabitedNormSimpContext___closed__7;
x_4 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
lean_ctor_set_uint8(x_4, sizeof(void*)*2, x_1);
return x_4;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__9() {
_start:
{
uint32_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; lean_object* x_8; 
x_1 = 0;
x_2 = lean_box(0);
x_3 = l_Aesop_instInhabitedNormSimpContext___closed__1;
x_4 = l_Aesop_instInhabitedNormSimpContext___closed__2;
x_5 = l_Aesop_instInhabitedNormSimpContext___closed__8;
x_6 = lean_unsigned_to_nat(0u);
x_7 = 0;
x_8 = lean_alloc_ctor(0, 5, 9);
lean_ctor_set(x_8, 0, x_3);
lean_ctor_set(x_8, 1, x_4);
lean_ctor_set(x_8, 2, x_5);
lean_ctor_set(x_8, 3, x_2);
lean_ctor_set(x_8, 4, x_6);
lean_ctor_set_uint32(x_8, sizeof(void*)*5, x_1);
lean_ctor_set_uint32(x_8, sizeof(void*)*5 + 4, x_1);
lean_ctor_set_uint8(x_8, sizeof(void*)*5 + 8, x_7);
return x_8;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; lean_object* x_4; lean_object* x_5; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedNormSimpContext___closed__9;
x_3 = 0;
x_4 = l_Aesop_instInhabitedNormSimpContext___closed__2;
x_5 = lean_alloc_ctor(0, 3, 2);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_1);
lean_ctor_set(x_5, 2, x_4);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3 + 1, x_3);
return x_5;
}
}
static lean_object* _init_l_Aesop_instInhabitedNormSimpContext() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedNormSimpContext___closed__10;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabitedState___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = 0;
x_5 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_1);
lean_ctor_set_uint8(x_5, sizeof(void*)*2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabitedState(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_SearchM_instInhabitedState___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabitedState___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instInhabitedState___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonad___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Meta_instMonadMetaM;
x_2 = l_ReaderT_instMonad___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonad___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonad___closed__1;
x_2 = l_ReaderT_instMonad___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonad___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonad___closed__2;
x_2 = l_ReaderT_instMonad___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonad___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonad___closed__2;
x_2 = l_ReaderT_instApplicativeOfMonad___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonad___closed__5() {
_start:
{
lean_object* x_1; uint8_t x_2; 
x_1 = l_Aesop_SearchM_instMonad___closed__3;
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_dec(x_3);
x_4 = l_Aesop_SearchM_instMonad___closed__4;
lean_ctor_set(x_1, 0, x_4);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Aesop_SearchM_instMonad___closed__4;
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_5);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonad(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instMonad___closed__5;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonad___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instMonad(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_6, 5);
lean_inc(x_9);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_9);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_9, 5);
lean_dec(x_13);
lean_ctor_set(x_9, 5, x_2);
x_14 = lean_apply_8(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; lean_object* x_29; 
x_15 = lean_ctor_get(x_9, 0);
x_16 = lean_ctor_get(x_9, 1);
x_17 = lean_ctor_get(x_9, 2);
x_18 = lean_ctor_get(x_9, 3);
x_19 = lean_ctor_get(x_9, 4);
x_20 = lean_ctor_get(x_9, 6);
x_21 = lean_ctor_get(x_9, 7);
x_22 = lean_ctor_get(x_9, 8);
x_23 = lean_ctor_get(x_9, 9);
x_24 = lean_ctor_get(x_9, 10);
x_25 = lean_ctor_get_uint8(x_9, sizeof(void*)*12);
x_26 = lean_ctor_get(x_9, 11);
x_27 = lean_ctor_get_uint8(x_9, sizeof(void*)*12 + 1);
lean_inc(x_26);
lean_inc(x_24);
lean_inc(x_23);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_9);
x_28 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_28, 0, x_15);
lean_ctor_set(x_28, 1, x_16);
lean_ctor_set(x_28, 2, x_17);
lean_ctor_set(x_28, 3, x_18);
lean_ctor_set(x_28, 4, x_19);
lean_ctor_set(x_28, 5, x_2);
lean_ctor_set(x_28, 6, x_20);
lean_ctor_set(x_28, 7, x_21);
lean_ctor_set(x_28, 8, x_22);
lean_ctor_set(x_28, 9, x_23);
lean_ctor_set(x_28, 10, x_24);
lean_ctor_set(x_28, 11, x_26);
lean_ctor_set_uint8(x_28, sizeof(void*)*12, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*12 + 1, x_27);
x_29 = lean_apply_8(x_3, x_4, x_5, x_6, x_7, x_8, x_28, x_10, x_11);
return x_29;
}
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadRef___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadRef___lambda__1___boxed), 8, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadRef___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadRef___lambda__2), 11, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadRef___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadRef___closed__1;
x_2 = l_Aesop_SearchM_instMonadRef___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instMonadRef___closed__3;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_SearchM_instMonadRef___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
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
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadRef___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instMonadRef(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
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
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg___boxed), 6, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instInhabited___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instInhabited___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instInhabited___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_Aesop_SearchM_instInhabited___rarg___closed__2;
x_7 = l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg(x_6, x_1, x_2, x_3, x_4, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_Aesop_SearchM_instInhabited___rarg___boxed), 5, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Aesop_SearchM_instInhabited___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Aesop_SearchM_instInhabited___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instInhabited___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_SearchM_instInhabited(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_st_ref_get(x_2, x_8);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
return x_9;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_9, 0);
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_9);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_st_ref_set(x_3, x_1, x_9);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
return x_10;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_11 = lean_st_ref_take(x_4, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_1(x_2, x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_set(x_4, x_16, x_13);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; 
x_19 = lean_ctor_get(x_17, 0);
lean_dec(x_19);
lean_ctor_set(x_17, 0, x_15);
return x_17;
}
else
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_17, 1);
lean_inc(x_20);
lean_dec(x_17);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStateState___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadStateState___lambda__1___boxed), 8, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStateState___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadStateState___lambda__2___boxed), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStateState___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadStateState___lambda__3___boxed), 10, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStateState___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_SearchM_instMonadStateState___closed__1;
x_2 = l_Aesop_SearchM_instMonadStateState___closed__2;
x_3 = l_Aesop_SearchM_instMonadStateState___closed__3;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instMonadStateState___closed__4;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_SearchM_instMonadStateState___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
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
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_SearchM_instMonadStateState___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_SearchM_instMonadStateState___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
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
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStateState___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_SearchM_instMonadStateState(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg___boxed), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadReaderContext___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg___boxed), 8, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadReaderContext(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadReaderContext___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ReaderT_read___at_Aesop_SearchM_instMonadReaderContext___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadReaderContext___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_SearchM_instMonadReaderContext___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg___boxed), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_11 = lean_apply_8(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_9(x_2, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
return x_14;
}
else
{
uint8_t x_15; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_15 = !lean_is_exclusive(x_11);
if (x_15 == 0)
{
return x_11;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_11, 0);
x_17 = lean_ctor_get(x_11, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_11);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2___rarg), 10, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_1, 3);
lean_inc(x_10);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_ReaderT_instMonadLift), 3, 2);
lean_closure_set(x_1, 0, lean_box(0));
lean_closure_set(x_1, 1, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_StateRefT_x27_lift), 4, 3);
lean_closure_set(x_1, 0, lean_box(0));
lean_closure_set(x_1, 1, lean_box(0));
lean_closure_set(x_1, 2, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instMonadLiftBaseIOEIO), 2, 1);
lean_closure_set(x_1, 0, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instMonadLiftT), 2, 1);
lean_closure_set(x_1, 0, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_IO_instMonadLiftSTRealWorldBaseIO), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__5;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__4;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__3;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__6;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Core_instMonadLiftIOCoreM), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__8;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__7;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__2;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__9;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__1;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__10;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__2;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__11;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__2;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__12;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__1;
x_2 = l_Aesop_SearchM_instMonadStats___rarg___closed__13;
x_3 = lean_alloc_closure((void*)(l_instMonadLiftTOfMonadLift___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Core_instMonadOptionsCoreM___boxed), 3, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__15;
x_2 = lean_alloc_closure((void*)(l_StateRefT_x27_lift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__16;
x_2 = lean_alloc_closure((void*)(l_ReaderT_instMonadLift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__17;
x_2 = lean_alloc_closure((void*)(l_StateRefT_x27_lift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__18;
x_2 = lean_alloc_closure((void*)(l_StateRefT_x27_lift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_instMonadStats___rarg___closed__19;
x_2 = lean_alloc_closure((void*)(l_ReaderT_instMonadLift___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_instMonadStats___rarg___closed__21() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadStats___rarg___lambda__1___boxed), 9, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_2 = lean_alloc_closure((void*)(l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg___boxed), 8, 0);
x_3 = l_Aesop_SearchM_instMonadStats___rarg___closed__21;
x_4 = lean_alloc_closure((void*)(l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2___rarg), 10, 2);
lean_closure_set(x_4, 0, x_2);
lean_closure_set(x_4, 1, x_3);
x_5 = l_Aesop_SearchM_instMonadStats___rarg___closed__14;
x_6 = l_Aesop_SearchM_instMonadStats___rarg___closed__20;
x_7 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
lean_ctor_set(x_7, 2, x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadStats___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ReaderT_read___at_Aesop_SearchM_instMonadStats___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_ReaderT_bind___at_Aesop_SearchM_instMonadStats___spec__2(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_SearchM_instMonadStats___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadStats___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_apply_7(x_1, x_13, x_4, x_5, x_6, x_7, x_8, x_12);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_SearchM_instMonadLiftTreeM___rarg___boxed), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_SearchM_instMonadLiftTreeM___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_instMonadLiftTreeM___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_SearchM_instMonadLiftTreeM(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_run_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_10 = lean_st_mk_ref(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_st_mk_ref(x_2, x_12);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_11);
lean_inc(x_15);
lean_inc(x_1);
x_17 = lean_apply_8(x_4, x_1, x_15, x_11, x_5, x_6, x_7, x_8, x_16);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = lean_st_ref_get(x_15, x_19);
lean_dec(x_15);
x_21 = !lean_is_exclusive(x_20);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_20, 1);
x_23 = lean_st_ref_get(x_11, x_22);
lean_dec(x_11);
x_24 = !lean_is_exclusive(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; 
x_25 = lean_ctor_get(x_23, 1);
x_26 = lean_ctor_get(x_1, 3);
lean_inc(x_26);
lean_dec(x_1);
x_27 = lean_st_ref_get(x_26, x_25);
lean_dec(x_26);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; 
x_29 = lean_ctor_get(x_27, 0);
lean_ctor_set(x_23, 1, x_29);
lean_ctor_set(x_20, 1, x_23);
lean_ctor_set(x_13, 1, x_20);
lean_ctor_set(x_13, 0, x_18);
lean_ctor_set(x_27, 0, x_13);
return x_27;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_27, 0);
x_31 = lean_ctor_get(x_27, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_27);
lean_ctor_set(x_23, 1, x_30);
lean_ctor_set(x_20, 1, x_23);
lean_ctor_set(x_13, 1, x_20);
lean_ctor_set(x_13, 0, x_18);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_13);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_33 = lean_ctor_get(x_23, 0);
x_34 = lean_ctor_get(x_23, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_23);
x_35 = lean_ctor_get(x_1, 3);
lean_inc(x_35);
lean_dec(x_1);
x_36 = lean_st_ref_get(x_35, x_34);
lean_dec(x_35);
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
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_33);
lean_ctor_set(x_40, 1, x_37);
lean_ctor_set(x_20, 1, x_40);
lean_ctor_set(x_13, 1, x_20);
lean_ctor_set(x_13, 0, x_18);
if (lean_is_scalar(x_39)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_39;
}
lean_ctor_set(x_41, 0, x_13);
lean_ctor_set(x_41, 1, x_38);
return x_41;
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_42 = lean_ctor_get(x_20, 0);
x_43 = lean_ctor_get(x_20, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_20);
x_44 = lean_st_ref_get(x_11, x_43);
lean_dec(x_11);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_44, 1);
lean_inc(x_46);
if (lean_is_exclusive(x_44)) {
 lean_ctor_release(x_44, 0);
 lean_ctor_release(x_44, 1);
 x_47 = x_44;
} else {
 lean_dec_ref(x_44);
 x_47 = lean_box(0);
}
x_48 = lean_ctor_get(x_1, 3);
lean_inc(x_48);
lean_dec(x_1);
x_49 = lean_st_ref_get(x_48, x_46);
lean_dec(x_48);
x_50 = lean_ctor_get(x_49, 0);
lean_inc(x_50);
x_51 = lean_ctor_get(x_49, 1);
lean_inc(x_51);
if (lean_is_exclusive(x_49)) {
 lean_ctor_release(x_49, 0);
 lean_ctor_release(x_49, 1);
 x_52 = x_49;
} else {
 lean_dec_ref(x_49);
 x_52 = lean_box(0);
}
if (lean_is_scalar(x_47)) {
 x_53 = lean_alloc_ctor(0, 2, 0);
} else {
 x_53 = x_47;
}
lean_ctor_set(x_53, 0, x_45);
lean_ctor_set(x_53, 1, x_50);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_42);
lean_ctor_set(x_54, 1, x_53);
lean_ctor_set(x_13, 1, x_54);
lean_ctor_set(x_13, 0, x_18);
if (lean_is_scalar(x_52)) {
 x_55 = lean_alloc_ctor(0, 2, 0);
} else {
 x_55 = x_52;
}
lean_ctor_set(x_55, 0, x_13);
lean_ctor_set(x_55, 1, x_51);
return x_55;
}
}
else
{
uint8_t x_56; 
lean_free_object(x_13);
lean_dec(x_15);
lean_dec(x_11);
lean_dec(x_1);
x_56 = !lean_is_exclusive(x_17);
if (x_56 == 0)
{
return x_17;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_57 = lean_ctor_get(x_17, 0);
x_58 = lean_ctor_get(x_17, 1);
lean_inc(x_58);
lean_inc(x_57);
lean_dec(x_17);
x_59 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_59, 0, x_57);
lean_ctor_set(x_59, 1, x_58);
return x_59;
}
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_60 = lean_ctor_get(x_13, 0);
x_61 = lean_ctor_get(x_13, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_13);
lean_inc(x_11);
lean_inc(x_60);
lean_inc(x_1);
x_62 = lean_apply_8(x_4, x_1, x_60, x_11, x_5, x_6, x_7, x_8, x_61);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
lean_dec(x_62);
x_65 = lean_st_ref_get(x_60, x_64);
lean_dec(x_60);
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
x_69 = lean_st_ref_get(x_11, x_67);
lean_dec(x_11);
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
x_73 = lean_ctor_get(x_1, 3);
lean_inc(x_73);
lean_dec(x_1);
x_74 = lean_st_ref_get(x_73, x_71);
lean_dec(x_73);
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_74)) {
 lean_ctor_release(x_74, 0);
 lean_ctor_release(x_74, 1);
 x_77 = x_74;
} else {
 lean_dec_ref(x_74);
 x_77 = lean_box(0);
}
if (lean_is_scalar(x_72)) {
 x_78 = lean_alloc_ctor(0, 2, 0);
} else {
 x_78 = x_72;
}
lean_ctor_set(x_78, 0, x_70);
lean_ctor_set(x_78, 1, x_75);
if (lean_is_scalar(x_68)) {
 x_79 = lean_alloc_ctor(0, 2, 0);
} else {
 x_79 = x_68;
}
lean_ctor_set(x_79, 0, x_66);
lean_ctor_set(x_79, 1, x_78);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_63);
lean_ctor_set(x_80, 1, x_79);
if (lean_is_scalar(x_77)) {
 x_81 = lean_alloc_ctor(0, 2, 0);
} else {
 x_81 = x_77;
}
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_76);
return x_81;
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; 
lean_dec(x_60);
lean_dec(x_11);
lean_dec(x_1);
x_82 = lean_ctor_get(x_62, 0);
lean_inc(x_82);
x_83 = lean_ctor_get(x_62, 1);
lean_inc(x_83);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 x_84 = x_62;
} else {
 lean_dec_ref(x_62);
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
LEAN_EXPORT lean_object* l_Aesop_SearchM_run_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_SearchM_run_x27___rarg), 9, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_run_x27___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_SearchM_run_x27(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1(size_t x_1, size_t x_2, lean_object* x_3) {
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
x_8 = lean_ctor_get(x_5, 1);
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
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2(size_t x_1, size_t x_2, lean_object* x_3) {
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
x_8 = lean_ctor_get(x_5, 1);
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
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
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
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg___boxed), 6, 0);
return x_4;
}
}
static lean_object* _init_l_Aesop_SearchM_run___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: internal error: root mvar cluster does not contain exactly one goal.", 75, 75);
return x_1;
}
}
static lean_object* _init_l_Aesop_SearchM_run___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_SearchM_run___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_SearchM_run___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_run___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
lean_object* x_15; 
lean_inc(x_12);
x_15 = l_Aesop_mkInitialTree(x_7, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint32_t x_22; lean_object* x_23; size_t x_24; size_t x_25; lean_object* x_26; lean_object* x_27; uint32_t x_28; lean_object* x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; uint8_t x_34; lean_object* x_35; size_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_Meta_getSimpCongrTheorems___rarg(x_13, x_17);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_ctor_get(x_5, 1);
lean_inc(x_21);
x_22 = l_UInt32_ofNatTruncate(x_21);
x_23 = lean_ctor_get(x_3, 1);
lean_inc(x_23);
x_24 = lean_array_size(x_23);
x_25 = 0;
x_26 = l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1(x_24, x_25, x_23);
x_27 = lean_box(0);
x_28 = 0;
x_29 = lean_unsigned_to_nat(0u);
x_30 = 0;
x_31 = lean_alloc_ctor(0, 5, 9);
lean_ctor_set(x_31, 0, x_5);
lean_ctor_set(x_31, 1, x_26);
lean_ctor_set(x_31, 2, x_19);
lean_ctor_set(x_31, 3, x_27);
lean_ctor_set(x_31, 4, x_29);
lean_ctor_set_uint32(x_31, sizeof(void*)*5, x_22);
lean_ctor_set_uint32(x_31, sizeof(void*)*5 + 4, x_28);
lean_ctor_set_uint8(x_31, sizeof(void*)*5 + 8, x_30);
x_32 = lean_ctor_get(x_4, 0);
lean_inc(x_32);
x_33 = lean_ctor_get_uint8(x_32, sizeof(void*)*9 + 7);
x_34 = lean_ctor_get_uint8(x_32, sizeof(void*)*9 + 8);
lean_dec(x_32);
x_35 = lean_ctor_get(x_3, 2);
lean_inc(x_35);
x_36 = lean_array_size(x_35);
x_37 = l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2(x_36, x_25, x_35);
x_38 = lean_alloc_ctor(0, 3, 2);
lean_ctor_set(x_38, 0, x_31);
lean_ctor_set(x_38, 1, x_6);
lean_ctor_set(x_38, 2, x_37);
lean_ctor_set_uint8(x_38, sizeof(void*)*3, x_33);
lean_ctor_set_uint8(x_38, sizeof(void*)*3 + 1, x_34);
x_39 = lean_st_mk_ref(x_8, x_20);
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_ctor_get(x_39, 1);
lean_inc(x_41);
lean_dec(x_39);
x_42 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_42, 0, x_3);
lean_ctor_set(x_42, 1, x_38);
lean_ctor_set(x_42, 2, x_4);
lean_ctor_set(x_42, 3, x_40);
x_43 = lean_ctor_get(x_16, 0);
lean_inc(x_43);
x_44 = lean_st_ref_get(x_43, x_41);
lean_dec(x_43);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_44, 1);
lean_inc(x_46);
lean_dec(x_44);
x_47 = l_Aesop_treeImpl___elambda__1(x_45);
lean_dec(x_45);
x_48 = lean_ctor_get(x_47, 1);
lean_inc(x_48);
lean_dec(x_47);
x_49 = lean_array_get_size(x_48);
x_50 = lean_unsigned_to_nat(1u);
x_51 = lean_nat_dec_eq(x_49, x_50);
lean_dec(x_49);
if (x_51 == 0)
{
lean_object* x_52; lean_object* x_53; 
lean_dec(x_48);
lean_dec(x_42);
lean_dec(x_16);
lean_dec(x_9);
lean_dec(x_1);
x_52 = l_Aesop_SearchM_run___rarg___closed__2;
x_53 = l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg(x_52, x_10, x_11, x_12, x_13, x_46);
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
return x_53;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_54 = lean_array_fget(x_48, x_29);
lean_dec(x_48);
x_55 = l_Aesop_SearchM_run___rarg___closed__3;
x_56 = lean_array_push(x_55, x_54);
x_57 = l_Aesop_Queue_init_x27___rarg(x_1, x_56, x_46);
x_58 = lean_ctor_get(x_57, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 1);
lean_inc(x_59);
lean_dec(x_57);
x_60 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_60, 0, x_50);
lean_ctor_set(x_60, 1, x_58);
lean_ctor_set_uint8(x_60, sizeof(void*)*2, x_30);
x_61 = l_Aesop_SearchM_run_x27___rarg(x_42, x_60, x_16, x_9, x_10, x_11, x_12, x_13, x_59);
return x_61;
}
}
else
{
uint8_t x_62; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_62 = !lean_is_exclusive(x_15);
if (x_62 == 0)
{
return x_15;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_15, 0);
x_64 = lean_ctor_get(x_15, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_15);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_SearchM_run(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_SearchM_run___rarg), 14, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__1(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at_Aesop_SearchM_run___spec__2(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Aesop_SearchM_run___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_SearchM_run___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_throwError___at_Aesop_SearchM_run___spec__3(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_getTree___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_st_ref_get(x_1, x_7);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_st_ref_get(x_2, x_9);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
return x_10;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_10, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_getTree(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_getTree___rarg___boxed), 7, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_getTree___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_getTree___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_getTree___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_getTree(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_setTree___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_st_ref_set(x_4, x_1, x_11);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
return x_12;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_12);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_setTree(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_setTree___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_setTree___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_setTree___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_setTree___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_setTree(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyTree___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_st_ref_take(x_4, x_11);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_apply_1(x_1, x_13);
x_16 = lean_st_ref_set(x_4, x_15, x_14);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_16, 0);
lean_dec(x_18);
x_19 = lean_box(0);
lean_ctor_set(x_16, 0, x_19);
return x_16;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_16, 1);
lean_inc(x_20);
lean_dec(x_16);
x_21 = lean_box(0);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyTree(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_modifyTree___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyTree___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_modifyTree___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_modifyTree___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_modifyTree(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_getIteration___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_1, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
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
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_getIteration(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_getIteration___rarg___boxed), 7, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_getIteration___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_getIteration___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_getIteration___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_getIteration(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_incrementIteration___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_st_ref_take(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = !lean_is_exclusive(x_11);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_14 = lean_ctor_get(x_11, 0);
x_15 = lean_unsigned_to_nat(1u);
x_16 = lean_nat_add(x_14, x_15);
lean_dec(x_14);
lean_ctor_set(x_11, 0, x_16);
x_17 = lean_st_ref_set(x_3, x_11, x_12);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_17, 0);
lean_dec(x_19);
x_20 = lean_box(0);
lean_ctor_set(x_17, 0, x_20);
return x_17;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_17, 1);
lean_inc(x_21);
lean_dec(x_17);
x_22 = lean_box(0);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_21);
return x_23;
}
}
else
{
lean_object* x_24; lean_object* x_25; uint8_t x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_24 = lean_ctor_get(x_11, 0);
x_25 = lean_ctor_get(x_11, 1);
x_26 = lean_ctor_get_uint8(x_11, sizeof(void*)*2);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_11);
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_24, x_27);
lean_dec(x_24);
x_29 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_25);
lean_ctor_set_uint8(x_29, sizeof(void*)*2, x_26);
x_30 = lean_st_ref_set(x_3, x_29, x_12);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
if (lean_is_exclusive(x_30)) {
 lean_ctor_release(x_30, 0);
 lean_ctor_release(x_30, 1);
 x_32 = x_30;
} else {
 lean_dec_ref(x_30);
 x_32 = lean_box(0);
}
x_33 = lean_box(0);
if (lean_is_scalar(x_32)) {
 x_34 = lean_alloc_ctor(0, 2, 0);
} else {
 x_34 = x_32;
}
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_31);
return x_34;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_incrementIteration(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_incrementIteration___rarg___boxed), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_incrementIteration___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_incrementIteration___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_popGoal_x3f___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_10 = lean_st_ref_get(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
x_14 = lean_ctor_get(x_1, 2);
lean_inc(x_14);
lean_dec(x_1);
x_15 = !lean_is_exclusive(x_11);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_11, 0);
x_17 = lean_ctor_get(x_11, 1);
x_18 = lean_apply_1(x_14, x_17);
x_19 = lean_ctor_get(x_13, 0);
lean_inc(x_19);
lean_dec(x_13);
lean_inc(x_3);
x_20 = lean_apply_10(x_19, lean_box(0), x_18, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; uint8_t x_26; 
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = lean_ctor_get(x_21, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_21, 1);
lean_inc(x_24);
lean_dec(x_21);
lean_ctor_set(x_11, 1, x_24);
x_25 = lean_st_ref_set(x_3, x_11, x_22);
lean_dec(x_3);
x_26 = !lean_is_exclusive(x_25);
if (x_26 == 0)
{
lean_object* x_27; 
x_27 = lean_ctor_get(x_25, 0);
lean_dec(x_27);
lean_ctor_set(x_25, 0, x_23);
return x_25;
}
else
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_23);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
else
{
uint8_t x_30; 
lean_free_object(x_11);
lean_dec(x_16);
lean_dec(x_3);
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
else
{
lean_object* x_34; lean_object* x_35; uint8_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_34 = lean_ctor_get(x_11, 0);
x_35 = lean_ctor_get(x_11, 1);
x_36 = lean_ctor_get_uint8(x_11, sizeof(void*)*2);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_11);
x_37 = lean_apply_1(x_14, x_35);
x_38 = lean_ctor_get(x_13, 0);
lean_inc(x_38);
lean_dec(x_13);
lean_inc(x_3);
x_39 = lean_apply_10(x_38, lean_box(0), x_37, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_39) == 0)
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_ctor_get(x_39, 1);
lean_inc(x_41);
lean_dec(x_39);
x_42 = lean_ctor_get(x_40, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_40, 1);
lean_inc(x_43);
lean_dec(x_40);
x_44 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_44, 0, x_34);
lean_ctor_set(x_44, 1, x_43);
lean_ctor_set_uint8(x_44, sizeof(void*)*2, x_36);
x_45 = lean_st_ref_set(x_3, x_44, x_41);
lean_dec(x_3);
x_46 = lean_ctor_get(x_45, 1);
lean_inc(x_46);
if (lean_is_exclusive(x_45)) {
 lean_ctor_release(x_45, 0);
 lean_ctor_release(x_45, 1);
 x_47 = x_45;
} else {
 lean_dec_ref(x_45);
 x_47 = lean_box(0);
}
if (lean_is_scalar(x_47)) {
 x_48 = lean_alloc_ctor(0, 2, 0);
} else {
 x_48 = x_47;
}
lean_ctor_set(x_48, 0, x_42);
lean_ctor_set(x_48, 1, x_46);
return x_48;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
lean_dec(x_34);
lean_dec(x_3);
x_49 = lean_ctor_get(x_39, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_39, 1);
lean_inc(x_50);
if (lean_is_exclusive(x_39)) {
 lean_ctor_release(x_39, 0);
 lean_ctor_release(x_39, 1);
 x_51 = x_39;
} else {
 lean_dec_ref(x_39);
 x_51 = lean_box(0);
}
if (lean_is_scalar(x_51)) {
 x_52 = lean_alloc_ctor(1, 2, 0);
} else {
 x_52 = x_51;
}
lean_ctor_set(x_52, 0, x_49);
lean_ctor_set(x_52, 1, x_50);
return x_52;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_popGoal_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_popGoal_x3f___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_enqueueGoals___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_11 = lean_st_ref_get(x_4, x_10);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Aesop_SearchM_instMonadStats___rarg(x_1);
x_15 = lean_ctor_get(x_1, 1);
lean_inc(x_15);
lean_dec(x_1);
x_16 = !lean_is_exclusive(x_12);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_12, 0);
x_18 = lean_ctor_get(x_12, 1);
x_19 = lean_apply_2(x_15, x_18, x_2);
x_20 = lean_ctor_get(x_14, 0);
lean_inc(x_20);
lean_dec(x_14);
lean_inc(x_4);
x_21 = lean_apply_10(x_20, lean_box(0), x_19, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_22 = lean_ctor_get(x_21, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_21, 1);
lean_inc(x_23);
lean_dec(x_21);
lean_ctor_set(x_12, 1, x_22);
x_24 = lean_st_ref_set(x_4, x_12, x_23);
lean_dec(x_4);
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
return x_24;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_24, 0);
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_24);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
else
{
uint8_t x_29; 
lean_free_object(x_12);
lean_dec(x_17);
lean_dec(x_4);
x_29 = !lean_is_exclusive(x_21);
if (x_29 == 0)
{
return x_21;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_21, 0);
x_31 = lean_ctor_get(x_21, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_21);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
else
{
lean_object* x_33; lean_object* x_34; uint8_t x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_33 = lean_ctor_get(x_12, 0);
x_34 = lean_ctor_get(x_12, 1);
x_35 = lean_ctor_get_uint8(x_12, sizeof(void*)*2);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_12);
x_36 = lean_apply_2(x_15, x_34, x_2);
x_37 = lean_ctor_get(x_14, 0);
lean_inc(x_37);
lean_dec(x_14);
lean_inc(x_4);
x_38 = lean_apply_10(x_37, lean_box(0), x_36, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
if (lean_obj_tag(x_38) == 0)
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_39 = lean_ctor_get(x_38, 0);
lean_inc(x_39);
x_40 = lean_ctor_get(x_38, 1);
lean_inc(x_40);
lean_dec(x_38);
x_41 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_41, 0, x_33);
lean_ctor_set(x_41, 1, x_39);
lean_ctor_set_uint8(x_41, sizeof(void*)*2, x_35);
x_42 = lean_st_ref_set(x_4, x_41, x_40);
lean_dec(x_4);
x_43 = lean_ctor_get(x_42, 0);
lean_inc(x_43);
x_44 = lean_ctor_get(x_42, 1);
lean_inc(x_44);
if (lean_is_exclusive(x_42)) {
 lean_ctor_release(x_42, 0);
 lean_ctor_release(x_42, 1);
 x_45 = x_42;
} else {
 lean_dec_ref(x_42);
 x_45 = lean_box(0);
}
if (lean_is_scalar(x_45)) {
 x_46 = lean_alloc_ctor(0, 2, 0);
} else {
 x_46 = x_45;
}
lean_ctor_set(x_46, 0, x_43);
lean_ctor_set(x_46, 1, x_44);
return x_46;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
lean_dec(x_33);
lean_dec(x_4);
x_47 = lean_ctor_get(x_38, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_38, 1);
lean_inc(x_48);
if (lean_is_exclusive(x_38)) {
 lean_ctor_release(x_38, 0);
 lean_ctor_release(x_38, 1);
 x_49 = x_38;
} else {
 lean_dec_ref(x_38);
 x_49 = lean_box(0);
}
if (lean_is_scalar(x_49)) {
 x_50 = lean_alloc_ctor(1, 2, 0);
} else {
 x_50 = x_49;
}
lean_ctor_set(x_50, 0, x_47);
lean_ctor_set(x_50, 1, x_48);
return x_50;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_enqueueGoals(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_enqueueGoals___rarg), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_setMaxRuleApplicationDepthReached___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_10 = lean_st_ref_take(x_3, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = !lean_is_exclusive(x_11);
if (x_13 == 0)
{
uint8_t x_14; lean_object* x_15; uint8_t x_16; 
x_14 = 1;
lean_ctor_set_uint8(x_11, sizeof(void*)*2, x_14);
x_15 = lean_st_ref_set(x_3, x_11, x_12);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_15, 0);
lean_dec(x_17);
x_18 = lean_box(0);
lean_ctor_set(x_15, 0, x_18);
return x_15;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_15, 1);
lean_inc(x_19);
lean_dec(x_15);
x_20 = lean_box(0);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_19);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_22 = lean_ctor_get(x_11, 0);
x_23 = lean_ctor_get(x_11, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_11);
x_24 = 1;
x_25 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_25, 0, x_22);
lean_ctor_set(x_25, 1, x_23);
lean_ctor_set_uint8(x_25, sizeof(void*)*2, x_24);
x_26 = lean_st_ref_set(x_3, x_25, x_12);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
if (lean_is_exclusive(x_26)) {
 lean_ctor_release(x_26, 0);
 lean_ctor_release(x_26, 1);
 x_28 = x_26;
} else {
 lean_dec_ref(x_26);
 x_28 = lean_box(0);
}
x_29 = lean_box(0);
if (lean_is_scalar(x_28)) {
 x_30 = lean_alloc_ctor(0, 2, 0);
} else {
 x_30 = x_28;
}
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_27);
return x_30;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_setMaxRuleApplicationDepthReached(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_setMaxRuleApplicationDepthReached___rarg___boxed), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_setMaxRuleApplicationDepthReached___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_setMaxRuleApplicationDepthReached___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_st_ref_get(x_1, x_7);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_ctor_get_uint8(x_10, sizeof(void*)*2);
lean_dec(x_10);
x_12 = lean_box(x_11);
lean_ctor_set(x_8, 0, x_12);
return x_8;
}
else
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; lean_object* x_17; 
x_13 = lean_ctor_get(x_8, 0);
x_14 = lean_ctor_get(x_8, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_8);
x_15 = lean_ctor_get_uint8(x_13, sizeof(void*)*2);
lean_dec(x_13);
x_16 = lean_box(x_15);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_14);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_wasMaxRuleApplicationDepthReached___rarg___boxed), 7, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_wasMaxRuleApplicationDepthReached___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_wasMaxRuleApplicationDepthReached___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_wasMaxRuleApplicationDepthReached(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Options(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_Queue_Class(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Stats_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleSet(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_TreeM(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Search_SearchM(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Options(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_Queue_Class(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Stats_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleSet(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_TreeM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedNormSimpContext___closed__1 = _init_l_Aesop_instInhabitedNormSimpContext___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__1);
l_Aesop_instInhabitedNormSimpContext___closed__2 = _init_l_Aesop_instInhabitedNormSimpContext___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__2);
l_Aesop_instInhabitedNormSimpContext___closed__3 = _init_l_Aesop_instInhabitedNormSimpContext___closed__3();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__3);
l_Aesop_instInhabitedNormSimpContext___closed__4 = _init_l_Aesop_instInhabitedNormSimpContext___closed__4();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__4);
l_Aesop_instInhabitedNormSimpContext___closed__5 = _init_l_Aesop_instInhabitedNormSimpContext___closed__5();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__5);
l_Aesop_instInhabitedNormSimpContext___closed__6 = _init_l_Aesop_instInhabitedNormSimpContext___closed__6();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__6);
l_Aesop_instInhabitedNormSimpContext___closed__7 = _init_l_Aesop_instInhabitedNormSimpContext___closed__7();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__7);
l_Aesop_instInhabitedNormSimpContext___closed__8 = _init_l_Aesop_instInhabitedNormSimpContext___closed__8();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__8);
l_Aesop_instInhabitedNormSimpContext___closed__9 = _init_l_Aesop_instInhabitedNormSimpContext___closed__9();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__9);
l_Aesop_instInhabitedNormSimpContext___closed__10 = _init_l_Aesop_instInhabitedNormSimpContext___closed__10();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext___closed__10);
l_Aesop_instInhabitedNormSimpContext = _init_l_Aesop_instInhabitedNormSimpContext();
lean_mark_persistent(l_Aesop_instInhabitedNormSimpContext);
l_Aesop_SearchM_instMonad___closed__1 = _init_l_Aesop_SearchM_instMonad___closed__1();
lean_mark_persistent(l_Aesop_SearchM_instMonad___closed__1);
l_Aesop_SearchM_instMonad___closed__2 = _init_l_Aesop_SearchM_instMonad___closed__2();
lean_mark_persistent(l_Aesop_SearchM_instMonad___closed__2);
l_Aesop_SearchM_instMonad___closed__3 = _init_l_Aesop_SearchM_instMonad___closed__3();
lean_mark_persistent(l_Aesop_SearchM_instMonad___closed__3);
l_Aesop_SearchM_instMonad___closed__4 = _init_l_Aesop_SearchM_instMonad___closed__4();
lean_mark_persistent(l_Aesop_SearchM_instMonad___closed__4);
l_Aesop_SearchM_instMonad___closed__5 = _init_l_Aesop_SearchM_instMonad___closed__5();
lean_mark_persistent(l_Aesop_SearchM_instMonad___closed__5);
l_Aesop_SearchM_instMonadRef___closed__1 = _init_l_Aesop_SearchM_instMonadRef___closed__1();
lean_mark_persistent(l_Aesop_SearchM_instMonadRef___closed__1);
l_Aesop_SearchM_instMonadRef___closed__2 = _init_l_Aesop_SearchM_instMonadRef___closed__2();
lean_mark_persistent(l_Aesop_SearchM_instMonadRef___closed__2);
l_Aesop_SearchM_instMonadRef___closed__3 = _init_l_Aesop_SearchM_instMonadRef___closed__3();
lean_mark_persistent(l_Aesop_SearchM_instMonadRef___closed__3);
l_Aesop_SearchM_instInhabited___rarg___closed__1 = _init_l_Aesop_SearchM_instInhabited___rarg___closed__1();
lean_mark_persistent(l_Aesop_SearchM_instInhabited___rarg___closed__1);
l_Aesop_SearchM_instInhabited___rarg___closed__2 = _init_l_Aesop_SearchM_instInhabited___rarg___closed__2();
lean_mark_persistent(l_Aesop_SearchM_instInhabited___rarg___closed__2);
l_Aesop_SearchM_instMonadStateState___closed__1 = _init_l_Aesop_SearchM_instMonadStateState___closed__1();
lean_mark_persistent(l_Aesop_SearchM_instMonadStateState___closed__1);
l_Aesop_SearchM_instMonadStateState___closed__2 = _init_l_Aesop_SearchM_instMonadStateState___closed__2();
lean_mark_persistent(l_Aesop_SearchM_instMonadStateState___closed__2);
l_Aesop_SearchM_instMonadStateState___closed__3 = _init_l_Aesop_SearchM_instMonadStateState___closed__3();
lean_mark_persistent(l_Aesop_SearchM_instMonadStateState___closed__3);
l_Aesop_SearchM_instMonadStateState___closed__4 = _init_l_Aesop_SearchM_instMonadStateState___closed__4();
lean_mark_persistent(l_Aesop_SearchM_instMonadStateState___closed__4);
l_Aesop_SearchM_instMonadStats___rarg___closed__1 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__1();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__1);
l_Aesop_SearchM_instMonadStats___rarg___closed__2 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__2();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__2);
l_Aesop_SearchM_instMonadStats___rarg___closed__3 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__3();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__3);
l_Aesop_SearchM_instMonadStats___rarg___closed__4 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__4();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__4);
l_Aesop_SearchM_instMonadStats___rarg___closed__5 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__5();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__5);
l_Aesop_SearchM_instMonadStats___rarg___closed__6 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__6();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__6);
l_Aesop_SearchM_instMonadStats___rarg___closed__7 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__7();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__7);
l_Aesop_SearchM_instMonadStats___rarg___closed__8 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__8();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__8);
l_Aesop_SearchM_instMonadStats___rarg___closed__9 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__9();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__9);
l_Aesop_SearchM_instMonadStats___rarg___closed__10 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__10();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__10);
l_Aesop_SearchM_instMonadStats___rarg___closed__11 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__11();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__11);
l_Aesop_SearchM_instMonadStats___rarg___closed__12 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__12();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__12);
l_Aesop_SearchM_instMonadStats___rarg___closed__13 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__13();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__13);
l_Aesop_SearchM_instMonadStats___rarg___closed__14 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__14();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__14);
l_Aesop_SearchM_instMonadStats___rarg___closed__15 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__15();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__15);
l_Aesop_SearchM_instMonadStats___rarg___closed__16 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__16();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__16);
l_Aesop_SearchM_instMonadStats___rarg___closed__17 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__17();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__17);
l_Aesop_SearchM_instMonadStats___rarg___closed__18 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__18();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__18);
l_Aesop_SearchM_instMonadStats___rarg___closed__19 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__19();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__19);
l_Aesop_SearchM_instMonadStats___rarg___closed__20 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__20();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__20);
l_Aesop_SearchM_instMonadStats___rarg___closed__21 = _init_l_Aesop_SearchM_instMonadStats___rarg___closed__21();
lean_mark_persistent(l_Aesop_SearchM_instMonadStats___rarg___closed__21);
l_Aesop_SearchM_run___rarg___closed__1 = _init_l_Aesop_SearchM_run___rarg___closed__1();
lean_mark_persistent(l_Aesop_SearchM_run___rarg___closed__1);
l_Aesop_SearchM_run___rarg___closed__2 = _init_l_Aesop_SearchM_run___rarg___closed__2();
lean_mark_persistent(l_Aesop_SearchM_run___rarg___closed__2);
l_Aesop_SearchM_run___rarg___closed__3 = _init_l_Aesop_SearchM_run___rarg___closed__3();
lean_mark_persistent(l_Aesop_SearchM_run___rarg___closed__3);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
