// Lean compiler output
// Module: Mathlib.Data.Set.Prod
// Imports: Init Mathlib.Data.Set.Image Mathlib.Data.SProd
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
LEAN_EXPORT lean_object* l_Function_Pullback_fst___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Function_Pullback_snd___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableMemDiagonal(lean_object*);
LEAN_EXPORT lean_object* l_toPullbackDiag___rarg(lean_object*);
static lean_object* l_Function_PullbackSelf_map__snd___rarg___closed__1;
LEAN_EXPORT lean_object* l_Function_Pullback_snd___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__snd___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Pullback_fst(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_toPullbackDiag(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Pullback_snd(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Function_PullbackSelf_map__fst___rarg___closed__1;
LEAN_EXPORT lean_object* l_Function_Pullback_fst___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Function_mapPullback___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableMemDiagonal___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__snd___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_mapPullback___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Pullback_fst___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_mapPullback___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_toPullbackDiag___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__snd(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_mapPullback(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Pullback_snd___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableMemDiagonal___rarg(lean_object* x_1, lean_object* x_2) {
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
LEAN_EXPORT lean_object* l_Set_decidableMemDiagonal(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_decidableMemDiagonal___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_fst___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_fst(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_alloc_closure((void*)(l_Function_Pullback_fst___rarg___boxed), 1, 0);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_fst___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Function_Pullback_fst___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_fst___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Function_Pullback_fst(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_snd___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_snd(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_alloc_closure((void*)(l_Function_Pullback_snd___rarg___boxed), 1, 0);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_snd___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Function_Pullback_snd___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Function_Pullback_snd___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Function_Pullback_snd(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_toPullbackDiag___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
lean_inc(x_1);
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_toPullbackDiag(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_toPullbackDiag___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_toPullbackDiag___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_toPullbackDiag(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_mapPullback___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_apply_1(x_1, x_7);
x_9 = lean_ctor_get(x_6, 1);
lean_inc(x_9);
lean_dec(x_6);
x_10 = lean_apply_1(x_3, x_9);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_8);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Function_mapPullback(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = lean_alloc_closure((void*)(l_Function_mapPullback___rarg___boxed), 6, 0);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Function_mapPullback___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Function_mapPullback___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Function_mapPullback___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Function_mapPullback(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
return x_11;
}
}
static lean_object* _init_l_Function_PullbackSelf_map__fst___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Function_Pullback_fst___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Function_PullbackSelf_map__fst___rarg___closed__1;
x_4 = l_Function_mapPullback___rarg(x_3, x_1, x_3, lean_box(0), lean_box(0), x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Function_PullbackSelf_map__fst___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Function_PullbackSelf_map__fst___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__fst___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Function_PullbackSelf_map__fst(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
static lean_object* _init_l_Function_PullbackSelf_map__snd___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Function_Pullback_snd___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__snd___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_Function_PullbackSelf_map__snd___rarg___closed__1;
x_5 = l_Function_mapPullback___rarg(x_4, x_1, x_4, lean_box(0), lean_box(0), x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__snd(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Function_PullbackSelf_map__snd___rarg___boxed), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_PullbackSelf_map__snd___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Function_PullbackSelf_map__snd___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Set_Image(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_SProd(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Set_Prod(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Set_Image(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_SProd(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Function_PullbackSelf_map__fst___rarg___closed__1 = _init_l_Function_PullbackSelf_map__fst___rarg___closed__1();
lean_mark_persistent(l_Function_PullbackSelf_map__fst___rarg___closed__1);
l_Function_PullbackSelf_map__snd___rarg___closed__1 = _init_l_Function_PullbackSelf_map__snd___rarg___closed__1();
lean_mark_persistent(l_Function_PullbackSelf_map__snd___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
