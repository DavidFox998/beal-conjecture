// Lean compiler output
// Module: ProofWidgets.Demos.ExprPresentation
// Imports: Init ProofWidgets.Component.Panel.SelectionPanel ProofWidgets.Component.Panel.GoalTypePanel
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
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Lean_Widget_ppExprTagged(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_ProofWidgets_InteractiveCode;
LEAN_EXPORT lean_object* l_presenter___elambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_presenter;
uint64_t lean_string_hash(lean_object*);
static lean_object* l_presenter___elambda__1___closed__1;
static lean_object* l_presenter___closed__2;
static lean_object* l_presenter___closed__1;
static lean_object* l_presenter___elambda__1___closed__6;
static lean_object* l_presenter___closed__3;
lean_object* l_ProofWidgets_Html_ofComponent___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1(lean_object*, lean_object*, lean_object*);
lean_object* l_ProofWidgets_ProofWidgets_InteractiveCodeProps_instRpcEncodableInteractiveCodeProps_enc____x40_ProofWidgets_Component_Basic___hyg_44_(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___closed__1;
static lean_object* l_presenter___elambda__1___closed__7;
static lean_object* l_presenter___elambda__1___closed__4;
static lean_object* l_presenter___elambda__1___closed__2;
static lean_object* l_presenter___elambda__1___closed__3;
static lean_object* l_presenter___elambda__1___closed__5;
static lean_object* l_presenter___elambda__1___closed__8;
static lean_object* _init_l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_ProofWidgets_ProofWidgets_InteractiveCodeProps_instRpcEncodableInteractiveCodeProps_enc____x40_ProofWidgets_Component_Basic___hyg_44_), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; uint64_t x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_1, 1);
x_6 = lean_ctor_get(x_4, 0);
x_7 = lean_string_hash(x_6);
x_8 = l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___closed__1;
x_9 = lean_alloc_closure((void*)(l_ProofWidgets_Html_ofComponent___elambda__1___rarg), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_8);
lean_inc(x_5);
x_10 = lean_alloc_ctor(2, 3, 8);
lean_ctor_set(x_10, 0, x_5);
lean_ctor_set(x_10, 1, x_9);
lean_ctor_set(x_10, 2, x_3);
lean_ctor_set_uint64(x_10, sizeof(void*)*3, x_7);
return x_10;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("🐙 ", 5, 2);
return x_1;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_presenter___elambda__1___closed__2;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" 🐙", 5, 2);
return x_1;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_presenter___elambda__1___closed__4;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(3u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_presenter___elambda__1___closed__6;
x_2 = l_presenter___elambda__1___closed__3;
x_3 = lean_array_push(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_presenter___elambda__1___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("span", 4, 4);
return x_1;
}
}
LEAN_EXPORT lean_object* l_presenter___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; lean_object* x_8; 
x_7 = 0;
x_8 = l_Lean_Widget_ppExprTagged(x_1, x_7, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_8) == 0)
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_10 = lean_ctor_get(x_8, 0);
x_11 = l_ProofWidgets_InteractiveCode;
x_12 = l_presenter___elambda__1___closed__1;
x_13 = l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1(x_11, x_10, x_12);
x_14 = l_presenter___elambda__1___closed__7;
x_15 = lean_array_push(x_14, x_13);
x_16 = l_presenter___elambda__1___closed__5;
x_17 = lean_array_push(x_15, x_16);
x_18 = l_presenter___elambda__1___closed__8;
x_19 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_12);
lean_ctor_set(x_19, 2, x_17);
lean_ctor_set(x_8, 0, x_19);
return x_8;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_20 = lean_ctor_get(x_8, 0);
x_21 = lean_ctor_get(x_8, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_8);
x_22 = l_ProofWidgets_InteractiveCode;
x_23 = l_presenter___elambda__1___closed__1;
x_24 = l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1(x_22, x_20, x_23);
x_25 = l_presenter___elambda__1___closed__7;
x_26 = lean_array_push(x_25, x_24);
x_27 = l_presenter___elambda__1___closed__5;
x_28 = lean_array_push(x_26, x_27);
x_29 = l_presenter___elambda__1___closed__8;
x_30 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_23);
lean_ctor_set(x_30, 2, x_28);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_21);
return x_31;
}
}
else
{
uint8_t x_32; 
x_32 = !lean_is_exclusive(x_8);
if (x_32 == 0)
{
return x_8;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_8, 0);
x_34 = lean_ctor_get(x_8, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_8);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
static lean_object* _init_l_presenter___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("With octopodes", 14, 14);
return x_1;
}
}
static lean_object* _init_l_presenter___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_presenter___elambda__1), 6, 0);
return x_1;
}
}
static lean_object* _init_l_presenter___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_presenter___closed__1;
x_2 = 1;
x_3 = l_presenter___closed__2;
x_4 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
lean_ctor_set_uint8(x_4, sizeof(void*)*2, x_2);
return x_4;
}
}
static lean_object* _init_l_presenter() {
_start:
{
lean_object* x_1; 
x_1 = l_presenter___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Panel_SelectionPanel(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Panel_GoalTypePanel(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_ProofWidgets_Demos_ExprPresentation(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Panel_SelectionPanel(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Panel_GoalTypePanel(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___closed__1 = _init_l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___closed__1();
lean_mark_persistent(l_ProofWidgets_Html_ofComponent___at_presenter___elambda__1___spec__1___closed__1);
l_presenter___elambda__1___closed__1 = _init_l_presenter___elambda__1___closed__1();
lean_mark_persistent(l_presenter___elambda__1___closed__1);
l_presenter___elambda__1___closed__2 = _init_l_presenter___elambda__1___closed__2();
lean_mark_persistent(l_presenter___elambda__1___closed__2);
l_presenter___elambda__1___closed__3 = _init_l_presenter___elambda__1___closed__3();
lean_mark_persistent(l_presenter___elambda__1___closed__3);
l_presenter___elambda__1___closed__4 = _init_l_presenter___elambda__1___closed__4();
lean_mark_persistent(l_presenter___elambda__1___closed__4);
l_presenter___elambda__1___closed__5 = _init_l_presenter___elambda__1___closed__5();
lean_mark_persistent(l_presenter___elambda__1___closed__5);
l_presenter___elambda__1___closed__6 = _init_l_presenter___elambda__1___closed__6();
lean_mark_persistent(l_presenter___elambda__1___closed__6);
l_presenter___elambda__1___closed__7 = _init_l_presenter___elambda__1___closed__7();
lean_mark_persistent(l_presenter___elambda__1___closed__7);
l_presenter___elambda__1___closed__8 = _init_l_presenter___elambda__1___closed__8();
lean_mark_persistent(l_presenter___elambda__1___closed__8);
l_presenter___closed__1 = _init_l_presenter___closed__1();
lean_mark_persistent(l_presenter___closed__1);
l_presenter___closed__2 = _init_l_presenter___closed__2();
lean_mark_persistent(l_presenter___closed__2);
l_presenter___closed__3 = _init_l_presenter___closed__3();
lean_mark_persistent(l_presenter___closed__3);
l_presenter = _init_l_presenter();
lean_mark_persistent(l_presenter);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
