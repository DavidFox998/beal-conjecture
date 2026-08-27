// Lean compiler output
// Module: Beal.Galois.«07g_IharaOnV»
// Imports: Init Beal.Galois.«07f_GenuineSubmodule»
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
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__1___boxed(lean_object*, lean_object*);
lean_object* l_Ring_toAddGroupWithOne___rarg(lean_object*);
lean_object* l_ZMod_commRing(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Pi_instNeg___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__2___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__1(lean_object*, lean_object*);
lean_object* l_SubNegZeroMonoid_toNegZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___elambda__1___boxed(lean_object*);
lean_object* l_Beal_Galois_BpCoeff___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample(lean_object*, lean_object*);
lean_object* l_Ring_toAddCommGroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Pi_instNeg___elambda__1___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Beal_Galois_rawIharaCounterexample___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_ZMod_commRing(x_1);
x_4 = l_Ring_toAddCommGroup___rarg(x_3);
lean_dec(x_3);
x_5 = l_SubNegZeroMonoid_toNegZeroClass___rarg(x_4);
lean_dec(x_4);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Ring_toAddGroupWithOne___rarg(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_ctor_get(x_4, 2);
lean_inc(x_5);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_2);
x_3 = lean_alloc_closure((void*)(l_Beal_Galois_rawIharaCounterexample___lambda__1___boxed), 2, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_2);
x_4 = l_ZMod_commRing(x_2);
x_5 = lean_alloc_closure((void*)(l_Beal_Galois_rawIharaCounterexample___lambda__2___boxed), 2, 1);
lean_closure_set(x_5, 0, x_4);
lean_inc(x_5);
x_6 = lean_alloc_closure((void*)(l_Beal_Galois_BpCoeff___boxed), 4, 3);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
lean_closure_set(x_6, 2, x_5);
x_7 = lean_alloc_closure((void*)(l_Beal_Galois_rawIharaCounterexample___elambda__1___rarg), 3, 2);
lean_closure_set(x_7, 0, x_3);
lean_closure_set(x_7, 1, x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_5);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___elambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Beal_Galois_rawIharaCounterexample___elambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Beal_Galois_rawIharaCounterexample___lambda__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_rawIharaCounterexample___lambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Beal_Galois_rawIharaCounterexample___lambda__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_07f__GenuineSubmodule(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_Galois_07g__IharaOnV(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_07f__GenuineSubmodule(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
