// Lean compiler output
// Module: Aesop.BuiltinRules.Rfl
// Imports: Init Aesop.Frontend.Attribute
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
static lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___closed__1;
static lean_object* l_Aesop_BuiltinRules_rfl___closed__1;
static lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___closed__4;
lean_object* l_Lean_SourceInfo_fromRef(lean_object*, uint8_t);
static lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___closed__3;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
static lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___closed__2;
lean_object* l_Lean_Syntax_node1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BuiltinRules_rfl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___closed__5;
static lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___closed__6;
lean_object* l_Aesop_RuleTac_ofTacticSyntax(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BuiltinRules_rfl___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tacticRfl", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__1;
x_2 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__2;
x_3 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__3;
x_4 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rfl", 3, 3);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_BuiltinRules_rfl___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = lean_ctor_get(x_4, 5);
x_8 = 0;
x_9 = l_Lean_SourceInfo_fromRef(x_7, x_8);
x_10 = lean_st_ref_get(x_5, x_6);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_12 = lean_ctor_get(x_10, 0);
lean_dec(x_12);
x_13 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__6;
lean_inc(x_9);
x_14 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_14, 0, x_9);
lean_ctor_set(x_14, 1, x_13);
x_15 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__5;
x_16 = l_Lean_Syntax_node1(x_9, x_15, x_14);
lean_ctor_set(x_10, 0, x_16);
return x_10;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_17 = lean_ctor_get(x_10, 1);
lean_inc(x_17);
lean_dec(x_10);
x_18 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__6;
lean_inc(x_9);
x_19 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_19, 0, x_9);
lean_ctor_set(x_19, 1, x_18);
x_20 = l_Aesop_BuiltinRules_rfl___lambda__1___closed__5;
x_21 = l_Lean_Syntax_node1(x_9, x_20, x_19);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_17);
return x_22;
}
}
}
static lean_object* _init_l_Aesop_BuiltinRules_rfl___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_BuiltinRules_rfl___lambda__1___boxed), 6, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_BuiltinRules_rfl(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Aesop_BuiltinRules_rfl___closed__1;
x_8 = l_Aesop_RuleTac_ofTacticSyntax(x_7, x_1, x_2, x_3, x_4, x_5, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_BuiltinRules_rfl___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_BuiltinRules_rfl___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Frontend_Attribute(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_BuiltinRules_Rfl(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Frontend_Attribute(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_BuiltinRules_rfl___lambda__1___closed__1 = _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___lambda__1___closed__1);
l_Aesop_BuiltinRules_rfl___lambda__1___closed__2 = _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___lambda__1___closed__2);
l_Aesop_BuiltinRules_rfl___lambda__1___closed__3 = _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__3();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___lambda__1___closed__3);
l_Aesop_BuiltinRules_rfl___lambda__1___closed__4 = _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__4();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___lambda__1___closed__4);
l_Aesop_BuiltinRules_rfl___lambda__1___closed__5 = _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__5();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___lambda__1___closed__5);
l_Aesop_BuiltinRules_rfl___lambda__1___closed__6 = _init_l_Aesop_BuiltinRules_rfl___lambda__1___closed__6();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___lambda__1___closed__6);
l_Aesop_BuiltinRules_rfl___closed__1 = _init_l_Aesop_BuiltinRules_rfl___closed__1();
lean_mark_persistent(l_Aesop_BuiltinRules_rfl___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
