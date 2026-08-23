// Lean compiler output
// Module: Mathlib.Tactic.Relation.Symm
// Imports: Init Mathlib.Init Lean.Meta.Tactic.Symm
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
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Expr_isAppOfArity(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_DiscrTree_instInhabited(lean_object*);
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___closed__2;
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__1;
lean_object* l_Lean_Expr_appArg_x21(lean_object*);
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__2;
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Meta_Symm_symmExt;
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__2;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
lean_object* l_Lean_Expr_constName_x3f(lean_object*);
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_appFn_x21(lean_object*);
extern lean_object* l_Lean_Meta_Symm_symmExt_config;
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___closed__1;
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__1;
static lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3;
lean_object* l_Lean_ScopedEnvExtension_getState___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_getAppFn(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_DiscrTree_getMatch___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_box(0);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Expr_relSidesIfSymm_x3f___lambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Meta_DiscrTree_instInhabited(lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Meta_Symm_symmExt;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__1;
if (lean_obj_tag(x_1) == 5)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
if (lean_obj_tag(x_9) == 5)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_10 = lean_ctor_get(x_1, 1);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_9, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
lean_dec(x_9);
x_13 = lean_st_ref_get(x_6, x_7);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
x_17 = lean_ctor_get(x_15, 0);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2;
x_19 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3;
x_20 = l_Lean_ScopedEnvExtension_getState___rarg(x_18, x_19, x_17);
lean_dec(x_17);
x_21 = l_Lean_Meta_Symm_symmExt_config;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_11);
x_22 = l_Lean_Meta_DiscrTree_getMatch___rarg(x_20, x_11, x_21, x_3, x_4, x_5, x_6, x_16);
if (lean_obj_tag(x_22) == 0)
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; uint8_t x_26; 
x_24 = lean_ctor_get(x_22, 0);
x_25 = lean_ctor_get(x_22, 1);
x_26 = l_Array_isEmpty___rarg(x_24);
lean_dec(x_24);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_27 = l_Lean_Expr_getAppFn(x_11);
lean_dec(x_11);
x_28 = l_Lean_Expr_constName_x3f(x_27);
lean_dec(x_27);
if (lean_obj_tag(x_28) == 0)
{
lean_object* x_29; 
lean_free_object(x_13);
lean_dec(x_12);
lean_dec(x_10);
x_29 = lean_box(0);
lean_ctor_set(x_22, 0, x_29);
return x_22;
}
else
{
uint8_t x_30; 
x_30 = !lean_is_exclusive(x_28);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_28, 0);
lean_ctor_set(x_13, 1, x_10);
lean_ctor_set(x_13, 0, x_12);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_13);
lean_ctor_set(x_28, 0, x_32);
lean_ctor_set(x_22, 0, x_28);
return x_22;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_28, 0);
lean_inc(x_33);
lean_dec(x_28);
lean_ctor_set(x_13, 1, x_10);
lean_ctor_set(x_13, 0, x_12);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_13);
x_35 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_22, 0, x_35);
return x_22;
}
}
}
else
{
lean_object* x_36; lean_object* x_37; 
lean_free_object(x_22);
lean_free_object(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
x_36 = lean_box(0);
x_37 = lean_apply_6(x_8, x_36, x_3, x_4, x_5, x_6, x_25);
return x_37;
}
}
else
{
lean_object* x_38; lean_object* x_39; uint8_t x_40; 
x_38 = lean_ctor_get(x_22, 0);
x_39 = lean_ctor_get(x_22, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_22);
x_40 = l_Array_isEmpty___rarg(x_38);
lean_dec(x_38);
if (x_40 == 0)
{
lean_object* x_41; lean_object* x_42; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_41 = l_Lean_Expr_getAppFn(x_11);
lean_dec(x_11);
x_42 = l_Lean_Expr_constName_x3f(x_41);
lean_dec(x_41);
if (lean_obj_tag(x_42) == 0)
{
lean_object* x_43; lean_object* x_44; 
lean_free_object(x_13);
lean_dec(x_12);
lean_dec(x_10);
x_43 = lean_box(0);
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_43);
lean_ctor_set(x_44, 1, x_39);
return x_44;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_45 = lean_ctor_get(x_42, 0);
lean_inc(x_45);
if (lean_is_exclusive(x_42)) {
 lean_ctor_release(x_42, 0);
 x_46 = x_42;
} else {
 lean_dec_ref(x_42);
 x_46 = lean_box(0);
}
lean_ctor_set(x_13, 1, x_10);
lean_ctor_set(x_13, 0, x_12);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_45);
lean_ctor_set(x_47, 1, x_13);
if (lean_is_scalar(x_46)) {
 x_48 = lean_alloc_ctor(1, 1, 0);
} else {
 x_48 = x_46;
}
lean_ctor_set(x_48, 0, x_47);
x_49 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_49, 1, x_39);
return x_49;
}
}
else
{
lean_object* x_50; lean_object* x_51; 
lean_free_object(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
x_50 = lean_box(0);
x_51 = lean_apply_6(x_8, x_50, x_3, x_4, x_5, x_6, x_39);
return x_51;
}
}
}
else
{
uint8_t x_52; 
lean_free_object(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_52 = !lean_is_exclusive(x_22);
if (x_52 == 0)
{
return x_22;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_22, 0);
x_54 = lean_ctor_get(x_22, 1);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_22);
x_55 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_55, 0, x_53);
lean_ctor_set(x_55, 1, x_54);
return x_55;
}
}
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_56 = lean_ctor_get(x_13, 0);
x_57 = lean_ctor_get(x_13, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_13);
x_58 = lean_ctor_get(x_56, 0);
lean_inc(x_58);
lean_dec(x_56);
x_59 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2;
x_60 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3;
x_61 = l_Lean_ScopedEnvExtension_getState___rarg(x_59, x_60, x_58);
lean_dec(x_58);
x_62 = l_Lean_Meta_Symm_symmExt_config;
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_11);
x_63 = l_Lean_Meta_DiscrTree_getMatch___rarg(x_61, x_11, x_62, x_3, x_4, x_5, x_6, x_57);
if (lean_obj_tag(x_63) == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; uint8_t x_67; 
x_64 = lean_ctor_get(x_63, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_63, 1);
lean_inc(x_65);
if (lean_is_exclusive(x_63)) {
 lean_ctor_release(x_63, 0);
 lean_ctor_release(x_63, 1);
 x_66 = x_63;
} else {
 lean_dec_ref(x_63);
 x_66 = lean_box(0);
}
x_67 = l_Array_isEmpty___rarg(x_64);
lean_dec(x_64);
if (x_67 == 0)
{
lean_object* x_68; lean_object* x_69; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_68 = l_Lean_Expr_getAppFn(x_11);
lean_dec(x_11);
x_69 = l_Lean_Expr_constName_x3f(x_68);
lean_dec(x_68);
if (lean_obj_tag(x_69) == 0)
{
lean_object* x_70; lean_object* x_71; 
lean_dec(x_12);
lean_dec(x_10);
x_70 = lean_box(0);
if (lean_is_scalar(x_66)) {
 x_71 = lean_alloc_ctor(0, 2, 0);
} else {
 x_71 = x_66;
}
lean_ctor_set(x_71, 0, x_70);
lean_ctor_set(x_71, 1, x_65);
return x_71;
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_72 = lean_ctor_get(x_69, 0);
lean_inc(x_72);
if (lean_is_exclusive(x_69)) {
 lean_ctor_release(x_69, 0);
 x_73 = x_69;
} else {
 lean_dec_ref(x_69);
 x_73 = lean_box(0);
}
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_12);
lean_ctor_set(x_74, 1, x_10);
x_75 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_75, 0, x_72);
lean_ctor_set(x_75, 1, x_74);
if (lean_is_scalar(x_73)) {
 x_76 = lean_alloc_ctor(1, 1, 0);
} else {
 x_76 = x_73;
}
lean_ctor_set(x_76, 0, x_75);
if (lean_is_scalar(x_66)) {
 x_77 = lean_alloc_ctor(0, 2, 0);
} else {
 x_77 = x_66;
}
lean_ctor_set(x_77, 0, x_76);
lean_ctor_set(x_77, 1, x_65);
return x_77;
}
}
else
{
lean_object* x_78; lean_object* x_79; 
lean_dec(x_66);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
x_78 = lean_box(0);
x_79 = lean_apply_6(x_8, x_78, x_3, x_4, x_5, x_6, x_65);
return x_79;
}
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_80 = lean_ctor_get(x_63, 0);
lean_inc(x_80);
x_81 = lean_ctor_get(x_63, 1);
lean_inc(x_81);
if (lean_is_exclusive(x_63)) {
 lean_ctor_release(x_63, 0);
 lean_ctor_release(x_63, 1);
 x_82 = x_63;
} else {
 lean_dec_ref(x_63);
 x_82 = lean_box(0);
}
if (lean_is_scalar(x_82)) {
 x_83 = lean_alloc_ctor(1, 2, 0);
} else {
 x_83 = x_82;
}
lean_ctor_set(x_83, 0, x_80);
lean_ctor_set(x_83, 1, x_81);
return x_83;
}
}
}
else
{
lean_object* x_84; lean_object* x_85; 
lean_dec(x_9);
lean_dec(x_1);
x_84 = lean_box(0);
x_85 = lean_apply_6(x_8, x_84, x_3, x_4, x_5, x_6, x_7);
return x_85;
}
}
else
{
lean_object* x_86; lean_object* x_87; 
lean_dec(x_1);
x_86 = lean_box(0);
x_87 = lean_apply_6(x_8, x_86, x_3, x_4, x_5, x_6, x_7);
return x_87;
}
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HEq", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__2;
x_9 = lean_unsigned_to_nat(4u);
x_10 = l_Lean_Expr_isAppOfArity(x_1, x_8, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_box(0);
x_12 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2(x_1, x_11, x_3, x_4, x_5, x_6, x_7);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_13 = l_Lean_Expr_appFn_x21(x_1);
x_14 = l_Lean_Expr_appFn_x21(x_13);
lean_dec(x_13);
x_15 = l_Lean_Expr_appArg_x21(x_14);
lean_dec(x_14);
x_16 = l_Lean_Expr_appArg_x21(x_1);
lean_dec(x_1);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_8);
lean_ctor_set(x_18, 1, x_17);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_18);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_7);
return x_20;
}
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Iff", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__2;
x_9 = lean_unsigned_to_nat(2u);
x_10 = l_Lean_Expr_isAppOfArity(x_1, x_8, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_box(0);
x_12 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__3(x_1, x_11, x_3, x_4, x_5, x_6, x_7);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_13 = l_Lean_Expr_appFn_x21(x_1);
x_14 = l_Lean_Expr_appArg_x21(x_13);
lean_dec(x_13);
x_15 = l_Lean_Expr_appArg_x21(x_1);
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_8);
lean_ctor_set(x_17, 1, x_16);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_17);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_7);
return x_19;
}
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Eq", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Lean_Expr_relSidesIfSymm_x3f___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Expr_relSidesIfSymm_x3f___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = l_Lean_Expr_relSidesIfSymm_x3f___closed__2;
x_8 = lean_unsigned_to_nat(3u);
x_9 = l_Lean_Expr_isAppOfArity(x_1, x_7, x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_box(0);
x_11 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__4(x_1, x_10, x_2, x_3, x_4, x_5, x_6);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_12 = l_Lean_Expr_appFn_x21(x_1);
x_13 = l_Lean_Expr_appArg_x21(x_12);
lean_dec(x_12);
x_14 = l_Lean_Expr_appArg_x21(x_1);
lean_dec(x_1);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_14);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_7);
lean_ctor_set(x_16, 1, x_15);
x_17 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_17, 0, x_16);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_6);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Expr_relSidesIfSymm_x3f___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_2);
return x_8;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Symm(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_Relation_Symm(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Symm(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__1 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__1();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__1);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__2);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__2___closed__3);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__1 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__1();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__1);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__2 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__2();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__3___closed__2);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__1 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__1();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__1);
l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__2 = _init_l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__2();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___lambda__4___closed__2);
l_Lean_Expr_relSidesIfSymm_x3f___closed__1 = _init_l_Lean_Expr_relSidesIfSymm_x3f___closed__1();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___closed__1);
l_Lean_Expr_relSidesIfSymm_x3f___closed__2 = _init_l_Lean_Expr_relSidesIfSymm_x3f___closed__2();
lean_mark_persistent(l_Lean_Expr_relSidesIfSymm_x3f___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
