// Lean compiler output
// Module: Mathlib.Data.Nat.Choose.Basic
// Imports: Init Mathlib.Data.Nat.Factorial.Basic Mathlib.Order.Monotone.Basic
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
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter(lean_object*);
LEAN_EXPORT lean_object* l_Nat_choose(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_fast__choose___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_multichoose___boxed(lean_object*, lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
lean_object* l_Nat_factorial(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_choose___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_fast__choose(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_multichoose(lean_object*, lean_object*);
lean_object* l_Nat_descFactorial(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_choose(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = lean_nat_dec_eq(x_1, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_5 = lean_unsigned_to_nat(1u);
x_6 = lean_nat_sub(x_1, x_5);
x_7 = lean_nat_dec_eq(x_2, x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_nat_sub(x_2, x_5);
x_9 = l_Nat_choose(x_6, x_8);
x_10 = lean_nat_add(x_8, x_5);
lean_dec(x_8);
x_11 = l_Nat_choose(x_6, x_10);
lean_dec(x_10);
lean_dec(x_6);
x_12 = lean_nat_add(x_9, x_11);
lean_dec(x_11);
lean_dec(x_9);
return x_12;
}
else
{
lean_object* x_13; 
lean_dec(x_6);
x_13 = lean_unsigned_to_nat(1u);
return x_13;
}
}
else
{
uint8_t x_14; 
x_14 = lean_nat_dec_eq(x_2, x_3);
if (x_14 == 0)
{
lean_object* x_15; 
x_15 = lean_unsigned_to_nat(0u);
return x_15;
}
else
{
lean_object* x_16; 
x_16 = lean_unsigned_to_nat(1u);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_Nat_choose___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_choose(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_1, x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_dec(x_4);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_1, x_8);
x_10 = lean_nat_dec_eq(x_2, x_6);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
lean_dec(x_3);
lean_dec(x_1);
x_11 = lean_nat_sub(x_2, x_8);
x_12 = lean_apply_2(x_5, x_9, x_11);
return x_12;
}
else
{
lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_5);
x_13 = lean_apply_1(x_3, x_1);
return x_13;
}
}
else
{
uint8_t x_14; 
lean_dec(x_5);
lean_dec(x_1);
x_14 = lean_nat_dec_eq(x_2, x_6);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_3);
x_15 = lean_unsigned_to_nat(1u);
x_16 = lean_nat_sub(x_2, x_15);
x_17 = lean_apply_1(x_4, x_16);
return x_17;
}
else
{
lean_object* x_18; 
lean_dec(x_4);
x_18 = lean_apply_1(x_3, x_6);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l___private_Mathlib_Data_Nat_Choose_Basic_0__Nat_choose_match__1_splitter___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nat_fast__choose(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_Nat_descFactorial(x_1, x_2);
x_4 = l_Nat_factorial(x_2);
x_5 = lean_nat_div(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nat_fast__choose___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_fast__choose(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nat_multichoose(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = lean_nat_dec_eq(x_1, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_5 = lean_unsigned_to_nat(1u);
x_6 = lean_nat_sub(x_1, x_5);
x_7 = lean_nat_dec_eq(x_2, x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_nat_sub(x_2, x_5);
x_9 = lean_nat_add(x_8, x_5);
x_10 = l_Nat_multichoose(x_6, x_9);
lean_dec(x_9);
x_11 = lean_nat_add(x_6, x_5);
lean_dec(x_6);
x_12 = l_Nat_multichoose(x_11, x_8);
lean_dec(x_8);
lean_dec(x_11);
x_13 = lean_nat_add(x_10, x_12);
lean_dec(x_12);
lean_dec(x_10);
return x_13;
}
else
{
lean_object* x_14; 
lean_dec(x_6);
x_14 = lean_unsigned_to_nat(1u);
return x_14;
}
}
else
{
uint8_t x_15; 
x_15 = lean_nat_dec_eq(x_2, x_3);
if (x_15 == 0)
{
lean_object* x_16; 
x_16 = lean_unsigned_to_nat(0u);
return x_16;
}
else
{
lean_object* x_17; 
x_17 = lean_unsigned_to_nat(1u);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Nat_multichoose___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_multichoose(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Factorial_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Monotone_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Nat_Choose_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Factorial_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Monotone_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
