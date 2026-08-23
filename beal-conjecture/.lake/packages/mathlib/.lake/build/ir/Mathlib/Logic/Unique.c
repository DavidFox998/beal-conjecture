// Lean compiler output
// Module: Mathlib.Logic.Unique
// Imports: Init Mathlib.Logic.IsEmpty Mathlib.Tactic.Inhabit
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
LEAN_EXPORT lean_object* l_Option_instUniqueOfIsEmpty(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueElim___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Injective_unique(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Surjective_unique(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSubsingleton___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_unique(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_uniqueOfIsEmpty(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSubsingleton___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Unique_instInhabited___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Unique_mk_x27___rarg___boxed(lean_object*, lean_object*);
lean_object* l_instInhabitedForall__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Surjective_uniqueOfSurjectiveConst___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_mk_x27___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Surjective_unique___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_unique___rarg(lean_object*);
LEAN_EXPORT lean_object* l_uniqueElim___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_instInhabited___rarg(lean_object*);
LEAN_EXPORT lean_object* l_uniqueElim___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_subtypeEq(lean_object*);
LEAN_EXPORT lean_object* l_Unique_subtypeEq___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_uniqueElim(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Injective_unique___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_subtypeEq_x27___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Function_Injective_unique___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_isEmptyElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Pi_uniqueOfIsEmpty___closed__1;
LEAN_EXPORT lean_object* l_Function_Surjective_uniqueOfSurjectiveConst(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_mk_x27(lean_object*);
LEAN_EXPORT lean_object* l_Unique_instInhabited(lean_object*);
LEAN_EXPORT lean_object* l_PUnit_unique;
LEAN_EXPORT lean_object* l_Unique_subtypeEq___rarg(lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSubsingleton(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_subtypeEq_x27___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_instUniqueTrue;
LEAN_EXPORT lean_object* l_Function_Surjective_uniqueOfSurjectiveConst___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_Injective_unique___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueProp(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Unique_subtypeEq_x27(lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSubsingleton___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSubsingleton(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_uniqueOfSubsingleton___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSubsingleton___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_uniqueOfSubsingleton___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_PUnit_unique() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueProp(lean_object* x_1, lean_object* x_2) {
_start:
{
return lean_box(0);
}
}
static lean_object* _init_l_instUniqueTrue() {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Unique_instInhabited___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Unique_instInhabited(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Unique_instInhabited___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Unique_instInhabited___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Unique_instInhabited___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Unique_mk_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Unique_mk_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Unique_mk_x27___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Unique_mk_x27___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Unique_mk_x27___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_unique___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_instInhabitedForall__1___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_unique(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_unique___rarg), 1, 0);
return x_3;
}
}
static lean_object* _init_l_Pi_uniqueOfIsEmpty___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_isEmptyElim___boxed), 4, 3);
lean_closure_set(x_1, 0, lean_box(0));
lean_closure_set(x_1, 1, lean_box(0));
lean_closure_set(x_1, 2, lean_box(0));
return x_1;
}
}
LEAN_EXPORT lean_object* l_Pi_uniqueOfIsEmpty(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Pi_uniqueOfIsEmpty___closed__1;
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_unique___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_apply_1(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_unique(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Function_Surjective_unique___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_Injective_unique___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Function_Injective_unique(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Function_Injective_unique___rarg___boxed), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_Injective_unique___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Function_Injective_unique___rarg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_Injective_unique___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Function_Injective_unique(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_uniqueOfSurjectiveConst___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_uniqueOfSurjectiveConst(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Function_Surjective_uniqueOfSurjectiveConst___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_Surjective_uniqueOfSurjectiveConst___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Function_Surjective_uniqueOfSurjectiveConst___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueElim___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueElim(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_uniqueElim___rarg___boxed), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_uniqueElim___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_uniqueElim___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueElim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_uniqueElim(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Option_instUniqueOfIsEmpty(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Unique_subtypeEq___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Unique_subtypeEq(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Unique_subtypeEq___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Unique_subtypeEq___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Unique_subtypeEq___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Unique_subtypeEq_x27___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Unique_subtypeEq_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Unique_subtypeEq_x27___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Unique_subtypeEq_x27___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Unique_subtypeEq_x27___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_IsEmpty(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Inhabit(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Logic_Unique(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_IsEmpty(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Inhabit(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_PUnit_unique = _init_l_PUnit_unique();
lean_mark_persistent(l_PUnit_unique);
l_instUniqueTrue = _init_l_instUniqueTrue();
l_Pi_uniqueOfIsEmpty___closed__1 = _init_l_Pi_uniqueOfIsEmpty___closed__1();
lean_mark_persistent(l_Pi_uniqueOfIsEmpty___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
