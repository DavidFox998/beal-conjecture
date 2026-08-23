// Lean compiler output
// Module: Aesop.BuiltinRules
// Imports: Init Aesop.BuiltinRules.Assumption Aesop.BuiltinRules.ApplyHyps Aesop.BuiltinRules.DestructProducts Aesop.BuiltinRules.Ext Aesop.BuiltinRules.Intros Aesop.BuiltinRules.Rfl Aesop.BuiltinRules.Split Aesop.BuiltinRules.Subst Aesop.Frontend.Attribute
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
lean_object* initialize_Aesop_BuiltinRules_Assumption(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_ApplyHyps(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_DestructProducts(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_Ext(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_Intros(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_Rfl(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_Split(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_BuiltinRules_Subst(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Frontend_Attribute(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_BuiltinRules(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_Assumption(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_ApplyHyps(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_DestructProducts(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_Ext(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_Intros(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_Rfl(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_Split(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_BuiltinRules_Subst(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Frontend_Attribute(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
