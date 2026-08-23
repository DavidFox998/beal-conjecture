// Lean compiler output
// Module: Mathlib.Data.Set.Basic
// Imports: Init Mathlib.Algebra.Group.ZeroOne Mathlib.Data.Set.Operations Mathlib.Order.Basic Mathlib.Order.SymmDiff Mathlib.Tactic.Tauto Mathlib.Tactic.ByContra Mathlib.Util.Delaborators
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
LEAN_EXPORT uint8_t l_Set_decidableUniv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_instTransSSubsetSubset(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableInter(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableUniv___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_uniqueSingleton___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableSingleton___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_uniqueEmpty(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableUnion___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Set_decidableInsert___rarg(uint8_t, uint8_t);
static lean_object* l_Set_instBooleanAlgebraSet___closed__4;
LEAN_EXPORT lean_object* l_Set_decidableSingleton___rarg___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Set_decidableCompl___rarg(uint8_t);
LEAN_EXPORT lean_object* l_Set_decidableSetOf___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableSdiff___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_instHasSSubset(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableUnion___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Set_decidableSdiff___rarg(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Set_inclusion___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_uniqueSingleton___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_inclusion___rarg___boxed(lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
LEAN_EXPORT uint8_t l_Set_decidableSetOf___rarg(uint8_t);
LEAN_EXPORT uint8_t l_Set_decidableInter___rarg(uint8_t, uint8_t);
static lean_object* l_Set_instBooleanAlgebraSet___closed__3;
LEAN_EXPORT lean_object* l_instCoeTCElem___rarg(lean_object*);
LEAN_EXPORT lean_object* l_instCoeTCElem___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_instTransSubset(lean_object*);
LEAN_EXPORT lean_object* l_Set_uniqueSingleton(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableCompl(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableSetOf(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_instBooleanAlgebraSet(lean_object*);
LEAN_EXPORT uint8_t l_Set_decidableUnion___rarg(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Set_decidableSdiff___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableSingleton(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Set_decidableEmptyset(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instCoeTCElem(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableInter___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_inclusion(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_instTransSubsetSSubset(lean_object*);
static lean_object* l_Set_instBooleanAlgebraSet___closed__1;
LEAN_EXPORT lean_object* l_Set_decidableCompl___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_instInhabited(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableEmptyset___boxed(lean_object*, lean_object*);
static lean_object* l_Set_instBooleanAlgebraSet___closed__2;
LEAN_EXPORT lean_object* l_Set_decidableInsert___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableSetOf___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_instTransSSubset(lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableInter___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableInsert___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableInsert(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Set_decidableSingleton___rarg(uint8_t);
LEAN_EXPORT lean_object* l_Set_decidableUnion(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableSdiff(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_decidableCompl___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* _init_l_Set_instBooleanAlgebraSet___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Set_instBooleanAlgebraSet___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Set_instBooleanAlgebraSet___closed__1;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, lean_box(0));
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Set_instBooleanAlgebraSet___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Set_instBooleanAlgebraSet___closed__2;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, lean_box(0));
return x_2;
}
}
static lean_object* _init_l_Set_instBooleanAlgebraSet___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Set_instBooleanAlgebraSet___closed__3;
x_2 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, lean_box(0));
lean_ctor_set(x_2, 2, lean_box(0));
lean_ctor_set(x_2, 3, lean_box(0));
lean_ctor_set(x_2, 4, lean_box(0));
lean_ctor_set(x_2, 5, lean_box(0));
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_instBooleanAlgebraSet(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Set_instBooleanAlgebraSet___closed__4;
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_instHasSSubset(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_instCoeTCElem___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_instCoeTCElem(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_instCoeTCElem___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instCoeTCElem___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_instCoeTCElem___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_instInhabited(lean_object* x_1) {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Set_instTransSubset(lean_object* x_1) {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Set_instTransSSubset(lean_object* x_1) {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Set_instTransSSubsetSubset(lean_object* x_1) {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Set_instTransSubsetSSubset(lean_object* x_1) {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Set_uniqueEmpty(lean_object* x_1, lean_object* x_2) {
_start:
{
return lean_box(0);
}
}
LEAN_EXPORT lean_object* l_Set_uniqueSingleton___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_uniqueSingleton(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_uniqueSingleton___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_uniqueSingleton___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Set_uniqueSingleton___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_inclusion___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_inclusion(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Set_inclusion___rarg___boxed), 1, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_inclusion___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Set_inclusion___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Set_decidableSdiff___rarg(uint8_t x_1, uint8_t x_2) {
_start:
{
if (x_1 == 0)
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
else
{
uint8_t x_4; 
x_4 = l_instDecidableNot___rarg(x_2);
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Set_decidableSdiff(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Set_decidableSdiff___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSdiff___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l_Set_decidableSdiff___rarg(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSdiff___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Set_decidableSdiff(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Set_decidableInter___rarg(uint8_t x_1, uint8_t x_2) {
_start:
{
if (x_1 == 0)
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
else
{
return x_2;
}
}
}
LEAN_EXPORT lean_object* l_Set_decidableInter(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Set_decidableInter___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_decidableInter___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l_Set_decidableInter___rarg(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_decidableInter___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Set_decidableInter(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Set_decidableUnion___rarg(uint8_t x_1, uint8_t x_2) {
_start:
{
if (x_1 == 0)
{
return x_2;
}
else
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_Set_decidableUnion(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Set_decidableUnion___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_decidableUnion___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l_Set_decidableUnion___rarg(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_decidableUnion___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Set_decidableUnion(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Set_decidableCompl___rarg(uint8_t x_1) {
_start:
{
uint8_t x_2; 
x_2 = l_instDecidableNot___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_decidableCompl(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Set_decidableCompl___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_decidableCompl___rarg___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Set_decidableCompl___rarg(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_decidableCompl___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_decidableCompl(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Set_decidableEmptyset(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_decidableEmptyset___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Set_decidableEmptyset(x_1, x_2);
lean_dec(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Set_decidableUniv(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_decidableUniv___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Set_decidableUniv(x_1, x_2);
lean_dec(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Set_decidableInsert___rarg(uint8_t x_1, uint8_t x_2) {
_start:
{
if (x_1 == 0)
{
return x_2;
}
else
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
}
}
LEAN_EXPORT lean_object* l_Set_decidableInsert(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Set_decidableInsert___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_decidableInsert___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l_Set_decidableInsert___rarg(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_decidableInsert___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Set_decidableInsert(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Set_decidableSingleton___rarg(uint8_t x_1) {
_start:
{
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSingleton(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Set_decidableSingleton___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSingleton___rarg___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Set_decidableSingleton___rarg(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSingleton___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_decidableSingleton(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Set_decidableSetOf___rarg(uint8_t x_1) {
_start:
{
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSetOf(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Set_decidableSetOf___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSetOf___rarg___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_Set_decidableSetOf___rarg(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_decidableSetOf___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_decidableSetOf(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_ZeroOne(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Set_Operations(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_SymmDiff(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Tauto(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_ByContra(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Util_Delaborators(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Set_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_ZeroOne(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Set_Operations(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_SymmDiff(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Tauto(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_ByContra(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Util_Delaborators(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Set_instBooleanAlgebraSet___closed__1 = _init_l_Set_instBooleanAlgebraSet___closed__1();
lean_mark_persistent(l_Set_instBooleanAlgebraSet___closed__1);
l_Set_instBooleanAlgebraSet___closed__2 = _init_l_Set_instBooleanAlgebraSet___closed__2();
lean_mark_persistent(l_Set_instBooleanAlgebraSet___closed__2);
l_Set_instBooleanAlgebraSet___closed__3 = _init_l_Set_instBooleanAlgebraSet___closed__3();
lean_mark_persistent(l_Set_instBooleanAlgebraSet___closed__3);
l_Set_instBooleanAlgebraSet___closed__4 = _init_l_Set_instBooleanAlgebraSet___closed__4();
lean_mark_persistent(l_Set_instBooleanAlgebraSet___closed__4);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
