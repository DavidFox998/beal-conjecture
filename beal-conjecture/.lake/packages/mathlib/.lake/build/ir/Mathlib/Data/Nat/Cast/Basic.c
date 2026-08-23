// Lean compiler output
// Module: Mathlib.Data.Nat.Cast.Basic
// Imports: Init Mathlib.Algebra.Divisibility.Basic Mathlib.Algebra.Ring.Hom.Defs Mathlib.Algebra.Ring.Nat
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
LEAN_EXPORT lean_object* l_Pi_instNatCast___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_powersMulHom___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Nat_castAddMonoidHom(lean_object*);
LEAN_EXPORT lean_object* l_Nat_uniqueRingHom___rarg(lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___at_powersHom___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Nat_castAddMonoidHom___rarg(lean_object*);
lean_object* l_Nat_cast___rarg(lean_object*, lean_object*);
static lean_object* l_multiplesHom___at_powersHom___spec__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Pi_instNatCast(lean_object*, lean_object*);
lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___elambda__1___boxed(lean_object*, lean_object*);
static lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__1;
lean_object* l_Additive_ofMul(lean_object*);
LEAN_EXPORT lean_object* l_multiplesAddHom___rarg(lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_uniqueRingHom(lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___elambda__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_powersHom___rarg(lean_object*);
static lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__2;
LEAN_EXPORT lean_object* l_multiplesHom___rarg(lean_object*);
LEAN_EXPORT lean_object* l_powersMulHom(lean_object*);
lean_object* l_Equiv_trans___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___at_powersHom___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom(lean_object*);
static lean_object* l_powersHom___rarg___closed__1;
LEAN_EXPORT lean_object* l_multiplesAddHom(lean_object*);
static lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__3;
LEAN_EXPORT lean_object* l_Nat_castRingHom(lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_castRingHom___rarg(lean_object*);
LEAN_EXPORT lean_object* l_multiplesHom___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_powersHom(lean_object*);
LEAN_EXPORT lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2(lean_object*, lean_object*);
lean_object* l_Additive_addMonoid___rarg(lean_object*);
lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_castAddMonoidHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
lean_dec(x_1);
x_3 = lean_alloc_closure((void*)(l_Nat_cast___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nat_castAddMonoidHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_castAddMonoidHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_castRingHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 2);
lean_inc(x_2);
lean_dec(x_1);
x_3 = lean_alloc_closure((void*)(l_Nat_cast___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nat_castRingHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_castRingHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_uniqueRingHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Nat_castRingHom___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_uniqueRingHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_uniqueRingHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___elambda__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_multiplesHom___elambda__1___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 2);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_3, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_multiplesHom___elambda__2___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_multiplesHom___elambda__2___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_multiplesHom___elambda__1___rarg), 1, 0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_multiplesHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_multiplesHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___elambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_multiplesHom___elambda__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_multiplesHom___at_powersHom___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_multiplesHom___elambda__1___rarg), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___at_powersHom___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Additive_addMonoid___rarg(x_1);
x_3 = lean_alloc_closure((void*)(l_multiplesHom___elambda__2___rarg), 3, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = l_multiplesHom___at_powersHom___spec__1___rarg___closed__1;
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_multiplesHom___at_powersHom___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_multiplesHom___at_powersHom___spec__1___rarg), 1, 0);
return x_2;
}
}
static lean_object* _init_l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_AddMonoidHom_toMultiplicative_x27_x27___elambda__2___rarg), 2, 0);
return x_1;
}
}
static lean_object* _init_l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_AddMonoidHom_toMultiplicative_x27_x27___elambda__1___rarg), 2, 0);
return x_1;
}
}
static lean_object* _init_l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__1;
x_2 = l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__3;
return x_3;
}
}
static lean_object* _init_l_powersHom___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Additive_ofMul(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_powersHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_2 = l_multiplesHom___at_powersHom___spec__1___rarg(x_1);
x_3 = lean_alloc_closure((void*)(l_AddMonoidHom_toMultiplicative_x27_x27___elambda__2___rarg), 2, 0);
x_4 = lean_alloc_closure((void*)(l_AddMonoidHom_toMultiplicative_x27_x27___elambda__1___rarg), 2, 0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
x_6 = l_Equiv_trans___rarg(x_2, x_5);
x_7 = l_powersHom___rarg___closed__1;
x_8 = l_Equiv_trans___rarg(x_7, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_powersHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_powersHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_multiplesAddHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_multiplesHom___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_multiplesAddHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_multiplesAddHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_powersMulHom___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_powersHom___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_powersMulHom(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_powersMulHom___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instNatCast___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instNatCast(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instNatCast___rarg), 3, 0);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Divisibility_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Ring_Hom_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Ring_Nat(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Nat_Cast_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Divisibility_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Ring_Hom_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Ring_Nat(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_multiplesHom___at_powersHom___spec__1___rarg___closed__1 = _init_l_multiplesHom___at_powersHom___spec__1___rarg___closed__1();
lean_mark_persistent(l_multiplesHom___at_powersHom___spec__1___rarg___closed__1);
l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__1 = _init_l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__1();
lean_mark_persistent(l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__1);
l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__2 = _init_l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__2();
lean_mark_persistent(l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__2);
l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__3 = _init_l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__3();
lean_mark_persistent(l_AddMonoidHom_toMultiplicative_x27_x27___at_powersHom___spec__2___closed__3);
l_powersHom___rarg___closed__1 = _init_l_powersHom___rarg___closed__1();
lean_mark_persistent(l_powersHom___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
