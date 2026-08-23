// Lean compiler output
// Module: Mathlib.Tactic.TypeStar
// Imports: Init Mathlib.Init Lean.Elab.Term
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
lean_object* l_Lean_Elab_Term_levelMVarToParam(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkFreshLevelMVar(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Level_succ___override(lean_object*);
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termType_x2a__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_sort___override(lean_object*);
static lean_object* l_termSort_x2a___closed__1;
static lean_object* l_termType_x2a___closed__2;
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___lambda__1___boxed(lean_object*);
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Term_elabForall___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_termType_x2a___closed__4;
static lean_object* l_termSort_x2a___closed__2;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___lambda__1(lean_object*);
static lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1;
static lean_object* l_termType_x2a___closed__1;
static lean_object* l_termType_x2a___closed__3;
LEAN_EXPORT lean_object* l_termSort_x2a;
static lean_object* l_termSort_x2a___closed__5;
static lean_object* l_termSort_x2a___closed__3;
static lean_object* l_termType_x2a___closed__5;
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termType_x2a__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_termSort_x2a___closed__4;
LEAN_EXPORT lean_object* l_termType_x2a;
static lean_object* _init_l_termSort_x2a___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("termSort*", 9, 9);
return x_1;
}
}
static lean_object* _init_l_termSort_x2a___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_termSort_x2a___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_termSort_x2a___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Sort*", 5, 5);
return x_1;
}
}
static lean_object* _init_l_termSort_x2a___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_termSort_x2a___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_termSort_x2a___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_termSort_x2a___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_termSort_x2a___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_termSort_x2a() {
_start:
{
lean_object* x_1; 
x_1 = l_termSort_x2a___closed__5;
return x_1;
}
}
LEAN_EXPORT uint8_t l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___lambda__1(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = 0;
return x_2;
}
}
static lean_object* _init_l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___lambda__1___boxed), 1, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_termSort_x2a___closed__2;
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; 
x_12 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Term_elabForall___spec__1___rarg(x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_13 = l_Lean_Meta_mkFreshLevelMVar(x_5, x_6, x_7, x_8, x_9);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_Expr_sort___override(x_14);
x_17 = l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1;
x_18 = l_Lean_Elab_Term_levelMVarToParam(x_16, x_17, x_3, x_4, x_5, x_6, x_7, x_8, x_15);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___lambda__1___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___lambda__1(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
static lean_object* _init_l_termType_x2a___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("termType*", 9, 9);
return x_1;
}
}
static lean_object* _init_l_termType_x2a___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_termType_x2a___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_termType_x2a___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Type*", 5, 5);
return x_1;
}
}
static lean_object* _init_l_termType_x2a___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_termType_x2a___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_termType_x2a___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_termType_x2a___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_termType_x2a___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_termType_x2a() {
_start:
{
lean_object* x_1; 
x_1 = l_termType_x2a___closed__5;
return x_1;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termType_x2a__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_termType_x2a___closed__2;
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; 
x_12 = l_Lean_Elab_throwUnsupportedSyntax___at_Lean_Elab_Term_elabForall___spec__1___rarg(x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_13 = l_Lean_Meta_mkFreshLevelMVar(x_5, x_6, x_7, x_8, x_9);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Lean_Level_succ___override(x_14);
x_17 = l_Lean_Expr_sort___override(x_16);
x_18 = l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1;
x_19 = l_Lean_Elab_Term_levelMVarToParam(x_17, x_18, x_3, x_4, x_5, x_6, x_7, x_8, x_15);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Tactic__TypeStar______elabRules__termType_x2a__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l___aux__Mathlib__Tactic__TypeStar______elabRules__termType_x2a__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_Term(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_TypeStar(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_Term(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_termSort_x2a___closed__1 = _init_l_termSort_x2a___closed__1();
lean_mark_persistent(l_termSort_x2a___closed__1);
l_termSort_x2a___closed__2 = _init_l_termSort_x2a___closed__2();
lean_mark_persistent(l_termSort_x2a___closed__2);
l_termSort_x2a___closed__3 = _init_l_termSort_x2a___closed__3();
lean_mark_persistent(l_termSort_x2a___closed__3);
l_termSort_x2a___closed__4 = _init_l_termSort_x2a___closed__4();
lean_mark_persistent(l_termSort_x2a___closed__4);
l_termSort_x2a___closed__5 = _init_l_termSort_x2a___closed__5();
lean_mark_persistent(l_termSort_x2a___closed__5);
l_termSort_x2a = _init_l_termSort_x2a();
lean_mark_persistent(l_termSort_x2a);
l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1 = _init_l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1();
lean_mark_persistent(l___aux__Mathlib__Tactic__TypeStar______elabRules__termSort_x2a__1___closed__1);
l_termType_x2a___closed__1 = _init_l_termType_x2a___closed__1();
lean_mark_persistent(l_termType_x2a___closed__1);
l_termType_x2a___closed__2 = _init_l_termType_x2a___closed__2();
lean_mark_persistent(l_termType_x2a___closed__2);
l_termType_x2a___closed__3 = _init_l_termType_x2a___closed__3();
lean_mark_persistent(l_termType_x2a___closed__3);
l_termType_x2a___closed__4 = _init_l_termType_x2a___closed__4();
lean_mark_persistent(l_termType_x2a___closed__4);
l_termType_x2a___closed__5 = _init_l_termType_x2a___closed__5();
lean_mark_persistent(l_termType_x2a___closed__5);
l_termType_x2a = _init_l_termType_x2a();
lean_mark_persistent(l_termType_x2a);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
