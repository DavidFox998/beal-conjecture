// Lean compiler output
// Module: Mathlib.Order.ULift
// Imports: Init Mathlib.Logic.Function.ULift Mathlib.Order.Basic
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
LEAN_EXPORT lean_object* l_ULift_instPreorder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instInf___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instSup(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instLT__mathlib(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instSDiff__mathlib(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instInf(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrd__mathlib(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instSup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instLE__mathlib___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrd__mathlib___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instSDiff__mathlib___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instLE__mathlib(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instHasCompl___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instHasCompl(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instPartialOrder___boxed(lean_object*, lean_object*);
static lean_object* l_ULift_instPreorder___closed__1;
LEAN_EXPORT lean_object* l_ULift_instLT__mathlib___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instPreorder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instPartialOrder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instLE__mathlib(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instLE__mathlib___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instLE__mathlib(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instLT__mathlib(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instLT__mathlib___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instLT__mathlib(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrd__mathlib___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrd__mathlib(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instOrd__mathlib___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instSup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_ULift_instSup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instSup___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instInf___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_ULift_instInf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instInf___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instSDiff__mathlib___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_ULift_instSDiff__mathlib(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instSDiff__mathlib___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instHasCompl___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instHasCompl(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instHasCompl___rarg), 2, 0);
return x_2;
}
}
static lean_object* _init_l_ULift_instPreorder___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instPreorder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instPreorder___closed__1;
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instPreorder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instPreorder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instPartialOrder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instPreorder___closed__1;
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instPartialOrder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instPartialOrder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Function_ULift(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_ULift(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Function_ULift(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_ULift_instPreorder___closed__1 = _init_l_ULift_instPreorder___closed__1();
lean_mark_persistent(l_ULift_instPreorder___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
