// Lean compiler output
// Module: Mathlib.Algebra.GroupWithZero.Opposite
// Imports: Init Mathlib.Algebra.Group.Opposite Mathlib.Algebra.GroupWithZero.Defs
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
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroClass(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instMonoidWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instMonoidWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instSemigroupWithZero(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instSemigroupWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instGroupWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroOneClass(lean_object*);
lean_object* l_GroupWithZero_toDivInvMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroOneClass___rarg(lean_object*);
lean_object* l_AddOpposite_instMul___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroOneClass(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroOneClass___rarg(lean_object*);
lean_object* l_SemigroupWithZero_toMulZeroClass___rarg(lean_object*);
lean_object* l_MulOpposite_instMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instSemigroupWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instMonoidWithZero(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instGroupWithZero(lean_object*);
lean_object* l_GroupWithZero_toDivInvMonoid___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instSemigroupWithZero(lean_object*);
lean_object* l_MulZeroOneClass_toMulZeroClass___rarg(lean_object*);
lean_object* l_AddOpposite_instMonoid___rarg(lean_object*);
lean_object* l_MonoidWithZero_toMulZeroOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instMonoidWithZero(lean_object*);
lean_object* l_MulOpposite_instMulOneClass___rarg(lean_object*);
lean_object* l_AddOpposite_instMulOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroClass(lean_object*);
lean_object* l_AddOpposite_instDivInvMonoid___rarg(lean_object*);
lean_object* l_MulOpposite_instMul___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_alloc_closure((void*)(l_MulOpposite_instMul___rarg), 3, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MulOpposite_instMulZeroClass___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroOneClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_MulOpposite_instMulOneClass___rarg(x_2);
x_4 = l_MulZeroOneClass_toMulZeroClass___rarg(x_1);
x_5 = l_MulOpposite_instMulZeroClass___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_5, 0);
lean_dec(x_7);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instMulZeroOneClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MulOpposite_instMulZeroOneClass___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instSemigroupWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_alloc_closure((void*)(l_MulOpposite_instMul___rarg), 3, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = l_SemigroupWithZero_toMulZeroClass___rarg(x_1);
x_5 = l_MulOpposite_instMulZeroClass___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_5, 0);
lean_dec(x_7);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instSemigroupWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MulOpposite_instSemigroupWithZero___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instMonoidWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_MulOpposite_instMonoid___rarg(x_2);
x_4 = l_MonoidWithZero_toMulZeroOneClass___rarg(x_1);
x_5 = l_MulOpposite_instMulZeroOneClass___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_5, 0);
lean_dec(x_7);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_MulOpposite_instMonoidWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MulOpposite_instMonoidWithZero___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_alloc_closure((void*)(l_AddOpposite_instMul___rarg), 3, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_AddOpposite_instMulZeroClass___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroOneClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_AddOpposite_instMulOneClass___rarg(x_2);
x_4 = l_MulZeroOneClass_toMulZeroClass___rarg(x_1);
x_5 = l_AddOpposite_instMulZeroClass___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_5, 0);
lean_dec(x_7);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instMulZeroOneClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_AddOpposite_instMulZeroOneClass___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instSemigroupWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_alloc_closure((void*)(l_AddOpposite_instMul___rarg), 3, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = l_SemigroupWithZero_toMulZeroClass___rarg(x_1);
x_5 = l_AddOpposite_instMulZeroClass___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_5, 0);
lean_dec(x_7);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instSemigroupWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_AddOpposite_instSemigroupWithZero___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instMonoidWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_AddOpposite_instMonoid___rarg(x_2);
x_4 = l_MonoidWithZero_toMulZeroOneClass___rarg(x_1);
x_5 = l_AddOpposite_instMulZeroOneClass___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_5, 0);
lean_dec(x_7);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instMonoidWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_AddOpposite_instMonoidWithZero___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instGroupWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_AddOpposite_instMonoidWithZero___rarg(x_2);
lean_inc(x_1);
x_4 = l_GroupWithZero_toDivInvMonoid___rarg(x_1);
x_5 = l_AddOpposite_instDivInvMonoid___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_5, 3);
lean_dec(x_7);
x_8 = lean_ctor_get(x_5, 0);
lean_dec(x_8);
x_9 = lean_alloc_closure((void*)(l_GroupWithZero_toDivInvMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_9, 0, x_1);
lean_ctor_set(x_5, 3, x_9);
lean_ctor_set(x_5, 0, x_3);
return x_5;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_5, 1);
x_11 = lean_ctor_get(x_5, 2);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_5);
x_12 = lean_alloc_closure((void*)(l_GroupWithZero_toDivInvMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_12, 0, x_1);
x_13 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_10);
lean_ctor_set(x_13, 2, x_11);
lean_ctor_set(x_13, 3, x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_AddOpposite_instGroupWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_AddOpposite_instGroupWithZero___rarg), 1, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Opposite(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_GroupWithZero_Defs(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_GroupWithZero_Opposite(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Opposite(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_GroupWithZero_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
