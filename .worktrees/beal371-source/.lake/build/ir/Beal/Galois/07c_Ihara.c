// Lean compiler output
// Module: Beal.Galois.«07c_Ihara»
// Imports: Init Beal.Galois.«05_Hecke»
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
lean_object* l_ZMod_commRing(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap___lambda__1(lean_object*, lean_object*);
uint8_t l_Nat_decidable__dvd(lean_object*, lean_object*);
lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_Bp(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_B_u2081(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_B_u2081___boxed(lean_object*);
lean_object* l_Pi_instAdd___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_Bp___spec__1(lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_CommSemiring_toCommMonoidWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_B_u2081___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_IharaMap___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_B_u2081___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_Bp___spec__1___boxed(lean_object*);
lean_object* l_id___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_IharaMap___spec__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_BpCoeff___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1;
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap___lambda__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_Galois_BpCoeff(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_id___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_B_u2081___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_B_u2081___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_B_u2081(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Beal_Galois_B_u2081___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_B_u2081___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_B_u2081___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Beal_Galois_B_u2081(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_BpCoeff(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = l_Nat_decidable__dvd(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_dec(x_3);
x_6 = l_ZMod_commRing(x_2);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
lean_dec(x_6);
x_8 = l_CommSemiring_toCommMonoidWithZero___rarg(x_7);
lean_dec(x_7);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
lean_dec(x_2);
x_10 = lean_nat_div(x_4, x_1);
x_11 = lean_apply_1(x_3, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_BpCoeff___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Beal_Galois_BpCoeff(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_Bp___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_Bp(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Beal_Galois_BpCoeff___boxed), 4, 2);
lean_closure_set(x_3, 0, x_1);
lean_closure_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_Bp___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_Bp___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_IharaMap___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_NonUnitalNonAssocSemiring_toDistrib___rarg(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_alloc_closure((void*)(l_Beal_Galois_IharaMap___lambda__1___boxed), 2, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
x_8 = lean_alloc_closure((void*)(l_Beal_Galois_B_u2081___rarg), 2, 1);
lean_closure_set(x_8, 0, x_7);
x_9 = lean_ctor_get(x_4, 1);
lean_inc(x_9);
lean_dec(x_4);
x_10 = lean_alloc_closure((void*)(l_Beal_Galois_BpCoeff___boxed), 4, 3);
lean_closure_set(x_10, 0, x_2);
lean_closure_set(x_10, 1, x_3);
lean_closure_set(x_10, 2, x_9);
x_11 = l_Pi_instAdd___elambda__1___rarg(x_6, x_8, x_10, x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_2);
x_3 = l_ZMod_commRing(x_2);
x_4 = l_CommRing_toNonUnitalCommRing___rarg(x_3);
x_5 = l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(x_4);
x_6 = lean_alloc_closure((void*)(l_Beal_Galois_IharaMap___lambda__2), 5, 3);
lean_closure_set(x_6, 0, x_5);
lean_closure_set(x_6, 1, x_1);
lean_closure_set(x_6, 2, x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_RingHom_id___at_Beal_Galois_IharaMap___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_RingHom_id___at_Beal_Galois_IharaMap___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_Galois_IharaMap___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Beal_Galois_IharaMap___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_05__Hecke(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_Galois_07c__Ihara(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_05__Hecke(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1 = _init_l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1();
lean_mark_persistent(l_RingHom_id___at_Beal_Galois_B_u2081___spec__1___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
