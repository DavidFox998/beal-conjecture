// Lean compiler output
// Module: Batteries.Control.Nondet.Basic
// Imports: Init Batteries.Tactic.Lint.Misc Batteries.Data.MLList.Basic
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
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_map___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toMLList_x27___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_nil(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_mapM___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterM___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_map___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterM___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMapM___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__30(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__11(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofListM___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_bind___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMap___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filter___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_bind___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instAlternative(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_singletonM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofListM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOption___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filter___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filter___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_singletonM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toList_x27___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toList_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filter___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__10___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__20___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_firstM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__42(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_map___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_firstM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__40(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_iterate___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_iterate(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_mapM___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toList_x27___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__22___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterM___spec__7(lean_object*, lean_object*);
static lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__1;
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_bind___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_mapM___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__20(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__10(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_iterate___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10(lean_object*, lean_object*);
lean_object* l_MLList_singletonM___rarg(lean_object*, lean_object*);
lean_object* l_List_mapTR_loop___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toMLList_x27___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_bind___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMapM___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_mapM___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__9(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instAlternative___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofList(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterMap___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__14(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__10___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filter___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_head___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_singletonM___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toList_x27___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMap___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instAlternative___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instAlternative___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_singletonM___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instAlternative___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toMLList_x27___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM___at_Nondet_filter___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonadLift(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofList___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_map(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toList___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterM___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__14___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toList_x27___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_bind___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__16(lean_object*, lean_object*);
lean_object* l_Function_const___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_mapM___at_Nondet_map___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__18(lean_object*, lean_object*);
static lean_object* l_instMonadBacktrackUnitId__batteries___closed__1;
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instAlternative___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_mapM___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instAlternative___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMapM___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadBacktrackUnitId__batteries___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__9(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_mapM___at_Nondet_map___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toMLList_x27___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filter(lean_object*, lean_object*);
static lean_object* l_instMonadBacktrackUnitId__batteries___closed__2;
LEAN_EXPORT lean_object* l_Nondet_head___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__32(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMap___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_mapM___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_MLList_ofListM___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instInhabited(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filter___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterM___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__16___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toList(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__26___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterM___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_map___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_map___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__28___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_nil___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toMLList_x27___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__12(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__10(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM___at_Nondet_filter___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filter___spec__8___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_thunk(lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__38(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toList_x27___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_bind___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toList___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_head___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toList_x27___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__40___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_map___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__32___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__26(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_iterate___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg___lambda__1(lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_bind___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__22(lean_object*, lean_object*);
lean_object* l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__8(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_toList_x27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_map___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Nondet_toMLList_x27___rarg___closed__1;
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_head___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toMLList_x27___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filter___spec__8(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__36(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMap___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_singleton___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterM___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_mapM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_head(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMap(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadBacktrackUnitId__batteries;
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__8(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__34(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__24(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMapM___spec__2(lean_object*, lean_object*);
lean_object* l_List_reverse___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_mapM___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMapM___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterM___spec__7___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_iterate___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21(lean_object*, lean_object*);
lean_object* l_Function_comp___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__38___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadBacktrackUnitId__batteries___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filter___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_MLList_force___rarg(lean_object*, lean_object*);
static lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__2;
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonadLift___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_map___spec__7___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterM___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instInhabited___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__34___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOption(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMap___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_iterate___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_MLList_head___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_mapM___spec__2(lean_object*, lean_object*);
static lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3;
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterMap___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofOptionM___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_map___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filter___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_mapM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofOptionM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toList_x27___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_iterate___spec__6(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_filterMapM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_singleton(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__28(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMap___spec__7(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nondet_nil(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_box(0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_nil___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_nil(x_1, x_2, x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_instInhabited(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_box(0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_instInhabited___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_instInhabited(x_1, x_2, x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_apply_2(x_4, lean_box(0), x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_box(0);
x_6 = lean_apply_1(x_2, x_5);
x_7 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__1), 2, 1);
lean_closure_set(x_7, 0, x_1);
x_8 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nondet_squash___rarg___lambda__2(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_bind___spec__2___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_bind___spec__2___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_bind___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_bind___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_bind___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_bind___spec__2___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_bind___spec__3___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_bind___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_bind___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_bind___spec__2___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_bind___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_bind___spec__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_bind___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_bind___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_bind___spec__5___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_bind___spec__2___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_bind___spec__2___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__2), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__3___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__4), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__5___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_bind___spec__5___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_bind___spec__4___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_bind___spec__2___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_bind___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_bind___spec__5___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nondet_bind___rarg___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___rarg___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___rarg___lambda__5(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_singletonM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set(x_6, 1, x_3);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_singletonM___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_alloc_closure((void*)(l_Nondet_singletonM___rarg___lambda__1), 3, 2);
lean_closure_set(x_6, 0, x_2);
lean_closure_set(x_6, 1, x_4);
x_7 = lean_apply_4(x_3, lean_box(0), lean_box(0), x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_singletonM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_inc(x_5);
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Nondet_singletonM___rarg___lambda__2), 4, 3);
lean_closure_set(x_6, 0, x_2);
lean_closure_set(x_6, 1, x_1);
lean_closure_set(x_6, 2, x_5);
x_7 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_4, x_6);
x_8 = l_MLList_singletonM___rarg(x_1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_singletonM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_singletonM___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_singleton___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_6, lean_box(0), x_4);
x_8 = l_Nondet_singletonM___rarg(x_1, x_2, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_singleton(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_singleton___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__4___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__10___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__10(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__10___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__10___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__9___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__8(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__8___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__12(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__16___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__16(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__16___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__16___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__15___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__14___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__14(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__14___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__18(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__22___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__22(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__22___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__22___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__21___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__20___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__20(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__20___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__24(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__28___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__28(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__28___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__28___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__27___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__26___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__26(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__26___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__30(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__34___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__34(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__34___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__34___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__33___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__32___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__32(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__32___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__36(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__40___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instMonad___spec__40(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instMonad___spec__40___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instMonad___spec__40___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instMonad___spec__39___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__38___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instMonad___spec__38(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instMonad___spec__38___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__42(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_3);
x_7 = l_Nondet_singletonM___rarg(x_1, x_2, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__1), 3, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
x_8 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_8, 0, x_7);
lean_closure_set(x_8, 1, x_5);
x_9 = l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_alloc_closure((void*)(l_Function_const___rarg___boxed), 2, 1);
lean_closure_set(x_7, 0, x_5);
lean_inc(x_2);
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__1), 3, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
x_9 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_9, 0, x_8);
lean_closure_set(x_9, 1, x_7);
x_10 = l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_6, lean_box(0), x_4);
x_8 = l_Nondet_singletonM___rarg(x_1, x_2, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_box(0);
x_6 = lean_apply_1(x_1, x_5);
lean_inc(x_3);
lean_inc(x_2);
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__1), 3, 2);
lean_closure_set(x_7, 0, x_2);
lean_closure_set(x_7, 1, x_3);
x_8 = lean_alloc_closure((void*)(l_Function_comp___rarg), 3, 2);
lean_closure_set(x_8, 0, x_7);
lean_closure_set(x_8, 1, x_4);
x_9 = l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg(x_2, x_3, lean_box(0), lean_box(0), x_6, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__5), 4, 3);
lean_closure_set(x_7, 0, x_6);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg(x_1, x_2, lean_box(0), lean_box(0), x_5, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_6, lean_box(0), x_2);
x_8 = l_Nondet_singletonM___rarg(x_1, x_3, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_box(0);
x_6 = lean_apply_1(x_1, x_5);
lean_inc(x_3);
lean_inc(x_2);
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__7___boxed), 4, 3);
lean_closure_set(x_7, 0, x_2);
lean_closure_set(x_7, 1, x_4);
lean_closure_set(x_7, 2, x_3);
x_8 = l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg(x_2, x_3, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__8), 4, 3);
lean_closure_set(x_7, 0, x_6);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg(x_1, x_2, lean_box(0), lean_box(0), x_5, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__10(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = lean_apply_1(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__11(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__10___boxed), 2, 1);
lean_closure_set(x_7, 0, x_6);
x_8 = l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg(x_1, x_2, lean_box(0), lean_box(0), x_5, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__2), 6, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
lean_inc(x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__3), 6, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
lean_inc(x_2);
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__4), 4, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__6), 6, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
lean_inc(x_2);
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__9), 6, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_inc(x_2);
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__11), 6, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
x_10 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_10, 0, x_5);
lean_ctor_set(x_10, 1, x_6);
lean_ctor_set(x_10, 2, x_7);
lean_ctor_set(x_10, 3, x_8);
lean_ctor_set(x_10, 4, x_9);
x_11 = lean_alloc_closure((void*)(l_Nondet_bind___rarg), 6, 2);
lean_closure_set(x_11, 0, x_1);
lean_closure_set(x_11, 1, x_2);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__3___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__6___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__1___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__11___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__9___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__12___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__7___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__17___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__15___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__18___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__13___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__23___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__21___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__24___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__19___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__29___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__27___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__30___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__25___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__35___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__33___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__36___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__31___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instMonad___spec__41___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instMonad___spec__39___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_instMonad___spec__42___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_instMonad___spec__37___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_instMonad___rarg___lambda__7(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonad___rarg___lambda__10___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nondet_instMonad___rarg___lambda__10(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instAlternative___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_instAlternative___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_instAlternative___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_instAlternative___spec__3___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instAlternative___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_instAlternative___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_instAlternative___spec__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_instAlternative___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_instMonad___rarg___lambda__10___boxed), 2, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg(x_1, lean_box(0), x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_instAlternative___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = l_Nondet_instMonad___rarg(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_alloc_closure((void*)(l_Nondet_nil___boxed), 4, 3);
lean_closure_set(x_5, 0, lean_box(0));
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_2);
x_6 = lean_alloc_closure((void*)(l_Nondet_instAlternative___rarg___lambda__1), 4, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_5);
lean_ctor_set(x_7, 2, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_instAlternative(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_instAlternative___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_instAlternative___spec__4___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_instAlternative___spec__2___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonadLift___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_singletonM___rarg), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_instMonadLift(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_instMonadLift___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
x_5 = lean_apply_2(x_2, lean_box(0), x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_4);
lean_closure_set(x_5, 1, x_1);
x_6 = lean_apply_4(x_2, lean_box(0), lean_box(0), x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
lean_inc(x_2);
x_6 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__2), 4, 3);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
lean_closure_set(x_6, 2, x_3);
x_7 = lean_apply_4(x_2, lean_box(0), lean_box(0), x_4, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_9; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_9 = l_List_reverse___rarg(x_8);
return x_9;
}
else
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_7);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_7, 0);
x_12 = lean_ctor_get(x_7, 1);
x_13 = lean_ctor_get(x_1, 1);
lean_inc(x_13);
lean_inc(x_5);
x_14 = lean_apply_1(x_13, x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_6);
x_15 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3___boxed), 5, 4);
lean_closure_set(x_15, 0, x_6);
lean_closure_set(x_15, 1, x_3);
lean_closure_set(x_15, 2, x_4);
lean_closure_set(x_15, 3, x_11);
lean_inc(x_3);
x_16 = lean_apply_4(x_3, lean_box(0), lean_box(0), x_14, x_15);
lean_ctor_set(x_7, 1, x_8);
lean_ctor_set(x_7, 0, x_16);
{
lean_object* _tmp_1 = lean_box(0);
lean_object* _tmp_6 = x_12;
lean_object* _tmp_7 = x_7;
x_2 = _tmp_1;
x_7 = _tmp_6;
x_8 = _tmp_7;
}
goto _start;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_18 = lean_ctor_get(x_7, 0);
x_19 = lean_ctor_get(x_7, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_7);
x_20 = lean_ctor_get(x_1, 1);
lean_inc(x_20);
lean_inc(x_5);
x_21 = lean_apply_1(x_20, x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_6);
x_22 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3___boxed), 5, 4);
lean_closure_set(x_22, 0, x_6);
lean_closure_set(x_22, 1, x_3);
lean_closure_set(x_22, 2, x_4);
lean_closure_set(x_22, 3, x_18);
lean_inc(x_3);
x_23 = lean_apply_4(x_3, lean_box(0), lean_box(0), x_21, x_22);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_23);
lean_ctor_set(x_24, 1, x_8);
x_2 = lean_box(0);
x_7 = x_19;
x_8 = x_24;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg), 8, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofListM___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_7, 1);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_box(0);
lean_inc(x_8);
x_10 = l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg(x_2, lean_box(0), x_3, x_4, x_6, x_8, x_5, x_9);
x_11 = l_MLList_ofListM___rarg(x_1, x_10);
x_12 = lean_apply_2(x_8, lean_box(0), x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
lean_inc(x_6);
lean_inc(x_5);
x_7 = lean_alloc_closure((void*)(l_Nondet_ofListM___rarg___lambda__1), 6, 5);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
lean_closure_set(x_7, 2, x_5);
lean_closure_set(x_7, 3, x_6);
lean_closure_set(x_7, 4, x_3);
x_8 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_2);
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_Nondet_ofListM___rarg___lambda__2___boxed), 4, 3);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_2);
lean_closure_set(x_5, 2, x_4);
x_6 = l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg(x_1, x_2, lean_box(0), x_5);
lean_dec(x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofListM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_ofListM___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_List_mapTR_loop___at_Nondet_ofListM___spec__1___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_ofListM___spec__2___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofListM___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_ofListM___rarg___lambda__2(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofList___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_1(x_6, lean_box(0));
x_8 = lean_box(0);
x_9 = l_List_mapTR_loop___rarg(x_7, x_4, x_8);
x_10 = l_Nondet_ofListM___rarg(x_1, x_2, lean_box(0), x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofList(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_ofList___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_mapM___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_mapM___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_mapM___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_mapM___spec__4___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_mapM___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_mapM___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_mapM___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_mapM___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_mapM___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_mapM___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_mapM___spec__6___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_mapM___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_mapM___spec__6___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_mapM___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_mapM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_apply_1(x_1, x_4);
x_6 = l_Nondet_singletonM___rarg(x_2, x_3, lean_box(0), x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_mapM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_mapM___rarg___lambda__1), 4, 3);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_mapM___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_mapM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_mapM___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_mapM___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_mapM___spec__3___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_mapM___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_mapM___spec__6___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_mapM___spec__1___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_map___spec__4___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_map___spec__4___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_map___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_map___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_map___spec__5___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_map___spec__4___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_map___spec__5___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_map___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_map___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_map___spec__4___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_map___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_map___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_map___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_map___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_map___spec__7___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_map___spec__4___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_map___spec__4___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_map___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_map___spec__7___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_map___spec__2___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_mapM___at_Nondet_map___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_mapM___rarg___lambda__1), 4, 3);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_map___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_mapM___at_Nondet_map___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_mapM___at_Nondet_map___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_map___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_1(x_2, x_3);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_map___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_map___rarg___lambda__1), 3, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
x_8 = l_Nondet_mapM___at_Nondet_map___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_7, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_map(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_map___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_map___spec__6___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_map___spec__4___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_map___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_map___spec__7___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_map___spec__2___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofOptionM___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_3, 0);
lean_inc(x_8);
lean_dec(x_3);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_9, 1);
lean_inc(x_10);
lean_dec(x_9);
x_11 = l_Nondet_singleton___rarg(x_1, x_2, lean_box(0), x_8);
x_12 = lean_apply_2(x_10, lean_box(0), x_11);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
x_6 = lean_alloc_closure((void*)(l_Nondet_ofOptionM___rarg___lambda__1), 3, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
x_7 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_3, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_2);
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_Nondet_ofOptionM___rarg___lambda__2___boxed), 4, 3);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_2);
lean_closure_set(x_5, 2, x_4);
x_6 = l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg(x_1, x_2, lean_box(0), x_5);
lean_dec(x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOptionM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_ofOptionM___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_ofOptionM___spec__1___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOptionM___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_ofOptionM___rarg___lambda__2(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOption___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_6, lean_box(0), x_4);
x_8 = l_Nondet_ofOptionM___rarg(x_1, x_2, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_ofOption(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_ofOption___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMapM___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMapM___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_filterMapM___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_filterMapM___spec__4___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMapM___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMapM___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_filterMapM___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMapM___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_apply_1(x_1, x_4);
x_6 = l_Nondet_ofOptionM___rarg(x_2, x_3, lean_box(0), x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_filterMapM___rarg___lambda__1), 4, 3);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterMapM___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_filterMapM___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_filterMapM___spec__3___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_filterMapM___spec__6___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_filterMapM___spec__1___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMap___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterMap___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_filterMap___spec__5___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_filterMap___spec__5___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterMap___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMap___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterMap___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_filterMap___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMap___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterMap___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_filterMapM___rarg___lambda__1), 4, 3);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterMap___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterMapM___at_Nondet_filterMap___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMap___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_map___rarg___lambda__1), 3, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
x_8 = l_Nondet_filterMapM___at_Nondet_filterMap___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_7, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMap(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterMap___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_filterMap___spec__6___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_filterMap___spec__4___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_filterMap___spec__7___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_filterMap___spec__2___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterM___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filterM___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_filterM___spec__5___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_filterM___spec__5___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filterM___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterM___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filterM___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_filterM___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterM___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterM___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_filterM___spec__7___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_filterM___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_filterM___spec__7___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filterM___spec__2___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterM___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_filterMapM___rarg___lambda__1), 4, 3);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_filterM___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filterM___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterMapM___at_Nondet_filterM___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, uint8_t x_3) {
_start:
{
if (x_3 == 0)
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
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_2);
x_11 = lean_apply_2(x_9, lean_box(0), x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
x_5 = lean_apply_1(x_2, x_3);
x_6 = lean_alloc_closure((void*)(l_Nondet_filterM___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_3);
x_7 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Nondet_filterM___rarg___lambda__2), 3, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_4);
x_7 = l_Nondet_filterMapM___at_Nondet_filterM___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterM___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_filterM___spec__6___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_filterM___spec__4___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filterM___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_filterM___spec__7___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_filterM___spec__2___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = lean_unbox(x_3);
lean_dec(x_3);
x_5 = l_Nondet_filterM___rarg___lambda__1(x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_filter___spec__5___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_filter___spec__5___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filter___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_filter___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_filter___spec__6___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_filter___spec__5___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_filter___spec__6___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_filter___spec__5___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filter___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_filter___spec__5___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_filter___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_filter___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filter___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filter___spec__8(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_filter___spec__8___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_filter___spec__5___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_filter___spec__5___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_filter___spec__3___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_filter___spec__8___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_filter___spec__3___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filter___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_filterMapM___rarg___lambda__1), 4, 3);
lean_closure_set(x_7, 0, x_5);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_2);
x_8 = l_Nondet_bind___at_Nondet_filter___spec__3___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterMapM___at_Nondet_filter___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterMapM___at_Nondet_filter___spec__2___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM___at_Nondet_filter___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Nondet_filterM___rarg___lambda__2), 3, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_4);
x_7 = l_Nondet_filterMapM___at_Nondet_filter___spec__2___rarg(x_1, x_2, lean_box(0), lean_box(0), x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_filterM___at_Nondet_filter___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filterM___at_Nondet_filter___spec__1___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_filter___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; lean_object* x_8; lean_object* x_9; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_1(x_2, x_3);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
x_8 = lean_box(x_7);
x_9 = lean_apply_2(x_5, lean_box(0), x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_filter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Nondet_filter___rarg___lambda__1), 3, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_4);
x_7 = l_Nondet_filterM___at_Nondet_filter___spec__1___rarg(x_1, x_2, lean_box(0), x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_filter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_filter___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_filter___spec__7___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_filter___spec__5___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_filter___spec__8___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_filter___spec__8___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_filter___spec__3___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_iterate___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_iterate___spec__4___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_iterate___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_iterate___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Nondet_squash___rarg___lambda__2___boxed), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_iterate___spec__6(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_squash___at_Nondet_iterate___spec__6___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_7, 1);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg(x_1, lean_box(0), x_12, x_9);
lean_ctor_set_tag(x_7, 1);
lean_ctor_set(x_7, 1, x_13);
x_14 = lean_apply_2(x_11, lean_box(0), x_7);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_7, 0);
x_16 = lean_ctor_get(x_7, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_7);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_alloc_closure((void*)(l_Nondet_bind___rarg___lambda__1___boxed), 2, 1);
lean_closure_set(x_19, 0, x_2);
x_20 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg(x_1, lean_box(0), x_19, x_16);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_18, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_apply_1(x_1, x_2);
lean_inc(x_3);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_3, x_7);
x_9 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_3);
lean_closure_set(x_9, 1, x_4);
x_10 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_box(0);
x_9 = lean_apply_2(x_7, lean_box(0), x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_5, 0);
lean_inc(x_10);
lean_dec(x_5);
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
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Nondet_bind___at_Nondet_iterate___spec__1___rarg(x_1, x_2, lean_box(0), lean_box(0), x_12, x_3);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_apply_1(x_16, x_14);
lean_inc(x_4);
x_18 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_18, 0, x_3);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_15);
lean_closure_set(x_18, 4, x_4);
x_19 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_17, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_1);
x_7 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_1, x_2);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__3), 5, 4);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_closure_set(x_8, 2, x_4);
lean_closure_set(x_8, 3, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_2);
lean_closure_set(x_7, 3, x_6);
x_8 = l_Nondet_squash___at_Nondet_iterate___spec__6___rarg(x_1, x_2, lean_box(0), x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_bind___at_Nondet_iterate___spec__1___rarg), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
x_8 = lean_apply_2(x_5, lean_box(0), x_7);
return x_8;
}
else
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_inc(x_9);
lean_dec(x_3);
x_10 = !lean_is_exclusive(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_9, 1);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = l_MLList_cases___at_Nondet_iterate___spec__8___rarg(x_1, lean_box(0), x_2, x_11);
lean_ctor_set_tag(x_9, 1);
lean_ctor_set(x_9, 1, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_9);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_9, 0);
x_17 = lean_ctor_get(x_9, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_9);
x_18 = lean_ctor_get(x_1, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec(x_18);
x_20 = l_MLList_cases___at_Nondet_iterate___spec__8___rarg(x_1, lean_box(0), x_2, x_17);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_16);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_apply_2(x_19, lean_box(0), x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__9___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_iterate___spec__9(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_iterate___spec__9___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_MLList_cases___at_Nondet_iterate___spec__8___rarg(x_1, lean_box(0), x_3, x_2);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_iterate___spec__9___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
uint8_t x_7; 
lean_dec(x_4);
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 0);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
lean_dec(x_1);
x_9 = lean_mk_thunk(x_3);
lean_ctor_set_tag(x_5, 2);
lean_ctor_set(x_5, 0, x_9);
return x_5;
}
else
{
uint8_t x_10; 
lean_free_object(x_5);
x_10 = !lean_is_exclusive(x_8);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_13);
lean_closure_set(x_14, 2, x_3);
lean_closure_set(x_14, 3, x_12);
x_15 = lean_mk_thunk(x_14);
lean_ctor_set_tag(x_8, 2);
lean_ctor_set(x_8, 0, x_15);
return x_8;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_8, 0);
lean_inc(x_16);
lean_dec(x_8);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_19, 0, x_1);
lean_closure_set(x_19, 1, x_18);
lean_closure_set(x_19, 2, x_3);
lean_closure_set(x_19, 3, x_17);
x_20 = lean_mk_thunk(x_19);
x_21 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_21, 0, x_20);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = lean_ctor_get(x_5, 0);
lean_inc(x_22);
lean_dec(x_5);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; 
lean_dec(x_1);
x_23 = lean_mk_thunk(x_3);
x_24 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_24, 0, x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_25 = lean_ctor_get(x_22, 0);
lean_inc(x_25);
if (lean_is_exclusive(x_22)) {
 lean_ctor_release(x_22, 0);
 x_26 = x_22;
} else {
 lean_dec_ref(x_22);
 x_26 = lean_box(0);
}
x_27 = lean_ctor_get(x_25, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_25, 1);
lean_inc(x_28);
lean_dec(x_25);
x_29 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_29, 0, x_1);
lean_closure_set(x_29, 1, x_28);
lean_closure_set(x_29, 2, x_3);
lean_closure_set(x_29, 3, x_27);
x_30 = lean_mk_thunk(x_29);
if (lean_is_scalar(x_26)) {
 x_31 = lean_alloc_ctor(2, 1, 0);
} else {
 x_31 = x_26;
 lean_ctor_set_tag(x_31, 2);
}
lean_ctor_set(x_31, 0, x_30);
return x_31;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_iterate___spec__8___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__7___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_iterate___spec__8___rarg(x_1, lean_box(0), x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_append___at_Nondet_iterate___spec__7(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_append___at_Nondet_iterate___spec__7___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_iterate___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_1);
x_6 = lean_apply_1(x_1, x_2);
lean_inc(x_4);
lean_inc(x_3);
x_7 = lean_alloc_closure((void*)(l_Nondet_iterate___rarg), 5, 4);
lean_closure_set(x_7, 0, x_3);
lean_closure_set(x_7, 1, x_4);
lean_closure_set(x_7, 2, lean_box(0));
lean_closure_set(x_7, 3, x_1);
x_8 = l_Nondet_bind___at_Nondet_iterate___spec__1___rarg(x_3, x_4, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_iterate___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_5);
lean_inc(x_2);
lean_inc(x_1);
x_6 = l_Nondet_singleton___rarg(x_1, x_2, lean_box(0), x_5);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nondet_iterate___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_7, 0, x_4);
lean_closure_set(x_7, 1, x_5);
lean_closure_set(x_7, 2, x_1);
lean_closure_set(x_7, 3, x_2);
x_8 = l_MLList_cases___at_Nondet_iterate___spec__8___rarg(x_1, lean_box(0), x_7, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Nondet_iterate(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_iterate___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_iterate___spec__3___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_squash___at_Nondet_iterate___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_squash___at_Nondet_iterate___spec__6___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_bind___at_Nondet_iterate___spec__1___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_iterate___spec__10___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_iterate___spec__8___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_iterate___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Nondet_iterate___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_head___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_apply_2(x_5, lean_box(0), x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_head___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_apply_1(x_7, x_6);
x_9 = lean_alloc_closure((void*)(l_Nondet_head___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_5);
x_10 = lean_apply_4(x_3, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nondet_head___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_4);
x_7 = l_MLList_head___rarg(x_1, x_4, x_5);
lean_inc(x_6);
x_8 = lean_alloc_closure((void*)(l_Nondet_head___rarg___lambda__2), 4, 3);
lean_closure_set(x_8, 0, x_2);
lean_closure_set(x_8, 1, x_4);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_head(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_head___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_head___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nondet_head___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nondet_firstM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
lean_inc(x_2);
lean_inc(x_1);
x_8 = l_Nondet_filterMapM___rarg(x_1, x_2, lean_box(0), lean_box(0), x_7, x_6);
x_9 = l_Nondet_head___rarg(x_1, x_2, lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nondet_firstM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_firstM___rarg), 7, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg(x_1, lean_box(0), x_2, x_3);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
x_8 = lean_apply_2(x_4, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_inc(x_2);
x_8 = lean_apply_1(x_2, x_3);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__1), 5, 4);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
lean_closure_set(x_9, 2, x_4);
lean_closure_set(x_9, 3, x_5);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
lean_inc(x_13);
x_14 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_2);
lean_closure_set(x_14, 2, x_10);
lean_closure_set(x_14, 3, x_11);
lean_closure_set(x_14, 4, x_13);
lean_ctor_set_tag(x_3, 3);
lean_ctor_set(x_3, 0, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_3);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_16 = lean_ctor_get(x_3, 0);
lean_inc(x_16);
lean_dec(x_3);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_ctor_get(x_1, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
lean_dec(x_19);
lean_inc(x_20);
x_21 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_21, 0, x_1);
lean_closure_set(x_21, 1, x_2);
lean_closure_set(x_21, 2, x_17);
lean_closure_set(x_21, 3, x_18);
lean_closure_set(x_21, 4, x_20);
x_22 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_22, 0, x_21);
x_23 = lean_apply_2(x_20, lean_box(0), x_22);
return x_23;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__3), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toMLList_x27___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toMLList_x27___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_toMLList_x27___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg(x_1, lean_box(0), x_2, x_3);
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_7);
x_9 = lean_apply_2(x_6, lean_box(0), x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_2);
x_7 = lean_apply_1(x_2, x_3);
x_8 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__2), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_4);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__3___boxed), 5, 4);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
lean_closure_set(x_6, 2, x_3);
lean_closure_set(x_6, 3, x_4);
x_7 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
static lean_object* _init_l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__1;
x_2 = lean_mk_thunk(x_1);
return x_2;
}
}
static lean_object* _init_l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__2;
x_2 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_toMLList_x27___spec__4___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
lean_object* x_7; 
lean_dec(x_4);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; 
lean_dec(x_3);
lean_dec(x_1);
x_8 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3;
return x_8;
}
else
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 0);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_3);
lean_closure_set(x_13, 2, x_11);
lean_closure_set(x_13, 3, x_12);
x_14 = lean_mk_thunk(x_13);
lean_ctor_set_tag(x_7, 2);
lean_ctor_set(x_7, 0, x_14);
return x_7;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_7, 0);
lean_inc(x_15);
lean_dec(x_7);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_18, 0, x_1);
lean_closure_set(x_18, 1, x_3);
lean_closure_set(x_18, 2, x_16);
lean_closure_set(x_18, 3, x_17);
x_19 = lean_mk_thunk(x_18);
x_20 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_20, 0, x_19);
return x_20;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toMLList_x27___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg(x_1, lean_box(0), x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toMLList_x27___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_mapM___at_Nondet_toMLList_x27___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toMLList_x27___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_Nondet_map___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_3);
x_6 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg(x_1, lean_box(0), x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toMLList_x27___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_map___at_Nondet_toMLList_x27___spec__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Nondet_toMLList_x27___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Nondet_toMLList_x27___rarg___lambda__1___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Nondet_toMLList_x27___rarg___closed__1;
x_6 = l_MLList_map___at_Nondet_toMLList_x27___spec__1___rarg(x_1, lean_box(0), x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_toMLList_x27___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_toMLList_x27___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___lambda__4(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Nondet_toMLList_x27___rarg___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nondet_toMLList_x27___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_toMLList_x27___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_toList___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_force___rarg(x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nondet_toList(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_toList___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_toList___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_toList___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg(x_1, lean_box(0), x_2, x_3);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
x_8 = lean_apply_2(x_4, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_inc(x_2);
x_8 = lean_apply_1(x_2, x_3);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__1), 5, 4);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
lean_closure_set(x_9, 2, x_4);
lean_closure_set(x_9, 3, x_5);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
lean_inc(x_13);
x_14 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_14, 0, x_1);
lean_closure_set(x_14, 1, x_2);
lean_closure_set(x_14, 2, x_10);
lean_closure_set(x_14, 3, x_11);
lean_closure_set(x_14, 4, x_13);
lean_ctor_set_tag(x_3, 3);
lean_ctor_set(x_3, 0, x_14);
x_15 = lean_apply_2(x_13, lean_box(0), x_3);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_16 = lean_ctor_get(x_3, 0);
lean_inc(x_16);
lean_dec(x_3);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = lean_ctor_get(x_1, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_19, 1);
lean_inc(x_20);
lean_dec(x_19);
lean_inc(x_20);
x_21 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2___boxed), 6, 5);
lean_closure_set(x_21, 0, x_1);
lean_closure_set(x_21, 1, x_2);
lean_closure_set(x_21, 2, x_17);
lean_closure_set(x_21, 3, x_18);
lean_closure_set(x_21, 4, x_20);
x_22 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_22, 0, x_21);
x_23 = lean_apply_2(x_20, lean_box(0), x_22);
return x_23;
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_4, 1);
lean_inc(x_7);
x_8 = l___private_Batteries_Data_MLList_Basic_0__MLList_unconsImpl___rarg(x_4, x_5);
x_9 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__3), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___boxed), 6, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toList_x27___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___boxed), 6, 5);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, lean_box(0));
lean_closure_set(x_5, 2, x_3);
lean_closure_set(x_5, 3, x_1);
lean_closure_set(x_5, 4, x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___at_Nondet_toList_x27___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_casesM___at_Nondet_toList_x27___spec__4___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg(x_1, lean_box(0), x_2, x_3);
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_7);
x_9 = lean_apply_2(x_6, lean_box(0), x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_2);
x_7 = lean_apply_1(x_2, x_3);
x_8 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__1), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_4);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__2___boxed), 5, 4);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
lean_closure_set(x_6, 2, x_3);
lean_closure_set(x_6, 3, x_4);
x_7 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_7, 0, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_4);
x_5 = l___private_Batteries_Data_MLList_Basic_0__MLList_uncons_x3fImpl___rarg(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = l_MLList_casesM___at_Nondet_toList_x27___spec__4___rarg(x_1, lean_box(0), x_3, x_4);
return x_6;
}
else
{
lean_object* x_7; 
lean_dec(x_4);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; 
lean_dec(x_3);
lean_dec(x_1);
x_8 = l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3;
return x_8;
}
else
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_7, 0);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3___boxed), 5, 4);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_3);
lean_closure_set(x_13, 2, x_11);
lean_closure_set(x_13, 3, x_12);
x_14 = lean_mk_thunk(x_13);
lean_ctor_set_tag(x_7, 2);
lean_ctor_set(x_7, 0, x_14);
return x_7;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_7, 0);
lean_inc(x_15);
lean_dec(x_7);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3___boxed), 5, 4);
lean_closure_set(x_18, 0, x_1);
lean_closure_set(x_18, 1, x_3);
lean_closure_set(x_18, 2, x_16);
lean_closure_set(x_18, 3, x_17);
x_19 = lean_mk_thunk(x_18);
x_20 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_20, 0, x_19);
return x_20;
}
}
}
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toList_x27___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg(x_1, lean_box(0), x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MLList_mapM___at_Nondet_toList_x27___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_mapM___at_Nondet_toList_x27___spec__2___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toList_x27___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_Nondet_map___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_3);
x_6 = l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg(x_1, lean_box(0), x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_map___at_Nondet_toList_x27___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_MLList_map___at_Nondet_toList_x27___spec__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nondet_toList_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = l_Nondet_toMLList_x27___rarg___closed__1;
lean_inc(x_1);
x_6 = l_MLList_map___at_Nondet_toList_x27___spec__1___rarg(x_1, lean_box(0), x_5, x_4);
x_7 = l_MLList_force___rarg(x_1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nondet_toList_x27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Nondet_toList_x27___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_MLList_casesM___elambda__1___at_Nondet_toList_x27___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__2(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_MLList_cases___at_Nondet_toList_x27___spec__3___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nondet_toList_x27___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nondet_toList_x27___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_instMonadBacktrackUnitId__batteries___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
static lean_object* _init_l_instMonadBacktrackUnitId__batteries___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instMonadBacktrackUnitId__batteries___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_instMonadBacktrackUnitId__batteries___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_instMonadBacktrackUnitId__batteries___closed__1;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_instMonadBacktrackUnitId__batteries() {
_start:
{
lean_object* x_1; 
x_1 = l_instMonadBacktrackUnitId__batteries___closed__2;
return x_1;
}
}
LEAN_EXPORT lean_object* l_instMonadBacktrackUnitId__batteries___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_instMonadBacktrackUnitId__batteries___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Lint_Misc(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Data_MLList_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Control_Nondet_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Lint_Misc(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Data_MLList_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__1 = _init_l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__1();
lean_mark_persistent(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__1);
l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__2 = _init_l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__2();
lean_mark_persistent(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__2);
l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3 = _init_l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3();
lean_mark_persistent(l_MLList_cases___at_Nondet_toMLList_x27___spec__3___rarg___closed__3);
l_Nondet_toMLList_x27___rarg___closed__1 = _init_l_Nondet_toMLList_x27___rarg___closed__1();
lean_mark_persistent(l_Nondet_toMLList_x27___rarg___closed__1);
l_instMonadBacktrackUnitId__batteries___closed__1 = _init_l_instMonadBacktrackUnitId__batteries___closed__1();
lean_mark_persistent(l_instMonadBacktrackUnitId__batteries___closed__1);
l_instMonadBacktrackUnitId__batteries___closed__2 = _init_l_instMonadBacktrackUnitId__batteries___closed__2();
lean_mark_persistent(l_instMonadBacktrackUnitId__batteries___closed__2);
l_instMonadBacktrackUnitId__batteries = _init_l_instMonadBacktrackUnitId__batteries();
lean_mark_persistent(l_instMonadBacktrackUnitId__batteries);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
