// Lean compiler output
// Module: Mathlib.Lean.Elab.Tactic.Basic
// Imports: Init Mathlib.Lean.Meta
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
static lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_getMainTarget_x27_x27(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4;
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Exception_isInterrupt(lean_object*);
lean_object* l_Lean_FileMap_toPosition(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_doneWithScope(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getPos_x3f(lean_object*, uint8_t);
lean_object* l_Lean_Elab_Tactic_getMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_Tactic_doneWithScope___closed__1;
lean_object* l_Lean_stringToMessageData(lean_object*);
static lean_object* l_Lean_Elab_Tactic_doneWithScope___closed__3;
lean_object* l_Lean_Elab_Tactic_SavedState_restore(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Exception_toMessageData(lean_object*);
static lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__3;
static lean_object* l_Lean_Elab_Tactic_doneWithScope___closed__4;
static lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__1;
lean_object* l_Lean_Elab_Tactic_getUnsolvedGoals(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__1;
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_Tactic_doneWithScope___closed__2;
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Exception_getRef(lean_object*);
lean_object* l_Lean_log___at_Lean_Elab_Tactic_closeUsingOrAdmit___spec__3(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_List_isEmpty___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3(lean_object*);
lean_object* l_Lean_MVarId_getType_x27_x27(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Term_reportUnsolvedGoals(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Elab_isAbortTacticException(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_getMainTarget_x27_x27___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_doneWithScope___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope(lean_object*);
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_focus___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__2;
static lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Exception_isRuntime(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
extern lean_object* l_Lean_Elab_abortTacticExceptionId;
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_getMainTarget_x27_x27(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_Elab_Tactic_getMainGoal(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Lean_MVarId_getType_x27_x27(x_11, x_5, x_6, x_7, x_8, x_12);
return x_13;
}
else
{
uint8_t x_14; 
x_14 = !lean_is_exclusive(x_10);
if (x_14 == 0)
{
return x_10;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_10, 0);
x_16 = lean_ctor_get(x_10, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_10);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_getMainTarget_x27_x27___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_Elab_Tactic_getMainTarget_x27_x27(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
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
static lean_object* _init_l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Elab_abortTacticExceptionId;
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__1;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_alloc_closure((void*)(l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg), 1, 0);
return x_9;
}
}
static lean_object* _init_l_Lean_Elab_Tactic_doneWithScope___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_Tactic_doneWithScope___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_Tactic_doneWithScope___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Elab_Tactic_doneWithScope___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" failed to solve some goals.\n", 29, 29);
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_Tactic_doneWithScope___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_Tactic_doneWithScope___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_doneWithScope(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Lean_Elab_Tactic_getUnsolvedGoals(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_11, 1);
x_15 = l_List_isEmpty___rarg(x_13);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
lean_free_object(x_11);
x_16 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
x_17 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_1);
x_18 = l_Lean_Elab_Tactic_doneWithScope___closed__4;
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = 2;
lean_inc(x_8);
x_21 = l_Lean_log___at_Lean_Elab_Tactic_closeUsingOrAdmit___spec__3(x_19, x_20, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_14);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = l_Lean_Elab_Term_reportUnsolvedGoals(x_13, x_6, x_7, x_8, x_9, x_22);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_ctor_get(x_23, 1);
lean_inc(x_24);
lean_dec(x_23);
x_25 = l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg(x_24);
return x_25;
}
else
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_23);
if (x_26 == 0)
{
return x_23;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_23, 0);
x_28 = lean_ctor_get(x_23, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_23);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
else
{
lean_object* x_30; 
lean_dec(x_13);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_30 = lean_box(0);
lean_ctor_set(x_11, 0, x_30);
return x_11;
}
}
else
{
lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_31 = lean_ctor_get(x_11, 0);
x_32 = lean_ctor_get(x_11, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_11);
x_33 = l_List_isEmpty___rarg(x_31);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_34 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
x_35 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_1);
x_36 = l_Lean_Elab_Tactic_doneWithScope___closed__4;
x_37 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
x_38 = 2;
lean_inc(x_8);
x_39 = l_Lean_log___at_Lean_Elab_Tactic_closeUsingOrAdmit___spec__3(x_37, x_38, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_32);
x_40 = lean_ctor_get(x_39, 1);
lean_inc(x_40);
lean_dec(x_39);
x_41 = l_Lean_Elab_Term_reportUnsolvedGoals(x_31, x_6, x_7, x_8, x_9, x_40);
if (lean_obj_tag(x_41) == 0)
{
lean_object* x_42; lean_object* x_43; 
x_42 = lean_ctor_get(x_41, 1);
lean_inc(x_42);
lean_dec(x_41);
x_43 = l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg(x_42);
return x_43;
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_44 = lean_ctor_get(x_41, 0);
lean_inc(x_44);
x_45 = lean_ctor_get(x_41, 1);
lean_inc(x_45);
if (lean_is_exclusive(x_41)) {
 lean_ctor_release(x_41, 0);
 lean_ctor_release(x_41, 1);
 x_46 = x_41;
} else {
 lean_dec_ref(x_41);
 x_46 = lean_box(0);
}
if (lean_is_scalar(x_46)) {
 x_47 = lean_alloc_ctor(1, 2, 0);
} else {
 x_47 = x_46;
}
lean_ctor_set(x_47, 0, x_44);
lean_ctor_set(x_47, 1, x_45);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; 
lean_dec(x_31);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
x_48 = lean_box(0);
x_49 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_49, 1, x_32);
return x_49;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_doneWithScope___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_Elab_Tactic_doneWithScope(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 5);
x_5 = 0;
x_6 = l_Lean_Syntax_getPos_x3f(x_4, x_5);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_3);
return x_8;
}
else
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_6, 0);
lean_inc(x_9);
lean_dec(x_6);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_3);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg___boxed), 3, 0);
return x_7;
}
}
static lean_object* _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(":", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" ", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg(x_8, x_9, x_10);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = l_Lean_Exception_getRef(x_1);
x_15 = 0;
x_16 = l_Lean_Syntax_getPos_x3f(x_14, x_15);
lean_dec(x_14);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; 
lean_dec(x_13);
lean_dec(x_8);
x_17 = l_Lean_Exception_toMessageData(x_1);
lean_ctor_set(x_11, 0, x_17);
return x_11;
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_16);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = lean_ctor_get(x_16, 0);
x_20 = lean_nat_dec_eq(x_13, x_19);
lean_dec(x_13);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_21 = lean_ctor_get(x_8, 1);
lean_inc(x_21);
lean_dec(x_8);
x_22 = l_Lean_FileMap_toPosition(x_21, x_19);
lean_dec(x_19);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = l___private_Init_Data_Repr_0__Nat_reprFast(x_23);
lean_ctor_set_tag(x_16, 3);
lean_ctor_set(x_16, 0, x_24);
x_25 = l_Lean_MessageData_ofFormat(x_16);
x_26 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
x_27 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_ctor_get(x_22, 1);
lean_inc(x_30);
lean_dec(x_22);
x_31 = l___private_Init_Data_Repr_0__Nat_reprFast(x_30);
x_32 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_32, 0, x_31);
x_33 = l_Lean_MessageData_ofFormat(x_32);
x_34 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_34, 0, x_29);
lean_ctor_set(x_34, 1, x_33);
x_35 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4;
x_36 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_36, 0, x_34);
lean_ctor_set(x_36, 1, x_35);
x_37 = l_Lean_Exception_toMessageData(x_1);
x_38 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_38, 0, x_36);
lean_ctor_set(x_38, 1, x_37);
x_39 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_26);
lean_ctor_set(x_11, 0, x_39);
return x_11;
}
else
{
lean_object* x_40; 
lean_free_object(x_16);
lean_dec(x_19);
lean_dec(x_8);
x_40 = l_Lean_Exception_toMessageData(x_1);
lean_ctor_set(x_11, 0, x_40);
return x_11;
}
}
else
{
lean_object* x_41; uint8_t x_42; 
x_41 = lean_ctor_get(x_16, 0);
lean_inc(x_41);
lean_dec(x_16);
x_42 = lean_nat_dec_eq(x_13, x_41);
lean_dec(x_13);
if (x_42 == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_43 = lean_ctor_get(x_8, 1);
lean_inc(x_43);
lean_dec(x_8);
x_44 = l_Lean_FileMap_toPosition(x_43, x_41);
lean_dec(x_41);
x_45 = lean_ctor_get(x_44, 0);
lean_inc(x_45);
x_46 = l___private_Init_Data_Repr_0__Nat_reprFast(x_45);
x_47 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_47, 0, x_46);
x_48 = l_Lean_MessageData_ofFormat(x_47);
x_49 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
x_50 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_48);
x_51 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2;
x_52 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
x_53 = lean_ctor_get(x_44, 1);
lean_inc(x_53);
lean_dec(x_44);
x_54 = l___private_Init_Data_Repr_0__Nat_reprFast(x_53);
x_55 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_55, 0, x_54);
x_56 = l_Lean_MessageData_ofFormat(x_55);
x_57 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_57, 0, x_52);
lean_ctor_set(x_57, 1, x_56);
x_58 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4;
x_59 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_59, 0, x_57);
lean_ctor_set(x_59, 1, x_58);
x_60 = l_Lean_Exception_toMessageData(x_1);
x_61 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
x_62 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_49);
lean_ctor_set(x_11, 0, x_62);
return x_11;
}
else
{
lean_object* x_63; 
lean_dec(x_41);
lean_dec(x_8);
x_63 = l_Lean_Exception_toMessageData(x_1);
lean_ctor_set(x_11, 0, x_63);
return x_11;
}
}
}
}
else
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; uint8_t x_67; lean_object* x_68; 
x_64 = lean_ctor_get(x_11, 0);
x_65 = lean_ctor_get(x_11, 1);
lean_inc(x_65);
lean_inc(x_64);
lean_dec(x_11);
x_66 = l_Lean_Exception_getRef(x_1);
x_67 = 0;
x_68 = l_Lean_Syntax_getPos_x3f(x_66, x_67);
lean_dec(x_66);
if (lean_obj_tag(x_68) == 0)
{
lean_object* x_69; lean_object* x_70; 
lean_dec(x_64);
lean_dec(x_8);
x_69 = l_Lean_Exception_toMessageData(x_1);
x_70 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_70, 0, x_69);
lean_ctor_set(x_70, 1, x_65);
return x_70;
}
else
{
lean_object* x_71; lean_object* x_72; uint8_t x_73; 
x_71 = lean_ctor_get(x_68, 0);
lean_inc(x_71);
if (lean_is_exclusive(x_68)) {
 lean_ctor_release(x_68, 0);
 x_72 = x_68;
} else {
 lean_dec_ref(x_68);
 x_72 = lean_box(0);
}
x_73 = lean_nat_dec_eq(x_64, x_71);
lean_dec(x_64);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; 
x_74 = lean_ctor_get(x_8, 1);
lean_inc(x_74);
lean_dec(x_8);
x_75 = l_Lean_FileMap_toPosition(x_74, x_71);
lean_dec(x_71);
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = l___private_Init_Data_Repr_0__Nat_reprFast(x_76);
if (lean_is_scalar(x_72)) {
 x_78 = lean_alloc_ctor(3, 1, 0);
} else {
 x_78 = x_72;
 lean_ctor_set_tag(x_78, 3);
}
lean_ctor_set(x_78, 0, x_77);
x_79 = l_Lean_MessageData_ofFormat(x_78);
x_80 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
x_81 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_79);
x_82 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2;
x_83 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_83, 0, x_81);
lean_ctor_set(x_83, 1, x_82);
x_84 = lean_ctor_get(x_75, 1);
lean_inc(x_84);
lean_dec(x_75);
x_85 = l___private_Init_Data_Repr_0__Nat_reprFast(x_84);
x_86 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_86, 0, x_85);
x_87 = l_Lean_MessageData_ofFormat(x_86);
x_88 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_88, 0, x_83);
lean_ctor_set(x_88, 1, x_87);
x_89 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4;
x_90 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_90, 0, x_88);
lean_ctor_set(x_90, 1, x_89);
x_91 = l_Lean_Exception_toMessageData(x_1);
x_92 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_92, 0, x_90);
lean_ctor_set(x_92, 1, x_91);
x_93 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_93, 0, x_92);
lean_ctor_set(x_93, 1, x_80);
x_94 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_94, 0, x_93);
lean_ctor_set(x_94, 1, x_65);
return x_94;
}
else
{
lean_object* x_95; lean_object* x_96; 
lean_dec(x_72);
lean_dec(x_71);
lean_dec(x_8);
x_95 = l_Lean_Exception_toMessageData(x_1);
x_96 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_96, 0, x_95);
lean_ctor_set(x_96, 1, x_65);
return x_96;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_8, 5);
x_12 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_6, x_7, x_8, x_9, x_10);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_11);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_11);
lean_ctor_set(x_15, 1, x_14);
lean_ctor_set_tag(x_12, 1);
lean_ctor_set(x_12, 0, x_15);
return x_12;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_12, 0);
x_17 = lean_ctor_get(x_12, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_12);
lean_inc(x_11);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_11);
lean_ctor_set(x_18, 1, x_16);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Lean_Elab_Tactic_doneWithScope(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; 
x_14 = lean_ctor_get(x_12, 0);
lean_dec(x_14);
lean_ctor_set(x_12, 0, x_2);
return x_12;
}
else
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_2);
lean_ctor_set(x_16, 1, x_15);
return x_16;
}
}
else
{
uint8_t x_17; 
lean_dec(x_2);
x_17 = !lean_is_exclusive(x_12);
if (x_17 == 0)
{
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_12, 0);
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_12);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
}
}
static lean_object* _init_l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" failed.\n", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; uint8_t x_14; 
x_13 = l_Lean_Elab_Tactic_saveState___rarg(x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
x_14 = !lean_is_exclusive(x_13);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_13, 0);
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_17 = lean_apply_9(x_1, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_16);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
lean_free_object(x_13);
lean_dec(x_15);
lean_dec(x_3);
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = lean_apply_10(x_2, x_18, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_19);
return x_20;
}
else
{
uint8_t x_21; 
lean_dec(x_2);
x_21 = !lean_is_exclusive(x_17);
if (x_21 == 0)
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = lean_ctor_get(x_17, 0);
x_23 = lean_ctor_get(x_17, 1);
x_24 = l_Lean_Exception_isInterrupt(x_22);
if (x_24 == 0)
{
uint8_t x_25; 
x_25 = l_Lean_Exception_isRuntime(x_22);
if (x_25 == 0)
{
uint8_t x_26; lean_object* x_27; uint8_t x_28; 
lean_free_object(x_17);
x_26 = 0;
x_27 = l_Lean_Elab_Tactic_SavedState_restore(x_15, x_26, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_23);
x_28 = !lean_is_exclusive(x_27);
if (x_28 == 0)
{
lean_object* x_29; lean_object* x_30; uint8_t x_31; 
x_29 = lean_ctor_get(x_27, 1);
x_30 = lean_ctor_get(x_27, 0);
lean_dec(x_30);
x_31 = l_Lean_Elab_isAbortTacticException(x_22);
if (x_31 == 0)
{
lean_object* x_32; uint8_t x_33; 
lean_free_object(x_27);
lean_inc(x_10);
x_32 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(x_22, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_29);
x_33 = !lean_is_exclusive(x_32);
if (x_33 == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; uint8_t x_41; 
x_34 = lean_ctor_get(x_32, 0);
x_35 = lean_ctor_get(x_32, 1);
x_36 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
lean_ctor_set_tag(x_32, 7);
lean_ctor_set(x_32, 1, x_3);
lean_ctor_set(x_32, 0, x_36);
x_37 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_37);
lean_ctor_set(x_13, 0, x_32);
x_38 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_38, 0, x_13);
lean_ctor_set(x_38, 1, x_34);
x_39 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_36);
x_40 = l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(x_39, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_35);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_41 = !lean_is_exclusive(x_40);
if (x_41 == 0)
{
return x_40;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_40, 0);
x_43 = lean_ctor_get(x_40, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_40);
x_44 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_45 = lean_ctor_get(x_32, 0);
x_46 = lean_ctor_get(x_32, 1);
lean_inc(x_46);
lean_inc(x_45);
lean_dec(x_32);
x_47 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
x_48 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_3);
x_49 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_49);
lean_ctor_set(x_13, 0, x_48);
x_50 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_50, 0, x_13);
lean_ctor_set(x_50, 1, x_45);
x_51 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_51, 0, x_50);
lean_ctor_set(x_51, 1, x_47);
x_52 = l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(x_51, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_46);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_53 = lean_ctor_get(x_52, 0);
lean_inc(x_53);
x_54 = lean_ctor_get(x_52, 1);
lean_inc(x_54);
if (lean_is_exclusive(x_52)) {
 lean_ctor_release(x_52, 0);
 lean_ctor_release(x_52, 1);
 x_55 = x_52;
} else {
 lean_dec_ref(x_52);
 x_55 = lean_box(0);
}
if (lean_is_scalar(x_55)) {
 x_56 = lean_alloc_ctor(1, 2, 0);
} else {
 x_56 = x_55;
}
lean_ctor_set(x_56, 0, x_53);
lean_ctor_set(x_56, 1, x_54);
return x_56;
}
}
else
{
lean_free_object(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_ctor_set_tag(x_27, 1);
lean_ctor_set(x_27, 0, x_22);
return x_27;
}
}
else
{
lean_object* x_57; uint8_t x_58; 
x_57 = lean_ctor_get(x_27, 1);
lean_inc(x_57);
lean_dec(x_27);
x_58 = l_Lean_Elab_isAbortTacticException(x_22);
if (x_58 == 0)
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
lean_inc(x_10);
x_59 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(x_22, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_57);
x_60 = lean_ctor_get(x_59, 0);
lean_inc(x_60);
x_61 = lean_ctor_get(x_59, 1);
lean_inc(x_61);
if (lean_is_exclusive(x_59)) {
 lean_ctor_release(x_59, 0);
 lean_ctor_release(x_59, 1);
 x_62 = x_59;
} else {
 lean_dec_ref(x_59);
 x_62 = lean_box(0);
}
x_63 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
if (lean_is_scalar(x_62)) {
 x_64 = lean_alloc_ctor(7, 2, 0);
} else {
 x_64 = x_62;
 lean_ctor_set_tag(x_64, 7);
}
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_3);
x_65 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_65);
lean_ctor_set(x_13, 0, x_64);
x_66 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_66, 0, x_13);
lean_ctor_set(x_66, 1, x_60);
x_67 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_67, 0, x_66);
lean_ctor_set(x_67, 1, x_63);
x_68 = l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(x_67, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_61);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_69 = lean_ctor_get(x_68, 0);
lean_inc(x_69);
x_70 = lean_ctor_get(x_68, 1);
lean_inc(x_70);
if (lean_is_exclusive(x_68)) {
 lean_ctor_release(x_68, 0);
 lean_ctor_release(x_68, 1);
 x_71 = x_68;
} else {
 lean_dec_ref(x_68);
 x_71 = lean_box(0);
}
if (lean_is_scalar(x_71)) {
 x_72 = lean_alloc_ctor(1, 2, 0);
} else {
 x_72 = x_71;
}
lean_ctor_set(x_72, 0, x_69);
lean_ctor_set(x_72, 1, x_70);
return x_72;
}
else
{
lean_object* x_73; 
lean_free_object(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_73 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_73, 0, x_22);
lean_ctor_set(x_73, 1, x_57);
return x_73;
}
}
}
else
{
lean_free_object(x_13);
lean_dec(x_15);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_17;
}
}
else
{
lean_free_object(x_13);
lean_dec(x_15);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_17;
}
}
else
{
lean_object* x_74; lean_object* x_75; uint8_t x_76; 
x_74 = lean_ctor_get(x_17, 0);
x_75 = lean_ctor_get(x_17, 1);
lean_inc(x_75);
lean_inc(x_74);
lean_dec(x_17);
x_76 = l_Lean_Exception_isInterrupt(x_74);
if (x_76 == 0)
{
uint8_t x_77; 
x_77 = l_Lean_Exception_isRuntime(x_74);
if (x_77 == 0)
{
uint8_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; uint8_t x_82; 
x_78 = 0;
x_79 = l_Lean_Elab_Tactic_SavedState_restore(x_15, x_78, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_75);
x_80 = lean_ctor_get(x_79, 1);
lean_inc(x_80);
if (lean_is_exclusive(x_79)) {
 lean_ctor_release(x_79, 0);
 lean_ctor_release(x_79, 1);
 x_81 = x_79;
} else {
 lean_dec_ref(x_79);
 x_81 = lean_box(0);
}
x_82 = l_Lean_Elab_isAbortTacticException(x_74);
if (x_82 == 0)
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; 
lean_dec(x_81);
lean_inc(x_10);
x_83 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(x_74, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_80);
x_84 = lean_ctor_get(x_83, 0);
lean_inc(x_84);
x_85 = lean_ctor_get(x_83, 1);
lean_inc(x_85);
if (lean_is_exclusive(x_83)) {
 lean_ctor_release(x_83, 0);
 lean_ctor_release(x_83, 1);
 x_86 = x_83;
} else {
 lean_dec_ref(x_83);
 x_86 = lean_box(0);
}
x_87 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
if (lean_is_scalar(x_86)) {
 x_88 = lean_alloc_ctor(7, 2, 0);
} else {
 x_88 = x_86;
 lean_ctor_set_tag(x_88, 7);
}
lean_ctor_set(x_88, 0, x_87);
lean_ctor_set(x_88, 1, x_3);
x_89 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2;
lean_ctor_set_tag(x_13, 7);
lean_ctor_set(x_13, 1, x_89);
lean_ctor_set(x_13, 0, x_88);
x_90 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_90, 0, x_13);
lean_ctor_set(x_90, 1, x_84);
x_91 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_91, 0, x_90);
lean_ctor_set(x_91, 1, x_87);
x_92 = l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(x_91, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_85);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_93 = lean_ctor_get(x_92, 0);
lean_inc(x_93);
x_94 = lean_ctor_get(x_92, 1);
lean_inc(x_94);
if (lean_is_exclusive(x_92)) {
 lean_ctor_release(x_92, 0);
 lean_ctor_release(x_92, 1);
 x_95 = x_92;
} else {
 lean_dec_ref(x_92);
 x_95 = lean_box(0);
}
if (lean_is_scalar(x_95)) {
 x_96 = lean_alloc_ctor(1, 2, 0);
} else {
 x_96 = x_95;
}
lean_ctor_set(x_96, 0, x_93);
lean_ctor_set(x_96, 1, x_94);
return x_96;
}
else
{
lean_object* x_97; 
lean_free_object(x_13);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_is_scalar(x_81)) {
 x_97 = lean_alloc_ctor(1, 2, 0);
} else {
 x_97 = x_81;
 lean_ctor_set_tag(x_97, 1);
}
lean_ctor_set(x_97, 0, x_74);
lean_ctor_set(x_97, 1, x_80);
return x_97;
}
}
else
{
lean_object* x_98; 
lean_free_object(x_13);
lean_dec(x_15);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_98 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_98, 0, x_74);
lean_ctor_set(x_98, 1, x_75);
return x_98;
}
}
else
{
lean_object* x_99; 
lean_free_object(x_13);
lean_dec(x_15);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_99 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_99, 0, x_74);
lean_ctor_set(x_99, 1, x_75);
return x_99;
}
}
}
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; 
x_100 = lean_ctor_get(x_13, 0);
x_101 = lean_ctor_get(x_13, 1);
lean_inc(x_101);
lean_inc(x_100);
lean_dec(x_13);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_102 = lean_apply_9(x_1, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_101);
if (lean_obj_tag(x_102) == 0)
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; 
lean_dec(x_100);
lean_dec(x_3);
x_103 = lean_ctor_get(x_102, 0);
lean_inc(x_103);
x_104 = lean_ctor_get(x_102, 1);
lean_inc(x_104);
lean_dec(x_102);
x_105 = lean_apply_10(x_2, x_103, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_104);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; uint8_t x_109; 
lean_dec(x_2);
x_106 = lean_ctor_get(x_102, 0);
lean_inc(x_106);
x_107 = lean_ctor_get(x_102, 1);
lean_inc(x_107);
if (lean_is_exclusive(x_102)) {
 lean_ctor_release(x_102, 0);
 lean_ctor_release(x_102, 1);
 x_108 = x_102;
} else {
 lean_dec_ref(x_102);
 x_108 = lean_box(0);
}
x_109 = l_Lean_Exception_isInterrupt(x_106);
if (x_109 == 0)
{
uint8_t x_110; 
x_110 = l_Lean_Exception_isRuntime(x_106);
if (x_110 == 0)
{
uint8_t x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; uint8_t x_115; 
lean_dec(x_108);
x_111 = 0;
x_112 = l_Lean_Elab_Tactic_SavedState_restore(x_100, x_111, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_107);
x_113 = lean_ctor_get(x_112, 1);
lean_inc(x_113);
if (lean_is_exclusive(x_112)) {
 lean_ctor_release(x_112, 0);
 lean_ctor_release(x_112, 1);
 x_114 = x_112;
} else {
 lean_dec_ref(x_112);
 x_114 = lean_box(0);
}
x_115 = l_Lean_Elab_isAbortTacticException(x_106);
if (x_115 == 0)
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; 
lean_dec(x_114);
lean_inc(x_10);
x_116 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(x_106, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_113);
x_117 = lean_ctor_get(x_116, 0);
lean_inc(x_117);
x_118 = lean_ctor_get(x_116, 1);
lean_inc(x_118);
if (lean_is_exclusive(x_116)) {
 lean_ctor_release(x_116, 0);
 lean_ctor_release(x_116, 1);
 x_119 = x_116;
} else {
 lean_dec_ref(x_116);
 x_119 = lean_box(0);
}
x_120 = l_Lean_Elab_Tactic_doneWithScope___closed__2;
if (lean_is_scalar(x_119)) {
 x_121 = lean_alloc_ctor(7, 2, 0);
} else {
 x_121 = x_119;
 lean_ctor_set_tag(x_121, 7);
}
lean_ctor_set(x_121, 0, x_120);
lean_ctor_set(x_121, 1, x_3);
x_122 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2;
x_123 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_123, 0, x_121);
lean_ctor_set(x_123, 1, x_122);
x_124 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_124, 0, x_123);
lean_ctor_set(x_124, 1, x_117);
x_125 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_125, 0, x_124);
lean_ctor_set(x_125, 1, x_120);
x_126 = l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(x_125, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_118);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_127 = lean_ctor_get(x_126, 0);
lean_inc(x_127);
x_128 = lean_ctor_get(x_126, 1);
lean_inc(x_128);
if (lean_is_exclusive(x_126)) {
 lean_ctor_release(x_126, 0);
 lean_ctor_release(x_126, 1);
 x_129 = x_126;
} else {
 lean_dec_ref(x_126);
 x_129 = lean_box(0);
}
if (lean_is_scalar(x_129)) {
 x_130 = lean_alloc_ctor(1, 2, 0);
} else {
 x_130 = x_129;
}
lean_ctor_set(x_130, 0, x_127);
lean_ctor_set(x_130, 1, x_128);
return x_130;
}
else
{
lean_object* x_131; 
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_is_scalar(x_114)) {
 x_131 = lean_alloc_ctor(1, 2, 0);
} else {
 x_131 = x_114;
 lean_ctor_set_tag(x_131, 1);
}
lean_ctor_set(x_131, 0, x_106);
lean_ctor_set(x_131, 1, x_113);
return x_131;
}
}
else
{
lean_object* x_132; 
lean_dec(x_100);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_is_scalar(x_108)) {
 x_132 = lean_alloc_ctor(1, 2, 0);
} else {
 x_132 = x_108;
}
lean_ctor_set(x_132, 0, x_106);
lean_ctor_set(x_132, 1, x_107);
return x_132;
}
}
else
{
lean_object* x_133; 
lean_dec(x_100);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_is_scalar(x_108)) {
 x_133 = lean_alloc_ctor(1, 2, 0);
} else {
 x_133 = x_108;
}
lean_ctor_set(x_133, 0, x_106);
lean_ctor_set(x_133, 1, x_107);
return x_133;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_inc(x_1);
x_12 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__1___boxed), 11, 1);
lean_closure_set(x_12, 0, x_1);
x_13 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2), 12, 3);
lean_closure_set(x_13, 0, x_2);
lean_closure_set(x_13, 1, x_12);
lean_closure_set(x_13, 2, x_1);
x_14 = l_Lean_Elab_Tactic_focus___rarg(x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg), 11, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_getRefPos___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__2(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Lean_throwError___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_12;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Lean_Meta(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Lean_Elab_Tactic_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Lean_Meta(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__1 = _init_l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__1();
lean_mark_persistent(l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__1);
l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__2 = _init_l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__2();
lean_mark_persistent(l_Lean_Elab_throwAbortTactic___at_Lean_Elab_Tactic_doneWithScope___spec__1___rarg___closed__2);
l_Lean_Elab_Tactic_doneWithScope___closed__1 = _init_l_Lean_Elab_Tactic_doneWithScope___closed__1();
lean_mark_persistent(l_Lean_Elab_Tactic_doneWithScope___closed__1);
l_Lean_Elab_Tactic_doneWithScope___closed__2 = _init_l_Lean_Elab_Tactic_doneWithScope___closed__2();
lean_mark_persistent(l_Lean_Elab_Tactic_doneWithScope___closed__2);
l_Lean_Elab_Tactic_doneWithScope___closed__3 = _init_l_Lean_Elab_Tactic_doneWithScope___closed__3();
lean_mark_persistent(l_Lean_Elab_Tactic_doneWithScope___closed__3);
l_Lean_Elab_Tactic_doneWithScope___closed__4 = _init_l_Lean_Elab_Tactic_doneWithScope___closed__4();
lean_mark_persistent(l_Lean_Elab_Tactic_doneWithScope___closed__4);
l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__1 = _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__1();
lean_mark_persistent(l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__1);
l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2 = _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2();
lean_mark_persistent(l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__2);
l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__3 = _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__3();
lean_mark_persistent(l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__3);
l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4 = _init_l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4();
lean_mark_persistent(l_Lean_Elab_nestedExceptionToMessageData___at_Lean_Elab_Tactic_focusAndDoneWithScope___spec__1___closed__4);
l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__1 = _init_l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__1();
lean_mark_persistent(l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__1);
l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2 = _init_l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2();
lean_mark_persistent(l_Lean_Elab_Tactic_focusAndDoneWithScope___rarg___lambda__2___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
