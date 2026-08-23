// Lean compiler output
// Module: Aesop.RuleSet.Filter
// Imports: Init Aesop.RuleSet.Name Aesop.Rule.Name
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
LEAN_EXPORT uint8_t l_Aesop_RuleSetNameFilter_matchesAll(lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
static lean_object* l_Aesop_RuleSetNameFilter_all___closed__1;
LEAN_EXPORT uint8_t l_Array_contains___at_Aesop_RuleFilter_matchesBuilder___spec__1(lean_object*, uint8_t);
static lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__1;
LEAN_EXPORT lean_object* l_Array_contains___at_Aesop_RuleFilter_matchesPhase___spec__1___boxed(lean_object*, lean_object*);
uint8_t l_Array_contains___at_Aesop_RuleSetName_isReserved___spec__1(lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT uint8_t l_Aesop_RuleFilter_matches(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_matches___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesPhase___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesBuilder___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_matchedRuleSetNames(lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqPhaseName____x40_Aesop_Rule_Name___hyg_19_(uint8_t, uint8_t);
size_t lean_usize_of_nat(lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Array_contains___at_Aesop_RuleFilter_matchesBuilder___spec__1___boxed(lean_object*, lean_object*);
uint8_t l___private_Aesop_Rule_Name_0__Aesop_beqBuilderName____x40_Aesop_Rule_Name___hyg_237_(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesBuilder___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesPhase___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2;
uint8_t lean_name_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___lambda__1___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesSimpTheorem_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_matchesAll___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesBuilder___spec__2(uint8_t, lean_object*, size_t, size_t);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_RuleSetNameFilter_matches(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_RuleFilter_matchesPhase(lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_all;
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesPhase___spec__2(uint8_t, lean_object*, size_t, size_t);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___lambda__1(lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matches___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesSimpTheorem_x3f___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Array_contains___at_Aesop_RuleFilter_matchesPhase___spec__1(lean_object*, uint8_t);
lean_object* lean_array_get_size(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_RuleFilter_matchesBuilder(lean_object*, uint8_t);
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesPhase___spec__2(uint8_t x_1, lean_object* x_2, size_t x_3, size_t x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; uint8_t x_8; 
x_6 = lean_array_uget(x_2, x_3);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
x_8 = l___private_Aesop_Rule_Name_0__Aesop_beqPhaseName____x40_Aesop_Rule_Name___hyg_19_(x_7, x_1);
if (x_8 == 0)
{
size_t x_9; size_t x_10; 
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
x_3 = x_10;
goto _start;
}
else
{
uint8_t x_12; 
x_12 = 1;
return x_12;
}
}
else
{
uint8_t x_13; 
x_13 = 0;
return x_13;
}
}
}
LEAN_EXPORT uint8_t l_Array_contains___at_Aesop_RuleFilter_matchesPhase___spec__1(lean_object* x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_array_get_size(x_1);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_lt(x_4, x_3);
if (x_5 == 0)
{
uint8_t x_6; 
lean_dec(x_3);
x_6 = 0;
return x_6;
}
else
{
size_t x_7; size_t x_8; uint8_t x_9; 
x_7 = 0;
x_8 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_9 = l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesPhase___spec__2(x_2, x_1, x_7, x_8);
return x_9;
}
}
}
LEAN_EXPORT uint8_t l_Aesop_RuleFilter_matchesPhase(lean_object* x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_1, 2);
x_4 = l_Array_isEmpty___rarg(x_3);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = l_Array_contains___at_Aesop_RuleFilter_matchesPhase___spec__1(x_3, x_2);
return x_5;
}
else
{
uint8_t x_6; 
x_6 = 1;
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesPhase___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; size_t x_6; size_t x_7; uint8_t x_8; lean_object* x_9; 
x_5 = lean_unbox(x_1);
lean_dec(x_1);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesPhase___spec__2(x_5, x_2, x_6, x_7);
lean_dec(x_2);
x_9 = lean_box(x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_contains___at_Aesop_RuleFilter_matchesPhase___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unbox(x_2);
lean_dec(x_2);
x_4 = l_Array_contains___at_Aesop_RuleFilter_matchesPhase___spec__1(x_1, x_3);
lean_dec(x_1);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesPhase___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unbox(x_2);
lean_dec(x_2);
x_4 = l_Aesop_RuleFilter_matchesPhase(x_1, x_3);
lean_dec(x_1);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesBuilder___spec__2(uint8_t x_1, lean_object* x_2, size_t x_3, size_t x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; uint8_t x_8; 
x_6 = lean_array_uget(x_2, x_3);
x_7 = lean_unbox(x_6);
lean_dec(x_6);
x_8 = l___private_Aesop_Rule_Name_0__Aesop_beqBuilderName____x40_Aesop_Rule_Name___hyg_237_(x_7, x_1);
if (x_8 == 0)
{
size_t x_9; size_t x_10; 
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
x_3 = x_10;
goto _start;
}
else
{
uint8_t x_12; 
x_12 = 1;
return x_12;
}
}
else
{
uint8_t x_13; 
x_13 = 0;
return x_13;
}
}
}
LEAN_EXPORT uint8_t l_Array_contains___at_Aesop_RuleFilter_matchesBuilder___spec__1(lean_object* x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_array_get_size(x_1);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_lt(x_4, x_3);
if (x_5 == 0)
{
uint8_t x_6; 
lean_dec(x_3);
x_6 = 0;
return x_6;
}
else
{
size_t x_7; size_t x_8; uint8_t x_9; 
x_7 = 0;
x_8 = lean_usize_of_nat(x_3);
lean_dec(x_3);
x_9 = l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesBuilder___spec__2(x_2, x_1, x_7, x_8);
return x_9;
}
}
}
LEAN_EXPORT uint8_t l_Aesop_RuleFilter_matchesBuilder(lean_object* x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_ctor_get(x_1, 1);
x_4 = l_Array_isEmpty___rarg(x_3);
if (x_4 == 0)
{
uint8_t x_5; 
x_5 = l_Array_contains___at_Aesop_RuleFilter_matchesBuilder___spec__1(x_3, x_2);
return x_5;
}
else
{
uint8_t x_6; 
x_6 = 1;
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesBuilder___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; size_t x_6; size_t x_7; uint8_t x_8; lean_object* x_9; 
x_5 = lean_unbox(x_1);
lean_dec(x_1);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_anyMUnsafe_any___at_Aesop_RuleFilter_matchesBuilder___spec__2(x_5, x_2, x_6, x_7);
lean_dec(x_2);
x_9 = lean_box(x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_contains___at_Aesop_RuleFilter_matchesBuilder___spec__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unbox(x_2);
lean_dec(x_2);
x_4 = l_Array_contains___at_Aesop_RuleFilter_matchesBuilder___spec__1(x_1, x_3);
lean_dec(x_1);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesBuilder___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unbox(x_2);
lean_dec(x_2);
x_4 = l_Aesop_RuleFilter_matchesBuilder(x_1, x_3);
lean_dec(x_1);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT uint8_t l_Aesop_RuleFilter_matches(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_name_eq(x_3, x_4);
if (x_5 == 0)
{
uint8_t x_6; 
x_6 = 0;
return x_6;
}
else
{
uint8_t x_7; uint8_t x_8; uint8_t x_9; 
x_7 = lean_ctor_get_uint8(x_1, sizeof(void*)*3);
x_8 = lean_ctor_get_uint8(x_2, sizeof(void*)*1 + 10);
x_9 = l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(x_7, x_8);
if (x_9 == 0)
{
uint8_t x_10; 
x_10 = 0;
return x_10;
}
else
{
uint8_t x_11; uint8_t x_12; 
x_11 = lean_ctor_get_uint8(x_2, sizeof(void*)*1 + 9);
x_12 = l_Aesop_RuleFilter_matchesPhase(x_1, x_11);
if (x_12 == 0)
{
uint8_t x_13; 
x_13 = 0;
return x_13;
}
else
{
uint8_t x_14; uint8_t x_15; 
x_14 = lean_ctor_get_uint8(x_2, sizeof(void*)*1 + 8);
x_15 = l_Aesop_RuleFilter_matchesBuilder(x_1, x_14);
return x_15;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matches___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_RuleFilter_matches(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesSimpTheorem_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; uint8_t x_4; uint8_t x_5; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get_uint8(x_1, sizeof(void*)*3);
x_4 = 0;
x_5 = l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; 
x_6 = lean_box(0);
return x_6;
}
else
{
uint8_t x_7; uint8_t x_8; 
x_7 = 5;
x_8 = l_Aesop_RuleFilter_matchesBuilder(x_1, x_7);
if (x_8 == 0)
{
lean_object* x_9; 
x_9 = lean_box(0);
return x_9;
}
else
{
lean_object* x_10; 
lean_inc(x_2);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_2);
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesSimpTheorem_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_RuleFilter_matchesSimpTheorem_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___lambda__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_box(0);
return x_2;
}
}
static lean_object* _init_l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___lambda__1___boxed), 1, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__1;
x_2 = lean_box(0);
x_3 = lean_apply_1(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; uint8_t x_4; uint8_t x_5; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = lean_ctor_get_uint8(x_1, sizeof(void*)*3);
x_4 = 1;
x_5 = l___private_Aesop_Rule_Name_0__Aesop_beqScopeName____x40_Aesop_Rule_Name___hyg_133_(x_3, x_4);
if (x_5 == 0)
{
lean_object* x_6; 
x_6 = l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2;
return x_6;
}
else
{
uint8_t x_7; uint8_t x_8; 
x_7 = 5;
x_8 = l_Aesop_RuleFilter_matchesBuilder(x_1, x_7);
if (x_8 == 0)
{
lean_object* x_9; 
x_9 = l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2;
return x_9;
}
else
{
lean_object* x_10; 
lean_inc(x_2);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_2);
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___lambda__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___lambda__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_RuleSetNameFilter_all___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_RuleSetNameFilter_all() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_RuleSetNameFilter_all___closed__1;
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_RuleSetNameFilter_matchesAll(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = l_Array_isEmpty___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_matchesAll___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = l_Aesop_RuleSetNameFilter_matchesAll(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Aesop_RuleSetNameFilter_matches(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_Array_isEmpty___rarg(x_1);
if (x_3 == 0)
{
uint8_t x_4; 
x_4 = l_Array_contains___at_Aesop_RuleSetName_isReserved___spec__1(x_1, x_2);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = 1;
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_matches___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Aesop_RuleSetNameFilter_matches(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_RuleSetNameFilter_matchedRuleSetNames(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = l_Array_isEmpty___rarg(x_1);
if (x_2 == 0)
{
lean_object* x_3; 
x_3 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_3, 0, x_1);
return x_3;
}
else
{
lean_object* x_4; 
lean_dec(x_1);
x_4 = lean_box(0);
return x_4;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleSet_Name(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Rule_Name(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_RuleSet_Filter(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleSet_Name(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Rule_Name(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__1 = _init_l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__1();
lean_mark_persistent(l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__1);
l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2 = _init_l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2();
lean_mark_persistent(l_Aesop_RuleFilter_matchesLocalNormSimpRule_x3f___closed__2);
l_Aesop_RuleSetNameFilter_all___closed__1 = _init_l_Aesop_RuleSetNameFilter_all___closed__1();
lean_mark_persistent(l_Aesop_RuleSetNameFilter_all___closed__1);
l_Aesop_RuleSetNameFilter_all = _init_l_Aesop_RuleSetNameFilter_all();
lean_mark_persistent(l_Aesop_RuleSetNameFilter_all);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
