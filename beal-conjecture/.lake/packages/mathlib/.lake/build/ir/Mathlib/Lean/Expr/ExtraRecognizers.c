// Lean compiler output
// Module: Mathlib.Lean.Expr.ExtraRecognizers
// Imports: Init Mathlib.Data.Set.Operations
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
lean_object* l___private_Lean_Expr_0__Lean_Expr_getAppNumArgsAux(lean_object*, lean_object*);
uint8_t l_Lean_Expr_isAppOfArity(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_sort___override(lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__1;
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__11;
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__6;
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* l_Lean_Expr_appArg_x21(lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__5;
extern lean_object* l_Lean_levelZero;
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__9;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_coeTypeSet_x3f___boxed(lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__8;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__4;
lean_object* l___private_Lean_Expr_0__Lean_Expr_getAppArgsAux(lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__7;
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__10;
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__2;
LEAN_EXPORT lean_object* l_Lean_Expr_coeTypeSet_x3f(lean_object*);
static lean_object* l_Lean_Expr_coeTypeSet_x3f___closed__3;
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Set", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Elem", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_Expr_coeTypeSet_x3f___closed__1;
x_2 = l_Lean_Expr_coeTypeSet_x3f___closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Subtype", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Expr_coeTypeSet_x3f___closed__4;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Membership", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("mem", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_Expr_coeTypeSet_x3f___closed__6;
x_2 = l_Lean_Expr_coeTypeSet_x3f___closed__7;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_levelZero;
x_2 = l_Lean_Expr_sort___override(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("instMembership", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_coeTypeSet_x3f___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_Expr_coeTypeSet_x3f___closed__1;
x_2 = l_Lean_Expr_coeTypeSet_x3f___closed__10;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_coeTypeSet_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Lean_Expr_coeTypeSet_x3f___closed__3;
x_3 = lean_unsigned_to_nat(2u);
x_4 = l_Lean_Expr_isAppOfArity(x_1, x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; uint8_t x_6; 
x_5 = l_Lean_Expr_coeTypeSet_x3f___closed__5;
x_6 = l_Lean_Expr_isAppOfArity(x_1, x_5, x_3);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_box(0);
return x_7;
}
else
{
lean_object* x_8; 
x_8 = l_Lean_Expr_appArg_x21(x_1);
if (lean_obj_tag(x_8) == 6)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_9 = lean_ctor_get(x_8, 2);
lean_inc(x_9);
lean_dec(x_8);
x_10 = l_Lean_Expr_coeTypeSet_x3f___closed__8;
x_11 = lean_unsigned_to_nat(5u);
x_12 = l_Lean_Expr_isAppOfArity(x_9, x_10, x_11);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_9);
x_13 = lean_box(0);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_14 = lean_unsigned_to_nat(0u);
x_15 = l___private_Lean_Expr_0__Lean_Expr_getAppNumArgsAux(x_9, x_14);
x_16 = l_Lean_Expr_coeTypeSet_x3f___closed__9;
lean_inc(x_15);
x_17 = lean_mk_array(x_15, x_16);
x_18 = lean_unsigned_to_nat(1u);
x_19 = lean_nat_sub(x_15, x_18);
lean_dec(x_15);
x_20 = l___private_Lean_Expr_0__Lean_Expr_getAppArgsAux(x_9, x_17, x_19);
x_21 = lean_array_get_size(x_20);
x_22 = lean_nat_dec_eq(x_21, x_11);
lean_dec(x_21);
if (x_22 == 0)
{
lean_object* x_23; 
lean_dec(x_20);
x_23 = lean_box(0);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_unsigned_to_nat(3u);
x_25 = lean_array_fget(x_20, x_24);
if (lean_obj_tag(x_25) == 0)
{
lean_object* x_26; uint8_t x_27; 
x_26 = lean_ctor_get(x_25, 0);
lean_inc(x_26);
lean_dec(x_25);
x_27 = lean_nat_dec_eq(x_26, x_14);
lean_dec(x_26);
if (x_27 == 0)
{
lean_object* x_28; 
lean_dec(x_20);
x_28 = lean_box(0);
return x_28;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_29 = lean_array_fget(x_20, x_3);
x_30 = lean_unsigned_to_nat(4u);
x_31 = lean_array_fget(x_20, x_30);
lean_dec(x_20);
x_32 = l_Lean_Expr_coeTypeSet_x3f___closed__11;
x_33 = l_Lean_Expr_isAppOfArity(x_29, x_32, x_18);
lean_dec(x_29);
if (x_33 == 0)
{
lean_object* x_34; 
lean_dec(x_31);
x_34 = lean_box(0);
return x_34;
}
else
{
lean_object* x_35; 
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_31);
return x_35;
}
}
}
else
{
lean_object* x_36; 
lean_dec(x_25);
lean_dec(x_20);
x_36 = lean_box(0);
return x_36;
}
}
}
}
else
{
lean_object* x_37; 
lean_dec(x_8);
x_37 = lean_box(0);
return x_37;
}
}
}
else
{
lean_object* x_38; lean_object* x_39; 
x_38 = l_Lean_Expr_appArg_x21(x_1);
x_39 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_39, 0, x_38);
return x_39;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_coeTypeSet_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Expr_coeTypeSet_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Set_Operations(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Lean_Expr_ExtraRecognizers(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Set_Operations(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_Expr_coeTypeSet_x3f___closed__1 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__1();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__1);
l_Lean_Expr_coeTypeSet_x3f___closed__2 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__2();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__2);
l_Lean_Expr_coeTypeSet_x3f___closed__3 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__3();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__3);
l_Lean_Expr_coeTypeSet_x3f___closed__4 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__4();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__4);
l_Lean_Expr_coeTypeSet_x3f___closed__5 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__5();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__5);
l_Lean_Expr_coeTypeSet_x3f___closed__6 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__6();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__6);
l_Lean_Expr_coeTypeSet_x3f___closed__7 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__7();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__7);
l_Lean_Expr_coeTypeSet_x3f___closed__8 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__8();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__8);
l_Lean_Expr_coeTypeSet_x3f___closed__9 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__9();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__9);
l_Lean_Expr_coeTypeSet_x3f___closed__10 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__10();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__10);
l_Lean_Expr_coeTypeSet_x3f___closed__11 = _init_l_Lean_Expr_coeTypeSet_x3f___closed__11();
lean_mark_persistent(l_Lean_Expr_coeTypeSet_x3f___closed__11);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
