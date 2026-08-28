// Lean compiler output
// Module: Beal.B02_Frey_Core
// Imports: Init
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
lean_object* lean_nat_to_int(lean_object*);
lean_object* l_Int_pow(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_FreyDeltaCore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_int_mul(lean_object*, lean_object*);
static lean_object* l_FreyDeltaCore___closed__2;
LEAN_EXPORT lean_object* l_FreyDeltaCore___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_FreyDeltaCore___closed__1;
lean_object* lean_int_neg(lean_object*);
static lean_object* _init_l_FreyDeltaCore___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(16u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_FreyDeltaCore___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_FreyDeltaCore___closed__1;
x_2 = lean_int_neg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_FreyDeltaCore(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_7 = lean_nat_to_int(x_1);
x_8 = l_Int_pow(x_7, x_4);
lean_dec(x_7);
x_9 = lean_nat_to_int(x_2);
x_10 = l_Int_pow(x_9, x_5);
lean_dec(x_9);
x_11 = lean_int_mul(x_8, x_10);
lean_dec(x_10);
lean_dec(x_8);
x_12 = lean_nat_to_int(x_3);
x_13 = l_Int_pow(x_12, x_6);
lean_dec(x_12);
x_14 = lean_int_mul(x_11, x_13);
lean_dec(x_13);
lean_dec(x_11);
x_15 = lean_unsigned_to_nat(2u);
x_16 = l_Int_pow(x_14, x_15);
lean_dec(x_14);
x_17 = l_FreyDeltaCore___closed__2;
x_18 = lean_int_mul(x_17, x_16);
lean_dec(x_16);
return x_18;
}
}
LEAN_EXPORT lean_object* l_FreyDeltaCore___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_FreyDeltaCore(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B02__Frey__Core(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_FreyDeltaCore___closed__1 = _init_l_FreyDeltaCore___closed__1();
lean_mark_persistent(l_FreyDeltaCore___closed__1);
l_FreyDeltaCore___closed__2 = _init_l_FreyDeltaCore___closed__2();
lean_mark_persistent(l_FreyDeltaCore___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
