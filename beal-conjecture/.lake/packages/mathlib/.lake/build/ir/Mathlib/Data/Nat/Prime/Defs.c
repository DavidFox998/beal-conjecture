// Lean compiler output
// Module: Mathlib.Data.Nat.Prime.Defs
// Imports: Init Mathlib.Algebra.Associated.Basic Mathlib.Algebra.Ring.Parity
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
LEAN_EXPORT lean_object* l_Nat_Primes_instRepr___boxed(lean_object*, lean_object*);
uint8_t l_Nat_decidable__dvd(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_decidablePrime1___lambda__1___boxed(lean_object*, lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
LEAN_EXPORT lean_object* l_Nat_minFac(lean_object*);
LEAN_EXPORT lean_object* l_Nat_monoid_primePow(lean_object*);
LEAN_EXPORT uint8_t l_Nat_instPrimesDecidableEq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_Primes_inhabitedPrimes;
LEAN_EXPORT lean_object* l_Nat_monoid_primePow___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_minFac___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Nat_minFacAux(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_decidablePrime1(lean_object*);
LEAN_EXPORT lean_object* l_Nat_Primes_coeNat(lean_object*);
lean_object* l_Nat_decidableLoHi(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_minFacAux___boxed(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Nat_decidablePrime1___lambda__1(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_Primes_coeNat___boxed(lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_Primes_instRepr(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_decidablePrime___boxed(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Nat_decidablePrime(lean_object*);
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
LEAN_EXPORT lean_object* l_Nat_instPrimesDecidableEq___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Nat_decidablePrime1___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; 
x_3 = l_Nat_decidable__dvd(x_2, x_1);
x_4 = l_instDecidableNot___rarg(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_decidablePrime1(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(2u);
x_3 = lean_nat_dec_le(x_2, x_1);
if (x_3 == 0)
{
uint8_t x_4; lean_object* x_5; 
lean_dec(x_1);
x_4 = 0;
x_5 = lean_box(x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Nat_decidablePrime1___lambda__1___boxed), 2, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = l_Nat_decidableLoHi(x_2, x_1, lean_box(0), x_6);
lean_dec(x_1);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Nat_decidablePrime1___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Nat_decidablePrime1___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_minFacAux(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_nat_mul(x_2, x_2);
x_4 = lean_nat_dec_lt(x_1, x_3);
lean_dec(x_3);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = l_Nat_decidable__dvd(x_2, x_1);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_unsigned_to_nat(2u);
x_7 = lean_nat_add(x_2, x_6);
lean_dec(x_2);
x_2 = x_7;
goto _start;
}
else
{
return x_2;
}
}
else
{
lean_dec(x_2);
lean_inc(x_1);
return x_1;
}
}
}
LEAN_EXPORT lean_object* l_Nat_minFacAux___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_minFacAux(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nat_minFac(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(2u);
x_3 = l_Nat_decidable__dvd(x_2, x_1);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_unsigned_to_nat(3u);
x_5 = l_Nat_minFacAux(x_1, x_4);
return x_5;
}
else
{
lean_object* x_6; 
x_6 = lean_unsigned_to_nat(2u);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Nat_minFac___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Nat_minFac(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Nat_decidablePrime(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(2u);
x_3 = lean_nat_dec_le(x_2, x_1);
if (x_3 == 0)
{
uint8_t x_4; 
x_4 = 0;
return x_4;
}
else
{
lean_object* x_5; uint8_t x_6; 
x_5 = l_Nat_minFac(x_1);
x_6 = lean_nat_dec_eq(x_5, x_1);
lean_dec(x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Nat_decidablePrime___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Nat_decidablePrime(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Nat_instPrimesDecidableEq(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_nat_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Nat_instPrimesDecidableEq___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Nat_instPrimesDecidableEq(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_Primes_instRepr(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l___private_Init_Data_Repr_0__Nat_reprFast(x_1);
x_4 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Nat_Primes_instRepr___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Nat_Primes_instRepr(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Nat_Primes_inhabitedPrimes() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(2u);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Nat_Primes_coeNat(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Nat_Primes_coeNat___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Nat_Primes_coeNat(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Nat_monoid_primePow___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 2);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_3, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Nat_monoid_primePow(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Nat_monoid_primePow___rarg), 3, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Associated_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Ring_Parity(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Nat_Prime_Defs(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Associated_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Ring_Parity(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Nat_Primes_inhabitedPrimes = _init_l_Nat_Primes_inhabitedPrimes();
lean_mark_persistent(l_Nat_Primes_inhabitedPrimes);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
