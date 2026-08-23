// Lean compiler output
// Module: Mathlib.Algebra.Group.Nat
// Imports: Init Mathlib.Algebra.Group.Even Mathlib.Algebra.Group.Units Mathlib.Data.Nat.Sqrt
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
static lean_object* l_Nat_instCommMonoid___closed__2;
LEAN_EXPORT lean_object* l_Nat_unique__units;
LEAN_EXPORT lean_object* l_Nat_instMonoid;
LEAN_EXPORT lean_object* l_Nat_instAddMonoid;
static lean_object* l_Nat_unique__addUnits___closed__1;
LEAN_EXPORT lean_object* l_Nat_instAddCancelCommMonoid;
LEAN_EXPORT lean_object* l_Nat_instCommMonoid___lambda__1___boxed(lean_object*, lean_object*);
lean_object* l_Nat_sqrt(lean_object*);
LEAN_EXPORT uint8_t l_Nat_instDecidablePredEven(lean_object*);
LEAN_EXPORT lean_object* l_Nat_instSemigroup;
static lean_object* l_Nat_instAddCancelCommMonoid___closed__1;
static lean_object* l_Nat_instAddCancelCommMonoid___closed__3;
LEAN_EXPORT lean_object* l_Nat_instCommMonoid___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Nat_instDecidablePredIsSquare(lean_object*);
static lean_object* l_Nat_instCommMonoid___closed__1;
lean_object* l_Nat_mul___boxed(lean_object*, lean_object*);
lean_object* l_Nat_add___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_instCommMonoid;
lean_object* lean_nat_pow(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* lean_nat_mod(lean_object*, lean_object*);
static lean_object* l_Nat_instAddCancelCommMonoid___closed__2;
LEAN_EXPORT lean_object* l_Nat_instAddCommMonoid;
static lean_object* l_Nat_unique__units___closed__1;
LEAN_EXPORT lean_object* l_Nat_instDecidablePredEven___boxed(lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_instDecidablePredIsSquare___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Nat_unique__addUnits;
LEAN_EXPORT lean_object* l_Nat_instCommSemigroup;
LEAN_EXPORT lean_object* l_Nat_instAddSemigroup;
LEAN_EXPORT lean_object* l_Nat_instAddCommSemigroup;
static lean_object* _init_l_Nat_instAddCancelCommMonoid___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Nat_add___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Nat_instAddCancelCommMonoid___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Nat_mul___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Nat_instAddCancelCommMonoid___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Nat_instAddCancelCommMonoid___closed__1;
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_Nat_instAddCancelCommMonoid___closed__2;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Nat_instAddCancelCommMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_instAddCancelCommMonoid___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Nat_instCommMonoid___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_nat_pow(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Nat_instCommMonoid___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Nat_instCommMonoid___lambda__1___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Nat_instCommMonoid___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Nat_instAddCancelCommMonoid___closed__2;
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_instCommMonoid___closed__1;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Nat_instCommMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_instCommMonoid___closed__2;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Nat_instCommMonoid___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_instCommMonoid___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
static lean_object* _init_l_Nat_instAddCommMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_instAddCancelCommMonoid;
return x_1;
}
}
static lean_object* _init_l_Nat_instAddMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_instAddCommMonoid;
return x_1;
}
}
static lean_object* _init_l_Nat_instMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_instCommMonoid;
return x_1;
}
}
static lean_object* _init_l_Nat_instCommSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Nat_instCommMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Nat_instSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Nat_instMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Nat_instAddCommSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Nat_instAddCommMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Nat_instAddSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Nat_instAddMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Nat_instDecidablePredEven(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_2 = lean_unsigned_to_nat(2u);
x_3 = lean_nat_mod(x_1, x_2);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nat_instDecidablePredEven___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Nat_instDecidablePredEven(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Nat_instDecidablePredIsSquare(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Nat_sqrt(x_1);
x_3 = lean_nat_mul(x_2, x_2);
lean_dec(x_2);
x_4 = lean_nat_dec_eq(x_3, x_1);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_instDecidablePredIsSquare___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Nat_instDecidablePredIsSquare(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
static lean_object* _init_l_Nat_unique__units___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Nat_unique__units() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_unique__units___closed__1;
return x_1;
}
}
static lean_object* _init_l_Nat_unique__addUnits___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Nat_unique__addUnits() {
_start:
{
lean_object* x_1; 
x_1 = l_Nat_unique__addUnits___closed__1;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Even(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Units(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Sqrt(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Group_Nat(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Even(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Units(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Sqrt(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Nat_instAddCancelCommMonoid___closed__1 = _init_l_Nat_instAddCancelCommMonoid___closed__1();
lean_mark_persistent(l_Nat_instAddCancelCommMonoid___closed__1);
l_Nat_instAddCancelCommMonoid___closed__2 = _init_l_Nat_instAddCancelCommMonoid___closed__2();
lean_mark_persistent(l_Nat_instAddCancelCommMonoid___closed__2);
l_Nat_instAddCancelCommMonoid___closed__3 = _init_l_Nat_instAddCancelCommMonoid___closed__3();
lean_mark_persistent(l_Nat_instAddCancelCommMonoid___closed__3);
l_Nat_instAddCancelCommMonoid = _init_l_Nat_instAddCancelCommMonoid();
lean_mark_persistent(l_Nat_instAddCancelCommMonoid);
l_Nat_instCommMonoid___closed__1 = _init_l_Nat_instCommMonoid___closed__1();
lean_mark_persistent(l_Nat_instCommMonoid___closed__1);
l_Nat_instCommMonoid___closed__2 = _init_l_Nat_instCommMonoid___closed__2();
lean_mark_persistent(l_Nat_instCommMonoid___closed__2);
l_Nat_instCommMonoid = _init_l_Nat_instCommMonoid();
lean_mark_persistent(l_Nat_instCommMonoid);
l_Nat_instAddCommMonoid = _init_l_Nat_instAddCommMonoid();
lean_mark_persistent(l_Nat_instAddCommMonoid);
l_Nat_instAddMonoid = _init_l_Nat_instAddMonoid();
lean_mark_persistent(l_Nat_instAddMonoid);
l_Nat_instMonoid = _init_l_Nat_instMonoid();
lean_mark_persistent(l_Nat_instMonoid);
l_Nat_instCommSemigroup = _init_l_Nat_instCommSemigroup();
lean_mark_persistent(l_Nat_instCommSemigroup);
l_Nat_instSemigroup = _init_l_Nat_instSemigroup();
lean_mark_persistent(l_Nat_instSemigroup);
l_Nat_instAddCommSemigroup = _init_l_Nat_instAddCommSemigroup();
lean_mark_persistent(l_Nat_instAddCommSemigroup);
l_Nat_instAddSemigroup = _init_l_Nat_instAddSemigroup();
lean_mark_persistent(l_Nat_instAddSemigroup);
l_Nat_unique__units___closed__1 = _init_l_Nat_unique__units___closed__1();
lean_mark_persistent(l_Nat_unique__units___closed__1);
l_Nat_unique__units = _init_l_Nat_unique__units();
lean_mark_persistent(l_Nat_unique__units);
l_Nat_unique__addUnits___closed__1 = _init_l_Nat_unique__addUnits___closed__1();
lean_mark_persistent(l_Nat_unique__addUnits___closed__1);
l_Nat_unique__addUnits = _init_l_Nat_unique__addUnits();
lean_mark_persistent(l_Nat_unique__addUnits);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
