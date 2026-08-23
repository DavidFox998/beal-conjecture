// Lean compiler output
// Module: Mathlib.Algebra.Group.Even
// Imports: Init Mathlib.Algebra.Group.Opposite Mathlib.Algebra.Group.TypeTags
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
LEAN_EXPORT lean_object* l_instDecidablePredMulOppositeIsSquare(lean_object*, lean_object*);
lean_object* l_Additive_toMul(lean_object*);
static lean_object* l_Multiplicative_instDecidablePredIsSquare___rarg___closed__1;
LEAN_EXPORT lean_object* l_instDecidablePredAddOppositeEven(lean_object*, lean_object*);
static lean_object* l_Additive_instDecidablePredEven___rarg___closed__1;
LEAN_EXPORT lean_object* l_Additive_instDecidablePredEven___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Additive_instDecidablePredEven___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instDecidablePredMulOppositeIsSquare___rarg(lean_object*, lean_object*);
lean_object* l_Multiplicative_toAdd(lean_object*);
LEAN_EXPORT lean_object* l_instDecidablePredMulOppositeIsSquare___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Multiplicative_instDecidablePredIsSquare(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Multiplicative_instDecidablePredIsSquare___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Additive_instDecidablePredEven(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Multiplicative_instDecidablePredIsSquare___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instDecidablePredAddOppositeEven___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instDecidablePredAddOppositeEven___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instDecidablePredMulOppositeIsSquare___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instDecidablePredMulOppositeIsSquare(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_instDecidablePredMulOppositeIsSquare___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instDecidablePredMulOppositeIsSquare___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_instDecidablePredMulOppositeIsSquare(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instDecidablePredAddOppositeEven___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instDecidablePredAddOppositeEven(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_instDecidablePredAddOppositeEven___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instDecidablePredAddOppositeEven___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_instDecidablePredAddOppositeEven(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Additive_instDecidablePredEven___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Additive_toMul(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Additive_instDecidablePredEven___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_Additive_instDecidablePredEven___rarg___closed__1;
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_apply_1(x_4, x_2);
x_6 = lean_apply_1(x_1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Additive_instDecidablePredEven(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Additive_instDecidablePredEven___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Additive_instDecidablePredEven___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Additive_instDecidablePredEven(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Multiplicative_instDecidablePredIsSquare___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Multiplicative_toAdd(lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Multiplicative_instDecidablePredIsSquare___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_Multiplicative_instDecidablePredIsSquare___rarg___closed__1;
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_apply_1(x_4, x_2);
x_6 = lean_apply_1(x_1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Multiplicative_instDecidablePredIsSquare(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Multiplicative_instDecidablePredIsSquare___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Multiplicative_instDecidablePredIsSquare___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Multiplicative_instDecidablePredIsSquare(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Opposite(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_TypeTags(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Group_Even(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Opposite(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_TypeTags(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Additive_instDecidablePredEven___rarg___closed__1 = _init_l_Additive_instDecidablePredEven___rarg___closed__1();
lean_mark_persistent(l_Additive_instDecidablePredEven___rarg___closed__1);
l_Multiplicative_instDecidablePredIsSquare___rarg___closed__1 = _init_l_Multiplicative_instDecidablePredIsSquare___rarg___closed__1();
lean_mark_persistent(l_Multiplicative_instDecidablePredIsSquare___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
