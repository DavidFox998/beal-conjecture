// Lean compiler output
// Module: Mathlib.Data.List.Monad
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
LEAN_EXPORT lean_object* l_List_instMonad___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_List_instAlternative;
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__4(lean_object*, lean_object*);
lean_object* l_List_pure(lean_object*);
static lean_object* l_List_instMonad___closed__10;
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__2___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__3;
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__5(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instMonad___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__7;
lean_object* l_List_mapTR_loop___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_List_bindTR(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instMonad___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_appendTR___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_instMonad___spec__1___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__5;
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__5___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instMonad;
static lean_object* l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1;
lean_object* lean_array_to_list(lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__6;
static lean_object* l_List_instAlternative___closed__2;
static lean_object* l_List_instAlternative___closed__1;
static lean_object* l_List_instAlternative___closed__3;
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__3___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__4___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__4;
static lean_object* l_List_instMonad___closed__2;
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__2(lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__1;
LEAN_EXPORT lean_object* l_List_instAlternative___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_List_instMonad___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_foldl___at_Array_appendList___spec__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_instMonad___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instMonad___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_List_reverse___rarg(lean_object*);
lean_object* l_List_mapTR(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_instAlternative___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__5___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_List_instMonad___closed__8;
static lean_object* l_List_instMonad___closed__9;
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_instMonad___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = l_List_reverse___rarg(x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_2, 1);
x_7 = lean_ctor_get(x_2, 0);
lean_dec(x_7);
lean_inc(x_1);
lean_ctor_set(x_2, 1, x_3);
lean_ctor_set(x_2, 0, x_1);
{
lean_object* _tmp_1 = x_6;
lean_object* _tmp_2 = x_2;
x_2 = _tmp_1;
x_3 = _tmp_2;
}
goto _start;
}
else
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_dec(x_2);
lean_inc(x_1);
x_10 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_10, 0, x_1);
lean_ctor_set(x_10, 1, x_3);
x_2 = x_9;
x_3 = x_10;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_mapTR_loop___at_List_instMonad___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_mapTR_loop___at_List_instMonad___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_box(0);
lean_inc(x_1);
x_8 = lean_apply_1(x_1, x_7);
x_9 = lean_box(0);
x_10 = l_List_mapTR_loop___rarg(x_5, x_8, x_9);
x_11 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_10);
x_2 = x_6;
x_3 = x_11;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_instMonad___spec__2___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__3___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_2, 1);
x_7 = lean_ctor_get(x_2, 0);
lean_dec(x_7);
x_8 = lean_box(0);
lean_inc(x_1);
lean_ctor_set(x_2, 1, x_8);
lean_ctor_set(x_2, 0, x_1);
x_9 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_2);
x_2 = x_6;
x_3 = x_9;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_dec(x_2);
x_12 = lean_box(0);
lean_inc(x_1);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_1);
lean_ctor_set(x_13, 1, x_12);
x_14 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_13);
x_2 = x_11;
x_3 = x_14;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_instMonad___spec__3___rarg), 3, 0);
return x_3;
}
}
static lean_object* _init_l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__4___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_5 = lean_ctor_get(x_2, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_2, 1);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_box(0);
lean_inc(x_1);
x_8 = lean_apply_1(x_1, x_7);
x_9 = l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1;
x_10 = l_List_bindTR_go___at_List_instMonad___spec__3___rarg(x_5, x_8, x_9);
x_11 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_10);
x_2 = x_6;
x_3 = x_11;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__4(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_instMonad___spec__4___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__5___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_array_to_list(lean_box(0), x_3);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_2, 1);
x_6 = lean_box(0);
lean_inc(x_1);
x_7 = lean_apply_1(x_1, x_6);
x_8 = l_List_foldl___at_Array_appendList___spec__1___rarg(x_3, x_7);
x_2 = x_5;
x_3 = x_8;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__5(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_List_bindTR_go___at_List_instMonad___spec__5___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_List_instMonad___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_box(0);
x_6 = l_List_mapTR_loop___at_List_instMonad___spec__1___rarg(x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_instMonad___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1;
x_6 = l_List_bindTR_go___at_List_instMonad___spec__2___rarg(x_4, x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_instMonad___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1;
x_6 = l_List_bindTR_go___at_List_instMonad___spec__4___rarg(x_4, x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_List_instMonad___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1;
x_6 = l_List_bindTR_go___at_List_instMonad___spec__5___rarg(x_4, x_3, x_5);
return x_6;
}
}
static lean_object* _init_l_List_instMonad___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_mapTR), 2, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_instMonad___lambda__1), 4, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_List_instMonad___closed__1;
x_2 = l_List_instMonad___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_instMonad___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_pure), 1, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_instMonad___lambda__2), 4, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_instMonad___lambda__3), 4, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_instMonad___lambda__4___boxed), 4, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_List_instMonad___closed__3;
x_2 = l_List_instMonad___closed__4;
x_3 = l_List_instMonad___closed__5;
x_4 = l_List_instMonad___closed__6;
x_5 = l_List_instMonad___closed__7;
x_6 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_6, 0, x_1);
lean_ctor_set(x_6, 1, x_2);
lean_ctor_set(x_6, 2, x_3);
lean_ctor_set(x_6, 3, x_4);
lean_ctor_set(x_6, 4, x_5);
return x_6;
}
}
static lean_object* _init_l_List_instMonad___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_bindTR), 2, 0);
return x_1;
}
}
static lean_object* _init_l_List_instMonad___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_List_instMonad___closed__8;
x_2 = l_List_instMonad___closed__9;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_List_instMonad() {
_start:
{
lean_object* x_1; 
x_1 = l_List_instMonad___closed__10;
return x_1;
}
}
LEAN_EXPORT lean_object* l_List_bindTR_go___at_List_instMonad___spec__5___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_List_bindTR_go___at_List_instMonad___spec__5___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_List_instMonad___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_List_instMonad___lambda__4(x_1, x_2, x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_List_instAlternative___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_List_instAlternative___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_box(0);
x_5 = lean_apply_1(x_3, x_4);
x_6 = l_List_appendTR___rarg(x_2, x_5);
return x_6;
}
}
static lean_object* _init_l_List_instAlternative___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_instAlternative___lambda__1), 1, 0);
return x_1;
}
}
static lean_object* _init_l_List_instAlternative___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_List_instAlternative___lambda__2), 3, 0);
return x_1;
}
}
static lean_object* _init_l_List_instAlternative___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_List_instMonad;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = l_List_instAlternative___closed__1;
x_4 = l_List_instAlternative___closed__2;
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
return x_5;
}
}
static lean_object* _init_l_List_instAlternative() {
_start:
{
lean_object* x_1; 
x_1 = l_List_instAlternative___closed__3;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_List_Monad(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1 = _init_l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1();
lean_mark_persistent(l_List_bindTR_go___at_List_instMonad___spec__4___rarg___closed__1);
l_List_instMonad___closed__1 = _init_l_List_instMonad___closed__1();
lean_mark_persistent(l_List_instMonad___closed__1);
l_List_instMonad___closed__2 = _init_l_List_instMonad___closed__2();
lean_mark_persistent(l_List_instMonad___closed__2);
l_List_instMonad___closed__3 = _init_l_List_instMonad___closed__3();
lean_mark_persistent(l_List_instMonad___closed__3);
l_List_instMonad___closed__4 = _init_l_List_instMonad___closed__4();
lean_mark_persistent(l_List_instMonad___closed__4);
l_List_instMonad___closed__5 = _init_l_List_instMonad___closed__5();
lean_mark_persistent(l_List_instMonad___closed__5);
l_List_instMonad___closed__6 = _init_l_List_instMonad___closed__6();
lean_mark_persistent(l_List_instMonad___closed__6);
l_List_instMonad___closed__7 = _init_l_List_instMonad___closed__7();
lean_mark_persistent(l_List_instMonad___closed__7);
l_List_instMonad___closed__8 = _init_l_List_instMonad___closed__8();
lean_mark_persistent(l_List_instMonad___closed__8);
l_List_instMonad___closed__9 = _init_l_List_instMonad___closed__9();
lean_mark_persistent(l_List_instMonad___closed__9);
l_List_instMonad___closed__10 = _init_l_List_instMonad___closed__10();
lean_mark_persistent(l_List_instMonad___closed__10);
l_List_instMonad = _init_l_List_instMonad();
lean_mark_persistent(l_List_instMonad);
l_List_instAlternative___closed__1 = _init_l_List_instAlternative___closed__1();
lean_mark_persistent(l_List_instAlternative___closed__1);
l_List_instAlternative___closed__2 = _init_l_List_instAlternative___closed__2();
lean_mark_persistent(l_List_instAlternative___closed__2);
l_List_instAlternative___closed__3 = _init_l_List_instAlternative___closed__3();
lean_mark_persistent(l_List_instAlternative___closed__3);
l_List_instAlternative = _init_l_List_instAlternative();
lean_mark_persistent(l_List_instAlternative);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
