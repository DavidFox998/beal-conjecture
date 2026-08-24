// Lean compiler output
// Module: Beal.B14_FreyTate
// Imports: Init Mathlib.Data.ZMod.Basic Mathlib.NumberTheory.LegendreSymbol.Basic Mathlib.FieldTheory.Finite.Basic Mathlib.Data.Nat.Factors Mathlib.Tactic Beal.B01_Def
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
LEAN_EXPORT lean_object* l_Beal_FreyTate_b2__Frey(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_c4__Frey___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Beal_FreyTate_c4__Frey___closed__1;
lean_object* lean_nat_to_int(lean_object*);
lean_object* l_Int_pow(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_b4__Frey(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_b4__Frey___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_b2__Frey___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Beal_FreyTate_b2__Frey___closed__1;
lean_object* lean_int_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_disc__Frey___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_int_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_disc__Frey(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_FreyTate_c4__Frey(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_int_add(lean_object*, lean_object*);
lean_object* lean_int_neg(lean_object*);
static lean_object* l_Beal_FreyTate_b4__Frey___closed__1;
static lean_object* _init_l_Beal_FreyTate_b2__Frey___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(4u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_b2__Frey(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = l_Int_pow(x_2, x_4);
x_6 = l_Int_pow(x_1, x_3);
x_7 = lean_int_sub(x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
x_8 = l_Beal_FreyTate_b2__Frey___closed__1;
x_9 = lean_int_mul(x_8, x_7);
lean_dec(x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_b2__Frey___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Beal_FreyTate_b2__Frey(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
static lean_object* _init_l_Beal_FreyTate_b4__Frey___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_b4__Frey(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_5 = l_Int_pow(x_1, x_3);
x_6 = l_Beal_FreyTate_b4__Frey___closed__1;
x_7 = lean_int_mul(x_6, x_5);
lean_dec(x_5);
x_8 = l_Int_pow(x_2, x_4);
x_9 = lean_int_mul(x_7, x_8);
lean_dec(x_8);
lean_dec(x_7);
x_10 = lean_int_neg(x_9);
lean_dec(x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_b4__Frey___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Beal_FreyTate_b4__Frey(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
static lean_object* _init_l_Beal_FreyTate_c4__Frey___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(16u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_c4__Frey(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_5 = l_Int_pow(x_1, x_3);
x_6 = lean_unsigned_to_nat(2u);
x_7 = l_Int_pow(x_5, x_6);
x_8 = l_Int_pow(x_2, x_4);
x_9 = lean_int_mul(x_5, x_8);
lean_dec(x_5);
x_10 = lean_int_add(x_7, x_9);
lean_dec(x_9);
lean_dec(x_7);
x_11 = l_Int_pow(x_8, x_6);
lean_dec(x_8);
x_12 = lean_int_add(x_10, x_11);
lean_dec(x_11);
lean_dec(x_10);
x_13 = l_Beal_FreyTate_c4__Frey___closed__1;
x_14 = lean_int_mul(x_13, x_12);
lean_dec(x_12);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_c4__Frey___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Beal_FreyTate_c4__Frey(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_disc__Frey(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_7 = l_Int_pow(x_1, x_4);
x_8 = lean_unsigned_to_nat(2u);
x_9 = l_Int_pow(x_7, x_8);
lean_dec(x_7);
x_10 = l_Beal_FreyTate_c4__Frey___closed__1;
x_11 = lean_int_mul(x_10, x_9);
lean_dec(x_9);
x_12 = l_Int_pow(x_2, x_5);
x_13 = l_Int_pow(x_12, x_8);
lean_dec(x_12);
x_14 = lean_int_mul(x_11, x_13);
lean_dec(x_13);
lean_dec(x_11);
x_15 = l_Int_pow(x_3, x_6);
x_16 = l_Int_pow(x_15, x_8);
lean_dec(x_15);
x_17 = lean_int_mul(x_14, x_16);
lean_dec(x_16);
lean_dec(x_14);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Beal_FreyTate_disc__Frey___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Beal_FreyTate_disc__Frey(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_ZMod_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_NumberTheory_LegendreSymbol_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_FieldTheory_Finite_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Factors(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B01__Def(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B14__FreyTate(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_ZMod_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_NumberTheory_LegendreSymbol_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_FieldTheory_Finite_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Factors(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B01__Def(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Beal_FreyTate_b2__Frey___closed__1 = _init_l_Beal_FreyTate_b2__Frey___closed__1();
lean_mark_persistent(l_Beal_FreyTate_b2__Frey___closed__1);
l_Beal_FreyTate_b4__Frey___closed__1 = _init_l_Beal_FreyTate_b4__Frey___closed__1();
lean_mark_persistent(l_Beal_FreyTate_b4__Frey___closed__1);
l_Beal_FreyTate_c4__Frey___closed__1 = _init_l_Beal_FreyTate_c4__Frey___closed__1();
lean_mark_persistent(l_Beal_FreyTate_c4__Frey___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
