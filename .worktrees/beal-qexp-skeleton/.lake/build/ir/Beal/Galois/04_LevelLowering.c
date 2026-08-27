// Lean compiler output
// Module: Beal.Galois.«04_LevelLowering»
// Imports: Init Beal.Galois.«01_Absolute» Beal.Galois.«02_ResidualRep» Beal.Galois.«03_ModLForm» Beal.B14_FreyTate Beal.B03_Conductor_Core
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
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_01__Absolute(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_02__ResidualRep(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_Galois_03__ModLForm(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B14__FreyTate(uint8_t builtin, lean_object*);
lean_object* initialize_Beal_B03__Conductor__Core(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_Galois_04__LevelLowering(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_01__Absolute(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_02__ResidualRep(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_Galois_03__ModLForm(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B14__FreyTate(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Beal_B03__Conductor__Core(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
