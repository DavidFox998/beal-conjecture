// Lean compiler output
// Module: Aesop.RuleTac
// Imports: Init Aesop.RuleTac.Apply Aesop.RuleTac.Basic Aesop.RuleTac.Cases Aesop.RuleTac.Forward Aesop.RuleTac.Preprocess Aesop.RuleTac.Tactic
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
lean_object* l_Aesop_RuleTac_applyConsts(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_tacticStx(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_singleRuleTacImpl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_tacGenImpl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_preprocess(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleTacDescr_run(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_cases(lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_ruleTacImpl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_apply(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_tacticMImpl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleTac_forward(lean_object*, lean_object*, lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleTacDescr_run(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 0:
{
lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_ctor_get_uint8(x_1, sizeof(void*)*2);
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_dec(x_1);
x_11 = l_Aesop_RuleTac_apply(x_8, x_10, x_9, x_2, x_3, x_4, x_5, x_6, x_7);
return x_11;
}
case 1:
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
x_13 = lean_ctor_get_uint8(x_1, sizeof(void*)*1);
lean_dec(x_1);
x_14 = l_Aesop_RuleTac_applyConsts(x_12, x_13, x_2, x_3, x_4, x_5, x_6, x_7);
return x_14;
}
case 2:
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; uint8_t x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_1, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_1, 1);
lean_inc(x_16);
x_17 = lean_ctor_get(x_1, 2);
lean_inc(x_17);
x_18 = lean_ctor_get_uint8(x_1, sizeof(void*)*3);
x_19 = lean_ctor_get_uint8(x_1, sizeof(void*)*3 + 1);
lean_dec(x_1);
x_20 = l_Aesop_RuleTac_forward(x_15, x_16, x_17, x_18, x_19, x_2, x_3, x_4, x_5, x_6, x_7);
return x_20;
}
case 3:
{
lean_object* x_21; uint8_t x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; 
x_21 = lean_ctor_get(x_1, 0);
lean_inc(x_21);
x_22 = lean_ctor_get_uint8(x_1, sizeof(void*)*2);
x_23 = lean_ctor_get_uint8(x_1, sizeof(void*)*2 + 1);
x_24 = lean_ctor_get(x_1, 1);
lean_inc(x_24);
lean_dec(x_1);
x_25 = l_Aesop_RuleTac_cases(x_21, x_22, x_23, x_24, x_2, x_3, x_4, x_5, x_6, x_7);
return x_25;
}
case 4:
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_1, 0);
lean_inc(x_26);
lean_dec(x_1);
x_27 = l_Aesop_RuleTac_tacticMImpl(x_26, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_26);
return x_27;
}
case 5:
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_1, 0);
lean_inc(x_28);
lean_dec(x_1);
x_29 = l_Aesop_RuleTac_ruleTacImpl(x_28, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_28);
return x_29;
}
case 6:
{
lean_object* x_30; lean_object* x_31; 
x_30 = lean_ctor_get(x_1, 0);
lean_inc(x_30);
lean_dec(x_1);
x_31 = l_Aesop_RuleTac_tacGenImpl(x_30, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_30);
return x_31;
}
case 7:
{
lean_object* x_32; lean_object* x_33; 
x_32 = lean_ctor_get(x_1, 0);
lean_inc(x_32);
lean_dec(x_1);
x_33 = l_Aesop_RuleTac_singleRuleTacImpl(x_32, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_32);
return x_33;
}
case 8:
{
lean_object* x_34; lean_object* x_35; 
x_34 = lean_ctor_get(x_1, 0);
lean_inc(x_34);
lean_dec(x_1);
x_35 = l_Aesop_RuleTac_tacticStx(x_34, x_2, x_3, x_4, x_5, x_6, x_7);
return x_35;
}
default: 
{
lean_object* x_36; 
x_36 = l_Aesop_RuleTac_preprocess(x_2, x_3, x_4, x_5, x_6, x_7);
return x_36;
}
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Apply(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Cases(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Forward(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Preprocess(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Tactic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_RuleTac(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Apply(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Cases(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Forward(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Preprocess(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Tactic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
