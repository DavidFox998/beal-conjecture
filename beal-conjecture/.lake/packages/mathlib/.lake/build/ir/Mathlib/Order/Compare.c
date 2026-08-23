// Lean compiler output
// Module: Mathlib.Order.Compare
// Imports: Init Mathlib.Data.Ordering.Basic Mathlib.Order.Synonym
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
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__2___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg(lean_object*, lean_object*, lean_object*);
uint8_t l_Ordering_instDecidableEq(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__3___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_cmpLE___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_linearOrderOfCompares___rarg___lambda__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_cmpLE___rarg___boxed(lean_object*, lean_object*, lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
LEAN_EXPORT lean_object* l_cmpLE(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_cmpLE___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_linearOrderOfCompares___elambda__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares(lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_linearOrderOfCompares___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__3___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__2(lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_linearOrderOfCompares___elambda__3___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_cmpLE___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 2;
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_apply_2(x_1, x_3, x_2);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
uint8_t x_9; 
x_9 = 0;
return x_9;
}
else
{
uint8_t x_10; 
x_10 = 1;
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_cmpLE(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_cmpLE___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_cmpLE___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_cmpLE___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_cmpLE___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_cmpLE(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_linearOrderOfCompares___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; uint8_t x_8; uint8_t x_9; 
x_6 = lean_apply_2(x_1, x_4, x_5);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
x_8 = 0;
x_9 = l_Ordering_instDecidableEq(x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_linearOrderOfCompares___elambda__1___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT uint8_t l_linearOrderOfCompares___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; uint8_t x_6; uint8_t x_7; 
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = 1;
x_7 = l_Ordering_instDecidableEq(x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_linearOrderOfCompares___elambda__2___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT uint8_t l_linearOrderOfCompares___elambda__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; uint8_t x_6; uint8_t x_7; uint8_t x_8; 
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = 2;
x_7 = l_Ordering_instDecidableEq(x_5, x_6);
x_8 = l_instDecidableNot___rarg(x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_linearOrderOfCompares___elambda__3___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; uint8_t x_6; uint8_t x_7; uint8_t x_8; 
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = 2;
x_7 = l_Ordering_instDecidableEq(x_5, x_6);
x_8 = l_instDecidableNot___rarg(x_7);
if (x_8 == 0)
{
lean_dec(x_2);
return x_3;
}
else
{
lean_dec(x_3);
return x_2;
}
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; uint8_t x_6; uint8_t x_7; uint8_t x_8; 
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = 2;
x_7 = l_Ordering_instDecidableEq(x_5, x_6);
x_8 = l_instDecidableNot___rarg(x_7);
if (x_8 == 0)
{
lean_dec(x_3);
return x_2;
}
else
{
lean_dec(x_2);
return x_3;
}
}
}
LEAN_EXPORT uint8_t l_linearOrderOfCompares___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; uint8_t x_6; uint8_t x_7; 
x_4 = lean_apply_2(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = 0;
x_7 = l_Ordering_instDecidableEq(x_5, x_6);
if (x_7 == 0)
{
uint8_t x_8; uint8_t x_9; 
x_8 = 1;
x_9 = l_Ordering_instDecidableEq(x_5, x_8);
if (x_9 == 0)
{
uint8_t x_10; 
x_10 = 2;
return x_10;
}
else
{
uint8_t x_11; 
x_11 = 1;
return x_11;
}
}
else
{
uint8_t x_12; 
x_12 = 0;
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_inc(x_2);
x_4 = lean_alloc_closure((void*)(l_linearOrderOfCompares___elambda__3___rarg___boxed), 3, 1);
lean_closure_set(x_4, 0, x_2);
lean_inc(x_2);
x_5 = lean_alloc_closure((void*)(l_linearOrderOfCompares___rarg___lambda__1), 3, 1);
lean_closure_set(x_5, 0, x_2);
lean_inc(x_2);
x_6 = lean_alloc_closure((void*)(l_linearOrderOfCompares___rarg___lambda__2), 3, 1);
lean_closure_set(x_6, 0, x_2);
lean_inc(x_2);
x_7 = lean_alloc_closure((void*)(l_linearOrderOfCompares___rarg___lambda__3___boxed), 3, 1);
lean_closure_set(x_7, 0, x_2);
lean_inc(x_2);
x_8 = lean_alloc_closure((void*)(l_linearOrderOfCompares___elambda__2___rarg___boxed), 3, 1);
lean_closure_set(x_8, 0, x_2);
lean_inc(x_1);
x_9 = lean_alloc_closure((void*)(l_linearOrderOfCompares___elambda__1___rarg___boxed), 5, 3);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, lean_box(0));
lean_closure_set(x_9, 2, x_1);
x_10 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_10, 0, x_1);
lean_ctor_set(x_10, 1, x_5);
lean_ctor_set(x_10, 2, x_6);
lean_ctor_set(x_10, 3, x_7);
lean_ctor_set(x_10, 4, x_4);
lean_ctor_set(x_10, 5, x_8);
lean_ctor_set(x_10, 6, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_linearOrderOfCompares___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = l_linearOrderOfCompares___elambda__1___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_3);
x_7 = lean_box(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_linearOrderOfCompares___elambda__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_linearOrderOfCompares___elambda__2___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__3___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_linearOrderOfCompares___elambda__3___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___elambda__3___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_linearOrderOfCompares___elambda__3(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfCompares___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_linearOrderOfCompares___rarg___lambda__3(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Ordering_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Synonym(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_Compare(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Ordering_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Synonym(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
