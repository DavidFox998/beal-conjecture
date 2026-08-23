// Lean compiler output
// Module: Aesop.RuleSet.Member
// Imports: Init Aesop.Rule
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
LEAN_EXPORT lean_object* l_Aesop_instInhabitedLocalRuleSetMember;
static lean_object* l_Aesop_instInhabitedGlobalRuleSetMember___closed__1;
LEAN_EXPORT lean_object* l_Aesop_LocalRuleSetMember_name___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BaseRuleSetMember_name(lean_object*);
static lean_object* l_Aesop_instInhabitedBaseRuleSetMember___closed__1;
static lean_object* l_Aesop_instInhabitedLocalRuleSetMember___closed__1;
static lean_object* l_Aesop_instInhabitedBaseRuleSetMember___closed__3;
static lean_object* l_Aesop_instInhabitedBaseRuleSetMember___closed__6;
static lean_object* l_Aesop_instInhabitedBaseRuleSetMember___closed__2;
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_LocalRuleSetMember_toGlobalRuleSetMember_x3f(lean_object*);
lean_object* l_Aesop_UnfoldRule_name(lean_object*);
lean_object* l_Aesop_LocalNormSimpRule_name(lean_object*);
static lean_object* l_Aesop_instInhabitedBaseRuleSetMember___closed__5;
LEAN_EXPORT lean_object* l_Aesop_instInhabitedGlobalRuleSetMember;
LEAN_EXPORT lean_object* l_Aesop_GlobalRuleSetMember_name(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedBaseRuleSetMember;
LEAN_EXPORT lean_object* l_Aesop_GlobalRuleSetMember_name___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_BaseRuleSetMember_name___boxed(lean_object*);
static lean_object* l_Aesop_instInhabitedBaseRuleSetMember___closed__4;
LEAN_EXPORT lean_object* l_Aesop_LocalRuleSetMember_name(lean_object*);
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__1() {
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
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_instInhabitedBaseRuleSetMember___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(1, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedBaseRuleSetMember___closed__1;
x_3 = lean_box(0);
x_4 = l_Aesop_instInhabitedBaseRuleSetMember___closed__2;
x_5 = l_Aesop_instInhabitedBaseRuleSetMember___closed__4;
x_6 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set(x_6, 1, x_3);
lean_ctor_set(x_6, 2, x_1);
lean_ctor_set(x_6, 3, x_4);
lean_ctor_set(x_6, 4, x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instInhabitedBaseRuleSetMember___closed__5;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedBaseRuleSetMember() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedBaseRuleSetMember___closed__6;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_BaseRuleSetMember_name(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 3)
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = l_Aesop_UnfoldRule_name(x_2);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_BaseRuleSetMember_name___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_BaseRuleSetMember_name(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedGlobalRuleSetMember___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instInhabitedBaseRuleSetMember___closed__6;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedGlobalRuleSetMember() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedGlobalRuleSetMember___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_GlobalRuleSetMember_name(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = l_Aesop_BaseRuleSetMember_name(x_2);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_GlobalRuleSetMember_name___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_GlobalRuleSetMember_name(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedLocalRuleSetMember___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instInhabitedGlobalRuleSetMember___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedLocalRuleSetMember() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedLocalRuleSetMember___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_LocalRuleSetMember_name(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_ctor_get(x_1, 0);
x_3 = l_Aesop_GlobalRuleSetMember_name(x_2);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = l_Aesop_LocalNormSimpRule_name(x_4);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_LocalRuleSetMember_name___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_LocalRuleSetMember_name(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_LocalRuleSetMember_toGlobalRuleSetMember_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_ctor_set_tag(x_1, 1);
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
else
{
lean_object* x_5; 
lean_dec(x_1);
x_5 = lean_box(0);
return x_5;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Rule(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_RuleSet_Member(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Rule(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedBaseRuleSetMember___closed__1 = _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember___closed__1);
l_Aesop_instInhabitedBaseRuleSetMember___closed__2 = _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember___closed__2);
l_Aesop_instInhabitedBaseRuleSetMember___closed__3 = _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__3();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember___closed__3);
l_Aesop_instInhabitedBaseRuleSetMember___closed__4 = _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__4();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember___closed__4);
l_Aesop_instInhabitedBaseRuleSetMember___closed__5 = _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__5();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember___closed__5);
l_Aesop_instInhabitedBaseRuleSetMember___closed__6 = _init_l_Aesop_instInhabitedBaseRuleSetMember___closed__6();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember___closed__6);
l_Aesop_instInhabitedBaseRuleSetMember = _init_l_Aesop_instInhabitedBaseRuleSetMember();
lean_mark_persistent(l_Aesop_instInhabitedBaseRuleSetMember);
l_Aesop_instInhabitedGlobalRuleSetMember___closed__1 = _init_l_Aesop_instInhabitedGlobalRuleSetMember___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedGlobalRuleSetMember___closed__1);
l_Aesop_instInhabitedGlobalRuleSetMember = _init_l_Aesop_instInhabitedGlobalRuleSetMember();
lean_mark_persistent(l_Aesop_instInhabitedGlobalRuleSetMember);
l_Aesop_instInhabitedLocalRuleSetMember___closed__1 = _init_l_Aesop_instInhabitedLocalRuleSetMember___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedLocalRuleSetMember___closed__1);
l_Aesop_instInhabitedLocalRuleSetMember = _init_l_Aesop_instInhabitedLocalRuleSetMember();
lean_mark_persistent(l_Aesop_instInhabitedLocalRuleSetMember);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
