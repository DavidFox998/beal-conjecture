// Lean compiler output
// Module: Mathlib.Order.LatticeIntervals
// Imports: Init Mathlib.Order.Bounds.Basic
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
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioi_semilatticeSup___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_lattice(lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeInf(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_boundedOrder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_instBoundedOrderElemOfOrderBot___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderTop(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderBot___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeInf(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeSup___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderTop___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeInf___rarg___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Lattice_toSemilatticeInf___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_orderBot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderBot___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderTop___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeInf___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderBot___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_orderBot___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderBot___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeInf(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderBot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_lattice___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_instBoundedOrderElemOfOrderBot___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_boundedOrder(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderBot___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioi_semilatticeSup___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeInf___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeInf___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeSup(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_boundedOrder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeSup___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioi_semilatticeSup(lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeInf___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeSup(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_lattice___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_instLatticeElem___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeSup___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_boundedOrder___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderBot(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderTop___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_instLatticeElem___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderTop___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_distribLattice(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_boundedOrder___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_lattice___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderTop(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_boundedOrder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iio_semilatticeInf___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iio_semilatticeInf(lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_distribLattice___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_orderBot___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeSup___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iio_semilatticeInf___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_orderBot___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_instLatticeElem(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeSup___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeSup(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderBot(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderTop(lean_object*, lean_object*, lean_object*);
lean_object* l_Subtype_partialOrder(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderBot___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_lattice___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_instBoundedOrderElemOfOrderBot(lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_orderBot___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeSup___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderTop___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeInf___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Icc_lattice(lean_object*);
LEAN_EXPORT lean_object* l_Set_Iic_orderTop___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_orderBot___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ici_distribLattice___rarg___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Set_Ico_semilatticeInf___rarg___lambda__1), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Subtype_partialOrder(lean_box(0), x_5, lean_box(0));
lean_dec(x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ico_semilatticeInf___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_semilatticeInf___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Ico_semilatticeInf___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_orderBot___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_orderBot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Ico_orderBot___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_orderBot___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Ico_orderBot___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Ico_orderBot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ico_orderBot(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iio_semilatticeInf___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Set_Ico_semilatticeInf___rarg___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Subtype_partialOrder(lean_box(0), x_4, lean_box(0));
lean_dec(x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_Iio_semilatticeInf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Iio_semilatticeInf___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Iio_semilatticeInf___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Iio_semilatticeInf___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_apply_2(x_4, x_2, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Set_Ioc_semilatticeSup___rarg___lambda__1), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Subtype_partialOrder(lean_box(0), x_5, lean_box(0));
lean_dec(x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ioc_semilatticeSup___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_semilatticeSup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Ioc_semilatticeSup___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Set_Ioc_orderTop___rarg___boxed), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ioc_orderTop___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ioc_orderTop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Ioc_orderTop(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Ioi_semilatticeSup___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Set_Ioc_semilatticeSup___rarg___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Subtype_partialOrder(lean_box(0), x_4, lean_box(0));
lean_dec(x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_Ioi_semilatticeSup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ioi_semilatticeSup___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ioi_semilatticeSup___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ioi_semilatticeSup___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeInf___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Set_Ico_semilatticeInf___rarg___lambda__1), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_dec(x_1);
x_4 = l_Subtype_partialOrder(lean_box(0), x_3, lean_box(0));
lean_dec(x_3);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeInf(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Iic_semilatticeInf___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeInf___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Iic_semilatticeInf(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeSup___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
lean_inc(x_1);
x_2 = lean_alloc_closure((void*)(l_Set_Ioc_semilatticeSup___rarg___lambda__1), 3, 1);
lean_closure_set(x_2, 0, x_1);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
lean_dec(x_1);
x_4 = l_Subtype_partialOrder(lean_box(0), x_3, lean_box(0));
lean_dec(x_3);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_2);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeSup(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Iic_semilatticeSup___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_semilatticeSup___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Iic_semilatticeSup(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_instLatticeElem___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
lean_inc(x_1);
x_2 = l_Lattice_toSemilatticeInf___rarg(x_1);
x_3 = l_Set_Iic_semilatticeInf___rarg(x_2);
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Set_Iic_semilatticeSup___rarg(x_4);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_5, 1);
lean_dec(x_7);
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_ctor_get(x_3, 1);
lean_ctor_set(x_5, 1, x_10);
lean_ctor_set(x_3, 1, x_9);
lean_ctor_set(x_3, 0, x_5);
return x_3;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_3, 0);
x_12 = lean_ctor_get(x_3, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
lean_ctor_set(x_5, 1, x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_5);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_5, 0);
lean_inc(x_14);
lean_dec(x_5);
x_15 = lean_ctor_get(x_3, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_3, 1);
lean_inc(x_16);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 x_17 = x_3;
} else {
 lean_dec_ref(x_3);
 x_17 = lean_box(0);
}
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_14);
lean_ctor_set(x_18, 1, x_16);
if (lean_is_scalar(x_17)) {
 x_19 = lean_alloc_ctor(0, 2, 0);
} else {
 x_19 = x_17;
}
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_15);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Set_Iic_instLatticeElem(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Iic_instLatticeElem___rarg), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_instLatticeElem___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Iic_instLatticeElem(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderTop(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Iic_orderTop___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderTop___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Iic_orderTop___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderBot___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderBot(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Set_Iic_orderBot___rarg___boxed), 1, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderBot___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Set_Iic_orderBot___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_orderBot___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Iic_orderBot(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_instBoundedOrderElemOfOrderBot___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_instBoundedOrderElemOfOrderBot(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Iic_instBoundedOrderElemOfOrderBot___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Iic_instBoundedOrderElemOfOrderBot___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Iic_instBoundedOrderElemOfOrderBot___rarg(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeInf___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Set_Ico_semilatticeInf___rarg___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Subtype_partialOrder(lean_box(0), x_4, lean_box(0));
lean_dec(x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeInf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ici_semilatticeInf___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeInf___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_semilatticeInf___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeSup___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_3 = lean_alloc_closure((void*)(l_Set_Ioc_semilatticeSup___rarg___lambda__1), 3, 1);
lean_closure_set(x_3, 0, x_1);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_dec(x_1);
x_5 = l_Subtype_partialOrder(lean_box(0), x_4, lean_box(0));
lean_dec(x_4);
x_6 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeSup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ici_semilatticeSup___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_semilatticeSup___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_semilatticeSup___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_lattice___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
lean_inc(x_1);
x_3 = l_Lattice_toSemilatticeInf___rarg(x_1);
x_4 = l_Set_Ici_semilatticeInf___rarg(x_3, x_2);
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Set_Ici_semilatticeSup___rarg(x_5, x_2);
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_ctor_get(x_6, 1);
lean_dec(x_8);
x_9 = !lean_is_exclusive(x_4);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_4, 0);
x_11 = lean_ctor_get(x_4, 1);
lean_ctor_set(x_6, 1, x_11);
lean_ctor_set(x_4, 1, x_10);
lean_ctor_set(x_4, 0, x_6);
return x_4;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_4, 0);
x_13 = lean_ctor_get(x_4, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_4);
lean_ctor_set(x_6, 1, x_13);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_6);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_15 = lean_ctor_get(x_6, 0);
lean_inc(x_15);
lean_dec(x_6);
x_16 = lean_ctor_get(x_4, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_4, 1);
lean_inc(x_17);
if (lean_is_exclusive(x_4)) {
 lean_ctor_release(x_4, 0);
 lean_ctor_release(x_4, 1);
 x_18 = x_4;
} else {
 lean_dec_ref(x_4);
 x_18 = lean_box(0);
}
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_15);
lean_ctor_set(x_19, 1, x_17);
if (lean_is_scalar(x_18)) {
 x_20 = lean_alloc_ctor(0, 2, 0);
} else {
 x_20 = x_18;
}
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_16);
return x_20;
}
}
}
LEAN_EXPORT lean_object* l_Set_Ici_lattice(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ici_lattice___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_lattice___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_lattice___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_distribLattice___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_lattice___rarg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_distribLattice(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Ici_distribLattice___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_distribLattice___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_distribLattice___rarg(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderBot___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderBot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Ici_orderBot___rarg___boxed), 1, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderBot___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Set_Ici_orderBot___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderBot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_orderBot(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderTop(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Ici_orderTop___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderTop___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_orderTop___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_orderTop___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_orderTop(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_boundedOrder___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_boundedOrder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Ici_boundedOrder___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Ici_boundedOrder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Ici_boundedOrder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeInf___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Set_Ico_semilatticeInf___rarg___lambda__1), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Subtype_partialOrder(lean_box(0), x_5, lean_box(0));
lean_dec(x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeInf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Icc_semilatticeInf___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeInf___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Icc_semilatticeInf___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeSup___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
lean_inc(x_1);
x_4 = lean_alloc_closure((void*)(l_Set_Ioc_semilatticeSup___rarg___lambda__1), 3, 1);
lean_closure_set(x_4, 0, x_1);
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_dec(x_1);
x_6 = l_Subtype_partialOrder(lean_box(0), x_5, lean_box(0));
lean_dec(x_5);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_4);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeSup(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Icc_semilatticeSup___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_semilatticeSup___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Icc_semilatticeSup___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_lattice___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
lean_inc(x_1);
x_4 = l_Lattice_toSemilatticeInf___rarg(x_1);
x_5 = l_Set_Icc_semilatticeInf___rarg(x_4, x_2, x_3);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = l_Set_Icc_semilatticeSup___rarg(x_6, x_2, x_3);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_ctor_get(x_7, 1);
lean_dec(x_9);
x_10 = !lean_is_exclusive(x_5);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_5, 0);
x_12 = lean_ctor_get(x_5, 1);
lean_ctor_set(x_7, 1, x_12);
lean_ctor_set(x_5, 1, x_11);
lean_ctor_set(x_5, 0, x_7);
return x_5;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_5, 0);
x_14 = lean_ctor_get(x_5, 1);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_5);
lean_ctor_set(x_7, 1, x_14);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_7);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_7, 0);
lean_inc(x_16);
lean_dec(x_7);
x_17 = lean_ctor_get(x_5, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_5, 1);
lean_inc(x_18);
if (lean_is_exclusive(x_5)) {
 lean_ctor_release(x_5, 0);
 lean_ctor_release(x_5, 1);
 x_19 = x_5;
} else {
 lean_dec_ref(x_5);
 x_19 = lean_box(0);
}
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_16);
lean_ctor_set(x_20, 1, x_18);
if (lean_is_scalar(x_19)) {
 x_21 = lean_alloc_ctor(0, 2, 0);
} else {
 x_21 = x_19;
}
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_17);
return x_21;
}
}
}
LEAN_EXPORT lean_object* l_Set_Icc_lattice(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Set_Icc_lattice___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_lattice___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Icc_lattice___rarg(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderBot___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderBot(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Icc_orderBot___rarg___boxed), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderBot___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Icc_orderBot___rarg(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderBot___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Icc_orderBot(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderTop___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderTop(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Set_Icc_orderTop___rarg___boxed), 2, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderTop___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Icc_orderTop___rarg(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_orderTop___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Set_Icc_orderTop(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_boundedOrder___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_2);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_boundedOrder(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Set_Icc_boundedOrder___rarg), 3, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Set_Icc_boundedOrder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Set_Icc_boundedOrder(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Bounds_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Order_LatticeIntervals(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Bounds_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
