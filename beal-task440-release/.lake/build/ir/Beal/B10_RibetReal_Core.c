// Lean compiler output
// Module: Beal.B10_RibetReal_Core
// Imports: Init
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
LEAN_EXPORT lean_object* l_GenusX0__2__Core;
LEAN_EXPORT lean_object* l_DimS2__2__Core;
static lean_object* _init_l_GenusX0__2__Core() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(0u);
return x_1;
}
}
static lean_object* _init_l_DimS2__2__Core() {
_start:
{
lean_object* x_1; 
x_1 = l_GenusX0__2__Core;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B10__RibetReal__Core(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_GenusX0__2__Core = _init_l_GenusX0__2__Core();
lean_mark_persistent(l_GenusX0__2__Core);
l_DimS2__2__Core = _init_l_DimS2__2__Core();
lean_mark_persistent(l_DimS2__2__Core);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
