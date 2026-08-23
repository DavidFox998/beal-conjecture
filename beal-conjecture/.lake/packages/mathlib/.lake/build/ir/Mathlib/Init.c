// Lean compiler output
// Module: Mathlib.Init
// Imports: Init Mathlib.Tactic.Linter.DocPrime Mathlib.Tactic.Linter.HashCommandLinter Mathlib.Tactic.Linter.GlobalAttributeIn Mathlib.Tactic.Linter.Lint Mathlib.Tactic.Linter.OldObtain Mathlib.Tactic.Linter.RefineLinter Mathlib.Tactic.Linter.UnusedTactic Mathlib.Tactic.Linter.Style
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
lean_object* initialize_Mathlib_Tactic_Linter_DocPrime(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_HashCommandLinter(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_GlobalAttributeIn(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_Lint(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_OldObtain(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_RefineLinter(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_UnusedTactic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Linter_Style(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_DocPrime(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_HashCommandLinter(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_GlobalAttributeIn(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_Lint(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_OldObtain(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_RefineLinter(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_UnusedTactic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Linter_Style(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
