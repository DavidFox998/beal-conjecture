// Lean compiler output
// Module: Mathlib.Control.Monad.Basic
// Imports: Init Mathlib.Logic.Equiv.Defs
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
LEAN_EXPORT lean_object* l_StateT_equiv___rarg(lean_object*);
LEAN_EXPORT lean_object* l_StateT_equiv(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_equiv(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_StateT_eval___rarg___closed__1;
LEAN_EXPORT lean_object* l_ReaderT_equiv___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_StateT_eval___rarg___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_StateT_eval___rarg___lambda__1(lean_object*);
LEAN_EXPORT lean_object* l_StateT_eval___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ReaderT_equiv___rarg(lean_object*);
LEAN_EXPORT lean_object* l_StateT_eval(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_StateT_equiv___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_StateT_eval___rarg___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_StateT_eval___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_StateT_eval___rarg___lambda__1___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_StateT_eval___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_1(x_2, x_3);
x_6 = l_StateT_eval___rarg___closed__1;
x_7 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_6, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_StateT_eval(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_StateT_eval___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_StateT_eval___rarg___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_StateT_eval___rarg___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_StateT_equiv___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_StateT_equiv(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_StateT_equiv___rarg___boxed), 1, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_StateT_equiv___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_StateT_equiv___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ReaderT_equiv___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_ReaderT_equiv(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_ReaderT_equiv___rarg___boxed), 1, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_ReaderT_equiv___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_ReaderT_equiv___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Equiv_Defs(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Control_Monad_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Equiv_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_StateT_eval___rarg___closed__1 = _init_l_StateT_eval___rarg___closed__1();
lean_mark_persistent(l_StateT_eval___rarg___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
