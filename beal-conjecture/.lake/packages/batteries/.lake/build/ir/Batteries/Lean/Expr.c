// Lean compiler output
// Module: Batteries.Lean.Expr
// Imports: Init Lean.Elab.Term
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
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27(lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Lean_mkAppN(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_withApp_x27___rarg___closed__1;
static lean_object* l_Lean_Expr_intLit_x21___closed__4;
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__3;
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__9;
uint8_t l_Lean_Expr_isAppOfArity(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Term_elabTermEnsuringType(lean_object*, lean_object*, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_sort___override(lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_natLit_x21(lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_natLit_x21___closed__1;
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_getAppArgs_x27___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_getAppRevArgs_x27(lean_object*);
static lean_object* l_Lean_Expr_intLit_x21___closed__7;
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27_go___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_traverseApp_x27(lean_object*);
lean_object* l_Lean_Expr_appArg_x21(lean_object*);
LEAN_EXPORT uint8_t l_Lean_Expr_isAppOf_x27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_natLit_x21___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_getRevArgD_x27___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_panic___at_String_toNat_x21___spec__1(lean_object*);
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__6;
LEAN_EXPORT lean_object* l_Lean_Expr_getAppArgs_x27(lean_object*);
static lean_object* l_Lean_Expr_intLit_x21___closed__5;
static lean_object* l_Lean_Expr_intLit_x21___closed__2;
lean_object* l_Lean_SourceInfo_fromRef(lean_object*, uint8_t);
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27_go(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_natLit_x21___closed__2;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27(lean_object*);
static lean_object* l_Lean_Expr_intLit_x21___closed__1;
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_levelZero;
static lean_object* l_Lean_Expr_intLit_x21___closed__8;
LEAN_EXPORT lean_object* l_Lean_Expr_getRevArgD_x27(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_addMacroScope(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Core_withFreshMacroScope___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27_go(lean_object*);
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27_go___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
lean_object* l_Lean_Syntax_node2(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Init_Util_0__mkPanicMessageWithDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_traverseApp_x27___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_forallArity___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_lambdaArity___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_intLit_x21(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_lambdaArity(lean_object*);
lean_object* l_Lean_MVarId_assign___at_Lean_Elab_Term_exprToSyntax___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Expr_natLit_x21___closed__4;
LEAN_EXPORT lean_object* l_Lean_Expr_isAppOf_x27___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_toSyntax___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go(lean_object*);
static lean_object* l_Lean_Expr_natLit_x21___closed__3;
LEAN_EXPORT lean_object* l_Lean_Expr_forallArity(lean_object*);
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__2;
lean_object* l_panic___at_String_toInt_x21___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_toSyntax(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27___rarg(lean_object*, lean_object*);
lean_object* l_Array_mapMUnsafe_map___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* lean_environment_main_module(lean_object*);
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__5;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_getArgD_x27___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27___rarg(lean_object*, lean_object*);
lean_object* lean_array_set(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_getAppFn_x27(lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__7;
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__4;
static lean_object* l_Lean_Expr_intLit_x21___closed__6;
size_t lean_array_size(lean_object*);
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__8;
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_intLit_x21___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_getArgD_x27(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27_go___at_Lean_Expr_getAppRevArgs_x27___spec__1(lean_object*, lean_object*);
static lean_object* l_Lean_Expr_toSyntax___lambda__1___closed__1;
lean_object* l_Lean_Expr_mvarId_x21(lean_object*);
lean_object* l_Int_negOfNat(lean_object*);
lean_object* l_String_toSubstring_x27(lean_object*);
static lean_object* l_Lean_Expr_intLit_x21___closed__3;
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("syntheticHole", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Lean_Expr_toSyntax___lambda__1___closed__1;
x_2 = l_Lean_Expr_toSyntax___lambda__1___closed__2;
x_3 = l_Lean_Expr_toSyntax___lambda__1___closed__3;
x_4 = l_Lean_Expr_toSyntax___lambda__1___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("\?", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("a", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Expr_toSyntax___lambda__1___closed__7;
x_2 = l_String_toSubstring_x27(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Expr_toSyntax___lambda__1___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Expr_toSyntax___lambda__1___closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_toSyntax___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_9 = lean_ctor_get(x_6, 5);
lean_inc(x_9);
x_10 = 0;
x_11 = l_Lean_SourceInfo_fromRef(x_9, x_10);
lean_dec(x_9);
x_12 = lean_ctor_get(x_6, 10);
lean_inc(x_12);
x_13 = lean_st_ref_get(x_7, x_8);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_environment_main_module(x_17);
x_19 = l_Lean_Expr_toSyntax___lambda__1___closed__6;
lean_inc(x_11);
lean_ctor_set_tag(x_13, 2);
lean_ctor_set(x_13, 1, x_19);
lean_ctor_set(x_13, 0, x_11);
x_20 = l_Lean_Expr_toSyntax___lambda__1___closed__9;
x_21 = l_Lean_addMacroScope(x_18, x_20, x_12);
x_22 = lean_box(0);
x_23 = l_Lean_Expr_toSyntax___lambda__1___closed__8;
lean_inc(x_11);
x_24 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_24, 0, x_11);
lean_ctor_set(x_24, 1, x_23);
lean_ctor_set(x_24, 2, x_21);
lean_ctor_set(x_24, 3, x_22);
x_25 = l_Lean_Expr_toSyntax___lambda__1___closed__5;
x_26 = l_Lean_Syntax_node2(x_11, x_25, x_13, x_24);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_27 = lean_infer_type(x_1, x_2, x_3, x_6, x_7, x_16);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; lean_object* x_33; 
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_27, 1);
lean_inc(x_29);
lean_dec(x_27);
x_30 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_30, 0, x_28);
x_31 = lean_box(0);
x_32 = 1;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_26);
x_33 = l_Lean_Elab_Term_elabTermEnsuringType(x_26, x_30, x_32, x_32, x_31, x_4, x_5, x_2, x_3, x_6, x_7, x_29);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_34 = lean_ctor_get(x_33, 0);
lean_inc(x_34);
x_35 = lean_ctor_get(x_33, 1);
lean_inc(x_35);
lean_dec(x_33);
x_36 = l_Lean_Expr_mvarId_x21(x_34);
lean_dec(x_34);
x_37 = l_Lean_MVarId_assign___at_Lean_Elab_Term_exprToSyntax___spec__1(x_36, x_1, x_4, x_5, x_2, x_3, x_6, x_7, x_35);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_5);
lean_dec(x_4);
x_38 = !lean_is_exclusive(x_37);
if (x_38 == 0)
{
lean_object* x_39; 
x_39 = lean_ctor_get(x_37, 0);
lean_dec(x_39);
lean_ctor_set(x_37, 0, x_26);
return x_37;
}
else
{
lean_object* x_40; lean_object* x_41; 
x_40 = lean_ctor_get(x_37, 1);
lean_inc(x_40);
lean_dec(x_37);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_26);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
else
{
uint8_t x_42; 
lean_dec(x_26);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_42 = !lean_is_exclusive(x_33);
if (x_42 == 0)
{
return x_33;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_33, 0);
x_44 = lean_ctor_get(x_33, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_33);
x_45 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_45, 0, x_43);
lean_ctor_set(x_45, 1, x_44);
return x_45;
}
}
}
else
{
uint8_t x_46; 
lean_dec(x_26);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_46 = !lean_is_exclusive(x_27);
if (x_46 == 0)
{
return x_27;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_27, 0);
x_48 = lean_ctor_get(x_27, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_27);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_50 = lean_ctor_get(x_13, 0);
x_51 = lean_ctor_get(x_13, 1);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_13);
x_52 = lean_ctor_get(x_50, 0);
lean_inc(x_52);
lean_dec(x_50);
x_53 = lean_environment_main_module(x_52);
x_54 = l_Lean_Expr_toSyntax___lambda__1___closed__6;
lean_inc(x_11);
x_55 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_55, 0, x_11);
lean_ctor_set(x_55, 1, x_54);
x_56 = l_Lean_Expr_toSyntax___lambda__1___closed__9;
x_57 = l_Lean_addMacroScope(x_53, x_56, x_12);
x_58 = lean_box(0);
x_59 = l_Lean_Expr_toSyntax___lambda__1___closed__8;
lean_inc(x_11);
x_60 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_60, 0, x_11);
lean_ctor_set(x_60, 1, x_59);
lean_ctor_set(x_60, 2, x_57);
lean_ctor_set(x_60, 3, x_58);
x_61 = l_Lean_Expr_toSyntax___lambda__1___closed__5;
x_62 = l_Lean_Syntax_node2(x_11, x_61, x_55, x_60);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_63 = lean_infer_type(x_1, x_2, x_3, x_6, x_7, x_51);
if (lean_obj_tag(x_63) == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; uint8_t x_68; lean_object* x_69; 
x_64 = lean_ctor_get(x_63, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_63, 1);
lean_inc(x_65);
lean_dec(x_63);
x_66 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_66, 0, x_64);
x_67 = lean_box(0);
x_68 = 1;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_62);
x_69 = l_Lean_Elab_Term_elabTermEnsuringType(x_62, x_66, x_68, x_68, x_67, x_4, x_5, x_2, x_3, x_6, x_7, x_65);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; 
x_70 = lean_ctor_get(x_69, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_69, 1);
lean_inc(x_71);
lean_dec(x_69);
x_72 = l_Lean_Expr_mvarId_x21(x_70);
lean_dec(x_70);
x_73 = l_Lean_MVarId_assign___at_Lean_Elab_Term_exprToSyntax___spec__1(x_72, x_1, x_4, x_5, x_2, x_3, x_6, x_7, x_71);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_5);
lean_dec(x_4);
x_74 = lean_ctor_get(x_73, 1);
lean_inc(x_74);
if (lean_is_exclusive(x_73)) {
 lean_ctor_release(x_73, 0);
 lean_ctor_release(x_73, 1);
 x_75 = x_73;
} else {
 lean_dec_ref(x_73);
 x_75 = lean_box(0);
}
if (lean_is_scalar(x_75)) {
 x_76 = lean_alloc_ctor(0, 2, 0);
} else {
 x_76 = x_75;
}
lean_ctor_set(x_76, 0, x_62);
lean_ctor_set(x_76, 1, x_74);
return x_76;
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; 
lean_dec(x_62);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_77 = lean_ctor_get(x_69, 0);
lean_inc(x_77);
x_78 = lean_ctor_get(x_69, 1);
lean_inc(x_78);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_79 = x_69;
} else {
 lean_dec_ref(x_69);
 x_79 = lean_box(0);
}
if (lean_is_scalar(x_79)) {
 x_80 = lean_alloc_ctor(1, 2, 0);
} else {
 x_80 = x_79;
}
lean_ctor_set(x_80, 0, x_77);
lean_ctor_set(x_80, 1, x_78);
return x_80;
}
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; 
lean_dec(x_62);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_81 = lean_ctor_get(x_63, 0);
lean_inc(x_81);
x_82 = lean_ctor_get(x_63, 1);
lean_inc(x_82);
if (lean_is_exclusive(x_63)) {
 lean_ctor_release(x_63, 0);
 lean_ctor_release(x_63, 1);
 x_83 = x_63;
} else {
 lean_dec_ref(x_63);
 x_83 = lean_box(0);
}
if (lean_is_scalar(x_83)) {
 x_84 = lean_alloc_ctor(1, 2, 0);
} else {
 x_84 = x_83;
}
lean_ctor_set(x_84, 0, x_81);
lean_ctor_set(x_84, 1, x_82);
return x_84;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_toSyntax(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_alloc_closure((void*)(l_Lean_Expr_toSyntax___lambda__1), 8, 5);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_4);
lean_closure_set(x_9, 2, x_5);
lean_closure_set(x_9, 3, x_2);
lean_closure_set(x_9, 4, x_3);
x_10 = l_Lean_Core_withFreshMacroScope___rarg(x_9, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_forallArity(lean_object* x_1) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 7:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 2);
x_3 = l_Lean_Expr_forallArity(x_2);
x_4 = lean_unsigned_to_nat(1u);
x_5 = lean_nat_add(x_4, x_3);
lean_dec(x_3);
return x_5;
}
case 10:
{
lean_object* x_6; 
x_6 = lean_ctor_get(x_1, 1);
x_1 = x_6;
goto _start;
}
default: 
{
lean_object* x_8; 
x_8 = lean_unsigned_to_nat(0u);
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_forallArity___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Expr_forallArity(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_lambdaArity(lean_object* x_1) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 6:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 2);
x_3 = l_Lean_Expr_lambdaArity(x_2);
x_4 = lean_unsigned_to_nat(1u);
x_5 = lean_nat_add(x_4, x_3);
lean_dec(x_3);
return x_5;
}
case 10:
{
lean_object* x_6; 
x_6 = lean_ctor_get(x_1, 1);
x_1 = x_6;
goto _start;
}
default: 
{
lean_object* x_8; 
x_8 = lean_unsigned_to_nat(0u);
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_lambdaArity___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Expr_lambdaArity(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27_go(lean_object* x_1, lean_object* x_2) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 5:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_unsigned_to_nat(1u);
x_5 = lean_nat_add(x_2, x_4);
lean_dec(x_2);
x_1 = x_3;
x_2 = x_5;
goto _start;
}
case 10:
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_1, 1);
x_1 = x_7;
goto _start;
}
default: 
{
return x_2;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27_go___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_Expr_getAppNumArgs_x27_go(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_Lean_Expr_getAppNumArgs_x27_go(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getAppNumArgs_x27___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Expr_getAppNumArgs_x27(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 5:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_array_set(x_3, x_4, x_6);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_4, x_8);
lean_dec(x_4);
x_2 = x_5;
x_3 = x_7;
x_4 = x_9;
goto _start;
}
case 10:
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
x_2 = x_11;
goto _start;
}
default: 
{
lean_object* x_13; 
lean_dec(x_4);
x_13 = lean_apply_2(x_1, x_2, x_3);
return x_13;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Expr_withApp_x27_go___rarg), 4, 0);
return x_2;
}
}
static lean_object* _init_l_Lean_Expr_withApp_x27___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_levelZero;
x_2 = l_Lean_Expr_sort___override(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Lean_Expr_getAppNumArgs_x27_go(x_1, x_3);
x_5 = l_Lean_Expr_withApp_x27___rarg___closed__1;
lean_inc(x_4);
x_6 = lean_mk_array(x_4, x_5);
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_sub(x_4, x_7);
lean_dec(x_4);
x_9 = l_Lean_Expr_withApp_x27_go___rarg(x_2, x_1, x_6, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Expr_withApp_x27___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_getAppArgs_x27___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 5:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_array_set(x_2, x_3, x_5);
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_sub(x_3, x_7);
lean_dec(x_3);
x_1 = x_4;
x_2 = x_6;
x_3 = x_8;
goto _start;
}
case 10:
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_dec(x_1);
x_1 = x_10;
goto _start;
}
default: 
{
lean_dec(x_3);
lean_dec(x_1);
return x_2;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getAppArgs_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_Lean_Expr_getAppNumArgs_x27_go(x_1, x_2);
x_4 = l_Lean_Expr_withApp_x27___rarg___closed__1;
lean_inc(x_3);
x_5 = lean_mk_array(x_3, x_4);
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_3, x_6);
lean_dec(x_3);
x_8 = l_Lean_Expr_withApp_x27_go___at_Lean_Expr_getAppArgs_x27___spec__1(x_1, x_5, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = l_Lean_mkAppN(x_2, x_3);
x_7 = lean_apply_2(x_5, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_array_size(x_1);
x_7 = 0;
lean_inc(x_2);
x_8 = l_Array_mapMUnsafe_map___rarg(x_2, x_3, x_6, x_7, x_1);
x_9 = lean_alloc_closure((void*)(l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_5);
x_10 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
switch (lean_obj_tag(x_3)) {
case 5:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_3, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_dec(x_3);
x_8 = lean_array_set(x_4, x_5, x_7);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_5, x_9);
lean_dec(x_5);
x_3 = x_6;
x_4 = x_8;
x_5 = x_10;
goto _start;
}
case 10:
{
lean_object* x_12; 
x_12 = lean_ctor_get(x_3, 1);
lean_inc(x_12);
lean_dec(x_3);
x_3 = x_12;
goto _start;
}
default: 
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_5);
x_14 = lean_ctor_get(x_1, 1);
lean_inc(x_14);
lean_inc(x_2);
x_15 = lean_apply_1(x_2, x_3);
lean_inc(x_14);
x_16 = lean_alloc_closure((void*)(l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__2), 5, 4);
lean_closure_set(x_16, 0, x_4);
lean_closure_set(x_16, 1, x_1);
lean_closure_set(x_16, 2, x_2);
lean_closure_set(x_16, 3, x_14);
x_17 = lean_apply_4(x_14, lean_box(0), lean_box(0), x_15, x_16);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_traverseApp_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_Lean_Expr_getAppNumArgs_x27_go(x_3, x_4);
x_6 = l_Lean_Expr_withApp_x27___rarg___closed__1;
lean_inc(x_5);
x_7 = lean_mk_array(x_5, x_6);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_5, x_8);
lean_dec(x_5);
x_10 = l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg(x_1, x_2, x_3, x_7, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_traverseApp_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Expr_traverseApp_x27___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Expr_withApp_x27_go___at_Lean_Expr_traverseApp_x27___spec__1___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 5:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_array_push(x_3, x_5);
x_2 = x_4;
x_3 = x_6;
goto _start;
}
case 10:
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_2, 1);
lean_inc(x_8);
lean_dec(x_2);
x_2 = x_8;
goto _start;
}
default: 
{
lean_object* x_10; 
x_10 = lean_apply_2(x_1, x_2, x_3);
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27_go(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Expr_withAppRev_x27_go___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Lean_Expr_getAppNumArgs_x27_go(x_1, x_3);
x_5 = lean_mk_empty_array_with_capacity(x_4);
lean_dec(x_4);
x_6 = l_Lean_Expr_withAppRev_x27_go___rarg(x_2, x_1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Expr_withAppRev_x27___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_withAppRev_x27_go___at_Lean_Expr_getAppRevArgs_x27___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 5:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_array_push(x_2, x_4);
x_1 = x_3;
x_2 = x_5;
goto _start;
}
case 10:
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_1 = x_7;
goto _start;
}
default: 
{
lean_dec(x_1);
return x_2;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getAppRevArgs_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_Lean_Expr_getAppNumArgs_x27_go(x_1, x_2);
x_4 = lean_mk_empty_array_with_capacity(x_3);
lean_dec(x_3);
x_5 = l_Lean_Expr_withAppRev_x27_go___at_Lean_Expr_getAppRevArgs_x27___spec__1(x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getRevArgD_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 5:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_2, x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_2, x_8);
lean_dec(x_2);
x_1 = x_4;
x_2 = x_9;
goto _start;
}
else
{
lean_dec(x_2);
lean_inc(x_5);
return x_5;
}
}
case 10:
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_1, 1);
x_1 = x_11;
goto _start;
}
default: 
{
lean_dec(x_2);
lean_inc(x_3);
return x_3;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getRevArgD_x27___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Expr_getRevArgD_x27(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getArgD_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_nat_sub(x_4, x_2);
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_5, x_6);
lean_dec(x_5);
x_8 = l_Lean_Expr_getRevArgD_x27(x_1, x_7, x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_getArgD_x27___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Lean_Expr_getArgD_x27(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Lean_Expr_isAppOf_x27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_Expr_getAppFn_x27(x_1);
if (lean_obj_tag(x_3) == 4)
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_name_eq(x_4, x_2);
lean_dec(x_4);
return x_5;
}
else
{
uint8_t x_6; 
lean_dec(x_3);
x_6 = 0;
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_isAppOf_x27___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Lean_Expr_isAppOf_x27(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_l_Lean_Expr_natLit_x21___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Batteries.Lean.Expr", 19, 19);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_natLit_x21___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean.Expr.natLit!", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_natLit_x21___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("nat literal expected", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_natLit_x21___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Lean_Expr_natLit_x21___closed__1;
x_2 = l_Lean_Expr_natLit_x21___closed__2;
x_3 = lean_unsigned_to_nat(115u);
x_4 = lean_unsigned_to_nat(30u);
x_5 = l_Lean_Expr_natLit_x21___closed__3;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_natLit_x21(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 9)
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_Lean_Expr_natLit_x21___closed__4;
x_5 = l_panic___at_String_toNat_x21___spec__1(x_4);
return x_5;
}
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_Lean_Expr_natLit_x21___closed__4;
x_7 = l_panic___at_String_toNat_x21___spec__1(x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_natLit_x21___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Expr_natLit_x21(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Int", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ofNat", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_Expr_intLit_x21___closed__1;
x_2 = l_Lean_Expr_intLit_x21___closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("negOfNat", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Lean_Expr_intLit_x21___closed__1;
x_2 = l_Lean_Expr_intLit_x21___closed__4;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean.Expr.intLit!", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("not a raw integer literal", 25, 25);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_intLit_x21___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Lean_Expr_natLit_x21___closed__1;
x_2 = l_Lean_Expr_intLit_x21___closed__6;
x_3 = lean_unsigned_to_nat(125u);
x_4 = lean_unsigned_to_nat(4u);
x_5 = l_Lean_Expr_intLit_x21___closed__7;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_intLit_x21(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Lean_Expr_intLit_x21___closed__3;
x_3 = lean_unsigned_to_nat(1u);
x_4 = l_Lean_Expr_isAppOfArity(x_1, x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; uint8_t x_6; 
x_5 = l_Lean_Expr_intLit_x21___closed__5;
x_6 = l_Lean_Expr_isAppOfArity(x_1, x_5, x_3);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Lean_Expr_intLit_x21___closed__8;
x_8 = l_panic___at_String_toInt_x21___spec__1(x_7);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = l_Lean_Expr_appArg_x21(x_1);
x_10 = l_Lean_Expr_natLit_x21(x_9);
lean_dec(x_9);
x_11 = l_Int_negOfNat(x_10);
lean_dec(x_10);
return x_11;
}
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = l_Lean_Expr_appArg_x21(x_1);
x_13 = l_Lean_Expr_natLit_x21(x_12);
lean_dec(x_12);
x_14 = lean_nat_to_int(x_13);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_intLit_x21___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lean_Expr_intLit_x21(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_Term(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Lean_Expr(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_Term(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_Expr_toSyntax___lambda__1___closed__1 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__1();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__1);
l_Lean_Expr_toSyntax___lambda__1___closed__2 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__2();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__2);
l_Lean_Expr_toSyntax___lambda__1___closed__3 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__3();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__3);
l_Lean_Expr_toSyntax___lambda__1___closed__4 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__4();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__4);
l_Lean_Expr_toSyntax___lambda__1___closed__5 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__5();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__5);
l_Lean_Expr_toSyntax___lambda__1___closed__6 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__6();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__6);
l_Lean_Expr_toSyntax___lambda__1___closed__7 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__7();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__7);
l_Lean_Expr_toSyntax___lambda__1___closed__8 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__8();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__8);
l_Lean_Expr_toSyntax___lambda__1___closed__9 = _init_l_Lean_Expr_toSyntax___lambda__1___closed__9();
lean_mark_persistent(l_Lean_Expr_toSyntax___lambda__1___closed__9);
l_Lean_Expr_withApp_x27___rarg___closed__1 = _init_l_Lean_Expr_withApp_x27___rarg___closed__1();
lean_mark_persistent(l_Lean_Expr_withApp_x27___rarg___closed__1);
l_Lean_Expr_natLit_x21___closed__1 = _init_l_Lean_Expr_natLit_x21___closed__1();
lean_mark_persistent(l_Lean_Expr_natLit_x21___closed__1);
l_Lean_Expr_natLit_x21___closed__2 = _init_l_Lean_Expr_natLit_x21___closed__2();
lean_mark_persistent(l_Lean_Expr_natLit_x21___closed__2);
l_Lean_Expr_natLit_x21___closed__3 = _init_l_Lean_Expr_natLit_x21___closed__3();
lean_mark_persistent(l_Lean_Expr_natLit_x21___closed__3);
l_Lean_Expr_natLit_x21___closed__4 = _init_l_Lean_Expr_natLit_x21___closed__4();
lean_mark_persistent(l_Lean_Expr_natLit_x21___closed__4);
l_Lean_Expr_intLit_x21___closed__1 = _init_l_Lean_Expr_intLit_x21___closed__1();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__1);
l_Lean_Expr_intLit_x21___closed__2 = _init_l_Lean_Expr_intLit_x21___closed__2();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__2);
l_Lean_Expr_intLit_x21___closed__3 = _init_l_Lean_Expr_intLit_x21___closed__3();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__3);
l_Lean_Expr_intLit_x21___closed__4 = _init_l_Lean_Expr_intLit_x21___closed__4();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__4);
l_Lean_Expr_intLit_x21___closed__5 = _init_l_Lean_Expr_intLit_x21___closed__5();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__5);
l_Lean_Expr_intLit_x21___closed__6 = _init_l_Lean_Expr_intLit_x21___closed__6();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__6);
l_Lean_Expr_intLit_x21___closed__7 = _init_l_Lean_Expr_intLit_x21___closed__7();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__7);
l_Lean_Expr_intLit_x21___closed__8 = _init_l_Lean_Expr_intLit_x21___closed__8();
lean_mark_persistent(l_Lean_Expr_intLit_x21___closed__8);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
