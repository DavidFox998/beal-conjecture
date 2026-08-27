// Lean compiler output
// Module: Beal.B05_HasseWiles
// Imports: Init Beal.B05_HasseWiles_Core Mathlib.Data.Nat.Prime.Basic Mathlib.Tactic Beal.B04_Modular
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
static lean_object* l_BealHasseWiles_a143___closed__4;
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_BealHasseWiles_a143___boxed(lean_object*);
static lean_object* l_BealHasseWiles_a143___closed__3;
static lean_object* l_BealHasseWiles_a143___closed__6;
LEAN_EXPORT lean_object* l_BealHasseWiles_a143(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_BealHasseWiles_a143___closed__2;
static lean_object* l_BealHasseWiles_a143___closed__1;
lean_object* lean_int_neg(lean_object*);
static lean_object* l_BealHasseWiles_a143___closed__5;
static lean_object* _init_l_BealHasseWiles_a143___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_BealHasseWiles_a143___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(4u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_BealHasseWiles_a143___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_BealHasseWiles_a143___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_BealHasseWiles_a143___closed__3;
x_2 = lean_int_neg(x_1);
return x_2;
}
}
static lean_object* _init_l_BealHasseWiles_a143___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_BealHasseWiles_a143___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_BealHasseWiles_a143___closed__5;
x_2 = lean_int_neg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_BealHasseWiles_a143(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(2u);
x_3 = lean_nat_dec_eq(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(3u);
x_5 = lean_nat_dec_eq(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(5u);
x_7 = lean_nat_dec_eq(x_1, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(7u);
x_9 = lean_nat_dec_eq(x_1, x_8);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_unsigned_to_nat(11u);
x_11 = lean_nat_dec_eq(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_unsigned_to_nat(13u);
x_13 = lean_nat_dec_eq(x_1, x_12);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_unsigned_to_nat(17u);
x_15 = lean_nat_dec_eq(x_1, x_14);
if (x_15 == 0)
{
lean_object* x_16; uint8_t x_17; 
x_16 = lean_unsigned_to_nat(19u);
x_17 = lean_nat_dec_eq(x_1, x_16);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = l_BealHasseWiles_a143___closed__1;
return x_18;
}
else
{
lean_object* x_19; 
x_19 = l_BealHasseWiles_a143___closed__2;
return x_19;
}
}
else
{
lean_object* x_20; 
x_20 = l_BealHasseWiles_a143___closed__4;
return x_20;
}
}
else
{
lean_object* x_21; 
x_21 = l_BealHasseWiles_a143___closed__1;
return x_21;
}
}
else
{
lean_object* x_22; 
x_22 = l_BealHasseWiles_a143___closed__1;
return x_22;
}
}
else
{
lean_object* x_23; 
x_23 = l_BealHasseWiles_a143___closed__4;
return x_23;
}
}
else
{
lean_object* x_24; 
x_24 = l_BealHasseWiles_a143___closed__5;
return x_24;
}
}
else
{
lean_object* x_25; 
x_25 = l_BealHasseWiles_a143___closed__6;
return x_25;
}
}
else
{
lean_object* x_26; 
x_26 = l_BealHasseWiles_a143___closed__4;
return x_26;
}
}
}
LEAN_EXPORT lean_object* l_BealHasseWiles_a143___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_BealHasseWiles_a143(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B05__HasseWiles__Core(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Prime_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B04__Modular(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B05__HasseWiles(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B05__HasseWiles__Core(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Prime_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B04__Modular(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_BealHasseWiles_a143___closed__1 = _init_l_BealHasseWiles_a143___closed__1();
lean_mark_persistent(l_BealHasseWiles_a143___closed__1);
l_BealHasseWiles_a143___closed__2 = _init_l_BealHasseWiles_a143___closed__2();
lean_mark_persistent(l_BealHasseWiles_a143___closed__2);
l_BealHasseWiles_a143___closed__3 = _init_l_BealHasseWiles_a143___closed__3();
lean_mark_persistent(l_BealHasseWiles_a143___closed__3);
l_BealHasseWiles_a143___closed__4 = _init_l_BealHasseWiles_a143___closed__4();
lean_mark_persistent(l_BealHasseWiles_a143___closed__4);
l_BealHasseWiles_a143___closed__5 = _init_l_BealHasseWiles_a143___closed__5();
lean_mark_persistent(l_BealHasseWiles_a143___closed__5);
l_BealHasseWiles_a143___closed__6 = _init_l_BealHasseWiles_a143___closed__6();
lean_mark_persistent(l_BealHasseWiles_a143___closed__6);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
