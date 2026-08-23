// Lean compiler output
// Module: Mathlib.Algebra.Ring.Int
// Imports: Init Mathlib.Algebra.CharZero.Defs Mathlib.Algebra.Group.Int Mathlib.Algebra.Ring.Parity
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
extern lean_object* l_Int_instAddCommGroup;
lean_object* l_CommRing_toNonUnitalCommRing___rarg(lean_object*);
lean_object* l_Nat_cast___at_Int_bmod___spec__1(lean_object*);
static lean_object* l_Int_instDistrib___closed__1;
static lean_object* l_Int_instDistrib___closed__2;
extern lean_object* l_Int_instCommSemigroup;
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__1___boxed(lean_object*, lean_object*);
lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg(lean_object*);
uint8_t l_Int_instDecidablePredEven(lean_object*);
lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
static lean_object* l_Int_instCommRing___closed__4;
lean_object* l_Int_pow(lean_object*, lean_object*);
lean_object* l_CommSemiring_toCommMonoidWithZero___rarg(lean_object*);
extern lean_object* l_Int_instMonoid;
static lean_object* l_Int_instCancelCommMonoidWithZero___closed__1;
LEAN_EXPORT uint8_t l_Int_instDecidablePredOdd(lean_object*);
LEAN_EXPORT lean_object* l_Int_instDistrib;
static lean_object* l_Int_instDistrib___closed__3;
LEAN_EXPORT lean_object* l_Int_instCommRing;
LEAN_EXPORT lean_object* l_Int_instRing;
static lean_object* l_Int_instCommRing___closed__3;
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__2___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__2(lean_object*);
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_instCancelCommMonoidWithZero;
static lean_object* l_Int_instCommRing___closed__5;
lean_object* l_Int_mul___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_instDecidablePredOdd___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Int_instCommSemiring;
static lean_object* l_Int_instCommRing___closed__1;
static lean_object* l_Int_instCommRing___closed__2;
LEAN_EXPORT lean_object* l_Int_instSemiring;
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_pow(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__2(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
static lean_object* _init_l_Int_instCommRing___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Nat_cast___at_Int_bmod___spec__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instCommRing___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instCommRing___lambda__1___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instCommRing___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_mul___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instCommRing___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instCommRing___lambda__2___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instCommRing___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; 
x_1 = l_Int_instAddCommGroup;
x_2 = l_Int_instCommSemigroup;
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_ctor_get(x_1, 2);
x_7 = lean_ctor_get(x_1, 3);
lean_dec(x_7);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_2);
x_9 = l_Int_instMonoid;
x_10 = lean_ctor_get(x_9, 1);
lean_inc(x_10);
x_11 = l_Int_instCommRing___closed__1;
x_12 = l_Int_instCommRing___closed__2;
lean_ctor_set(x_1, 3, x_12);
lean_ctor_set(x_1, 2, x_11);
lean_ctor_set(x_1, 1, x_10);
lean_ctor_set(x_1, 0, x_8);
x_13 = l_Int_instCommRing___closed__3;
x_14 = l_Int_instCommRing___closed__4;
x_15 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_15, 0, x_1);
lean_ctor_set(x_15, 1, x_5);
lean_ctor_set(x_15, 2, x_6);
lean_ctor_set(x_15, 3, x_13);
lean_ctor_set(x_15, 4, x_14);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_16 = lean_ctor_get(x_1, 0);
x_17 = lean_ctor_get(x_1, 1);
x_18 = lean_ctor_get(x_1, 2);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_1);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_16);
lean_ctor_set(x_19, 1, x_2);
x_20 = l_Int_instMonoid;
x_21 = lean_ctor_get(x_20, 1);
lean_inc(x_21);
x_22 = l_Int_instCommRing___closed__1;
x_23 = l_Int_instCommRing___closed__2;
x_24 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_24, 0, x_19);
lean_ctor_set(x_24, 1, x_21);
lean_ctor_set(x_24, 2, x_22);
lean_ctor_set(x_24, 3, x_23);
x_25 = l_Int_instCommRing___closed__3;
x_26 = l_Int_instCommRing___closed__4;
x_27 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_27, 0, x_24);
lean_ctor_set(x_27, 1, x_17);
lean_ctor_set(x_27, 2, x_18);
lean_ctor_set(x_27, 3, x_25);
lean_ctor_set(x_27, 4, x_26);
return x_27;
}
}
}
static lean_object* _init_l_Int_instCommRing() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instCommRing___closed__5;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_instCommRing___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_instCommRing___lambda__2___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Int_instCommRing___lambda__2(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Int_instCancelCommMonoidWithZero___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Int_instCommRing;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_CommSemiring_toCommMonoidWithZero___rarg(x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Int_instCancelCommMonoidWithZero() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instCancelCommMonoidWithZero___closed__1;
return x_1;
}
}
static lean_object* _init_l_Int_instCommSemiring() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instCommRing;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instSemiring() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instCommSemiring;
return x_1;
}
}
static lean_object* _init_l_Int_instRing() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instCommRing;
return x_1;
}
}
static lean_object* _init_l_Int_instDistrib___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instCommRing;
x_2 = l_CommRing_toNonUnitalCommRing___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Int_instDistrib___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instDistrib___closed__1;
x_2 = l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Int_instDistrib___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instDistrib___closed__2;
x_2 = l_NonUnitalNonAssocSemiring_toDistrib___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Int_instDistrib() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instDistrib___closed__3;
return x_1;
}
}
LEAN_EXPORT uint8_t l_Int_instDecidablePredOdd(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; 
x_2 = l_Int_instDecidablePredEven(x_1);
x_3 = l_instDecidableNot___rarg(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_instDecidablePredOdd___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Int_instDecidablePredOdd(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_CharZero_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Int(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Ring_Parity(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Ring_Int(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_CharZero_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Int(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Ring_Parity(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Int_instCommRing___closed__1 = _init_l_Int_instCommRing___closed__1();
lean_mark_persistent(l_Int_instCommRing___closed__1);
l_Int_instCommRing___closed__2 = _init_l_Int_instCommRing___closed__2();
lean_mark_persistent(l_Int_instCommRing___closed__2);
l_Int_instCommRing___closed__3 = _init_l_Int_instCommRing___closed__3();
lean_mark_persistent(l_Int_instCommRing___closed__3);
l_Int_instCommRing___closed__4 = _init_l_Int_instCommRing___closed__4();
lean_mark_persistent(l_Int_instCommRing___closed__4);
l_Int_instCommRing___closed__5 = _init_l_Int_instCommRing___closed__5();
lean_mark_persistent(l_Int_instCommRing___closed__5);
l_Int_instCommRing = _init_l_Int_instCommRing();
lean_mark_persistent(l_Int_instCommRing);
l_Int_instCancelCommMonoidWithZero___closed__1 = _init_l_Int_instCancelCommMonoidWithZero___closed__1();
lean_mark_persistent(l_Int_instCancelCommMonoidWithZero___closed__1);
l_Int_instCancelCommMonoidWithZero = _init_l_Int_instCancelCommMonoidWithZero();
lean_mark_persistent(l_Int_instCancelCommMonoidWithZero);
l_Int_instCommSemiring = _init_l_Int_instCommSemiring();
lean_mark_persistent(l_Int_instCommSemiring);
l_Int_instSemiring = _init_l_Int_instSemiring();
lean_mark_persistent(l_Int_instSemiring);
l_Int_instRing = _init_l_Int_instRing();
lean_mark_persistent(l_Int_instRing);
l_Int_instDistrib___closed__1 = _init_l_Int_instDistrib___closed__1();
lean_mark_persistent(l_Int_instDistrib___closed__1);
l_Int_instDistrib___closed__2 = _init_l_Int_instDistrib___closed__2();
lean_mark_persistent(l_Int_instDistrib___closed__2);
l_Int_instDistrib___closed__3 = _init_l_Int_instDistrib___closed__3();
lean_mark_persistent(l_Int_instDistrib___closed__3);
l_Int_instDistrib = _init_l_Int_instDistrib();
lean_mark_persistent(l_Int_instDistrib);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
