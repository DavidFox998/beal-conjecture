// Lean compiler output
// Module: Mathlib.Order.RelClasses
// Imports: Init Mathlib.Data.Nat.Defs Mathlib.Init.Algebra.Classes Mathlib.Logic.IsEmpty Mathlib.Order.Basic Mathlib.Tactic.MkIffOfInductiveProp Batteries.WF
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
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__2___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_IsWellFounded_fix___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg(lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__3___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedGT_toWellFoundedRelation___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__3(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l___private_Batteries_WF_0__WellFounded_fixC___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__2(lean_object*, lean_object*);
static lean_object* l_partialOrderOfSO___closed__1;
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedGT_toWellFoundedRelation(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedLT_fix___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedLT_fix___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_partialOrderOfSO(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_IsWellOrder_toHasWellFounded___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_linearOrderOfSTO___rarg___lambda__4(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedGT_fix___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedLT_toWellFoundedRelation(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedLT_fix(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_IsWellOrder_toHasWellFounded(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_IsWellFounded_fix(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedLT_toWellFoundedRelation___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfSTO(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedGT_fix(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_IsWellFounded_toWellFoundedRelation(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_WellFoundedGT_fix___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_partialOrderOfSO___closed__1() {
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
LEAN_EXPORT lean_object* l_partialOrderOfSO(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_partialOrderOfSO___closed__1;
return x_4;
}
}
LEAN_EXPORT uint8_t l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
lean_inc(x_2);
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_apply_2(x_1, x_2, x_3);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
uint8_t x_9; 
x_9 = 1;
return x_9;
}
else
{
uint8_t x_10; 
x_10 = 0;
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
lean_inc(x_2);
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
x_7 = lean_box(x_6);
return x_7;
}
else
{
lean_object* x_8; 
x_8 = lean_apply_2(x_1, x_2, x_3);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
lean_inc(x_2);
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
x_7 = lean_box(x_6);
return x_7;
}
else
{
lean_object* x_8; 
x_8 = lean_apply_2(x_1, x_2, x_3);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__3___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT uint8_t l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
lean_inc(x_2);
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
return x_6;
}
else
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_apply_2(x_1, x_2, x_3);
x_8 = lean_unbox(x_7);
lean_dec(x_7);
if (x_8 == 0)
{
uint8_t x_9; 
x_9 = 1;
return x_9;
}
else
{
uint8_t x_10; 
x_10 = 0;
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_2(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_2);
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
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
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_2);
lean_inc(x_3);
x_4 = lean_apply_2(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
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
LEAN_EXPORT uint8_t l_linearOrderOfSTO___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_4 = l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg(x_1, x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; uint8_t x_6; 
x_5 = l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__2___rarg(x_1, x_2, x_3);
x_6 = lean_unbox(x_5);
lean_dec(x_5);
if (x_6 == 0)
{
uint8_t x_7; 
x_7 = 2;
return x_7;
}
else
{
uint8_t x_8; 
x_8 = 1;
return x_8;
}
}
else
{
uint8_t x_9; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_9 = 0;
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_linearOrderOfSTO___rarg___lambda__1), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_partialOrderOfSO___closed__1;
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_linearOrderOfSTO___rarg___lambda__2), 3, 1);
lean_closure_set(x_4, 0, x_1);
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_linearOrderOfSTO___rarg___lambda__3), 3, 1);
lean_closure_set(x_5, 0, x_1);
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_linearOrderOfSTO___rarg___lambda__4___boxed), 3, 1);
lean_closure_set(x_6, 0, x_1);
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_linearOrderOfSTO___spec__3___rarg), 3, 1);
lean_closure_set(x_7, 0, x_1);
x_8 = lean_alloc_closure((void*)(l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg___boxed), 3, 1);
lean_closure_set(x_8, 0, x_1);
x_9 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_4);
lean_ctor_set(x_9, 2, x_5);
lean_ctor_set(x_9, 3, x_6);
lean_ctor_set(x_9, 4, x_2);
lean_ctor_set(x_9, 5, x_7);
lean_ctor_set(x_9, 6, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfSTO(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_linearOrderOfSTO___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__1___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_decidableLTOfDecidableLE___at_linearOrderOfSTO___spec__4___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_linearOrderOfSTO___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_linearOrderOfSTO___rarg___lambda__4(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_IsWellFounded_fix___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Batteries_WF_0__WellFounded_fixC___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_IsWellFounded_fix(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_IsWellFounded_fix___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_IsWellFounded_toWellFoundedRelation(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WellFoundedLT_fix___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Batteries_WF_0__WellFounded_fixC___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WellFoundedLT_fix(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_WellFoundedLT_fix___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_WellFoundedLT_fix___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_WellFoundedLT_fix(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_WellFoundedLT_toWellFoundedRelation(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WellFoundedLT_toWellFoundedRelation___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_WellFoundedLT_toWellFoundedRelation(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WellFoundedGT_fix___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_Batteries_WF_0__WellFounded_fixC___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_WellFoundedGT_fix(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_WellFoundedGT_fix___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_WellFoundedGT_fix___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_WellFoundedGT_fix(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_WellFoundedGT_toWellFoundedRelation(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_WellFoundedGT_toWellFoundedRelation___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_WellFoundedGT_toWellFoundedRelation(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_IsWellOrder_toHasWellFounded(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_IsWellOrder_toHasWellFounded___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_IsWellOrder_toHasWellFounded(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init_Algebra_Classes(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_IsEmpty(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_MkIffOfInductiveProp(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_WF(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_RelClasses(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init_Algebra_Classes(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_IsEmpty(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_MkIffOfInductiveProp(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_WF(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_partialOrderOfSO___closed__1 = _init_l_partialOrderOfSO___closed__1();
lean_mark_persistent(l_partialOrderOfSO___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
