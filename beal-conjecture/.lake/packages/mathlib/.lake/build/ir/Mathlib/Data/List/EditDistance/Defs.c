// Lean compiler output
// Module: Mathlib.Data.List.EditDistance.Defs
// Imports: Init Mathlib.Algebra.Group.Defs Batteries.Data.List.Basic
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
lean_object* l_List_getLast___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_Levenshtein_impl___spec__1(lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_suffixLevenshtein(lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_Levenshtein_impl___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_String_length___boxed(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__1(lean_object*, lean_object*, lean_object*);
lean_object* l_List_get___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_suffixLevenshtein___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__2___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_weightCost(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_stringLengthCost;
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__4(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_List_tail___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_instInhabitedCostNatOfDecidableEq___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Levenshtein_stringLogLengthCost___closed__1;
LEAN_EXPORT lean_object* l_levenshtein(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__2___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_stringLogLengthCost___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_stringLogLengthCost___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Levenshtein_stringLengthCost___closed__1;
lean_object* lean_string_length(lean_object*);
static lean_object* l_Levenshtein_stringLengthCost___closed__2;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__2(lean_object*);
lean_object* lean_nat_log2(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___rarg(lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__4___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost(lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_impl(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___rarg(lean_object*);
size_t lean_usize_sub(size_t, size_t);
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__2(lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
lean_object* l_List_redLength___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_List_foldrTR___at_Levenshtein_impl___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_stringLogLengthCost;
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6(lean_object*, lean_object*, lean_object*);
lean_object* l_List_zipWith___at_List_zip___spec__1___rarg(lean_object*, lean_object*);
static lean_object* l_Levenshtein_stringLogLengthCost___closed__2;
LEAN_EXPORT lean_object* l_levenshtein___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_instInhabitedCostNatOfDecidableEq(lean_object*);
lean_object* l_List_toArrayAux___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
lean_object* x_6; 
x_6 = lean_unsigned_to_nat(1u);
return x_6;
}
else
{
lean_object* x_7; 
x_7 = lean_unsigned_to_nat(0u);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_defaultCost___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(1u);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_defaultCost___elambda__2___boxed), 2, 1);
lean_closure_set(x_2, 0, lean_box(0));
x_3 = lean_alloc_closure((void*)(l_Levenshtein_defaultCost___elambda__1___rarg), 3, 1);
lean_closure_set(x_3, 0, x_1);
lean_inc(x_2);
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_defaultCost___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_defaultCost___elambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Levenshtein_defaultCost___elambda__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_instInhabitedCostNatOfDecidableEq___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Levenshtein_defaultCost___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_instInhabitedCostNatOfDecidableEq(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_instInhabitedCostNatOfDecidableEq___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
lean_inc(x_1);
x_4 = lean_apply_1(x_1, x_2);
x_5 = lean_apply_1(x_1, x_3);
x_6 = lean_nat_dec_le(x_4, x_5);
if (x_6 == 0)
{
lean_dec(x_5);
return x_4;
}
else
{
lean_dec(x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_weightCost___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__2___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_weightCost___elambda__2___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_weightCost___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Levenshtein_weightCost___elambda__2___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Levenshtein_weightCost___elambda__1___rarg), 3, 1);
lean_closure_set(x_3, 0, x_1);
lean_inc(x_2);
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_weightCost(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Levenshtein_weightCost___rarg), 1, 0);
return x_2;
}
}
static lean_object* _init_l_Levenshtein_stringLengthCost___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_String_length___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Levenshtein_stringLengthCost___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Levenshtein_stringLengthCost___closed__1;
x_2 = l_Levenshtein_weightCost___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Levenshtein_stringLengthCost() {
_start:
{
lean_object* x_1; 
x_1 = l_Levenshtein_stringLengthCost___closed__2;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_stringLogLengthCost___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_string_length(x_1);
x_3 = lean_unsigned_to_nat(1u);
x_4 = lean_nat_add(x_2, x_3);
lean_dec(x_2);
x_5 = lean_nat_log2(x_4);
lean_dec(x_4);
return x_5;
}
}
static lean_object* _init_l_Levenshtein_stringLogLengthCost___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Levenshtein_stringLogLengthCost___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Levenshtein_stringLogLengthCost___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Levenshtein_stringLogLengthCost___closed__1;
x_2 = l_Levenshtein_weightCost___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Levenshtein_stringLogLengthCost() {
_start:
{
lean_object* x_1; 
x_1 = l_Levenshtein_stringLogLengthCost___closed__2;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_stringLogLengthCost___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Levenshtein_stringLogLengthCost___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, size_t x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = lean_usize_dec_eq(x_6, x_7);
if (x_9 == 0)
{
size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_10 = 1;
x_11 = lean_usize_sub(x_6, x_10);
x_12 = lean_array_uget(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_14);
lean_dec(x_12);
x_15 = !lean_is_exclusive(x_13);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_16 = lean_ctor_get(x_13, 0);
x_17 = lean_ctor_get(x_13, 1);
x_18 = lean_ctor_get(x_1, 1);
lean_inc(x_18);
x_19 = lean_ctor_get(x_3, 0);
lean_inc(x_19);
lean_inc(x_14);
x_20 = lean_apply_1(x_19, x_14);
x_21 = lean_unsigned_to_nat(0u);
x_22 = l_List_get___rarg(x_8, x_21);
lean_inc(x_18);
x_23 = lean_apply_2(x_18, x_20, x_22);
x_24 = lean_ctor_get(x_3, 1);
lean_inc(x_24);
lean_inc(x_4);
x_25 = lean_apply_1(x_24, x_4);
lean_inc(x_18);
x_26 = lean_apply_2(x_18, x_25, x_16);
x_27 = lean_ctor_get(x_3, 2);
lean_inc(x_27);
lean_inc(x_4);
x_28 = lean_apply_2(x_27, x_14, x_4);
x_29 = lean_apply_2(x_18, x_28, x_17);
lean_inc(x_2);
x_30 = lean_apply_2(x_2, x_26, x_29);
lean_inc(x_2);
x_31 = lean_apply_2(x_2, x_23, x_30);
lean_ctor_set_tag(x_13, 1);
lean_ctor_set(x_13, 1, x_8);
lean_ctor_set(x_13, 0, x_31);
x_6 = x_11;
x_8 = x_13;
goto _start;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_33 = lean_ctor_get(x_13, 0);
x_34 = lean_ctor_get(x_13, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_13);
x_35 = lean_ctor_get(x_1, 1);
lean_inc(x_35);
x_36 = lean_ctor_get(x_3, 0);
lean_inc(x_36);
lean_inc(x_14);
x_37 = lean_apply_1(x_36, x_14);
x_38 = lean_unsigned_to_nat(0u);
x_39 = l_List_get___rarg(x_8, x_38);
lean_inc(x_35);
x_40 = lean_apply_2(x_35, x_37, x_39);
x_41 = lean_ctor_get(x_3, 1);
lean_inc(x_41);
lean_inc(x_4);
x_42 = lean_apply_1(x_41, x_4);
lean_inc(x_35);
x_43 = lean_apply_2(x_35, x_42, x_33);
x_44 = lean_ctor_get(x_3, 2);
lean_inc(x_44);
lean_inc(x_4);
x_45 = lean_apply_2(x_44, x_14, x_4);
x_46 = lean_apply_2(x_35, x_45, x_34);
lean_inc(x_2);
x_47 = lean_apply_2(x_2, x_43, x_46);
lean_inc(x_2);
x_48 = lean_apply_2(x_2, x_40, x_47);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_49, 1, x_8);
x_6 = x_11;
x_8 = x_49;
goto _start;
}
}
else
{
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg___boxed), 8, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, size_t x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = lean_usize_dec_eq(x_6, x_7);
if (x_9 == 0)
{
size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_10 = 1;
x_11 = lean_usize_sub(x_6, x_10);
x_12 = lean_array_uget(x_5, x_11);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 0);
lean_inc(x_14);
lean_dec(x_12);
x_15 = !lean_is_exclusive(x_13);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_16 = lean_ctor_get(x_13, 0);
x_17 = lean_ctor_get(x_13, 1);
x_18 = lean_ctor_get(x_1, 1);
lean_inc(x_18);
x_19 = lean_ctor_get(x_3, 0);
lean_inc(x_19);
lean_inc(x_14);
x_20 = lean_apply_1(x_19, x_14);
x_21 = lean_unsigned_to_nat(0u);
x_22 = l_List_get___rarg(x_8, x_21);
lean_inc(x_18);
x_23 = lean_apply_2(x_18, x_20, x_22);
x_24 = lean_ctor_get(x_3, 1);
lean_inc(x_24);
lean_inc(x_4);
x_25 = lean_apply_1(x_24, x_4);
lean_inc(x_18);
x_26 = lean_apply_2(x_18, x_25, x_16);
x_27 = lean_ctor_get(x_3, 2);
lean_inc(x_27);
lean_inc(x_4);
x_28 = lean_apply_2(x_27, x_14, x_4);
x_29 = lean_apply_2(x_18, x_28, x_17);
lean_inc(x_2);
x_30 = lean_apply_2(x_2, x_26, x_29);
lean_inc(x_2);
x_31 = lean_apply_2(x_2, x_23, x_30);
lean_ctor_set_tag(x_13, 1);
lean_ctor_set(x_13, 1, x_8);
lean_ctor_set(x_13, 0, x_31);
x_6 = x_11;
x_8 = x_13;
goto _start;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_33 = lean_ctor_get(x_13, 0);
x_34 = lean_ctor_get(x_13, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_13);
x_35 = lean_ctor_get(x_1, 1);
lean_inc(x_35);
x_36 = lean_ctor_get(x_3, 0);
lean_inc(x_36);
lean_inc(x_14);
x_37 = lean_apply_1(x_36, x_14);
x_38 = lean_unsigned_to_nat(0u);
x_39 = l_List_get___rarg(x_8, x_38);
lean_inc(x_35);
x_40 = lean_apply_2(x_35, x_37, x_39);
x_41 = lean_ctor_get(x_3, 1);
lean_inc(x_41);
lean_inc(x_4);
x_42 = lean_apply_1(x_41, x_4);
lean_inc(x_35);
x_43 = lean_apply_2(x_35, x_42, x_33);
x_44 = lean_ctor_get(x_3, 2);
lean_inc(x_44);
lean_inc(x_4);
x_45 = lean_apply_2(x_44, x_14, x_4);
x_46 = lean_apply_2(x_35, x_45, x_34);
lean_inc(x_2);
x_47 = lean_apply_2(x_2, x_43, x_46);
lean_inc(x_2);
x_48 = lean_apply_2(x_2, x_40, x_47);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_49, 1, x_8);
x_6 = x_11;
x_8 = x_49;
goto _start;
}
}
else
{
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg___boxed), 8, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_Levenshtein_impl___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = l_List_redLength___rarg(x_6);
x_8 = lean_mk_empty_array_with_capacity(x_7);
lean_dec(x_7);
x_9 = l_List_toArrayAux___rarg(x_6, x_8);
x_10 = lean_array_get_size(x_9);
x_11 = lean_nat_dec_le(x_10, x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_nat_dec_lt(x_12, x_10);
if (x_13 == 0)
{
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
size_t x_14; size_t x_15; lean_object* x_16; 
x_14 = lean_usize_of_nat(x_10);
lean_dec(x_10);
x_15 = 0;
x_16 = l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg(x_1, x_2, x_3, x_4, x_9, x_14, x_15, x_5);
lean_dec(x_9);
return x_16;
}
}
else
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_nat_dec_lt(x_17, x_10);
if (x_18 == 0)
{
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
size_t x_19; size_t x_20; lean_object* x_21; 
x_19 = lean_usize_of_nat(x_10);
lean_dec(x_10);
x_20 = 0;
x_21 = l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg(x_1, x_2, x_3, x_4, x_9, x_19, x_20, x_5);
lean_dec(x_9);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_Levenshtein_impl___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_foldrTR___at_Levenshtein_impl___spec__1___rarg), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_impl___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_8);
lean_inc(x_5);
x_9 = lean_apply_1(x_8, x_5);
lean_inc(x_6);
x_10 = l_List_getLast___rarg(x_6, lean_box(0));
x_11 = lean_apply_2(x_7, x_9, x_10);
x_12 = lean_box(0);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
x_14 = l_List_tail___rarg(x_6);
x_15 = l_List_zipWith___at_List_zip___spec__1___rarg(x_6, x_14);
x_16 = l_List_zipWith___at_List_zip___spec__1___rarg(x_4, x_15);
x_17 = l_List_foldrTR___at_Levenshtein_impl___spec__1___rarg(x_1, x_2, x_3, x_5, x_13, x_16);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Levenshtein_impl(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Levenshtein_impl___rarg), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
size_t x_9; size_t x_10; lean_object* x_11; 
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_11 = l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__2___rarg(x_1, x_2, x_3, x_4, x_5, x_9, x_10, x_8);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
size_t x_9; size_t x_10; lean_object* x_11; 
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_11 = l_Array_foldrMUnsafe_fold___at_Levenshtein_impl___spec__3___rarg(x_1, x_2, x_3, x_4, x_5, x_9, x_10, x_8);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_eq(x_4, x_5);
if (x_7 == 0)
{
size_t x_8; size_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_8 = 1;
x_9 = lean_usize_sub(x_4, x_8);
x_10 = lean_array_uget(x_3, x_9);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
x_13 = lean_apply_1(x_12, x_10);
x_14 = lean_unsigned_to_nat(0u);
x_15 = l_List_get___rarg(x_6, x_14);
x_16 = lean_apply_2(x_11, x_13, x_15);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_6);
x_4 = x_9;
x_6 = x_17;
goto _start;
}
else
{
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg___boxed), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_eq(x_4, x_5);
if (x_7 == 0)
{
size_t x_8; size_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_8 = 1;
x_9 = lean_usize_sub(x_4, x_8);
x_10 = lean_array_uget(x_3, x_9);
x_11 = lean_ctor_get(x_1, 1);
lean_inc(x_11);
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
x_13 = lean_apply_1(x_12, x_10);
x_14 = lean_unsigned_to_nat(0u);
x_15 = l_List_get___rarg(x_6, x_14);
x_16 = lean_apply_2(x_11, x_13, x_15);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_6);
x_4 = x_9;
x_6 = x_17;
goto _start;
}
else
{
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg___boxed), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_5 = l_List_redLength___rarg(x_4);
x_6 = lean_mk_empty_array_with_capacity(x_5);
lean_dec(x_5);
x_7 = l_List_toArrayAux___rarg(x_4, x_6);
x_8 = lean_array_get_size(x_7);
x_9 = lean_nat_dec_le(x_8, x_8);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_unsigned_to_nat(0u);
x_11 = lean_nat_dec_lt(x_10, x_8);
if (x_11 == 0)
{
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
else
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_13 = 0;
x_14 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg(x_1, x_2, x_7, x_12, x_13, x_3);
lean_dec(x_7);
return x_14;
}
}
else
{
lean_object* x_15; uint8_t x_16; 
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_nat_dec_lt(x_15, x_8);
if (x_16 == 0)
{
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
else
{
size_t x_17; size_t x_18; lean_object* x_19; 
x_17 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_18 = 0;
x_19 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg(x_1, x_2, x_7, x_17, x_18, x_3);
lean_dec(x_7);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_foldrTR___at_suffixLevenshtein___spec__1___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, size_t x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = lean_usize_dec_eq(x_6, x_7);
if (x_9 == 0)
{
size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; 
x_10 = 1;
x_11 = lean_usize_sub(x_6, x_10);
x_12 = lean_array_uget(x_5, x_11);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_13 = l_Levenshtein_impl___rarg(x_1, x_2, x_3, x_4, x_12, x_8);
x_6 = x_11;
x_8 = x_13;
goto _start;
}
else
{
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg___boxed), 8, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, size_t x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = lean_usize_dec_eq(x_6, x_7);
if (x_9 == 0)
{
size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; 
x_10 = 1;
x_11 = lean_usize_sub(x_6, x_10);
x_12 = lean_array_uget(x_5, x_11);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_13 = l_Levenshtein_impl___rarg(x_1, x_2, x_3, x_4, x_12, x_8);
x_6 = x_11;
x_8 = x_13;
goto _start;
}
else
{
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg___boxed), 8, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = l_List_redLength___rarg(x_6);
x_8 = lean_mk_empty_array_with_capacity(x_7);
lean_dec(x_7);
x_9 = l_List_toArrayAux___rarg(x_6, x_8);
x_10 = lean_array_get_size(x_9);
x_11 = lean_nat_dec_le(x_10, x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_nat_dec_lt(x_12, x_10);
if (x_13 == 0)
{
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
size_t x_14; size_t x_15; lean_object* x_16; 
x_14 = lean_usize_of_nat(x_10);
lean_dec(x_10);
x_15 = 0;
x_16 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg(x_1, x_2, x_3, x_4, x_9, x_14, x_15, x_5);
lean_dec(x_9);
return x_16;
}
}
else
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_nat_dec_lt(x_17, x_10);
if (x_18 == 0)
{
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
size_t x_19; size_t x_20; lean_object* x_21; 
x_19 = lean_usize_of_nat(x_10);
lean_dec(x_10);
x_20 = 0;
x_21 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg(x_1, x_2, x_3, x_4, x_9, x_19, x_20, x_5);
lean_dec(x_9);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_List_foldrTR___at_suffixLevenshtein___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_List_foldrTR___at_suffixLevenshtein___spec__4___rarg), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_suffixLevenshtein___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_box(0);
x_8 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_1);
x_9 = l_List_foldrTR___at_suffixLevenshtein___spec__1___rarg(x_1, x_3, x_8, x_4);
x_10 = l_List_foldrTR___at_suffixLevenshtein___spec__4___rarg(x_1, x_2, x_3, x_4, x_9, x_5);
return x_10;
}
}
LEAN_EXPORT lean_object* l_suffixLevenshtein(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_suffixLevenshtein___rarg), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__2___rarg(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__3___rarg(x_1, x_2, x_3, x_7, x_8, x_6);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
size_t x_9; size_t x_10; lean_object* x_11; 
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_11 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__5___rarg(x_1, x_2, x_3, x_4, x_5, x_9, x_10, x_8);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
size_t x_9; size_t x_10; lean_object* x_11; 
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_11 = l_Array_foldrMUnsafe_fold___at_suffixLevenshtein___spec__6___rarg(x_1, x_2, x_3, x_4, x_5, x_9, x_10, x_8);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_levenshtein___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = l_suffixLevenshtein___rarg(x_1, x_2, x_3, x_4, x_5);
x_7 = lean_unsigned_to_nat(0u);
x_8 = l_List_get___rarg(x_6, x_7);
lean_dec(x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_levenshtein(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_levenshtein___rarg), 5, 0);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Data_List_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_List_EditDistance_Defs(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Data_List_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Levenshtein_stringLengthCost___closed__1 = _init_l_Levenshtein_stringLengthCost___closed__1();
lean_mark_persistent(l_Levenshtein_stringLengthCost___closed__1);
l_Levenshtein_stringLengthCost___closed__2 = _init_l_Levenshtein_stringLengthCost___closed__2();
lean_mark_persistent(l_Levenshtein_stringLengthCost___closed__2);
l_Levenshtein_stringLengthCost = _init_l_Levenshtein_stringLengthCost();
lean_mark_persistent(l_Levenshtein_stringLengthCost);
l_Levenshtein_stringLogLengthCost___closed__1 = _init_l_Levenshtein_stringLogLengthCost___closed__1();
lean_mark_persistent(l_Levenshtein_stringLogLengthCost___closed__1);
l_Levenshtein_stringLogLengthCost___closed__2 = _init_l_Levenshtein_stringLogLengthCost___closed__2();
lean_mark_persistent(l_Levenshtein_stringLogLengthCost___closed__2);
l_Levenshtein_stringLogLengthCost = _init_l_Levenshtein_stringLogLengthCost();
lean_mark_persistent(l_Levenshtein_stringLogLengthCost);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
