// Lean compiler output
// Module: Beal.Galois.«03_ModLForm»
// Imports: Init Beal.Galois.«01_Absolute» Beal.Galois.«02_ResidualRep» Beal.B14_FreyTate
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
lean_object* l_CommRing_toNonUnitalCommRing___rarg(lean_object*);
lean_object* l_Ring_toAddGroupWithOne___rarg(lean_object*);
lean_object* l_ZMod_commRing(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_modLTrace(lean_object*, lean_object*);
lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg(lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_modLTrace___spec__1(lean_object*);
lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(lean_object*);
lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg(lean_object*);
static lean_object* l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___closed__1;
LEAN_EXPORT lean_object* l_Beal_Galois_standardBasis(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_standardBasis___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___boxed(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* l_id___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_standardBasis(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_eq(x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = l_ZMod_commRing(x_1);
x_6 = l_CommRing_toNonUnitalCommRing___rarg(x_5);
x_7 = l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(x_6);
x_8 = l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg(x_7);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = l_ZMod_commRing(x_1);
x_11 = l_Ring_toAddGroupWithOne___rarg(x_10);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_13 = lean_ctor_get(x_12, 2);
lean_inc(x_13);
lean_dec(x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_standardBasis___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Beal_Galois_standardBasis(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
static lean_object* _init_l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_id___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_modLTrace___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_modLTrace(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_inc(x_1);
x_3 = l_ZMod_commRing(x_1);
x_4 = l_CommRing_toNonUnitalCommRing___rarg(x_3);
x_5 = l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(x_4);
x_6 = l_NonUnitalNonAssocSemiring_toDistrib___rarg(x_5);
lean_dec(x_5);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = lean_unsigned_to_nat(0u);
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_Beal_Galois_standardBasis___boxed), 3, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_8);
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
lean_dec(x_2);
lean_inc(x_10);
x_11 = lean_apply_2(x_10, x_9, x_8);
x_12 = lean_unsigned_to_nat(1u);
x_13 = lean_alloc_closure((void*)(l_Beal_Galois_standardBasis___boxed), 3, 2);
lean_closure_set(x_13, 0, x_1);
lean_closure_set(x_13, 1, x_12);
x_14 = lean_apply_2(x_10, x_13, x_12);
x_15 = lean_apply_2(x_7, x_11, x_14);
return x_15;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_modLTrace___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_01__Absolute(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_02__ResidualRep(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B14__FreyTate(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_Galois_03__ModLForm(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_01__Absolute(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_02__ResidualRep(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B14__FreyTate(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___closed__1 = _init_l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___closed__1();
lean_mark_persistent(l_RingHom_id___at_Beal_Galois_modLTrace___spec__1___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
