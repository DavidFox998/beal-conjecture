// Lean compiler output
// Module: Mathlib.Data.Sigma.Basic
// Imports: Init Mathlib.Logic.Function.Defs Mathlib.Logic.Function.Basic
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
LEAN_EXPORT lean_object* l_Sigma_uncurry(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_toSigma(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_instInhabitedSigma(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_uncurry___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_decidableEq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_instInhabitedOfDefault__mathlib___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_elim(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_map(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_map___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_instDecidableEqSigma(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_toSigma___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Sigma_curry(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_instInhabitedOfDefault__mathlib(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_map(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_map___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_instDecidableEqSigma___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_instInhabitedSigma___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_curry___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_decidableEq___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_PSigma_elim___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Sigma_instInhabitedSigma___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Sigma_instInhabitedSigma(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Sigma_instInhabitedSigma___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Sigma_instDecidableEqSigma___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_4, 1);
lean_inc(x_8);
lean_dec(x_4);
lean_inc(x_5);
x_9 = lean_apply_2(x_1, x_5, x_7);
x_10 = lean_unbox(x_9);
lean_dec(x_9);
if (x_10 == 0)
{
uint8_t x_11; lean_object* x_12; 
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_11 = 0;
x_12 = lean_box(x_11);
return x_12;
}
else
{
lean_object* x_13; 
x_13 = lean_apply_3(x_2, x_5, x_6, x_8);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Sigma_instDecidableEqSigma(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Sigma_instDecidableEqSigma___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Sigma_map___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_inc(x_4);
x_5 = lean_apply_1(x_1, x_4);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
x_7 = lean_apply_2(x_2, x_4, x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_5);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Sigma_map(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Sigma_map___rarg), 3, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Sigma_curry___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
x_5 = lean_apply_1(x_1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Sigma_curry(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Sigma_curry___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Sigma_uncurry___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_apply_2(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Sigma_uncurry(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Sigma_uncurry___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Prod_toSigma___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_dec(x_1);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Prod_toSigma(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Prod_toSigma___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_PSigma_elim___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_apply_2(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_PSigma_elim(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_PSigma_elim___rarg), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_PSigma_instInhabitedOfDefault__mathlib___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_PSigma_instInhabitedOfDefault__mathlib(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_PSigma_instInhabitedOfDefault__mathlib___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_PSigma_decidableEq___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_dec(x_3);
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_4, 1);
lean_inc(x_8);
lean_dec(x_4);
lean_inc(x_5);
x_9 = lean_apply_2(x_1, x_5, x_7);
x_10 = lean_unbox(x_9);
lean_dec(x_9);
if (x_10 == 0)
{
uint8_t x_11; lean_object* x_12; 
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_11 = 0;
x_12 = lean_box(x_11);
return x_12;
}
else
{
lean_object* x_13; 
x_13 = lean_apply_3(x_2, x_5, x_6, x_8);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_PSigma_decidableEq(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_PSigma_decidableEq___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_PSigma_map___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
x_7 = lean_apply_1(x_1, x_5);
x_8 = lean_apply_2(x_2, x_5, x_6);
lean_ctor_set(x_3, 1, x_8);
lean_ctor_set(x_3, 0, x_7);
return x_3;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_inc(x_10);
lean_inc(x_9);
lean_dec(x_3);
lean_inc(x_9);
x_11 = lean_apply_1(x_1, x_9);
x_12 = lean_apply_2(x_2, x_9, x_10);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_11);
lean_ctor_set(x_13, 1, x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_PSigma_map(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_PSigma_map___rarg), 3, 0);
return x_5;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Function_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Function_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Sigma_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Function_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Function_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
