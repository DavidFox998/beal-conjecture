// Lean compiler output
// Module: Batteries.Lean.NameMap
// Imports: Init Lean.Data.NameMap
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
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap(lean_object*, lean_object*);
static lean_object* l_Lean_NameMap_instForInProdName__batteries___closed__1;
LEAN_EXPORT lean_object* l_Lean_NameMap_filter___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_NameMap_filter_process___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1(lean_object*, lean_object*);
lean_object* l_Lean_Name_quickCmp___boxed(lean_object*, lean_object*);
static lean_object* l_Lean_NameMap_instForInProdName__batteries___closed__2;
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap___rarg(lean_object*, lean_object*);
lean_object* l_Lean_RBNode_insert___at_Lean_NameMap_insert___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap_process___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_RBMap_instForInProd___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Lean_NameMap_instForInProdName__batteries(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_NameMap_filter_process(lean_object*);
LEAN_EXPORT lean_object* l_Lean_NameMap_filter(lean_object*);
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap_process(lean_object*, lean_object*);
static lean_object* _init_l_Lean_NameMap_instForInProdName__batteries___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Lean_Name_quickCmp___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Lean_NameMap_instForInProdName__batteries___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_NameMap_instForInProdName__batteries___closed__1;
x_2 = lean_alloc_closure((void*)(l_Lean_RBMap_instForInProd___boxed), 5, 4);
lean_closure_set(x_2, 0, lean_box(0));
lean_closure_set(x_2, 1, lean_box(0));
lean_closure_set(x_2, 2, x_1);
lean_closure_set(x_2, 3, lean_box(0));
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_instForInProdName__batteries(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lean_NameMap_instForInProdName__batteries___closed__2;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filter_process___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; uint8_t x_6; 
lean_inc(x_4);
lean_inc(x_3);
x_5 = lean_apply_2(x_1, x_3, x_4);
x_6 = lean_unbox(x_5);
lean_dec(x_5);
if (x_6 == 0)
{
lean_dec(x_4);
lean_dec(x_3);
return x_2;
}
else
{
lean_object* x_7; 
x_7 = l_Lean_RBNode_insert___at_Lean_NameMap_insert___spec__1___rarg(x_2, x_3, x_4);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filter_process(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_NameMap_filter_process___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 2);
lean_inc(x_6);
x_7 = lean_ctor_get(x_3, 3);
lean_inc(x_7);
lean_dec(x_3);
lean_inc(x_1);
x_8 = l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1___rarg(x_1, x_2, x_4);
lean_inc(x_1);
x_9 = l_Lean_NameMap_filter_process___rarg(x_1, x_8, x_5, x_6);
x_2 = x_9;
x_3 = x_7;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filter___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_Lean_RBNode_fold___at_Lean_NameMap_filter___spec__1___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Lean_NameMap_filter___rarg), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap_process___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
lean_inc(x_3);
x_5 = lean_apply_2(x_1, x_3, x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_dec(x_3);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_Lean_RBNode_insert___at_Lean_NameMap_insert___spec__1___rarg(x_2, x_3, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap_process(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_NameMap_filterMap_process___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_3, 2);
lean_inc(x_6);
x_7 = lean_ctor_get(x_3, 3);
lean_inc(x_7);
lean_dec(x_3);
lean_inc(x_1);
x_8 = l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1___rarg(x_1, x_2, x_4);
lean_inc(x_1);
x_9 = l_Lean_NameMap_filterMap_process___rarg(x_1, x_8, x_5, x_6);
x_2 = x_9;
x_3 = x_7;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = l_Lean_RBNode_fold___at_Lean_NameMap_filterMap___spec__1___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lean_NameMap_filterMap(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Lean_NameMap_filterMap___rarg), 2, 0);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Data_NameMap(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Lean_NameMap(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Data_NameMap(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lean_NameMap_instForInProdName__batteries___closed__1 = _init_l_Lean_NameMap_instForInProdName__batteries___closed__1();
lean_mark_persistent(l_Lean_NameMap_instForInProdName__batteries___closed__1);
l_Lean_NameMap_instForInProdName__batteries___closed__2 = _init_l_Lean_NameMap_instForInProdName__batteries___closed__2();
lean_mark_persistent(l_Lean_NameMap_instForInProdName__batteries___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
