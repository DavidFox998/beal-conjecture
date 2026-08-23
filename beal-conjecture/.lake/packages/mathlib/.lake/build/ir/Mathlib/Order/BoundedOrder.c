// Lean compiler output
// Module: Mathlib.Order.BoundedOrder
// Imports: Init Mathlib.Order.Lattice Mathlib.Order.ULift Mathlib.Tactic.PushNeg
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
LEAN_EXPORT lean_object* l_Prod_instOrderTop(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderTop___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOrderTop___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBot(lean_object*);
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_boundedOrder___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderBot(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOrderBot___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_BoundedOrder_lift___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderTop___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderTop_lift___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderTop_lift___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderTop(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderBot___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instTopForall___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderBot___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderBot_lift___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOrderBot(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBotForall(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instTop___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Prod_instBot___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___rarg___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOrderTop(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instTop(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_boundedOrder(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOrderBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderTop___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderBot___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_BoundedOrder_lift___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instTop___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderTop___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instTop(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Prod_instOrderBot___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instTop(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderBot___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Subtype_boundedOrder___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBot___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Prod_instBot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instTop___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_BoundedOrder_lift(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instTop___rarg(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Subtype_orderTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderBot_lift___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instOrderTop___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderBot_lift(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderBot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBot(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderBot___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Bool_instBoundedOrder;
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Bool_instBoundedOrder___closed__1;
LEAN_EXPORT lean_object* l_Subtype_orderTop(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instTopForall(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instOrderTop___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderTop_lift(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instOrderTop___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_ULift_instBot___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instOrderBot(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instOrderTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Pi_instBotForall___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderTop_lift___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Prod_instOrderBot___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderBot_lift___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_instTop___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instTop(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_instTop___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instTop___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_instTop___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBot___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBot(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_instBot___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBot___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_instBot___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_OrderDual_instOrderTop___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_instOrderTop___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderTop___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_OrderDual_instOrderTop(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_OrderDual_instOrderBot___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_instOrderBot___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instOrderBot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_OrderDual_instOrderBot(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_ctor_get(x_1, 1);
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_OrderDual_instBoundedOrder___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_instBoundedOrder___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_instBoundedOrder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_OrderDual_instBoundedOrder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instBotForall___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instBotForall(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instBotForall___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instTopForall___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instTopForall(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Pi_instTopForall___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Pi_instOrderTop___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instTopForall___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instOrderTop(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instOrderTop___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instOrderTop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Pi_instOrderTop(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instOrderBot___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Pi_instBotForall___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Pi_instOrderBot(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instOrderBot___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instOrderBot___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Pi_instOrderBot(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
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
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
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
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Pi_instBoundedOrder___rarg___lambda__1), 2, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_alloc_closure((void*)(l_Pi_instTopForall___rarg), 2, 1);
lean_closure_set(x_3, 0, x_2);
x_4 = lean_alloc_closure((void*)(l_Pi_instBoundedOrder___rarg___lambda__2), 2, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_alloc_closure((void*)(l_Pi_instBotForall___rarg), 2, 1);
lean_closure_set(x_5, 0, x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Pi_instBoundedOrder___rarg), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Pi_instBoundedOrder___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Pi_instBoundedOrder(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderTop_lift___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderTop_lift(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_OrderTop_lift___rarg___boxed), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderTop_lift___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_OrderTop_lift___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_OrderTop_lift___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_OrderTop_lift(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderBot_lift___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_OrderBot_lift(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_OrderBot_lift___rarg___boxed), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderBot_lift___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_OrderBot_lift___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_OrderBot_lift___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_OrderBot_lift(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_BoundedOrder_lift___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_2);
lean_ctor_set(x_10, 1, x_3);
return x_10;
}
}
LEAN_EXPORT lean_object* l_BoundedOrder_lift(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_BoundedOrder_lift___rarg___boxed), 9, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_BoundedOrder_lift___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_BoundedOrder_lift___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderBot___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderBot(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Subtype_orderBot___rarg___boxed), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderBot___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Subtype_orderBot___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderBot___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Subtype_orderBot(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderTop(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Subtype_orderTop___rarg___boxed), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderTop___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Subtype_orderTop___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Subtype_orderTop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Subtype_orderTop(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Subtype_boundedOrder___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_1, 0);
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_1);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Subtype_boundedOrder(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Subtype_boundedOrder___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Subtype_boundedOrder___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Subtype_boundedOrder(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Prod_instTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instTop(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Prod_instTop___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instBot___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instBot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Prod_instBot___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instOrderTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instOrderTop(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Prod_instOrderTop___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Prod_instOrderTop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Prod_instOrderTop(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Prod_instOrderBot___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instOrderBot(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Prod_instOrderBot___rarg), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Prod_instOrderBot___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Prod_instOrderBot(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
lean_inc(x_3);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
x_6 = lean_ctor_get(x_1, 1);
x_7 = lean_ctor_get(x_2, 1);
lean_inc(x_7);
lean_inc(x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_5);
lean_ctor_set(x_9, 1, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_closure((void*)(l_Prod_instBoundedOrder___rarg___boxed), 2, 0);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Prod_instBoundedOrder___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Prod_instBoundedOrder___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Prod_instBoundedOrder(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_ULift_instTop___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_ULift_instTop(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instTop___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instTop___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_ULift_instTop___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instBot___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_ULift_instBot(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_ULift_instBot___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instBot___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_ULift_instBot___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderBot___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderBot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ULift_instOrderBot___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderBot___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_ULift_instOrderBot___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderBot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instOrderBot(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderTop___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderTop(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ULift_instOrderTop___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderTop___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_ULift_instOrderTop___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instOrderTop___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instOrderTop(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_inc(x_2);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_ULift_instBoundedOrder___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_ULift_instBoundedOrder___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_ULift_instBoundedOrder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_ULift_instBoundedOrder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_l_Bool_instBoundedOrder___closed__1() {
_start:
{
uint8_t x_1; uint8_t x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = 1;
x_2 = 0;
x_3 = lean_box(x_1);
x_4 = lean_box(x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
static lean_object* _init_l_Bool_instBoundedOrder() {
_start:
{
lean_object* x_1; 
x_1 = l_Bool_instBoundedOrder___closed__1;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Lattice(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_ULift(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_PushNeg(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_BoundedOrder(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Lattice(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_ULift(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_PushNeg(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Bool_instBoundedOrder___closed__1 = _init_l_Bool_instBoundedOrder___closed__1();
lean_mark_persistent(l_Bool_instBoundedOrder___closed__1);
l_Bool_instBoundedOrder = _init_l_Bool_instBoundedOrder();
lean_mark_persistent(l_Bool_instBoundedOrder);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
