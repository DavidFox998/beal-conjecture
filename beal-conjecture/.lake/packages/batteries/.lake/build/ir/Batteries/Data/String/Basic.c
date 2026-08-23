// Lean compiler output
// Module: Batteries.Data.String.Basic
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
lean_object* lean_string_utf8_extract(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_toAsciiByteArray_loop(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_dropSuffix_x3f(lean_object*, lean_object*);
uint8_t lean_uint32_to_uint8(uint32_t);
uint32_t lean_string_utf8_get(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_stripSuffix(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Substring_dropPrefix_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Substring_commonPrefix(lean_object*, lean_object*);
lean_object* l_String_toSubstring(lean_object*);
LEAN_EXPORT lean_object* l_Substring_commonSuffix_loop___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Substring_commonSuffix_loop(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_byte_array_push(lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_String_stripPrefix(lean_object*, lean_object*);
lean_object* lean_string_utf8_byte_size(lean_object*);
LEAN_EXPORT lean_object* l_String_dropPrefix_x3f(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Substring_commonSuffix(lean_object*, lean_object*);
lean_object* lean_string_utf8_next(lean_object*, lean_object*);
extern lean_object* l_ByteArray_empty;
static lean_object* l_instCoeStringSubstring__batteries___closed__1;
LEAN_EXPORT lean_object* l_Substring_dropSuffix_x3f(lean_object*, lean_object*);
uint8_t lean_string_utf8_at_end(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Substring_commonPrefix_loop(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_string_utf8_prev(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_toAsciiByteArray(lean_object*);
LEAN_EXPORT lean_object* l_String_toAsciiByteArray_loop___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_foldlAux___at_String_count___spec__1(uint32_t, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_count(lean_object*, uint32_t);
LEAN_EXPORT lean_object* l_instCoeStringSubstring__batteries;
LEAN_EXPORT lean_object* l_Substring_commonPrefix_loop___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
uint8_t lean_uint32_dec_eq(uint32_t, uint32_t);
LEAN_EXPORT lean_object* l_String_count___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_toAsciiByteArray___boxed(lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_String_foldlAux___at_String_count___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
static lean_object* _init_l_instCoeStringSubstring__batteries___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_String_toSubstring), 1, 0);
return x_1;
}
}
static lean_object* _init_l_instCoeStringSubstring__batteries() {
_start:
{
lean_object* x_1; 
x_1 = l_instCoeStringSubstring__batteries___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Substring_commonPrefix_loop(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_ctor_get(x_1, 2);
x_6 = lean_nat_dec_lt(x_3, x_5);
if (x_6 == 0)
{
lean_dec(x_4);
return x_3;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_2, 2);
x_8 = lean_nat_dec_lt(x_4, x_7);
if (x_8 == 0)
{
lean_dec(x_4);
return x_3;
}
else
{
lean_object* x_9; uint32_t x_10; lean_object* x_11; uint32_t x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_1, 0);
x_10 = lean_string_utf8_get(x_9, x_3);
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_string_utf8_get(x_11, x_4);
x_13 = lean_uint32_dec_eq(x_10, x_12);
if (x_13 == 0)
{
lean_dec(x_4);
return x_3;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_string_utf8_next(x_9, x_3);
lean_dec(x_3);
x_15 = lean_string_utf8_next(x_11, x_4);
lean_dec(x_4);
x_3 = x_14;
x_4 = x_15;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Substring_commonPrefix_loop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Substring_commonPrefix_loop(x_1, x_2, x_3, x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Substring_commonPrefix(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
lean_inc(x_4);
x_6 = l_Substring_commonPrefix_loop(x_1, x_2, x_4, x_5);
lean_dec(x_2);
x_7 = !lean_is_exclusive(x_1);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_1, 2);
lean_dec(x_8);
x_9 = lean_ctor_get(x_1, 1);
lean_dec(x_9);
x_10 = lean_ctor_get(x_1, 0);
lean_dec(x_10);
lean_ctor_set(x_1, 2, x_6);
return x_1;
}
else
{
lean_object* x_11; 
lean_dec(x_1);
x_11 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_11, 0, x_3);
lean_ctor_set(x_11, 1, x_4);
lean_ctor_set(x_11, 2, x_6);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Substring_commonSuffix_loop(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_nat_dec_lt(x_5, x_3);
if (x_6 == 0)
{
lean_dec(x_4);
return x_3;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_nat_dec_lt(x_7, x_4);
if (x_8 == 0)
{
lean_dec(x_4);
return x_3;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint32_t x_13; uint32_t x_14; uint8_t x_15; 
x_9 = lean_ctor_get(x_1, 0);
x_10 = lean_string_utf8_prev(x_9, x_3);
x_11 = lean_ctor_get(x_2, 0);
x_12 = lean_string_utf8_prev(x_11, x_4);
lean_dec(x_4);
x_13 = lean_string_utf8_get(x_9, x_10);
x_14 = lean_string_utf8_get(x_11, x_12);
x_15 = lean_uint32_dec_eq(x_13, x_14);
if (x_15 == 0)
{
lean_dec(x_12);
lean_dec(x_10);
return x_3;
}
else
{
lean_dec(x_3);
x_3 = x_10;
x_4 = x_12;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Substring_commonSuffix_loop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Substring_commonSuffix_loop(x_1, x_2, x_3, x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Substring_commonSuffix(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 2);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 2);
lean_inc(x_5);
lean_inc(x_4);
x_6 = l_Substring_commonSuffix_loop(x_1, x_2, x_4, x_5);
lean_dec(x_2);
x_7 = !lean_is_exclusive(x_1);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_ctor_get(x_1, 2);
lean_dec(x_8);
x_9 = lean_ctor_get(x_1, 1);
lean_dec(x_9);
x_10 = lean_ctor_get(x_1, 0);
lean_dec(x_10);
lean_ctor_set(x_1, 1, x_6);
return x_1;
}
else
{
lean_object* x_11; 
lean_dec(x_1);
x_11 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_11, 0, x_3);
lean_ctor_set(x_11, 1, x_6);
lean_ctor_set(x_11, 2, x_4);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Substring_dropPrefix_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = l_Substring_commonPrefix(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 2);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_nat_sub(x_5, x_4);
lean_dec(x_4);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
x_8 = lean_ctor_get(x_2, 2);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_nat_sub(x_8, x_7);
lean_dec(x_7);
lean_dec(x_8);
x_10 = lean_nat_dec_eq(x_6, x_9);
lean_dec(x_9);
lean_dec(x_6);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_5);
lean_dec(x_1);
x_11 = lean_box(0);
return x_11;
}
else
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_1);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_1, 1);
lean_dec(x_13);
lean_ctor_set(x_1, 1, x_5);
x_14 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_1, 0);
x_16 = lean_ctor_get(x_1, 2);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_1);
x_17 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_5);
lean_ctor_set(x_17, 2, x_16);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_Substring_dropSuffix_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
lean_inc(x_2);
lean_inc(x_1);
x_3 = l_Substring_commonSuffix(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 2);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_nat_sub(x_5, x_4);
lean_dec(x_5);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
x_8 = lean_ctor_get(x_2, 2);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_nat_sub(x_8, x_7);
lean_dec(x_7);
lean_dec(x_8);
x_10 = lean_nat_dec_eq(x_6, x_9);
lean_dec(x_9);
lean_dec(x_6);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_4);
lean_dec(x_1);
x_11 = lean_box(0);
return x_11;
}
else
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_1);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_1, 2);
lean_dec(x_13);
lean_ctor_set(x_1, 2, x_4);
x_14 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_1, 0);
x_16 = lean_ctor_get(x_1, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_1);
x_17 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
lean_ctor_set(x_17, 2, x_4);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_17);
return x_18;
}
}
}
}
LEAN_EXPORT lean_object* l_String_dropPrefix_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_string_utf8_byte_size(x_1);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_4);
lean_ctor_set(x_5, 2, x_3);
x_6 = l_Substring_dropPrefix_x3f(x_5, x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_String_dropSuffix_x3f(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_string_utf8_byte_size(x_1);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_4);
lean_ctor_set(x_5, 2, x_3);
x_6 = l_Substring_dropSuffix_x3f(x_5, x_2);
return x_6;
}
}
LEAN_EXPORT lean_object* l_String_stripPrefix(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
lean_inc(x_1);
x_3 = l_String_dropPrefix_x3f(x_1, x_2);
if (lean_obj_tag(x_3) == 0)
{
return x_1;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
x_7 = lean_ctor_get(x_4, 2);
lean_inc(x_7);
lean_dec(x_4);
x_8 = lean_string_utf8_extract(x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_String_stripSuffix(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
lean_inc(x_1);
x_3 = l_String_dropSuffix_x3f(x_1, x_2);
if (lean_obj_tag(x_3) == 0)
{
return x_1;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
x_7 = lean_ctor_get(x_4, 2);
lean_inc(x_7);
lean_dec(x_4);
x_8 = lean_string_utf8_extract(x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_String_foldlAux___at_String_count___spec__1(uint32_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_nat_dec_lt(x_4, x_3);
if (x_6 == 0)
{
lean_dec(x_4);
return x_5;
}
else
{
lean_object* x_7; uint32_t x_8; uint8_t x_9; 
x_7 = lean_string_utf8_next(x_2, x_4);
x_8 = lean_string_utf8_get(x_2, x_4);
lean_dec(x_4);
x_9 = lean_uint32_dec_eq(x_8, x_1);
if (x_9 == 0)
{
x_4 = x_7;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_add(x_5, x_11);
lean_dec(x_5);
x_4 = x_7;
x_5 = x_12;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_String_count(lean_object* x_1, uint32_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_string_utf8_byte_size(x_1);
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_String_foldlAux___at_String_count___spec__1(x_2, x_1, x_3, x_4, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_String_foldlAux___at_String_count___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint32_t x_6; lean_object* x_7; 
x_6 = lean_unbox_uint32(x_1);
lean_dec(x_1);
x_7 = l_String_foldlAux___at_String_count___spec__1(x_6, x_2, x_3, x_4, x_5);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_String_count___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint32_t x_3; lean_object* x_4; 
x_3 = lean_unbox_uint32(x_2);
lean_dec(x_2);
x_4 = l_String_count(x_1, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_String_toAsciiByteArray_loop(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_string_utf8_at_end(x_1, x_2);
if (x_4 == 0)
{
uint32_t x_5; lean_object* x_6; uint8_t x_7; lean_object* x_8; 
x_5 = lean_string_utf8_get(x_1, x_2);
x_6 = lean_string_utf8_next(x_1, x_2);
lean_dec(x_2);
x_7 = lean_uint32_to_uint8(x_5);
x_8 = lean_byte_array_push(x_3, x_7);
x_2 = x_6;
x_3 = x_8;
goto _start;
}
else
{
lean_dec(x_2);
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_String_toAsciiByteArray_loop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_String_toAsciiByteArray_loop(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_String_toAsciiByteArray(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_ByteArray_empty;
x_4 = l_String_toAsciiByteArray_loop(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_String_toAsciiByteArray___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_String_toAsciiByteArray(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Data_String_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_instCoeStringSubstring__batteries___closed__1 = _init_l_instCoeStringSubstring__batteries___closed__1();
lean_mark_persistent(l_instCoeStringSubstring__batteries___closed__1);
l_instCoeStringSubstring__batteries = _init_l_instCoeStringSubstring__batteries();
lean_mark_persistent(l_instCoeStringSubstring__batteries);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
