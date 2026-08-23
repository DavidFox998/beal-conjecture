// Lean compiler output
// Module: Mathlib.Tactic.Lemma
// Imports: Init Mathlib.Init Lean.Parser.Command
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
static lean_object* l_expandLemma___closed__4;
static lean_object* l_expandLemma___closed__7;
static lean_object* l_lemma___closed__25;
static lean_object* l_lemma___closed__1;
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* lean_array_fset(lean_object*, lean_object*, lean_object*);
static lean_object* l_lemma___closed__16;
static lean_object* l_expandLemma___closed__2;
static lean_object* l_lemma___closed__17;
static lean_object* l_lemma___closed__4;
static lean_object* l_lemma___closed__29;
static lean_object* l_lemma___closed__28;
static lean_object* l_lemma___closed__14;
LEAN_EXPORT lean_object* l_expandLemma(lean_object*, lean_object*, lean_object*);
static lean_object* l_lemma___closed__21;
static lean_object* l_lemma___closed__7;
static lean_object* l_expandLemma___closed__6;
static lean_object* l_lemma___closed__26;
static lean_object* l_lemma___closed__11;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_expandLemma___closed__3;
static lean_object* l_lemma___closed__27;
static lean_object* l_lemma___closed__10;
static lean_object* l_lemma___closed__19;
static lean_object* l_expandLemma___closed__1;
static lean_object* l_lemma___closed__6;
static lean_object* l_lemma___closed__12;
LEAN_EXPORT lean_object* l_expandLemma___boxed(lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
static lean_object* l_lemma___closed__3;
static lean_object* l_lemma___closed__23;
static lean_object* l_lemma___closed__20;
static lean_object* l_lemma___closed__13;
static lean_object* l_lemma___closed__22;
static lean_object* l_lemma___closed__15;
static lean_object* l_lemma___closed__24;
static lean_object* l_expandLemma___closed__5;
static lean_object* l_lemma___closed__18;
LEAN_EXPORT lean_object* l_lemma;
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_setKind(lean_object*, lean_object*);
lean_object* l_Lean_mkAtomFrom(lean_object*, lean_object*, uint8_t);
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_lemma___closed__9;
static lean_object* l_lemma___closed__5;
static lean_object* l_lemma___closed__8;
static lean_object* l_lemma___closed__2;
static lean_object* _init_l_lemma___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("lemma", 5, 5);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("declModifiers", 13, 13);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_lemma___closed__6;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_lemma___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("group", 5, 5);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__8;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("lemma ", 6, 6);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_lemma___closed__10;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_lemma___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("declId", 6, 6);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__12;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_lemma___closed__13;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_lemma___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_lemma___closed__4;
x_2 = l_lemma___closed__11;
x_3 = l_lemma___closed__14;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_lemma___closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ppIndent", 8, 8);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__16;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__18() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("declSig", 7, 7);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__18;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_lemma___closed__19;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_lemma___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_lemma___closed__17;
x_2 = l_lemma___closed__20;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_lemma___closed__4;
x_2 = l_lemma___closed__15;
x_3 = l_lemma___closed__21;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_lemma___closed__23() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("declVal", 7, 7);
return x_1;
}
}
static lean_object* _init_l_lemma___closed__24() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_lemma___closed__23;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__25() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_lemma___closed__24;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_lemma___closed__26() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_lemma___closed__4;
x_2 = l_lemma___closed__22;
x_3 = l_lemma___closed__25;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_lemma___closed__27() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_lemma___closed__9;
x_2 = l_lemma___closed__26;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_lemma___closed__28() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_lemma___closed__4;
x_2 = l_lemma___closed__7;
x_3 = l_lemma___closed__27;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_lemma___closed__29() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_lemma___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_lemma___closed__28;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_lemma() {
_start:
{
lean_object* x_1; 
x_1 = l_lemma___closed__29;
return x_1;
}
}
static lean_object* _init_l_expandLemma___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_expandLemma___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_expandLemma___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Command", 7, 7);
return x_1;
}
}
static lean_object* _init_l_expandLemma___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("declaration", 11, 11);
return x_1;
}
}
static lean_object* _init_l_expandLemma___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_expandLemma___closed__1;
x_2 = l_expandLemma___closed__2;
x_3 = l_expandLemma___closed__3;
x_4 = l_expandLemma___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_expandLemma___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("theorem", 7, 7);
return x_1;
}
}
static lean_object* _init_l_expandLemma___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_expandLemma___closed__1;
x_2 = l_expandLemma___closed__2;
x_3 = l_expandLemma___closed__3;
x_4 = l_expandLemma___closed__6;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_expandLemma(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 1)
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_1, 2);
x_6 = lean_array_get_size(x_5);
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_dec_lt(x_7, x_6);
lean_dec(x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = l_expandLemma___closed__5;
x_10 = l_Lean_Syntax_setKind(x_1, x_9);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_3);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_array_fget(x_5, x_7);
x_13 = lean_box(0);
x_14 = lean_array_fset(x_5, x_7, x_13);
if (lean_obj_tag(x_12) == 1)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_12);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_12, 2);
x_17 = lean_array_get_size(x_16);
x_18 = lean_unsigned_to_nat(0u);
x_19 = lean_nat_dec_lt(x_18, x_17);
lean_dec(x_17);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_20 = l_expandLemma___closed__7;
x_21 = l_Lean_Syntax_setKind(x_12, x_20);
x_22 = lean_array_fset(x_14, x_7, x_21);
lean_ctor_set(x_1, 2, x_22);
x_23 = l_expandLemma___closed__5;
x_24 = l_Lean_Syntax_setKind(x_1, x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_3);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_26 = lean_array_fget(x_16, x_18);
x_27 = lean_array_fset(x_16, x_18, x_13);
x_28 = l_expandLemma___closed__6;
x_29 = 1;
x_30 = l_Lean_mkAtomFrom(x_26, x_28, x_29);
lean_dec(x_26);
x_31 = lean_array_fset(x_27, x_18, x_30);
lean_ctor_set(x_12, 2, x_31);
x_32 = l_expandLemma___closed__7;
x_33 = l_Lean_Syntax_setKind(x_12, x_32);
x_34 = lean_array_fset(x_14, x_7, x_33);
lean_ctor_set(x_1, 2, x_34);
x_35 = l_expandLemma___closed__5;
x_36 = l_Lean_Syntax_setKind(x_1, x_35);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_3);
return x_37;
}
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; 
x_38 = lean_ctor_get(x_12, 0);
x_39 = lean_ctor_get(x_12, 1);
x_40 = lean_ctor_get(x_12, 2);
lean_inc(x_40);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_12);
x_41 = lean_array_get_size(x_40);
x_42 = lean_unsigned_to_nat(0u);
x_43 = lean_nat_dec_lt(x_42, x_41);
lean_dec(x_41);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_44 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_44, 0, x_38);
lean_ctor_set(x_44, 1, x_39);
lean_ctor_set(x_44, 2, x_40);
x_45 = l_expandLemma___closed__7;
x_46 = l_Lean_Syntax_setKind(x_44, x_45);
x_47 = lean_array_fset(x_14, x_7, x_46);
lean_ctor_set(x_1, 2, x_47);
x_48 = l_expandLemma___closed__5;
x_49 = l_Lean_Syntax_setKind(x_1, x_48);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_3);
return x_50;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; uint8_t x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_51 = lean_array_fget(x_40, x_42);
x_52 = lean_array_fset(x_40, x_42, x_13);
x_53 = l_expandLemma___closed__6;
x_54 = 1;
x_55 = l_Lean_mkAtomFrom(x_51, x_53, x_54);
lean_dec(x_51);
x_56 = lean_array_fset(x_52, x_42, x_55);
x_57 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_57, 0, x_38);
lean_ctor_set(x_57, 1, x_39);
lean_ctor_set(x_57, 2, x_56);
x_58 = l_expandLemma___closed__7;
x_59 = l_Lean_Syntax_setKind(x_57, x_58);
x_60 = lean_array_fset(x_14, x_7, x_59);
lean_ctor_set(x_1, 2, x_60);
x_61 = l_expandLemma___closed__5;
x_62 = l_Lean_Syntax_setKind(x_1, x_61);
x_63 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_63, 0, x_62);
lean_ctor_set(x_63, 1, x_3);
return x_63;
}
}
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_64 = l_expandLemma___closed__7;
x_65 = l_Lean_Syntax_setKind(x_12, x_64);
x_66 = lean_array_fset(x_14, x_7, x_65);
lean_ctor_set(x_1, 2, x_66);
x_67 = l_expandLemma___closed__5;
x_68 = l_Lean_Syntax_setKind(x_1, x_67);
x_69 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_69, 0, x_68);
lean_ctor_set(x_69, 1, x_3);
return x_69;
}
}
}
else
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; uint8_t x_75; 
x_70 = lean_ctor_get(x_1, 0);
x_71 = lean_ctor_get(x_1, 1);
x_72 = lean_ctor_get(x_1, 2);
lean_inc(x_72);
lean_inc(x_71);
lean_inc(x_70);
lean_dec(x_1);
x_73 = lean_array_get_size(x_72);
x_74 = lean_unsigned_to_nat(1u);
x_75 = lean_nat_dec_lt(x_74, x_73);
lean_dec(x_73);
if (x_75 == 0)
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_76 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_76, 0, x_70);
lean_ctor_set(x_76, 1, x_71);
lean_ctor_set(x_76, 2, x_72);
x_77 = l_expandLemma___closed__5;
x_78 = l_Lean_Syntax_setKind(x_76, x_77);
x_79 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_79, 0, x_78);
lean_ctor_set(x_79, 1, x_3);
return x_79;
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_80 = lean_array_fget(x_72, x_74);
x_81 = lean_box(0);
x_82 = lean_array_fset(x_72, x_74, x_81);
if (lean_obj_tag(x_80) == 1)
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; uint8_t x_89; 
x_83 = lean_ctor_get(x_80, 0);
lean_inc(x_83);
x_84 = lean_ctor_get(x_80, 1);
lean_inc(x_84);
x_85 = lean_ctor_get(x_80, 2);
lean_inc(x_85);
if (lean_is_exclusive(x_80)) {
 lean_ctor_release(x_80, 0);
 lean_ctor_release(x_80, 1);
 lean_ctor_release(x_80, 2);
 x_86 = x_80;
} else {
 lean_dec_ref(x_80);
 x_86 = lean_box(0);
}
x_87 = lean_array_get_size(x_85);
x_88 = lean_unsigned_to_nat(0u);
x_89 = lean_nat_dec_lt(x_88, x_87);
lean_dec(x_87);
if (x_89 == 0)
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; 
if (lean_is_scalar(x_86)) {
 x_90 = lean_alloc_ctor(1, 3, 0);
} else {
 x_90 = x_86;
}
lean_ctor_set(x_90, 0, x_83);
lean_ctor_set(x_90, 1, x_84);
lean_ctor_set(x_90, 2, x_85);
x_91 = l_expandLemma___closed__7;
x_92 = l_Lean_Syntax_setKind(x_90, x_91);
x_93 = lean_array_fset(x_82, x_74, x_92);
x_94 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_94, 0, x_70);
lean_ctor_set(x_94, 1, x_71);
lean_ctor_set(x_94, 2, x_93);
x_95 = l_expandLemma___closed__5;
x_96 = l_Lean_Syntax_setKind(x_94, x_95);
x_97 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_97, 0, x_96);
lean_ctor_set(x_97, 1, x_3);
return x_97;
}
else
{
lean_object* x_98; lean_object* x_99; lean_object* x_100; uint8_t x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
x_98 = lean_array_fget(x_85, x_88);
x_99 = lean_array_fset(x_85, x_88, x_81);
x_100 = l_expandLemma___closed__6;
x_101 = 1;
x_102 = l_Lean_mkAtomFrom(x_98, x_100, x_101);
lean_dec(x_98);
x_103 = lean_array_fset(x_99, x_88, x_102);
if (lean_is_scalar(x_86)) {
 x_104 = lean_alloc_ctor(1, 3, 0);
} else {
 x_104 = x_86;
}
lean_ctor_set(x_104, 0, x_83);
lean_ctor_set(x_104, 1, x_84);
lean_ctor_set(x_104, 2, x_103);
x_105 = l_expandLemma___closed__7;
x_106 = l_Lean_Syntax_setKind(x_104, x_105);
x_107 = lean_array_fset(x_82, x_74, x_106);
x_108 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_108, 0, x_70);
lean_ctor_set(x_108, 1, x_71);
lean_ctor_set(x_108, 2, x_107);
x_109 = l_expandLemma___closed__5;
x_110 = l_Lean_Syntax_setKind(x_108, x_109);
x_111 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_111, 0, x_110);
lean_ctor_set(x_111, 1, x_3);
return x_111;
}
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; 
x_112 = l_expandLemma___closed__7;
x_113 = l_Lean_Syntax_setKind(x_80, x_112);
x_114 = lean_array_fset(x_82, x_74, x_113);
x_115 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_115, 0, x_70);
lean_ctor_set(x_115, 1, x_71);
lean_ctor_set(x_115, 2, x_114);
x_116 = l_expandLemma___closed__5;
x_117 = l_Lean_Syntax_setKind(x_115, x_116);
x_118 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_118, 0, x_117);
lean_ctor_set(x_118, 1, x_3);
return x_118;
}
}
}
}
else
{
lean_object* x_119; lean_object* x_120; lean_object* x_121; 
x_119 = l_expandLemma___closed__5;
x_120 = l_Lean_Syntax_setKind(x_1, x_119);
x_121 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_121, 0, x_120);
lean_ctor_set(x_121, 1, x_3);
return x_121;
}
}
}
LEAN_EXPORT lean_object* l_expandLemma___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_expandLemma(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Parser_Command(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_Lemma(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Parser_Command(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_lemma___closed__1 = _init_l_lemma___closed__1();
lean_mark_persistent(l_lemma___closed__1);
l_lemma___closed__2 = _init_l_lemma___closed__2();
lean_mark_persistent(l_lemma___closed__2);
l_lemma___closed__3 = _init_l_lemma___closed__3();
lean_mark_persistent(l_lemma___closed__3);
l_lemma___closed__4 = _init_l_lemma___closed__4();
lean_mark_persistent(l_lemma___closed__4);
l_lemma___closed__5 = _init_l_lemma___closed__5();
lean_mark_persistent(l_lemma___closed__5);
l_lemma___closed__6 = _init_l_lemma___closed__6();
lean_mark_persistent(l_lemma___closed__6);
l_lemma___closed__7 = _init_l_lemma___closed__7();
lean_mark_persistent(l_lemma___closed__7);
l_lemma___closed__8 = _init_l_lemma___closed__8();
lean_mark_persistent(l_lemma___closed__8);
l_lemma___closed__9 = _init_l_lemma___closed__9();
lean_mark_persistent(l_lemma___closed__9);
l_lemma___closed__10 = _init_l_lemma___closed__10();
lean_mark_persistent(l_lemma___closed__10);
l_lemma___closed__11 = _init_l_lemma___closed__11();
lean_mark_persistent(l_lemma___closed__11);
l_lemma___closed__12 = _init_l_lemma___closed__12();
lean_mark_persistent(l_lemma___closed__12);
l_lemma___closed__13 = _init_l_lemma___closed__13();
lean_mark_persistent(l_lemma___closed__13);
l_lemma___closed__14 = _init_l_lemma___closed__14();
lean_mark_persistent(l_lemma___closed__14);
l_lemma___closed__15 = _init_l_lemma___closed__15();
lean_mark_persistent(l_lemma___closed__15);
l_lemma___closed__16 = _init_l_lemma___closed__16();
lean_mark_persistent(l_lemma___closed__16);
l_lemma___closed__17 = _init_l_lemma___closed__17();
lean_mark_persistent(l_lemma___closed__17);
l_lemma___closed__18 = _init_l_lemma___closed__18();
lean_mark_persistent(l_lemma___closed__18);
l_lemma___closed__19 = _init_l_lemma___closed__19();
lean_mark_persistent(l_lemma___closed__19);
l_lemma___closed__20 = _init_l_lemma___closed__20();
lean_mark_persistent(l_lemma___closed__20);
l_lemma___closed__21 = _init_l_lemma___closed__21();
lean_mark_persistent(l_lemma___closed__21);
l_lemma___closed__22 = _init_l_lemma___closed__22();
lean_mark_persistent(l_lemma___closed__22);
l_lemma___closed__23 = _init_l_lemma___closed__23();
lean_mark_persistent(l_lemma___closed__23);
l_lemma___closed__24 = _init_l_lemma___closed__24();
lean_mark_persistent(l_lemma___closed__24);
l_lemma___closed__25 = _init_l_lemma___closed__25();
lean_mark_persistent(l_lemma___closed__25);
l_lemma___closed__26 = _init_l_lemma___closed__26();
lean_mark_persistent(l_lemma___closed__26);
l_lemma___closed__27 = _init_l_lemma___closed__27();
lean_mark_persistent(l_lemma___closed__27);
l_lemma___closed__28 = _init_l_lemma___closed__28();
lean_mark_persistent(l_lemma___closed__28);
l_lemma___closed__29 = _init_l_lemma___closed__29();
lean_mark_persistent(l_lemma___closed__29);
l_lemma = _init_l_lemma();
lean_mark_persistent(l_lemma);
l_expandLemma___closed__1 = _init_l_expandLemma___closed__1();
lean_mark_persistent(l_expandLemma___closed__1);
l_expandLemma___closed__2 = _init_l_expandLemma___closed__2();
lean_mark_persistent(l_expandLemma___closed__2);
l_expandLemma___closed__3 = _init_l_expandLemma___closed__3();
lean_mark_persistent(l_expandLemma___closed__3);
l_expandLemma___closed__4 = _init_l_expandLemma___closed__4();
lean_mark_persistent(l_expandLemma___closed__4);
l_expandLemma___closed__5 = _init_l_expandLemma___closed__5();
lean_mark_persistent(l_expandLemma___closed__5);
l_expandLemma___closed__6 = _init_l_expandLemma___closed__6();
lean_mark_persistent(l_expandLemma___closed__6);
l_expandLemma___closed__7 = _init_l_expandLemma___closed__7();
lean_mark_persistent(l_expandLemma___closed__7);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
