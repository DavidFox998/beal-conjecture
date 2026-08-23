// Lean compiler output
// Module: Mathlib.Data.Int.Defs
// Imports: Init Mathlib.Data.Int.Notation Mathlib.Data.Nat.Defs Mathlib.Algebra.Group.ZeroOne Mathlib.Logic.Nontrivial.Defs Mathlib.Tactic.Convert Mathlib.Tactic.Lift
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
LEAN_EXPORT lean_object* l_Int_succ___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_neg___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_strongRec(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_neg(lean_object*);
LEAN_EXPORT lean_object* l_Int_pred(lean_object*);
lean_object* lean_int_emod(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_pos(lean_object*);
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_Int_natMod___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_negInduction___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_pos___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter___rarg___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Int_strongRec___closed__1;
lean_object* lean_int_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_pos___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_abs(lean_object*);
LEAN_EXPORT lean_object* l_Int_succ(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter(lean_object*);
lean_object* l_Int_toNat(lean_object*);
uint8_t lean_int_dec_lt(lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_negInduction(lean_object*);
lean_object* lean_int_neg_succ_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27(lean_object*);
LEAN_EXPORT lean_object* l_Int_pred___boxed(lean_object*);
static lean_object* l_Int_succ___closed__1;
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_int_add(lean_object*, lean_object*);
static lean_object* l_Int_inductionOn_x27___rarg___closed__1;
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_negInduction___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_natMod(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_neg___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Int_succ___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_succ(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Int_succ___closed__1;
x_3 = lean_int_add(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_succ___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Int_succ(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_pred(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Int_succ___closed__1;
x_3 = lean_int_sub(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_pred___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Int_pred(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_pos___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_eq(x_4, x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_sub(x_4, x_7);
lean_inc(x_8);
x_9 = lean_nat_to_int(x_8);
x_10 = lean_int_add(x_1, x_9);
lean_dec(x_9);
lean_inc(x_3);
x_11 = l_Int_inductionOn_x27_pos___rarg(x_1, x_2, x_3, x_8);
lean_dec(x_8);
x_12 = lean_apply_3(x_3, x_10, lean_box(0), x_11);
return x_12;
}
else
{
lean_dec(x_3);
lean_inc(x_2);
return x_2;
}
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_pos(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Int_inductionOn_x27_pos___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_pos___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Int_inductionOn_x27_pos___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_neg___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_eq(x_4, x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_sub(x_4, x_7);
lean_inc(x_8);
x_9 = lean_int_neg_succ_of_nat(x_8);
x_10 = lean_int_add(x_1, x_9);
lean_dec(x_9);
lean_inc(x_3);
x_11 = l_Int_inductionOn_x27_neg___rarg(x_1, x_2, x_3, x_8);
lean_dec(x_8);
x_12 = lean_apply_3(x_3, x_10, lean_box(0), x_11);
return x_12;
}
else
{
lean_object* x_13; 
x_13 = lean_apply_3(x_3, x_1, lean_box(0), x_2);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_neg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Int_inductionOn_x27_neg___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27_neg___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Int_inductionOn_x27_neg___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
static lean_object* _init_l_Int_inductionOn_x27___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_6 = lean_int_sub(x_1, x_2);
x_7 = l_Int_inductionOn_x27___rarg___closed__1;
x_8 = lean_int_dec_lt(x_6, x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; 
lean_dec(x_5);
x_9 = lean_nat_abs(x_6);
lean_dec(x_6);
x_10 = l_Int_inductionOn_x27_pos___rarg(x_2, x_3, x_4, x_9);
lean_dec(x_9);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_4);
x_11 = lean_nat_abs(x_6);
lean_dec(x_6);
x_12 = lean_unsigned_to_nat(1u);
x_13 = lean_nat_sub(x_11, x_12);
lean_dec(x_11);
x_14 = l_Int_inductionOn_x27_neg___rarg(x_2, x_3, x_5, x_13);
lean_dec(x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Int_inductionOn_x27___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_inductionOn_x27___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Int_inductionOn_x27___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_Int_inductionOn_x27___rarg___closed__1;
x_5 = lean_int_dec_lt(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_3);
x_6 = lean_nat_abs(x_1);
x_7 = lean_apply_1(x_2, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
lean_dec(x_2);
x_8 = lean_nat_abs(x_1);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_8, x_9);
lean_dec(x_8);
x_11 = lean_apply_1(x_3, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Mathlib_Data_Int_Defs_0__Int_inductionOn_x27_match__1_splitter___rarg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Int_negInduction___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_Int_inductionOn_x27___rarg___closed__1;
x_5 = lean_int_dec_lt(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_2);
x_6 = lean_nat_abs(x_3);
x_7 = lean_apply_1(x_1, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_8 = lean_nat_abs(x_3);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_8, x_9);
lean_dec(x_8);
x_11 = lean_nat_add(x_10, x_9);
lean_dec(x_10);
lean_inc(x_11);
x_12 = lean_apply_1(x_1, x_11);
x_13 = lean_apply_2(x_2, x_11, x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Int_negInduction(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Int_negInduction___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_negInduction___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Int_negInduction___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_2, lean_box(0));
return x_4;
}
}
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = lean_int_dec_lt(x_7, x_1);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
lean_dec(x_3);
x_10 = lean_alloc_closure((void*)(l_Int_strongRec___lambda__1), 3, 1);
lean_closure_set(x_10, 0, x_6);
x_11 = lean_apply_3(x_2, x_7, lean_box(0), x_10);
return x_11;
}
else
{
lean_object* x_12; 
lean_dec(x_6);
lean_dec(x_2);
x_12 = lean_apply_2(x_3, x_7, lean_box(0));
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_apply_2(x_3, x_4, lean_box(0));
return x_6;
}
}
static lean_object* _init_l_Int_strongRec___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_strongRec___lambda__3___boxed), 5, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Int_strongRec(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_int_dec_lt(x_5, x_1);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_inc(x_3);
lean_inc(x_4);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Int_strongRec___lambda__2___boxed), 8, 3);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_4);
lean_closure_set(x_7, 2, x_3);
x_8 = l_Int_strongRec___closed__1;
x_9 = l_Int_inductionOn_x27___rarg(x_5, x_1, x_3, x_7, x_8);
x_10 = lean_apply_3(x_4, x_5, lean_box(0), x_9);
return x_10;
}
else
{
lean_object* x_11; 
lean_dec(x_4);
lean_dec(x_1);
x_11 = lean_apply_2(x_3, x_5, lean_box(0));
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Int_strongRec___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_4);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Int_strongRec___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Int_strongRec___lambda__3(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Int_natMod(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_int_emod(x_1, x_2);
x_4 = l_Int_toNat(x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Int_natMod___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_natMod(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Int_Notation(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_ZeroOne(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Nontrivial_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Convert(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Lift(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Int_Defs(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Int_Notation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_ZeroOne(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Nontrivial_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Convert(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Lift(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Int_succ___closed__1 = _init_l_Int_succ___closed__1();
lean_mark_persistent(l_Int_succ___closed__1);
l_Int_inductionOn_x27___rarg___closed__1 = _init_l_Int_inductionOn_x27___rarg___closed__1();
lean_mark_persistent(l_Int_inductionOn_x27___rarg___closed__1);
l_Int_strongRec___closed__1 = _init_l_Int_strongRec___closed__1();
lean_mark_persistent(l_Int_strongRec___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
