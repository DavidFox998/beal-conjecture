// Lean compiler output
// Module: Mathlib.Data.Array.Defs
// Imports: Init Mathlib.Init
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
LEAN_EXPORT lean_object* l_List_foldl___at_Array_permute_x21___spec__1(lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21(lean_object*);
static lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__4;
LEAN_EXPORT lean_object* l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg(lean_object*, lean_object*);
static lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__3;
static lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__1;
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* lean_array_fset(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux(lean_object*);
lean_object* l_outOfBounds___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l___private_Init_Util_0__mkPanicMessageWithDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_permute_x21(lean_object*);
LEAN_EXPORT lean_object* l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1(lean_object*);
static lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__2;
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_foldl___at_Array_permute_x21___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_set(lean_object*, lean_object*, lean_object*);
lean_object* lean_panic_fn(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_permute_x21___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg___closed__1;
lean_object* lean_string_append(lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
static lean_object* _init_l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg___closed__1;
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
x_5 = lean_panic_fn(x_4, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg), 2, 0);
return x_2;
}
}
static lean_object* _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("index ", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" out of bounds", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Init.Data.Array.Basic", 21, 21);
return x_1;
}
}
static lean_object* _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Array.swapAt!", 13, 13);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
x_5 = lean_array_set(x_1, x_4, x_3);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
lean_dec(x_2);
x_8 = lean_array_get_size(x_1);
x_9 = lean_nat_dec_lt(x_6, x_8);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
lean_dec(x_1);
x_10 = l___private_Init_Data_Repr_0__Nat_reprFast(x_6);
x_11 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__1;
x_12 = lean_string_append(x_11, x_10);
lean_dec(x_10);
x_13 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__2;
x_14 = lean_string_append(x_12, x_13);
x_15 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__3;
x_16 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__4;
x_17 = lean_unsigned_to_nat(134u);
x_18 = lean_unsigned_to_nat(4u);
x_19 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_15, x_16, x_17, x_18, x_14);
lean_dec(x_14);
x_20 = l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg(x_3, x_19);
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_1 = x_22;
x_2 = x_7;
x_3 = x_21;
goto _start;
}
else
{
lean_object* x_24; lean_object* x_25; 
x_24 = lean_array_fget(x_1, x_6);
x_25 = lean_array_fset(x_1, x_6, x_3);
lean_dec(x_6);
x_1 = x_25;
x_2 = x_7;
x_3 = x_24;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_array_get_size(x_2);
x_7 = lean_nat_dec_lt(x_4, x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_outOfBounds___rarg(x_1);
x_9 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg(x_2, x_5, x_8, x_4);
lean_dec(x_4);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
lean_dec(x_1);
x_10 = lean_array_fget(x_2, x_4);
x_11 = l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg(x_2, x_5, x_10, x_4);
lean_dec(x_4);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_cyclicPermute_x21(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_cyclicPermute_x21___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_Array_permute_x21___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec(x_3);
lean_inc(x_1);
x_6 = l_Array_cyclicPermute_x21___rarg(x_1, x_2, x_4);
x_2 = x_6;
x_3 = x_5;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_foldl___at_Array_permute_x21___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_List_foldl___at_Array_permute_x21___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_permute_x21___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_foldl___at_Array_permute_x21___spec__1___rarg(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_permute_x21(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_permute_x21___rarg), 3, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Array_Defs(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg___closed__1 = _init_l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg___closed__1();
lean_mark_persistent(l_panic___at_Array_cyclicPermute_x21_cyclicPermuteAux___spec__1___rarg___closed__1);
l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__1 = _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__1();
lean_mark_persistent(l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__1);
l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__2 = _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__2();
lean_mark_persistent(l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__2);
l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__3 = _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__3();
lean_mark_persistent(l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__3);
l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__4 = _init_l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__4();
lean_mark_persistent(l_Array_cyclicPermute_x21_cyclicPermuteAux___rarg___closed__4);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
