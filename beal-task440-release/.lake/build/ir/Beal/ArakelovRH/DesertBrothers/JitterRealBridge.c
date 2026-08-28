// Lean compiler output
// Module: Beal.ArakelovRH.DesertBrothers.JitterRealBridge
// Imports: Init Beal.ArakelovRH.DesertBrothers.JitterInterface Mathlib.Data.Real.Basic Mathlib.Tactic.FieldSimp Mathlib.Tactic.Linarith Mathlib.Tactic.NormNum
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
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fixedPointQuotient___boxed(lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
extern lean_object* l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fixedPointQuotient(lean_object*);
extern lean_object* l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator;
lean_object* lean_nat_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fixedPointQuotient(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator;
x_3 = lean_nat_mul(x_1, x_2);
x_4 = l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator;
x_5 = lean_nat_div(x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fixedPointQuotient___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Beal_ArakelovRH_DesertBrothers_fixedPointQuotient(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_ArakelovRH_DesertBrothers_JitterInterface(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Real_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_FieldSimp(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linarith(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_NormNum(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_ArakelovRH_DesertBrothers_JitterRealBridge(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_ArakelovRH_DesertBrothers_JitterInterface(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Real_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_FieldSimp(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linarith(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_NormNum(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
