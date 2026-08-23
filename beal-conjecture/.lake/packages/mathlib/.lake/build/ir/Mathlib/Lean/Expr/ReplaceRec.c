// Lean compiler output
// Module: Mathlib.Lean.Expr.ReplaceRec
// Imports: Init Lean.Expr Mathlib.Util.MemoFix
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
LEAN_EXPORT lean_object* l_Lean_Expr_replaceRec(lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
lean_object* l_Lean_Expr_mdata___override(lean_object*, lean_object*);
lean_object* l_Lean_Expr_proj___override(lean_object*, lean_object*, lean_object*);
size_t lean_ptr_addr(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_replaceRec___lambda__1(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_forallE___override(lean_object*, lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Lean_Expr_traverseChildren___at_Lean_Expr_replaceRec___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_Expr_letE___override(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
lean_object* l_Lean_Expr_app___override(lean_object*, lean_object*);
uint8_t l___private_Lean_Expr_0__Lean_beqBinderInfo____x40_Lean_Expr___hyg_404_(uint8_t, uint8_t);
lean_object* l_Lean_Expr_lam___override(lean_object*, lean_object*, lean_object*, uint8_t);
lean_object* l___private_Mathlib_Util_MemoFix_0__memoFixImplObj(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_traverseChildren___at_Lean_Expr_replaceRec___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 5:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; size_t x_7; size_t x_8; uint8_t x_9; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_inc(x_1);
lean_inc(x_3);
x_5 = lean_apply_1(x_1, x_3);
lean_inc(x_4);
x_6 = lean_apply_1(x_1, x_4);
x_7 = lean_ptr_addr(x_3);
lean_dec(x_3);
x_8 = lean_ptr_addr(x_5);
x_9 = lean_usize_dec_eq(x_7, x_8);
if (x_9 == 0)
{
lean_object* x_10; 
lean_dec(x_4);
lean_dec(x_2);
x_10 = l_Lean_Expr_app___override(x_5, x_6);
return x_10;
}
else
{
size_t x_11; size_t x_12; uint8_t x_13; 
x_11 = lean_ptr_addr(x_4);
lean_dec(x_4);
x_12 = lean_ptr_addr(x_6);
x_13 = lean_usize_dec_eq(x_11, x_12);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_2);
x_14 = l_Lean_Expr_app___override(x_5, x_6);
return x_14;
}
else
{
lean_dec(x_6);
lean_dec(x_5);
return x_2;
}
}
}
case 6:
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; size_t x_22; size_t x_23; uint8_t x_24; 
x_15 = lean_ctor_get(x_2, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
x_17 = lean_ctor_get(x_2, 2);
lean_inc(x_17);
x_18 = lean_ctor_get_uint8(x_2, sizeof(void*)*3 + 8);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_16);
x_19 = lean_apply_1(x_1, x_16);
lean_inc(x_17);
x_20 = lean_apply_1(x_1, x_17);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
x_21 = l_Lean_Expr_lam___override(x_15, x_16, x_17, x_18);
x_22 = lean_ptr_addr(x_16);
lean_dec(x_16);
x_23 = lean_ptr_addr(x_19);
x_24 = lean_usize_dec_eq(x_22, x_23);
if (x_24 == 0)
{
lean_object* x_25; 
lean_dec(x_21);
lean_dec(x_17);
x_25 = l_Lean_Expr_lam___override(x_15, x_19, x_20, x_18);
return x_25;
}
else
{
size_t x_26; size_t x_27; uint8_t x_28; 
x_26 = lean_ptr_addr(x_17);
lean_dec(x_17);
x_27 = lean_ptr_addr(x_20);
x_28 = lean_usize_dec_eq(x_26, x_27);
if (x_28 == 0)
{
lean_object* x_29; 
lean_dec(x_21);
x_29 = l_Lean_Expr_lam___override(x_15, x_19, x_20, x_18);
return x_29;
}
else
{
uint8_t x_30; 
x_30 = l___private_Lean_Expr_0__Lean_beqBinderInfo____x40_Lean_Expr___hyg_404_(x_18, x_18);
if (x_30 == 0)
{
lean_object* x_31; 
lean_dec(x_21);
x_31 = l_Lean_Expr_lam___override(x_15, x_19, x_20, x_18);
return x_31;
}
else
{
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_15);
return x_21;
}
}
}
}
case 7:
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; uint8_t x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; size_t x_39; size_t x_40; uint8_t x_41; 
x_32 = lean_ctor_get(x_2, 0);
lean_inc(x_32);
x_33 = lean_ctor_get(x_2, 1);
lean_inc(x_33);
x_34 = lean_ctor_get(x_2, 2);
lean_inc(x_34);
x_35 = lean_ctor_get_uint8(x_2, sizeof(void*)*3 + 8);
lean_dec(x_2);
lean_inc(x_1);
lean_inc(x_33);
x_36 = lean_apply_1(x_1, x_33);
lean_inc(x_34);
x_37 = lean_apply_1(x_1, x_34);
lean_inc(x_34);
lean_inc(x_33);
lean_inc(x_32);
x_38 = l_Lean_Expr_forallE___override(x_32, x_33, x_34, x_35);
x_39 = lean_ptr_addr(x_33);
lean_dec(x_33);
x_40 = lean_ptr_addr(x_36);
x_41 = lean_usize_dec_eq(x_39, x_40);
if (x_41 == 0)
{
lean_object* x_42; 
lean_dec(x_38);
lean_dec(x_34);
x_42 = l_Lean_Expr_forallE___override(x_32, x_36, x_37, x_35);
return x_42;
}
else
{
size_t x_43; size_t x_44; uint8_t x_45; 
x_43 = lean_ptr_addr(x_34);
lean_dec(x_34);
x_44 = lean_ptr_addr(x_37);
x_45 = lean_usize_dec_eq(x_43, x_44);
if (x_45 == 0)
{
lean_object* x_46; 
lean_dec(x_38);
x_46 = l_Lean_Expr_forallE___override(x_32, x_36, x_37, x_35);
return x_46;
}
else
{
uint8_t x_47; 
x_47 = l___private_Lean_Expr_0__Lean_beqBinderInfo____x40_Lean_Expr___hyg_404_(x_35, x_35);
if (x_47 == 0)
{
lean_object* x_48; 
lean_dec(x_38);
x_48 = l_Lean_Expr_forallE___override(x_32, x_36, x_37, x_35);
return x_48;
}
else
{
lean_dec(x_37);
lean_dec(x_36);
lean_dec(x_32);
return x_38;
}
}
}
}
case 8:
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; uint8_t x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; size_t x_57; size_t x_58; uint8_t x_59; 
x_49 = lean_ctor_get(x_2, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_2, 1);
lean_inc(x_50);
x_51 = lean_ctor_get(x_2, 2);
lean_inc(x_51);
x_52 = lean_ctor_get(x_2, 3);
lean_inc(x_52);
x_53 = lean_ctor_get_uint8(x_2, sizeof(void*)*4 + 8);
lean_inc(x_1);
lean_inc(x_50);
x_54 = lean_apply_1(x_1, x_50);
lean_inc(x_1);
lean_inc(x_51);
x_55 = lean_apply_1(x_1, x_51);
lean_inc(x_52);
x_56 = lean_apply_1(x_1, x_52);
x_57 = lean_ptr_addr(x_50);
lean_dec(x_50);
x_58 = lean_ptr_addr(x_54);
x_59 = lean_usize_dec_eq(x_57, x_58);
if (x_59 == 0)
{
lean_object* x_60; 
lean_dec(x_52);
lean_dec(x_51);
lean_dec(x_2);
x_60 = l_Lean_Expr_letE___override(x_49, x_54, x_55, x_56, x_53);
return x_60;
}
else
{
size_t x_61; size_t x_62; uint8_t x_63; 
x_61 = lean_ptr_addr(x_51);
lean_dec(x_51);
x_62 = lean_ptr_addr(x_55);
x_63 = lean_usize_dec_eq(x_61, x_62);
if (x_63 == 0)
{
lean_object* x_64; 
lean_dec(x_52);
lean_dec(x_2);
x_64 = l_Lean_Expr_letE___override(x_49, x_54, x_55, x_56, x_53);
return x_64;
}
else
{
size_t x_65; size_t x_66; uint8_t x_67; 
x_65 = lean_ptr_addr(x_52);
lean_dec(x_52);
x_66 = lean_ptr_addr(x_56);
x_67 = lean_usize_dec_eq(x_65, x_66);
if (x_67 == 0)
{
lean_object* x_68; 
lean_dec(x_2);
x_68 = l_Lean_Expr_letE___override(x_49, x_54, x_55, x_56, x_53);
return x_68;
}
else
{
lean_dec(x_56);
lean_dec(x_55);
lean_dec(x_54);
lean_dec(x_49);
return x_2;
}
}
}
}
case 10:
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; size_t x_72; size_t x_73; uint8_t x_74; 
x_69 = lean_ctor_get(x_2, 0);
lean_inc(x_69);
x_70 = lean_ctor_get(x_2, 1);
lean_inc(x_70);
lean_inc(x_70);
x_71 = lean_apply_1(x_1, x_70);
x_72 = lean_ptr_addr(x_70);
lean_dec(x_70);
x_73 = lean_ptr_addr(x_71);
x_74 = lean_usize_dec_eq(x_72, x_73);
if (x_74 == 0)
{
lean_object* x_75; 
lean_dec(x_2);
x_75 = l_Lean_Expr_mdata___override(x_69, x_71);
return x_75;
}
else
{
lean_dec(x_71);
lean_dec(x_69);
return x_2;
}
}
case 11:
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; size_t x_80; size_t x_81; uint8_t x_82; 
x_76 = lean_ctor_get(x_2, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_2, 1);
lean_inc(x_77);
x_78 = lean_ctor_get(x_2, 2);
lean_inc(x_78);
lean_inc(x_78);
x_79 = lean_apply_1(x_1, x_78);
x_80 = lean_ptr_addr(x_78);
lean_dec(x_78);
x_81 = lean_ptr_addr(x_79);
x_82 = lean_usize_dec_eq(x_80, x_81);
if (x_82 == 0)
{
lean_object* x_83; 
lean_dec(x_2);
x_83 = l_Lean_Expr_proj___override(x_76, x_77, x_79);
return x_83;
}
else
{
lean_dec(x_79);
lean_dec(x_77);
lean_dec(x_76);
return x_2;
}
}
default: 
{
lean_dec(x_1);
return x_2;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_replaceRec___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_apply_2(x_1, x_2, x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; 
x_5 = l_Lean_Expr_traverseChildren___at_Lean_Expr_replaceRec___spec__1(x_2, x_3);
return x_5;
}
else
{
lean_object* x_6; 
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_ctor_get(x_4, 0);
lean_inc(x_6);
lean_dec(x_4);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_replaceRec(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_alloc_closure((void*)(l_Lean_Expr_replaceRec___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = l___private_Mathlib_Util_MemoFix_0__memoFixImplObj(x_3, x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Expr(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Util_MemoFix(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Lean_Expr_ReplaceRec(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Expr(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Util_MemoFix(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
