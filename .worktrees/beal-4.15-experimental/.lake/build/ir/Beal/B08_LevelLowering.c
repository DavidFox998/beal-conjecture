// Lean compiler output
// Module: Beal.B08_LevelLowering
// Imports: Init Beal.B01_Def Beal.B08_LevelLowering_Core Beal.B07_Galois
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
LEAN_EXPORT lean_object* l_dimS2Gamma0(lean_object*);
LEAN_EXPORT lean_object* l_dimS2Gamma0___boxed(lean_object*);
LEAN_EXPORT lean_object* l_dimS2Gamma0(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
}
LEAN_EXPORT lean_object* l_dimS2Gamma0___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_dimS2Gamma0(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B01__Def(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B08__LevelLowering__Core(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B07__Galois(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B08__LevelLowering(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B01__Def(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B08__LevelLowering__Core(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B07__Galois(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
