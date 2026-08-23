// Lean compiler output
// Module: Mathlib.Control.Monad.Writer
// Imports: Init Mathlib.Algebra.Group.Defs Mathlib.Logic.Equiv.Defs
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
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_monadWriterAdapterTrans(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__12(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfEmptyCollectionOfAppend___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfEmptyCollection(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_runThe(lean_object*, lean_object*, lean_object*);
static lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1;
LEAN_EXPORT lean_object* l_WriterT_mk___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__10(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__13(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterAdapterWriterTOfMonad(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_runThe___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfEmptyCollectionOfAppend(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__7(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_monadWriterAdapterTrans___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_adapt___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__15(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__10(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Prod_map___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept___rarg(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_liftTell(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_equiv___rarg(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_liftTell___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg(lean_object*, lean_object*);
static lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__3(lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterAdapterWriterTOfMonad___rarg(lean_object*);
static lean_object* l_WriterT_instMonadWriter___rarg___lambda__5___closed__1;
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_monadWriterAdapterTrans___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__14(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_mk___rarg(lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadFunctor___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__11(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_runThe___rarg(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfMonoid___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_run___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_liftTell___rarg___lambda__1(lean_object*, lean_object*);
static lean_object* l_WriterT_adapt___rarg___closed__1;
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Equiv_symm___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg(lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterReaderT(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__9(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_mk(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_run___rarg(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__1___boxed(lean_object*, lean_object*);
lean_object* l_id___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__2___rarg(lean_object*, lean_object*);
lean_object* l_Monoid_toMulOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfEmptyCollection___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__9(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_run(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_equiv(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_adapt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__4(lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__5(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfMonoid___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_instMonadFunctor(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__6(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_WriterT_instMonadWriter___rarg___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_1(x_4, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 2);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_instMonadWriterReaderT___rarg___lambda__1___boxed), 3, 1);
lean_closure_set(x_2, 0, x_1);
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_instMonadWriterReaderT___rarg___lambda__2), 4, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_closure((void*)(l_instMonadWriterReaderT___rarg___lambda__3), 4, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterReaderT(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_instMonadWriterReaderT___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterReaderT___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_instMonadWriterReaderT___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
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
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_2);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_1(x_5, x_3);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_instMonadWriterStateTOfMonad___rarg___lambda__1), 3, 2);
lean_closure_set(x_8, 0, x_2);
lean_closure_set(x_8, 1, x_4);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_6, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__3(lean_object* x_1) {
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
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_3, 1, x_5);
lean_ctor_set(x_1, 1, x_6);
return x_1;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_1, 1);
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_3);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set(x_10, 1, x_7);
lean_ctor_set(x_1, 1, x_9);
lean_ctor_set(x_1, 0, x_10);
return x_1;
}
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_11 = lean_ctor_get(x_1, 0);
x_12 = lean_ctor_get(x_1, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_1);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_14);
if (lean_is_exclusive(x_11)) {
 lean_ctor_release(x_11, 0);
 lean_ctor_release(x_11, 1);
 x_15 = x_11;
} else {
 lean_dec_ref(x_11);
 x_15 = lean_box(0);
}
if (lean_is_scalar(x_15)) {
 x_16 = lean_alloc_ctor(0, 2, 0);
} else {
 x_16 = x_15;
}
lean_ctor_set(x_16, 0, x_13);
lean_ctor_set(x_16, 1, x_12);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_14);
return x_17;
}
}
}
static lean_object* _init_l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instMonadWriterStateTOfMonad___rarg___lambda__3), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_dec(x_2);
x_10 = lean_apply_1(x_4, x_5);
x_11 = lean_apply_2(x_9, lean_box(0), x_10);
x_12 = l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1;
x_13 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_12, x_11);
return x_13;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_6 = lean_ctor_get(x_1, 2);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_2, 0);
lean_inc(x_7);
lean_dec(x_2);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_apply_1(x_4, x_5);
x_11 = l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1;
x_12 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_11, x_10);
x_13 = lean_apply_2(x_6, lean_box(0), x_12);
return x_13;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
lean_inc(x_2);
x_3 = lean_alloc_closure((void*)(l_instMonadWriterStateTOfMonad___rarg___lambda__2), 4, 2);
lean_closure_set(x_3, 0, x_2);
lean_closure_set(x_3, 1, x_1);
lean_inc(x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_instMonadWriterStateTOfMonad___rarg___lambda__4), 5, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_2);
x_5 = lean_alloc_closure((void*)(l_instMonadWriterStateTOfMonad___rarg___lambda__5), 5, 2);
lean_closure_set(x_5, 0, x_2);
lean_closure_set(x_5, 1, x_1);
x_6 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_4);
lean_ctor_set(x_6, 2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterStateTOfMonad(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_instMonadWriterStateTOfMonad___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_mk___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_mk(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_WriterT_mk___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_mk___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_WriterT_mk___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_WriterT_run___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_run(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_WriterT_run___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_run___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_WriterT_run___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_WriterT_runThe___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_runThe(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_WriterT_runThe___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_runThe___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_WriterT_runThe___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_apply_1(x_1, x_4);
lean_ctor_set(x_2, 0, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_2);
x_8 = lean_apply_1(x_1, x_6);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__1), 2, 1);
lean_closure_set(x_9, 0, x_4);
x_10 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_9, x_5);
return x_10;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__3(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_2, 0);
lean_dec(x_4);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
else
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_1);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__3), 2, 1);
lean_closure_set(x_9, 0, x_4);
x_10 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_9, x_5);
return x_10;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_2);
x_8 = lean_apply_2(x_6, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 1);
x_6 = lean_apply_2(x_1, x_2, x_5);
lean_ctor_set(x_3, 1, x_6);
return x_3;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_9 = lean_apply_2(x_1, x_2, x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_7);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__6), 3, 2);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_6);
x_11 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__1), 2, 1);
lean_closure_set(x_11, 0, x_5);
x_12 = lean_box(0);
x_13 = lean_apply_1(x_3, x_12);
lean_inc(x_9);
x_14 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_11, x_13);
x_15 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_10, x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__7), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_ctor_get(x_6, 1);
x_9 = lean_ctor_get(x_6, 0);
lean_dec(x_9);
x_10 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__6), 3, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_8);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
lean_ctor_set(x_6, 1, x_4);
lean_ctor_set(x_6, 0, x_3);
x_12 = lean_apply_2(x_11, lean_box(0), x_6);
x_13 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_10, x_12);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_6, 1);
lean_inc(x_14);
lean_dec(x_6);
x_15 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__6), 3, 2);
lean_closure_set(x_15, 0, x_1);
lean_closure_set(x_15, 1, x_14);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_3);
lean_ctor_set(x_17, 1, x_4);
x_18 = lean_apply_2(x_16, lean_box(0), x_17);
x_19 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_15, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
lean_inc(x_2);
x_12 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__6), 3, 2);
lean_closure_set(x_12, 0, x_2);
lean_closure_set(x_12, 1, x_8);
x_13 = lean_box(0);
x_14 = lean_apply_1(x_3, x_13);
lean_inc(x_11);
x_15 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__9), 6, 5);
lean_closure_set(x_15, 0, x_2);
lean_closure_set(x_15, 1, x_9);
lean_closure_set(x_15, 2, x_7);
lean_closure_set(x_15, 3, x_4);
lean_closure_set(x_15, 4, x_11);
x_16 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_14, x_15);
x_17 = lean_apply_4(x_11, lean_box(0), lean_box(0), x_12, x_16);
return x_17;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__11(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_inc(x_8);
x_9 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__10), 6, 5);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
lean_closure_set(x_9, 2, x_7);
lean_closure_set(x_9, 3, x_3);
lean_closure_set(x_9, 4, x_8);
x_10 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_6, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__12(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__6), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_5);
x_10 = lean_box(0);
x_11 = lean_apply_1(x_3, x_10);
x_12 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_9, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__13(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__12), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__14(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__6), 3, 2);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_6);
x_11 = lean_apply_1(x_3, x_5);
x_12 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_10, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg___lambda__15(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__14), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__2), 5, 1);
lean_closure_set(x_4, 0, x_1);
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__4), 5, 1);
lean_closure_set(x_5, 0, x_1);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__5), 4, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
lean_inc(x_3);
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__8), 6, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_inc(x_3);
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__11), 7, 3);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
lean_closure_set(x_9, 2, x_2);
lean_inc(x_3);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__13), 6, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_3);
x_11 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_11, 0, x_6);
lean_ctor_set(x_11, 1, x_7);
lean_ctor_set(x_11, 2, x_8);
lean_ctor_set(x_11, 3, x_9);
lean_ctor_set(x_11, 4, x_10);
x_12 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__15), 6, 2);
lean_closure_set(x_12, 0, x_1);
lean_closure_set(x_12, 1, x_3);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
LEAN_EXPORT lean_object* l_WriterT_monad(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_monad___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_liftTell___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_liftTell___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_alloc_closure((void*)(l_WriterT_liftTell___rarg___lambda__1), 2, 1);
lean_closure_set(x_8, 0, x_2);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_4);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_liftTell(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_liftTell___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfEmptyCollectionOfAppend___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__2), 5, 1);
lean_closure_set(x_4, 0, x_1);
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__4), 5, 1);
lean_closure_set(x_5, 0, x_1);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
lean_inc(x_2);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__5), 4, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
lean_inc(x_3);
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__8), 6, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
lean_inc(x_3);
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__11), 7, 3);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
lean_closure_set(x_9, 2, x_2);
lean_inc(x_3);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__13), 6, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_3);
x_11 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_11, 0, x_6);
lean_ctor_set(x_11, 1, x_7);
lean_ctor_set(x_11, 2, x_8);
lean_ctor_set(x_11, 3, x_9);
lean_ctor_set(x_11, 4, x_10);
x_12 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__15), 6, 2);
lean_closure_set(x_12, 0, x_1);
lean_closure_set(x_12, 1, x_3);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfEmptyCollectionOfAppend(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadOfEmptyCollectionOfAppend___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfEmptyCollection___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_alloc_closure((void*)(l_WriterT_liftTell___rarg___lambda__1), 2, 1);
lean_closure_set(x_8, 0, x_2);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_4);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfEmptyCollection(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadLiftOfEmptyCollection___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_3, 1);
x_6 = l_Monoid_toMulOneClass___rarg(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_apply_2(x_7, x_2, x_5);
lean_ctor_set(x_3, 1, x_8);
return x_3;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_3);
x_11 = l_Monoid_toMulOneClass___rarg(x_1);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_apply_2(x_12, x_2, x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_9);
lean_ctor_set(x_14, 1, x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_6);
x_11 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__1), 2, 1);
lean_closure_set(x_11, 0, x_5);
x_12 = lean_box(0);
x_13 = lean_apply_1(x_3, x_12);
lean_inc(x_9);
x_14 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_11, x_13);
x_15 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_10, x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__2), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_ctor_get(x_6, 1);
x_9 = lean_ctor_get(x_6, 0);
lean_dec(x_9);
x_10 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_8);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
lean_ctor_set(x_6, 1, x_4);
lean_ctor_set(x_6, 0, x_3);
x_12 = lean_apply_2(x_11, lean_box(0), x_6);
x_13 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_10, x_12);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_6, 1);
lean_inc(x_14);
lean_dec(x_6);
x_15 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_15, 0, x_1);
lean_closure_set(x_15, 1, x_14);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_3);
lean_ctor_set(x_17, 1, x_4);
x_18 = lean_apply_2(x_16, lean_box(0), x_17);
x_19 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_15, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
lean_dec(x_10);
lean_inc(x_2);
x_12 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_12, 0, x_2);
lean_closure_set(x_12, 1, x_8);
x_13 = lean_box(0);
x_14 = lean_apply_1(x_3, x_13);
lean_inc(x_11);
x_15 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__4), 6, 5);
lean_closure_set(x_15, 0, x_2);
lean_closure_set(x_15, 1, x_9);
lean_closure_set(x_15, 2, x_7);
lean_closure_set(x_15, 3, x_4);
lean_closure_set(x_15, 4, x_11);
x_16 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_14, x_15);
x_17 = lean_apply_4(x_11, lean_box(0), lean_box(0), x_12, x_16);
return x_17;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_inc(x_8);
x_9 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__5), 6, 5);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
lean_closure_set(x_9, 2, x_7);
lean_closure_set(x_9, 3, x_3);
lean_closure_set(x_9, 4, x_8);
x_10 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_6, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_5);
x_10 = lean_box(0);
x_11 = lean_apply_1(x_3, x_10);
x_12 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_9, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__7), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_6);
x_11 = lean_apply_1(x_3, x_5);
x_12 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_10, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__9), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_6);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_5, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__2), 5, 1);
lean_closure_set(x_4, 0, x_1);
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__4), 5, 1);
lean_closure_set(x_5, 0, x_1);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
lean_inc(x_3);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_WriterT_monad___rarg___lambda__5), 4, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_3);
lean_inc(x_2);
lean_inc(x_1);
x_8 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__3), 6, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_inc(x_2);
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__6), 7, 3);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_2);
lean_closure_set(x_9, 2, x_3);
lean_inc(x_2);
lean_inc(x_1);
x_10 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__8), 6, 2);
lean_closure_set(x_10, 0, x_1);
lean_closure_set(x_10, 1, x_2);
x_11 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_11, 0, x_6);
lean_ctor_set(x_11, 1, x_7);
lean_ctor_set(x_11, 2, x_8);
lean_ctor_set(x_11, 3, x_9);
lean_ctor_set(x_11, 4, x_10);
x_12 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg___lambda__10), 6, 2);
lean_closure_set(x_12, 0, x_1);
lean_closure_set(x_12, 1, x_2);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadOfMonoid___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadOfMonoid___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_WriterT_instMonadOfMonoid___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfMonoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_alloc_closure((void*)(l_WriterT_liftTell___rarg___lambda__1), 2, 1);
lean_closure_set(x_8, 0, x_2);
x_9 = lean_apply_4(x_7, lean_box(0), lean_box(0), x_8, x_4);
return x_9;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfMonoid___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
lean_dec(x_2);
x_4 = lean_alloc_closure((void*)(l_WriterT_instMonadLiftOfMonoid___rarg___lambda__1), 4, 2);
lean_closure_set(x_4, 0, x_1);
lean_closure_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadLiftOfMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadLiftOfMonoid___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_box(0);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_2);
x_7 = lean_apply_2(x_4, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__2(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
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
lean_inc(x_6);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
}
static lean_object* _init_l_WriterT_instMonadWriter___rarg___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_WriterT_instMonadWriter___rarg___lambda__2), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_WriterT_instMonadWriter___rarg___lambda__3___closed__1;
x_8 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__4(lean_object* x_1) {
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
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_2, 1);
x_6 = lean_apply_1(x_5, x_3);
lean_ctor_set(x_2, 1, x_6);
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
x_9 = lean_apply_1(x_8, x_3);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_7);
lean_ctor_set(x_10, 1, x_9);
return x_10;
}
}
}
static lean_object* _init_l_WriterT_instMonadWriter___rarg___lambda__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_WriterT_instMonadWriter___rarg___lambda__4), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_WriterT_instMonadWriter___rarg___lambda__5___closed__1;
x_8 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_WriterT_instMonadWriter___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadWriter___rarg___lambda__3), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_closure((void*)(l_WriterT_instMonadWriter___rarg___lambda__5), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadWriter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadWriter___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, lean_box(0), x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_3(x_5, lean_box(0), x_3, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_WriterT_instMonadExcept___rarg___lambda__1), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadExcept___rarg___lambda__2), 4, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadExcept(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_WriterT_instMonadExcept___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__1___boxed), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1;
x_5 = lean_apply_1(x_3, x_4);
x_6 = lean_apply_2(x_1, lean_box(0), x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1;
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_instMonadControlOfMonadLiftT___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadFunctor___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_2(x_1, lean_box(0), x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_instMonadFunctor(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_WriterT_instMonadFunctor___rarg), 2, 0);
return x_4;
}
}
static lean_object* _init_l_WriterT_adapt___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_id___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_WriterT_adapt___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
lean_dec(x_7);
x_9 = l_WriterT_adapt___rarg___closed__1;
x_10 = lean_alloc_closure((void*)(l_Prod_map___rarg), 3, 2);
lean_closure_set(x_10, 0, x_9);
lean_closure_set(x_10, 1, x_4);
x_11 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_10, x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_WriterT_adapt(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_WriterT_adapt___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_monadWriterAdapterTrans___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_apply_3(x_1, lean_box(0), x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_monadWriterAdapterTrans___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_alloc_closure((void*)(l_monadWriterAdapterTrans___rarg___lambda__1), 4, 2);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_4);
x_7 = lean_apply_3(x_2, lean_box(0), x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_monadWriterAdapterTrans(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_monadWriterAdapterTrans___rarg), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterAdapterWriterTOfMonad___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_WriterT_adapt___rarg), 5, 2);
lean_closure_set(x_2, 0, x_1);
lean_closure_set(x_2, 1, lean_box(0));
return x_2;
}
}
LEAN_EXPORT lean_object* l_instMonadWriterAdapterWriterTOfMonad(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_instMonadWriterAdapterWriterTOfMonad___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Equiv_symm___elambda__2___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_WriterT_equiv___elambda__1___rarg), 2, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
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
LEAN_EXPORT lean_object* l_WriterT_equiv___elambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_WriterT_equiv___elambda__2___rarg), 2, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_WriterT_equiv___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_WriterT_equiv___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_WriterT_equiv___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WriterT_equiv(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_WriterT_equiv___rarg), 1, 0);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Equiv_Defs(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Control_Monad_Writer(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Equiv_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1 = _init_l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1();
lean_mark_persistent(l_instMonadWriterStateTOfMonad___rarg___lambda__4___closed__1);
l_WriterT_instMonadWriter___rarg___lambda__3___closed__1 = _init_l_WriterT_instMonadWriter___rarg___lambda__3___closed__1();
lean_mark_persistent(l_WriterT_instMonadWriter___rarg___lambda__3___closed__1);
l_WriterT_instMonadWriter___rarg___lambda__5___closed__1 = _init_l_WriterT_instMonadWriter___rarg___lambda__5___closed__1();
lean_mark_persistent(l_WriterT_instMonadWriter___rarg___lambda__5___closed__1);
l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1 = _init_l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1();
lean_mark_persistent(l_WriterT_instMonadControlOfMonadLiftT___rarg___lambda__2___closed__1);
l_WriterT_adapt___rarg___closed__1 = _init_l_WriterT_adapt___rarg___closed__1();
lean_mark_persistent(l_WriterT_adapt___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
