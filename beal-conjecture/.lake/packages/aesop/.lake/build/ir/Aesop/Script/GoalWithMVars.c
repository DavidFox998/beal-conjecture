// Lean compiler output
// Module: Aesop.Script.GoalWithMVars
// Imports: Init Lean
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
lean_object* l_Lean_Name_reprPrec(lean_object*, lean_object*);
lean_object* lean_format_pretty(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedGoalWithMVars___closed__4;
LEAN_EXPORT lean_object* l_List_foldl___at_Aesop_instReprGoalWithMVars___spec__4(lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalWithMVars_ofMVarId___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_GoalWithMVars_ofMVarId(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__12;
lean_object* lean_array_push(lean_object*, lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__7;
static lean_object* l_Aesop_instInhabitedGoalWithMVars___closed__2;
static lean_object* l_Aesop_instReprGoalWithMVars___closed__4;
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Format_joinSep___at_Aesop_instReprGoalWithMVars___spec__3(lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__10;
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Aesop_instReprGoalWithMVars___spec__1(lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instBEqGoalWithMVars___boxed(lean_object*, lean_object*);
lean_object* lean_nat_to_int(lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__14;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_instReprGoalWithMVars___spec__5(lean_object*, size_t, size_t, lean_object*);
lean_object* lean_array_to_list(lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__5;
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedGoalWithMVars;
static lean_object* l_Aesop_instReprGoalWithMVars___closed__3;
extern lean_object* l_Std_Format_defWidth;
static lean_object* l_Aesop_instReprGoalWithMVars___closed__15;
LEAN_EXPORT lean_object* l_Aesop_instReprGoalWithMVars(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instReprGoalWithMVars___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__8;
static lean_object* l_Aesop_instInhabitedGoalWithMVars___closed__3;
static lean_object* l_Aesop_instInhabitedGoalWithMVars___closed__1;
lean_object* lean_string_length(lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__6;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_repr___at_Aesop_instReprGoalWithMVars___spec__2(lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__16;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_instReprGoalWithMVars___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_instBEqGoalWithMVars(lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__1;
lean_object* l_Lean_MVarId_getMVarDependencies(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__13;
size_t lean_usize_add(size_t, size_t);
lean_object* lean_array_uget(lean_object*, size_t);
lean_object* lean_string_append(lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__11;
lean_object* lean_array_get_size(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
static lean_object* l_Aesop_instReprGoalWithMVars___closed__9;
static lean_object* l_Aesop_instReprGoalWithMVars___closed__2;
static lean_object* _init_l_Aesop_instInhabitedGoalWithMVars___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedGoalWithMVars___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedGoalWithMVars___closed__1;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedGoalWithMVars___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Aesop_instInhabitedGoalWithMVars___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedGoalWithMVars___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedGoalWithMVars___closed__3;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedGoalWithMVars() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedGoalWithMVars___closed__4;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Aesop_instReprGoalWithMVars___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 2);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_array_push(x_1, x_3);
x_1 = x_5;
x_2 = x_4;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_repr___at_Aesop_instReprGoalWithMVars___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_Lean_Name_reprPrec(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_Aesop_instReprGoalWithMVars___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
lean_ctor_set_tag(x_3, 5);
lean_ctor_set(x_3, 1, x_1);
lean_ctor_set(x_3, 0, x_2);
x_7 = lean_unsigned_to_nat(0u);
x_8 = l_Lean_Name_reprPrec(x_5, x_7);
x_9 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_8);
x_2 = x_9;
x_3 = x_6;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
lean_inc(x_1);
x_13 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_13, 0, x_2);
lean_ctor_set(x_13, 1, x_1);
x_14 = lean_unsigned_to_nat(0u);
x_15 = l_Lean_Name_reprPrec(x_11, x_14);
x_16 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_16, 0, x_13);
lean_ctor_set(x_16, 1, x_15);
x_2 = x_16;
x_3 = x_12;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_Format_joinSep___at_Aesop_instReprGoalWithMVars___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; 
lean_dec(x_2);
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_dec(x_2);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_unsigned_to_nat(0u);
x_7 = l_Lean_Name_reprPrec(x_5, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_unsigned_to_nat(0u);
x_10 = l_Lean_Name_reprPrec(x_8, x_9);
x_11 = l_List_foldl___at_Aesop_instReprGoalWithMVars___spec__4(x_2, x_10, x_4);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_instReprGoalWithMVars___spec__5(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; size_t x_8; size_t x_9; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Std_DHashMap_Internal_AssocList_foldlM___at_Aesop_instReprGoalWithMVars___spec__1(x_4, x_6);
x_8 = 1;
x_9 = lean_usize_add(x_2, x_8);
x_2 = x_9;
x_4 = x_7;
goto _start;
}
else
{
return x_4;
}
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("{ goal := ", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(", mvars := ", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(",", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__5;
x_2 = lean_box(1);
x_3 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("#[", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__7;
x_2 = lean_string_length(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__8;
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__7;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("]", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__11;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" }", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("#[]", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__14;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instReprGoalWithMVars___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_instReprGoalWithMVars___closed__15;
x_2 = l_Std_Format_defWidth;
x_3 = lean_unsigned_to_nat(0u);
x_4 = lean_format_pretty(x_1, x_2, x_3, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_instReprGoalWithMVars(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_Lean_Name_reprPrec(x_3, x_4);
x_6 = l_Std_Format_defWidth;
x_7 = lean_format_pretty(x_5, x_6, x_4, x_4);
x_8 = l_Aesop_instReprGoalWithMVars___closed__1;
x_9 = lean_string_append(x_8, x_7);
lean_dec(x_7);
x_10 = l_Aesop_instReprGoalWithMVars___closed__2;
x_11 = lean_string_append(x_9, x_10);
x_12 = lean_ctor_get(x_1, 1);
lean_inc(x_12);
lean_dec(x_1);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_array_get_size(x_13);
x_15 = lean_nat_dec_lt(x_4, x_14);
if (x_15 == 0)
{
lean_object* x_41; 
lean_dec(x_14);
lean_dec(x_13);
x_41 = l_Aesop_instReprGoalWithMVars___closed__3;
x_16 = x_41;
goto block_40;
}
else
{
uint8_t x_42; 
x_42 = lean_nat_dec_le(x_14, x_14);
if (x_42 == 0)
{
lean_object* x_43; 
lean_dec(x_14);
lean_dec(x_13);
x_43 = l_Aesop_instReprGoalWithMVars___closed__3;
x_16 = x_43;
goto block_40;
}
else
{
size_t x_44; size_t x_45; lean_object* x_46; lean_object* x_47; 
x_44 = 0;
x_45 = lean_usize_of_nat(x_14);
lean_dec(x_14);
x_46 = l_Aesop_instReprGoalWithMVars___closed__3;
x_47 = l_Array_foldlMUnsafe_fold___at_Aesop_instReprGoalWithMVars___spec__5(x_13, x_44, x_45, x_46);
lean_dec(x_13);
x_16 = x_47;
goto block_40;
}
}
block_40:
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_array_get_size(x_16);
x_18 = lean_nat_dec_eq(x_17, x_4);
lean_dec(x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; uint8_t x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_19 = lean_array_to_list(lean_box(0), x_16);
x_20 = l_Aesop_instReprGoalWithMVars___closed__6;
x_21 = l_Std_Format_joinSep___at_Aesop_instReprGoalWithMVars___spec__3(x_19, x_20);
x_22 = l_Aesop_instReprGoalWithMVars___closed__10;
x_23 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_21);
x_24 = l_Aesop_instReprGoalWithMVars___closed__12;
x_25 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
x_26 = l_Aesop_instReprGoalWithMVars___closed__9;
x_27 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = 1;
x_29 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set_uint8(x_29, sizeof(void*)*1, x_28);
x_30 = lean_format_pretty(x_29, x_6, x_4, x_4);
x_31 = lean_string_append(x_11, x_30);
lean_dec(x_30);
x_32 = l_Aesop_instReprGoalWithMVars___closed__13;
x_33 = lean_string_append(x_31, x_32);
x_34 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_34, 0, x_33);
return x_34;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
lean_dec(x_16);
x_35 = l_Aesop_instReprGoalWithMVars___closed__16;
x_36 = lean_string_append(x_11, x_35);
x_37 = l_Aesop_instReprGoalWithMVars___closed__13;
x_38 = lean_string_append(x_36, x_37);
x_39 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_39, 0, x_38);
return x_39;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_instReprGoalWithMVars___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at_Aesop_instReprGoalWithMVars___spec__5(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_instReprGoalWithMVars___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_instReprGoalWithMVars(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_instBEqGoalWithMVars(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_name_eq(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_instBEqGoalWithMVars___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_instBEqGoalWithMVars(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalWithMVars_ofMVarId(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; lean_object* x_8; 
x_7 = 0;
lean_inc(x_1);
x_8 = l_Lean_MVarId_getMVarDependencies(x_1, x_7, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_8) == 0)
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_10);
lean_ctor_set(x_8, 0, x_11);
return x_8;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_ctor_get(x_8, 0);
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_8);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_1);
lean_ctor_set(x_14, 1, x_12);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
uint8_t x_16; 
lean_dec(x_1);
x_16 = !lean_is_exclusive(x_8);
if (x_16 == 0)
{
return x_8;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_8, 0);
x_18 = lean_ctor_get(x_8, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_8);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GoalWithMVars_ofMVarId___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_GoalWithMVars_ofMVarId(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Script_GoalWithMVars(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedGoalWithMVars___closed__1 = _init_l_Aesop_instInhabitedGoalWithMVars___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedGoalWithMVars___closed__1);
l_Aesop_instInhabitedGoalWithMVars___closed__2 = _init_l_Aesop_instInhabitedGoalWithMVars___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedGoalWithMVars___closed__2);
l_Aesop_instInhabitedGoalWithMVars___closed__3 = _init_l_Aesop_instInhabitedGoalWithMVars___closed__3();
lean_mark_persistent(l_Aesop_instInhabitedGoalWithMVars___closed__3);
l_Aesop_instInhabitedGoalWithMVars___closed__4 = _init_l_Aesop_instInhabitedGoalWithMVars___closed__4();
lean_mark_persistent(l_Aesop_instInhabitedGoalWithMVars___closed__4);
l_Aesop_instInhabitedGoalWithMVars = _init_l_Aesop_instInhabitedGoalWithMVars();
lean_mark_persistent(l_Aesop_instInhabitedGoalWithMVars);
l_Aesop_instReprGoalWithMVars___closed__1 = _init_l_Aesop_instReprGoalWithMVars___closed__1();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__1);
l_Aesop_instReprGoalWithMVars___closed__2 = _init_l_Aesop_instReprGoalWithMVars___closed__2();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__2);
l_Aesop_instReprGoalWithMVars___closed__3 = _init_l_Aesop_instReprGoalWithMVars___closed__3();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__3);
l_Aesop_instReprGoalWithMVars___closed__4 = _init_l_Aesop_instReprGoalWithMVars___closed__4();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__4);
l_Aesop_instReprGoalWithMVars___closed__5 = _init_l_Aesop_instReprGoalWithMVars___closed__5();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__5);
l_Aesop_instReprGoalWithMVars___closed__6 = _init_l_Aesop_instReprGoalWithMVars___closed__6();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__6);
l_Aesop_instReprGoalWithMVars___closed__7 = _init_l_Aesop_instReprGoalWithMVars___closed__7();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__7);
l_Aesop_instReprGoalWithMVars___closed__8 = _init_l_Aesop_instReprGoalWithMVars___closed__8();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__8);
l_Aesop_instReprGoalWithMVars___closed__9 = _init_l_Aesop_instReprGoalWithMVars___closed__9();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__9);
l_Aesop_instReprGoalWithMVars___closed__10 = _init_l_Aesop_instReprGoalWithMVars___closed__10();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__10);
l_Aesop_instReprGoalWithMVars___closed__11 = _init_l_Aesop_instReprGoalWithMVars___closed__11();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__11);
l_Aesop_instReprGoalWithMVars___closed__12 = _init_l_Aesop_instReprGoalWithMVars___closed__12();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__12);
l_Aesop_instReprGoalWithMVars___closed__13 = _init_l_Aesop_instReprGoalWithMVars___closed__13();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__13);
l_Aesop_instReprGoalWithMVars___closed__14 = _init_l_Aesop_instReprGoalWithMVars___closed__14();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__14);
l_Aesop_instReprGoalWithMVars___closed__15 = _init_l_Aesop_instReprGoalWithMVars___closed__15();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__15);
l_Aesop_instReprGoalWithMVars___closed__16 = _init_l_Aesop_instReprGoalWithMVars___closed__16();
lean_mark_persistent(l_Aesop_instReprGoalWithMVars___closed__16);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
