// Lean compiler output
// Module: Aesop.Rule.Basic
// Imports: Init Aesop.Index.Basic Aesop.Rule.Name Aesop.RuleTac.Basic
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
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rule_instBEq___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM___rarg___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rule_instOrd___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedRule(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_instOrd(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rule_compareByPriorityThenName___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedRule___rarg___closed__2;
uint8_t l_Aesop_RuleName_compare(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedRule___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_instHashable___rarg___boxed(lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqPhaseName____x40_Aesop_Rule_Name___hyg_19_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Rule_instHashable(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Rule_compareByName___rarg(lean_object*, lean_object*);
LEAN_EXPORT uint64_t l_Aesop_Rule_instHashable___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_instOrd___rarg___boxed(lean_object*, lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(uint8_t, uint8_t);
static lean_object* l_Aesop_instInhabitedRule___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByName___rarg___boxed(lean_object*, lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqBuilderName____x40_Aesop_Rule_Name___hyg_237_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Rule_instBEq(lean_object*);
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriorityThenName(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriorityThenName___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByName(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriority(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriority___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_map___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Rule_map(lean_object*, lean_object*);
uint8_t lean_uint64_dec_eq(uint64_t, uint64_t);
LEAN_EXPORT lean_object* l_Aesop_Rule_instBEq___rarg___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_instInhabitedRule___rarg___closed__3;
static lean_object* _init_l_Aesop_instInhabitedRule___rarg___closed__1() {
_start:
{
uint64_t x_1; lean_object* x_2; uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_1 = 0;
x_2 = lean_box(0);
x_3 = 0;
x_4 = 0;
x_5 = 0;
x_6 = lean_alloc_ctor(0, 1, 11);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set_uint8(x_6, sizeof(void*)*1 + 8, x_3);
lean_ctor_set_uint8(x_6, sizeof(void*)*1 + 9, x_4);
lean_ctor_set_uint8(x_6, sizeof(void*)*1 + 10, x_5);
lean_ctor_set_uint64(x_6, sizeof(void*)*1, x_1);
return x_6;
}
}
static lean_object* _init_l_Aesop_instInhabitedRule___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedRule___rarg___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_instInhabitedRule___rarg___closed__2;
x_2 = 0;
x_3 = lean_alloc_ctor(1, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_instInhabitedRule___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = lean_box(0);
x_3 = l_Aesop_instInhabitedRule___rarg___closed__1;
x_4 = lean_box(0);
x_5 = l_Aesop_instInhabitedRule___rarg___closed__3;
x_6 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_6, 0, x_3);
lean_ctor_set(x_6, 1, x_4);
lean_ctor_set(x_6, 2, x_2);
lean_ctor_set(x_6, 3, x_1);
lean_ctor_set(x_6, 4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_instInhabitedRule(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_instInhabitedRule___rarg), 1, 0);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rule_instBEq___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint64_t x_5; uint64_t x_6; uint8_t x_7; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_ctor_get_uint64(x_3, sizeof(void*)*1);
x_6 = lean_ctor_get_uint64(x_4, sizeof(void*)*1);
x_7 = lean_uint64_dec_eq(x_5, x_6);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = 0;
return x_8;
}
else
{
uint8_t x_9; uint8_t x_10; uint8_t x_11; 
x_9 = lean_ctor_get_uint8(x_3, sizeof(void*)*1 + 8);
x_10 = lean_ctor_get_uint8(x_4, sizeof(void*)*1 + 8);
x_11 = l___private_Aesop_Rule_Name_0__Aesop_beqBuilderName____x40_Aesop_Rule_Name___hyg_237_(x_9, x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = 0;
return x_12;
}
else
{
uint8_t x_13; uint8_t x_14; uint8_t x_15; 
x_13 = lean_ctor_get_uint8(x_3, sizeof(void*)*1 + 9);
x_14 = lean_ctor_get_uint8(x_4, sizeof(void*)*1 + 9);
x_15 = l___private_Aesop_Rule_Name_0__Aesop_beqPhaseName____x40_Aesop_Rule_Name___hyg_19_(x_13, x_14);
if (x_15 == 0)
{
uint8_t x_16; 
x_16 = 0;
return x_16;
}
else
{
uint8_t x_17; uint8_t x_18; uint8_t x_19; 
x_17 = lean_ctor_get_uint8(x_3, sizeof(void*)*1 + 10);
x_18 = lean_ctor_get_uint8(x_4, sizeof(void*)*1 + 10);
x_19 = l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(x_17, x_18);
if (x_19 == 0)
{
uint8_t x_20; 
x_20 = 0;
return x_20;
}
else
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; 
x_21 = lean_ctor_get(x_3, 0);
x_22 = lean_ctor_get(x_4, 0);
x_23 = lean_name_eq(x_21, x_22);
return x_23;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_instBEq(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rule_instBEq___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_instBEq___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Rule_instBEq___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rule_instOrd___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
x_5 = l_Aesop_RuleName_compare(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_instOrd(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rule_instOrd___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_instOrd___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Rule_instOrd___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint64_t l_Aesop_Rule_instHashable___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; uint64_t x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get_uint64(x_2, sizeof(void*)*1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_instHashable(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rule_instHashable___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_instHashable___rarg___boxed(lean_object* x_1) {
_start:
{
uint64_t x_2; lean_object* x_3; 
x_2 = l_Aesop_Rule_instHashable___rarg(x_1);
lean_dec(x_1);
x_3 = lean_box_uint64(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriority___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_2, 3);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_ctor_get(x_3, 3);
lean_inc(x_5);
lean_dec(x_3);
x_6 = lean_apply_2(x_1, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriority(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rule_compareByPriority___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rule_compareByName___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
x_5 = l_Aesop_RuleName_compare(x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByName(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rule_compareByName___rarg___boxed), 2, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByName___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_Rule_compareByName___rarg(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t l_Aesop_Rule_compareByPriorityThenName___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; lean_object* x_6; 
lean_inc(x_3);
lean_inc(x_2);
x_4 = l_Aesop_Rule_compareByPriority___rarg(x_1, x_2, x_3);
x_5 = lean_unbox(x_4);
lean_dec(x_4);
x_6 = lean_box(x_5);
if (lean_obj_tag(x_6) == 1)
{
uint8_t x_7; 
x_7 = l_Aesop_Rule_compareByName___rarg(x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
else
{
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriorityThenName(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Rule_compareByPriorityThenName___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_compareByPriorityThenName___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Aesop_Rule_compareByPriorityThenName___rarg(x_1, x_2, x_3);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_map___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 3);
x_5 = lean_apply_1(x_1, x_4);
lean_ctor_set(x_2, 3, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_2, 2);
x_9 = lean_ctor_get(x_2, 3);
x_10 = lean_ctor_get(x_2, 4);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_2);
x_11 = lean_apply_1(x_1, x_9);
x_12 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_12, 0, x_6);
lean_ctor_set(x_12, 1, x_7);
lean_ctor_set(x_12, 2, x_8);
lean_ctor_set(x_12, 3, x_11);
lean_ctor_set(x_12, 4, x_10);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_map(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_Rule_map___rarg), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_2, 2);
x_9 = lean_ctor_get(x_2, 4);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
x_10 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_10, 0, x_6);
lean_ctor_set(x_10, 1, x_7);
lean_ctor_set(x_10, 2, x_8);
lean_ctor_set(x_10, 3, x_3);
lean_ctor_set(x_10, 4, x_9);
x_11 = lean_apply_2(x_5, lean_box(0), x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 3);
lean_inc(x_5);
x_6 = lean_apply_1(x_2, x_5);
x_7 = lean_alloc_closure((void*)(l_Aesop_Rule_mapM___rarg___lambda__1___boxed), 3, 2);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_3);
x_8 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Aesop_Rule_mapM___rarg), 3, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Rule_mapM___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Rule_mapM___rarg___lambda__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Index_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Rule_Name(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleTac_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Rule_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Index_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Rule_Name(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleTac_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedRule___rarg___closed__1 = _init_l_Aesop_instInhabitedRule___rarg___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedRule___rarg___closed__1);
l_Aesop_instInhabitedRule___rarg___closed__2 = _init_l_Aesop_instInhabitedRule___rarg___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedRule___rarg___closed__2);
l_Aesop_instInhabitedRule___rarg___closed__3 = _init_l_Aesop_instInhabitedRule___rarg___closed__3();
lean_mark_persistent(l_Aesop_instInhabitedRule___rarg___closed__3);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
