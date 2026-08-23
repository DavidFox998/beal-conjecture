// Lean compiler output
// Module: Aesop.Search.Queue
// Imports: Init Aesop.Options Aesop.Tracing Aesop.Tree Aesop.Search.Queue.Class Batteries.Data.BinomialHeap.Basic
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
double l_Aesop_Goal_priority(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Options_queue(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_instQueue;
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Aesop_instQueueBestFirstQueue___closed__2;
static lean_object* l_Aesop_LIFOQueue_instQueue___closed__3;
static lean_object* l_Aesop_instQueueBestFirstQueue___closed__4;
lean_object* l_Aesop_Percent_instOrd___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_instQueueBestFirstQueue___closed__3;
uint8_t lean_usize_dec_eq(size_t, size_t);
lean_object* l_Aesop_treeImpl___elambda__5(lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
uint8_t lean_float_decLt(double, double);
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_ActiveGoal_ofGoalRef(lean_object*, lean_object*);
uint8_t l_instDecidableRelLt___rarg(lean_object*, lean_object*, lean_object*);
static double l_Aesop_BestFirstQueue_ActiveGoal_le___closed__2;
static lean_object* l_Aesop_Options_queue___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_BestFirstQueue_addGoals___spec__2(lean_object*, size_t, size_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue;
size_t lean_usize_of_nat(lean_object*);
lean_object* l_Array_reverse___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instQueueBestFirstQueue___lambda__1(lean_object*, lean_object*);
lean_object* l_Array_back_x3f___rarg(lean_object*);
lean_object* lean_st_ref_get(lean_object*, lean_object*);
lean_object* lean_array_pop(lean_object*);
lean_object* l_Batteries_BinomialHeap_Imp_Heap_deleteMin___rarg(lean_object*, lean_object*);
lean_object* l_EStateM_pure___rarg(lean_object*, lean_object*);
static lean_object* l_Aesop_Options_queue___closed__3;
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_instQueue___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_BestFirstQueue_addGoals___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_LIFOQueue_instQueue___closed__1;
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_init;
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_addGoals(lean_object*, lean_object*, lean_object*);
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
static lean_object* l_Aesop_instQueueBestFirstQueue___closed__1;
double l_Float_ofScientific(lean_object*, uint8_t, lean_object*);
static lean_object* l_Aesop_LIFOQueue_init___closed__1;
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_addGoals___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_init;
static lean_object* l_Aesop_BestFirstQueue_popGoal___closed__1;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_addGoals(lean_object*, lean_object*);
static lean_object* l_Aesop_BestFirstQueue_ActiveGoal_le___closed__1;
static lean_object* l_Aesop_FIFOQueue_instQueue___closed__1;
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_popGoal(lean_object*);
static lean_object* l_Aesop_FIFOQueue_instQueue___closed__2;
static lean_object* l_Aesop_FIFOQueue_instQueue___closed__4;
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_init;
static lean_object* l_Aesop_FIFOQueue_instQueue___closed__3;
static lean_object* l_Aesop_LIFOQueue_instQueue___closed__4;
static lean_object* l_Aesop_LIFOQueue_instQueue___closed__2;
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_Options_queue___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_addGoals___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instQueueBestFirstQueue;
lean_object* lean_array_uget(lean_object*, size_t);
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_popGoal(lean_object*);
static lean_object* l_Aesop_FIFOQueue_init___closed__1;
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_popGoal(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_BestFirstQueue_ActiveGoal_le(lean_object*, lean_object*);
lean_object* lean_array_get_size(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_instQueue___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_addGoals(lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_ActiveGoal_le___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_Options_queue___closed__2;
double lean_float_sub(double, double);
static lean_object* _init_l_Aesop_BestFirstQueue_ActiveGoal_le___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Percent_instOrd___boxed), 2, 0);
return x_1;
}
}
static double _init_l_Aesop_BestFirstQueue_ActiveGoal_le___closed__2() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = 1;
x_3 = lean_unsigned_to_nat(5u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_BestFirstQueue_ActiveGoal_le(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_3 = lean_ctor_get(x_2, 1);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = l_Aesop_BestFirstQueue_ActiveGoal_le___closed__1;
lean_inc(x_4);
lean_inc(x_3);
x_6 = l_instDecidableRelLt___rarg(x_5, x_3, x_4);
if (x_6 == 0)
{
double x_7; double x_8; uint8_t x_9; 
x_7 = lean_unbox_float(x_3);
x_8 = lean_unbox_float(x_4);
x_9 = lean_float_decLt(x_7, x_8);
if (x_9 == 0)
{
double x_10; double x_11; double x_12; double x_13; uint8_t x_14; 
x_10 = lean_unbox_float(x_3);
lean_dec(x_3);
x_11 = lean_unbox_float(x_4);
lean_dec(x_4);
x_12 = lean_float_sub(x_10, x_11);
x_13 = l_Aesop_BestFirstQueue_ActiveGoal_le___closed__2;
x_14 = lean_float_decLt(x_12, x_13);
if (x_14 == 0)
{
uint8_t x_15; 
lean_dec(x_2);
lean_dec(x_1);
x_15 = 0;
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_16 = lean_ctor_get(x_1, 2);
lean_inc(x_16);
x_17 = lean_ctor_get(x_2, 2);
lean_inc(x_17);
x_18 = lean_nat_dec_le(x_16, x_17);
if (x_18 == 0)
{
uint8_t x_19; 
x_19 = lean_nat_dec_eq(x_16, x_17);
lean_dec(x_17);
lean_dec(x_16);
if (x_19 == 0)
{
uint8_t x_20; 
lean_dec(x_2);
lean_dec(x_1);
x_20 = 0;
return x_20;
}
else
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_1, 3);
lean_inc(x_21);
lean_dec(x_1);
x_22 = lean_ctor_get(x_2, 3);
lean_inc(x_22);
lean_dec(x_2);
x_23 = lean_nat_dec_le(x_21, x_22);
lean_dec(x_22);
lean_dec(x_21);
return x_23;
}
}
else
{
uint8_t x_24; 
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_2);
lean_dec(x_1);
x_24 = 1;
return x_24;
}
}
}
else
{
double x_25; double x_26; double x_27; double x_28; uint8_t x_29; 
x_25 = lean_unbox_float(x_4);
lean_dec(x_4);
x_26 = lean_unbox_float(x_3);
lean_dec(x_3);
x_27 = lean_float_sub(x_25, x_26);
x_28 = l_Aesop_BestFirstQueue_ActiveGoal_le___closed__2;
x_29 = lean_float_decLt(x_27, x_28);
if (x_29 == 0)
{
uint8_t x_30; 
lean_dec(x_2);
lean_dec(x_1);
x_30 = 0;
return x_30;
}
else
{
lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_31 = lean_ctor_get(x_1, 2);
lean_inc(x_31);
x_32 = lean_ctor_get(x_2, 2);
lean_inc(x_32);
x_33 = lean_nat_dec_le(x_31, x_32);
if (x_33 == 0)
{
uint8_t x_34; 
x_34 = lean_nat_dec_eq(x_31, x_32);
lean_dec(x_32);
lean_dec(x_31);
if (x_34 == 0)
{
uint8_t x_35; 
lean_dec(x_2);
lean_dec(x_1);
x_35 = 0;
return x_35;
}
else
{
lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_36 = lean_ctor_get(x_1, 3);
lean_inc(x_36);
lean_dec(x_1);
x_37 = lean_ctor_get(x_2, 3);
lean_inc(x_37);
lean_dec(x_2);
x_38 = lean_nat_dec_le(x_36, x_37);
lean_dec(x_37);
lean_dec(x_36);
return x_38;
}
}
else
{
uint8_t x_39; 
lean_dec(x_32);
lean_dec(x_31);
lean_dec(x_2);
lean_dec(x_1);
x_39 = 1;
return x_39;
}
}
}
}
else
{
uint8_t x_40; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_40 = 1;
return x_40;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_ActiveGoal_le___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_BestFirstQueue_ActiveGoal_le(x_1, x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_ActiveGoal_ofGoalRef(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_st_ref_get(x_1, x_2);
if (lean_obj_tag(x_3) == 0)
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; double x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = l_Aesop_Goal_priority(x_5);
x_7 = l_Aesop_treeImpl___elambda__5(x_5);
lean_dec(x_5);
x_8 = lean_ctor_get(x_7, 10);
lean_inc(x_8);
x_9 = lean_ctor_get(x_7, 9);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_box_float(x_6);
x_11 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_10);
lean_ctor_set(x_11, 2, x_8);
lean_ctor_set(x_11, 3, x_9);
lean_ctor_set(x_3, 0, x_11);
return x_3;
}
else
{
lean_object* x_12; lean_object* x_13; double x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_12 = lean_ctor_get(x_3, 0);
x_13 = lean_ctor_get(x_3, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_3);
x_14 = l_Aesop_Goal_priority(x_12);
x_15 = l_Aesop_treeImpl___elambda__5(x_12);
lean_dec(x_12);
x_16 = lean_ctor_get(x_15, 10);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 9);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_box_float(x_14);
x_19 = lean_alloc_ctor(0, 4, 0);
lean_ctor_set(x_19, 0, x_1);
lean_ctor_set(x_19, 1, x_18);
lean_ctor_set(x_19, 2, x_16);
lean_ctor_set(x_19, 3, x_17);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_13);
return x_20;
}
}
else
{
uint8_t x_21; 
lean_dec(x_1);
x_21 = !lean_is_exclusive(x_3);
if (x_21 == 0)
{
return x_3;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_3, 0);
x_23 = lean_ctor_get(x_3, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_3);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_22);
lean_ctor_set(x_24, 1, x_23);
return x_24;
}
}
}
}
static lean_object* _init_l_Aesop_BestFirstQueue_init() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
return x_2;
}
else
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_1, 2);
lean_inc(x_5);
x_6 = lean_ctor_get(x_1, 3);
lean_inc(x_6);
x_7 = lean_ctor_get(x_2, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_2, 1);
lean_inc(x_8);
x_9 = lean_ctor_get(x_2, 2);
lean_inc(x_9);
x_10 = lean_ctor_get(x_2, 3);
lean_inc(x_10);
x_11 = lean_nat_dec_lt(x_3, x_7);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_2);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_13 = lean_ctor_get(x_2, 3);
lean_dec(x_13);
x_14 = lean_ctor_get(x_2, 2);
lean_dec(x_14);
x_15 = lean_ctor_get(x_2, 1);
lean_dec(x_15);
x_16 = lean_ctor_get(x_2, 0);
lean_dec(x_16);
x_17 = lean_nat_dec_lt(x_7, x_3);
if (x_17 == 0)
{
uint8_t x_18; 
lean_dec(x_7);
lean_dec(x_1);
lean_inc(x_8);
lean_inc(x_4);
x_18 = l_Aesop_BestFirstQueue_ActiveGoal_le(x_4, x_8);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_19 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_19, 0, x_4);
lean_ctor_set(x_19, 1, x_5);
lean_ctor_set(x_19, 2, x_9);
x_20 = lean_unsigned_to_nat(1u);
x_21 = lean_nat_add(x_3, x_20);
lean_dec(x_3);
x_22 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_6, x_21);
if (x_22 == 0)
{
uint8_t x_23; 
x_23 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_21);
if (x_23 == 0)
{
lean_object* x_24; 
x_24 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
lean_ctor_set(x_2, 3, x_24);
lean_ctor_set(x_2, 2, x_19);
lean_ctor_set(x_2, 0, x_21);
return x_2;
}
else
{
lean_ctor_set(x_2, 2, x_19);
lean_ctor_set(x_2, 0, x_21);
x_1 = x_6;
goto _start;
}
}
else
{
uint8_t x_26; 
x_26 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_21);
if (x_26 == 0)
{
lean_ctor_set(x_2, 3, x_6);
lean_ctor_set(x_2, 2, x_19);
lean_ctor_set(x_2, 0, x_21);
x_1 = x_2;
x_2 = x_10;
goto _start;
}
else
{
lean_object* x_28; 
x_28 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
lean_ctor_set(x_2, 3, x_28);
lean_ctor_set(x_2, 2, x_19);
lean_ctor_set(x_2, 0, x_21);
return x_2;
}
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; uint8_t x_32; 
x_29 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_29, 0, x_8);
lean_ctor_set(x_29, 1, x_9);
lean_ctor_set(x_29, 2, x_5);
x_30 = lean_unsigned_to_nat(1u);
x_31 = lean_nat_add(x_3, x_30);
lean_dec(x_3);
x_32 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_6, x_31);
if (x_32 == 0)
{
uint8_t x_33; 
x_33 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_31);
if (x_33 == 0)
{
lean_object* x_34; 
x_34 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
lean_ctor_set(x_2, 3, x_34);
lean_ctor_set(x_2, 2, x_29);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_31);
return x_2;
}
else
{
lean_ctor_set(x_2, 2, x_29);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_31);
x_1 = x_6;
goto _start;
}
}
else
{
uint8_t x_36; 
x_36 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_31);
if (x_36 == 0)
{
lean_ctor_set(x_2, 3, x_6);
lean_ctor_set(x_2, 2, x_29);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_31);
x_1 = x_2;
x_2 = x_10;
goto _start;
}
else
{
lean_object* x_38; 
x_38 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
lean_ctor_set(x_2, 3, x_38);
lean_ctor_set(x_2, 2, x_29);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_31);
return x_2;
}
}
}
}
else
{
lean_object* x_39; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_39 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_1, x_10);
lean_ctor_set(x_2, 3, x_39);
return x_2;
}
}
else
{
uint8_t x_40; 
lean_dec(x_2);
x_40 = lean_nat_dec_lt(x_7, x_3);
if (x_40 == 0)
{
uint8_t x_41; 
lean_dec(x_7);
lean_dec(x_1);
lean_inc(x_8);
lean_inc(x_4);
x_41 = l_Aesop_BestFirstQueue_ActiveGoal_le(x_4, x_8);
if (x_41 == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_42 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_42, 0, x_4);
lean_ctor_set(x_42, 1, x_5);
lean_ctor_set(x_42, 2, x_9);
x_43 = lean_unsigned_to_nat(1u);
x_44 = lean_nat_add(x_3, x_43);
lean_dec(x_3);
x_45 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_6, x_44);
if (x_45 == 0)
{
uint8_t x_46; 
x_46 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_44);
if (x_46 == 0)
{
lean_object* x_47; lean_object* x_48; 
x_47 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
x_48 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_48, 0, x_44);
lean_ctor_set(x_48, 1, x_8);
lean_ctor_set(x_48, 2, x_42);
lean_ctor_set(x_48, 3, x_47);
return x_48;
}
else
{
lean_object* x_49; 
x_49 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_49, 0, x_44);
lean_ctor_set(x_49, 1, x_8);
lean_ctor_set(x_49, 2, x_42);
lean_ctor_set(x_49, 3, x_10);
x_1 = x_6;
x_2 = x_49;
goto _start;
}
}
else
{
uint8_t x_51; 
x_51 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_44);
if (x_51 == 0)
{
lean_object* x_52; 
x_52 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_52, 0, x_44);
lean_ctor_set(x_52, 1, x_8);
lean_ctor_set(x_52, 2, x_42);
lean_ctor_set(x_52, 3, x_6);
x_1 = x_52;
x_2 = x_10;
goto _start;
}
else
{
lean_object* x_54; lean_object* x_55; 
x_54 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
x_55 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_55, 0, x_44);
lean_ctor_set(x_55, 1, x_8);
lean_ctor_set(x_55, 2, x_42);
lean_ctor_set(x_55, 3, x_54);
return x_55;
}
}
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; uint8_t x_59; 
x_56 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_56, 0, x_8);
lean_ctor_set(x_56, 1, x_9);
lean_ctor_set(x_56, 2, x_5);
x_57 = lean_unsigned_to_nat(1u);
x_58 = lean_nat_add(x_3, x_57);
lean_dec(x_3);
x_59 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_6, x_58);
if (x_59 == 0)
{
uint8_t x_60; 
x_60 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_58);
if (x_60 == 0)
{
lean_object* x_61; lean_object* x_62; 
x_61 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
x_62 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_62, 0, x_58);
lean_ctor_set(x_62, 1, x_4);
lean_ctor_set(x_62, 2, x_56);
lean_ctor_set(x_62, 3, x_61);
return x_62;
}
else
{
lean_object* x_63; 
x_63 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_63, 0, x_58);
lean_ctor_set(x_63, 1, x_4);
lean_ctor_set(x_63, 2, x_56);
lean_ctor_set(x_63, 3, x_10);
x_1 = x_6;
x_2 = x_63;
goto _start;
}
}
else
{
uint8_t x_65; 
x_65 = l_Batteries_BinomialHeap_Imp_instDecidableRankGT___rarg(x_10, x_58);
if (x_65 == 0)
{
lean_object* x_66; 
x_66 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_66, 0, x_58);
lean_ctor_set(x_66, 1, x_4);
lean_ctor_set(x_66, 2, x_56);
lean_ctor_set(x_66, 3, x_6);
x_1 = x_66;
x_2 = x_10;
goto _start;
}
else
{
lean_object* x_68; lean_object* x_69; 
x_68 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_10);
x_69 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_69, 0, x_58);
lean_ctor_set(x_69, 1, x_4);
lean_ctor_set(x_69, 2, x_56);
lean_ctor_set(x_69, 3, x_68);
return x_69;
}
}
}
}
else
{
lean_object* x_70; lean_object* x_71; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_70 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_1, x_10);
x_71 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_71, 0, x_7);
lean_ctor_set(x_71, 1, x_8);
lean_ctor_set(x_71, 2, x_9);
lean_ctor_set(x_71, 3, x_70);
return x_71;
}
}
}
else
{
lean_object* x_72; uint8_t x_73; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_1);
lean_inc(x_2);
x_72 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_6, x_2);
x_73 = !lean_is_exclusive(x_2);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; 
x_74 = lean_ctor_get(x_2, 3);
lean_dec(x_74);
x_75 = lean_ctor_get(x_2, 2);
lean_dec(x_75);
x_76 = lean_ctor_get(x_2, 1);
lean_dec(x_76);
x_77 = lean_ctor_get(x_2, 0);
lean_dec(x_77);
lean_ctor_set(x_2, 3, x_72);
lean_ctor_set(x_2, 2, x_5);
lean_ctor_set(x_2, 1, x_4);
lean_ctor_set(x_2, 0, x_3);
return x_2;
}
else
{
lean_object* x_78; 
lean_dec(x_2);
x_78 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_78, 0, x_3);
lean_ctor_set(x_78, 1, x_4);
lean_ctor_set(x_78, 2, x_5);
lean_ctor_set(x_78, 3, x_72);
return x_78;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_BestFirstQueue_addGoals___spec__2(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_2, x_3);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_array_uget(x_1, x_2);
x_8 = l_Aesop_BestFirstQueue_ActiveGoal_ofGoalRef(x_7, x_5);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; size_t x_16; size_t x_17; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = lean_box(0);
x_12 = lean_box(0);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_alloc_ctor(1, 4, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
lean_ctor_set(x_14, 2, x_11);
lean_ctor_set(x_14, 3, x_12);
x_15 = l_Batteries_BinomialHeap_Imp_Heap_merge___at_Aesop_BestFirstQueue_addGoals___spec__1(x_14, x_4);
x_16 = 1;
x_17 = lean_usize_add(x_2, x_16);
x_2 = x_17;
x_4 = x_15;
x_5 = x_10;
goto _start;
}
else
{
uint8_t x_19; 
lean_dec(x_4);
x_19 = !lean_is_exclusive(x_8);
if (x_19 == 0)
{
return x_8;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_8, 0);
x_21 = lean_ctor_get(x_8, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_8);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
else
{
lean_object* x_23; 
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_4);
lean_ctor_set(x_23, 1, x_5);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_addGoals(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_4 = lean_array_get_size(x_2);
x_5 = lean_unsigned_to_nat(0u);
x_6 = lean_nat_dec_lt(x_5, x_4);
if (x_6 == 0)
{
lean_object* x_7; 
lean_dec(x_4);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_1);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
uint8_t x_8; 
x_8 = lean_nat_dec_le(x_4, x_4);
if (x_8 == 0)
{
lean_object* x_9; 
lean_dec(x_4);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_1);
lean_ctor_set(x_9, 1, x_3);
return x_9;
}
else
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = 0;
x_11 = lean_usize_of_nat(x_4);
lean_dec(x_4);
x_12 = l_Array_foldlMUnsafe_fold___at_Aesop_BestFirstQueue_addGoals___spec__2(x_2, x_10, x_11, x_1, x_3);
return x_12;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_BestFirstQueue_addGoals___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_7 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_8 = l_Array_foldlMUnsafe_fold___at_Aesop_BestFirstQueue_addGoals___spec__2(x_1, x_6, x_7, x_4, x_5);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_addGoals___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_BestFirstQueue_addGoals(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_BestFirstQueue_popGoal___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_BestFirstQueue_ActiveGoal_le___boxed), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_BestFirstQueue_popGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Aesop_BestFirstQueue_popGoal___closed__1;
lean_inc(x_1);
x_3 = l_Batteries_BinomialHeap_Imp_Heap_deleteMin___rarg(x_2, x_1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_box(0);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_1);
return x_5;
}
else
{
uint8_t x_6; 
lean_dec(x_1);
x_6 = !lean_is_exclusive(x_3);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_7, 0);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
lean_ctor_set(x_3, 0, x_10);
lean_ctor_set(x_7, 0, x_3);
return x_7;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_11 = lean_ctor_get(x_7, 0);
x_12 = lean_ctor_get(x_7, 1);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_7);
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_13);
lean_dec(x_11);
lean_ctor_set(x_3, 0, x_13);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_3);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_15 = lean_ctor_get(x_3, 0);
lean_inc(x_15);
lean_dec(x_3);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
if (lean_is_exclusive(x_15)) {
 lean_ctor_release(x_15, 0);
 lean_ctor_release(x_15, 1);
 x_18 = x_15;
} else {
 lean_dec_ref(x_15);
 x_18 = lean_box(0);
}
x_19 = lean_ctor_get(x_16, 0);
lean_inc(x_19);
lean_dec(x_16);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_19);
if (lean_is_scalar(x_18)) {
 x_21 = lean_alloc_ctor(0, 2, 0);
} else {
 x_21 = x_18;
}
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_17);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_instQueueBestFirstQueue___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Aesop_BestFirstQueue_popGoal(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_instQueueBestFirstQueue___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_BestFirstQueue_init;
x_2 = lean_alloc_closure((void*)(l_EStateM_pure___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instQueueBestFirstQueue___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_BestFirstQueue_addGoals___boxed), 3, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instQueueBestFirstQueue___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_instQueueBestFirstQueue___lambda__1), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_instQueueBestFirstQueue___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_instQueueBestFirstQueue___closed__1;
x_2 = l_Aesop_instQueueBestFirstQueue___closed__2;
x_3 = l_Aesop_instQueueBestFirstQueue___closed__3;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_instQueueBestFirstQueue() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instQueueBestFirstQueue___closed__4;
return x_1;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_init___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_init() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_LIFOQueue_init___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_addGoals(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Array_reverse___rarg(x_2);
x_4 = l_Array_append___rarg(x_1, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_popGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Array_back_x3f___rarg(x_1);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_box(0);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_1);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = lean_array_pop(x_1);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_2);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
lean_dec(x_2);
x_9 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_9, 0, x_8);
x_10 = lean_array_pop(x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_9);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_instQueue___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_Aesop_LIFOQueue_addGoals(x_1, x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_LIFOQueue_instQueue___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Aesop_LIFOQueue_popGoal(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_instQueue___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_LIFOQueue_init;
x_2 = lean_alloc_closure((void*)(l_EStateM_pure___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_instQueue___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_LIFOQueue_instQueue___lambda__1), 3, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_instQueue___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_LIFOQueue_instQueue___lambda__2), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_instQueue___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_LIFOQueue_instQueue___closed__1;
x_2 = l_Aesop_LIFOQueue_instQueue___closed__2;
x_3 = l_Aesop_LIFOQueue_instQueue___closed__3;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_LIFOQueue_instQueue() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_LIFOQueue_instQueue___closed__4;
return x_1;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_init___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_LIFOQueue_init___closed__1;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_init() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_FIFOQueue_init___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_addGoals(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = l_Array_append___rarg(x_4, x_2);
lean_ctor_set(x_1, 0, x_5);
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 0);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_1);
x_8 = l_Array_append___rarg(x_6, x_2);
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_addGoals___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_FIFOQueue_addGoals(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_popGoal(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
x_3 = lean_ctor_get(x_1, 1);
lean_inc(x_3);
x_4 = lean_array_get_size(x_2);
x_5 = lean_nat_dec_lt(x_3, x_4);
lean_dec(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_3);
lean_dec(x_2);
x_6 = lean_box(0);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_1);
return x_7;
}
else
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_1);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_1, 1);
lean_dec(x_9);
x_10 = lean_ctor_get(x_1, 0);
lean_dec(x_10);
x_11 = lean_array_fget(x_2, x_3);
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_11);
x_13 = lean_unsigned_to_nat(1u);
x_14 = lean_nat_add(x_3, x_13);
lean_dec(x_3);
lean_ctor_set(x_1, 1, x_14);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_12);
lean_ctor_set(x_15, 1, x_1);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_dec(x_1);
x_16 = lean_array_fget(x_2, x_3);
x_17 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_17, 0, x_16);
x_18 = lean_unsigned_to_nat(1u);
x_19 = lean_nat_add(x_3, x_18);
lean_dec(x_3);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_2);
lean_ctor_set(x_20, 1, x_19);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_17);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; 
x_4 = l_Aesop_FIFOQueue_addGoals(x_1, x_2);
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_4);
lean_ctor_set(x_5, 1, x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Aesop_FIFOQueue_popGoal(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_instQueue___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_FIFOQueue_init;
x_2 = lean_alloc_closure((void*)(l_EStateM_pure___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_instQueue___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_FIFOQueue_instQueue___lambda__1___boxed), 3, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_instQueue___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_FIFOQueue_instQueue___lambda__2), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_instQueue___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_FIFOQueue_instQueue___closed__1;
x_2 = l_Aesop_FIFOQueue_instQueue___closed__2;
x_3 = l_Aesop_FIFOQueue_instQueue___closed__3;
x_4 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_FIFOQueue_instQueue() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_FIFOQueue_instQueue___closed__4;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_FIFOQueue_instQueue___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_FIFOQueue_instQueue___lambda__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_Options_queue___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instQueueBestFirstQueue;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, lean_box(0));
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Options_queue___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_LIFOQueue_instQueue;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, lean_box(0));
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Options_queue___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_FIFOQueue_instQueue;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, lean_box(0));
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_queue(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = lean_ctor_get_uint8(x_1, sizeof(void*)*9);
switch (x_2) {
case 0:
{
lean_object* x_3; 
x_3 = l_Aesop_Options_queue___closed__1;
return x_3;
}
case 1:
{
lean_object* x_4; 
x_4 = l_Aesop_Options_queue___closed__2;
return x_4;
}
default: 
{
lean_object* x_5; 
x_5 = l_Aesop_Options_queue___closed__3;
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Options_queue___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Options_queue(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Options(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tracing(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Search_Queue_Class(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Data_BinomialHeap_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Search_Queue(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Options(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tracing(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Search_Queue_Class(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Data_BinomialHeap_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_BestFirstQueue_ActiveGoal_le___closed__1 = _init_l_Aesop_BestFirstQueue_ActiveGoal_le___closed__1();
lean_mark_persistent(l_Aesop_BestFirstQueue_ActiveGoal_le___closed__1);
l_Aesop_BestFirstQueue_ActiveGoal_le___closed__2 = _init_l_Aesop_BestFirstQueue_ActiveGoal_le___closed__2();
l_Aesop_BestFirstQueue_init = _init_l_Aesop_BestFirstQueue_init();
lean_mark_persistent(l_Aesop_BestFirstQueue_init);
l_Aesop_BestFirstQueue_popGoal___closed__1 = _init_l_Aesop_BestFirstQueue_popGoal___closed__1();
lean_mark_persistent(l_Aesop_BestFirstQueue_popGoal___closed__1);
l_Aesop_instQueueBestFirstQueue___closed__1 = _init_l_Aesop_instQueueBestFirstQueue___closed__1();
lean_mark_persistent(l_Aesop_instQueueBestFirstQueue___closed__1);
l_Aesop_instQueueBestFirstQueue___closed__2 = _init_l_Aesop_instQueueBestFirstQueue___closed__2();
lean_mark_persistent(l_Aesop_instQueueBestFirstQueue___closed__2);
l_Aesop_instQueueBestFirstQueue___closed__3 = _init_l_Aesop_instQueueBestFirstQueue___closed__3();
lean_mark_persistent(l_Aesop_instQueueBestFirstQueue___closed__3);
l_Aesop_instQueueBestFirstQueue___closed__4 = _init_l_Aesop_instQueueBestFirstQueue___closed__4();
lean_mark_persistent(l_Aesop_instQueueBestFirstQueue___closed__4);
l_Aesop_instQueueBestFirstQueue = _init_l_Aesop_instQueueBestFirstQueue();
lean_mark_persistent(l_Aesop_instQueueBestFirstQueue);
l_Aesop_LIFOQueue_init___closed__1 = _init_l_Aesop_LIFOQueue_init___closed__1();
lean_mark_persistent(l_Aesop_LIFOQueue_init___closed__1);
l_Aesop_LIFOQueue_init = _init_l_Aesop_LIFOQueue_init();
lean_mark_persistent(l_Aesop_LIFOQueue_init);
l_Aesop_LIFOQueue_instQueue___closed__1 = _init_l_Aesop_LIFOQueue_instQueue___closed__1();
lean_mark_persistent(l_Aesop_LIFOQueue_instQueue___closed__1);
l_Aesop_LIFOQueue_instQueue___closed__2 = _init_l_Aesop_LIFOQueue_instQueue___closed__2();
lean_mark_persistent(l_Aesop_LIFOQueue_instQueue___closed__2);
l_Aesop_LIFOQueue_instQueue___closed__3 = _init_l_Aesop_LIFOQueue_instQueue___closed__3();
lean_mark_persistent(l_Aesop_LIFOQueue_instQueue___closed__3);
l_Aesop_LIFOQueue_instQueue___closed__4 = _init_l_Aesop_LIFOQueue_instQueue___closed__4();
lean_mark_persistent(l_Aesop_LIFOQueue_instQueue___closed__4);
l_Aesop_LIFOQueue_instQueue = _init_l_Aesop_LIFOQueue_instQueue();
lean_mark_persistent(l_Aesop_LIFOQueue_instQueue);
l_Aesop_FIFOQueue_init___closed__1 = _init_l_Aesop_FIFOQueue_init___closed__1();
lean_mark_persistent(l_Aesop_FIFOQueue_init___closed__1);
l_Aesop_FIFOQueue_init = _init_l_Aesop_FIFOQueue_init();
lean_mark_persistent(l_Aesop_FIFOQueue_init);
l_Aesop_FIFOQueue_instQueue___closed__1 = _init_l_Aesop_FIFOQueue_instQueue___closed__1();
lean_mark_persistent(l_Aesop_FIFOQueue_instQueue___closed__1);
l_Aesop_FIFOQueue_instQueue___closed__2 = _init_l_Aesop_FIFOQueue_instQueue___closed__2();
lean_mark_persistent(l_Aesop_FIFOQueue_instQueue___closed__2);
l_Aesop_FIFOQueue_instQueue___closed__3 = _init_l_Aesop_FIFOQueue_instQueue___closed__3();
lean_mark_persistent(l_Aesop_FIFOQueue_instQueue___closed__3);
l_Aesop_FIFOQueue_instQueue___closed__4 = _init_l_Aesop_FIFOQueue_instQueue___closed__4();
lean_mark_persistent(l_Aesop_FIFOQueue_instQueue___closed__4);
l_Aesop_FIFOQueue_instQueue = _init_l_Aesop_FIFOQueue_instQueue();
lean_mark_persistent(l_Aesop_FIFOQueue_instQueue);
l_Aesop_Options_queue___closed__1 = _init_l_Aesop_Options_queue___closed__1();
lean_mark_persistent(l_Aesop_Options_queue___closed__1);
l_Aesop_Options_queue___closed__2 = _init_l_Aesop_Options_queue___closed__2();
lean_mark_persistent(l_Aesop_Options_queue___closed__2);
l_Aesop_Options_queue___closed__3 = _init_l_Aesop_Options_queue___closed__3();
lean_mark_persistent(l_Aesop_Options_queue___closed__3);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
