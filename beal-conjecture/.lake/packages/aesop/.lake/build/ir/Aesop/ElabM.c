// Lean compiler output
// Module: Aesop.ElabM
// Imports: Init Lean
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
lean_object* l_Lean_Expr_const___override(lean_object*, lean_object*);
static lean_object* l_Aesop_instMonadElabM___closed__3;
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forGlobalErasing(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Lean_Meta_mkFreshExprMVarAt(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__2;
LEAN_EXPORT lean_object* l_Aesop_ElabM_run___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Elab_Term_instMonadTermElabM;
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__5;
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__9;
static lean_object* l_Aesop_instMonadElabM___closed__1;
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10;
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3;
lean_object* l_ReaderT_instApplicativeOfMonad___rarg(lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6;
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forAdditionalRules(lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forErasing(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_shouldParsePriorities(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getGoal___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7;
LEAN_EXPORT lean_object* l_Aesop_shouldParsePriorities___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__1;
LEAN_EXPORT lean_object* l_Aesop_ElabM_run(lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__4;
lean_object* l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_object*, lean_object*);
static lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__8;
static lean_object* l_Aesop_instMonadElabM___closed__2;
lean_object* l_Lean_Expr_mvarId_x21(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forGlobalErasing___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_ReaderT_instMonad___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instMonadElabM;
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forAdditionalRules(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = 1;
x_3 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_PersistentHashMap_mkEmptyEntriesArray(lean_box(0), lean_box(0));
return x_1;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__5() {
_start:
{
size_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 5;
x_2 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__4;
x_3 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3;
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_alloc_ctor(0, 4, sizeof(size_t)*1);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
lean_ctor_set(x_5, 3, x_4);
lean_ctor_set_usize(x_5, 4, x_1);
return x_5;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__2;
x_2 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__5;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("True", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__8;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__9;
x_3 = l_Lean_Expr_const___override(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_6 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6;
x_7 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7;
x_8 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10;
x_9 = 0;
x_10 = lean_box(0);
x_11 = lean_unsigned_to_nat(0u);
x_12 = l_Lean_Meta_mkFreshExprMVarAt(x_6, x_7, x_8, x_9, x_10, x_11, x_1, x_2, x_3, x_4, x_5);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = l_Lean_Expr_mvarId_x21(x_14);
lean_dec(x_14);
x_16 = 1;
x_17 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set_uint8(x_17, sizeof(void*)*1, x_16);
lean_ctor_set(x_12, 0, x_17);
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_18 = lean_ctor_get(x_12, 0);
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_12);
x_20 = l_Lean_Expr_mvarId_x21(x_18);
lean_dec(x_18);
x_21 = 1;
x_22 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set_uint8(x_22, sizeof(void*)*1, x_21);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_19);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Aesop_ElabM_Context_forAdditionalGlobalRules(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forErasing(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = 0;
x_3 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forGlobalErasing(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_6 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6;
x_7 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7;
x_8 = l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10;
x_9 = 0;
x_10 = lean_box(0);
x_11 = lean_unsigned_to_nat(0u);
x_12 = l_Lean_Meta_mkFreshExprMVarAt(x_6, x_7, x_8, x_9, x_10, x_11, x_1, x_2, x_3, x_4, x_5);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = l_Lean_Expr_mvarId_x21(x_14);
lean_dec(x_14);
x_16 = 0;
x_17 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set_uint8(x_17, sizeof(void*)*1, x_16);
lean_ctor_set(x_12, 0, x_17);
return x_12;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; uint8_t x_21; lean_object* x_22; lean_object* x_23; 
x_18 = lean_ctor_get(x_12, 0);
x_19 = lean_ctor_get(x_12, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_12);
x_20 = l_Lean_Expr_mvarId_x21(x_18);
lean_dec(x_18);
x_21 = 0;
x_22 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set_uint8(x_22, sizeof(void*)*1, x_21);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_19);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_Context_forGlobalErasing___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Aesop_ElabM_Context_forGlobalErasing(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
static lean_object* _init_l_Aesop_instMonadElabM___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_Term_instMonadTermElabM;
x_2 = l_ReaderT_instMonad___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instMonadElabM___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Elab_Term_instMonadTermElabM;
x_2 = l_ReaderT_instApplicativeOfMonad___rarg(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instMonadElabM___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; 
x_1 = l_Aesop_instMonadElabM___closed__1;
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_dec(x_3);
x_4 = l_Aesop_instMonadElabM___closed__2;
lean_ctor_set(x_1, 0, x_4);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Aesop_instMonadElabM___closed__2;
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_5);
return x_7;
}
}
}
static lean_object* _init_l_Aesop_instMonadElabM() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instMonadElabM___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_run___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_apply_8(x_2, x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_ElabM_run(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_ElabM_run___rarg), 9, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_shouldParsePriorities(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get_uint8(x_1, sizeof(void*)*1);
x_10 = lean_box(x_9);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_8);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_shouldParsePriorities___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_shouldParsePriorities(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_getGoal(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_1, 0);
lean_inc(x_9);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_getGoal___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_getGoal(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_ElabM(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__1 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__1();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__1);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__2 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__2();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__2);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__3);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__4 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__4();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__4);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__5 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__5();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__5);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__6);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__7);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__8 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__8();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__8);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__9 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__9();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__9);
l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10 = _init_l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10();
lean_mark_persistent(l_Aesop_ElabM_Context_forAdditionalGlobalRules___closed__10);
l_Aesop_instMonadElabM___closed__1 = _init_l_Aesop_instMonadElabM___closed__1();
lean_mark_persistent(l_Aesop_instMonadElabM___closed__1);
l_Aesop_instMonadElabM___closed__2 = _init_l_Aesop_instMonadElabM___closed__2();
lean_mark_persistent(l_Aesop_instMonadElabM___closed__2);
l_Aesop_instMonadElabM___closed__3 = _init_l_Aesop_instMonadElabM___closed__3();
lean_mark_persistent(l_Aesop_instMonadElabM___closed__3);
l_Aesop_instMonadElabM = _init_l_Aesop_instMonadElabM();
lean_mark_persistent(l_Aesop_instMonadElabM);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
