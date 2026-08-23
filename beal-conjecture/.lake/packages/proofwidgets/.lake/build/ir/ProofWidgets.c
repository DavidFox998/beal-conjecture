// Lean compiler output
// Module: ProofWidgets
// Imports: Init ProofWidgets.Compat ProofWidgets.Component.Basic ProofWidgets.Component.FilterDetails ProofWidgets.Component.HtmlDisplay ProofWidgets.Component.InteractiveSvg ProofWidgets.Component.MakeEditLink ProofWidgets.Component.OfRpcMethod ProofWidgets.Component.Panel.Basic ProofWidgets.Component.Panel.GoalTypePanel ProofWidgets.Component.Panel.SelectionPanel ProofWidgets.Component.PenroseDiagram ProofWidgets.Component.Recharts ProofWidgets.Data.Html ProofWidgets.Data.Svg ProofWidgets.Presentation.Expr
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
lean_object* initialize_ProofWidgets_Compat(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_FilterDetails(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_HtmlDisplay(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_InteractiveSvg(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_MakeEditLink(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_OfRpcMethod(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Panel_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Panel_GoalTypePanel(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Panel_SelectionPanel(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_PenroseDiagram(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Recharts(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Data_Html(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Data_Svg(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Presentation_Expr(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_ProofWidgets(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Compat(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_FilterDetails(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_HtmlDisplay(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_InteractiveSvg(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_MakeEditLink(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_OfRpcMethod(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Panel_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Panel_GoalTypePanel(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Panel_SelectionPanel(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_PenroseDiagram(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Recharts(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Data_Html(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Data_Svg(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Presentation_Expr(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
