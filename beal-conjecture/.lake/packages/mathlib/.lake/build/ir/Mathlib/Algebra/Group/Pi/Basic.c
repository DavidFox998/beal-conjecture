// Lean compiler output
// Module: Mathlib.Algebra.Group.Pi.Basic
// Imports: Init Mathlib.Algebra.Group.Defs Mathlib.Data.Prod.Basic Mathlib.Data.Sum.Basic Mathlib.Logic.Unique Mathlib.Tactic.Spread Batteries.Tactic.Classical
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
LEAN_EXPORT lean_object* l_Pi_involutiveInv___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Function_update___at_Pi_mulSingle___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addMonoid___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instVAdd(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addLeftCancelMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_leftCancelSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulOneClass___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_monoid___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addLeftCancelSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instNeg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_single___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCommMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_leftCancelMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addGroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_invOneClass___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_rightCancelMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instNeg___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addRightCancelMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_negZeroClass___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_invOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_involutiveNeg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_monoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_cancelMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instAdd___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveZero(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instPow___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instDiv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instZero___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divisionCommMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divisionCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addRightCancelSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCancelMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_invOneClass(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addRightCancelSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_prod___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instInv___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_monoid___rarg___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addMonoid___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_involutiveInv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instInv(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instZero___elambda__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instNeg___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulSingle___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_rightCancelSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instAdd___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instVAdd___elambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_negZeroClass(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_update___at_Pi_single___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCommSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Function_update___at_Pi_mulSingle___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instPow(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instZero(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instNeg___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_group(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_involutiveNeg___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_divisionMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_rightCancelMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_single(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_cancelMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCancelMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_leftCancelSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_commMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_rightCancelSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSubtractionCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_negZeroClass___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulOneClass(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_update___at_Pi_single___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divisionMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_commSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_semigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instVAdd___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveOne___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addLeftCancelSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_commGroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCancelCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulOneClass___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addZeroClass___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instAdd(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_cancelCommMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCancelCommMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvOneMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_cancelCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addZeroClass(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOne(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_negZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCommSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOne___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegZeroMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_invOneClass___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subtractionMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instMul___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_AddMonoid_toAddZeroClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCommGroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveOne(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_commMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSub___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg___lambda__3(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSMul(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addGroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_commSemigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveZero___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSub___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instZero___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_leftCancelMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_update___at_Pi_mulSingle___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instMul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addMonoid___elambda__1(lean_object*, lean_object*);
lean_object* l_Monoid_toMulOneClass___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSub(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subtractionMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_single___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_update___at_Pi_single___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveOne___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instDiv___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSubtractionCommMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addMonoid___elambda__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_prod(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSMul___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegZeroMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_semigroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addCommGroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instVAdd___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addZeroClass___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_monoid___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveZero___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulSingle(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_commGroup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addRightCancelMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instSub___elambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_addSemigroup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_divInvOneMonoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_monoid(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instAdd___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_addLeftCancelMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_group___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_mulSingle___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOne___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instOne(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instOne___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instZero___elambda__1___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instZero___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instZero___elambda__1___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instZero___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instZero___elambda__1___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instZero(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instZero___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instMul___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_4);
x_5 = lean_apply_1(x_2, x_4);
lean_inc(x_4);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_apply_3(x_1, x_4, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Pi_instMul(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instAdd___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_4);
x_5 = lean_apply_1(x_2, x_4);
lean_inc(x_4);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_apply_3(x_1, x_4, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Pi_instAdd___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instAdd___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instAdd(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instAdd___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instSMul___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_4);
x_5 = lean_apply_1(x_3, x_4);
x_6 = lean_apply_3(x_1, x_4, x_2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_instSMul(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instSMul___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instVAdd___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_4);
x_5 = lean_apply_1(x_3, x_4);
x_6 = lean_apply_3(x_1, x_4, x_2, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_instVAdd___elambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instVAdd___elambda__1___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instVAdd___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instVAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instVAdd(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instVAdd___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instPow___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_4);
x_5 = lean_apply_1(x_2, x_4);
x_6 = lean_apply_3(x_1, x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_instPow(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instPow___rarg), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instInv___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
lean_inc(x_3);
x_4 = lean_apply_1(x_2, x_3);
x_5 = lean_apply_2(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Pi_instInv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instInv___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instNeg___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
lean_inc(x_3);
x_4 = lean_apply_1(x_2, x_3);
x_5 = lean_apply_2(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Pi_instNeg___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instNeg___elambda__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instNeg___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instNeg___elambda__1___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instNeg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instNeg___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instDiv___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_4);
x_5 = lean_apply_1(x_2, x_4);
lean_inc(x_4);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_apply_3(x_1, x_4, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Pi_instDiv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instDiv___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instSub___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_4);
x_5 = lean_apply_1(x_2, x_4);
lean_inc(x_4);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_apply_3(x_1, x_4, x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Pi_instSub___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instSub___elambda__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instSub___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instSub___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instSub(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instSub___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_semigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_semigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_semigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_commSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_commSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_commSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addCommSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addCommSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addCommSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_mulOneClass___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_mulOneClass___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_mulOneClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_mulOneClass___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instOne___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_alloc_closure((void*)(l_Pi_mulOneClass___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_mulOneClass(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_mulOneClass___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addZeroClass___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_addZeroClass___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_addZeroClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_addZeroClass___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instZero___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_alloc_closure((void*)(l_Pi_addZeroClass___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_addZeroClass(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addZeroClass___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_invOneClass___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_invOneClass___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_invOneClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_invOneClass___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instOne___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_alloc_closure((void*)(l_Pi_invOneClass___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instInv___rarg), 3, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_invOneClass(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_invOneClass___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_negZeroClass___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_negZeroClass___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_negZeroClass___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_negZeroClass___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instZero___elambda__1___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_alloc_closure((void*)(l_Pi_negZeroClass___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instNeg___elambda__1___rarg), 3, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_negZeroClass(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_negZeroClass___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_monoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_monoid___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = l_Monoid_toMulOneClass___rarg(x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_monoid___rarg___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_4);
x_5 = lean_apply_1(x_1, x_4);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_ctor_get(x_5, 2);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_apply_2(x_7, x_2, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Pi_monoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = l_Pi_mulOneClass___rarg(x_4);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__3), 4, 1);
lean_closure_set(x_7, 0, x_1);
x_8 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_8, 0, x_3);
lean_ctor_set(x_8, 1, x_6);
lean_ctor_set(x_8, 2, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Pi_monoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_monoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addMonoid___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_4);
x_5 = lean_apply_1(x_1, x_4);
x_6 = lean_ctor_get(x_5, 2);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_1(x_3, x_4);
x_8 = lean_apply_2(x_6, x_2, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Pi_addMonoid___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addMonoid___elambda__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addMonoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_addMonoid___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = l_AddMonoid_toAddZeroClass___rarg(x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_addMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_addMonoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Pi_addMonoid___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = l_Pi_addZeroClass___rarg(x_4);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_alloc_closure((void*)(l_Pi_addMonoid___elambda__1___rarg), 4, 1);
lean_closure_set(x_7, 0, x_1);
x_8 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_8, 0, x_3);
lean_ctor_set(x_8, 1, x_6);
lean_ctor_set(x_8, 2, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Pi_addMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_commMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_monoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_commMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_commMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_addMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addCommMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addCommMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_4);
x_5 = lean_apply_1(x_1, x_4);
x_6 = lean_apply_1(x_3, x_4);
x_7 = lean_ctor_get(x_5, 3);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_apply_2(x_7, x_2, x_6);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_divInvMonoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_Pi_monoid___rarg(x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Pi_divInvMonoid___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instInv___rarg), 3, 1);
lean_closure_set(x_5, 0, x_4);
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Pi_divInvMonoid___rarg___lambda__3), 2, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = lean_alloc_closure((void*)(l_Pi_instDiv___rarg), 4, 1);
lean_closure_set(x_7, 0, x_6);
x_8 = lean_alloc_closure((void*)(l_Pi_divInvMonoid___rarg___lambda__4), 4, 1);
lean_closure_set(x_8, 0, x_1);
x_9 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_5);
lean_ctor_set(x_9, 2, x_7);
lean_ctor_set(x_9, 3, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_divInvMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_inc(x_4);
x_5 = lean_apply_1(x_1, x_4);
x_6 = lean_ctor_get(x_5, 3);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_apply_1(x_3, x_4);
x_8 = lean_apply_2(x_6, x_2, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___elambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_subNegMonoid___elambda__1___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg___lambda__3(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_apply_1(x_1, x_2);
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_subNegMonoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = l_Pi_addMonoid___rarg(x_2);
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Pi_subNegMonoid___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instNeg___elambda__1___rarg), 3, 1);
lean_closure_set(x_5, 0, x_4);
lean_inc(x_1);
x_6 = lean_alloc_closure((void*)(l_Pi_subNegMonoid___rarg___lambda__3), 2, 1);
lean_closure_set(x_6, 0, x_1);
x_7 = lean_alloc_closure((void*)(l_Pi_instSub___elambda__1___rarg), 4, 1);
lean_closure_set(x_7, 0, x_6);
x_8 = lean_alloc_closure((void*)(l_Pi_subNegMonoid___elambda__1___rarg), 4, 1);
lean_closure_set(x_8, 0, x_1);
x_9 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_9, 0, x_3);
lean_ctor_set(x_9, 1, x_5);
lean_ctor_set(x_9, 2, x_7);
lean_ctor_set(x_9, 3, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_subNegMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvOneMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_divInvMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_divInvOneMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_divInvOneMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegZeroMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_subNegMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_subNegZeroMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_subNegZeroMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_involutiveInv___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instInv___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_involutiveInv(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_involutiveInv___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_involutiveNeg___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instNeg___elambda__1___rarg), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_involutiveNeg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_involutiveNeg___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_divisionMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_divInvMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_divisionMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_divisionMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_subtractionMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_subNegMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_subtractionMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_subtractionMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_divisionCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_divInvMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_divisionCommMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_divisionCommMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instSubtractionCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_subNegMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instSubtractionCommMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instSubtractionCommMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_group___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_divInvMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_group(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_group___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addGroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_subNegMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addGroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addGroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_commGroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_divInvMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_commGroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_commGroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addCommGroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_subNegMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addCommGroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addCommGroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_leftCancelSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_leftCancelSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_leftCancelSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addLeftCancelSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addLeftCancelSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addLeftCancelSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_rightCancelSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_rightCancelSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_rightCancelSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addRightCancelSemigroup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addRightCancelSemigroup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addRightCancelSemigroup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_leftCancelMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_1);
x_4 = l_Pi_monoid___rarg(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_4, 2);
lean_dec(x_6);
x_7 = lean_ctor_get(x_4, 0);
lean_dec(x_7);
x_8 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__3), 4, 1);
lean_closure_set(x_8, 0, x_1);
lean_ctor_set(x_4, 2, x_8);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_4, 1);
lean_inc(x_9);
lean_dec(x_4);
x_10 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__3), 4, 1);
lean_closure_set(x_10, 0, x_1);
x_11 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_11, 0, x_3);
lean_ctor_set(x_11, 1, x_9);
lean_ctor_set(x_11, 2, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Pi_leftCancelMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_leftCancelMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addLeftCancelMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_addMonoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_1);
x_4 = l_Pi_addMonoid___rarg(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_4, 2);
lean_dec(x_6);
x_7 = lean_ctor_get(x_4, 0);
lean_dec(x_7);
x_8 = lean_alloc_closure((void*)(l_Pi_addMonoid___elambda__1___rarg), 4, 1);
lean_closure_set(x_8, 0, x_1);
lean_ctor_set(x_4, 2, x_8);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_4, 1);
lean_inc(x_9);
lean_dec(x_4);
x_10 = lean_alloc_closure((void*)(l_Pi_addMonoid___elambda__1___rarg), 4, 1);
lean_closure_set(x_10, 0, x_1);
x_11 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_11, 0, x_3);
lean_ctor_set(x_11, 1, x_9);
lean_ctor_set(x_11, 2, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Pi_addLeftCancelMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addLeftCancelMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_rightCancelMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instMul___rarg), 4, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_1);
x_4 = l_Pi_monoid___rarg(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_4, 2);
lean_dec(x_6);
x_7 = lean_ctor_get(x_4, 0);
lean_dec(x_7);
x_8 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__3), 4, 1);
lean_closure_set(x_8, 0, x_1);
lean_ctor_set(x_4, 2, x_8);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_4, 1);
lean_inc(x_9);
lean_dec(x_4);
x_10 = lean_alloc_closure((void*)(l_Pi_monoid___rarg___lambda__3), 4, 1);
lean_closure_set(x_10, 0, x_1);
x_11 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_11, 0, x_3);
lean_ctor_set(x_11, 1, x_9);
lean_ctor_set(x_11, 2, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Pi_rightCancelMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_rightCancelMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addRightCancelMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_addMonoid___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instAdd___elambda__1___rarg), 4, 1);
lean_closure_set(x_3, 0, x_2);
lean_inc(x_1);
x_4 = l_Pi_addMonoid___rarg(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_4, 2);
lean_dec(x_6);
x_7 = lean_ctor_get(x_4, 0);
lean_dec(x_7);
x_8 = lean_alloc_closure((void*)(l_Pi_addMonoid___elambda__1___rarg), 4, 1);
lean_closure_set(x_8, 0, x_1);
lean_ctor_set(x_4, 2, x_8);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_4, 1);
lean_inc(x_9);
lean_dec(x_4);
x_10 = lean_alloc_closure((void*)(l_Pi_addMonoid___elambda__1___rarg), 4, 1);
lean_closure_set(x_10, 0, x_1);
x_11 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_11, 0, x_3);
lean_ctor_set(x_11, 1, x_9);
lean_ctor_set(x_11, 2, x_10);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Pi_addRightCancelMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addRightCancelMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_cancelMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_leftCancelMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_cancelMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_cancelMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addCancelMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_addLeftCancelMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addCancelMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addCancelMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_cancelCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_leftCancelMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_cancelCommMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_cancelCommMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_addCancelCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Pi_addLeftCancelMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_addCancelCommMonoid(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_addCancelCommMonoid___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_update___at_Pi_mulSingle___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
lean_inc(x_5);
x_6 = lean_apply_2(x_1, x_5, x_3);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_apply_1(x_2, x_5);
return x_8;
}
else
{
lean_dec(x_5);
lean_dec(x_2);
lean_inc(x_4);
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Function_update___at_Pi_mulSingle___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Function_update___at_Pi_mulSingle___spec__1___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_mulSingle___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Function_update___at_Pi_mulSingle___spec__1___rarg(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_mulSingle(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_mulSingle___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_update___at_Pi_mulSingle___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Function_update___at_Pi_mulSingle___spec__1___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_mulSingle___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Pi_mulSingle___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Function_update___at_Pi_single___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; uint8_t x_7; 
lean_inc(x_5);
x_6 = lean_apply_2(x_1, x_5, x_3);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
if (x_7 == 0)
{
lean_object* x_8; 
x_8 = lean_apply_1(x_2, x_5);
return x_8;
}
else
{
lean_dec(x_5);
lean_dec(x_2);
lean_inc(x_4);
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Function_update___at_Pi_single___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Function_update___at_Pi_single___spec__1___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_single___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_alloc_closure((void*)(l_Pi_instZero___elambda__1___rarg), 2, 1);
lean_closure_set(x_6, 0, x_2);
x_7 = l_Function_update___at_Pi_single___spec__1___rarg(x_1, x_6, x_3, x_4, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Pi_single(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_single___rarg___boxed), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Function_update___at_Pi_single___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Function_update___at_Pi_single___spec__1___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_single___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Pi_single___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_prod___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_3);
x_4 = lean_apply_1(x_1, x_3);
x_5 = lean_apply_1(x_2, x_3);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_4);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_prod(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_prod___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveOne___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveOne(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_uniqueOfSurjectiveOne___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveOne___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_uniqueOfSurjectiveOne___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveZero___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveZero(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_uniqueOfSurjectiveZero___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_uniqueOfSurjectiveZero___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_uniqueOfSurjectiveZero___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Group_Defs(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Prod_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Sum_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Logic_Unique(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Spread(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Classical(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Group_Pi_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Group_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Prod_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Sum_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Logic_Unique(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Spread(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Classical(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
