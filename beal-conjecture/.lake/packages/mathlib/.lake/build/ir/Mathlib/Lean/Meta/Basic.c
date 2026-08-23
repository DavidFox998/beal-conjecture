// Lean compiler output
// Module: Mathlib.Lean.Meta.Basic
// Imports: Init Mathlib.Init Lean.Meta.AppBuilder Lean.Meta.Basic
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
lean_object* l_Lean_Expr_const___override(lean_object*, lean_object*);
lean_object* l_Lean_Meta_ppExpr(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__2;
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7;
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2;
static lean_object* l_Lean_Meta_mkRel___closed__3;
LEAN_EXPORT lean_object* l_Lean_Meta_pureIsDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_mkAppB(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_isExprDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_mkRel(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Lean_Meta_mkRel___closed__5;
static lean_object* l_Lean_Meta_mkRel___closed__4;
LEAN_EXPORT lean_object* l_Lean_Meta_preservingMCtx___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__3;
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5;
static lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__1;
lean_object* l_List_getLast_x21___rarg(lean_object*, lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4;
lean_object* l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(lean_object*, uint8_t, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkAppM(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__1;
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Meta_mkRel___closed__1;
extern lean_object* l_Lean_instInhabitedExpr;
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__4;
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_name_eq(lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
lean_object* l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Meta_mkRel___closed__6;
static lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6;
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__6;
static lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3;
LEAN_EXPORT lean_object* l_Lean_Meta_preservingMCtx(lean_object*);
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Meta_mkRel___closed__2;
lean_object* lean_array_get_size(lean_object*);
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__5;
lean_object* l_Lean_Meta_isDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Meta_preservingMCtx___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_st_ref_get(x_3, x_6);
x_8 = lean_ctor_get(x_7, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_ctor_get(x_8, 0);
lean_inc(x_10);
lean_dec(x_8);
lean_inc(x_3);
x_11 = lean_apply_5(x_1, x_2, x_3, x_4, x_5, x_9);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_st_ref_take(x_3, x_13);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = !lean_is_exclusive(x_15);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; 
x_18 = lean_ctor_get(x_15, 0);
lean_dec(x_18);
lean_ctor_set(x_15, 0, x_10);
x_19 = lean_st_ref_set(x_3, x_15, x_16);
lean_dec(x_3);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; 
x_21 = lean_ctor_get(x_19, 0);
lean_dec(x_21);
lean_ctor_set(x_19, 0, x_12);
return x_19;
}
else
{
lean_object* x_22; lean_object* x_23; 
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_dec(x_19);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_12);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_24 = lean_ctor_get(x_15, 1);
x_25 = lean_ctor_get(x_15, 2);
x_26 = lean_ctor_get(x_15, 3);
x_27 = lean_ctor_get(x_15, 4);
lean_inc(x_27);
lean_inc(x_26);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_15);
x_28 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_28, 0, x_10);
lean_ctor_set(x_28, 1, x_24);
lean_ctor_set(x_28, 2, x_25);
lean_ctor_set(x_28, 3, x_26);
lean_ctor_set(x_28, 4, x_27);
x_29 = lean_st_ref_set(x_3, x_28, x_16);
lean_dec(x_3);
x_30 = lean_ctor_get(x_29, 1);
lean_inc(x_30);
if (lean_is_exclusive(x_29)) {
 lean_ctor_release(x_29, 0);
 lean_ctor_release(x_29, 1);
 x_31 = x_29;
} else {
 lean_dec_ref(x_29);
 x_31 = lean_box(0);
}
if (lean_is_scalar(x_31)) {
 x_32 = lean_alloc_ctor(0, 2, 0);
} else {
 x_32 = x_31;
}
lean_ctor_set(x_32, 0, x_12);
lean_ctor_set(x_32, 1, x_30);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_33 = lean_ctor_get(x_11, 0);
lean_inc(x_33);
x_34 = lean_ctor_get(x_11, 1);
lean_inc(x_34);
lean_dec(x_11);
x_35 = lean_st_ref_take(x_3, x_34);
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_35, 1);
lean_inc(x_37);
lean_dec(x_35);
x_38 = !lean_is_exclusive(x_36);
if (x_38 == 0)
{
lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_39 = lean_ctor_get(x_36, 0);
lean_dec(x_39);
lean_ctor_set(x_36, 0, x_10);
x_40 = lean_st_ref_set(x_3, x_36, x_37);
lean_dec(x_3);
x_41 = !lean_is_exclusive(x_40);
if (x_41 == 0)
{
lean_object* x_42; 
x_42 = lean_ctor_get(x_40, 0);
lean_dec(x_42);
lean_ctor_set_tag(x_40, 1);
lean_ctor_set(x_40, 0, x_33);
return x_40;
}
else
{
lean_object* x_43; lean_object* x_44; 
x_43 = lean_ctor_get(x_40, 1);
lean_inc(x_43);
lean_dec(x_40);
x_44 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_44, 0, x_33);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_45 = lean_ctor_get(x_36, 1);
x_46 = lean_ctor_get(x_36, 2);
x_47 = lean_ctor_get(x_36, 3);
x_48 = lean_ctor_get(x_36, 4);
lean_inc(x_48);
lean_inc(x_47);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_36);
x_49 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_49, 0, x_10);
lean_ctor_set(x_49, 1, x_45);
lean_ctor_set(x_49, 2, x_46);
lean_ctor_set(x_49, 3, x_47);
lean_ctor_set(x_49, 4, x_48);
x_50 = lean_st_ref_set(x_3, x_49, x_37);
lean_dec(x_3);
x_51 = lean_ctor_get(x_50, 1);
lean_inc(x_51);
if (lean_is_exclusive(x_50)) {
 lean_ctor_release(x_50, 0);
 lean_ctor_release(x_50, 1);
 x_52 = x_50;
} else {
 lean_dec_ref(x_50);
 x_52 = lean_box(0);
}
if (lean_is_scalar(x_52)) {
 x_53 = lean_alloc_ctor(1, 2, 0);
} else {
 x_53 = x_52;
 lean_ctor_set_tag(x_53, 1);
}
lean_ctor_set(x_53, 0, x_33);
lean_ctor_set(x_53, 1, x_51);
return x_53;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_preservingMCtx(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Meta_preservingMCtx___rarg), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_13 = l_Array_append___rarg(x_5, x_1);
x_14 = l_Array_append___rarg(x_4, x_2);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_3);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_17, 0, x_16);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_12);
return x_18;
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Failed to find ", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" as the type of a parameter of ", 31, 31);
return x_1;
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(".", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; uint8_t x_18; 
x_18 = !lean_is_exclusive(x_5);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = lean_ctor_get(x_5, 1);
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_21 = lean_ctor_get(x_5, 0);
x_22 = lean_ctor_get(x_19, 0);
x_23 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
x_24 = lean_array_to_list(lean_box(0), x_22);
x_25 = l_Lean_instInhabitedExpr;
x_26 = l_List_getLast_x21___rarg(x_25, x_24);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_27 = lean_infer_type(x_26, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_27, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_27, 1);
lean_inc(x_29);
lean_dec(x_27);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_2);
x_30 = l_Lean_Meta_isExprDefEq(x_28, x_2, x_6, x_7, x_8, x_9, x_29);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; uint8_t x_32; 
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_unbox(x_31);
lean_dec(x_31);
if (x_32 == 0)
{
lean_object* x_33; uint8_t x_34; lean_object* x_35; 
lean_free_object(x_19);
lean_free_object(x_5);
x_33 = lean_ctor_get(x_30, 1);
lean_inc(x_33);
lean_dec(x_30);
x_34 = 1;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_23);
x_35 = l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(x_23, x_34, x_4, x_3, x_6, x_7, x_8, x_9, x_33);
if (lean_obj_tag(x_35) == 0)
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; 
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
x_38 = lean_ctor_get(x_35, 1);
lean_inc(x_38);
lean_dec(x_35);
x_39 = !lean_is_exclusive(x_36);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_40 = lean_ctor_get(x_36, 0);
x_41 = lean_ctor_get(x_36, 1);
lean_dec(x_41);
x_42 = !lean_is_exclusive(x_37);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; uint8_t x_47; 
x_43 = lean_ctor_get(x_37, 0);
x_44 = lean_ctor_get(x_37, 1);
x_45 = lean_array_get_size(x_40);
x_46 = lean_unsigned_to_nat(1u);
x_47 = lean_nat_dec_eq(x_45, x_46);
lean_dec(x_45);
if (x_47 == 0)
{
lean_object* x_48; 
lean_dec(x_44);
lean_dec(x_43);
lean_dec(x_40);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_21);
x_48 = l_Lean_Meta_ppExpr(x_2, x_6, x_7, x_8, x_9, x_38);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_48, 1);
lean_inc(x_50);
lean_dec(x_48);
x_51 = l_Lean_Meta_ppExpr(x_1, x_6, x_7, x_8, x_9, x_50);
if (lean_obj_tag(x_51) == 0)
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; uint8_t x_62; 
x_52 = lean_ctor_get(x_51, 0);
lean_inc(x_52);
x_53 = lean_ctor_get(x_51, 1);
lean_inc(x_53);
lean_dec(x_51);
x_54 = l_Lean_MessageData_ofFormat(x_49);
x_55 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2;
lean_ctor_set_tag(x_37, 7);
lean_ctor_set(x_37, 1, x_54);
lean_ctor_set(x_37, 0, x_55);
x_56 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4;
lean_ctor_set_tag(x_36, 7);
lean_ctor_set(x_36, 1, x_56);
lean_ctor_set(x_36, 0, x_37);
x_57 = l_Lean_MessageData_ofFormat(x_52);
x_58 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_58, 0, x_36);
lean_ctor_set(x_58, 1, x_57);
x_59 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6;
x_60 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
x_61 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_60, x_6, x_7, x_8, x_9, x_53);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_62 = !lean_is_exclusive(x_61);
if (x_62 == 0)
{
return x_61;
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_63 = lean_ctor_get(x_61, 0);
x_64 = lean_ctor_get(x_61, 1);
lean_inc(x_64);
lean_inc(x_63);
lean_dec(x_61);
x_65 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_65, 0, x_63);
lean_ctor_set(x_65, 1, x_64);
return x_65;
}
}
else
{
uint8_t x_66; 
lean_dec(x_49);
lean_free_object(x_37);
lean_free_object(x_36);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_66 = !lean_is_exclusive(x_51);
if (x_66 == 0)
{
return x_51;
}
else
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_67 = lean_ctor_get(x_51, 0);
x_68 = lean_ctor_get(x_51, 1);
lean_inc(x_68);
lean_inc(x_67);
lean_dec(x_51);
x_69 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_69, 0, x_67);
lean_ctor_set(x_69, 1, x_68);
return x_69;
}
}
}
else
{
uint8_t x_70; 
lean_free_object(x_37);
lean_free_object(x_36);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_70 = !lean_is_exclusive(x_48);
if (x_70 == 0)
{
return x_48;
}
else
{
lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_71 = lean_ctor_get(x_48, 0);
x_72 = lean_ctor_get(x_48, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_48);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_71);
lean_ctor_set(x_73, 1, x_72);
return x_73;
}
}
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
lean_free_object(x_37);
lean_free_object(x_36);
x_74 = lean_box(0);
x_75 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(x_40, x_43, x_44, x_21, x_22, x_23, x_74, x_6, x_7, x_8, x_9, x_38);
lean_dec(x_23);
lean_dec(x_43);
lean_dec(x_40);
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_75, 1);
lean_inc(x_77);
lean_dec(x_75);
x_11 = x_76;
x_12 = x_77;
goto block_17;
}
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; uint8_t x_82; 
x_78 = lean_ctor_get(x_37, 0);
x_79 = lean_ctor_get(x_37, 1);
lean_inc(x_79);
lean_inc(x_78);
lean_dec(x_37);
x_80 = lean_array_get_size(x_40);
x_81 = lean_unsigned_to_nat(1u);
x_82 = lean_nat_dec_eq(x_80, x_81);
lean_dec(x_80);
if (x_82 == 0)
{
lean_object* x_83; 
lean_dec(x_79);
lean_dec(x_78);
lean_dec(x_40);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_21);
x_83 = l_Lean_Meta_ppExpr(x_2, x_6, x_7, x_8, x_9, x_38);
if (lean_obj_tag(x_83) == 0)
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; 
x_84 = lean_ctor_get(x_83, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_83, 1);
lean_inc(x_85);
lean_dec(x_83);
x_86 = l_Lean_Meta_ppExpr(x_1, x_6, x_7, x_8, x_9, x_85);
if (lean_obj_tag(x_86) == 0)
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; 
x_87 = lean_ctor_get(x_86, 0);
lean_inc(x_87);
x_88 = lean_ctor_get(x_86, 1);
lean_inc(x_88);
lean_dec(x_86);
x_89 = l_Lean_MessageData_ofFormat(x_84);
x_90 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2;
x_91 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_91, 0, x_90);
lean_ctor_set(x_91, 1, x_89);
x_92 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4;
lean_ctor_set_tag(x_36, 7);
lean_ctor_set(x_36, 1, x_92);
lean_ctor_set(x_36, 0, x_91);
x_93 = l_Lean_MessageData_ofFormat(x_87);
x_94 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_94, 0, x_36);
lean_ctor_set(x_94, 1, x_93);
x_95 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6;
x_96 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_96, 0, x_94);
lean_ctor_set(x_96, 1, x_95);
x_97 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_96, x_6, x_7, x_8, x_9, x_88);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
if (lean_is_exclusive(x_97)) {
 lean_ctor_release(x_97, 0);
 lean_ctor_release(x_97, 1);
 x_100 = x_97;
} else {
 lean_dec_ref(x_97);
 x_100 = lean_box(0);
}
if (lean_is_scalar(x_100)) {
 x_101 = lean_alloc_ctor(1, 2, 0);
} else {
 x_101 = x_100;
}
lean_ctor_set(x_101, 0, x_98);
lean_ctor_set(x_101, 1, x_99);
return x_101;
}
else
{
lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; 
lean_dec(x_84);
lean_free_object(x_36);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_102 = lean_ctor_get(x_86, 0);
lean_inc(x_102);
x_103 = lean_ctor_get(x_86, 1);
lean_inc(x_103);
if (lean_is_exclusive(x_86)) {
 lean_ctor_release(x_86, 0);
 lean_ctor_release(x_86, 1);
 x_104 = x_86;
} else {
 lean_dec_ref(x_86);
 x_104 = lean_box(0);
}
if (lean_is_scalar(x_104)) {
 x_105 = lean_alloc_ctor(1, 2, 0);
} else {
 x_105 = x_104;
}
lean_ctor_set(x_105, 0, x_102);
lean_ctor_set(x_105, 1, x_103);
return x_105;
}
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; 
lean_free_object(x_36);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_106 = lean_ctor_get(x_83, 0);
lean_inc(x_106);
x_107 = lean_ctor_get(x_83, 1);
lean_inc(x_107);
if (lean_is_exclusive(x_83)) {
 lean_ctor_release(x_83, 0);
 lean_ctor_release(x_83, 1);
 x_108 = x_83;
} else {
 lean_dec_ref(x_83);
 x_108 = lean_box(0);
}
if (lean_is_scalar(x_108)) {
 x_109 = lean_alloc_ctor(1, 2, 0);
} else {
 x_109 = x_108;
}
lean_ctor_set(x_109, 0, x_106);
lean_ctor_set(x_109, 1, x_107);
return x_109;
}
}
else
{
lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; 
lean_free_object(x_36);
x_110 = lean_box(0);
x_111 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(x_40, x_78, x_79, x_21, x_22, x_23, x_110, x_6, x_7, x_8, x_9, x_38);
lean_dec(x_23);
lean_dec(x_78);
lean_dec(x_40);
x_112 = lean_ctor_get(x_111, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_111, 1);
lean_inc(x_113);
lean_dec(x_111);
x_11 = x_112;
x_12 = x_113;
goto block_17;
}
}
}
else
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; uint8_t x_120; 
x_114 = lean_ctor_get(x_36, 0);
lean_inc(x_114);
lean_dec(x_36);
x_115 = lean_ctor_get(x_37, 0);
lean_inc(x_115);
x_116 = lean_ctor_get(x_37, 1);
lean_inc(x_116);
if (lean_is_exclusive(x_37)) {
 lean_ctor_release(x_37, 0);
 lean_ctor_release(x_37, 1);
 x_117 = x_37;
} else {
 lean_dec_ref(x_37);
 x_117 = lean_box(0);
}
x_118 = lean_array_get_size(x_114);
x_119 = lean_unsigned_to_nat(1u);
x_120 = lean_nat_dec_eq(x_118, x_119);
lean_dec(x_118);
if (x_120 == 0)
{
lean_object* x_121; 
lean_dec(x_116);
lean_dec(x_115);
lean_dec(x_114);
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_21);
x_121 = l_Lean_Meta_ppExpr(x_2, x_6, x_7, x_8, x_9, x_38);
if (lean_obj_tag(x_121) == 0)
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; 
x_122 = lean_ctor_get(x_121, 0);
lean_inc(x_122);
x_123 = lean_ctor_get(x_121, 1);
lean_inc(x_123);
lean_dec(x_121);
x_124 = l_Lean_Meta_ppExpr(x_1, x_6, x_7, x_8, x_9, x_123);
if (lean_obj_tag(x_124) == 0)
{
lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; 
x_125 = lean_ctor_get(x_124, 0);
lean_inc(x_125);
x_126 = lean_ctor_get(x_124, 1);
lean_inc(x_126);
lean_dec(x_124);
x_127 = l_Lean_MessageData_ofFormat(x_122);
x_128 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2;
if (lean_is_scalar(x_117)) {
 x_129 = lean_alloc_ctor(7, 2, 0);
} else {
 x_129 = x_117;
 lean_ctor_set_tag(x_129, 7);
}
lean_ctor_set(x_129, 0, x_128);
lean_ctor_set(x_129, 1, x_127);
x_130 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4;
x_131 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_131, 0, x_129);
lean_ctor_set(x_131, 1, x_130);
x_132 = l_Lean_MessageData_ofFormat(x_125);
x_133 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_133, 0, x_131);
lean_ctor_set(x_133, 1, x_132);
x_134 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6;
x_135 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_135, 0, x_133);
lean_ctor_set(x_135, 1, x_134);
x_136 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_135, x_6, x_7, x_8, x_9, x_126);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_137 = lean_ctor_get(x_136, 0);
lean_inc(x_137);
x_138 = lean_ctor_get(x_136, 1);
lean_inc(x_138);
if (lean_is_exclusive(x_136)) {
 lean_ctor_release(x_136, 0);
 lean_ctor_release(x_136, 1);
 x_139 = x_136;
} else {
 lean_dec_ref(x_136);
 x_139 = lean_box(0);
}
if (lean_is_scalar(x_139)) {
 x_140 = lean_alloc_ctor(1, 2, 0);
} else {
 x_140 = x_139;
}
lean_ctor_set(x_140, 0, x_137);
lean_ctor_set(x_140, 1, x_138);
return x_140;
}
else
{
lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; 
lean_dec(x_122);
lean_dec(x_117);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_141 = lean_ctor_get(x_124, 0);
lean_inc(x_141);
x_142 = lean_ctor_get(x_124, 1);
lean_inc(x_142);
if (lean_is_exclusive(x_124)) {
 lean_ctor_release(x_124, 0);
 lean_ctor_release(x_124, 1);
 x_143 = x_124;
} else {
 lean_dec_ref(x_124);
 x_143 = lean_box(0);
}
if (lean_is_scalar(x_143)) {
 x_144 = lean_alloc_ctor(1, 2, 0);
} else {
 x_144 = x_143;
}
lean_ctor_set(x_144, 0, x_141);
lean_ctor_set(x_144, 1, x_142);
return x_144;
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; 
lean_dec(x_117);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_145 = lean_ctor_get(x_121, 0);
lean_inc(x_145);
x_146 = lean_ctor_get(x_121, 1);
lean_inc(x_146);
if (lean_is_exclusive(x_121)) {
 lean_ctor_release(x_121, 0);
 lean_ctor_release(x_121, 1);
 x_147 = x_121;
} else {
 lean_dec_ref(x_121);
 x_147 = lean_box(0);
}
if (lean_is_scalar(x_147)) {
 x_148 = lean_alloc_ctor(1, 2, 0);
} else {
 x_148 = x_147;
}
lean_ctor_set(x_148, 0, x_145);
lean_ctor_set(x_148, 1, x_146);
return x_148;
}
}
else
{
lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; 
lean_dec(x_117);
x_149 = lean_box(0);
x_150 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(x_114, x_115, x_116, x_21, x_22, x_23, x_149, x_6, x_7, x_8, x_9, x_38);
lean_dec(x_23);
lean_dec(x_115);
lean_dec(x_114);
x_151 = lean_ctor_get(x_150, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_150, 1);
lean_inc(x_152);
lean_dec(x_150);
x_11 = x_151;
x_12 = x_152;
goto block_17;
}
}
}
else
{
uint8_t x_153; 
lean_dec(x_23);
lean_dec(x_22);
lean_dec(x_21);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_153 = !lean_is_exclusive(x_35);
if (x_153 == 0)
{
return x_35;
}
else
{
lean_object* x_154; lean_object* x_155; lean_object* x_156; 
x_154 = lean_ctor_get(x_35, 0);
x_155 = lean_ctor_get(x_35, 1);
lean_inc(x_155);
lean_inc(x_154);
lean_dec(x_35);
x_156 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_156, 0, x_154);
lean_ctor_set(x_156, 1, x_155);
return x_156;
}
}
}
else
{
lean_object* x_157; lean_object* x_158; 
x_157 = lean_ctor_get(x_30, 1);
lean_inc(x_157);
lean_dec(x_30);
x_158 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_158, 0, x_5);
x_11 = x_158;
x_12 = x_157;
goto block_17;
}
}
else
{
uint8_t x_159; 
lean_free_object(x_19);
lean_dec(x_23);
lean_dec(x_22);
lean_free_object(x_5);
lean_dec(x_21);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_159 = !lean_is_exclusive(x_30);
if (x_159 == 0)
{
return x_30;
}
else
{
lean_object* x_160; lean_object* x_161; lean_object* x_162; 
x_160 = lean_ctor_get(x_30, 0);
x_161 = lean_ctor_get(x_30, 1);
lean_inc(x_161);
lean_inc(x_160);
lean_dec(x_30);
x_162 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_162, 0, x_160);
lean_ctor_set(x_162, 1, x_161);
return x_162;
}
}
}
else
{
uint8_t x_163; 
lean_free_object(x_19);
lean_dec(x_23);
lean_dec(x_22);
lean_free_object(x_5);
lean_dec(x_21);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_163 = !lean_is_exclusive(x_27);
if (x_163 == 0)
{
return x_27;
}
else
{
lean_object* x_164; lean_object* x_165; lean_object* x_166; 
x_164 = lean_ctor_get(x_27, 0);
x_165 = lean_ctor_get(x_27, 1);
lean_inc(x_165);
lean_inc(x_164);
lean_dec(x_27);
x_166 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_166, 0, x_164);
lean_ctor_set(x_166, 1, x_165);
return x_166;
}
}
}
else
{
lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; lean_object* x_172; lean_object* x_173; 
x_167 = lean_ctor_get(x_5, 0);
x_168 = lean_ctor_get(x_19, 0);
x_169 = lean_ctor_get(x_19, 1);
lean_inc(x_169);
lean_inc(x_168);
lean_dec(x_19);
lean_inc(x_168);
x_170 = lean_array_to_list(lean_box(0), x_168);
x_171 = l_Lean_instInhabitedExpr;
x_172 = l_List_getLast_x21___rarg(x_171, x_170);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_173 = lean_infer_type(x_172, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_173) == 0)
{
lean_object* x_174; lean_object* x_175; lean_object* x_176; 
x_174 = lean_ctor_get(x_173, 0);
lean_inc(x_174);
x_175 = lean_ctor_get(x_173, 1);
lean_inc(x_175);
lean_dec(x_173);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_2);
x_176 = l_Lean_Meta_isExprDefEq(x_174, x_2, x_6, x_7, x_8, x_9, x_175);
if (lean_obj_tag(x_176) == 0)
{
lean_object* x_177; uint8_t x_178; 
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_unbox(x_177);
lean_dec(x_177);
if (x_178 == 0)
{
lean_object* x_179; uint8_t x_180; lean_object* x_181; 
lean_free_object(x_5);
x_179 = lean_ctor_get(x_176, 1);
lean_inc(x_179);
lean_dec(x_176);
x_180 = 1;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_169);
x_181 = l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(x_169, x_180, x_4, x_3, x_6, x_7, x_8, x_9, x_179);
if (lean_obj_tag(x_181) == 0)
{
lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; uint8_t x_192; 
x_182 = lean_ctor_get(x_181, 0);
lean_inc(x_182);
x_183 = lean_ctor_get(x_182, 1);
lean_inc(x_183);
x_184 = lean_ctor_get(x_181, 1);
lean_inc(x_184);
lean_dec(x_181);
x_185 = lean_ctor_get(x_182, 0);
lean_inc(x_185);
if (lean_is_exclusive(x_182)) {
 lean_ctor_release(x_182, 0);
 lean_ctor_release(x_182, 1);
 x_186 = x_182;
} else {
 lean_dec_ref(x_182);
 x_186 = lean_box(0);
}
x_187 = lean_ctor_get(x_183, 0);
lean_inc(x_187);
x_188 = lean_ctor_get(x_183, 1);
lean_inc(x_188);
if (lean_is_exclusive(x_183)) {
 lean_ctor_release(x_183, 0);
 lean_ctor_release(x_183, 1);
 x_189 = x_183;
} else {
 lean_dec_ref(x_183);
 x_189 = lean_box(0);
}
x_190 = lean_array_get_size(x_185);
x_191 = lean_unsigned_to_nat(1u);
x_192 = lean_nat_dec_eq(x_190, x_191);
lean_dec(x_190);
if (x_192 == 0)
{
lean_object* x_193; 
lean_dec(x_188);
lean_dec(x_187);
lean_dec(x_185);
lean_dec(x_169);
lean_dec(x_168);
lean_dec(x_167);
x_193 = l_Lean_Meta_ppExpr(x_2, x_6, x_7, x_8, x_9, x_184);
if (lean_obj_tag(x_193) == 0)
{
lean_object* x_194; lean_object* x_195; lean_object* x_196; 
x_194 = lean_ctor_get(x_193, 0);
lean_inc(x_194);
x_195 = lean_ctor_get(x_193, 1);
lean_inc(x_195);
lean_dec(x_193);
x_196 = l_Lean_Meta_ppExpr(x_1, x_6, x_7, x_8, x_9, x_195);
if (lean_obj_tag(x_196) == 0)
{
lean_object* x_197; lean_object* x_198; lean_object* x_199; lean_object* x_200; lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; lean_object* x_205; lean_object* x_206; lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; 
x_197 = lean_ctor_get(x_196, 0);
lean_inc(x_197);
x_198 = lean_ctor_get(x_196, 1);
lean_inc(x_198);
lean_dec(x_196);
x_199 = l_Lean_MessageData_ofFormat(x_194);
x_200 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2;
if (lean_is_scalar(x_189)) {
 x_201 = lean_alloc_ctor(7, 2, 0);
} else {
 x_201 = x_189;
 lean_ctor_set_tag(x_201, 7);
}
lean_ctor_set(x_201, 0, x_200);
lean_ctor_set(x_201, 1, x_199);
x_202 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4;
if (lean_is_scalar(x_186)) {
 x_203 = lean_alloc_ctor(7, 2, 0);
} else {
 x_203 = x_186;
 lean_ctor_set_tag(x_203, 7);
}
lean_ctor_set(x_203, 0, x_201);
lean_ctor_set(x_203, 1, x_202);
x_204 = l_Lean_MessageData_ofFormat(x_197);
x_205 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_205, 0, x_203);
lean_ctor_set(x_205, 1, x_204);
x_206 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6;
x_207 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_207, 0, x_205);
lean_ctor_set(x_207, 1, x_206);
x_208 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_207, x_6, x_7, x_8, x_9, x_198);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_209 = lean_ctor_get(x_208, 0);
lean_inc(x_209);
x_210 = lean_ctor_get(x_208, 1);
lean_inc(x_210);
if (lean_is_exclusive(x_208)) {
 lean_ctor_release(x_208, 0);
 lean_ctor_release(x_208, 1);
 x_211 = x_208;
} else {
 lean_dec_ref(x_208);
 x_211 = lean_box(0);
}
if (lean_is_scalar(x_211)) {
 x_212 = lean_alloc_ctor(1, 2, 0);
} else {
 x_212 = x_211;
}
lean_ctor_set(x_212, 0, x_209);
lean_ctor_set(x_212, 1, x_210);
return x_212;
}
else
{
lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; 
lean_dec(x_194);
lean_dec(x_189);
lean_dec(x_186);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_213 = lean_ctor_get(x_196, 0);
lean_inc(x_213);
x_214 = lean_ctor_get(x_196, 1);
lean_inc(x_214);
if (lean_is_exclusive(x_196)) {
 lean_ctor_release(x_196, 0);
 lean_ctor_release(x_196, 1);
 x_215 = x_196;
} else {
 lean_dec_ref(x_196);
 x_215 = lean_box(0);
}
if (lean_is_scalar(x_215)) {
 x_216 = lean_alloc_ctor(1, 2, 0);
} else {
 x_216 = x_215;
}
lean_ctor_set(x_216, 0, x_213);
lean_ctor_set(x_216, 1, x_214);
return x_216;
}
}
else
{
lean_object* x_217; lean_object* x_218; lean_object* x_219; lean_object* x_220; 
lean_dec(x_189);
lean_dec(x_186);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_217 = lean_ctor_get(x_193, 0);
lean_inc(x_217);
x_218 = lean_ctor_get(x_193, 1);
lean_inc(x_218);
if (lean_is_exclusive(x_193)) {
 lean_ctor_release(x_193, 0);
 lean_ctor_release(x_193, 1);
 x_219 = x_193;
} else {
 lean_dec_ref(x_193);
 x_219 = lean_box(0);
}
if (lean_is_scalar(x_219)) {
 x_220 = lean_alloc_ctor(1, 2, 0);
} else {
 x_220 = x_219;
}
lean_ctor_set(x_220, 0, x_217);
lean_ctor_set(x_220, 1, x_218);
return x_220;
}
}
else
{
lean_object* x_221; lean_object* x_222; lean_object* x_223; lean_object* x_224; 
lean_dec(x_189);
lean_dec(x_186);
x_221 = lean_box(0);
x_222 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(x_185, x_187, x_188, x_167, x_168, x_169, x_221, x_6, x_7, x_8, x_9, x_184);
lean_dec(x_169);
lean_dec(x_187);
lean_dec(x_185);
x_223 = lean_ctor_get(x_222, 0);
lean_inc(x_223);
x_224 = lean_ctor_get(x_222, 1);
lean_inc(x_224);
lean_dec(x_222);
x_11 = x_223;
x_12 = x_224;
goto block_17;
}
}
else
{
lean_object* x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; 
lean_dec(x_169);
lean_dec(x_168);
lean_dec(x_167);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_225 = lean_ctor_get(x_181, 0);
lean_inc(x_225);
x_226 = lean_ctor_get(x_181, 1);
lean_inc(x_226);
if (lean_is_exclusive(x_181)) {
 lean_ctor_release(x_181, 0);
 lean_ctor_release(x_181, 1);
 x_227 = x_181;
} else {
 lean_dec_ref(x_181);
 x_227 = lean_box(0);
}
if (lean_is_scalar(x_227)) {
 x_228 = lean_alloc_ctor(1, 2, 0);
} else {
 x_228 = x_227;
}
lean_ctor_set(x_228, 0, x_225);
lean_ctor_set(x_228, 1, x_226);
return x_228;
}
}
else
{
lean_object* x_229; lean_object* x_230; lean_object* x_231; 
x_229 = lean_ctor_get(x_176, 1);
lean_inc(x_229);
lean_dec(x_176);
x_230 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_230, 0, x_168);
lean_ctor_set(x_230, 1, x_169);
lean_ctor_set(x_5, 1, x_230);
x_231 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_231, 0, x_5);
x_11 = x_231;
x_12 = x_229;
goto block_17;
}
}
else
{
lean_object* x_232; lean_object* x_233; lean_object* x_234; lean_object* x_235; 
lean_dec(x_169);
lean_dec(x_168);
lean_free_object(x_5);
lean_dec(x_167);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_232 = lean_ctor_get(x_176, 0);
lean_inc(x_232);
x_233 = lean_ctor_get(x_176, 1);
lean_inc(x_233);
if (lean_is_exclusive(x_176)) {
 lean_ctor_release(x_176, 0);
 lean_ctor_release(x_176, 1);
 x_234 = x_176;
} else {
 lean_dec_ref(x_176);
 x_234 = lean_box(0);
}
if (lean_is_scalar(x_234)) {
 x_235 = lean_alloc_ctor(1, 2, 0);
} else {
 x_235 = x_234;
}
lean_ctor_set(x_235, 0, x_232);
lean_ctor_set(x_235, 1, x_233);
return x_235;
}
}
else
{
lean_object* x_236; lean_object* x_237; lean_object* x_238; lean_object* x_239; 
lean_dec(x_169);
lean_dec(x_168);
lean_free_object(x_5);
lean_dec(x_167);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_236 = lean_ctor_get(x_173, 0);
lean_inc(x_236);
x_237 = lean_ctor_get(x_173, 1);
lean_inc(x_237);
if (lean_is_exclusive(x_173)) {
 lean_ctor_release(x_173, 0);
 lean_ctor_release(x_173, 1);
 x_238 = x_173;
} else {
 lean_dec_ref(x_173);
 x_238 = lean_box(0);
}
if (lean_is_scalar(x_238)) {
 x_239 = lean_alloc_ctor(1, 2, 0);
} else {
 x_239 = x_238;
}
lean_ctor_set(x_239, 0, x_236);
lean_ctor_set(x_239, 1, x_237);
return x_239;
}
}
}
else
{
lean_object* x_240; lean_object* x_241; lean_object* x_242; lean_object* x_243; lean_object* x_244; lean_object* x_245; lean_object* x_246; lean_object* x_247; lean_object* x_248; 
x_240 = lean_ctor_get(x_5, 1);
x_241 = lean_ctor_get(x_5, 0);
lean_inc(x_240);
lean_inc(x_241);
lean_dec(x_5);
x_242 = lean_ctor_get(x_240, 0);
lean_inc(x_242);
x_243 = lean_ctor_get(x_240, 1);
lean_inc(x_243);
if (lean_is_exclusive(x_240)) {
 lean_ctor_release(x_240, 0);
 lean_ctor_release(x_240, 1);
 x_244 = x_240;
} else {
 lean_dec_ref(x_240);
 x_244 = lean_box(0);
}
lean_inc(x_242);
x_245 = lean_array_to_list(lean_box(0), x_242);
x_246 = l_Lean_instInhabitedExpr;
x_247 = l_List_getLast_x21___rarg(x_246, x_245);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_248 = lean_infer_type(x_247, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_248) == 0)
{
lean_object* x_249; lean_object* x_250; lean_object* x_251; 
x_249 = lean_ctor_get(x_248, 0);
lean_inc(x_249);
x_250 = lean_ctor_get(x_248, 1);
lean_inc(x_250);
lean_dec(x_248);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_2);
x_251 = l_Lean_Meta_isExprDefEq(x_249, x_2, x_6, x_7, x_8, x_9, x_250);
if (lean_obj_tag(x_251) == 0)
{
lean_object* x_252; uint8_t x_253; 
x_252 = lean_ctor_get(x_251, 0);
lean_inc(x_252);
x_253 = lean_unbox(x_252);
lean_dec(x_252);
if (x_253 == 0)
{
lean_object* x_254; uint8_t x_255; lean_object* x_256; 
lean_dec(x_244);
x_254 = lean_ctor_get(x_251, 1);
lean_inc(x_254);
lean_dec(x_251);
x_255 = 1;
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_243);
x_256 = l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(x_243, x_255, x_4, x_3, x_6, x_7, x_8, x_9, x_254);
if (lean_obj_tag(x_256) == 0)
{
lean_object* x_257; lean_object* x_258; lean_object* x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; uint8_t x_267; 
x_257 = lean_ctor_get(x_256, 0);
lean_inc(x_257);
x_258 = lean_ctor_get(x_257, 1);
lean_inc(x_258);
x_259 = lean_ctor_get(x_256, 1);
lean_inc(x_259);
lean_dec(x_256);
x_260 = lean_ctor_get(x_257, 0);
lean_inc(x_260);
if (lean_is_exclusive(x_257)) {
 lean_ctor_release(x_257, 0);
 lean_ctor_release(x_257, 1);
 x_261 = x_257;
} else {
 lean_dec_ref(x_257);
 x_261 = lean_box(0);
}
x_262 = lean_ctor_get(x_258, 0);
lean_inc(x_262);
x_263 = lean_ctor_get(x_258, 1);
lean_inc(x_263);
if (lean_is_exclusive(x_258)) {
 lean_ctor_release(x_258, 0);
 lean_ctor_release(x_258, 1);
 x_264 = x_258;
} else {
 lean_dec_ref(x_258);
 x_264 = lean_box(0);
}
x_265 = lean_array_get_size(x_260);
x_266 = lean_unsigned_to_nat(1u);
x_267 = lean_nat_dec_eq(x_265, x_266);
lean_dec(x_265);
if (x_267 == 0)
{
lean_object* x_268; 
lean_dec(x_263);
lean_dec(x_262);
lean_dec(x_260);
lean_dec(x_243);
lean_dec(x_242);
lean_dec(x_241);
x_268 = l_Lean_Meta_ppExpr(x_2, x_6, x_7, x_8, x_9, x_259);
if (lean_obj_tag(x_268) == 0)
{
lean_object* x_269; lean_object* x_270; lean_object* x_271; 
x_269 = lean_ctor_get(x_268, 0);
lean_inc(x_269);
x_270 = lean_ctor_get(x_268, 1);
lean_inc(x_270);
lean_dec(x_268);
x_271 = l_Lean_Meta_ppExpr(x_1, x_6, x_7, x_8, x_9, x_270);
if (lean_obj_tag(x_271) == 0)
{
lean_object* x_272; lean_object* x_273; lean_object* x_274; lean_object* x_275; lean_object* x_276; lean_object* x_277; lean_object* x_278; lean_object* x_279; lean_object* x_280; lean_object* x_281; lean_object* x_282; lean_object* x_283; lean_object* x_284; lean_object* x_285; lean_object* x_286; lean_object* x_287; 
x_272 = lean_ctor_get(x_271, 0);
lean_inc(x_272);
x_273 = lean_ctor_get(x_271, 1);
lean_inc(x_273);
lean_dec(x_271);
x_274 = l_Lean_MessageData_ofFormat(x_269);
x_275 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2;
if (lean_is_scalar(x_264)) {
 x_276 = lean_alloc_ctor(7, 2, 0);
} else {
 x_276 = x_264;
 lean_ctor_set_tag(x_276, 7);
}
lean_ctor_set(x_276, 0, x_275);
lean_ctor_set(x_276, 1, x_274);
x_277 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4;
if (lean_is_scalar(x_261)) {
 x_278 = lean_alloc_ctor(7, 2, 0);
} else {
 x_278 = x_261;
 lean_ctor_set_tag(x_278, 7);
}
lean_ctor_set(x_278, 0, x_276);
lean_ctor_set(x_278, 1, x_277);
x_279 = l_Lean_MessageData_ofFormat(x_272);
x_280 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_280, 0, x_278);
lean_ctor_set(x_280, 1, x_279);
x_281 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6;
x_282 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_282, 0, x_280);
lean_ctor_set(x_282, 1, x_281);
x_283 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_282, x_6, x_7, x_8, x_9, x_273);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_284 = lean_ctor_get(x_283, 0);
lean_inc(x_284);
x_285 = lean_ctor_get(x_283, 1);
lean_inc(x_285);
if (lean_is_exclusive(x_283)) {
 lean_ctor_release(x_283, 0);
 lean_ctor_release(x_283, 1);
 x_286 = x_283;
} else {
 lean_dec_ref(x_283);
 x_286 = lean_box(0);
}
if (lean_is_scalar(x_286)) {
 x_287 = lean_alloc_ctor(1, 2, 0);
} else {
 x_287 = x_286;
}
lean_ctor_set(x_287, 0, x_284);
lean_ctor_set(x_287, 1, x_285);
return x_287;
}
else
{
lean_object* x_288; lean_object* x_289; lean_object* x_290; lean_object* x_291; 
lean_dec(x_269);
lean_dec(x_264);
lean_dec(x_261);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
x_288 = lean_ctor_get(x_271, 0);
lean_inc(x_288);
x_289 = lean_ctor_get(x_271, 1);
lean_inc(x_289);
if (lean_is_exclusive(x_271)) {
 lean_ctor_release(x_271, 0);
 lean_ctor_release(x_271, 1);
 x_290 = x_271;
} else {
 lean_dec_ref(x_271);
 x_290 = lean_box(0);
}
if (lean_is_scalar(x_290)) {
 x_291 = lean_alloc_ctor(1, 2, 0);
} else {
 x_291 = x_290;
}
lean_ctor_set(x_291, 0, x_288);
lean_ctor_set(x_291, 1, x_289);
return x_291;
}
}
else
{
lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; 
lean_dec(x_264);
lean_dec(x_261);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_292 = lean_ctor_get(x_268, 0);
lean_inc(x_292);
x_293 = lean_ctor_get(x_268, 1);
lean_inc(x_293);
if (lean_is_exclusive(x_268)) {
 lean_ctor_release(x_268, 0);
 lean_ctor_release(x_268, 1);
 x_294 = x_268;
} else {
 lean_dec_ref(x_268);
 x_294 = lean_box(0);
}
if (lean_is_scalar(x_294)) {
 x_295 = lean_alloc_ctor(1, 2, 0);
} else {
 x_295 = x_294;
}
lean_ctor_set(x_295, 0, x_292);
lean_ctor_set(x_295, 1, x_293);
return x_295;
}
}
else
{
lean_object* x_296; lean_object* x_297; lean_object* x_298; lean_object* x_299; 
lean_dec(x_264);
lean_dec(x_261);
x_296 = lean_box(0);
x_297 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(x_260, x_262, x_263, x_241, x_242, x_243, x_296, x_6, x_7, x_8, x_9, x_259);
lean_dec(x_243);
lean_dec(x_262);
lean_dec(x_260);
x_298 = lean_ctor_get(x_297, 0);
lean_inc(x_298);
x_299 = lean_ctor_get(x_297, 1);
lean_inc(x_299);
lean_dec(x_297);
x_11 = x_298;
x_12 = x_299;
goto block_17;
}
}
else
{
lean_object* x_300; lean_object* x_301; lean_object* x_302; lean_object* x_303; 
lean_dec(x_243);
lean_dec(x_242);
lean_dec(x_241);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_300 = lean_ctor_get(x_256, 0);
lean_inc(x_300);
x_301 = lean_ctor_get(x_256, 1);
lean_inc(x_301);
if (lean_is_exclusive(x_256)) {
 lean_ctor_release(x_256, 0);
 lean_ctor_release(x_256, 1);
 x_302 = x_256;
} else {
 lean_dec_ref(x_256);
 x_302 = lean_box(0);
}
if (lean_is_scalar(x_302)) {
 x_303 = lean_alloc_ctor(1, 2, 0);
} else {
 x_303 = x_302;
}
lean_ctor_set(x_303, 0, x_300);
lean_ctor_set(x_303, 1, x_301);
return x_303;
}
}
else
{
lean_object* x_304; lean_object* x_305; lean_object* x_306; lean_object* x_307; 
x_304 = lean_ctor_get(x_251, 1);
lean_inc(x_304);
lean_dec(x_251);
if (lean_is_scalar(x_244)) {
 x_305 = lean_alloc_ctor(0, 2, 0);
} else {
 x_305 = x_244;
}
lean_ctor_set(x_305, 0, x_242);
lean_ctor_set(x_305, 1, x_243);
x_306 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_306, 0, x_241);
lean_ctor_set(x_306, 1, x_305);
x_307 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_307, 0, x_306);
x_11 = x_307;
x_12 = x_304;
goto block_17;
}
}
else
{
lean_object* x_308; lean_object* x_309; lean_object* x_310; lean_object* x_311; 
lean_dec(x_244);
lean_dec(x_243);
lean_dec(x_242);
lean_dec(x_241);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_308 = lean_ctor_get(x_251, 0);
lean_inc(x_308);
x_309 = lean_ctor_get(x_251, 1);
lean_inc(x_309);
if (lean_is_exclusive(x_251)) {
 lean_ctor_release(x_251, 0);
 lean_ctor_release(x_251, 1);
 x_310 = x_251;
} else {
 lean_dec_ref(x_251);
 x_310 = lean_box(0);
}
if (lean_is_scalar(x_310)) {
 x_311 = lean_alloc_ctor(1, 2, 0);
} else {
 x_311 = x_310;
}
lean_ctor_set(x_311, 0, x_308);
lean_ctor_set(x_311, 1, x_309);
return x_311;
}
}
else
{
lean_object* x_312; lean_object* x_313; lean_object* x_314; lean_object* x_315; 
lean_dec(x_244);
lean_dec(x_243);
lean_dec(x_242);
lean_dec(x_241);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_312 = lean_ctor_get(x_248, 0);
lean_inc(x_312);
x_313 = lean_ctor_get(x_248, 1);
lean_inc(x_313);
if (lean_is_exclusive(x_248)) {
 lean_ctor_release(x_248, 0);
 lean_ctor_release(x_248, 1);
 x_314 = x_248;
} else {
 lean_dec_ref(x_248);
 x_314 = lean_box(0);
}
if (lean_is_scalar(x_314)) {
 x_315 = lean_alloc_ctor(1, 2, 0);
} else {
 x_315 = x_314;
}
lean_ctor_set(x_315, 0, x_312);
lean_ctor_set(x_315, 1, x_313);
return x_315;
}
}
block_17:
{
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_13; lean_object* x_14; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
lean_dec(x_11);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_11, 0);
lean_inc(x_15);
lean_dec(x_11);
x_5 = x_15;
x_10 = x_12;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, uint8_t x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_1);
lean_ctor_set(x_14, 1, x_2);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_3);
lean_ctor_set(x_15, 1, x_14);
x_16 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1(x_4, x_5, x_6, x_7, x_15, x_9, x_10, x_11, x_12, x_13);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
x_19 = !lean_is_exclusive(x_16);
if (x_19 == 0)
{
lean_object* x_20; uint8_t x_21; 
x_20 = lean_ctor_get(x_16, 0);
lean_dec(x_20);
x_21 = !lean_is_exclusive(x_17);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_17, 0);
x_23 = lean_ctor_get(x_17, 1);
lean_dec(x_23);
x_24 = !lean_is_exclusive(x_18);
if (x_24 == 0)
{
lean_object* x_25; 
x_25 = lean_ctor_get(x_18, 0);
lean_ctor_set(x_18, 0, x_22);
lean_ctor_set(x_17, 0, x_25);
return x_16;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_18, 0);
x_27 = lean_ctor_get(x_18, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_18);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_22);
lean_ctor_set(x_28, 1, x_27);
lean_ctor_set(x_17, 1, x_28);
lean_ctor_set(x_17, 0, x_26);
return x_16;
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_29 = lean_ctor_get(x_17, 0);
lean_inc(x_29);
lean_dec(x_17);
x_30 = lean_ctor_get(x_18, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_18, 1);
lean_inc(x_31);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 lean_ctor_release(x_18, 1);
 x_32 = x_18;
} else {
 lean_dec_ref(x_18);
 x_32 = lean_box(0);
}
if (lean_is_scalar(x_32)) {
 x_33 = lean_alloc_ctor(0, 2, 0);
} else {
 x_33 = x_32;
}
lean_ctor_set(x_33, 0, x_29);
lean_ctor_set(x_33, 1, x_31);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_30);
lean_ctor_set(x_34, 1, x_33);
lean_ctor_set(x_16, 0, x_34);
return x_16;
}
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_35 = lean_ctor_get(x_16, 1);
lean_inc(x_35);
lean_dec(x_16);
x_36 = lean_ctor_get(x_17, 0);
lean_inc(x_36);
if (lean_is_exclusive(x_17)) {
 lean_ctor_release(x_17, 0);
 lean_ctor_release(x_17, 1);
 x_37 = x_17;
} else {
 lean_dec_ref(x_17);
 x_37 = lean_box(0);
}
x_38 = lean_ctor_get(x_18, 0);
lean_inc(x_38);
x_39 = lean_ctor_get(x_18, 1);
lean_inc(x_39);
if (lean_is_exclusive(x_18)) {
 lean_ctor_release(x_18, 0);
 lean_ctor_release(x_18, 1);
 x_40 = x_18;
} else {
 lean_dec_ref(x_18);
 x_40 = lean_box(0);
}
if (lean_is_scalar(x_40)) {
 x_41 = lean_alloc_ctor(0, 2, 0);
} else {
 x_41 = x_40;
}
lean_ctor_set(x_41, 0, x_36);
lean_ctor_set(x_41, 1, x_39);
if (lean_is_scalar(x_37)) {
 x_42 = lean_alloc_ctor(0, 2, 0);
} else {
 x_42 = x_37;
}
lean_ctor_set(x_42, 0, x_38);
lean_ctor_set(x_42, 1, x_41);
x_43 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_43, 0, x_42);
lean_ctor_set(x_43, 1, x_35);
return x_43;
}
}
else
{
uint8_t x_44; 
x_44 = !lean_is_exclusive(x_16);
if (x_44 == 0)
{
return x_16;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_45 = lean_ctor_get(x_16, 0);
x_46 = lean_ctor_get(x_16, 1);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_16);
x_47 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_46);
return x_47;
}
}
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Failed", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__2;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Failed: ", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__4;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" is not the type of a function.", 31, 31);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__6;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_9 = 1;
x_10 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__1;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_11 = l___private_Lean_Meta_Basic_0__Lean_Meta_forallMetaTelescopeReducingAux(x_1, x_9, x_10, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
x_14 = lean_ctor_get(x_11, 1);
lean_inc(x_14);
lean_dec(x_11);
x_15 = !lean_is_exclusive(x_12);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_16 = lean_ctor_get(x_12, 0);
x_17 = lean_ctor_get(x_12, 1);
lean_dec(x_17);
x_18 = !lean_is_exclusive(x_13);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_19 = lean_ctor_get(x_13, 0);
x_20 = lean_ctor_get(x_13, 1);
x_21 = lean_array_get_size(x_16);
x_22 = lean_unsigned_to_nat(1u);
x_23 = lean_nat_dec_eq(x_21, x_22);
if (x_23 == 0)
{
lean_object* x_24; uint8_t x_25; 
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_16);
lean_dec(x_2);
x_24 = lean_unsigned_to_nat(0u);
x_25 = lean_nat_dec_eq(x_21, x_24);
lean_dec(x_21);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; uint8_t x_28; 
lean_free_object(x_13);
lean_free_object(x_12);
lean_dec(x_1);
x_26 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3;
x_27 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_26, x_4, x_5, x_6, x_7, x_14);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
return x_27;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_27, 0);
x_30 = lean_ctor_get(x_27, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_27);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
else
{
lean_object* x_32; 
x_32 = l_Lean_Meta_ppExpr(x_1, x_4, x_5, x_6, x_7, x_14);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; 
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
x_34 = lean_ctor_get(x_32, 1);
lean_inc(x_34);
lean_dec(x_32);
x_35 = l_Lean_MessageData_ofFormat(x_33);
x_36 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_35);
lean_ctor_set(x_13, 0, x_36);
x_37 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7;
lean_ctor_set_tag(x_12, 7);
lean_ctor_set(x_12, 1, x_37);
lean_ctor_set(x_12, 0, x_13);
x_38 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_12, x_4, x_5, x_6, x_7, x_34);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_39 = !lean_is_exclusive(x_38);
if (x_39 == 0)
{
return x_38;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_38, 0);
x_41 = lean_ctor_get(x_38, 1);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_38);
x_42 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set(x_42, 1, x_41);
return x_42;
}
}
else
{
uint8_t x_43; 
lean_free_object(x_13);
lean_free_object(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_43 = !lean_is_exclusive(x_32);
if (x_43 == 0)
{
return x_32;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_ctor_get(x_32, 0);
x_45 = lean_ctor_get(x_32, 1);
lean_inc(x_45);
lean_inc(x_44);
lean_dec(x_32);
x_46 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_46, 0, x_44);
lean_ctor_set(x_46, 1, x_45);
return x_46;
}
}
}
}
else
{
lean_object* x_47; lean_object* x_48; 
lean_dec(x_21);
lean_free_object(x_13);
lean_free_object(x_12);
x_47 = lean_box(0);
x_48 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1(x_16, x_20, x_19, x_1, x_2, x_3, x_10, x_47, x_4, x_5, x_6, x_7, x_14);
return x_48;
}
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; uint8_t x_53; 
x_49 = lean_ctor_get(x_13, 0);
x_50 = lean_ctor_get(x_13, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_13);
x_51 = lean_array_get_size(x_16);
x_52 = lean_unsigned_to_nat(1u);
x_53 = lean_nat_dec_eq(x_51, x_52);
if (x_53 == 0)
{
lean_object* x_54; uint8_t x_55; 
lean_dec(x_50);
lean_dec(x_49);
lean_dec(x_16);
lean_dec(x_2);
x_54 = lean_unsigned_to_nat(0u);
x_55 = lean_nat_dec_eq(x_51, x_54);
lean_dec(x_51);
if (x_55 == 0)
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
lean_free_object(x_12);
lean_dec(x_1);
x_56 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3;
x_57 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_56, x_4, x_5, x_6, x_7, x_14);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_58 = lean_ctor_get(x_57, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 1);
lean_inc(x_59);
if (lean_is_exclusive(x_57)) {
 lean_ctor_release(x_57, 0);
 lean_ctor_release(x_57, 1);
 x_60 = x_57;
} else {
 lean_dec_ref(x_57);
 x_60 = lean_box(0);
}
if (lean_is_scalar(x_60)) {
 x_61 = lean_alloc_ctor(1, 2, 0);
} else {
 x_61 = x_60;
}
lean_ctor_set(x_61, 0, x_58);
lean_ctor_set(x_61, 1, x_59);
return x_61;
}
else
{
lean_object* x_62; 
x_62 = l_Lean_Meta_ppExpr(x_1, x_4, x_5, x_6, x_7, x_14);
if (lean_obj_tag(x_62) == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_63 = lean_ctor_get(x_62, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_62, 1);
lean_inc(x_64);
lean_dec(x_62);
x_65 = l_Lean_MessageData_ofFormat(x_63);
x_66 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5;
x_67 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_67, 0, x_66);
lean_ctor_set(x_67, 1, x_65);
x_68 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7;
lean_ctor_set_tag(x_12, 7);
lean_ctor_set(x_12, 1, x_68);
lean_ctor_set(x_12, 0, x_67);
x_69 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_12, x_4, x_5, x_6, x_7, x_64);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_70 = lean_ctor_get(x_69, 0);
lean_inc(x_70);
x_71 = lean_ctor_get(x_69, 1);
lean_inc(x_71);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 lean_ctor_release(x_69, 1);
 x_72 = x_69;
} else {
 lean_dec_ref(x_69);
 x_72 = lean_box(0);
}
if (lean_is_scalar(x_72)) {
 x_73 = lean_alloc_ctor(1, 2, 0);
} else {
 x_73 = x_72;
}
lean_ctor_set(x_73, 0, x_70);
lean_ctor_set(x_73, 1, x_71);
return x_73;
}
else
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
lean_free_object(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_74 = lean_ctor_get(x_62, 0);
lean_inc(x_74);
x_75 = lean_ctor_get(x_62, 1);
lean_inc(x_75);
if (lean_is_exclusive(x_62)) {
 lean_ctor_release(x_62, 0);
 lean_ctor_release(x_62, 1);
 x_76 = x_62;
} else {
 lean_dec_ref(x_62);
 x_76 = lean_box(0);
}
if (lean_is_scalar(x_76)) {
 x_77 = lean_alloc_ctor(1, 2, 0);
} else {
 x_77 = x_76;
}
lean_ctor_set(x_77, 0, x_74);
lean_ctor_set(x_77, 1, x_75);
return x_77;
}
}
}
else
{
lean_object* x_78; lean_object* x_79; 
lean_dec(x_51);
lean_free_object(x_12);
x_78 = lean_box(0);
x_79 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1(x_16, x_50, x_49, x_1, x_2, x_3, x_10, x_78, x_4, x_5, x_6, x_7, x_14);
return x_79;
}
}
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; uint8_t x_86; 
x_80 = lean_ctor_get(x_12, 0);
lean_inc(x_80);
lean_dec(x_12);
x_81 = lean_ctor_get(x_13, 0);
lean_inc(x_81);
x_82 = lean_ctor_get(x_13, 1);
lean_inc(x_82);
if (lean_is_exclusive(x_13)) {
 lean_ctor_release(x_13, 0);
 lean_ctor_release(x_13, 1);
 x_83 = x_13;
} else {
 lean_dec_ref(x_13);
 x_83 = lean_box(0);
}
x_84 = lean_array_get_size(x_80);
x_85 = lean_unsigned_to_nat(1u);
x_86 = lean_nat_dec_eq(x_84, x_85);
if (x_86 == 0)
{
lean_object* x_87; uint8_t x_88; 
lean_dec(x_82);
lean_dec(x_81);
lean_dec(x_80);
lean_dec(x_2);
x_87 = lean_unsigned_to_nat(0u);
x_88 = lean_nat_dec_eq(x_84, x_87);
lean_dec(x_84);
if (x_88 == 0)
{
lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; 
lean_dec(x_83);
lean_dec(x_1);
x_89 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3;
x_90 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_89, x_4, x_5, x_6, x_7, x_14);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_91 = lean_ctor_get(x_90, 0);
lean_inc(x_91);
x_92 = lean_ctor_get(x_90, 1);
lean_inc(x_92);
if (lean_is_exclusive(x_90)) {
 lean_ctor_release(x_90, 0);
 lean_ctor_release(x_90, 1);
 x_93 = x_90;
} else {
 lean_dec_ref(x_90);
 x_93 = lean_box(0);
}
if (lean_is_scalar(x_93)) {
 x_94 = lean_alloc_ctor(1, 2, 0);
} else {
 x_94 = x_93;
}
lean_ctor_set(x_94, 0, x_91);
lean_ctor_set(x_94, 1, x_92);
return x_94;
}
else
{
lean_object* x_95; 
x_95 = l_Lean_Meta_ppExpr(x_1, x_4, x_5, x_6, x_7, x_14);
if (lean_obj_tag(x_95) == 0)
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; 
x_96 = lean_ctor_get(x_95, 0);
lean_inc(x_96);
x_97 = lean_ctor_get(x_95, 1);
lean_inc(x_97);
lean_dec(x_95);
x_98 = l_Lean_MessageData_ofFormat(x_96);
x_99 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5;
if (lean_is_scalar(x_83)) {
 x_100 = lean_alloc_ctor(7, 2, 0);
} else {
 x_100 = x_83;
 lean_ctor_set_tag(x_100, 7);
}
lean_ctor_set(x_100, 0, x_99);
lean_ctor_set(x_100, 1, x_98);
x_101 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7;
x_102 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_102, 0, x_100);
lean_ctor_set(x_102, 1, x_101);
x_103 = l_Lean_throwError___at_Lean_Meta_mkSimpCongrTheorem___spec__4(x_102, x_4, x_5, x_6, x_7, x_97);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_104 = lean_ctor_get(x_103, 0);
lean_inc(x_104);
x_105 = lean_ctor_get(x_103, 1);
lean_inc(x_105);
if (lean_is_exclusive(x_103)) {
 lean_ctor_release(x_103, 0);
 lean_ctor_release(x_103, 1);
 x_106 = x_103;
} else {
 lean_dec_ref(x_103);
 x_106 = lean_box(0);
}
if (lean_is_scalar(x_106)) {
 x_107 = lean_alloc_ctor(1, 2, 0);
} else {
 x_107 = x_106;
}
lean_ctor_set(x_107, 0, x_104);
lean_ctor_set(x_107, 1, x_105);
return x_107;
}
else
{
lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
lean_dec(x_83);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_108 = lean_ctor_get(x_95, 0);
lean_inc(x_108);
x_109 = lean_ctor_get(x_95, 1);
lean_inc(x_109);
if (lean_is_exclusive(x_95)) {
 lean_ctor_release(x_95, 0);
 lean_ctor_release(x_95, 1);
 x_110 = x_95;
} else {
 lean_dec_ref(x_95);
 x_110 = lean_box(0);
}
if (lean_is_scalar(x_110)) {
 x_111 = lean_alloc_ctor(1, 2, 0);
} else {
 x_111 = x_110;
}
lean_ctor_set(x_111, 0, x_108);
lean_ctor_set(x_111, 1, x_109);
return x_111;
}
}
}
else
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_84);
lean_dec(x_83);
x_112 = lean_box(0);
x_113 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1(x_80, x_82, x_81, x_1, x_2, x_3, x_10, x_112, x_4, x_5, x_6, x_7, x_14);
return x_113;
}
}
}
else
{
uint8_t x_114; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_114 = !lean_is_exclusive(x_11);
if (x_114 == 0)
{
return x_11;
}
else
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; 
x_115 = lean_ctor_get(x_11, 0);
x_116 = lean_ctor_get(x_11, 1);
lean_inc(x_116);
lean_inc(x_115);
lean_dec(x_11);
x_117 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_117, 0, x_115);
lean_ctor_set(x_117, 1, x_116);
return x_117;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; lean_object* x_12; 
x_11 = lean_unbox(x_3);
lean_dec(x_3);
x_12 = l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1(x_1, x_2, x_11, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_4);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
uint8_t x_14; lean_object* x_15; 
x_14 = lean_unbox(x_6);
lean_dec(x_6);
x_15 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___lambda__1(x_1, x_2, x_3, x_4, x_5, x_14, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_8);
lean_dec(x_7);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; 
x_9 = lean_unbox(x_3);
lean_dec(x_3);
x_10 = l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq(x_1, x_2, x_9, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_pureIsDefEq(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; lean_object* x_10; 
x_8 = lean_alloc_closure((void*)(l_Lean_Meta_isDefEq), 7, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
x_9 = 0;
x_10 = l_Lean_Meta_withNewMCtxDepth___at_Lean_Meta_matchesInstance___spec__1___rarg(x_8, x_9, x_3, x_4, x_5, x_6, x_7);
return x_10;
}
}
static lean_object* _init_l_Lean_Meta_mkRel___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Eq", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_mkRel___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Meta_mkRel___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Meta_mkRel___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Iff", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lean_Meta_mkRel___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Meta_mkRel___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Lean_Meta_mkRel___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Meta_mkRel___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Meta_mkRel___closed__4;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Meta_mkRel(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; 
x_9 = l_Lean_Meta_mkRel___closed__2;
x_10 = lean_name_eq(x_1, x_9);
if (x_10 == 0)
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Lean_Meta_mkRel___closed__4;
x_12 = lean_name_eq(x_1, x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = l_Lean_Meta_mkRel___closed__5;
x_14 = lean_array_push(x_13, x_2);
x_15 = lean_array_push(x_14, x_3);
x_16 = l_Lean_Meta_mkAppM(x_1, x_15, x_4, x_5, x_6, x_7, x_8);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_17 = l_Lean_Meta_mkRel___closed__6;
x_18 = l_Lean_mkAppB(x_17, x_2, x_3);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_8);
return x_19;
}
}
else
{
lean_object* x_20; 
lean_dec(x_1);
x_20 = l_Lean_Meta_mkEq(x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_20;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_AppBuilder(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Lean_Meta_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_AppBuilder(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__1 = _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__1();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__1);
l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2 = _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__2);
l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__3 = _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__3();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__3);
l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4 = _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__4);
l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__5 = _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__5();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__5);
l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6 = _init_l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6();
lean_mark_persistent(l_Lean_Loop_forIn_loop___at_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___spec__1___closed__6);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__1 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__1();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__1);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__2 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__2();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__2);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__3);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__4 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__4();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__4);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__5);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__6 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__6();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__6);
l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7 = _init_l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7();
lean_mark_persistent(l_Lean_Meta_forallMetaTelescopeReducingUntilDefEq___closed__7);
l_Lean_Meta_mkRel___closed__1 = _init_l_Lean_Meta_mkRel___closed__1();
lean_mark_persistent(l_Lean_Meta_mkRel___closed__1);
l_Lean_Meta_mkRel___closed__2 = _init_l_Lean_Meta_mkRel___closed__2();
lean_mark_persistent(l_Lean_Meta_mkRel___closed__2);
l_Lean_Meta_mkRel___closed__3 = _init_l_Lean_Meta_mkRel___closed__3();
lean_mark_persistent(l_Lean_Meta_mkRel___closed__3);
l_Lean_Meta_mkRel___closed__4 = _init_l_Lean_Meta_mkRel___closed__4();
lean_mark_persistent(l_Lean_Meta_mkRel___closed__4);
l_Lean_Meta_mkRel___closed__5 = _init_l_Lean_Meta_mkRel___closed__5();
lean_mark_persistent(l_Lean_Meta_mkRel___closed__5);
l_Lean_Meta_mkRel___closed__6 = _init_l_Lean_Meta_mkRel___closed__6();
lean_mark_persistent(l_Lean_Meta_mkRel___closed__6);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
