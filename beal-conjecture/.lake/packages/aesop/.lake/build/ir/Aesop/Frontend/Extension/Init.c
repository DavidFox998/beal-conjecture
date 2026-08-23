// Lean compiler output
// Module: Aesop.Frontend.Extension.Init
// Imports: Init Aesop.RuleSet
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
static lean_object* l_Aesop_instInhabitedDeclaredRuleSets___closed__2;
static lean_object* l_Aesop_getDeclaredRuleSets___closed__1;
static lean_object* l_Aesop_instInhabitedDeclaredRuleSets___closed__3;
static lean_object* l_Aesop_instInhabitedDeclaredRuleSets___closed__4;
lean_object* lean_mk_array(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getDeclaredRuleSets(lean_object*);
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedDeclaredRuleSets;
LEAN_EXPORT lean_object* l_Aesop_declaredRuleSetsRef;
lean_object* lean_st_ref_get(lean_object*, lean_object*);
lean_object* lean_st_mk_ref(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_getDefaultRuleSetNames(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instEmptyCollectionDeclaredRuleSets;
static lean_object* l_Aesop_instInhabitedDeclaredRuleSets___closed__1;
LEAN_EXPORT lean_object* l_Aesop_initFn____x40_Aesop_Frontend_Extension_Init___hyg_69_(lean_object*);
static lean_object* _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_instInhabitedDeclaredRuleSets___closed__1;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Aesop_instInhabitedDeclaredRuleSets___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_instInhabitedDeclaredRuleSets___closed__3;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedDeclaredRuleSets() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedDeclaredRuleSets___closed__4;
return x_1;
}
}
static lean_object* _init_l_Aesop_instEmptyCollectionDeclaredRuleSets() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedDeclaredRuleSets___closed__4;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_initFn____x40_Aesop_Frontend_Extension_Init___hyg_69_(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_instInhabitedDeclaredRuleSets___closed__4;
x_3 = lean_st_mk_ref(x_2, x_1);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_3, 1);
lean_inc(x_6);
lean_inc(x_5);
lean_dec(x_3);
x_7 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set(x_7, 1, x_6);
return x_7;
}
}
}
static lean_object* _init_l_Aesop_getDeclaredRuleSets___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_declaredRuleSetsRef;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_getDeclaredRuleSets(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_getDeclaredRuleSets___closed__1;
x_3 = lean_st_ref_get(x_2, x_1);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
lean_dec(x_5);
lean_ctor_set(x_3, 0, x_6);
return x_3;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_9 = lean_ctor_get(x_7, 0);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_getDefaultRuleSetNames(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = l_Aesop_getDeclaredRuleSets___closed__1;
x_3 = lean_st_ref_get(x_2, x_1);
x_4 = !lean_is_exclusive(x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_ctor_get(x_3, 0);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
lean_ctor_set(x_3, 0, x_6);
return x_3;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_3, 0);
x_8 = lean_ctor_get(x_3, 1);
lean_inc(x_8);
lean_inc(x_7);
lean_dec(x_3);
x_9 = lean_ctor_get(x_7, 1);
lean_inc(x_9);
lean_dec(x_7);
x_10 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_10, 0, x_9);
lean_ctor_set(x_10, 1, x_8);
return x_10;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleSet(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Frontend_Extension_Init(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleSet(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedDeclaredRuleSets___closed__1 = _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedDeclaredRuleSets___closed__1);
l_Aesop_instInhabitedDeclaredRuleSets___closed__2 = _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__2();
lean_mark_persistent(l_Aesop_instInhabitedDeclaredRuleSets___closed__2);
l_Aesop_instInhabitedDeclaredRuleSets___closed__3 = _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__3();
lean_mark_persistent(l_Aesop_instInhabitedDeclaredRuleSets___closed__3);
l_Aesop_instInhabitedDeclaredRuleSets___closed__4 = _init_l_Aesop_instInhabitedDeclaredRuleSets___closed__4();
lean_mark_persistent(l_Aesop_instInhabitedDeclaredRuleSets___closed__4);
l_Aesop_instInhabitedDeclaredRuleSets = _init_l_Aesop_instInhabitedDeclaredRuleSets();
lean_mark_persistent(l_Aesop_instInhabitedDeclaredRuleSets);
l_Aesop_instEmptyCollectionDeclaredRuleSets = _init_l_Aesop_instEmptyCollectionDeclaredRuleSets();
lean_mark_persistent(l_Aesop_instEmptyCollectionDeclaredRuleSets);
res = l_Aesop_initFn____x40_Aesop_Frontend_Extension_Init___hyg_69_(lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
l_Aesop_declaredRuleSetsRef = lean_io_result_get_value(res);
lean_mark_persistent(l_Aesop_declaredRuleSetsRef);
lean_dec_ref(res);
l_Aesop_getDeclaredRuleSets___closed__1 = _init_l_Aesop_getDeclaredRuleSets___closed__1();
lean_mark_persistent(l_Aesop_getDeclaredRuleSets___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
