// Lean compiler output
// Module: C06_Polarization
// Imports: Init Mathlib
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
lean_object* l_Nat_cast___at_Rat_instOfNat___spec__1(lean_object*);
static lean_object* l_HodgeAbelian_MStar__times__zeta__J0143___closed__2;
static lean_object* l_HodgeAbelian_MStar__times__zeta__J0143___closed__1;
static lean_object* l_HodgeAbelian_MStar__times__zeta__J0143___closed__3;
lean_object* l_Rat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_HodgeAbelian_MStar__times__zeta__J0143;
static lean_object* _init_l_HodgeAbelian_MStar__times__zeta__J0143___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(12u);
x_2 = l_Nat_cast___at_Rat_instOfNat___spec__1(x_1);
return x_2;
}
}
static lean_object* _init_l_HodgeAbelian_MStar__times__zeta__J0143___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(11u);
x_2 = l_Nat_cast___at_Rat_instOfNat___spec__1(x_1);
return x_2;
}
}
static lean_object* _init_l_HodgeAbelian_MStar__times__zeta__J0143___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_HodgeAbelian_MStar__times__zeta__J0143___closed__1;
x_2 = l_HodgeAbelian_MStar__times__zeta__J0143___closed__2;
x_3 = l_Rat_div(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_HodgeAbelian_MStar__times__zeta__J0143() {
_start:
{
lean_object* x_1; 
x_1 = l_HodgeAbelian_MStar__times__zeta__J0143___closed__3;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_C06__Polarization(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_HodgeAbelian_MStar__times__zeta__J0143___closed__1 = _init_l_HodgeAbelian_MStar__times__zeta__J0143___closed__1();
lean_mark_persistent(l_HodgeAbelian_MStar__times__zeta__J0143___closed__1);
l_HodgeAbelian_MStar__times__zeta__J0143___closed__2 = _init_l_HodgeAbelian_MStar__times__zeta__J0143___closed__2();
lean_mark_persistent(l_HodgeAbelian_MStar__times__zeta__J0143___closed__2);
l_HodgeAbelian_MStar__times__zeta__J0143___closed__3 = _init_l_HodgeAbelian_MStar__times__zeta__J0143___closed__3();
lean_mark_persistent(l_HodgeAbelian_MStar__times__zeta__J0143___closed__3);
l_HodgeAbelian_MStar__times__zeta__J0143 = _init_l_HodgeAbelian_MStar__times__zeta__J0143();
lean_mark_persistent(l_HodgeAbelian_MStar__times__zeta__J0143);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
