// Lean compiler output
// Module: Mathlib.Algebra.Group.Int
// Imports: Init Mathlib.Algebra.Group.Nat Mathlib.Data.Int.Sqrt
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
LEAN_EXPORT lean_object* l_Int_instAddCommGroup;
LEAN_EXPORT lean_object* l_Int_instAddSemigroup;
LEAN_EXPORT lean_object* l_Int_instCommMonoid;
LEAN_EXPORT lean_object* l_Int_instAddCommMonoid;
static lean_object* l_Int_instAddCommGroup___closed__3;
static lean_object* l_Int_instAddCommGroup___closed__1;
static lean_object* l_Int_instCommMonoid___closed__2;
LEAN_EXPORT lean_object* l_Int_instCommSemigroup;
lean_object* lean_int_emod(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_instDecidablePredEven___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Int_instSemigroup;
static lean_object* l_Int_instDecidablePredEven___closed__1;
LEAN_EXPORT uint8_t l_Int_instDecidablePredEven(lean_object*);
extern lean_object* l_Int_instNegInt;
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_Int_instAddMonoid;
lean_object* l_Int_pow(lean_object*, lean_object*);
static lean_object* l_Int_instCommMonoid___closed__3;
LEAN_EXPORT lean_object* l_Int_instDecidablePredIsSquare___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Int_instMonoid;
extern lean_object* l_Int_instMul;
LEAN_EXPORT uint8_t l_Int_instDecidablePredIsSquare(lean_object*);
static lean_object* l_Int_instAddCommGroup___closed__4;
lean_object* lean_int_mul(lean_object*, lean_object*);
lean_object* l_Int_sqrt(lean_object*);
extern lean_object* l_Int_instAdd;
LEAN_EXPORT lean_object* l_Int_instAddCommGroup___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_instAddGroup;
LEAN_EXPORT lean_object* l_Int_instCommMonoid___lambda__1___boxed(lean_object*, lean_object*);
extern lean_object* l_Int_instSub;
lean_object* l_Int_mul___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_instCommMonoid___lambda__1(lean_object*, lean_object*);
static lean_object* l_Int_instCommMonoid___closed__1;
uint8_t lean_int_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_instAddCommGroup___lambda__1___boxed(lean_object*, lean_object*);
static lean_object* l_Int_instAddCommGroup___closed__2;
LEAN_EXPORT lean_object* l_Int_instAddCommSemigroup;
static lean_object* l_Int_instAddCommGroup___closed__5;
LEAN_EXPORT lean_object* l_Int_instCommMonoid___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_pow(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Int_instCommMonoid___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Int_instCommMonoid___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instCommMonoid___lambda__1___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instCommMonoid___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Int_instMul;
x_2 = l_Int_instCommMonoid___closed__1;
x_3 = l_Int_instCommMonoid___closed__2;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Int_instCommMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instCommMonoid___closed__3;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Int_instCommMonoid___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_instCommMonoid___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Int_instAddCommGroup___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_nat_to_int(x_1);
x_4 = lean_int_mul(x_3, x_2);
lean_dec(x_3);
return x_4;
}
}
static lean_object* _init_l_Int_instAddCommGroup___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Int_instAddCommGroup___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_instAddCommGroup___lambda__1___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instAddCommGroup___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Int_instAdd;
x_2 = l_Int_instAddCommGroup___closed__1;
x_3 = l_Int_instAddCommGroup___closed__2;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Int_instAddCommGroup___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Int_mul___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Int_instAddCommGroup___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Int_instAddCommGroup___closed__3;
x_2 = l_Int_instNegInt;
x_3 = l_Int_instSub;
x_4 = l_Int_instAddCommGroup___closed__4;
x_5 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set(x_5, 3, x_4);
return x_5;
}
}
static lean_object* _init_l_Int_instAddCommGroup() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instAddCommGroup___closed__5;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Int_instAddCommGroup___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Int_instAddCommGroup___lambda__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Int_instAddCommMonoid() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instAddCommGroup;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instAddMonoid() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instAddCommGroup;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instMonoid() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instCommMonoid;
return x_1;
}
}
static lean_object* _init_l_Int_instCommSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instCommMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instAddGroup() {
_start:
{
lean_object* x_1; 
x_1 = l_Int_instAddCommGroup;
return x_1;
}
}
static lean_object* _init_l_Int_instAddCommSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instAddCommMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instAddSemigroup() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Int_instAddMonoid;
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
static lean_object* _init_l_Int_instDecidablePredEven___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Int_instDecidablePredEven(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_2 = l_Int_instDecidablePredEven___closed__1;
x_3 = lean_int_emod(x_1, x_2);
x_4 = l_Int_instAddCommGroup___closed__1;
x_5 = lean_int_dec_eq(x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Int_instDecidablePredEven___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Int_instDecidablePredEven(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Int_instDecidablePredIsSquare(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Int_sqrt(x_1);
x_3 = lean_int_mul(x_2, x_2);
lean_dec(x_2);
x_4 = lean_int_dec_eq(x_3, x_1);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Int_instDecidablePredIsSquare___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Int_instDecidablePredIsSquare(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Nat(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Int_Sqrt(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Group_Int(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Nat(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Int_Sqrt(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Int_instCommMonoid___closed__1 = _init_l_Int_instCommMonoid___closed__1();
lean_mark_persistent(l_Int_instCommMonoid___closed__1);
l_Int_instCommMonoid___closed__2 = _init_l_Int_instCommMonoid___closed__2();
lean_mark_persistent(l_Int_instCommMonoid___closed__2);
l_Int_instCommMonoid___closed__3 = _init_l_Int_instCommMonoid___closed__3();
lean_mark_persistent(l_Int_instCommMonoid___closed__3);
l_Int_instCommMonoid = _init_l_Int_instCommMonoid();
lean_mark_persistent(l_Int_instCommMonoid);
l_Int_instAddCommGroup___closed__1 = _init_l_Int_instAddCommGroup___closed__1();
lean_mark_persistent(l_Int_instAddCommGroup___closed__1);
l_Int_instAddCommGroup___closed__2 = _init_l_Int_instAddCommGroup___closed__2();
lean_mark_persistent(l_Int_instAddCommGroup___closed__2);
l_Int_instAddCommGroup___closed__3 = _init_l_Int_instAddCommGroup___closed__3();
lean_mark_persistent(l_Int_instAddCommGroup___closed__3);
l_Int_instAddCommGroup___closed__4 = _init_l_Int_instAddCommGroup___closed__4();
lean_mark_persistent(l_Int_instAddCommGroup___closed__4);
l_Int_instAddCommGroup___closed__5 = _init_l_Int_instAddCommGroup___closed__5();
lean_mark_persistent(l_Int_instAddCommGroup___closed__5);
l_Int_instAddCommGroup = _init_l_Int_instAddCommGroup();
lean_mark_persistent(l_Int_instAddCommGroup);
l_Int_instAddCommMonoid = _init_l_Int_instAddCommMonoid();
lean_mark_persistent(l_Int_instAddCommMonoid);
l_Int_instAddMonoid = _init_l_Int_instAddMonoid();
lean_mark_persistent(l_Int_instAddMonoid);
l_Int_instMonoid = _init_l_Int_instMonoid();
lean_mark_persistent(l_Int_instMonoid);
l_Int_instCommSemigroup = _init_l_Int_instCommSemigroup();
lean_mark_persistent(l_Int_instCommSemigroup);
l_Int_instSemigroup = _init_l_Int_instSemigroup();
lean_mark_persistent(l_Int_instSemigroup);
l_Int_instAddGroup = _init_l_Int_instAddGroup();
lean_mark_persistent(l_Int_instAddGroup);
l_Int_instAddCommSemigroup = _init_l_Int_instAddCommSemigroup();
lean_mark_persistent(l_Int_instAddCommSemigroup);
l_Int_instAddSemigroup = _init_l_Int_instAddSemigroup();
lean_mark_persistent(l_Int_instAddSemigroup);
l_Int_instDecidablePredEven___closed__1 = _init_l_Int_instDecidablePredEven___closed__1();
lean_mark_persistent(l_Int_instDecidablePredEven___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
