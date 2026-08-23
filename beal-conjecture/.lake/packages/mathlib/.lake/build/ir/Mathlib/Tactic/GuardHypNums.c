// Lean compiler output
// Module: Mathlib.Tactic.GuardHypNums
// Imports: Init Mathlib.Init Lean.Elab.Tactic.Basic
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
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_guardHypNums___closed__8;
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Unreachable______elabRules__Batteries__Tactic__unreachable__1___spec__1___rarg(lean_object*);
static lean_object* l_guardHypNums___closed__2;
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_guardHypNums___closed__1;
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_withoutRecover___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
lean_object* l_Lean_Elab_Tactic_SavedState_restore(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__1;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__3;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__1;
static lean_object* l_guardHypNums___closed__7;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__5;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__7;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__2;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6;
static lean_object* l_guardHypNums___closed__3;
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4;
static lean_object* l_guardHypNums___closed__9;
lean_object* l_Lean_LocalContext_foldlM___at_Lean_LocalContext_size___spec__1(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2;
static lean_object* l_guardHypNums___closed__5;
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_TSyntax_getNat(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_guardHypNums___closed__11;
lean_object* l_ReaderT_pure___at_Lean_Elab_Tactic_saveTacticInfoForToken___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_guardHypNums;
static lean_object* l_guardHypNums___closed__6;
static lean_object* l_guardHypNums___closed__4;
static lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__8;
uint8_t l_Lean_Exception_isRuntime(lean_object*);
static lean_object* l_guardHypNums___closed__10;
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
static lean_object* _init_l_guardHypNums___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("guardHypNums", 12, 12);
return x_1;
}
}
static lean_object* _init_l_guardHypNums___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_guardHypNums___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_guardHypNums___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_guardHypNums___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_guardHypNums___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_guardHypNums___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("guard_hyp_nums ", 15, 15);
return x_1;
}
}
static lean_object* _init_l_guardHypNums___closed__6() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_guardHypNums___closed__5;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_guardHypNums___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("num", 3, 3);
return x_1;
}
}
static lean_object* _init_l_guardHypNums___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_guardHypNums___closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_guardHypNums___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_guardHypNums___closed__8;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_guardHypNums___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_guardHypNums___closed__4;
x_2 = l_guardHypNums___closed__6;
x_3 = l_guardHypNums___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_guardHypNums___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_guardHypNums___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_guardHypNums___closed__10;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_guardHypNums() {
_start:
{
lean_object* x_1; 
x_1 = l_guardHypNums___closed__11;
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("failed", 6, 6);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__2;
x_11 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_10, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("expected ", 9, 9);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" hypotheses but found ", 22, 22);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___boxed), 9, 0);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_closure((void*)(l_ReaderT_pure___at_Lean_Elab_Tactic_saveTacticInfoForToken___spec__1___rarg___boxed), 10, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_guardHypNums___closed__2;
lean_inc(x_1);
x_12 = l_Lean_Syntax_isOfKind(x_1, x_11);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Unreachable______elabRules__Batteries__Tactic__unreachable__1___spec__1___rarg(x_10);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_87; lean_object* x_88; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
lean_dec(x_1);
x_16 = lean_ctor_get(x_6, 1);
lean_inc(x_16);
x_17 = lean_unsigned_to_nat(0u);
x_18 = l_Lean_LocalContext_foldlM___at_Lean_LocalContext_size___spec__1(x_16, x_17, x_17);
lean_dec(x_16);
x_19 = l_Lean_TSyntax_getNat(x_15);
lean_dec(x_15);
x_87 = lean_nat_dec_eq(x_18, x_19);
x_88 = l_Lean_Elab_Tactic_saveState___rarg(x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (x_87 == 0)
{
lean_object* x_89; lean_object* x_90; lean_object* x_91; 
x_89 = lean_ctor_get(x_88, 0);
lean_inc(x_89);
x_90 = lean_ctor_get(x_88, 1);
lean_inc(x_90);
lean_dec(x_88);
x_91 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__7;
x_20 = x_91;
x_21 = x_89;
x_22 = x_90;
goto block_86;
}
else
{
lean_object* x_92; lean_object* x_93; lean_object* x_94; 
x_92 = lean_ctor_get(x_88, 0);
lean_inc(x_92);
x_93 = lean_ctor_get(x_88, 1);
lean_inc(x_93);
lean_dec(x_88);
x_94 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__8;
x_20 = x_94;
x_21 = x_92;
x_22 = x_93;
goto block_86;
}
block_86:
{
lean_object* x_23; 
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_23 = l_Lean_Elab_Tactic_withoutRecover___rarg(x_20, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_22);
if (lean_obj_tag(x_23) == 0)
{
lean_dec(x_21);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_23;
}
else
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_25 = lean_ctor_get(x_23, 0);
x_26 = lean_ctor_get(x_23, 1);
x_27 = l_Lean_Exception_isInterrupt(x_25);
if (x_27 == 0)
{
uint8_t x_28; 
x_28 = l_Lean_Exception_isRuntime(x_25);
if (x_28 == 0)
{
uint8_t x_29; lean_object* x_30; uint8_t x_31; 
lean_free_object(x_23);
lean_dec(x_25);
x_29 = 0;
x_30 = l_Lean_Elab_Tactic_SavedState_restore(x_21, x_29, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_26);
x_31 = !lean_is_exclusive(x_30);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_32 = lean_ctor_get(x_30, 1);
x_33 = lean_ctor_get(x_30, 0);
lean_dec(x_33);
x_34 = l___private_Init_Data_Repr_0__Nat_reprFast(x_19);
x_35 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = l_Lean_MessageData_ofFormat(x_35);
x_37 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2;
lean_ctor_set_tag(x_30, 7);
lean_ctor_set(x_30, 1, x_36);
lean_ctor_set(x_30, 0, x_37);
x_38 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4;
x_39 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_39, 0, x_30);
lean_ctor_set(x_39, 1, x_38);
x_40 = l___private_Init_Data_Repr_0__Nat_reprFast(x_18);
x_41 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_41, 0, x_40);
x_42 = l_Lean_MessageData_ofFormat(x_41);
x_43 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_43, 0, x_39);
lean_ctor_set(x_43, 1, x_42);
x_44 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6;
x_45 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_45, 0, x_43);
lean_ctor_set(x_45, 1, x_44);
x_46 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_45, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_32);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_46;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_47 = lean_ctor_get(x_30, 1);
lean_inc(x_47);
lean_dec(x_30);
x_48 = l___private_Init_Data_Repr_0__Nat_reprFast(x_19);
x_49 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_49, 0, x_48);
x_50 = l_Lean_MessageData_ofFormat(x_49);
x_51 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2;
x_52 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_50);
x_53 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4;
x_54 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
x_55 = l___private_Init_Data_Repr_0__Nat_reprFast(x_18);
x_56 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_56, 0, x_55);
x_57 = l_Lean_MessageData_ofFormat(x_56);
x_58 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_58, 0, x_54);
lean_ctor_set(x_58, 1, x_57);
x_59 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6;
x_60 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
x_61 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_60, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_47);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_61;
}
}
else
{
lean_dec(x_21);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_23;
}
}
else
{
lean_dec(x_21);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_23;
}
}
else
{
lean_object* x_62; lean_object* x_63; uint8_t x_64; 
x_62 = lean_ctor_get(x_23, 0);
x_63 = lean_ctor_get(x_23, 1);
lean_inc(x_63);
lean_inc(x_62);
lean_dec(x_23);
x_64 = l_Lean_Exception_isInterrupt(x_62);
if (x_64 == 0)
{
uint8_t x_65; 
x_65 = l_Lean_Exception_isRuntime(x_62);
if (x_65 == 0)
{
uint8_t x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
lean_dec(x_62);
x_66 = 0;
x_67 = l_Lean_Elab_Tactic_SavedState_restore(x_21, x_66, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_63);
x_68 = lean_ctor_get(x_67, 1);
lean_inc(x_68);
if (lean_is_exclusive(x_67)) {
 lean_ctor_release(x_67, 0);
 lean_ctor_release(x_67, 1);
 x_69 = x_67;
} else {
 lean_dec_ref(x_67);
 x_69 = lean_box(0);
}
x_70 = l___private_Init_Data_Repr_0__Nat_reprFast(x_19);
x_71 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_71, 0, x_70);
x_72 = l_Lean_MessageData_ofFormat(x_71);
x_73 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2;
if (lean_is_scalar(x_69)) {
 x_74 = lean_alloc_ctor(7, 2, 0);
} else {
 x_74 = x_69;
 lean_ctor_set_tag(x_74, 7);
}
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_72);
x_75 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4;
x_76 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_76, 0, x_74);
lean_ctor_set(x_76, 1, x_75);
x_77 = l___private_Init_Data_Repr_0__Nat_reprFast(x_18);
x_78 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_78, 0, x_77);
x_79 = l_Lean_MessageData_ofFormat(x_78);
x_80 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_80, 0, x_76);
lean_ctor_set(x_80, 1, x_79);
x_81 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6;
x_82 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_82, 0, x_80);
lean_ctor_set(x_82, 1, x_81);
x_83 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_82, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_68);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_83;
}
else
{
lean_object* x_84; 
lean_dec(x_21);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_84 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_84, 0, x_62);
lean_ctor_set(x_84, 1, x_63);
return x_84;
}
}
else
{
lean_object* x_85; 
lean_dec(x_21);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_62);
lean_ctor_set(x_85, 1, x_63);
return x_85;
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_Tactic_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_GuardHypNums(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_Tactic_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_guardHypNums___closed__1 = _init_l_guardHypNums___closed__1();
lean_mark_persistent(l_guardHypNums___closed__1);
l_guardHypNums___closed__2 = _init_l_guardHypNums___closed__2();
lean_mark_persistent(l_guardHypNums___closed__2);
l_guardHypNums___closed__3 = _init_l_guardHypNums___closed__3();
lean_mark_persistent(l_guardHypNums___closed__3);
l_guardHypNums___closed__4 = _init_l_guardHypNums___closed__4();
lean_mark_persistent(l_guardHypNums___closed__4);
l_guardHypNums___closed__5 = _init_l_guardHypNums___closed__5();
lean_mark_persistent(l_guardHypNums___closed__5);
l_guardHypNums___closed__6 = _init_l_guardHypNums___closed__6();
lean_mark_persistent(l_guardHypNums___closed__6);
l_guardHypNums___closed__7 = _init_l_guardHypNums___closed__7();
lean_mark_persistent(l_guardHypNums___closed__7);
l_guardHypNums___closed__8 = _init_l_guardHypNums___closed__8();
lean_mark_persistent(l_guardHypNums___closed__8);
l_guardHypNums___closed__9 = _init_l_guardHypNums___closed__9();
lean_mark_persistent(l_guardHypNums___closed__9);
l_guardHypNums___closed__10 = _init_l_guardHypNums___closed__10();
lean_mark_persistent(l_guardHypNums___closed__10);
l_guardHypNums___closed__11 = _init_l_guardHypNums___closed__11();
lean_mark_persistent(l_guardHypNums___closed__11);
l_guardHypNums = _init_l_guardHypNums();
lean_mark_persistent(l_guardHypNums);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__1 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__1();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__1);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__2 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__2();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___lambda__1___closed__2);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__1 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__1();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__1);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__2);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__3 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__3();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__3);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__4);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__5 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__5();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__5);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__6);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__7 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__7();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__7);
l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__8 = _init_l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__8();
lean_mark_persistent(l___aux__Mathlib__Tactic__GuardHypNums______elabRules__guardHypNums__1___closed__8);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
