// Lean compiler output
// Module: Aesop.Builder.Default
// Imports: Init Aesop.Builder.Constructors Aesop.Builder.NormSimp Aesop.Builder.Tactic Aesop.Builder.Apply
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
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_RuleBuilder_default_err___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_RuleBuilder_default___closed__2;
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_RuleBuilder_default_err___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_RuleBuilder_default_err___closed__2;
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Aesop_RuleBuilder_default_err___closed__3;
lean_object* l_Aesop_RuleBuilder_apply(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_RuleBuilder_default_err___closed__6;
lean_object* l_Lean_MessageData_ofSyntax(lean_object*);
lean_object* l_Lean_Meta_SavedState_restore(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleBuilder_constructors(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_RuleBuilder_default___closed__3;
static lean_object* l_Aesop_RuleBuilder_default_err___closed__1;
lean_object* l_Aesop_RuleBuilder_simp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Aesop_PhaseSpec_phase(lean_object*);
lean_object* l_Lean_Meta_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_RuleBuilder_default_err___closed__4;
static lean_object* l_Aesop_RuleBuilder_default___closed__1;
LEAN_EXPORT lean_object* l_Aesop_RuleBuilder_default_err(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_RuleBuilder_default_err___closed__5;
LEAN_EXPORT lean_object* l_Aesop_RuleBuilder_default(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleBuilder_default_err___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Exception_isRuntime(lean_object*);
lean_object* l_Aesop_RuleBuilder_tactic(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_RuleBuilder_default_err___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default_err___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("aesop: Unable to interpret '", 28, 28);
return x_1;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default_err___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_RuleBuilder_default_err___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default_err___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("' as ", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default_err___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_RuleBuilder_default_err___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default_err___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" rule. Try specifying a builder.", 32, 32);
return x_1;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default_err___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_RuleBuilder_default_err___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleBuilder_default_err(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
lean_dec(x_2);
x_12 = l_Lean_MessageData_ofSyntax(x_11);
x_13 = l_Aesop_RuleBuilder_default_err___closed__2;
x_14 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_12);
x_15 = l_Aesop_RuleBuilder_default_err___closed__4;
x_16 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = l_Lean_stringToMessageData(x_1);
x_18 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
x_19 = l_Aesop_RuleBuilder_default_err___closed__6;
x_20 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = l_Lean_throwError___at_Aesop_RuleBuilder_default_err___spec__1(x_20, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_21;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_RuleBuilder_default_err___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_RuleBuilder_default_err___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleBuilder_default_err___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_RuleBuilder_default_err(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_11;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("a norm", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("a safe", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_RuleBuilder_default___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("an unsafe", 9, 9);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleBuilder_default(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_1, 2);
lean_inc(x_10);
x_11 = l_Aesop_PhaseSpec_phase(x_10);
lean_dec(x_10);
switch (x_11) {
case 0:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_9);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_15 = l_Aesop_RuleBuilder_constructors(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_14);
if (lean_obj_tag(x_15) == 0)
{
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
else
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Lean_Exception_isInterrupt(x_17);
if (x_19 == 0)
{
uint8_t x_20; 
x_20 = l_Lean_Exception_isRuntime(x_17);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
lean_free_object(x_15);
lean_dec(x_17);
x_21 = l_Lean_Meta_SavedState_restore(x_13, x_5, x_6, x_7, x_8, x_18);
lean_dec(x_13);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_22);
x_24 = lean_ctor_get(x_23, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_23, 1);
lean_inc(x_25);
lean_dec(x_23);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_26 = l_Aesop_RuleBuilder_tactic(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_25);
if (lean_obj_tag(x_26) == 0)
{
lean_dec(x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_26;
}
else
{
uint8_t x_27; 
x_27 = !lean_is_exclusive(x_26);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_28 = lean_ctor_get(x_26, 0);
x_29 = lean_ctor_get(x_26, 1);
x_30 = l_Lean_Exception_isInterrupt(x_28);
if (x_30 == 0)
{
uint8_t x_31; 
x_31 = l_Lean_Exception_isRuntime(x_28);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
lean_free_object(x_26);
lean_dec(x_28);
x_32 = l_Lean_Meta_SavedState_restore(x_24, x_5, x_6, x_7, x_8, x_29);
lean_dec(x_24);
x_33 = lean_ctor_get(x_32, 1);
lean_inc(x_33);
lean_dec(x_32);
x_34 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_33);
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_34, 1);
lean_inc(x_36);
lean_dec(x_34);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_37 = l_Aesop_RuleBuilder_simp(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_36);
if (lean_obj_tag(x_37) == 0)
{
lean_dec(x_35);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_37;
}
else
{
uint8_t x_38; 
x_38 = !lean_is_exclusive(x_37);
if (x_38 == 0)
{
lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_39 = lean_ctor_get(x_37, 0);
x_40 = lean_ctor_get(x_37, 1);
x_41 = l_Lean_Exception_isInterrupt(x_39);
if (x_41 == 0)
{
uint8_t x_42; 
x_42 = l_Lean_Exception_isRuntime(x_39);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; 
lean_free_object(x_37);
lean_dec(x_39);
x_43 = l_Lean_Meta_SavedState_restore(x_35, x_5, x_6, x_7, x_8, x_40);
lean_dec(x_35);
x_44 = lean_ctor_get(x_43, 1);
lean_inc(x_44);
lean_dec(x_43);
x_45 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_44);
x_46 = lean_ctor_get(x_45, 0);
lean_inc(x_46);
x_47 = lean_ctor_get(x_45, 1);
lean_inc(x_47);
lean_dec(x_45);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_48 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_47);
if (lean_obj_tag(x_48) == 0)
{
lean_dec(x_46);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_48;
}
else
{
uint8_t x_49; 
x_49 = !lean_is_exclusive(x_48);
if (x_49 == 0)
{
lean_object* x_50; lean_object* x_51; uint8_t x_52; 
x_50 = lean_ctor_get(x_48, 0);
x_51 = lean_ctor_get(x_48, 1);
x_52 = l_Lean_Exception_isInterrupt(x_50);
if (x_52 == 0)
{
uint8_t x_53; 
x_53 = l_Lean_Exception_isRuntime(x_50);
if (x_53 == 0)
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; 
lean_free_object(x_48);
lean_dec(x_50);
x_54 = l_Lean_Meta_SavedState_restore(x_46, x_5, x_6, x_7, x_8, x_51);
lean_dec(x_46);
x_55 = lean_ctor_get(x_54, 1);
lean_inc(x_55);
lean_dec(x_54);
x_56 = l_Aesop_RuleBuilder_default___closed__1;
x_57 = l_Aesop_RuleBuilder_default_err(x_56, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_55);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_57;
}
else
{
lean_dec(x_46);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_48;
}
}
else
{
lean_dec(x_46);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_48;
}
}
else
{
lean_object* x_58; lean_object* x_59; uint8_t x_60; 
x_58 = lean_ctor_get(x_48, 0);
x_59 = lean_ctor_get(x_48, 1);
lean_inc(x_59);
lean_inc(x_58);
lean_dec(x_48);
x_60 = l_Lean_Exception_isInterrupt(x_58);
if (x_60 == 0)
{
uint8_t x_61; 
x_61 = l_Lean_Exception_isRuntime(x_58);
if (x_61 == 0)
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
lean_dec(x_58);
x_62 = l_Lean_Meta_SavedState_restore(x_46, x_5, x_6, x_7, x_8, x_59);
lean_dec(x_46);
x_63 = lean_ctor_get(x_62, 1);
lean_inc(x_63);
lean_dec(x_62);
x_64 = l_Aesop_RuleBuilder_default___closed__1;
x_65 = l_Aesop_RuleBuilder_default_err(x_64, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_63);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_65;
}
else
{
lean_object* x_66; 
lean_dec(x_46);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_66 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_66, 0, x_58);
lean_ctor_set(x_66, 1, x_59);
return x_66;
}
}
else
{
lean_object* x_67; 
lean_dec(x_46);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_67 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_67, 0, x_58);
lean_ctor_set(x_67, 1, x_59);
return x_67;
}
}
}
}
else
{
lean_dec(x_35);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_37;
}
}
else
{
lean_dec(x_35);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_37;
}
}
else
{
lean_object* x_68; lean_object* x_69; uint8_t x_70; 
x_68 = lean_ctor_get(x_37, 0);
x_69 = lean_ctor_get(x_37, 1);
lean_inc(x_69);
lean_inc(x_68);
lean_dec(x_37);
x_70 = l_Lean_Exception_isInterrupt(x_68);
if (x_70 == 0)
{
uint8_t x_71; 
x_71 = l_Lean_Exception_isRuntime(x_68);
if (x_71 == 0)
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
lean_dec(x_68);
x_72 = l_Lean_Meta_SavedState_restore(x_35, x_5, x_6, x_7, x_8, x_69);
lean_dec(x_35);
x_73 = lean_ctor_get(x_72, 1);
lean_inc(x_73);
lean_dec(x_72);
x_74 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_73);
x_75 = lean_ctor_get(x_74, 0);
lean_inc(x_75);
x_76 = lean_ctor_get(x_74, 1);
lean_inc(x_76);
lean_dec(x_74);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_77 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_76);
if (lean_obj_tag(x_77) == 0)
{
lean_dec(x_75);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_77;
}
else
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; uint8_t x_81; 
x_78 = lean_ctor_get(x_77, 0);
lean_inc(x_78);
x_79 = lean_ctor_get(x_77, 1);
lean_inc(x_79);
if (lean_is_exclusive(x_77)) {
 lean_ctor_release(x_77, 0);
 lean_ctor_release(x_77, 1);
 x_80 = x_77;
} else {
 lean_dec_ref(x_77);
 x_80 = lean_box(0);
}
x_81 = l_Lean_Exception_isInterrupt(x_78);
if (x_81 == 0)
{
uint8_t x_82; 
x_82 = l_Lean_Exception_isRuntime(x_78);
if (x_82 == 0)
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; 
lean_dec(x_80);
lean_dec(x_78);
x_83 = l_Lean_Meta_SavedState_restore(x_75, x_5, x_6, x_7, x_8, x_79);
lean_dec(x_75);
x_84 = lean_ctor_get(x_83, 1);
lean_inc(x_84);
lean_dec(x_83);
x_85 = l_Aesop_RuleBuilder_default___closed__1;
x_86 = l_Aesop_RuleBuilder_default_err(x_85, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_84);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_86;
}
else
{
lean_object* x_87; 
lean_dec(x_75);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_80)) {
 x_87 = lean_alloc_ctor(1, 2, 0);
} else {
 x_87 = x_80;
}
lean_ctor_set(x_87, 0, x_78);
lean_ctor_set(x_87, 1, x_79);
return x_87;
}
}
else
{
lean_object* x_88; 
lean_dec(x_75);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_80)) {
 x_88 = lean_alloc_ctor(1, 2, 0);
} else {
 x_88 = x_80;
}
lean_ctor_set(x_88, 0, x_78);
lean_ctor_set(x_88, 1, x_79);
return x_88;
}
}
}
else
{
lean_object* x_89; 
lean_dec(x_35);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_89 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_89, 0, x_68);
lean_ctor_set(x_89, 1, x_69);
return x_89;
}
}
else
{
lean_object* x_90; 
lean_dec(x_35);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_90 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_90, 0, x_68);
lean_ctor_set(x_90, 1, x_69);
return x_90;
}
}
}
}
else
{
lean_dec(x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_26;
}
}
else
{
lean_dec(x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_26;
}
}
else
{
lean_object* x_91; lean_object* x_92; uint8_t x_93; 
x_91 = lean_ctor_get(x_26, 0);
x_92 = lean_ctor_get(x_26, 1);
lean_inc(x_92);
lean_inc(x_91);
lean_dec(x_26);
x_93 = l_Lean_Exception_isInterrupt(x_91);
if (x_93 == 0)
{
uint8_t x_94; 
x_94 = l_Lean_Exception_isRuntime(x_91);
if (x_94 == 0)
{
lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; 
lean_dec(x_91);
x_95 = l_Lean_Meta_SavedState_restore(x_24, x_5, x_6, x_7, x_8, x_92);
lean_dec(x_24);
x_96 = lean_ctor_get(x_95, 1);
lean_inc(x_96);
lean_dec(x_95);
x_97 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_96);
x_98 = lean_ctor_get(x_97, 0);
lean_inc(x_98);
x_99 = lean_ctor_get(x_97, 1);
lean_inc(x_99);
lean_dec(x_97);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_100 = l_Aesop_RuleBuilder_simp(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_99);
if (lean_obj_tag(x_100) == 0)
{
lean_dec(x_98);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_100;
}
else
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; uint8_t x_104; 
x_101 = lean_ctor_get(x_100, 0);
lean_inc(x_101);
x_102 = lean_ctor_get(x_100, 1);
lean_inc(x_102);
if (lean_is_exclusive(x_100)) {
 lean_ctor_release(x_100, 0);
 lean_ctor_release(x_100, 1);
 x_103 = x_100;
} else {
 lean_dec_ref(x_100);
 x_103 = lean_box(0);
}
x_104 = l_Lean_Exception_isInterrupt(x_101);
if (x_104 == 0)
{
uint8_t x_105; 
x_105 = l_Lean_Exception_isRuntime(x_101);
if (x_105 == 0)
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; 
lean_dec(x_103);
lean_dec(x_101);
x_106 = l_Lean_Meta_SavedState_restore(x_98, x_5, x_6, x_7, x_8, x_102);
lean_dec(x_98);
x_107 = lean_ctor_get(x_106, 1);
lean_inc(x_107);
lean_dec(x_106);
x_108 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_107);
x_109 = lean_ctor_get(x_108, 0);
lean_inc(x_109);
x_110 = lean_ctor_get(x_108, 1);
lean_inc(x_110);
lean_dec(x_108);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_111 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_110);
if (lean_obj_tag(x_111) == 0)
{
lean_dec(x_109);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_111;
}
else
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; uint8_t x_115; 
x_112 = lean_ctor_get(x_111, 0);
lean_inc(x_112);
x_113 = lean_ctor_get(x_111, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_111)) {
 lean_ctor_release(x_111, 0);
 lean_ctor_release(x_111, 1);
 x_114 = x_111;
} else {
 lean_dec_ref(x_111);
 x_114 = lean_box(0);
}
x_115 = l_Lean_Exception_isInterrupt(x_112);
if (x_115 == 0)
{
uint8_t x_116; 
x_116 = l_Lean_Exception_isRuntime(x_112);
if (x_116 == 0)
{
lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; 
lean_dec(x_114);
lean_dec(x_112);
x_117 = l_Lean_Meta_SavedState_restore(x_109, x_5, x_6, x_7, x_8, x_113);
lean_dec(x_109);
x_118 = lean_ctor_get(x_117, 1);
lean_inc(x_118);
lean_dec(x_117);
x_119 = l_Aesop_RuleBuilder_default___closed__1;
x_120 = l_Aesop_RuleBuilder_default_err(x_119, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_118);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_120;
}
else
{
lean_object* x_121; 
lean_dec(x_109);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_114)) {
 x_121 = lean_alloc_ctor(1, 2, 0);
} else {
 x_121 = x_114;
}
lean_ctor_set(x_121, 0, x_112);
lean_ctor_set(x_121, 1, x_113);
return x_121;
}
}
else
{
lean_object* x_122; 
lean_dec(x_109);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_114)) {
 x_122 = lean_alloc_ctor(1, 2, 0);
} else {
 x_122 = x_114;
}
lean_ctor_set(x_122, 0, x_112);
lean_ctor_set(x_122, 1, x_113);
return x_122;
}
}
}
else
{
lean_object* x_123; 
lean_dec(x_98);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_103)) {
 x_123 = lean_alloc_ctor(1, 2, 0);
} else {
 x_123 = x_103;
}
lean_ctor_set(x_123, 0, x_101);
lean_ctor_set(x_123, 1, x_102);
return x_123;
}
}
else
{
lean_object* x_124; 
lean_dec(x_98);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_103)) {
 x_124 = lean_alloc_ctor(1, 2, 0);
} else {
 x_124 = x_103;
}
lean_ctor_set(x_124, 0, x_101);
lean_ctor_set(x_124, 1, x_102);
return x_124;
}
}
}
else
{
lean_object* x_125; 
lean_dec(x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_125 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_125, 0, x_91);
lean_ctor_set(x_125, 1, x_92);
return x_125;
}
}
else
{
lean_object* x_126; 
lean_dec(x_24);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_126 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_126, 0, x_91);
lean_ctor_set(x_126, 1, x_92);
return x_126;
}
}
}
}
else
{
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
else
{
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_15;
}
}
else
{
lean_object* x_127; lean_object* x_128; uint8_t x_129; 
x_127 = lean_ctor_get(x_15, 0);
x_128 = lean_ctor_get(x_15, 1);
lean_inc(x_128);
lean_inc(x_127);
lean_dec(x_15);
x_129 = l_Lean_Exception_isInterrupt(x_127);
if (x_129 == 0)
{
uint8_t x_130; 
x_130 = l_Lean_Exception_isRuntime(x_127);
if (x_130 == 0)
{
lean_object* x_131; lean_object* x_132; lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; 
lean_dec(x_127);
x_131 = l_Lean_Meta_SavedState_restore(x_13, x_5, x_6, x_7, x_8, x_128);
lean_dec(x_13);
x_132 = lean_ctor_get(x_131, 1);
lean_inc(x_132);
lean_dec(x_131);
x_133 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_132);
x_134 = lean_ctor_get(x_133, 0);
lean_inc(x_134);
x_135 = lean_ctor_get(x_133, 1);
lean_inc(x_135);
lean_dec(x_133);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_136 = l_Aesop_RuleBuilder_tactic(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_135);
if (lean_obj_tag(x_136) == 0)
{
lean_dec(x_134);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_136;
}
else
{
lean_object* x_137; lean_object* x_138; lean_object* x_139; uint8_t x_140; 
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
x_140 = l_Lean_Exception_isInterrupt(x_137);
if (x_140 == 0)
{
uint8_t x_141; 
x_141 = l_Lean_Exception_isRuntime(x_137);
if (x_141 == 0)
{
lean_object* x_142; lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; 
lean_dec(x_139);
lean_dec(x_137);
x_142 = l_Lean_Meta_SavedState_restore(x_134, x_5, x_6, x_7, x_8, x_138);
lean_dec(x_134);
x_143 = lean_ctor_get(x_142, 1);
lean_inc(x_143);
lean_dec(x_142);
x_144 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_143);
x_145 = lean_ctor_get(x_144, 0);
lean_inc(x_145);
x_146 = lean_ctor_get(x_144, 1);
lean_inc(x_146);
lean_dec(x_144);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_147 = l_Aesop_RuleBuilder_simp(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_146);
if (lean_obj_tag(x_147) == 0)
{
lean_dec(x_145);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_147;
}
else
{
lean_object* x_148; lean_object* x_149; lean_object* x_150; uint8_t x_151; 
x_148 = lean_ctor_get(x_147, 0);
lean_inc(x_148);
x_149 = lean_ctor_get(x_147, 1);
lean_inc(x_149);
if (lean_is_exclusive(x_147)) {
 lean_ctor_release(x_147, 0);
 lean_ctor_release(x_147, 1);
 x_150 = x_147;
} else {
 lean_dec_ref(x_147);
 x_150 = lean_box(0);
}
x_151 = l_Lean_Exception_isInterrupt(x_148);
if (x_151 == 0)
{
uint8_t x_152; 
x_152 = l_Lean_Exception_isRuntime(x_148);
if (x_152 == 0)
{
lean_object* x_153; lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; 
lean_dec(x_150);
lean_dec(x_148);
x_153 = l_Lean_Meta_SavedState_restore(x_145, x_5, x_6, x_7, x_8, x_149);
lean_dec(x_145);
x_154 = lean_ctor_get(x_153, 1);
lean_inc(x_154);
lean_dec(x_153);
x_155 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_154);
x_156 = lean_ctor_get(x_155, 0);
lean_inc(x_156);
x_157 = lean_ctor_get(x_155, 1);
lean_inc(x_157);
lean_dec(x_155);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_158 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_157);
if (lean_obj_tag(x_158) == 0)
{
lean_dec(x_156);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_158;
}
else
{
lean_object* x_159; lean_object* x_160; lean_object* x_161; uint8_t x_162; 
x_159 = lean_ctor_get(x_158, 0);
lean_inc(x_159);
x_160 = lean_ctor_get(x_158, 1);
lean_inc(x_160);
if (lean_is_exclusive(x_158)) {
 lean_ctor_release(x_158, 0);
 lean_ctor_release(x_158, 1);
 x_161 = x_158;
} else {
 lean_dec_ref(x_158);
 x_161 = lean_box(0);
}
x_162 = l_Lean_Exception_isInterrupt(x_159);
if (x_162 == 0)
{
uint8_t x_163; 
x_163 = l_Lean_Exception_isRuntime(x_159);
if (x_163 == 0)
{
lean_object* x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; 
lean_dec(x_161);
lean_dec(x_159);
x_164 = l_Lean_Meta_SavedState_restore(x_156, x_5, x_6, x_7, x_8, x_160);
lean_dec(x_156);
x_165 = lean_ctor_get(x_164, 1);
lean_inc(x_165);
lean_dec(x_164);
x_166 = l_Aesop_RuleBuilder_default___closed__1;
x_167 = l_Aesop_RuleBuilder_default_err(x_166, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_165);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_167;
}
else
{
lean_object* x_168; 
lean_dec(x_156);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_161)) {
 x_168 = lean_alloc_ctor(1, 2, 0);
} else {
 x_168 = x_161;
}
lean_ctor_set(x_168, 0, x_159);
lean_ctor_set(x_168, 1, x_160);
return x_168;
}
}
else
{
lean_object* x_169; 
lean_dec(x_156);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_161)) {
 x_169 = lean_alloc_ctor(1, 2, 0);
} else {
 x_169 = x_161;
}
lean_ctor_set(x_169, 0, x_159);
lean_ctor_set(x_169, 1, x_160);
return x_169;
}
}
}
else
{
lean_object* x_170; 
lean_dec(x_145);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_150)) {
 x_170 = lean_alloc_ctor(1, 2, 0);
} else {
 x_170 = x_150;
}
lean_ctor_set(x_170, 0, x_148);
lean_ctor_set(x_170, 1, x_149);
return x_170;
}
}
else
{
lean_object* x_171; 
lean_dec(x_145);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_150)) {
 x_171 = lean_alloc_ctor(1, 2, 0);
} else {
 x_171 = x_150;
}
lean_ctor_set(x_171, 0, x_148);
lean_ctor_set(x_171, 1, x_149);
return x_171;
}
}
}
else
{
lean_object* x_172; 
lean_dec(x_134);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_139)) {
 x_172 = lean_alloc_ctor(1, 2, 0);
} else {
 x_172 = x_139;
}
lean_ctor_set(x_172, 0, x_137);
lean_ctor_set(x_172, 1, x_138);
return x_172;
}
}
else
{
lean_object* x_173; 
lean_dec(x_134);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_139)) {
 x_173 = lean_alloc_ctor(1, 2, 0);
} else {
 x_173 = x_139;
}
lean_ctor_set(x_173, 0, x_137);
lean_ctor_set(x_173, 1, x_138);
return x_173;
}
}
}
else
{
lean_object* x_174; 
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_174 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_174, 0, x_127);
lean_ctor_set(x_174, 1, x_128);
return x_174;
}
}
else
{
lean_object* x_175; 
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_175 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_175, 0, x_127);
lean_ctor_set(x_175, 1, x_128);
return x_175;
}
}
}
}
case 1:
{
lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; 
x_176 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_9);
x_177 = lean_ctor_get(x_176, 0);
lean_inc(x_177);
x_178 = lean_ctor_get(x_176, 1);
lean_inc(x_178);
lean_dec(x_176);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_179 = l_Aesop_RuleBuilder_constructors(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_178);
if (lean_obj_tag(x_179) == 0)
{
lean_dec(x_177);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_179;
}
else
{
uint8_t x_180; 
x_180 = !lean_is_exclusive(x_179);
if (x_180 == 0)
{
lean_object* x_181; lean_object* x_182; uint8_t x_183; 
x_181 = lean_ctor_get(x_179, 0);
x_182 = lean_ctor_get(x_179, 1);
x_183 = l_Lean_Exception_isInterrupt(x_181);
if (x_183 == 0)
{
uint8_t x_184; 
x_184 = l_Lean_Exception_isRuntime(x_181);
if (x_184 == 0)
{
lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; 
lean_free_object(x_179);
lean_dec(x_181);
x_185 = l_Lean_Meta_SavedState_restore(x_177, x_5, x_6, x_7, x_8, x_182);
lean_dec(x_177);
x_186 = lean_ctor_get(x_185, 1);
lean_inc(x_186);
lean_dec(x_185);
x_187 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_186);
x_188 = lean_ctor_get(x_187, 0);
lean_inc(x_188);
x_189 = lean_ctor_get(x_187, 1);
lean_inc(x_189);
lean_dec(x_187);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_190 = l_Aesop_RuleBuilder_tactic(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_189);
if (lean_obj_tag(x_190) == 0)
{
lean_dec(x_188);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_190;
}
else
{
uint8_t x_191; 
x_191 = !lean_is_exclusive(x_190);
if (x_191 == 0)
{
lean_object* x_192; lean_object* x_193; uint8_t x_194; 
x_192 = lean_ctor_get(x_190, 0);
x_193 = lean_ctor_get(x_190, 1);
x_194 = l_Lean_Exception_isInterrupt(x_192);
if (x_194 == 0)
{
uint8_t x_195; 
x_195 = l_Lean_Exception_isRuntime(x_192);
if (x_195 == 0)
{
lean_object* x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; lean_object* x_200; lean_object* x_201; 
lean_free_object(x_190);
lean_dec(x_192);
x_196 = l_Lean_Meta_SavedState_restore(x_188, x_5, x_6, x_7, x_8, x_193);
lean_dec(x_188);
x_197 = lean_ctor_get(x_196, 1);
lean_inc(x_197);
lean_dec(x_196);
x_198 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_197);
x_199 = lean_ctor_get(x_198, 0);
lean_inc(x_199);
x_200 = lean_ctor_get(x_198, 1);
lean_inc(x_200);
lean_dec(x_198);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_201 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_200);
if (lean_obj_tag(x_201) == 0)
{
lean_dec(x_199);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_201;
}
else
{
uint8_t x_202; 
x_202 = !lean_is_exclusive(x_201);
if (x_202 == 0)
{
lean_object* x_203; lean_object* x_204; uint8_t x_205; 
x_203 = lean_ctor_get(x_201, 0);
x_204 = lean_ctor_get(x_201, 1);
x_205 = l_Lean_Exception_isInterrupt(x_203);
if (x_205 == 0)
{
uint8_t x_206; 
x_206 = l_Lean_Exception_isRuntime(x_203);
if (x_206 == 0)
{
lean_object* x_207; lean_object* x_208; lean_object* x_209; lean_object* x_210; 
lean_free_object(x_201);
lean_dec(x_203);
x_207 = l_Lean_Meta_SavedState_restore(x_199, x_5, x_6, x_7, x_8, x_204);
lean_dec(x_199);
x_208 = lean_ctor_get(x_207, 1);
lean_inc(x_208);
lean_dec(x_207);
x_209 = l_Aesop_RuleBuilder_default___closed__2;
x_210 = l_Aesop_RuleBuilder_default_err(x_209, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_208);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_210;
}
else
{
lean_dec(x_199);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_201;
}
}
else
{
lean_dec(x_199);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_201;
}
}
else
{
lean_object* x_211; lean_object* x_212; uint8_t x_213; 
x_211 = lean_ctor_get(x_201, 0);
x_212 = lean_ctor_get(x_201, 1);
lean_inc(x_212);
lean_inc(x_211);
lean_dec(x_201);
x_213 = l_Lean_Exception_isInterrupt(x_211);
if (x_213 == 0)
{
uint8_t x_214; 
x_214 = l_Lean_Exception_isRuntime(x_211);
if (x_214 == 0)
{
lean_object* x_215; lean_object* x_216; lean_object* x_217; lean_object* x_218; 
lean_dec(x_211);
x_215 = l_Lean_Meta_SavedState_restore(x_199, x_5, x_6, x_7, x_8, x_212);
lean_dec(x_199);
x_216 = lean_ctor_get(x_215, 1);
lean_inc(x_216);
lean_dec(x_215);
x_217 = l_Aesop_RuleBuilder_default___closed__2;
x_218 = l_Aesop_RuleBuilder_default_err(x_217, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_216);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_218;
}
else
{
lean_object* x_219; 
lean_dec(x_199);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_219 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_219, 0, x_211);
lean_ctor_set(x_219, 1, x_212);
return x_219;
}
}
else
{
lean_object* x_220; 
lean_dec(x_199);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_220 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_220, 0, x_211);
lean_ctor_set(x_220, 1, x_212);
return x_220;
}
}
}
}
else
{
lean_dec(x_188);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_190;
}
}
else
{
lean_dec(x_188);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_190;
}
}
else
{
lean_object* x_221; lean_object* x_222; uint8_t x_223; 
x_221 = lean_ctor_get(x_190, 0);
x_222 = lean_ctor_get(x_190, 1);
lean_inc(x_222);
lean_inc(x_221);
lean_dec(x_190);
x_223 = l_Lean_Exception_isInterrupt(x_221);
if (x_223 == 0)
{
uint8_t x_224; 
x_224 = l_Lean_Exception_isRuntime(x_221);
if (x_224 == 0)
{
lean_object* x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; 
lean_dec(x_221);
x_225 = l_Lean_Meta_SavedState_restore(x_188, x_5, x_6, x_7, x_8, x_222);
lean_dec(x_188);
x_226 = lean_ctor_get(x_225, 1);
lean_inc(x_226);
lean_dec(x_225);
x_227 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_226);
x_228 = lean_ctor_get(x_227, 0);
lean_inc(x_228);
x_229 = lean_ctor_get(x_227, 1);
lean_inc(x_229);
lean_dec(x_227);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_230 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_229);
if (lean_obj_tag(x_230) == 0)
{
lean_dec(x_228);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_230;
}
else
{
lean_object* x_231; lean_object* x_232; lean_object* x_233; uint8_t x_234; 
x_231 = lean_ctor_get(x_230, 0);
lean_inc(x_231);
x_232 = lean_ctor_get(x_230, 1);
lean_inc(x_232);
if (lean_is_exclusive(x_230)) {
 lean_ctor_release(x_230, 0);
 lean_ctor_release(x_230, 1);
 x_233 = x_230;
} else {
 lean_dec_ref(x_230);
 x_233 = lean_box(0);
}
x_234 = l_Lean_Exception_isInterrupt(x_231);
if (x_234 == 0)
{
uint8_t x_235; 
x_235 = l_Lean_Exception_isRuntime(x_231);
if (x_235 == 0)
{
lean_object* x_236; lean_object* x_237; lean_object* x_238; lean_object* x_239; 
lean_dec(x_233);
lean_dec(x_231);
x_236 = l_Lean_Meta_SavedState_restore(x_228, x_5, x_6, x_7, x_8, x_232);
lean_dec(x_228);
x_237 = lean_ctor_get(x_236, 1);
lean_inc(x_237);
lean_dec(x_236);
x_238 = l_Aesop_RuleBuilder_default___closed__2;
x_239 = l_Aesop_RuleBuilder_default_err(x_238, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_237);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_239;
}
else
{
lean_object* x_240; 
lean_dec(x_228);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_233)) {
 x_240 = lean_alloc_ctor(1, 2, 0);
} else {
 x_240 = x_233;
}
lean_ctor_set(x_240, 0, x_231);
lean_ctor_set(x_240, 1, x_232);
return x_240;
}
}
else
{
lean_object* x_241; 
lean_dec(x_228);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_233)) {
 x_241 = lean_alloc_ctor(1, 2, 0);
} else {
 x_241 = x_233;
}
lean_ctor_set(x_241, 0, x_231);
lean_ctor_set(x_241, 1, x_232);
return x_241;
}
}
}
else
{
lean_object* x_242; 
lean_dec(x_188);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_242 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_242, 0, x_221);
lean_ctor_set(x_242, 1, x_222);
return x_242;
}
}
else
{
lean_object* x_243; 
lean_dec(x_188);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_243 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_243, 0, x_221);
lean_ctor_set(x_243, 1, x_222);
return x_243;
}
}
}
}
else
{
lean_dec(x_177);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_179;
}
}
else
{
lean_dec(x_177);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_179;
}
}
else
{
lean_object* x_244; lean_object* x_245; uint8_t x_246; 
x_244 = lean_ctor_get(x_179, 0);
x_245 = lean_ctor_get(x_179, 1);
lean_inc(x_245);
lean_inc(x_244);
lean_dec(x_179);
x_246 = l_Lean_Exception_isInterrupt(x_244);
if (x_246 == 0)
{
uint8_t x_247; 
x_247 = l_Lean_Exception_isRuntime(x_244);
if (x_247 == 0)
{
lean_object* x_248; lean_object* x_249; lean_object* x_250; lean_object* x_251; lean_object* x_252; lean_object* x_253; 
lean_dec(x_244);
x_248 = l_Lean_Meta_SavedState_restore(x_177, x_5, x_6, x_7, x_8, x_245);
lean_dec(x_177);
x_249 = lean_ctor_get(x_248, 1);
lean_inc(x_249);
lean_dec(x_248);
x_250 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_249);
x_251 = lean_ctor_get(x_250, 0);
lean_inc(x_251);
x_252 = lean_ctor_get(x_250, 1);
lean_inc(x_252);
lean_dec(x_250);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_253 = l_Aesop_RuleBuilder_tactic(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_252);
if (lean_obj_tag(x_253) == 0)
{
lean_dec(x_251);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_253;
}
else
{
lean_object* x_254; lean_object* x_255; lean_object* x_256; uint8_t x_257; 
x_254 = lean_ctor_get(x_253, 0);
lean_inc(x_254);
x_255 = lean_ctor_get(x_253, 1);
lean_inc(x_255);
if (lean_is_exclusive(x_253)) {
 lean_ctor_release(x_253, 0);
 lean_ctor_release(x_253, 1);
 x_256 = x_253;
} else {
 lean_dec_ref(x_253);
 x_256 = lean_box(0);
}
x_257 = l_Lean_Exception_isInterrupt(x_254);
if (x_257 == 0)
{
uint8_t x_258; 
x_258 = l_Lean_Exception_isRuntime(x_254);
if (x_258 == 0)
{
lean_object* x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; lean_object* x_264; 
lean_dec(x_256);
lean_dec(x_254);
x_259 = l_Lean_Meta_SavedState_restore(x_251, x_5, x_6, x_7, x_8, x_255);
lean_dec(x_251);
x_260 = lean_ctor_get(x_259, 1);
lean_inc(x_260);
lean_dec(x_259);
x_261 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_260);
x_262 = lean_ctor_get(x_261, 0);
lean_inc(x_262);
x_263 = lean_ctor_get(x_261, 1);
lean_inc(x_263);
lean_dec(x_261);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_264 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_263);
if (lean_obj_tag(x_264) == 0)
{
lean_dec(x_262);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_264;
}
else
{
lean_object* x_265; lean_object* x_266; lean_object* x_267; uint8_t x_268; 
x_265 = lean_ctor_get(x_264, 0);
lean_inc(x_265);
x_266 = lean_ctor_get(x_264, 1);
lean_inc(x_266);
if (lean_is_exclusive(x_264)) {
 lean_ctor_release(x_264, 0);
 lean_ctor_release(x_264, 1);
 x_267 = x_264;
} else {
 lean_dec_ref(x_264);
 x_267 = lean_box(0);
}
x_268 = l_Lean_Exception_isInterrupt(x_265);
if (x_268 == 0)
{
uint8_t x_269; 
x_269 = l_Lean_Exception_isRuntime(x_265);
if (x_269 == 0)
{
lean_object* x_270; lean_object* x_271; lean_object* x_272; lean_object* x_273; 
lean_dec(x_267);
lean_dec(x_265);
x_270 = l_Lean_Meta_SavedState_restore(x_262, x_5, x_6, x_7, x_8, x_266);
lean_dec(x_262);
x_271 = lean_ctor_get(x_270, 1);
lean_inc(x_271);
lean_dec(x_270);
x_272 = l_Aesop_RuleBuilder_default___closed__2;
x_273 = l_Aesop_RuleBuilder_default_err(x_272, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_271);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_273;
}
else
{
lean_object* x_274; 
lean_dec(x_262);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_267)) {
 x_274 = lean_alloc_ctor(1, 2, 0);
} else {
 x_274 = x_267;
}
lean_ctor_set(x_274, 0, x_265);
lean_ctor_set(x_274, 1, x_266);
return x_274;
}
}
else
{
lean_object* x_275; 
lean_dec(x_262);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_267)) {
 x_275 = lean_alloc_ctor(1, 2, 0);
} else {
 x_275 = x_267;
}
lean_ctor_set(x_275, 0, x_265);
lean_ctor_set(x_275, 1, x_266);
return x_275;
}
}
}
else
{
lean_object* x_276; 
lean_dec(x_251);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_256)) {
 x_276 = lean_alloc_ctor(1, 2, 0);
} else {
 x_276 = x_256;
}
lean_ctor_set(x_276, 0, x_254);
lean_ctor_set(x_276, 1, x_255);
return x_276;
}
}
else
{
lean_object* x_277; 
lean_dec(x_251);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_256)) {
 x_277 = lean_alloc_ctor(1, 2, 0);
} else {
 x_277 = x_256;
}
lean_ctor_set(x_277, 0, x_254);
lean_ctor_set(x_277, 1, x_255);
return x_277;
}
}
}
else
{
lean_object* x_278; 
lean_dec(x_177);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_278 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_278, 0, x_244);
lean_ctor_set(x_278, 1, x_245);
return x_278;
}
}
else
{
lean_object* x_279; 
lean_dec(x_177);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_279 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_279, 0, x_244);
lean_ctor_set(x_279, 1, x_245);
return x_279;
}
}
}
}
default: 
{
lean_object* x_280; lean_object* x_281; lean_object* x_282; lean_object* x_283; 
x_280 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_9);
x_281 = lean_ctor_get(x_280, 0);
lean_inc(x_281);
x_282 = lean_ctor_get(x_280, 1);
lean_inc(x_282);
lean_dec(x_280);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_283 = l_Aesop_RuleBuilder_constructors(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_282);
if (lean_obj_tag(x_283) == 0)
{
lean_dec(x_281);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_283;
}
else
{
uint8_t x_284; 
x_284 = !lean_is_exclusive(x_283);
if (x_284 == 0)
{
lean_object* x_285; lean_object* x_286; uint8_t x_287; 
x_285 = lean_ctor_get(x_283, 0);
x_286 = lean_ctor_get(x_283, 1);
x_287 = l_Lean_Exception_isInterrupt(x_285);
if (x_287 == 0)
{
uint8_t x_288; 
x_288 = l_Lean_Exception_isRuntime(x_285);
if (x_288 == 0)
{
lean_object* x_289; lean_object* x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; lean_object* x_294; 
lean_free_object(x_283);
lean_dec(x_285);
x_289 = l_Lean_Meta_SavedState_restore(x_281, x_5, x_6, x_7, x_8, x_286);
lean_dec(x_281);
x_290 = lean_ctor_get(x_289, 1);
lean_inc(x_290);
lean_dec(x_289);
x_291 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_290);
x_292 = lean_ctor_get(x_291, 0);
lean_inc(x_292);
x_293 = lean_ctor_get(x_291, 1);
lean_inc(x_293);
lean_dec(x_291);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_294 = l_Aesop_RuleBuilder_tactic(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_293);
if (lean_obj_tag(x_294) == 0)
{
lean_dec(x_292);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_294;
}
else
{
uint8_t x_295; 
x_295 = !lean_is_exclusive(x_294);
if (x_295 == 0)
{
lean_object* x_296; lean_object* x_297; uint8_t x_298; 
x_296 = lean_ctor_get(x_294, 0);
x_297 = lean_ctor_get(x_294, 1);
x_298 = l_Lean_Exception_isInterrupt(x_296);
if (x_298 == 0)
{
uint8_t x_299; 
x_299 = l_Lean_Exception_isRuntime(x_296);
if (x_299 == 0)
{
lean_object* x_300; lean_object* x_301; lean_object* x_302; lean_object* x_303; lean_object* x_304; lean_object* x_305; 
lean_free_object(x_294);
lean_dec(x_296);
x_300 = l_Lean_Meta_SavedState_restore(x_292, x_5, x_6, x_7, x_8, x_297);
lean_dec(x_292);
x_301 = lean_ctor_get(x_300, 1);
lean_inc(x_301);
lean_dec(x_300);
x_302 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_301);
x_303 = lean_ctor_get(x_302, 0);
lean_inc(x_303);
x_304 = lean_ctor_get(x_302, 1);
lean_inc(x_304);
lean_dec(x_302);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_305 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_304);
if (lean_obj_tag(x_305) == 0)
{
lean_dec(x_303);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_305;
}
else
{
uint8_t x_306; 
x_306 = !lean_is_exclusive(x_305);
if (x_306 == 0)
{
lean_object* x_307; lean_object* x_308; uint8_t x_309; 
x_307 = lean_ctor_get(x_305, 0);
x_308 = lean_ctor_get(x_305, 1);
x_309 = l_Lean_Exception_isInterrupt(x_307);
if (x_309 == 0)
{
uint8_t x_310; 
x_310 = l_Lean_Exception_isRuntime(x_307);
if (x_310 == 0)
{
lean_object* x_311; lean_object* x_312; lean_object* x_313; lean_object* x_314; 
lean_free_object(x_305);
lean_dec(x_307);
x_311 = l_Lean_Meta_SavedState_restore(x_303, x_5, x_6, x_7, x_8, x_308);
lean_dec(x_303);
x_312 = lean_ctor_get(x_311, 1);
lean_inc(x_312);
lean_dec(x_311);
x_313 = l_Aesop_RuleBuilder_default___closed__3;
x_314 = l_Aesop_RuleBuilder_default_err(x_313, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_312);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_314;
}
else
{
lean_dec(x_303);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_305;
}
}
else
{
lean_dec(x_303);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_305;
}
}
else
{
lean_object* x_315; lean_object* x_316; uint8_t x_317; 
x_315 = lean_ctor_get(x_305, 0);
x_316 = lean_ctor_get(x_305, 1);
lean_inc(x_316);
lean_inc(x_315);
lean_dec(x_305);
x_317 = l_Lean_Exception_isInterrupt(x_315);
if (x_317 == 0)
{
uint8_t x_318; 
x_318 = l_Lean_Exception_isRuntime(x_315);
if (x_318 == 0)
{
lean_object* x_319; lean_object* x_320; lean_object* x_321; lean_object* x_322; 
lean_dec(x_315);
x_319 = l_Lean_Meta_SavedState_restore(x_303, x_5, x_6, x_7, x_8, x_316);
lean_dec(x_303);
x_320 = lean_ctor_get(x_319, 1);
lean_inc(x_320);
lean_dec(x_319);
x_321 = l_Aesop_RuleBuilder_default___closed__3;
x_322 = l_Aesop_RuleBuilder_default_err(x_321, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_320);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_322;
}
else
{
lean_object* x_323; 
lean_dec(x_303);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_323 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_323, 0, x_315);
lean_ctor_set(x_323, 1, x_316);
return x_323;
}
}
else
{
lean_object* x_324; 
lean_dec(x_303);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_324 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_324, 0, x_315);
lean_ctor_set(x_324, 1, x_316);
return x_324;
}
}
}
}
else
{
lean_dec(x_292);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_294;
}
}
else
{
lean_dec(x_292);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_294;
}
}
else
{
lean_object* x_325; lean_object* x_326; uint8_t x_327; 
x_325 = lean_ctor_get(x_294, 0);
x_326 = lean_ctor_get(x_294, 1);
lean_inc(x_326);
lean_inc(x_325);
lean_dec(x_294);
x_327 = l_Lean_Exception_isInterrupt(x_325);
if (x_327 == 0)
{
uint8_t x_328; 
x_328 = l_Lean_Exception_isRuntime(x_325);
if (x_328 == 0)
{
lean_object* x_329; lean_object* x_330; lean_object* x_331; lean_object* x_332; lean_object* x_333; lean_object* x_334; 
lean_dec(x_325);
x_329 = l_Lean_Meta_SavedState_restore(x_292, x_5, x_6, x_7, x_8, x_326);
lean_dec(x_292);
x_330 = lean_ctor_get(x_329, 1);
lean_inc(x_330);
lean_dec(x_329);
x_331 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_330);
x_332 = lean_ctor_get(x_331, 0);
lean_inc(x_332);
x_333 = lean_ctor_get(x_331, 1);
lean_inc(x_333);
lean_dec(x_331);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_334 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_333);
if (lean_obj_tag(x_334) == 0)
{
lean_dec(x_332);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_334;
}
else
{
lean_object* x_335; lean_object* x_336; lean_object* x_337; uint8_t x_338; 
x_335 = lean_ctor_get(x_334, 0);
lean_inc(x_335);
x_336 = lean_ctor_get(x_334, 1);
lean_inc(x_336);
if (lean_is_exclusive(x_334)) {
 lean_ctor_release(x_334, 0);
 lean_ctor_release(x_334, 1);
 x_337 = x_334;
} else {
 lean_dec_ref(x_334);
 x_337 = lean_box(0);
}
x_338 = l_Lean_Exception_isInterrupt(x_335);
if (x_338 == 0)
{
uint8_t x_339; 
x_339 = l_Lean_Exception_isRuntime(x_335);
if (x_339 == 0)
{
lean_object* x_340; lean_object* x_341; lean_object* x_342; lean_object* x_343; 
lean_dec(x_337);
lean_dec(x_335);
x_340 = l_Lean_Meta_SavedState_restore(x_332, x_5, x_6, x_7, x_8, x_336);
lean_dec(x_332);
x_341 = lean_ctor_get(x_340, 1);
lean_inc(x_341);
lean_dec(x_340);
x_342 = l_Aesop_RuleBuilder_default___closed__3;
x_343 = l_Aesop_RuleBuilder_default_err(x_342, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_341);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_343;
}
else
{
lean_object* x_344; 
lean_dec(x_332);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_337)) {
 x_344 = lean_alloc_ctor(1, 2, 0);
} else {
 x_344 = x_337;
}
lean_ctor_set(x_344, 0, x_335);
lean_ctor_set(x_344, 1, x_336);
return x_344;
}
}
else
{
lean_object* x_345; 
lean_dec(x_332);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_337)) {
 x_345 = lean_alloc_ctor(1, 2, 0);
} else {
 x_345 = x_337;
}
lean_ctor_set(x_345, 0, x_335);
lean_ctor_set(x_345, 1, x_336);
return x_345;
}
}
}
else
{
lean_object* x_346; 
lean_dec(x_292);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_346 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_346, 0, x_325);
lean_ctor_set(x_346, 1, x_326);
return x_346;
}
}
else
{
lean_object* x_347; 
lean_dec(x_292);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_347 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_347, 0, x_325);
lean_ctor_set(x_347, 1, x_326);
return x_347;
}
}
}
}
else
{
lean_dec(x_281);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_283;
}
}
else
{
lean_dec(x_281);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_283;
}
}
else
{
lean_object* x_348; lean_object* x_349; uint8_t x_350; 
x_348 = lean_ctor_get(x_283, 0);
x_349 = lean_ctor_get(x_283, 1);
lean_inc(x_349);
lean_inc(x_348);
lean_dec(x_283);
x_350 = l_Lean_Exception_isInterrupt(x_348);
if (x_350 == 0)
{
uint8_t x_351; 
x_351 = l_Lean_Exception_isRuntime(x_348);
if (x_351 == 0)
{
lean_object* x_352; lean_object* x_353; lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; 
lean_dec(x_348);
x_352 = l_Lean_Meta_SavedState_restore(x_281, x_5, x_6, x_7, x_8, x_349);
lean_dec(x_281);
x_353 = lean_ctor_get(x_352, 1);
lean_inc(x_353);
lean_dec(x_352);
x_354 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_353);
x_355 = lean_ctor_get(x_354, 0);
lean_inc(x_355);
x_356 = lean_ctor_get(x_354, 1);
lean_inc(x_356);
lean_dec(x_354);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_357 = l_Aesop_RuleBuilder_tactic(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_356);
if (lean_obj_tag(x_357) == 0)
{
lean_dec(x_355);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_357;
}
else
{
lean_object* x_358; lean_object* x_359; lean_object* x_360; uint8_t x_361; 
x_358 = lean_ctor_get(x_357, 0);
lean_inc(x_358);
x_359 = lean_ctor_get(x_357, 1);
lean_inc(x_359);
if (lean_is_exclusive(x_357)) {
 lean_ctor_release(x_357, 0);
 lean_ctor_release(x_357, 1);
 x_360 = x_357;
} else {
 lean_dec_ref(x_357);
 x_360 = lean_box(0);
}
x_361 = l_Lean_Exception_isInterrupt(x_358);
if (x_361 == 0)
{
uint8_t x_362; 
x_362 = l_Lean_Exception_isRuntime(x_358);
if (x_362 == 0)
{
lean_object* x_363; lean_object* x_364; lean_object* x_365; lean_object* x_366; lean_object* x_367; lean_object* x_368; 
lean_dec(x_360);
lean_dec(x_358);
x_363 = l_Lean_Meta_SavedState_restore(x_355, x_5, x_6, x_7, x_8, x_359);
lean_dec(x_355);
x_364 = lean_ctor_get(x_363, 1);
lean_inc(x_364);
lean_dec(x_363);
x_365 = l_Lean_Meta_saveState___rarg(x_6, x_7, x_8, x_364);
x_366 = lean_ctor_get(x_365, 0);
lean_inc(x_366);
x_367 = lean_ctor_get(x_365, 1);
lean_inc(x_367);
lean_dec(x_365);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_368 = l_Aesop_RuleBuilder_apply(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_367);
if (lean_obj_tag(x_368) == 0)
{
lean_dec(x_366);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_368;
}
else
{
lean_object* x_369; lean_object* x_370; lean_object* x_371; uint8_t x_372; 
x_369 = lean_ctor_get(x_368, 0);
lean_inc(x_369);
x_370 = lean_ctor_get(x_368, 1);
lean_inc(x_370);
if (lean_is_exclusive(x_368)) {
 lean_ctor_release(x_368, 0);
 lean_ctor_release(x_368, 1);
 x_371 = x_368;
} else {
 lean_dec_ref(x_368);
 x_371 = lean_box(0);
}
x_372 = l_Lean_Exception_isInterrupt(x_369);
if (x_372 == 0)
{
uint8_t x_373; 
x_373 = l_Lean_Exception_isRuntime(x_369);
if (x_373 == 0)
{
lean_object* x_374; lean_object* x_375; lean_object* x_376; lean_object* x_377; 
lean_dec(x_371);
lean_dec(x_369);
x_374 = l_Lean_Meta_SavedState_restore(x_366, x_5, x_6, x_7, x_8, x_370);
lean_dec(x_366);
x_375 = lean_ctor_get(x_374, 1);
lean_inc(x_375);
lean_dec(x_374);
x_376 = l_Aesop_RuleBuilder_default___closed__3;
x_377 = l_Aesop_RuleBuilder_default_err(x_376, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_375);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_377;
}
else
{
lean_object* x_378; 
lean_dec(x_366);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_371)) {
 x_378 = lean_alloc_ctor(1, 2, 0);
} else {
 x_378 = x_371;
}
lean_ctor_set(x_378, 0, x_369);
lean_ctor_set(x_378, 1, x_370);
return x_378;
}
}
else
{
lean_object* x_379; 
lean_dec(x_366);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_371)) {
 x_379 = lean_alloc_ctor(1, 2, 0);
} else {
 x_379 = x_371;
}
lean_ctor_set(x_379, 0, x_369);
lean_ctor_set(x_379, 1, x_370);
return x_379;
}
}
}
else
{
lean_object* x_380; 
lean_dec(x_355);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_360)) {
 x_380 = lean_alloc_ctor(1, 2, 0);
} else {
 x_380 = x_360;
}
lean_ctor_set(x_380, 0, x_358);
lean_ctor_set(x_380, 1, x_359);
return x_380;
}
}
else
{
lean_object* x_381; 
lean_dec(x_355);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_360)) {
 x_381 = lean_alloc_ctor(1, 2, 0);
} else {
 x_381 = x_360;
}
lean_ctor_set(x_381, 0, x_358);
lean_ctor_set(x_381, 1, x_359);
return x_381;
}
}
}
else
{
lean_object* x_382; 
lean_dec(x_281);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_382 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_382, 0, x_348);
lean_ctor_set(x_382, 1, x_349);
return x_382;
}
}
else
{
lean_object* x_383; 
lean_dec(x_281);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_383 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_383, 0, x_348);
lean_ctor_set(x_383, 1, x_349);
return x_383;
}
}
}
}
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Constructors(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_NormSimp(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Tactic(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Apply(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Builder_Default(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Constructors(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_NormSimp(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Tactic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Apply(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_RuleBuilder_default_err___closed__1 = _init_l_Aesop_RuleBuilder_default_err___closed__1();
lean_mark_persistent(l_Aesop_RuleBuilder_default_err___closed__1);
l_Aesop_RuleBuilder_default_err___closed__2 = _init_l_Aesop_RuleBuilder_default_err___closed__2();
lean_mark_persistent(l_Aesop_RuleBuilder_default_err___closed__2);
l_Aesop_RuleBuilder_default_err___closed__3 = _init_l_Aesop_RuleBuilder_default_err___closed__3();
lean_mark_persistent(l_Aesop_RuleBuilder_default_err___closed__3);
l_Aesop_RuleBuilder_default_err___closed__4 = _init_l_Aesop_RuleBuilder_default_err___closed__4();
lean_mark_persistent(l_Aesop_RuleBuilder_default_err___closed__4);
l_Aesop_RuleBuilder_default_err___closed__5 = _init_l_Aesop_RuleBuilder_default_err___closed__5();
lean_mark_persistent(l_Aesop_RuleBuilder_default_err___closed__5);
l_Aesop_RuleBuilder_default_err___closed__6 = _init_l_Aesop_RuleBuilder_default_err___closed__6();
lean_mark_persistent(l_Aesop_RuleBuilder_default_err___closed__6);
l_Aesop_RuleBuilder_default___closed__1 = _init_l_Aesop_RuleBuilder_default___closed__1();
lean_mark_persistent(l_Aesop_RuleBuilder_default___closed__1);
l_Aesop_RuleBuilder_default___closed__2 = _init_l_Aesop_RuleBuilder_default___closed__2();
lean_mark_persistent(l_Aesop_RuleBuilder_default___closed__2);
l_Aesop_RuleBuilder_default___closed__3 = _init_l_Aesop_RuleBuilder_default___closed__3();
lean_mark_persistent(l_Aesop_RuleBuilder_default___closed__3);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
