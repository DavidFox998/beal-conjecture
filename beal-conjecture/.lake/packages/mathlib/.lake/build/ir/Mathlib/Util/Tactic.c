// Lean compiler output
// Module: Mathlib.Util.Tactic
// Imports: Init Mathlib.Init Lean.MetavarContext
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
lean_object* l_Lean_PersistentHashMap_find_x3f___at_Lean_MetavarContext_getDecl___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalDecl___spec__2(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_modifyLocalDecl___spec__1___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_index(lean_object*);
lean_object* l_Lean_PersistentArray_set___rarg(lean_object*, lean_object*, lean_object*);
lean_object* lean_local_ctx_find(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyTarget___spec__1(lean_object*);
lean_object* l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalDecl___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalContext___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_modifyLocalDecl___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___rarg___lambda__1(lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_fvarId(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalContext___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyTarget___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 2);
lean_inc(x_6);
x_7 = lean_ctor_get(x_3, 3);
lean_inc(x_7);
x_8 = lean_ctor_get(x_3, 4);
lean_inc(x_8);
x_9 = lean_ctor_get(x_3, 5);
lean_inc(x_9);
x_10 = lean_ctor_get(x_3, 6);
lean_inc(x_10);
x_11 = lean_ctor_get(x_3, 7);
lean_inc(x_11);
x_12 = lean_ctor_get(x_3, 8);
lean_inc(x_12);
lean_inc(x_8);
x_13 = l_Lean_PersistentHashMap_find_x3f___at_Lean_MetavarContext_getDecl___spec__1(x_8, x_1);
if (lean_obj_tag(x_13) == 0)
{
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
else
{
uint8_t x_14; 
x_14 = !lean_is_exclusive(x_3);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_15 = lean_ctor_get(x_3, 8);
lean_dec(x_15);
x_16 = lean_ctor_get(x_3, 7);
lean_dec(x_16);
x_17 = lean_ctor_get(x_3, 6);
lean_dec(x_17);
x_18 = lean_ctor_get(x_3, 5);
lean_dec(x_18);
x_19 = lean_ctor_get(x_3, 4);
lean_dec(x_19);
x_20 = lean_ctor_get(x_3, 3);
lean_dec(x_20);
x_21 = lean_ctor_get(x_3, 2);
lean_dec(x_21);
x_22 = lean_ctor_get(x_3, 1);
lean_dec(x_22);
x_23 = lean_ctor_get(x_3, 0);
lean_dec(x_23);
x_24 = lean_ctor_get(x_13, 0);
lean_inc(x_24);
lean_dec(x_13);
x_25 = lean_apply_1(x_2, x_24);
x_26 = l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(x_8, x_1, x_25);
lean_ctor_set(x_3, 4, x_26);
return x_3;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_3);
x_27 = lean_ctor_get(x_13, 0);
lean_inc(x_27);
lean_dec(x_13);
x_28 = lean_apply_1(x_2, x_27);
x_29 = l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(x_8, x_1, x_28);
x_30 = lean_alloc_ctor(0, 9, 0);
lean_ctor_set(x_30, 0, x_4);
lean_ctor_set(x_30, 1, x_5);
lean_ctor_set(x_30, 2, x_6);
lean_ctor_set(x_30, 3, x_7);
lean_ctor_set(x_30, 4, x_29);
lean_ctor_set(x_30, 5, x_9);
lean_ctor_set(x_30, 6, x_10);
lean_ctor_set(x_30, 7, x_11);
lean_ctor_set(x_30, 8, x_12);
return x_30;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_2);
lean_closure_set(x_5, 1, x_3);
x_6 = lean_apply_1(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyTarget___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_2);
lean_closure_set(x_5, 1, x_3);
x_6 = lean_apply_1(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyTarget___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyTarget___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 2);
x_5 = lean_apply_1(x_1, x_4);
lean_ctor_set(x_2, 2, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_2, 2);
x_9 = lean_ctor_get(x_2, 3);
x_10 = lean_ctor_get(x_2, 4);
x_11 = lean_ctor_get_uint8(x_2, sizeof(void*)*7);
x_12 = lean_ctor_get(x_2, 5);
x_13 = lean_ctor_get(x_2, 6);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_2);
x_14 = lean_apply_1(x_1, x_8);
x_15 = lean_alloc_ctor(0, 7, 1);
lean_ctor_set(x_15, 0, x_6);
lean_ctor_set(x_15, 1, x_7);
lean_ctor_set(x_15, 2, x_14);
lean_ctor_set(x_15, 3, x_9);
lean_ctor_set(x_15, 4, x_10);
lean_ctor_set(x_15, 5, x_12);
lean_ctor_set(x_15, 6, x_13);
lean_ctor_set_uint8(x_15, sizeof(void*)*7, x_11);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyTarget___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_3);
x_5 = l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyTarget___spec__1___rarg(x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyTarget___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalContext___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_2);
lean_closure_set(x_5, 1, x_3);
x_6 = lean_apply_1(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalContext___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalContext___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 1);
x_5 = lean_apply_1(x_1, x_4);
lean_ctor_set(x_2, 1, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_2, 2);
x_9 = lean_ctor_get(x_2, 3);
x_10 = lean_ctor_get(x_2, 4);
x_11 = lean_ctor_get_uint8(x_2, sizeof(void*)*7);
x_12 = lean_ctor_get(x_2, 5);
x_13 = lean_ctor_get(x_2, 6);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_2);
x_14 = lean_apply_1(x_1, x_7);
x_15 = lean_alloc_ctor(0, 7, 1);
lean_ctor_set(x_15, 0, x_6);
lean_ctor_set(x_15, 1, x_14);
lean_ctor_set(x_15, 2, x_8);
lean_ctor_set(x_15, 3, x_9);
lean_ctor_set(x_15, 4, x_10);
lean_ctor_set(x_15, 5, x_12);
lean_ctor_set(x_15, 6, x_13);
lean_ctor_set_uint8(x_15, sizeof(void*)*7, x_11);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalContext___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_3);
x_5 = l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalContext___spec__1___rarg(x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalContext___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalDecl___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_2);
lean_closure_set(x_5, 1, x_3);
x_6 = lean_apply_1(x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalDecl___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalDecl___spec__2___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_modifyLocalDecl___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalContext___rarg___lambda__1), 2, 1);
lean_closure_set(x_4, 0, x_3);
x_5 = l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_modifyLocalDecl___spec__2___rarg(x_1, x_2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_modifyLocalDecl___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_modifyLocalDecl___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_inc(x_3);
x_6 = lean_local_ctx_find(x_3, x_1);
if (lean_obj_tag(x_6) == 0)
{
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_3;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_3, 1);
lean_dec(x_8);
x_9 = lean_ctor_get(x_3, 0);
lean_dec(x_9);
x_10 = !lean_is_exclusive(x_6);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_6, 0);
x_12 = lean_apply_1(x_2, x_11);
x_13 = l_Lean_LocalDecl_fvarId(x_12);
lean_inc(x_12);
x_14 = l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(x_4, x_13, x_12);
x_15 = l_Lean_LocalDecl_index(x_12);
lean_ctor_set(x_6, 0, x_12);
x_16 = l_Lean_PersistentArray_set___rarg(x_5, x_15, x_6);
lean_dec(x_15);
lean_ctor_set(x_3, 1, x_16);
lean_ctor_set(x_3, 0, x_14);
return x_3;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_17 = lean_ctor_get(x_6, 0);
lean_inc(x_17);
lean_dec(x_6);
x_18 = lean_apply_1(x_2, x_17);
x_19 = l_Lean_LocalDecl_fvarId(x_18);
lean_inc(x_18);
x_20 = l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(x_4, x_19, x_18);
x_21 = l_Lean_LocalDecl_index(x_18);
x_22 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_22, 0, x_18);
x_23 = l_Lean_PersistentArray_set___rarg(x_5, x_21, x_22);
lean_dec(x_21);
lean_ctor_set(x_3, 1, x_23);
lean_ctor_set(x_3, 0, x_20);
return x_3;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_3);
x_24 = lean_ctor_get(x_6, 0);
lean_inc(x_24);
if (lean_is_exclusive(x_6)) {
 lean_ctor_release(x_6, 0);
 x_25 = x_6;
} else {
 lean_dec_ref(x_6);
 x_25 = lean_box(0);
}
x_26 = lean_apply_1(x_2, x_24);
x_27 = l_Lean_LocalDecl_fvarId(x_26);
lean_inc(x_26);
x_28 = l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(x_4, x_27, x_26);
x_29 = l_Lean_LocalDecl_index(x_26);
if (lean_is_scalar(x_25)) {
 x_30 = lean_alloc_ctor(1, 1, 0);
} else {
 x_30 = x_25;
}
lean_ctor_set(x_30, 0, x_26);
x_31 = l_Lean_PersistentArray_set___rarg(x_5, x_29, x_30);
lean_dec(x_29);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_28);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalDecl___rarg___lambda__1), 3, 2);
lean_closure_set(x_5, 0, x_3);
lean_closure_set(x_5, 1, x_4);
x_6 = l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_modifyLocalDecl___spec__1___rarg(x_1, x_2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalDecl___rarg), 4, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_MetavarContext(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Util_Tactic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_MetavarContext(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
