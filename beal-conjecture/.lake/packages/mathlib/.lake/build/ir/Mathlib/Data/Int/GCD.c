// Lean compiler output
// Module: Mathlib.Data.Int.GCD
// Imports: Init Mathlib.Algebra.Group.Int Mathlib.Algebra.GroupWithZero.Semiconj Mathlib.Algebra.Group.Commute.Units Mathlib.Data.Nat.GCD.Basic Mathlib.Order.Bounds.Basic
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
LEAN_EXPORT lean_object* l_Int_gcdA___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_xgcdAux(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0____private_Mathlib_Data_Int_GCD_0__Nat_P_match__1_splitter___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter(lean_object*);
LEAN_EXPORT lean_object* l_Nat_xgcd(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_gcdA(lean_object*, lean_object*);
lean_object* lean_nat_to_int(lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Nat_xgcd___closed__1;
LEAN_EXPORT lean_object* l_Nat_gcdB(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_gcdB(lean_object*, lean_object*);
lean_object* lean_int_sub(lean_object*, lean_object*);
lean_object* lean_nat_abs(lean_object*);
lean_object* lean_int_mul(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* lean_nat_mod(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_gcdA(lean_object*, lean_object*);
uint8_t lean_int_dec_lt(lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* l_Nat_xgcd___closed__2;
lean_object* lean_int_neg(lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_gcdB___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0____private_Mathlib_Data_Int_GCD_0__Nat_P_match__1_splitter(lean_object*);
LEAN_EXPORT lean_object* l_Nat_xgcdAux(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_eq(x_1, x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_1, x_9);
lean_dec(x_1);
x_11 = lean_nat_add(x_10, x_9);
lean_dec(x_10);
x_12 = lean_nat_div(x_4, x_11);
x_13 = lean_nat_mod(x_4, x_11);
lean_dec(x_4);
x_14 = lean_nat_to_int(x_12);
x_15 = lean_int_mul(x_14, x_2);
x_16 = lean_int_sub(x_5, x_15);
lean_dec(x_15);
lean_dec(x_5);
x_17 = lean_int_mul(x_14, x_3);
lean_dec(x_14);
x_18 = lean_int_sub(x_6, x_17);
lean_dec(x_17);
lean_dec(x_6);
{
lean_object* _tmp_0 = x_13;
lean_object* _tmp_1 = x_16;
lean_object* _tmp_2 = x_18;
lean_object* _tmp_3 = x_11;
lean_object* _tmp_4 = x_2;
lean_object* _tmp_5 = x_3;
x_1 = _tmp_0;
x_2 = _tmp_1;
x_3 = _tmp_2;
x_4 = _tmp_3;
x_5 = _tmp_4;
x_6 = _tmp_5;
}
goto _start;
}
else
{
lean_object* x_20; lean_object* x_21; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_5);
lean_ctor_set(x_20, 1, x_6);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_4);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_eq(x_1, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_7);
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_sub(x_1, x_11);
x_13 = lean_apply_6(x_8, x_12, x_2, x_3, x_4, x_5, x_6);
return x_13;
}
else
{
lean_object* x_14; 
lean_dec(x_8);
x_14 = lean_apply_5(x_7, x_2, x_3, x_4, x_5, x_6);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter___rarg___boxed), 8, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l___private_Mathlib_Data_Int_GCD_0__Nat_xgcdAux_match__1_splitter___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_1);
return x_9;
}
}
static lean_object* _init_l_Nat_xgcd___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Nat_xgcd___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_xgcd(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = l_Nat_xgcd___closed__1;
x_4 = l_Nat_xgcd___closed__2;
x_5 = l_Nat_xgcdAux(x_1, x_3, x_4, x_2, x_4, x_3);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nat_gcdA(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Nat_xgcd(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_gcdB(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Nat_xgcd(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0____private_Mathlib_Data_Int_GCD_0__Nat_P_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
x_7 = lean_apply_3(x_2, x_4, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_GCD_0____private_Mathlib_Data_Int_GCD_0__Nat_P_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Mathlib_Data_Int_GCD_0____private_Mathlib_Data_Int_GCD_0__Nat_P_match__1_splitter___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_gcdA(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Nat_xgcd___closed__2;
x_4 = lean_int_dec_lt(x_1, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_nat_abs(x_1);
x_6 = lean_nat_abs(x_2);
x_7 = l_Nat_gcdA(x_5, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = lean_nat_abs(x_1);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_8, x_9);
lean_dec(x_8);
x_11 = lean_nat_add(x_10, x_9);
lean_dec(x_10);
x_12 = lean_nat_abs(x_2);
x_13 = l_Nat_gcdA(x_11, x_12);
x_14 = lean_int_neg(x_13);
lean_dec(x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Int_gcdA___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_gcdA(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_gcdB(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = l_Nat_xgcd___closed__2;
x_4 = lean_int_dec_lt(x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_nat_abs(x_2);
x_6 = lean_nat_abs(x_1);
x_7 = l_Nat_gcdB(x_6, x_5);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = lean_nat_abs(x_2);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_8, x_9);
lean_dec(x_8);
x_11 = lean_nat_abs(x_1);
x_12 = lean_nat_add(x_10, x_9);
lean_dec(x_10);
x_13 = l_Nat_gcdB(x_11, x_12);
x_14 = lean_int_neg(x_13);
lean_dec(x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Int_gcdB___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_gcdB(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Int(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_GroupWithZero_Semiconj(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Commute_Units(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_GCD_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Bounds_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Int_GCD(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Int(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_GroupWithZero_Semiconj(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Commute_Units(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_GCD_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Bounds_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Nat_xgcd___closed__1 = _init_l_Nat_xgcd___closed__1();
lean_mark_persistent(l_Nat_xgcd___closed__1);
l_Nat_xgcd___closed__2 = _init_l_Nat_xgcd___closed__2();
lean_mark_persistent(l_Nat_xgcd___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
