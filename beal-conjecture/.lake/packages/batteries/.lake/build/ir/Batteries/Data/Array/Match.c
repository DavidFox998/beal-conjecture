// Lean compiler output
// Module: Batteries.Data.Array.Match
// Imports: Init
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
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream_loop(lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_ofArray(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_Array_PrefixTable_size___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_instInhabitedPrefixTable(lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_ofArray___rarg___boxed(lean_object*, lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* l_Fin_ofNat(lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_state___default___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_next_x3f___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_extend(lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_ofStream(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_extend___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_state___default(lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_state___default___rarg___boxed(lean_object*);
static lean_object* l_Array_instInhabitedPrefixTable___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Array_mkPrefixTable(lean_object*);
LEAN_EXPORT lean_object* l_Array_mkPrefixTable___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_ofStream___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_next_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_step(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_step___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_step___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mkPrefixTable___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_size___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Array_PrefixTable_size(lean_object*);
size_t lean_usize_add(size_t, size_t);
lean_object* lean_array_uget(lean_object*, size_t);
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream_loop___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_Matcher_ofArray___rarg(lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
static lean_object* _init_l_Array_instInhabitedPrefixTable___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_instInhabitedPrefixTable(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Array_instInhabitedPrefixTable___closed__1;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_size___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_array_get_size(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_size(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_PrefixTable_size___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_size___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Array_PrefixTable_size___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_step___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_array_get_size(x_2);
x_6 = lean_nat_dec_lt(x_4, x_5);
lean_dec(x_5);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_eq(x_4, x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_4, x_9);
lean_dec(x_4);
x_11 = lean_array_fget(x_2, x_10);
lean_dec(x_10);
x_12 = lean_ctor_get(x_11, 1);
lean_inc(x_12);
lean_dec(x_11);
x_4 = x_12;
goto _start;
}
else
{
lean_object* x_14; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_14 = lean_unsigned_to_nat(0u);
return x_14;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_15 = lean_array_fget(x_2, x_4);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
lean_dec(x_15);
lean_inc(x_1);
lean_inc(x_3);
x_17 = lean_apply_2(x_1, x_3, x_16);
x_18 = lean_unbox(x_17);
lean_dec(x_17);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = lean_unsigned_to_nat(0u);
x_20 = lean_nat_dec_eq(x_4, x_19);
if (x_20 == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_unsigned_to_nat(1u);
x_22 = lean_nat_sub(x_4, x_21);
lean_dec(x_4);
x_23 = lean_array_fget(x_2, x_22);
lean_dec(x_22);
x_24 = lean_ctor_get(x_23, 1);
lean_inc(x_24);
lean_dec(x_23);
x_4 = x_24;
goto _start;
}
else
{
lean_object* x_26; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_26 = lean_unsigned_to_nat(0u);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; 
lean_dec(x_3);
lean_dec(x_1);
x_27 = lean_unsigned_to_nat(1u);
x_28 = lean_nat_add(x_4, x_27);
lean_dec(x_4);
return x_28;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_step(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_PrefixTable_step___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_step___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Array_PrefixTable_step___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_extend___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_array_get_size(x_2);
lean_inc(x_3);
x_5 = l_Array_PrefixTable_step___rarg(x_1, x_2, x_3, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
x_7 = lean_array_push(x_2, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_PrefixTable_extend(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_PrefixTable_extend___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_1);
x_8 = l_Array_PrefixTable_extend___rarg(x_1, x_5, x_7);
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
x_3 = x_10;
x_5 = x_8;
goto _start;
}
else
{
lean_dec(x_1);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg___boxed), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTable___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_array_get_size(x_2);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_lt(x_4, x_3);
if (x_5 == 0)
{
lean_object* x_6; 
lean_dec(x_3);
lean_dec(x_1);
x_6 = l_Array_instInhabitedPrefixTable___closed__1;
return x_6;
}
else
{
uint8_t x_7; 
x_7 = lean_nat_dec_le(x_3, x_3);
if (x_7 == 0)
{
lean_object* x_8; 
lean_dec(x_3);
lean_dec(x_1);
x_8 = l_Array_instInhabitedPrefixTable___closed__1;
return x_8;
}
else
{
size_t x_9; size_t x_10; lean_object* x_11; lean_object* x_12; 
x_9 = 0;
x_10 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_11 = l_Array_instInhabitedPrefixTable___closed__1;
x_12 = l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg(x_1, x_2, x_9, x_10, x_11);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTable(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_mkPrefixTable___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_Array_mkPrefixTable___spec__1___rarg(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTable___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Array_mkPrefixTable___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream_loop___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_2);
x_5 = lean_apply_1(x_2, x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
lean_inc(x_1);
x_9 = l_Array_PrefixTable_extend___rarg(x_1, x_3, x_7);
x_3 = x_9;
x_4 = x_8;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream_loop(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_mkPrefixTableOfStream_loop___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_Array_instInhabitedPrefixTable___closed__1;
x_5 = l_Array_mkPrefixTableOfStream_loop___rarg(x_1, x_2, x_4, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_mkPrefixTableOfStream(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_mkPrefixTableOfStream___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_state___default___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_array_get_size(x_1);
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Fin_ofNat(x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_state___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_Matcher_state___default___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_state___default___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Array_Matcher_state___default___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_ofArray___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = l_Array_mkPrefixTable___rarg(x_1, x_2);
x_4 = lean_array_get_size(x_3);
x_5 = lean_unsigned_to_nat(0u);
x_6 = l_Fin_ofNat(x_4, x_5);
lean_dec(x_4);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_3);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_ofArray(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_Matcher_ofArray___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_ofArray___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Array_Matcher_ofArray___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_ofStream___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = l_Array_mkPrefixTableOfStream___rarg(x_1, x_2, x_3);
x_5 = lean_array_get_size(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = l_Fin_ofNat(x_5, x_6);
lean_dec(x_5);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_ofStream(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_Matcher_ofStream___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_next_x3f___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_2);
x_5 = lean_apply_1(x_2, x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_box(0);
return x_6;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_5);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_5, 0);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_3);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_11 = lean_ctor_get(x_8, 0);
x_12 = lean_ctor_get(x_8, 1);
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_3, 1);
lean_inc(x_1);
x_15 = l_Array_PrefixTable_step___rarg(x_1, x_13, x_11, x_14);
x_16 = lean_array_get_size(x_13);
x_17 = lean_nat_dec_eq(x_15, x_16);
lean_dec(x_16);
if (x_17 == 0)
{
lean_free_object(x_8);
lean_free_object(x_5);
lean_ctor_set(x_3, 1, x_15);
x_4 = x_12;
goto _start;
}
else
{
lean_dec(x_2);
lean_dec(x_1);
lean_ctor_set(x_3, 1, x_15);
lean_ctor_set(x_8, 1, x_3);
lean_ctor_set(x_8, 0, x_12);
return x_5;
}
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_19 = lean_ctor_get(x_8, 0);
x_20 = lean_ctor_get(x_8, 1);
x_21 = lean_ctor_get(x_3, 0);
x_22 = lean_ctor_get(x_3, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_3);
lean_inc(x_1);
x_23 = l_Array_PrefixTable_step___rarg(x_1, x_21, x_19, x_22);
x_24 = lean_array_get_size(x_21);
x_25 = lean_nat_dec_eq(x_23, x_24);
lean_dec(x_24);
if (x_25 == 0)
{
lean_object* x_26; 
lean_free_object(x_8);
lean_free_object(x_5);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_21);
lean_ctor_set(x_26, 1, x_23);
x_3 = x_26;
x_4 = x_20;
goto _start;
}
else
{
lean_object* x_28; 
lean_dec(x_2);
lean_dec(x_1);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_21);
lean_ctor_set(x_28, 1, x_23);
lean_ctor_set(x_8, 1, x_28);
lean_ctor_set(x_8, 0, x_20);
return x_5;
}
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; uint8_t x_36; 
x_29 = lean_ctor_get(x_8, 0);
x_30 = lean_ctor_get(x_8, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_8);
x_31 = lean_ctor_get(x_3, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_3, 1);
lean_inc(x_32);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_33 = x_3;
} else {
 lean_dec_ref(x_3);
 x_33 = lean_box(0);
}
lean_inc(x_1);
x_34 = l_Array_PrefixTable_step___rarg(x_1, x_31, x_29, x_32);
x_35 = lean_array_get_size(x_31);
x_36 = lean_nat_dec_eq(x_34, x_35);
lean_dec(x_35);
if (x_36 == 0)
{
lean_object* x_37; 
lean_free_object(x_5);
if (lean_is_scalar(x_33)) {
 x_37 = lean_alloc_ctor(0, 2, 0);
} else {
 x_37 = x_33;
}
lean_ctor_set(x_37, 0, x_31);
lean_ctor_set(x_37, 1, x_34);
x_3 = x_37;
x_4 = x_30;
goto _start;
}
else
{
lean_object* x_39; lean_object* x_40; 
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_33)) {
 x_39 = lean_alloc_ctor(0, 2, 0);
} else {
 x_39 = x_33;
}
lean_ctor_set(x_39, 0, x_31);
lean_ctor_set(x_39, 1, x_34);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_30);
lean_ctor_set(x_40, 1, x_39);
lean_ctor_set(x_5, 0, x_40);
return x_5;
}
}
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_41 = lean_ctor_get(x_5, 0);
lean_inc(x_41);
lean_dec(x_5);
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_41, 1);
lean_inc(x_43);
if (lean_is_exclusive(x_41)) {
 lean_ctor_release(x_41, 0);
 lean_ctor_release(x_41, 1);
 x_44 = x_41;
} else {
 lean_dec_ref(x_41);
 x_44 = lean_box(0);
}
x_45 = lean_ctor_get(x_3, 0);
lean_inc(x_45);
x_46 = lean_ctor_get(x_3, 1);
lean_inc(x_46);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_47 = x_3;
} else {
 lean_dec_ref(x_3);
 x_47 = lean_box(0);
}
lean_inc(x_1);
x_48 = l_Array_PrefixTable_step___rarg(x_1, x_45, x_42, x_46);
x_49 = lean_array_get_size(x_45);
x_50 = lean_nat_dec_eq(x_48, x_49);
lean_dec(x_49);
if (x_50 == 0)
{
lean_object* x_51; 
lean_dec(x_44);
if (lean_is_scalar(x_47)) {
 x_51 = lean_alloc_ctor(0, 2, 0);
} else {
 x_51 = x_47;
}
lean_ctor_set(x_51, 0, x_45);
lean_ctor_set(x_51, 1, x_48);
x_3 = x_51;
x_4 = x_43;
goto _start;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
lean_dec(x_2);
lean_dec(x_1);
if (lean_is_scalar(x_47)) {
 x_53 = lean_alloc_ctor(0, 2, 0);
} else {
 x_53 = x_47;
}
lean_ctor_set(x_53, 0, x_45);
lean_ctor_set(x_53, 1, x_48);
if (lean_is_scalar(x_44)) {
 x_54 = lean_alloc_ctor(0, 2, 0);
} else {
 x_54 = x_44;
}
lean_ctor_set(x_54, 0, x_43);
lean_ctor_set(x_54, 1, x_53);
x_55 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_55, 0, x_54);
return x_55;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_Matcher_next_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_Matcher_next_x3f___rarg), 4, 0);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Data_Array_Match(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Array_instInhabitedPrefixTable___closed__1 = _init_l_Array_instInhabitedPrefixTable___closed__1();
lean_mark_persistent(l_Array_instInhabitedPrefixTable___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
