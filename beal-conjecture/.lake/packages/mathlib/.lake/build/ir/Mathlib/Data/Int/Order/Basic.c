// Lean compiler output
// Module: Mathlib.Data.Int.Order.Basic
// Imports: Init Mathlib.Data.Int.Notation Mathlib.Data.Nat.Notation Mathlib.Order.Defs
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
uint8_t lean_int_dec_nonneg(lean_object*);
static lean_object* l_Int_instLinearOrder___closed__2;
LEAN_EXPORT lean_object* l_Int_instLinearOrder;
static lean_object* l_Int_instLinearOrder___closed__8;
static lean_object* l_Int_instLinearOrder___closed__3;
LEAN_EXPORT lean_object* l_Int_decNonneg___boxed(lean_object*);
lean_object* l_Int_decLe___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Int_decNonneg(lean_object*);
lean_object* l_Int_decLt___boxed(lean_object*, lean_object*);
static lean_object* l_Int_instLinearOrder___closed__1;
static lean_object* l_Int_instLinearOrder___closed__7;
static lean_object* l_Int_instLinearOrder___closed__5;
static lean_object* l_Int_instLinearOrder___closed__4;
lean_object* l_Int_instDecidableEq___boxed(lean_object*, lean_object*);
static lean_object* l_Int_instLinearOrder___closed__6;
lean_object* l_instOrdInt___boxed(lean_object*, lean_object*);
lean_object* l_Int_instMax___boxed(lean_object*, lean_object*);
lean_object* l_Int_instMin___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Int_decNonneg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = lean_int_dec_nonneg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Int_decNonneg___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Int_decNonneg(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__1() {
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
static lean_object* _init_l_Int_instLinearOrder___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instMin___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instMax___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_instOrdInt___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_decLe___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instDecidableEq___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_decLt___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instLinearOrder___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_1 = l_Int_instLinearOrder___closed__1;
x_2 = l_Int_instLinearOrder___closed__2;
x_3 = l_Int_instLinearOrder___closed__3;
x_4 = l_Int_instLinearOrder___closed__4;
x_5 = l_Int_instLinearOrder___closed__5;
x_6 = l_Int_instLinearOrder___closed__6;
x_7 = l_Int_instLinearOrder___closed__7;
x_8 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_2);
lean_ctor_set(x_8, 2, x_3);
lean_ctor_set(x_8, 3, x_4);
lean_ctor_set(x_8, 4, x_5);
lean_ctor_set(x_8, 5, x_6);
lean_ctor_set(x_8, 6, x_7);
return x_8;
}
}
static lean_object* _init_l_Int_instLinearOrder() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instLinearOrder___closed__8;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Int_Notation(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Notation(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Defs(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Int_Order_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Int_Notation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Notation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Int_instLinearOrder___closed__1 = _init_l_Int_instLinearOrder___closed__1();
lean_mark_persistent(l_Int_instLinearOrder___closed__1);
l_Int_instLinearOrder___closed__2 = _init_l_Int_instLinearOrder___closed__2();
lean_mark_persistent(l_Int_instLinearOrder___closed__2);
l_Int_instLinearOrder___closed__3 = _init_l_Int_instLinearOrder___closed__3();
lean_mark_persistent(l_Int_instLinearOrder___closed__3);
l_Int_instLinearOrder___closed__4 = _init_l_Int_instLinearOrder___closed__4();
lean_mark_persistent(l_Int_instLinearOrder___closed__4);
l_Int_instLinearOrder___closed__5 = _init_l_Int_instLinearOrder___closed__5();
lean_mark_persistent(l_Int_instLinearOrder___closed__5);
l_Int_instLinearOrder___closed__6 = _init_l_Int_instLinearOrder___closed__6();
lean_mark_persistent(l_Int_instLinearOrder___closed__6);
l_Int_instLinearOrder___closed__7 = _init_l_Int_instLinearOrder___closed__7();
lean_mark_persistent(l_Int_instLinearOrder___closed__7);
l_Int_instLinearOrder___closed__8 = _init_l_Int_instLinearOrder___closed__8();
lean_mark_persistent(l_Int_instLinearOrder___closed__8);
l_Int_instLinearOrder = _init_l_Int_instLinearOrder();
lean_mark_persistent(l_Int_instLinearOrder);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
