// Lean compiler output
// Module: Aesop.Options.Internal
// Imports: Init Aesop.Check Aesop.Options.Public
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
extern lean_object* l_Aesop_Check_script;
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27(lean_object*);
lean_object* l_Aesop_Check_isEnabled___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedOptions_x27___closed__2;
uint8_t l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__4(lean_object*, lean_object*, lean_object*, uint8_t);
extern lean_object* l_Aesop_Check_script_steps;
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedOptions_x27___closed__1;
extern lean_object* l_Aesop_aesop_dev_generateScript;
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__5___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__1(lean_object*, lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedOptions_x27;
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Aesop_instInhabitedOptions_x27___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_1 = lean_box(0);
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = 0;
x_5 = 0;
x_6 = lean_alloc_ctor(0, 9, 11);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_3);
lean_ctor_set(x_6, 2, x_3);
lean_ctor_set(x_6, 3, x_3);
lean_ctor_set(x_6, 4, x_3);
lean_ctor_set(x_6, 5, x_3);
lean_ctor_set(x_6, 6, x_3);
lean_ctor_set(x_6, 7, x_3);
lean_ctor_set(x_6, 8, x_1);
lean_ctor_set_uint8(x_6, sizeof(void*)*9, x_2);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 1, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 2, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 3, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 4, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 5, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 6, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 7, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 8, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 9, x_5);
lean_ctor_set_uint8(x_6, sizeof(void*)*9 + 10, x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_instInhabitedOptions_x27___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; lean_object* x_4; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedOptions_x27___closed__1;
x_3 = 0;
x_4 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_1);
lean_ctor_set_uint8(x_4, sizeof(void*)*2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_instInhabitedOptions_x27() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedOptions_x27___closed__2;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, uint8_t x_4) {
_start:
{
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
lean_dec(x_3);
x_5 = l_Aesop_Check_script_steps;
x_6 = l_Aesop_Check_isEnabled___rarg(x_1, x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; 
lean_dec(x_2);
lean_dec(x_1);
x_7 = lean_box(x_4);
x_8 = lean_apply_2(x_3, lean_box(0), x_7);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5) {
_start:
{
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = l_Aesop_Check_script;
lean_inc(x_2);
lean_inc(x_1);
x_7 = l_Aesop_Check_isEnabled___rarg(x_1, x_2, x_6);
x_8 = lean_alloc_closure((void*)(l_Aesop_Options_toOptions_x27___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_3);
x_9 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_10 = lean_box(x_5);
x_11 = lean_apply_2(x_3, lean_box(0), x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, uint8_t x_6) {
_start:
{
if (x_6 == 0)
{
uint8_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_ctor_get_uint8(x_1, sizeof(void*)*9 + 6);
x_8 = lean_box(x_7);
lean_inc(x_2);
x_9 = lean_apply_2(x_2, lean_box(0), x_8);
lean_inc(x_5);
x_10 = lean_alloc_closure((void*)(l_Aesop_Options_toOptions_x27___rarg___lambda__2___boxed), 5, 4);
lean_closure_set(x_10, 0, x_3);
lean_closure_set(x_10, 1, x_4);
lean_closure_set(x_10, 2, x_2);
lean_closure_set(x_10, 3, x_5);
x_11 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_9, x_10);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_12 = lean_box(x_6);
x_13 = lean_apply_2(x_2, lean_box(0), x_12);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, uint8_t x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set_uint8(x_5, sizeof(void*)*2, x_4);
x_6 = lean_apply_2(x_3, lean_box(0), x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_Options_toOptions_x27___rarg___lambda__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_aesop_dev_generateScript;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_7, 1);
lean_inc(x_8);
lean_dec(x_7);
x_9 = l_Aesop_Options_toOptions_x27___rarg___lambda__5___closed__1;
x_10 = l_Lean_Option_get___at_Lean_Compiler_LCNF_toConfigOptions___spec__2(x_6, x_9);
x_11 = lean_box(x_10);
lean_inc(x_8);
x_12 = lean_apply_2(x_8, lean_box(0), x_11);
lean_inc(x_4);
lean_inc(x_8);
lean_inc(x_2);
x_13 = lean_alloc_closure((void*)(l_Aesop_Options_toOptions_x27___rarg___lambda__3___boxed), 6, 5);
lean_closure_set(x_13, 0, x_2);
lean_closure_set(x_13, 1, x_8);
lean_closure_set(x_13, 2, x_1);
lean_closure_set(x_13, 3, x_3);
lean_closure_set(x_13, 4, x_4);
lean_inc(x_4);
x_14 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_12, x_13);
x_15 = lean_alloc_closure((void*)(l_Aesop_Options_toOptions_x27___rarg___lambda__4___boxed), 4, 3);
lean_closure_set(x_15, 0, x_2);
lean_closure_set(x_15, 1, x_5);
lean_closure_set(x_15, 2, x_8);
x_16 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_14, x_15);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_inc(x_5);
lean_inc(x_2);
x_6 = lean_alloc_closure((void*)(l_Aesop_Options_toOptions_x27___rarg___lambda__5___boxed), 6, 5);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_3);
lean_closure_set(x_6, 2, x_2);
lean_closure_set(x_6, 3, x_5);
lean_closure_set(x_6, 4, x_4);
x_7 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_2, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Options_toOptions_x27___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = l_Aesop_Options_toOptions_x27___rarg___lambda__1(x_1, x_2, x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = lean_unbox(x_5);
lean_dec(x_5);
x_7 = l_Aesop_Options_toOptions_x27___rarg___lambda__2(x_1, x_2, x_3, x_4, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; lean_object* x_8; 
x_7 = lean_unbox(x_6);
lean_dec(x_6);
x_8 = l_Aesop_Options_toOptions_x27___rarg___lambda__3(x_1, x_2, x_3, x_4, x_5, x_7);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = l_Aesop_Options_toOptions_x27___rarg___lambda__4(x_1, x_2, x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_toOptions_x27___rarg___lambda__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_Options_toOptions_x27___rarg___lambda__5(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Check(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Options_Public(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Options_Internal(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Check(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Options_Public(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedOptions_x27___closed__1 = _init_l_Aesop_instInhabitedOptions_x27___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedOptions_x27___closed__1);
l_Aesop_instInhabitedOptions_x27___closed__2 = _init_l_Aesop_instInhabitedOptions_x27___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedOptions_x27___closed__2);
l_Aesop_instInhabitedOptions_x27 = _init_l_Aesop_instInhabitedOptions_x27();
lean_mark_persistent(l_Aesop_instInhabitedOptions_x27);
l_Aesop_Options_toOptions_x27___rarg___lambda__5___closed__1 = _init_l_Aesop_Options_toOptions_x27___rarg___lambda__5___closed__1();
lean_mark_persistent(l_Aesop_Options_toOptions_x27___rarg___lambda__5___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
