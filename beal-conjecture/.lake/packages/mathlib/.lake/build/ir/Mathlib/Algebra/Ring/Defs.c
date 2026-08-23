// Lean compiler output
// Module: Mathlib.Algebra.Ring.Defs
// Imports: Init Mathlib.Algebra.Group.Defs Mathlib.Algebra.GroupWithZero.Defs Mathlib.Data.Int.Cast.Defs Mathlib.Tactic.Spread Mathlib.Util.AssertExists
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
LEAN_EXPORT lean_object* l_Semiring_toNonAssocSemiring___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toNonUnitalCommRing___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalNonAssocCommRing___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toHasDistribNeg___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_toAddCommMonoidWithOne(lean_object*);
LEAN_EXPORT lean_object* l_instSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_natCast___default___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalNonAssocCommRing(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toNonUnitalCommRing(lean_object*);
LEAN_EXPORT lean_object* l_Ring_intCast___default(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toNonUnitalCommSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_intCast___default___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Ring_toNonAssocRing(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_natCast___default___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toHasDistribNeg___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalRing_toNonUnitalSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toNonUnitalCommSemiring(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toAddCommGroupWithOne___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_natCast___default___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Semiring_natCast___default(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_toMulZeroOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_sub___default___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalSemiring_toSemigroupWithZero___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommSemiring_toCommSemigroup(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_toAddCommGroupWithOne___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_sub___default___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalCommSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_toAddCommMonoidWithOne___rarg___boxed(lean_object*);
lean_object* l_Int_castDef___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoidWithZero___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass(lean_object*);
LEAN_EXPORT lean_object* l_instSemiring(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoidWithZero(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_toNonAssocSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_intCast___default___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Ring_natCast___default___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommSemiring_toCommMagma___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_natCast___default___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_MulZeroClass_negZeroClass___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toAddCommGroupWithOne(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toNonUnitalNonAssocSemiring(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_npow___default___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_CommRing_npow___default___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_toMulZeroOneClass(lean_object*);
LEAN_EXPORT lean_object* l_Ring_natCast___default___rarg(lean_object*, lean_object*);
lean_object* l_SubNegMonoid_sub_x27___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toNonUnitalRing(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalSemiring_toSemigroupWithZero(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommSemiring_toCommSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toCommMonoid___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoidWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_toAddCommMonoidWithOne___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_intCast___default(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toHasDistribNeg(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toAddCommGroupWithOne___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Ring_sub___default___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Semiring_toMonoidWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_toAddCommGroupWithOne(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toCommSemiring(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toNonUnitalRing___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_toNonAssocSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_npow___default___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_npow___default___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Ring_toNonAssocRing___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalCommSemiring(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoid___rarg(lean_object*);
lean_object* l_npowRec___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddCommGroup(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_natCast___default___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommSemiring_toCommMagma(lean_object*);
LEAN_EXPORT lean_object* l_Ring_sub___default(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_natCast___default___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MulZeroClass_negZeroClass(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_npow___default(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddCommGroup___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toCommSemiring___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalRing_toNonUnitalSemiring(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toDistrib(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoid___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_CommSemiring_npow___default___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_sub___default(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_npow___default(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_npow___default(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_natCast___default(lean_object*);
LEAN_EXPORT lean_object* l_CommRing_npow___default___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalSemiring_toSemigroupWithZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommSemiring_toCommSemigroup___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_toNonAssocSemiring(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_toAddCommGroupWithOne___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocRing_toNonAssocSemiring(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne(lean_object*);
LEAN_EXPORT lean_object* l_Semiring_toMonoidWithZero___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_NonAssocSemiring_natCast___default(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toNonUnitalNonAssocSemiring___rarg(lean_object*);
lean_object* l_Nat_unaryCast___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_MulZeroClass_negZeroClass___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Ring_natCast___default(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalNonAssocCommRing___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Ring_intCast___default___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Semiring_toMonoidWithZero(lean_object*);
LEAN_EXPORT lean_object* l_Ring_toAddCommGroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommSemiring_toCommMagma___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Ring_intCast___default___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_CommRing_toCommSemiring___rarg(lean_object*);
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 1);
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_inc(x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toDistrib(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalNonAssocSemiring_toDistrib___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toDistrib___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalNonAssocSemiring_toDistrib___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_inc(x_3);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalNonAssocSemiring_toMulZeroClass___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalSemiring_toSemigroupWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_inc(x_3);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_NonUnitalSemiring_toSemigroupWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalSemiring_toSemigroupWithZero___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalSemiring_toSemigroupWithZero___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalSemiring_toSemigroupWithZero___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_toMulZeroOneClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_dec(x_1);
x_4 = !lean_is_exclusive(x_2);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_2, 0);
lean_ctor_set(x_2, 0, x_3);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_2);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_8 = lean_ctor_get(x_2, 0);
x_9 = lean_ctor_get(x_2, 1);
lean_inc(x_9);
lean_inc(x_8);
lean_dec(x_2);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_3);
lean_ctor_set(x_10, 1, x_9);
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_11);
lean_dec(x_8);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_toMulZeroOneClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocSemiring_toMulZeroOneClass___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_toAddCommMonoidWithOne___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = lean_ctor_get(x_1, 2);
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_2);
x_6 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set(x_6, 1, x_4);
lean_ctor_set(x_6, 2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_toAddCommMonoidWithOne(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocSemiring_toAddCommMonoidWithOne___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_toAddCommMonoidWithOne___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonAssocSemiring_toAddCommMonoidWithOne___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_natCast___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 0);
lean_inc(x_6);
lean_dec(x_4);
x_7 = l_Nat_unaryCast___rarg(x_2, x_5, x_6, x_3);
lean_dec(x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_natCast___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocSemiring_natCast___default___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocSemiring_natCast___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_NonAssocSemiring_natCast___default___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toNonUnitalNonAssocSemiring___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
lean_ctor_set(x_1, 0, x_4);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_1);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toNonUnitalNonAssocSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalNonAssocRing_toNonUnitalNonAssocSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalRing_toNonUnitalSemiring___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
lean_ctor_set(x_1, 0, x_4);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_1);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_NonUnitalRing_toNonUnitalSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalRing_toNonUnitalSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_toNonAssocSemiring___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 2);
lean_inc(x_5);
lean_dec(x_1);
x_6 = !lean_is_exclusive(x_2);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_2, 0);
lean_dec(x_7);
x_8 = lean_ctor_get(x_3, 0);
lean_inc(x_8);
lean_dec(x_3);
lean_ctor_set(x_2, 0, x_8);
x_9 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_9, 0, x_2);
lean_ctor_set(x_9, 1, x_4);
lean_ctor_set(x_9, 2, x_5);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_2, 1);
lean_inc(x_10);
lean_dec(x_2);
x_11 = lean_ctor_get(x_3, 0);
lean_inc(x_11);
lean_dec(x_3);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_10);
x_13 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_4);
lean_ctor_set(x_13, 2, x_5);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_toNonAssocSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocRing_toNonAssocSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_toAddCommGroupWithOne___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_2, 0);
x_4 = lean_ctor_get(x_1, 3);
x_5 = lean_ctor_get(x_1, 2);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_7 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_7, 0, x_3);
lean_ctor_set(x_7, 1, x_4);
lean_ctor_set(x_7, 2, x_5);
lean_ctor_set(x_7, 3, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_toAddCommGroupWithOne(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocRing_toAddCommGroupWithOne___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_toAddCommGroupWithOne___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonAssocRing_toAddCommGroupWithOne___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_sub___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_SubNegMonoid_sub_x27___rarg(x_9, x_10, x_6, x_7);
return x_11;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_sub___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocRing_sub___default___rarg___boxed), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_sub___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_NonAssocRing_sub___default___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_natCast___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
x_8 = l_Nat_unaryCast___rarg(x_2, x_6, x_7, x_3);
lean_dec(x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_natCast___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocRing_natCast___default___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_natCast___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_NonAssocRing_natCast___default___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_intCast___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_ctor_get(x_7, 1);
lean_inc(x_8);
lean_dec(x_7);
x_9 = l_Int_castDef___rarg(x_3, x_8, x_6);
return x_9;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_intCast___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonAssocRing_intCast___default___rarg___boxed), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonAssocRing_intCast___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_NonAssocRing_intCast___default___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Semiring_toNonAssocSemiring___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_ctor_get(x_1, 2);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_5 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_3);
lean_ctor_set(x_5, 2, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Semiring_toNonAssocSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Semiring_toNonAssocSemiring___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Semiring_toNonAssocSemiring___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Semiring_toNonAssocSemiring___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Semiring_toMonoidWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_ctor_get(x_1, 3);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_5);
x_6 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_3);
lean_ctor_set(x_6, 2, x_4);
x_7 = lean_ctor_get(x_2, 0);
x_8 = lean_ctor_get(x_7, 1);
lean_inc(x_8);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_6);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Semiring_toMonoidWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Semiring_toMonoidWithZero___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Semiring_toMonoidWithZero___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Semiring_toMonoidWithZero___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Semiring_natCast___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 0);
lean_inc(x_6);
lean_dec(x_4);
x_7 = l_Nat_unaryCast___rarg(x_2, x_5, x_6, x_3);
lean_dec(x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Semiring_natCast___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Semiring_natCast___default___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Semiring_natCast___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Semiring_natCast___default___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Semiring_npow___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_npowRec___rarg(x_2, x_5, x_3, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Semiring_npow___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Semiring_npow___default___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Semiring_npow___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Semiring_npow___default___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddCommGroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_2, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_ctor_get(x_1, 2);
x_6 = lean_ctor_get(x_1, 3);
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_7);
x_8 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_4);
lean_ctor_set(x_8, 2, x_5);
lean_ctor_set(x_8, 3, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddCommGroup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_toAddCommGroup___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddCommGroup___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Ring_toAddCommGroup___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 3);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_toAddGroupWithOne___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_2 = lean_ctor_get(x_1, 4);
lean_inc(x_2);
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_ctor_get(x_3, 1);
lean_inc(x_7);
lean_dec(x_3);
x_8 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_6);
lean_ctor_set(x_8, 2, x_7);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
x_10 = lean_ctor_get(x_1, 2);
lean_inc(x_10);
x_11 = lean_alloc_closure((void*)(l_Ring_toAddGroupWithOne___elambda__1___rarg), 3, 1);
lean_closure_set(x_11, 0, x_1);
x_12 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_12, 0, x_2);
lean_ctor_set(x_12, 1, x_8);
lean_ctor_set(x_12, 2, x_9);
lean_ctor_set(x_12, 3, x_10);
lean_ctor_set(x_12, 4, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Ring_toAddGroupWithOne(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_toAddGroupWithOne___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_natCast___default___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
x_8 = l_Nat_unaryCast___rarg(x_3, x_6, x_7, x_2);
lean_dec(x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Ring_natCast___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_natCast___default___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_natCast___default___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Ring_natCast___default___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Ring_sub___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_SubNegMonoid_sub_x27___rarg(x_6, x_2, x_3, x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Ring_sub___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_sub___default___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_intCast___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 2);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Int_castDef___rarg(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Ring_intCast___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_intCast___default___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_intCast___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Ring_intCast___default___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommSemiring_toCommMagma___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommSemiring_toCommMagma(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalNonAssocCommSemiring_toCommMagma___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommSemiring_toCommMagma___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalNonAssocCommSemiring_toCommMagma___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommSemiring_toCommSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 1);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommSemiring_toCommSemigroup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalCommSemiring_toCommSemigroup___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommSemiring_toCommSemigroup___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalCommSemiring_toCommSemigroup___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
x_4 = lean_ctor_get(x_1, 3);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_5);
x_6 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_6, 0, x_5);
lean_ctor_set(x_6, 1, x_3);
lean_ctor_set(x_6, 2, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommSemiring_toCommMonoid___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoid___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_CommSemiring_toCommMonoid___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_npow___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = l_npowRec___rarg(x_4, x_6, x_2, x_3);
lean_dec(x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_npow___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommSemiring_npow___default___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_npow___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_CommSemiring_npow___default___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toNonUnitalCommSemiring___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_CommSemiring_toCommMonoid___rarg(x_1);
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 1);
lean_dec(x_5);
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
lean_dec(x_2);
lean_ctor_set(x_3, 1, x_6);
return x_3;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_3, 0);
lean_inc(x_7);
lean_dec(x_3);
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_7);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toNonUnitalCommSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommSemiring_toNonUnitalCommSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoidWithZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = l_CommSemiring_toCommMonoid___rarg(x_1);
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoidWithZero(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommSemiring_toCommMonoidWithZero___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommSemiring_toCommMonoidWithZero___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_CommSemiring_toCommMonoidWithZero___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MulZeroClass_negZeroClass___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_MulZeroClass_negZeroClass(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_MulZeroClass_negZeroClass___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_MulZeroClass_negZeroClass___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_MulZeroClass_negZeroClass___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toHasDistribNeg___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
return x_3;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toHasDistribNeg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalNonAssocRing_toHasDistribNeg___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocRing_toHasDistribNeg___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalNonAssocRing_toHasDistribNeg___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_toNonUnitalRing___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 2);
lean_inc(x_5);
x_6 = lean_ctor_get(x_1, 3);
lean_inc(x_6);
lean_dec(x_1);
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
lean_ctor_set(x_9, 2, x_5);
lean_ctor_set(x_9, 3, x_6);
lean_ctor_set(x_3, 0, x_9);
return x_3;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_3, 0);
x_11 = lean_ctor_get(x_3, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_3);
x_12 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_4);
lean_ctor_set(x_12, 2, x_5);
lean_ctor_set(x_12, 3, x_6);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Ring_toNonUnitalRing(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_toNonUnitalRing___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Ring_toNonAssocRing___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 2);
lean_inc(x_5);
x_6 = lean_ctor_get(x_1, 3);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 4);
lean_inc(x_7);
lean_dec(x_1);
x_8 = !lean_is_exclusive(x_2);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_2, 1);
x_10 = lean_ctor_get(x_2, 2);
x_11 = lean_ctor_get(x_2, 3);
lean_dec(x_11);
x_12 = lean_ctor_get(x_2, 0);
lean_dec(x_12);
x_13 = !lean_is_exclusive(x_3);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_3, 0);
lean_ctor_set(x_2, 3, x_6);
lean_ctor_set(x_2, 2, x_5);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_14);
lean_ctor_set(x_3, 0, x_2);
x_15 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_15, 0, x_3);
lean_ctor_set(x_15, 1, x_9);
lean_ctor_set(x_15, 2, x_10);
lean_ctor_set(x_15, 3, x_7);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_3, 0);
x_17 = lean_ctor_get(x_3, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_3);
lean_ctor_set(x_2, 3, x_6);
lean_ctor_set(x_2, 2, x_5);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_16);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_2);
lean_ctor_set(x_18, 1, x_17);
x_19 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_9);
lean_ctor_set(x_19, 2, x_10);
lean_ctor_set(x_19, 3, x_7);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_20 = lean_ctor_get(x_2, 1);
x_21 = lean_ctor_get(x_2, 2);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_2);
x_22 = lean_ctor_get(x_3, 0);
lean_inc(x_22);
x_23 = lean_ctor_get(x_3, 1);
lean_inc(x_23);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_24 = x_3;
} else {
 lean_dec_ref(x_3);
 x_24 = lean_box(0);
}
x_25 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_25, 0, x_22);
lean_ctor_set(x_25, 1, x_4);
lean_ctor_set(x_25, 2, x_5);
lean_ctor_set(x_25, 3, x_6);
if (lean_is_scalar(x_24)) {
 x_26 = lean_alloc_ctor(0, 2, 0);
} else {
 x_26 = x_24;
}
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_23);
x_27 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_20);
lean_ctor_set(x_27, 2, x_21);
lean_ctor_set(x_27, 3, x_7);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Ring_toNonAssocRing(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Ring_toNonAssocRing___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_instSemiring___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
lean_dec(x_1);
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get(x_2, 1);
x_6 = lean_ctor_get(x_2, 2);
x_7 = lean_ctor_get(x_2, 3);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_dec(x_2);
x_8 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_8, 0, x_4);
lean_ctor_set(x_8, 1, x_5);
lean_ctor_set(x_8, 2, x_6);
lean_ctor_set(x_8, 3, x_7);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_instSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_instSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
lean_ctor_set(x_1, 0, x_4);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_1);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalNonAssocCommRing_toNonUnitalNonAssocCommSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalNonAssocCommRing___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalNonAssocCommRing(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalCommRing_toNonUnitalNonAssocCommRing___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalNonAssocCommRing___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_NonUnitalCommRing_toNonUnitalNonAssocCommRing___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalCommSemiring___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
lean_ctor_set(x_1, 0, x_4);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_1);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_NonUnitalCommRing_toNonUnitalCommSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_NonUnitalCommRing_toNonUnitalCommSemiring___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_2, 0);
x_4 = lean_ctor_get(x_2, 1);
x_5 = lean_ctor_get(x_2, 3);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_6);
x_7 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_4);
lean_ctor_set(x_7, 2, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_CommRing_toCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommRing_toCommMonoid___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toCommMonoid___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_CommRing_toCommMonoid___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_npow___default___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 0);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = l_npowRec___rarg(x_5, x_7, x_2, x_3);
lean_dec(x_5);
return x_8;
}
}
LEAN_EXPORT lean_object* l_CommRing_npow___default(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommRing_npow___default___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_npow___default___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_CommRing_npow___default___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_CommRing_toCommSemiring___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toCommSemiring(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommRing_toCommSemiring___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toCommSemiring___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_CommRing_toCommSemiring___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toNonUnitalCommRing___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
lean_dec(x_2);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 2);
lean_inc(x_5);
x_6 = lean_ctor_get(x_1, 3);
lean_inc(x_6);
lean_dec(x_1);
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
lean_ctor_set(x_9, 2, x_5);
lean_ctor_set(x_9, 3, x_6);
lean_ctor_set(x_3, 0, x_9);
return x_3;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_3, 0);
x_11 = lean_ctor_get(x_3, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_dec(x_3);
x_12 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_4);
lean_ctor_set(x_12, 2, x_5);
lean_ctor_set(x_12, 3, x_6);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_CommRing_toNonUnitalCommRing(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommRing_toNonUnitalCommRing___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toAddCommGroupWithOne___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_2, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_ctor_get(x_1, 2);
x_6 = lean_ctor_get(x_1, 3);
x_7 = lean_ctor_get(x_1, 4);
x_8 = lean_ctor_get(x_3, 0);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_8);
x_9 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_4);
lean_ctor_set(x_9, 2, x_5);
lean_ctor_set(x_9, 3, x_6);
x_10 = lean_ctor_get(x_2, 2);
x_11 = lean_ctor_get(x_2, 1);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_7);
x_12 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_12, 0, x_9);
lean_ctor_set(x_12, 1, x_7);
lean_ctor_set(x_12, 2, x_10);
lean_ctor_set(x_12, 3, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_CommRing_toAddCommGroupWithOne(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_CommRing_toAddCommGroupWithOne___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_CommRing_toAddCommGroupWithOne___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_CommRing_toAddCommGroupWithOne___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_GroupWithZero_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Int_Cast_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Spread(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Util_AssertExists(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Ring_Defs(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_GroupWithZero_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Int_Cast_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Spread(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Util_AssertExists(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
