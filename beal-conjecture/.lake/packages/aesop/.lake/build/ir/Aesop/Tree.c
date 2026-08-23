// Lean compiler output
// Module: Aesop.Tree
// Imports: Init Aesop.Tree.AddRapp Aesop.Tree.Check Aesop.Tree.Data Aesop.Tree.ExtractProof Aesop.Tree.ExtractScript Aesop.Tree.Free Aesop.Tree.RunMetaM Aesop.Tree.State Aesop.Tree.Tracing Aesop.Tree.Traversal Aesop.Tree.TreeM Aesop.Tree.UnsafeQueue
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
lean_object* initialize_Aesop_Tree_AddRapp(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_Check(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_Data(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_ExtractProof(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_ExtractScript(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_Free(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_RunMetaM(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_State(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_Tracing(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_Traversal(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_TreeM(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Tree_UnsafeQueue(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Tree(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_AddRapp(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_Check(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_Data(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_ExtractProof(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_ExtractScript(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_Free(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_RunMetaM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_State(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_Tracing(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_Traversal(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_TreeM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Tree_UnsafeQueue(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
