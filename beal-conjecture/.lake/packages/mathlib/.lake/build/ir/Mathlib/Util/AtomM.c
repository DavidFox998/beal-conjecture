// Lean compiler output
// Module: Mathlib.Util.AtomM
// Imports: Init Mathlib.Init Lean.Meta.Tactic.Simp.Types
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
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__1;
static lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__2;
static lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__2;
lean_object* l_Lean_Meta_isExprDefEq(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_Context_evalAtom___default(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_State_atoms___default;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_Context_evalAtom___default___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_run(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_run___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_run___rarg(uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
static lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Std_Range_forIn_x27_loop___at_Mathlib_Tactic_AtomM_addAtom___spec__1___boxed(lean_object**);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_x27_loop___at_Mathlib_Tactic_AtomM_addAtom___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_AtomM_addAtom___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_Context_evalAtom___default(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_box(0);
x_8 = 1;
x_9 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_7);
lean_ctor_set_uint8(x_9, sizeof(void*)*2, x_8);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_6);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_Context_evalAtom___default___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Mathlib_Tactic_AtomM_Context_evalAtom___default(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__1;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__2;
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___boxed), 6, 0);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__2() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; 
x_1 = 0;
x_2 = l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__1;
x_3 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_1);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_instInhabitedContext() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__2;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_State_atoms___default() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_run___rarg(uint8_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_9 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set_uint8(x_9, sizeof(void*)*1, x_1);
x_10 = l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1;
x_11 = lean_st_mk_ref(x_10, x_8);
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
lean_inc(x_12);
x_14 = lean_apply_7(x_2, x_9, x_12, x_4, x_5, x_6, x_7, x_13);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_st_ref_get(x_12, x_16);
lean_dec(x_12);
x_18 = !lean_is_exclusive(x_17);
if (x_18 == 0)
{
lean_object* x_19; 
x_19 = lean_ctor_get(x_17, 0);
lean_dec(x_19);
lean_ctor_set(x_17, 0, x_15);
return x_17;
}
else
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_ctor_get(x_17, 1);
lean_inc(x_20);
lean_dec(x_17);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_15);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
else
{
uint8_t x_22; 
lean_dec(x_12);
x_22 = !lean_is_exclusive(x_14);
if (x_22 == 0)
{
return x_14;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_14, 0);
x_24 = lean_ctor_get(x_14, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_14);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_run(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Tactic_AtomM_run___rarg___boxed), 8, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_run___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; 
x_9 = lean_unbox(x_1);
lean_dec(x_1);
x_10 = l_Mathlib_Tactic_AtomM_run___rarg(x_9, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_x27_loop___at_Mathlib_Tactic_AtomM_addAtom___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18, lean_object* x_19, lean_object* x_20) {
_start:
{
uint8_t x_21; 
x_21 = lean_nat_dec_lt(x_11, x_8);
if (x_21 == 0)
{
lean_object* x_22; 
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_1);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_13);
lean_ctor_set(x_22, 1, x_20);
return x_22;
}
else
{
lean_object* x_23; uint8_t x_24; 
x_23 = lean_unsigned_to_nat(0u);
x_24 = lean_nat_dec_eq(x_10, x_23);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; uint8_t x_35; 
lean_dec(x_13);
x_25 = lean_unsigned_to_nat(1u);
x_26 = lean_nat_sub(x_10, x_25);
lean_dec(x_10);
x_27 = lean_ctor_get_uint8(x_14, sizeof(void*)*1);
x_28 = lean_array_fget(x_3, x_11);
x_29 = lean_ctor_get(x_16, 0);
lean_inc(x_29);
x_30 = lean_ctor_get(x_16, 1);
lean_inc(x_30);
x_31 = lean_ctor_get(x_16, 2);
lean_inc(x_31);
x_32 = lean_ctor_get(x_16, 3);
lean_inc(x_32);
x_33 = lean_ctor_get(x_16, 4);
lean_inc(x_33);
x_34 = lean_ctor_get(x_16, 5);
lean_inc(x_34);
x_35 = !lean_is_exclusive(x_29);
if (x_35 == 0)
{
uint8_t x_36; uint8_t x_37; lean_object* x_38; lean_object* x_39; 
x_36 = lean_ctor_get_uint8(x_16, sizeof(void*)*6);
x_37 = lean_ctor_get_uint8(x_16, sizeof(void*)*6 + 1);
lean_ctor_set_uint8(x_29, 9, x_27);
x_38 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_38, 0, x_29);
lean_ctor_set(x_38, 1, x_30);
lean_ctor_set(x_38, 2, x_31);
lean_ctor_set(x_38, 3, x_32);
lean_ctor_set(x_38, 4, x_33);
lean_ctor_set(x_38, 5, x_34);
lean_ctor_set_uint8(x_38, sizeof(void*)*6, x_36);
lean_ctor_set_uint8(x_38, sizeof(void*)*6 + 1, x_37);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_1);
x_39 = l_Lean_Meta_isExprDefEq(x_1, x_28, x_38, x_17, x_18, x_19, x_20);
if (lean_obj_tag(x_39) == 0)
{
lean_object* x_40; uint8_t x_41; 
x_40 = lean_ctor_get(x_39, 0);
lean_inc(x_40);
x_41 = lean_unbox(x_40);
lean_dec(x_40);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; 
x_42 = lean_ctor_get(x_39, 1);
lean_inc(x_42);
lean_dec(x_39);
x_43 = lean_nat_add(x_11, x_9);
lean_dec(x_11);
lean_inc(x_6);
{
lean_object* _tmp_9 = x_26;
lean_object* _tmp_10 = x_43;
lean_object* _tmp_11 = lean_box(0);
lean_object* _tmp_12 = x_6;
lean_object* _tmp_19 = x_42;
x_10 = _tmp_9;
x_11 = _tmp_10;
x_12 = _tmp_11;
x_13 = _tmp_12;
x_20 = _tmp_19;
}
goto _start;
}
else
{
uint8_t x_45; 
lean_dec(x_26);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_6);
lean_dec(x_1);
x_45 = !lean_is_exclusive(x_39);
if (x_45 == 0)
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_46 = lean_ctor_get(x_39, 0);
lean_dec(x_46);
x_47 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_47, 0, x_11);
x_48 = lean_box(0);
x_49 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
lean_ctor_set(x_39, 0, x_49);
return x_39;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_50 = lean_ctor_get(x_39, 1);
lean_inc(x_50);
lean_dec(x_39);
x_51 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_51, 0, x_11);
x_52 = lean_box(0);
x_53 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_53, 0, x_51);
lean_ctor_set(x_53, 1, x_52);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_50);
return x_54;
}
}
}
else
{
uint8_t x_55; 
lean_dec(x_26);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_1);
x_55 = !lean_is_exclusive(x_39);
if (x_55 == 0)
{
return x_39;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_39, 0);
x_57 = lean_ctor_get(x_39, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_39);
x_58 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
return x_58;
}
}
}
else
{
uint8_t x_59; uint8_t x_60; uint8_t x_61; uint8_t x_62; uint8_t x_63; uint8_t x_64; uint8_t x_65; uint8_t x_66; uint8_t x_67; uint8_t x_68; uint8_t x_69; uint8_t x_70; uint8_t x_71; uint8_t x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_59 = lean_ctor_get_uint8(x_16, sizeof(void*)*6);
x_60 = lean_ctor_get_uint8(x_16, sizeof(void*)*6 + 1);
x_61 = lean_ctor_get_uint8(x_29, 0);
x_62 = lean_ctor_get_uint8(x_29, 1);
x_63 = lean_ctor_get_uint8(x_29, 2);
x_64 = lean_ctor_get_uint8(x_29, 3);
x_65 = lean_ctor_get_uint8(x_29, 4);
x_66 = lean_ctor_get_uint8(x_29, 5);
x_67 = lean_ctor_get_uint8(x_29, 6);
x_68 = lean_ctor_get_uint8(x_29, 7);
x_69 = lean_ctor_get_uint8(x_29, 8);
x_70 = lean_ctor_get_uint8(x_29, 10);
x_71 = lean_ctor_get_uint8(x_29, 11);
x_72 = lean_ctor_get_uint8(x_29, 12);
lean_dec(x_29);
x_73 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_73, 0, x_61);
lean_ctor_set_uint8(x_73, 1, x_62);
lean_ctor_set_uint8(x_73, 2, x_63);
lean_ctor_set_uint8(x_73, 3, x_64);
lean_ctor_set_uint8(x_73, 4, x_65);
lean_ctor_set_uint8(x_73, 5, x_66);
lean_ctor_set_uint8(x_73, 6, x_67);
lean_ctor_set_uint8(x_73, 7, x_68);
lean_ctor_set_uint8(x_73, 8, x_69);
lean_ctor_set_uint8(x_73, 9, x_27);
lean_ctor_set_uint8(x_73, 10, x_70);
lean_ctor_set_uint8(x_73, 11, x_71);
lean_ctor_set_uint8(x_73, 12, x_72);
x_74 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_30);
lean_ctor_set(x_74, 2, x_31);
lean_ctor_set(x_74, 3, x_32);
lean_ctor_set(x_74, 4, x_33);
lean_ctor_set(x_74, 5, x_34);
lean_ctor_set_uint8(x_74, sizeof(void*)*6, x_59);
lean_ctor_set_uint8(x_74, sizeof(void*)*6 + 1, x_60);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_1);
x_75 = l_Lean_Meta_isExprDefEq(x_1, x_28, x_74, x_17, x_18, x_19, x_20);
if (lean_obj_tag(x_75) == 0)
{
lean_object* x_76; uint8_t x_77; 
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = lean_unbox(x_76);
lean_dec(x_76);
if (x_77 == 0)
{
lean_object* x_78; lean_object* x_79; 
x_78 = lean_ctor_get(x_75, 1);
lean_inc(x_78);
lean_dec(x_75);
x_79 = lean_nat_add(x_11, x_9);
lean_dec(x_11);
lean_inc(x_6);
{
lean_object* _tmp_9 = x_26;
lean_object* _tmp_10 = x_79;
lean_object* _tmp_11 = lean_box(0);
lean_object* _tmp_12 = x_6;
lean_object* _tmp_19 = x_78;
x_10 = _tmp_9;
x_11 = _tmp_10;
x_12 = _tmp_11;
x_13 = _tmp_12;
x_20 = _tmp_19;
}
goto _start;
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; 
lean_dec(x_26);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_6);
lean_dec(x_1);
x_81 = lean_ctor_get(x_75, 1);
lean_inc(x_81);
if (lean_is_exclusive(x_75)) {
 lean_ctor_release(x_75, 0);
 lean_ctor_release(x_75, 1);
 x_82 = x_75;
} else {
 lean_dec_ref(x_75);
 x_82 = lean_box(0);
}
x_83 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_83, 0, x_11);
x_84 = lean_box(0);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
if (lean_is_scalar(x_82)) {
 x_86 = lean_alloc_ctor(0, 2, 0);
} else {
 x_86 = x_82;
}
lean_ctor_set(x_86, 0, x_85);
lean_ctor_set(x_86, 1, x_81);
return x_86;
}
}
else
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; 
lean_dec(x_26);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_1);
x_87 = lean_ctor_get(x_75, 0);
lean_inc(x_87);
x_88 = lean_ctor_get(x_75, 1);
lean_inc(x_88);
if (lean_is_exclusive(x_75)) {
 lean_ctor_release(x_75, 0);
 lean_ctor_release(x_75, 1);
 x_89 = x_75;
} else {
 lean_dec_ref(x_75);
 x_89 = lean_box(0);
}
if (lean_is_scalar(x_89)) {
 x_90 = lean_alloc_ctor(1, 2, 0);
} else {
 x_90 = x_89;
}
lean_ctor_set(x_90, 0, x_87);
lean_ctor_set(x_90, 1, x_88);
return x_90;
}
}
}
else
{
lean_object* x_91; 
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_6);
lean_dec(x_1);
x_91 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_91, 0, x_13);
lean_ctor_set(x_91, 1, x_20);
return x_91;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_10 = lean_st_ref_take(x_4, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_array_get_size(x_11);
x_14 = lean_array_push(x_11, x_1);
x_15 = lean_st_ref_set(x_4, x_14, x_12);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; 
x_17 = lean_ctor_get(x_15, 0);
lean_dec(x_17);
lean_ctor_set(x_15, 0, x_13);
return x_15;
}
else
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_15, 1);
lean_inc(x_18);
lean_dec(x_15);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_13);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
static lean_object* _init_l_Mathlib_Tactic_AtomM_addAtom___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_9 = lean_st_ref_get(x_3, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = lean_array_get_size(x_10);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_unsigned_to_nat(1u);
lean_inc(x_12);
x_15 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_15, 0, x_13);
lean_ctor_set(x_15, 1, x_12);
lean_ctor_set(x_15, 2, x_14);
x_16 = l_Mathlib_Tactic_AtomM_addAtom___closed__1;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_12);
lean_inc(x_1);
x_17 = l_Std_Range_forIn_x27_loop___at_Mathlib_Tactic_AtomM_addAtom___spec__1(x_1, x_10, x_10, x_12, x_15, x_16, x_13, x_12, x_14, x_12, x_13, lean_box(0), x_16, x_2, x_3, x_4, x_5, x_6, x_7, x_11);
lean_dec(x_15);
lean_dec(x_12);
lean_dec(x_10);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
lean_dec(x_18);
if (lean_obj_tag(x_19) == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_17, 1);
lean_inc(x_20);
lean_dec(x_17);
x_21 = lean_box(0);
x_22 = l_Mathlib_Tactic_AtomM_addAtom___lambda__1(x_1, x_21, x_2, x_3, x_4, x_5, x_6, x_7, x_20);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_22;
}
else
{
uint8_t x_23; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_23 = !lean_is_exclusive(x_17);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_ctor_get(x_17, 0);
lean_dec(x_24);
x_25 = lean_ctor_get(x_19, 0);
lean_inc(x_25);
lean_dec(x_19);
lean_ctor_set(x_17, 0, x_25);
return x_17;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_dec(x_17);
x_27 = lean_ctor_get(x_19, 0);
lean_inc(x_27);
lean_dec(x_19);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_26);
return x_28;
}
}
}
else
{
uint8_t x_29; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_29 = !lean_is_exclusive(x_17);
if (x_29 == 0)
{
return x_17;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_17, 0);
x_31 = lean_ctor_get(x_17, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_17);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_x27_loop___at_Mathlib_Tactic_AtomM_addAtom___spec__1___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
lean_object* x_18 = _args[17];
lean_object* x_19 = _args[18];
lean_object* x_20 = _args[19];
_start:
{
lean_object* x_21; 
x_21 = l_Std_Range_forIn_x27_loop___at_Mathlib_Tactic_AtomM_addAtom___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_18, x_19, x_20);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_21;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Tactic_AtomM_addAtom___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
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
LEAN_EXPORT lean_object* l_Mathlib_Tactic_AtomM_addAtom___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Tactic_AtomM_addAtom(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Meta_Tactic_Simp_Types(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Util_AtomM(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Meta_Tactic_Simp_Types(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__1 = _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__1);
l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__2 = _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_instInhabitedContext___lambda__1___closed__2);
l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__1 = _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__1);
l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__2 = _init_l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__2();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_instInhabitedContext___closed__2);
l_Mathlib_Tactic_AtomM_instInhabitedContext = _init_l_Mathlib_Tactic_AtomM_instInhabitedContext();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_instInhabitedContext);
l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1 = _init_l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_State_atoms___default___closed__1);
l_Mathlib_Tactic_AtomM_State_atoms___default = _init_l_Mathlib_Tactic_AtomM_State_atoms___default();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_State_atoms___default);
l_Mathlib_Tactic_AtomM_addAtom___closed__1 = _init_l_Mathlib_Tactic_AtomM_addAtom___closed__1();
lean_mark_persistent(l_Mathlib_Tactic_AtomM_addAtom___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
