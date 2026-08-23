// Lean compiler output
// Module: Mathlib.Data.String.Defs
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
LEAN_EXPORT lean_object* l_String_replicate(lean_object*, uint32_t);
lean_object* lean_string_utf8_extract(lean_object*, lean_object*, lean_object*);
uint32_t lean_string_utf8_get(lean_object*, lean_object*);
static lean_object* l_String_mapTokens___closed__1;
lean_object* l_List_replicateTR_loop___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_mapTokens(uint32_t, lean_object*, lean_object*);
lean_object* lean_string_push(lean_object*, uint32_t);
lean_object* l_List_mapTR_loop___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_splitAux___at_String_mapTokens___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_string_data(lean_object*);
LEAN_EXPORT lean_object* l_String_leftpad___boxed(lean_object*, lean_object*, lean_object*);
lean_object* lean_string_utf8_next(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_replicate___boxed(lean_object*, lean_object*);
lean_object* lean_string_mk(lean_object*);
LEAN_EXPORT lean_object* l_String_mapTokens___boxed(lean_object*, lean_object*, lean_object*);
uint8_t lean_string_utf8_at_end(lean_object*, lean_object*);
lean_object* l_List_replicateTR___rarg(lean_object*, lean_object*);
lean_object* l_List_lengthTRAux___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_split___at_String_mapTokens___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_head___boxed(lean_object*);
lean_object* lean_string_length(lean_object*);
uint8_t lean_uint32_dec_eq(uint32_t, uint32_t);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_rightpad___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_List_reverse___rarg(lean_object*);
LEAN_EXPORT lean_object* l_String_rightpad(lean_object*, uint32_t, lean_object*);
lean_object* l_String_intercalate(lean_object*, lean_object*);
LEAN_EXPORT uint32_t l_String_head(lean_object*);
LEAN_EXPORT lean_object* l_String_splitAux___at_String_mapTokens___spec__2(uint32_t, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_split___at_String_mapTokens___spec__1(uint32_t, lean_object*);
lean_object* lean_string_append(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_leftpad(lean_object*, uint32_t, lean_object*);
LEAN_EXPORT lean_object* l_String_leftpad(lean_object* x_1, uint32_t x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_4 = lean_string_data(x_3);
x_5 = lean_unsigned_to_nat(0u);
x_6 = l_List_lengthTRAux___rarg(x_4, x_5);
x_7 = lean_nat_sub(x_1, x_6);
lean_dec(x_6);
x_8 = lean_box_uint32(x_2);
x_9 = l_List_replicateTR_loop___rarg(x_8, x_7, x_4);
x_10 = lean_string_mk(x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_String_leftpad___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint32_t x_4; lean_object* x_5; 
x_4 = lean_unbox_uint32(x_2);
lean_dec(x_2);
x_5 = l_String_leftpad(x_1, x_4, x_3);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_String_replicate(lean_object* x_1, uint32_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_box_uint32(x_2);
x_4 = l_List_replicateTR___rarg(x_1, x_3);
x_5 = lean_string_mk(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_String_replicate___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint32_t x_3; lean_object* x_4; 
x_3 = lean_unbox_uint32(x_2);
lean_dec(x_2);
x_4 = l_String_replicate(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_String_rightpad(lean_object* x_1, uint32_t x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_string_length(x_3);
x_5 = lean_nat_sub(x_1, x_4);
lean_dec(x_4);
x_6 = l_String_replicate(x_5, x_2);
x_7 = lean_string_append(x_3, x_6);
lean_dec(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_String_rightpad___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint32_t x_4; lean_object* x_5; 
x_4 = lean_unbox_uint32(x_2);
lean_dec(x_2);
x_5 = l_String_rightpad(x_1, x_4, x_3);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_String_splitAux___at_String_mapTokens___spec__2(uint32_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_string_utf8_at_end(x_2, x_4);
if (x_6 == 0)
{
uint32_t x_7; uint8_t x_8; 
x_7 = lean_string_utf8_get(x_2, x_4);
x_8 = lean_uint32_dec_eq(x_7, x_1);
if (x_8 == 0)
{
lean_object* x_9; 
x_9 = lean_string_utf8_next(x_2, x_4);
lean_dec(x_4);
x_4 = x_9;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_string_utf8_next(x_2, x_4);
x_12 = lean_string_utf8_extract(x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_5);
lean_inc(x_11);
x_3 = x_11;
x_4 = x_11;
x_5 = x_13;
goto _start;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_string_utf8_extract(x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_5);
x_17 = l_List_reverse___rarg(x_16);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_String_split___at_String_mapTokens___spec__1(uint32_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_box(0);
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_String_splitAux___at_String_mapTokens___spec__2(x_1, x_2, x_4, x_4, x_3);
return x_5;
}
}
static lean_object* _init_l_String_mapTokens___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_String_mapTokens(uint32_t x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = l_String_mapTokens___closed__1;
x_5 = lean_string_push(x_4, x_1);
x_6 = l_String_split___at_String_mapTokens___spec__1(x_1, x_3);
x_7 = lean_box(0);
x_8 = l_List_mapTR_loop___rarg(x_2, x_6, x_7);
x_9 = l_String_intercalate(x_5, x_8);
lean_dec(x_5);
return x_9;
}
}
LEAN_EXPORT lean_object* l_String_splitAux___at_String_mapTokens___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint32_t x_6; lean_object* x_7; 
x_6 = lean_unbox_uint32(x_1);
lean_dec(x_1);
x_7 = l_String_splitAux___at_String_mapTokens___spec__2(x_6, x_2, x_3, x_4, x_5);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_String_split___at_String_mapTokens___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint32_t x_3; lean_object* x_4; 
x_3 = lean_unbox_uint32(x_1);
lean_dec(x_1);
x_4 = l_String_split___at_String_mapTokens___spec__1(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_String_mapTokens___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint32_t x_4; lean_object* x_5; 
x_4 = lean_unbox_uint32(x_1);
lean_dec(x_1);
x_5 = l_String_mapTokens(x_4, x_2, x_3);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT uint32_t l_String_head(lean_object* x_1) {
_start:
{
lean_object* x_2; uint32_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_string_utf8_get(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_String_head___boxed(lean_object* x_1) {
_start:
{
uint32_t x_2; lean_object* x_3; 
x_2 = l_String_head(x_1);
lean_dec(x_1);
x_3 = lean_box_uint32(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_String_Defs(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_String_mapTokens___closed__1 = _init_l_String_mapTokens___closed__1();
lean_mark_persistent(l_String_mapTokens___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
