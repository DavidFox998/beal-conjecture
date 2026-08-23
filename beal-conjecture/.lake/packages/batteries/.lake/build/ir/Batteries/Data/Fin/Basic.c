// Lean compiler output
// Module: Batteries.Data.Fin.Basic
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
lean_object* lean_array_data(lean_object*);
LEAN_EXPORT lean_object* l_Fin_list(lean_object*);
LEAN_EXPORT lean_object* l_Fin_clamp(lean_object*, lean_object*);
lean_object* l_Array_ofFn___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Fin_enum___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Fin_clamp___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Fin_enum(lean_object*);
lean_object* l_id___rarg___boxed(lean_object*);
static lean_object* l_Fin_enum___closed__1;
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Fin_list___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Fin_clamp(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_le(x_1, x_2);
if (x_3 == 0)
{
lean_inc(x_2);
return x_2;
}
else
{
lean_inc(x_1);
return x_1;
}
}
}
LEAN_EXPORT lean_object* l_Fin_clamp___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Fin_clamp(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
static lean_object* _init_l_Fin_enum___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_id___rarg___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Fin_enum(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Fin_enum___closed__1;
x_3 = l_Array_ofFn___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Fin_enum___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Fin_enum(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Fin_list(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = l_Fin_enum___closed__1;
x_3 = l_Array_ofFn___rarg(x_1, x_2);
x_4 = lean_array_data(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Fin_list___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Fin_list(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Data_Fin_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Fin_enum___closed__1 = _init_l_Fin_enum___closed__1();
lean_mark_persistent(l_Fin_enum___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
