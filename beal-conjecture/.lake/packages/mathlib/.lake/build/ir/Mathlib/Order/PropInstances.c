// Lean compiler output
// Module: Mathlib.Order.PropInstances
// Imports: Init Mathlib.Order.Disjoint
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
LEAN_EXPORT uint8_t l_Prop_decidableRelBot(lean_object*, lean_object*, lean_object*);
extern uint8_t l_instDecidableTrue;
LEAN_EXPORT lean_object* l_Prop_instBoundedOrder;
LEAN_EXPORT uint8_t l_Prop_decidablePredBot(lean_object*, lean_object*);
static lean_object* l_Prop_instDistribLattice___closed__1;
LEAN_EXPORT lean_object* l_Prop_decidableRelBot___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prop_decidableRelTop___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prop_decidablePredBot___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Prop_decidablePredTop(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prop_instDistribLattice;
extern uint8_t l_instDecidableFalse;
LEAN_EXPORT lean_object* l_Prop_decidablePredTop___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Prop_decidableRelTop(lean_object*, lean_object*, lean_object*);
extern lean_object* l_Prop_partialOrder;
static lean_object* l_Prop_instBoundedOrder___closed__1;
static lean_object* l_Prop_instDistribLattice___closed__2;
static lean_object* _init_l_Prop_instDistribLattice___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Prop_partialOrder;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, lean_box(0));
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Prop_instDistribLattice___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Prop_instDistribLattice___closed__1;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, lean_box(0));
return x_2;
}
}
static lean_object* _init_l_Prop_instDistribLattice() {
_start:
{
lean_object* x_1; 
x_1 = l_Prop_instDistribLattice___closed__2;
return x_1;
}
}
static lean_object* _init_l_Prop_instBoundedOrder___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_1, 0, lean_box(0));
lean_ctor_set(x_1, 1, lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Prop_instBoundedOrder() {
_start:
{
lean_object* x_1; 
x_1 = l_Prop_instBoundedOrder___closed__1;
return x_1;
}
}
LEAN_EXPORT uint8_t l_Prop_decidablePredBot(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_instDecidableFalse;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prop_decidablePredBot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Prop_decidablePredBot(x_1, x_2);
lean_dec(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Prop_decidablePredTop(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_instDecidableTrue;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prop_decidablePredTop___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Prop_decidablePredTop(x_1, x_2);
lean_dec(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Prop_decidableRelBot(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = l_instDecidableFalse;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Prop_decidableRelBot___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Prop_decidableRelBot(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Prop_decidableRelTop(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = l_instDecidableTrue;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Prop_decidableRelTop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Prop_decidableRelTop(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
x_5 = lean_box(x_4);
return x_5;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Disjoint(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_PropInstances(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Disjoint(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Prop_instDistribLattice___closed__1 = _init_l_Prop_instDistribLattice___closed__1();
lean_mark_persistent(l_Prop_instDistribLattice___closed__1);
l_Prop_instDistribLattice___closed__2 = _init_l_Prop_instDistribLattice___closed__2();
lean_mark_persistent(l_Prop_instDistribLattice___closed__2);
l_Prop_instDistribLattice = _init_l_Prop_instDistribLattice();
lean_mark_persistent(l_Prop_instDistribLattice);
l_Prop_instBoundedOrder___closed__1 = _init_l_Prop_instBoundedOrder___closed__1();
lean_mark_persistent(l_Prop_instBoundedOrder___closed__1);
l_Prop_instBoundedOrder = _init_l_Prop_instBoundedOrder();
lean_mark_persistent(l_Prop_instBoundedOrder);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
