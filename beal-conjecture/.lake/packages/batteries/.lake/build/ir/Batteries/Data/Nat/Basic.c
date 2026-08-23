// Lean compiler output
// Module: Batteries.Data.Nat.Basic
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
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recAuxOn___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_sqrt_iter___boxed(lean_object*, lean_object*);
lean_object* l___private_Init_Data_Nat_Basic_0__Nat_recCompiled___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag_left(lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag(lean_object*);
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recAuxOn___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_sqrt(lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_sqrt___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag_right(lean_object*);
LEAN_EXPORT lean_object* l_Nat_sqrt_iter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_strongRecMeasure___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag_left___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_casesDiagOn(lean_object*);
LEAN_EXPORT lean_object* l_Nat_strongRecMeasure(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_strongRecMeasure___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiagOn(lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_strongRec___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recAuxOn(lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiagAux___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag_right___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag_left___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiagAux(lean_object*);
LEAN_EXPORT lean_object* l_Nat_strongRec___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_strongRec(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiagOn___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recDiag_right___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_recAuxOn___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___private_Init_Data_Nat_Basic_0__Nat_recCompiled___rarg(x_2, x_3, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_recAuxOn(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_recAuxOn___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_recAuxOn___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nat_recAuxOn___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_strongRec___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nat_strongRec___rarg(x_1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_strongRec___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Nat_strongRec___rarg___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_apply_2(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_strongRec(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_strongRec___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_strongRecMeasure___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nat_strongRecMeasure___rarg(x_1, lean_box(0), x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nat_strongRecMeasure___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_3);
x_5 = lean_alloc_closure((void*)(l_Nat_strongRecMeasure___rarg___lambda__1), 4, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_3);
x_6 = lean_apply_2(x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Nat_strongRecMeasure(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_strongRecMeasure___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiagAux___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_nat_dec_eq(x_4, x_6);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_4, x_8);
x_10 = lean_nat_dec_eq(x_5, x_6);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
lean_dec(x_4);
x_11 = lean_nat_sub(x_5, x_8);
lean_dec(x_5);
lean_inc(x_11);
lean_inc(x_9);
lean_inc(x_3);
x_12 = l_Nat_recDiagAux___rarg(x_1, x_2, x_3, x_9, x_11);
x_13 = lean_apply_3(x_3, x_9, x_11, x_12);
return x_13;
}
else
{
lean_object* x_14; 
lean_dec(x_9);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_1);
x_14 = lean_apply_1(x_2, x_4);
return x_14;
}
}
else
{
uint8_t x_15; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_15 = lean_nat_dec_eq(x_5, x_6);
if (x_15 == 0)
{
lean_object* x_16; 
x_16 = lean_apply_1(x_1, x_5);
return x_16;
}
else
{
lean_object* x_17; 
lean_dec(x_5);
x_17 = lean_apply_1(x_1, x_6);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Nat_recDiagAux(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_recDiagAux___rarg), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag_left___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_3, x_6);
lean_inc(x_2);
x_8 = l_Nat_recDiag_left___rarg(x_1, x_2, x_7);
x_9 = lean_apply_2(x_2, x_7, x_8);
return x_9;
}
else
{
lean_dec(x_2);
lean_inc(x_1);
return x_1;
}
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag_left(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_recDiag_left___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag_left___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nat_recDiag_left___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag_right___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_unsigned_to_nat(1u);
x_7 = lean_nat_sub(x_3, x_6);
lean_inc(x_2);
x_8 = l_Nat_recDiag_right___rarg(x_1, x_2, x_7);
x_9 = lean_apply_2(x_2, x_7, x_8);
return x_9;
}
else
{
lean_dec(x_2);
lean_inc(x_1);
return x_1;
}
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag_right(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_recDiag_right___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag_right___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nat_recDiag_right___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_7 = lean_alloc_closure((void*)(l_Nat_recDiag_left___rarg___boxed), 3, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
x_8 = lean_alloc_closure((void*)(l_Nat_recDiag_right___rarg___boxed), 3, 2);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_3);
x_9 = l_Nat_recDiagAux___rarg(x_7, x_8, x_4, x_5, x_6);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiag(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_recDiag___rarg), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiagOn___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Nat_recDiag___rarg(x_3, x_4, x_5, x_6, x_1, x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Nat_recDiagOn(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_recDiagOn___rarg), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_1(x_1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_apply_2(x_1, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_alloc_closure((void*)(l_Nat_casesDiagOn___rarg___lambda__1___boxed), 3, 1);
lean_closure_set(x_7, 0, x_4);
x_8 = lean_alloc_closure((void*)(l_Nat_casesDiagOn___rarg___lambda__1___boxed), 3, 1);
lean_closure_set(x_8, 0, x_5);
x_9 = lean_alloc_closure((void*)(l_Nat_casesDiagOn___rarg___lambda__2___boxed), 4, 1);
lean_closure_set(x_9, 0, x_6);
x_10 = l_Nat_recDiag___rarg(x_3, x_7, x_8, x_9, x_1, x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Nat_casesDiagOn(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_casesDiagOn___rarg), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Nat_casesDiagOn___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_casesDiagOn___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Nat_casesDiagOn___rarg___lambda__2(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nat_sqrt_iter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = lean_nat_div(x_1, x_2);
x_4 = lean_nat_add(x_2, x_3);
lean_dec(x_3);
x_5 = lean_unsigned_to_nat(2u);
x_6 = lean_nat_div(x_4, x_5);
lean_dec(x_4);
x_7 = lean_nat_dec_lt(x_6, x_2);
if (x_7 == 0)
{
lean_dec(x_6);
return x_2;
}
else
{
lean_dec(x_2);
x_2 = x_6;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Nat_sqrt_iter___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_sqrt_iter(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nat_sqrt(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_dec_le(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_unsigned_to_nat(2u);
x_5 = lean_nat_div(x_1, x_4);
x_6 = l_Nat_sqrt_iter(x_1, x_5);
return x_6;
}
else
{
lean_inc(x_1);
return x_1;
}
}
}
LEAN_EXPORT lean_object* l_Nat_sqrt___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Nat_sqrt(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Data_Nat_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
