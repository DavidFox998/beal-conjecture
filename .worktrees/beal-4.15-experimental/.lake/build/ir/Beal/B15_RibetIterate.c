// Lean compiler output
// Module: Beal.B15_RibetIterate
// Imports: Init Beal.B14_FreyS2 Beal.B14_FreyTate Beal.B14_FormRepresentation Beal.B14_TateInImpliesOrd1 Beal.B15_LevelTo2_Core Beal.B03_Conductor_Core Beal.Galois.«07k_TokenBridge» Mathlib.Data.List.Basic Mathlib.Data.Nat.Factors
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
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__iterate(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Beal_B15__RibetIterate_0__Beal_RibetIterate_ribet__iterate_match__1_splitter(lean_object*);
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__iterate___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Beal_B15__RibetIterate_0__Beal_RibetIterate_ribet__iterate_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_5, 5);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
x_9 = lean_ctor_get(x_5, 2);
lean_inc(x_9);
lean_dec(x_5);
x_10 = lean_apply_5(x_6, x_7, x_8, x_9, lean_box(0), lean_box(0));
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_4);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Beal_RibetIterate_ribet__single__step__from__genuine___rarg___boxed), 5, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Beal_RibetIterate_ribet__single__step__from__genuine___rarg(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__single__step__from__genuine___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Beal_RibetIterate_ribet__single__step__from__genuine(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__iterate(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
return x_2;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_nat_div(x_2, x_3);
lean_dec(x_2);
x_1 = x_4;
x_2 = x_5;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Beal_RibetIterate_ribet__iterate___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Beal_RibetIterate_ribet__iterate(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Beal_B15__RibetIterate_0__Beal_RibetIterate_ribet__iterate_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_2);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec(x_1);
x_8 = lean_apply_3(x_4, x_6, x_7, x_2);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l___private_Beal_B15__RibetIterate_0__Beal_RibetIterate_ribet__iterate_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Beal_B15__RibetIterate_0__Beal_RibetIterate_ribet__iterate_match__1_splitter___rarg), 4, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B14__FreyS2(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B14__FreyTate(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B14__FormRepresentation(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B14__TateInImpliesOrd1(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B15__LevelTo2__Core(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B03__Conductor__Core(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_07k__TokenBridge(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_List_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Factors(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B15__RibetIterate(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B14__FreyS2(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B14__FreyTate(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B14__FormRepresentation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B14__TateInImpliesOrd1(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B15__LevelTo2__Core(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B03__Conductor__Core(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_07k__TokenBridge(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_List_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Factors(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
