// Lean compiler output
// Module: Mathlib.Algebra.Order.Monoid.OrderDual
// Imports: Init Mathlib.Algebra.Order.Group.Synonym Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual Mathlib.Algebra.Order.Monoid.Defs
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
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedCancelCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2(lean_object*, lean_object*);
lean_object* l_decidableEqOfDecidableLE___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___rarg(lean_object*);
lean_object* l_LinearOrderedCancelAddCommMonoid_toLinearOrderedAddCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2(lean_object*, lean_object*);
lean_object* l_instDecidableLe__mathlib___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_OrderDual_instLinearOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCancelCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedCommMonoid___rarg(lean_object*);
lean_object* l_instDecidableLt__mathlib___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1(lean_object*, lean_object*);
lean_object* l_LinearOrderedCancelCommMonoid_toLinearOrderedCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid___rarg(lean_object*);
lean_object* l_LinearOrderedCommMonoid_toLinearOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___boxed(lean_object*, lean_object*);
lean_object* l_OrderDual_instPreorder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedCancelCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCancelCommMonoid(lean_object*);
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___boxed(lean_object*, lean_object*);
lean_object* l_LinearOrderedAddCommMonoid_toLinearOrder___rarg(lean_object*);
LEAN_EXPORT lean_object* l_OrderDual_orderedCommMonoid___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 1);
x_4 = l_OrderDual_instPreorder(lean_box(0), x_3);
lean_dec(x_3);
lean_ctor_set(x_1, 1, x_4);
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
x_7 = l_OrderDual_instPreorder(lean_box(0), x_6);
lean_dec(x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_5);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_orderedCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCommMonoid___rarg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 1);
x_4 = l_OrderDual_instPreorder(lean_box(0), x_3);
lean_dec(x_3);
lean_ctor_set(x_1, 1, x_4);
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
x_7 = l_OrderDual_instPreorder(lean_box(0), x_6);
lean_dec(x_6);
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_5);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_orderedAddCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedCancelCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_orderedCommMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedCancelCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_orderedCancelCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCancelCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_OrderDual_orderedAddCommMonoid___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_orderedAddCancelCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_orderedAddCancelCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_2);
lean_inc(x_3);
lean_inc(x_1);
x_4 = l_instDecidableLe__mathlib___rarg(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
x_7 = lean_box(x_6);
return x_7;
}
else
{
lean_object* x_8; 
x_8 = l_instDecidableLe__mathlib___rarg(x_1, x_2, x_3);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_instDecidableLe__mathlib___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_instDecidableLt__mathlib___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
lean_inc(x_1);
x_2 = l_LinearOrderedCancelCommMonoid_toLinearOrderedCommMonoid___rarg(x_1);
x_3 = l_LinearOrderedCommMonoid_toLinearOrder___rarg(x_2);
lean_inc(x_3);
x_4 = l_OrderDual_instLinearOrder___rarg(x_3);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_OrderDual_orderedCommMonoid___rarg(x_5);
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_6, 1);
lean_dec(x_8);
x_9 = !lean_is_exclusive(x_4);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_10 = lean_ctor_get(x_4, 0);
x_11 = lean_ctor_get(x_4, 6);
lean_dec(x_11);
x_12 = lean_ctor_get(x_4, 5);
lean_dec(x_12);
x_13 = lean_ctor_get(x_4, 4);
lean_dec(x_13);
lean_ctor_set(x_6, 1, x_10);
lean_inc(x_3);
x_14 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_14, 0, x_3);
lean_inc(x_3);
x_15 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___rarg), 3, 1);
lean_closure_set(x_15, 0, x_3);
x_16 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2), 3, 1);
lean_closure_set(x_16, 0, x_3);
lean_ctor_set(x_4, 6, x_16);
lean_ctor_set(x_4, 5, x_15);
lean_ctor_set(x_4, 4, x_14);
lean_ctor_set(x_4, 0, x_6);
return x_4;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_17 = lean_ctor_get(x_4, 0);
x_18 = lean_ctor_get(x_4, 1);
x_19 = lean_ctor_get(x_4, 2);
x_20 = lean_ctor_get(x_4, 3);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_4);
lean_ctor_set(x_6, 1, x_17);
lean_inc(x_3);
x_21 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_21, 0, x_3);
lean_inc(x_3);
x_22 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___rarg), 3, 1);
lean_closure_set(x_22, 0, x_3);
x_23 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2), 3, 1);
lean_closure_set(x_23, 0, x_3);
x_24 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_24, 0, x_6);
lean_ctor_set(x_24, 1, x_18);
lean_ctor_set(x_24, 2, x_19);
lean_ctor_set(x_24, 3, x_20);
lean_ctor_set(x_24, 4, x_21);
lean_ctor_set(x_24, 5, x_22);
lean_ctor_set(x_24, 6, x_23);
return x_24;
}
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_25 = lean_ctor_get(x_6, 0);
lean_inc(x_25);
lean_dec(x_6);
x_26 = lean_ctor_get(x_4, 0);
lean_inc(x_26);
x_27 = lean_ctor_get(x_4, 1);
lean_inc(x_27);
x_28 = lean_ctor_get(x_4, 2);
lean_inc(x_28);
x_29 = lean_ctor_get(x_4, 3);
lean_inc(x_29);
if (lean_is_exclusive(x_4)) {
 lean_ctor_release(x_4, 0);
 lean_ctor_release(x_4, 1);
 lean_ctor_release(x_4, 2);
 lean_ctor_release(x_4, 3);
 lean_ctor_release(x_4, 4);
 lean_ctor_release(x_4, 5);
 lean_ctor_release(x_4, 6);
 x_30 = x_4;
} else {
 lean_dec_ref(x_4);
 x_30 = lean_box(0);
}
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_25);
lean_ctor_set(x_31, 1, x_26);
lean_inc(x_3);
x_32 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_32, 0, x_3);
lean_inc(x_3);
x_33 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___rarg), 3, 1);
lean_closure_set(x_33, 0, x_3);
x_34 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2), 3, 1);
lean_closure_set(x_34, 0, x_3);
if (lean_is_scalar(x_30)) {
 x_35 = lean_alloc_ctor(0, 7, 0);
} else {
 x_35 = x_30;
}
lean_ctor_set(x_35, 0, x_31);
lean_ctor_set(x_35, 1, x_27);
lean_ctor_set(x_35, 2, x_28);
lean_ctor_set(x_35, 3, x_29);
lean_ctor_set(x_35, 4, x_32);
lean_ctor_set(x_35, 5, x_33);
lean_ctor_set(x_35, 6, x_34);
return x_35;
}
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCancelCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCancelCommMonoid___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_instDecidableLt__mathlib___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_decidableEqOfDecidableLE___rarg(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
lean_inc(x_1);
x_2 = l_LinearOrderedCancelAddCommMonoid_toLinearOrderedAddCommMonoid___rarg(x_1);
x_3 = l_LinearOrderedAddCommMonoid_toLinearOrder___rarg(x_2);
lean_inc(x_3);
x_4 = l_OrderDual_instLinearOrder___rarg(x_3);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_OrderDual_orderedAddCommMonoid___rarg(x_5);
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_6, 1);
lean_dec(x_8);
x_9 = !lean_is_exclusive(x_4);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_10 = lean_ctor_get(x_4, 0);
x_11 = lean_ctor_get(x_4, 6);
lean_dec(x_11);
x_12 = lean_ctor_get(x_4, 5);
lean_dec(x_12);
x_13 = lean_ctor_get(x_4, 4);
lean_dec(x_13);
lean_ctor_set(x_6, 1, x_10);
lean_inc(x_3);
x_14 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_14, 0, x_3);
x_15 = lean_ctor_get(x_3, 0);
lean_inc(x_15);
x_16 = l_OrderDual_instPreorder(lean_box(0), x_15);
lean_dec(x_15);
lean_inc(x_14);
x_17 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg___boxed), 4, 2);
lean_closure_set(x_17, 0, x_14);
lean_closure_set(x_17, 1, x_16);
x_18 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_18, 0, x_3);
lean_ctor_set(x_4, 6, x_18);
lean_ctor_set(x_4, 5, x_17);
lean_ctor_set(x_4, 4, x_14);
lean_ctor_set(x_4, 0, x_6);
return x_4;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_19 = lean_ctor_get(x_4, 0);
x_20 = lean_ctor_get(x_4, 1);
x_21 = lean_ctor_get(x_4, 2);
x_22 = lean_ctor_get(x_4, 3);
lean_inc(x_22);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_4);
lean_ctor_set(x_6, 1, x_19);
lean_inc(x_3);
x_23 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_23, 0, x_3);
x_24 = lean_ctor_get(x_3, 0);
lean_inc(x_24);
x_25 = l_OrderDual_instPreorder(lean_box(0), x_24);
lean_dec(x_24);
lean_inc(x_23);
x_26 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg___boxed), 4, 2);
lean_closure_set(x_26, 0, x_23);
lean_closure_set(x_26, 1, x_25);
x_27 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_27, 0, x_3);
x_28 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_28, 0, x_6);
lean_ctor_set(x_28, 1, x_20);
lean_ctor_set(x_28, 2, x_21);
lean_ctor_set(x_28, 3, x_22);
lean_ctor_set(x_28, 4, x_23);
lean_ctor_set(x_28, 5, x_26);
lean_ctor_set(x_28, 6, x_27);
return x_28;
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_29 = lean_ctor_get(x_6, 0);
lean_inc(x_29);
lean_dec(x_6);
x_30 = lean_ctor_get(x_4, 0);
lean_inc(x_30);
x_31 = lean_ctor_get(x_4, 1);
lean_inc(x_31);
x_32 = lean_ctor_get(x_4, 2);
lean_inc(x_32);
x_33 = lean_ctor_get(x_4, 3);
lean_inc(x_33);
if (lean_is_exclusive(x_4)) {
 lean_ctor_release(x_4, 0);
 lean_ctor_release(x_4, 1);
 lean_ctor_release(x_4, 2);
 lean_ctor_release(x_4, 3);
 lean_ctor_release(x_4, 4);
 lean_ctor_release(x_4, 5);
 lean_ctor_release(x_4, 6);
 x_34 = x_4;
} else {
 lean_dec_ref(x_4);
 x_34 = lean_box(0);
}
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_29);
lean_ctor_set(x_35, 1, x_30);
lean_inc(x_3);
x_36 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_36, 0, x_3);
x_37 = lean_ctor_get(x_3, 0);
lean_inc(x_37);
x_38 = l_OrderDual_instPreorder(lean_box(0), x_37);
lean_dec(x_37);
lean_inc(x_36);
x_39 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg___boxed), 4, 2);
lean_closure_set(x_39, 0, x_36);
lean_closure_set(x_39, 1, x_38);
x_40 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_40, 0, x_3);
if (lean_is_scalar(x_34)) {
 x_41 = lean_alloc_ctor(0, 7, 0);
} else {
 x_41 = x_34;
}
lean_ctor_set(x_41, 0, x_35);
lean_ctor_set(x_41, 1, x_31);
lean_ctor_set(x_41, 2, x_32);
lean_ctor_set(x_41, 3, x_33);
lean_ctor_set(x_41, 4, x_36);
lean_ctor_set(x_41, 5, x_39);
lean_ctor_set(x_41, 6, x_40);
return x_41;
}
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCancelCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_OrderDual_linearOrderedAddCancelCommMonoid___elambda__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
lean_inc(x_2);
lean_inc(x_3);
lean_inc(x_1);
x_4 = l_instDecidableLe__mathlib___rarg(x_1, x_3, x_2);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
if (x_5 == 0)
{
uint8_t x_6; lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_6 = 0;
x_7 = lean_box(x_6);
return x_7;
}
else
{
lean_object* x_8; 
x_8 = l_instDecidableLe__mathlib___rarg(x_1, x_2, x_3);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
x_2 = l_LinearOrderedCommMonoid_toLinearOrder___rarg(x_1);
lean_inc(x_2);
x_3 = l_OrderDual_instLinearOrder___rarg(x_2);
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_ctor_get(x_4, 1);
lean_dec(x_6);
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 6);
lean_dec(x_9);
x_10 = lean_ctor_get(x_3, 5);
lean_dec(x_10);
x_11 = lean_ctor_get(x_3, 4);
lean_dec(x_11);
lean_ctor_set(x_4, 1, x_8);
lean_inc(x_2);
x_12 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_12, 0, x_2);
lean_inc(x_2);
x_13 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___rarg), 3, 1);
lean_closure_set(x_13, 0, x_2);
x_14 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2), 3, 1);
lean_closure_set(x_14, 0, x_2);
lean_ctor_set(x_3, 6, x_14);
lean_ctor_set(x_3, 5, x_13);
lean_ctor_set(x_3, 4, x_12);
lean_ctor_set(x_3, 0, x_4);
return x_3;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_3, 0);
x_16 = lean_ctor_get(x_3, 1);
x_17 = lean_ctor_get(x_3, 2);
x_18 = lean_ctor_get(x_3, 3);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_3);
lean_ctor_set(x_4, 1, x_15);
lean_inc(x_2);
x_19 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_19, 0, x_2);
lean_inc(x_2);
x_20 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___rarg), 3, 1);
lean_closure_set(x_20, 0, x_2);
x_21 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2), 3, 1);
lean_closure_set(x_21, 0, x_2);
x_22 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_22, 0, x_4);
lean_ctor_set(x_22, 1, x_16);
lean_ctor_set(x_22, 2, x_17);
lean_ctor_set(x_22, 3, x_18);
lean_ctor_set(x_22, 4, x_19);
lean_ctor_set(x_22, 5, x_20);
lean_ctor_set(x_22, 6, x_21);
return x_22;
}
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_23 = lean_ctor_get(x_4, 0);
lean_inc(x_23);
lean_dec(x_4);
x_24 = lean_ctor_get(x_3, 0);
lean_inc(x_24);
x_25 = lean_ctor_get(x_3, 1);
lean_inc(x_25);
x_26 = lean_ctor_get(x_3, 2);
lean_inc(x_26);
x_27 = lean_ctor_get(x_3, 3);
lean_inc(x_27);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 lean_ctor_release(x_3, 2);
 lean_ctor_release(x_3, 3);
 lean_ctor_release(x_3, 4);
 lean_ctor_release(x_3, 5);
 lean_ctor_release(x_3, 6);
 x_28 = x_3;
} else {
 lean_dec_ref(x_3);
 x_28 = lean_box(0);
}
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_23);
lean_ctor_set(x_29, 1, x_24);
lean_inc(x_2);
x_30 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_30, 0, x_2);
lean_inc(x_2);
x_31 = lean_alloc_closure((void*)(l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___rarg), 3, 1);
lean_closure_set(x_31, 0, x_2);
x_32 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__2), 3, 1);
lean_closure_set(x_32, 0, x_2);
if (lean_is_scalar(x_28)) {
 x_33 = lean_alloc_ctor(0, 7, 0);
} else {
 x_33 = x_28;
}
lean_ctor_set(x_33, 0, x_29);
lean_ctor_set(x_33, 1, x_25);
lean_ctor_set(x_33, 2, x_26);
lean_ctor_set(x_33, 3, x_27);
lean_ctor_set(x_33, 4, x_30);
lean_ctor_set(x_33, 5, x_31);
lean_ctor_set(x_33, 6, x_32);
return x_33;
}
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_decidableEqOfDecidableLE___at_OrderDual_linearOrderedCommMonoid___spec__1(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_instDecidableLt__mathlib___rarg(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__1___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_decidableEqOfDecidableLE___rarg(x_1, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg___boxed), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
lean_inc(x_1);
x_2 = l_LinearOrderedAddCommMonoid_toLinearOrder___rarg(x_1);
lean_inc(x_2);
x_3 = l_OrderDual_instLinearOrder___rarg(x_2);
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_ctor_get(x_4, 1);
lean_dec(x_6);
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_8 = lean_ctor_get(x_3, 0);
x_9 = lean_ctor_get(x_3, 6);
lean_dec(x_9);
x_10 = lean_ctor_get(x_3, 5);
lean_dec(x_10);
x_11 = lean_ctor_get(x_3, 4);
lean_dec(x_11);
lean_ctor_set(x_4, 1, x_8);
lean_inc(x_2);
x_12 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_12, 0, x_2);
x_13 = lean_ctor_get(x_2, 0);
lean_inc(x_13);
x_14 = l_OrderDual_instPreorder(lean_box(0), x_13);
lean_dec(x_13);
lean_inc(x_12);
x_15 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg___boxed), 4, 2);
lean_closure_set(x_15, 0, x_12);
lean_closure_set(x_15, 1, x_14);
x_16 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_16, 0, x_2);
lean_ctor_set(x_3, 6, x_16);
lean_ctor_set(x_3, 5, x_15);
lean_ctor_set(x_3, 4, x_12);
lean_ctor_set(x_3, 0, x_4);
return x_3;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_17 = lean_ctor_get(x_3, 0);
x_18 = lean_ctor_get(x_3, 1);
x_19 = lean_ctor_get(x_3, 2);
x_20 = lean_ctor_get(x_3, 3);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_3);
lean_ctor_set(x_4, 1, x_17);
lean_inc(x_2);
x_21 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_21, 0, x_2);
x_22 = lean_ctor_get(x_2, 0);
lean_inc(x_22);
x_23 = l_OrderDual_instPreorder(lean_box(0), x_22);
lean_dec(x_22);
lean_inc(x_21);
x_24 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg___boxed), 4, 2);
lean_closure_set(x_24, 0, x_21);
lean_closure_set(x_24, 1, x_23);
x_25 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_25, 0, x_2);
x_26 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_26, 0, x_4);
lean_ctor_set(x_26, 1, x_18);
lean_ctor_set(x_26, 2, x_19);
lean_ctor_set(x_26, 3, x_20);
lean_ctor_set(x_26, 4, x_21);
lean_ctor_set(x_26, 5, x_24);
lean_ctor_set(x_26, 6, x_25);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_27 = lean_ctor_get(x_4, 0);
lean_inc(x_27);
lean_dec(x_4);
x_28 = lean_ctor_get(x_3, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_3, 1);
lean_inc(x_29);
x_30 = lean_ctor_get(x_3, 2);
lean_inc(x_30);
x_31 = lean_ctor_get(x_3, 3);
lean_inc(x_31);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 lean_ctor_release(x_3, 2);
 lean_ctor_release(x_3, 3);
 lean_ctor_release(x_3, 4);
 lean_ctor_release(x_3, 5);
 lean_ctor_release(x_3, 6);
 x_32 = x_3;
} else {
 lean_dec_ref(x_3);
 x_32 = lean_box(0);
}
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_27);
lean_ctor_set(x_33, 1, x_28);
lean_inc(x_2);
x_34 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedCancelCommMonoid___rarg___lambda__1), 3, 1);
lean_closure_set(x_34, 0, x_2);
x_35 = lean_ctor_get(x_2, 0);
lean_inc(x_35);
x_36 = l_OrderDual_instPreorder(lean_box(0), x_35);
lean_dec(x_35);
lean_inc(x_34);
x_37 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg___boxed), 4, 2);
lean_closure_set(x_37, 0, x_34);
lean_closure_set(x_37, 1, x_36);
x_38 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___elambda__1___rarg), 3, 1);
lean_closure_set(x_38, 0, x_2);
if (lean_is_scalar(x_32)) {
 x_39 = lean_alloc_ctor(0, 7, 0);
} else {
 x_39 = x_32;
}
lean_ctor_set(x_39, 0, x_33);
lean_ctor_set(x_39, 1, x_29);
lean_ctor_set(x_39, 2, x_30);
lean_ctor_set(x_39, 3, x_31);
lean_ctor_set(x_39, 4, x_34);
lean_ctor_set(x_39, 5, x_37);
lean_ctor_set(x_39, 6, x_38);
return x_39;
}
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_OrderDual_linearOrderedAddCommMonoid___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_OrderDual_linearOrderedAddCommMonoid___elambda__2___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_OrderDual_linearOrderedAddCommMonoid___elambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_OrderDual_linearOrderedAddCommMonoid___elambda__2(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Order_Group_Synonym(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Order_Monoid_Unbundled_OrderDual(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Algebra_Order_Monoid_Defs(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Algebra_Order_Monoid_OrderDual(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Order_Group_Synonym(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Order_Monoid_Unbundled_OrderDual(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Algebra_Order_Monoid_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
