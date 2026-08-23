// Lean compiler output
// Module: Mathlib.Order.Disjoint
// Imports: Init Aesop Mathlib.Order.BoundedOrder
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
LEAN_EXPORT lean_object* l_Complementeds_instInf___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instBoundedOrder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instSup(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instSup___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instInf___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instInhabited___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instBoundedOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice(lean_object*);
static lean_object* l_Complementeds_instDistribLattice___rarg___closed__1;
LEAN_EXPORT lean_object* l_Complementeds_instInhabited___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instInhabited(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instInf(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instInhabited___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instBoundedOrder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instSup___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Complementeds_hasCoeT___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Complementeds_hasCoeT___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Complementeds_hasCoeT___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Complementeds_hasCoeT(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instBoundedOrder___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Complementeds_instBoundedOrder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Complementeds_instBoundedOrder___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instBoundedOrder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Complementeds_instBoundedOrder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInhabited___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInhabited(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Complementeds_instInhabited___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInhabited___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Complementeds_instInhabited___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInhabited___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Complementeds_instInhabited(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instSup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_2(x_6, x_3, x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instSup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Complementeds_instSup___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instSup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Complementeds_instSup___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInf___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_apply_2(x_5, x_3, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Complementeds_instInf___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instInf___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Complementeds_instInf___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_2, x_3);
return x_5;
}
}
static lean_object* _init_l_Complementeds_instDistribLattice___rarg___closed__1() {
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
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = l_Complementeds_instDistribLattice___rarg___closed__1;
x_5 = lean_alloc_closure((void*)(l_Complementeds_instDistribLattice___rarg___lambda__1), 3, 1);
lean_closure_set(x_5, 0, x_3);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_4);
x_7 = lean_alloc_closure((void*)(l_Complementeds_instDistribLattice___rarg___lambda__2), 3, 1);
lean_closure_set(x_7, 0, x_1);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Complementeds_instDistribLattice___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Complementeds_instDistribLattice___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Complementeds_instDistribLattice___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_BoundedOrder(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_Disjoint(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_BoundedOrder(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Complementeds_instDistribLattice___rarg___closed__1 = _init_l_Complementeds_instDistribLattice___rarg___closed__1();
lean_mark_persistent(l_Complementeds_instDistribLattice___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
