// Lean compiler output
// Module: Batteries.CodeAction.Basic
// Imports: Init Lean.Elab.BuiltinTerm Lean.Elab.BuiltinNotation Lean.Server.InfoUtils Lean.Server.CodeActions.Provider Batteries.CodeAction.Attr
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
static lean_object* l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__1;
lean_object* l_Lean_Server_Snapshots_Snapshot_infoTree(lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__2___boxed(lean_object*, lean_object*);
lean_object* l_EStateM_instInhabited___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_panic___at_Lean_Elab_InfoTree_hoverableInfoAt_x3f___spec__2(lean_object*);
lean_object* l_instInhabitedReaderT___rarg___boxed(lean_object*, lean_object*);
extern lean_object* l_Batteries_CodeAction_tacticCodeActionExt;
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__12;
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__6;
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getNumArgs(lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__5;
LEAN_EXPORT lean_object* l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1(lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_Server_instInhabitedRequestError;
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__11;
lean_object* l_Lean_FileMap_lspPosToUtf8Pos(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Batteries_CodeAction_tacticCodeActionProvider___lambda__1(lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__7;
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__8;
lean_object* l_Lean_PersistentEnvExtension_getState___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__13;
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__10;
extern lean_object* l_Batteries_CodeAction_tacticSeqCodeActionExt;
lean_object* l_Lean_Syntax_getKind(lean_object*);
lean_object* l_Lean_Server_Snapshots_Snapshot_env(lean_object*);
static lean_object* l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__2;
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_FileMap_utf8PosToLspPos(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
lean_object* l___private_Init_Util_0__mkPanicMessageWithDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__14;
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__2;
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
lean_object* l_panic___at_Lean_Parser_SyntaxStack_back___spec__1(lean_object*);
lean_object* l_Lean_Server_RequestM_readDoc___at_Lean_Server_RequestM_withWaitFindSnapAtPos___spec__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__3;
lean_object* lean_panic_fn(lean_object*, lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getRange_x3f(lean_object*, uint8_t);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__9;
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT uint8_t l_Batteries_CodeAction_tacticCodeActionProvider___lambda__2(lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___closed__4;
extern lean_object* l_Batteries_CodeAction_instInhabitedTacticCodeActions;
lean_object* l_Lean_CodeAction_findTactic_x3f(lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
lean_object* l_Lean_RBNode_find___at_Lean_NameMap_find_x3f___spec__1___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1;
lean_object* l_Lean_CodeAction_findInfoTree_x3f(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
static lean_object* _init_l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_Server_instInhabitedRequestError;
x_2 = lean_alloc_closure((void*)(l_EStateM_instInhabited___rarg), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__1;
x_2 = lean_alloc_closure((void*)(l_instInhabitedReaderT___rarg___boxed), 2, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__2;
x_5 = lean_panic_fn(x_4, x_1);
x_6 = lean_apply_2(x_5, x_2, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, size_t x_7, size_t x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_8, x_7);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_array_uget(x_6, x_8);
lean_inc(x_10);
lean_inc(x_3);
lean_inc(x_4);
lean_inc(x_5);
lean_inc(x_2);
lean_inc(x_1);
x_15 = lean_apply_7(x_14, x_1, x_2, x_5, x_4, x_3, x_10, x_11);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Array_append___rarg(x_9, x_16);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_8, x_19);
x_8 = x_20;
x_9 = x_18;
x_11 = x_17;
goto _start;
}
else
{
lean_object* x_22; size_t x_23; size_t x_24; 
x_22 = lean_ctor_get(x_15, 1);
lean_inc(x_22);
lean_dec(x_15);
x_23 = 1;
x_24 = lean_usize_add(x_8, x_23);
x_8 = x_24;
x_11 = x_22;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, size_t x_7, size_t x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_8, x_7);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_9);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_array_uget(x_6, x_8);
lean_inc(x_10);
lean_inc(x_3);
lean_inc(x_4);
lean_inc(x_5);
lean_inc(x_2);
lean_inc(x_1);
x_15 = lean_apply_7(x_14, x_1, x_2, x_5, x_4, x_3, x_10, x_11);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = l_Array_append___rarg(x_9, x_16);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_8, x_19);
x_8 = x_20;
x_9 = x_18;
x_11 = x_17;
goto _start;
}
else
{
lean_object* x_22; size_t x_23; size_t x_24; 
x_22 = lean_ctor_get(x_15, 1);
lean_inc(x_22);
lean_dec(x_15);
x_23 = 1;
x_24 = lean_usize_add(x_8, x_23);
x_8 = x_24;
x_11 = x_22;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, size_t x_8, size_t x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_lt(x_9, x_8);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_11);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; 
x_15 = lean_array_uget(x_7, x_9);
lean_inc(x_11);
lean_inc(x_6);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_5);
lean_inc(x_2);
lean_inc(x_1);
x_16 = lean_apply_8(x_15, x_1, x_2, x_5, x_3, x_4, x_6, x_11, x_12);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = l_Array_append___rarg(x_10, x_17);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_9, x_20);
x_9 = x_21;
x_10 = x_19;
x_12 = x_18;
goto _start;
}
else
{
lean_object* x_23; size_t x_24; size_t x_25; 
x_23 = lean_ctor_get(x_16, 1);
lean_inc(x_23);
lean_dec(x_16);
x_24 = 1;
x_25 = lean_usize_add(x_9, x_24);
x_9 = x_25;
x_12 = x_23;
goto _start;
}
}
}
}
LEAN_EXPORT uint8_t l_Batteries_CodeAction_tacticCodeActionProvider___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_4 = l_Lean_FileMap_utf8PosToLspPos(x_1, x_3);
x_5 = lean_ctor_get(x_4, 1);
lean_inc(x_5);
lean_dec(x_4);
x_6 = lean_nat_dec_le(x_5, x_2);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT uint8_t l_Batteries_CodeAction_tacticCodeActionProvider___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
uint8_t x_3; 
x_3 = 1;
return x_3;
}
else
{
uint8_t x_4; 
x_4 = 0;
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; size_t x_13; size_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_12 = lean_ctor_get(x_1, 0);
x_13 = lean_array_size(x_12);
x_14 = 0;
lean_inc(x_10);
x_15 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__2(x_2, x_3, x_4, x_5, x_6, x_12, x_13, x_14, x_8, x_10, x_11);
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = lean_box(0);
x_19 = lean_apply_4(x_7, x_16, x_18, x_10, x_17);
return x_19;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_CodeAction_tacticSeqCodeActionExt;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_8);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; size_t x_18; size_t x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_12 = lean_ctor_get(x_8, 0);
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_1);
lean_ctor_set(x_8, 1, x_1);
lean_ctor_set(x_8, 0, x_1);
x_14 = l_Lean_Server_Snapshots_Snapshot_env(x_2);
x_15 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1;
x_16 = l_Lean_PersistentEnvExtension_getState___rarg(x_8, x_15, x_14);
lean_dec(x_14);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_array_size(x_17);
x_19 = 0;
lean_inc(x_9);
x_20 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4(x_3, x_2, x_4, x_5, x_12, x_13, x_17, x_18, x_19, x_7, x_9, x_10);
lean_dec(x_17);
x_21 = lean_ctor_get(x_20, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_20, 1);
lean_inc(x_22);
lean_dec(x_20);
x_23 = lean_box(0);
x_24 = lean_apply_4(x_6, x_21, x_23, x_9, x_22);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; size_t x_32; size_t x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_25 = lean_ctor_get(x_8, 0);
x_26 = lean_ctor_get(x_8, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_8);
lean_inc(x_1);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_1);
lean_ctor_set(x_27, 1, x_1);
x_28 = l_Lean_Server_Snapshots_Snapshot_env(x_2);
x_29 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1;
x_30 = l_Lean_PersistentEnvExtension_getState___rarg(x_27, x_29, x_28);
lean_dec(x_28);
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
lean_dec(x_30);
x_32 = lean_array_size(x_31);
x_33 = 0;
lean_inc(x_9);
x_34 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4(x_3, x_2, x_4, x_5, x_25, x_26, x_31, x_32, x_33, x_7, x_9, x_10);
lean_dec(x_31);
x_35 = lean_ctor_get(x_34, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_34, 1);
lean_inc(x_36);
lean_dec(x_34);
x_37 = lean_box(0);
x_38 = lean_apply_4(x_6, x_35, x_37, x_9, x_36);
return x_38;
}
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_CodeAction_tacticCodeActionProvider___lambda__2___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Batteries_CodeAction_tacticCodeActionProvider___lambda__3___boxed), 4, 0);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Batteries.CodeAction.Basic", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Batteries.CodeAction.tacticCodeActionProvider", 45, 45);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unreachable code has been reached", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__4;
x_2 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__5;
x_3 = lean_unsigned_to_nat(68u);
x_4 = lean_unsigned_to_nat(9u);
x_5 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__6;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_2 = l_Batteries_CodeAction_instInhabitedTacticCodeActions;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = l_Batteries_CodeAction_tacticCodeActionExt;
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Init.Data.Option.BasicAux", 25, 25);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Option.get!", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("value is none", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__10;
x_2 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__11;
x_3 = lean_unsigned_to_nat(16u);
x_4 = lean_unsigned_to_nat(14u);
x_5 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__12;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
static lean_object* _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__4;
x_2 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__5;
x_3 = lean_unsigned_to_nat(41u);
x_4 = lean_unsigned_to_nat(11u);
x_5 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__6;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_5 = l_Lean_Server_RequestM_readDoc___at_Lean_Server_RequestM_withWaitFindSnapAtPos___spec__1(x_3, x_4);
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 1);
lean_inc(x_7);
if (lean_is_exclusive(x_5)) {
 lean_ctor_release(x_5, 0);
 lean_ctor_release(x_5, 1);
 x_8 = x_5;
} else {
 lean_dec_ref(x_5);
 x_8 = lean_box(0);
}
x_9 = lean_ctor_get(x_6, 0);
lean_inc(x_9);
lean_dec(x_6);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
lean_dec(x_9);
x_11 = lean_ctor_get(x_10, 2);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_ctor_get(x_1, 3);
lean_inc(x_12);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
lean_inc(x_13);
x_14 = l_Lean_FileMap_lspPosToUtf8Pos(x_11, x_13);
x_15 = lean_ctor_get(x_12, 1);
lean_inc(x_15);
lean_dec(x_12);
lean_inc(x_15);
x_16 = l_Lean_FileMap_lspPosToUtf8Pos(x_11, x_15);
x_17 = lean_ctor_get(x_13, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_15, 0);
lean_inc(x_18);
x_19 = lean_nat_dec_eq(x_17, x_18);
lean_dec(x_18);
lean_dec(x_17);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_14);
lean_ctor_set(x_20, 1, x_16);
x_21 = lean_ctor_get(x_2, 0);
lean_inc(x_21);
if (x_19 == 0)
{
lean_object* x_388; 
lean_dec(x_15);
lean_dec(x_13);
x_388 = lean_unsigned_to_nat(0u);
x_22 = x_388;
goto block_387;
}
else
{
lean_object* x_389; lean_object* x_390; uint8_t x_391; 
x_389 = lean_ctor_get(x_13, 1);
lean_inc(x_389);
lean_dec(x_13);
x_390 = lean_ctor_get(x_15, 1);
lean_inc(x_390);
lean_dec(x_15);
x_391 = lean_nat_dec_le(x_389, x_390);
if (x_391 == 0)
{
lean_dec(x_390);
x_22 = x_389;
goto block_387;
}
else
{
lean_dec(x_389);
x_22 = x_390;
goto block_387;
}
}
block_387:
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_alloc_closure((void*)(l_Batteries_CodeAction_tacticCodeActionProvider___lambda__1___boxed), 3, 2);
lean_closure_set(x_23, 0, x_11);
lean_closure_set(x_23, 1, x_22);
x_24 = l_Lean_CodeAction_findTactic_x3f(x_23, x_20, x_21);
lean_dec(x_20);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; 
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_25 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_26 = lean_alloc_ctor(0, 2, 0);
} else {
 x_26 = x_8;
}
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_7);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_27 = lean_ctor_get(x_24, 0);
lean_inc(x_27);
lean_dec(x_24);
x_28 = lean_box(0);
lean_inc(x_2);
x_29 = l_Lean_Server_Snapshots_Snapshot_infoTree(x_2);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_374; 
x_374 = lean_ctor_get(x_27, 0);
lean_inc(x_374);
if (lean_obj_tag(x_374) == 0)
{
lean_object* x_375; lean_object* x_376; 
x_375 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__14;
x_376 = l_panic___at_Lean_Parser_SyntaxStack_back___spec__1(x_375);
x_30 = x_376;
goto block_373;
}
else
{
lean_object* x_377; lean_object* x_378; 
x_377 = lean_ctor_get(x_374, 0);
lean_inc(x_377);
lean_dec(x_374);
x_378 = lean_ctor_get(x_377, 0);
lean_inc(x_378);
lean_dec(x_377);
x_30 = x_378;
goto block_373;
}
}
else
{
lean_object* x_379; 
x_379 = lean_ctor_get(x_27, 1);
lean_inc(x_379);
if (lean_obj_tag(x_379) == 0)
{
lean_object* x_380; lean_object* x_381; 
x_380 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__14;
x_381 = l_panic___at_Lean_Parser_SyntaxStack_back___spec__1(x_380);
x_30 = x_381;
goto block_373;
}
else
{
lean_object* x_382; 
x_382 = lean_ctor_get(x_379, 1);
lean_inc(x_382);
lean_dec(x_379);
if (lean_obj_tag(x_382) == 0)
{
lean_object* x_383; lean_object* x_384; 
x_383 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__14;
x_384 = l_panic___at_Lean_Parser_SyntaxStack_back___spec__1(x_383);
x_30 = x_384;
goto block_373;
}
else
{
lean_object* x_385; lean_object* x_386; 
x_385 = lean_ctor_get(x_382, 0);
lean_inc(x_385);
lean_dec(x_382);
x_386 = lean_ctor_get(x_385, 0);
lean_inc(x_386);
lean_dec(x_385);
x_30 = x_386;
goto block_373;
}
}
}
block_373:
{
uint8_t x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_31 = 0;
x_32 = l_Lean_Syntax_getRange_x3f(x_30, x_31);
x_33 = l_Lean_Syntax_getKind(x_30);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_370; lean_object* x_371; 
x_370 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__13;
x_371 = l_panic___at_Lean_Elab_InfoTree_hoverableInfoAt_x3f___spec__2(x_370);
x_34 = x_371;
goto block_369;
}
else
{
lean_object* x_372; 
x_372 = lean_ctor_get(x_32, 0);
lean_inc(x_372);
lean_dec(x_32);
x_34 = x_372;
goto block_369;
}
block_369:
{
lean_object* x_35; uint8_t x_36; lean_object* x_37; 
x_35 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__2;
x_36 = 1;
x_37 = l_Lean_CodeAction_findInfoTree_x3f(x_33, x_34, x_28, x_29, x_35, x_36);
lean_dec(x_34);
lean_dec(x_33);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; lean_object* x_39; 
lean_dec(x_27);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_38 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_39 = lean_alloc_ctor(0, 2, 0);
} else {
 x_39 = x_8;
}
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_7);
return x_39;
}
else
{
lean_object* x_40; lean_object* x_41; 
x_40 = lean_ctor_get(x_37, 0);
lean_inc(x_40);
lean_dec(x_37);
x_41 = lean_ctor_get(x_40, 1);
lean_inc(x_41);
if (lean_obj_tag(x_41) == 1)
{
lean_object* x_42; 
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
if (lean_obj_tag(x_42) == 0)
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_40, 0);
lean_inc(x_43);
lean_dec(x_40);
x_44 = lean_ctor_get(x_42, 0);
lean_inc(x_44);
lean_dec(x_42);
x_45 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__3;
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_46; 
lean_dec(x_8);
x_46 = lean_ctor_get(x_27, 0);
lean_inc(x_46);
lean_dec(x_27);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; 
lean_dec(x_44);
lean_dec(x_43);
lean_dec(x_41);
lean_dec(x_2);
lean_dec(x_1);
x_47 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__7;
lean_inc(x_3);
x_48 = l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1(x_47, x_3, x_7);
if (lean_obj_tag(x_48) == 0)
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_49 = lean_ctor_get(x_48, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_48, 1);
lean_inc(x_50);
lean_dec(x_48);
x_51 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_52 = lean_apply_4(x_45, x_51, x_49, x_3, x_50);
return x_52;
}
else
{
uint8_t x_53; 
lean_dec(x_3);
x_53 = !lean_is_exclusive(x_48);
if (x_53 == 0)
{
return x_48;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_48, 0);
x_55 = lean_ctor_get(x_48, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_48);
x_56 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
return x_56;
}
}
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; uint8_t x_60; 
x_57 = lean_ctor_get(x_46, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_43, 0);
lean_inc(x_58);
x_59 = lean_ctor_get(x_57, 0);
lean_inc(x_59);
lean_dec(x_57);
x_60 = !lean_is_exclusive(x_43);
if (x_60 == 0)
{
lean_object* x_61; uint8_t x_62; 
x_61 = lean_ctor_get(x_43, 0);
lean_dec(x_61);
x_62 = !lean_is_exclusive(x_58);
if (x_62 == 0)
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_63 = lean_ctor_get(x_58, 2);
lean_dec(x_63);
x_64 = lean_ctor_get(x_44, 1);
lean_inc(x_64);
lean_dec(x_44);
lean_ctor_set(x_58, 2, x_64);
x_65 = l_Lean_Server_Snapshots_Snapshot_env(x_2);
x_66 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__8;
x_67 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__9;
x_68 = l_Lean_PersistentEnvExtension_getState___rarg(x_66, x_67, x_65);
lean_dec(x_65);
x_69 = lean_ctor_get(x_68, 1);
lean_inc(x_69);
lean_dec(x_68);
x_70 = lean_ctor_get(x_69, 1);
lean_inc(x_70);
x_71 = l_Lean_Syntax_getKind(x_59);
x_72 = l_Lean_RBNode_find___at_Lean_NameMap_find_x3f___spec__1___rarg(x_70, x_71);
lean_dec(x_71);
lean_dec(x_70);
if (lean_obj_tag(x_72) == 0)
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_73 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_74 = lean_box(0);
x_75 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_69, x_1, x_2, x_41, x_46, x_43, x_45, x_73, x_74, x_3, x_7);
lean_dec(x_69);
return x_75;
}
else
{
lean_object* x_76; size_t x_77; size_t x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_76 = lean_ctor_get(x_72, 0);
lean_inc(x_76);
lean_dec(x_72);
x_77 = lean_array_size(x_76);
x_78 = 0;
x_79 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
lean_inc(x_3);
lean_inc(x_43);
lean_inc(x_46);
lean_inc(x_41);
lean_inc(x_2);
lean_inc(x_1);
x_80 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3(x_1, x_2, x_41, x_46, x_43, x_76, x_77, x_78, x_79, x_3, x_7);
lean_dec(x_76);
x_81 = lean_ctor_get(x_80, 0);
lean_inc(x_81);
x_82 = lean_ctor_get(x_80, 1);
lean_inc(x_82);
lean_dec(x_80);
x_83 = lean_box(0);
x_84 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_69, x_1, x_2, x_41, x_46, x_43, x_45, x_81, x_83, x_3, x_82);
lean_dec(x_69);
return x_84;
}
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; 
x_85 = lean_ctor_get(x_58, 0);
x_86 = lean_ctor_get(x_58, 1);
x_87 = lean_ctor_get(x_58, 3);
x_88 = lean_ctor_get(x_58, 4);
x_89 = lean_ctor_get(x_58, 5);
x_90 = lean_ctor_get(x_58, 6);
lean_inc(x_90);
lean_inc(x_89);
lean_inc(x_88);
lean_inc(x_87);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_58);
x_91 = lean_ctor_get(x_44, 1);
lean_inc(x_91);
lean_dec(x_44);
x_92 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_92, 0, x_85);
lean_ctor_set(x_92, 1, x_86);
lean_ctor_set(x_92, 2, x_91);
lean_ctor_set(x_92, 3, x_87);
lean_ctor_set(x_92, 4, x_88);
lean_ctor_set(x_92, 5, x_89);
lean_ctor_set(x_92, 6, x_90);
lean_ctor_set(x_43, 0, x_92);
x_93 = l_Lean_Server_Snapshots_Snapshot_env(x_2);
x_94 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__8;
x_95 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__9;
x_96 = l_Lean_PersistentEnvExtension_getState___rarg(x_94, x_95, x_93);
lean_dec(x_93);
x_97 = lean_ctor_get(x_96, 1);
lean_inc(x_97);
lean_dec(x_96);
x_98 = lean_ctor_get(x_97, 1);
lean_inc(x_98);
x_99 = l_Lean_Syntax_getKind(x_59);
x_100 = l_Lean_RBNode_find___at_Lean_NameMap_find_x3f___spec__1___rarg(x_98, x_99);
lean_dec(x_99);
lean_dec(x_98);
if (lean_obj_tag(x_100) == 0)
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; 
x_101 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_102 = lean_box(0);
x_103 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_97, x_1, x_2, x_41, x_46, x_43, x_45, x_101, x_102, x_3, x_7);
lean_dec(x_97);
return x_103;
}
else
{
lean_object* x_104; size_t x_105; size_t x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; 
x_104 = lean_ctor_get(x_100, 0);
lean_inc(x_104);
lean_dec(x_100);
x_105 = lean_array_size(x_104);
x_106 = 0;
x_107 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
lean_inc(x_3);
lean_inc(x_43);
lean_inc(x_46);
lean_inc(x_41);
lean_inc(x_2);
lean_inc(x_1);
x_108 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3(x_1, x_2, x_41, x_46, x_43, x_104, x_105, x_106, x_107, x_3, x_7);
lean_dec(x_104);
x_109 = lean_ctor_get(x_108, 0);
lean_inc(x_109);
x_110 = lean_ctor_get(x_108, 1);
lean_inc(x_110);
lean_dec(x_108);
x_111 = lean_box(0);
x_112 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_97, x_1, x_2, x_41, x_46, x_43, x_45, x_109, x_111, x_3, x_110);
lean_dec(x_97);
return x_112;
}
}
}
else
{
lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
x_113 = lean_ctor_get(x_43, 1);
lean_inc(x_113);
lean_dec(x_43);
x_114 = lean_ctor_get(x_58, 0);
lean_inc(x_114);
x_115 = lean_ctor_get(x_58, 1);
lean_inc(x_115);
x_116 = lean_ctor_get(x_58, 3);
lean_inc(x_116);
x_117 = lean_ctor_get(x_58, 4);
lean_inc(x_117);
x_118 = lean_ctor_get(x_58, 5);
lean_inc(x_118);
x_119 = lean_ctor_get(x_58, 6);
lean_inc(x_119);
if (lean_is_exclusive(x_58)) {
 lean_ctor_release(x_58, 0);
 lean_ctor_release(x_58, 1);
 lean_ctor_release(x_58, 2);
 lean_ctor_release(x_58, 3);
 lean_ctor_release(x_58, 4);
 lean_ctor_release(x_58, 5);
 lean_ctor_release(x_58, 6);
 x_120 = x_58;
} else {
 lean_dec_ref(x_58);
 x_120 = lean_box(0);
}
x_121 = lean_ctor_get(x_44, 1);
lean_inc(x_121);
lean_dec(x_44);
if (lean_is_scalar(x_120)) {
 x_122 = lean_alloc_ctor(0, 7, 0);
} else {
 x_122 = x_120;
}
lean_ctor_set(x_122, 0, x_114);
lean_ctor_set(x_122, 1, x_115);
lean_ctor_set(x_122, 2, x_121);
lean_ctor_set(x_122, 3, x_116);
lean_ctor_set(x_122, 4, x_117);
lean_ctor_set(x_122, 5, x_118);
lean_ctor_set(x_122, 6, x_119);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_122);
lean_ctor_set(x_123, 1, x_113);
x_124 = l_Lean_Server_Snapshots_Snapshot_env(x_2);
x_125 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__8;
x_126 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__9;
x_127 = l_Lean_PersistentEnvExtension_getState___rarg(x_125, x_126, x_124);
lean_dec(x_124);
x_128 = lean_ctor_get(x_127, 1);
lean_inc(x_128);
lean_dec(x_127);
x_129 = lean_ctor_get(x_128, 1);
lean_inc(x_129);
x_130 = l_Lean_Syntax_getKind(x_59);
x_131 = l_Lean_RBNode_find___at_Lean_NameMap_find_x3f___spec__1___rarg(x_129, x_130);
lean_dec(x_130);
lean_dec(x_129);
if (lean_obj_tag(x_131) == 0)
{
lean_object* x_132; lean_object* x_133; lean_object* x_134; 
x_132 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_133 = lean_box(0);
x_134 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_128, x_1, x_2, x_41, x_46, x_123, x_45, x_132, x_133, x_3, x_7);
lean_dec(x_128);
return x_134;
}
else
{
lean_object* x_135; size_t x_136; size_t x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; 
x_135 = lean_ctor_get(x_131, 0);
lean_inc(x_135);
lean_dec(x_131);
x_136 = lean_array_size(x_135);
x_137 = 0;
x_138 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
lean_inc(x_3);
lean_inc(x_123);
lean_inc(x_46);
lean_inc(x_41);
lean_inc(x_2);
lean_inc(x_1);
x_139 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3(x_1, x_2, x_41, x_46, x_123, x_135, x_136, x_137, x_138, x_3, x_7);
lean_dec(x_135);
x_140 = lean_ctor_get(x_139, 0);
lean_inc(x_140);
x_141 = lean_ctor_get(x_139, 1);
lean_inc(x_141);
lean_dec(x_139);
x_142 = lean_box(0);
x_143 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_128, x_1, x_2, x_41, x_46, x_123, x_45, x_140, x_142, x_3, x_141);
lean_dec(x_128);
return x_143;
}
}
}
}
else
{
lean_object* x_144; 
x_144 = lean_ctor_get(x_27, 1);
lean_inc(x_144);
if (lean_obj_tag(x_144) == 0)
{
lean_object* x_145; lean_object* x_146; 
lean_dec(x_44);
lean_dec(x_43);
lean_dec(x_41);
lean_dec(x_27);
lean_dec(x_8);
lean_dec(x_2);
lean_dec(x_1);
x_145 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__7;
lean_inc(x_3);
x_146 = l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1(x_145, x_3, x_7);
if (lean_obj_tag(x_146) == 0)
{
lean_object* x_147; lean_object* x_148; lean_object* x_149; lean_object* x_150; 
x_147 = lean_ctor_get(x_146, 0);
lean_inc(x_147);
x_148 = lean_ctor_get(x_146, 1);
lean_inc(x_148);
lean_dec(x_146);
x_149 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_150 = lean_apply_4(x_45, x_149, x_147, x_3, x_148);
return x_150;
}
else
{
uint8_t x_151; 
lean_dec(x_3);
x_151 = !lean_is_exclusive(x_146);
if (x_151 == 0)
{
return x_146;
}
else
{
lean_object* x_152; lean_object* x_153; lean_object* x_154; 
x_152 = lean_ctor_get(x_146, 0);
x_153 = lean_ctor_get(x_146, 1);
lean_inc(x_153);
lean_inc(x_152);
lean_dec(x_146);
x_154 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_154, 0, x_152);
lean_ctor_set(x_154, 1, x_153);
return x_154;
}
}
}
else
{
lean_object* x_155; lean_object* x_156; uint8_t x_157; 
x_155 = lean_ctor_get(x_144, 0);
lean_inc(x_155);
x_156 = lean_ctor_get(x_27, 0);
lean_inc(x_156);
lean_dec(x_27);
x_157 = !lean_is_exclusive(x_155);
if (x_157 == 0)
{
lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; uint8_t x_163; 
x_158 = lean_ctor_get(x_155, 0);
x_159 = lean_ctor_get(x_155, 1);
lean_dec(x_159);
x_160 = lean_unsigned_to_nat(2u);
x_161 = lean_nat_mul(x_160, x_156);
x_162 = l_Lean_Syntax_getNumArgs(x_158);
x_163 = lean_nat_dec_lt(x_161, x_162);
lean_dec(x_162);
if (x_163 == 0)
{
uint8_t x_164; 
lean_dec(x_161);
lean_dec(x_158);
lean_dec(x_41);
lean_dec(x_8);
x_164 = !lean_is_exclusive(x_43);
if (x_164 == 0)
{
lean_object* x_165; uint8_t x_166; 
x_165 = lean_ctor_get(x_43, 0);
x_166 = !lean_is_exclusive(x_165);
if (x_166 == 0)
{
lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; 
x_167 = lean_ctor_get(x_165, 2);
lean_dec(x_167);
x_168 = lean_ctor_get(x_44, 3);
lean_inc(x_168);
lean_ctor_set(x_165, 2, x_168);
x_169 = lean_ctor_get(x_44, 4);
lean_inc(x_169);
lean_dec(x_44);
lean_ctor_set(x_155, 1, x_169);
lean_ctor_set(x_155, 0, x_43);
x_170 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_171 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_170, x_2, x_1, x_156, x_144, x_45, x_170, x_155, x_3, x_7);
return x_171;
}
else
{
lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; lean_object* x_180; lean_object* x_181; lean_object* x_182; 
x_172 = lean_ctor_get(x_165, 0);
x_173 = lean_ctor_get(x_165, 1);
x_174 = lean_ctor_get(x_165, 3);
x_175 = lean_ctor_get(x_165, 4);
x_176 = lean_ctor_get(x_165, 5);
x_177 = lean_ctor_get(x_165, 6);
lean_inc(x_177);
lean_inc(x_176);
lean_inc(x_175);
lean_inc(x_174);
lean_inc(x_173);
lean_inc(x_172);
lean_dec(x_165);
x_178 = lean_ctor_get(x_44, 3);
lean_inc(x_178);
x_179 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_179, 0, x_172);
lean_ctor_set(x_179, 1, x_173);
lean_ctor_set(x_179, 2, x_178);
lean_ctor_set(x_179, 3, x_174);
lean_ctor_set(x_179, 4, x_175);
lean_ctor_set(x_179, 5, x_176);
lean_ctor_set(x_179, 6, x_177);
lean_ctor_set(x_43, 0, x_179);
x_180 = lean_ctor_get(x_44, 4);
lean_inc(x_180);
lean_dec(x_44);
lean_ctor_set(x_155, 1, x_180);
lean_ctor_set(x_155, 0, x_43);
x_181 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_182 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_181, x_2, x_1, x_156, x_144, x_45, x_181, x_155, x_3, x_7);
return x_182;
}
}
else
{
lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; lean_object* x_193; lean_object* x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; 
x_183 = lean_ctor_get(x_43, 0);
x_184 = lean_ctor_get(x_43, 1);
lean_inc(x_184);
lean_inc(x_183);
lean_dec(x_43);
x_185 = lean_ctor_get(x_183, 0);
lean_inc(x_185);
x_186 = lean_ctor_get(x_183, 1);
lean_inc(x_186);
x_187 = lean_ctor_get(x_183, 3);
lean_inc(x_187);
x_188 = lean_ctor_get(x_183, 4);
lean_inc(x_188);
x_189 = lean_ctor_get(x_183, 5);
lean_inc(x_189);
x_190 = lean_ctor_get(x_183, 6);
lean_inc(x_190);
if (lean_is_exclusive(x_183)) {
 lean_ctor_release(x_183, 0);
 lean_ctor_release(x_183, 1);
 lean_ctor_release(x_183, 2);
 lean_ctor_release(x_183, 3);
 lean_ctor_release(x_183, 4);
 lean_ctor_release(x_183, 5);
 lean_ctor_release(x_183, 6);
 x_191 = x_183;
} else {
 lean_dec_ref(x_183);
 x_191 = lean_box(0);
}
x_192 = lean_ctor_get(x_44, 3);
lean_inc(x_192);
if (lean_is_scalar(x_191)) {
 x_193 = lean_alloc_ctor(0, 7, 0);
} else {
 x_193 = x_191;
}
lean_ctor_set(x_193, 0, x_185);
lean_ctor_set(x_193, 1, x_186);
lean_ctor_set(x_193, 2, x_192);
lean_ctor_set(x_193, 3, x_187);
lean_ctor_set(x_193, 4, x_188);
lean_ctor_set(x_193, 5, x_189);
lean_ctor_set(x_193, 6, x_190);
x_194 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_194, 0, x_193);
lean_ctor_set(x_194, 1, x_184);
x_195 = lean_ctor_get(x_44, 4);
lean_inc(x_195);
lean_dec(x_44);
lean_ctor_set(x_155, 1, x_195);
lean_ctor_set(x_155, 0, x_194);
x_196 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_197 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_196, x_2, x_1, x_156, x_144, x_45, x_196, x_155, x_3, x_7);
return x_197;
}
}
else
{
lean_object* x_198; lean_object* x_199; 
lean_free_object(x_155);
lean_dec(x_44);
x_198 = l_Lean_Syntax_getArg(x_158, x_161);
lean_dec(x_161);
lean_dec(x_158);
x_199 = l_Lean_Syntax_getRange_x3f(x_198, x_31);
if (lean_obj_tag(x_199) == 0)
{
lean_object* x_200; lean_object* x_201; 
lean_dec(x_198);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_43);
lean_dec(x_41);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_200 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_201 = lean_alloc_ctor(0, 2, 0);
} else {
 x_201 = x_8;
}
lean_ctor_set(x_201, 0, x_200);
lean_ctor_set(x_201, 1, x_7);
return x_201;
}
else
{
uint8_t x_202; 
x_202 = !lean_is_exclusive(x_199);
if (x_202 == 0)
{
lean_object* x_203; lean_object* x_204; lean_object* x_205; 
x_203 = lean_ctor_get(x_199, 0);
x_204 = l_Lean_Syntax_getKind(x_198);
lean_ctor_set(x_199, 0, x_43);
x_205 = l_Lean_CodeAction_findInfoTree_x3f(x_204, x_203, x_199, x_41, x_35, x_31);
lean_dec(x_203);
lean_dec(x_204);
if (lean_obj_tag(x_205) == 0)
{
lean_object* x_206; lean_object* x_207; 
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_206 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_207 = lean_alloc_ctor(0, 2, 0);
} else {
 x_207 = x_8;
}
lean_ctor_set(x_207, 0, x_206);
lean_ctor_set(x_207, 1, x_7);
return x_207;
}
else
{
lean_object* x_208; lean_object* x_209; 
x_208 = lean_ctor_get(x_205, 0);
lean_inc(x_208);
lean_dec(x_205);
x_209 = lean_ctor_get(x_208, 1);
lean_inc(x_209);
if (lean_obj_tag(x_209) == 1)
{
lean_object* x_210; 
x_210 = lean_ctor_get(x_209, 0);
lean_inc(x_210);
lean_dec(x_209);
if (lean_obj_tag(x_210) == 0)
{
uint8_t x_211; 
lean_dec(x_8);
x_211 = !lean_is_exclusive(x_208);
if (x_211 == 0)
{
lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; uint8_t x_216; 
x_212 = lean_ctor_get(x_208, 0);
x_213 = lean_ctor_get(x_208, 1);
lean_dec(x_213);
x_214 = lean_ctor_get(x_212, 0);
lean_inc(x_214);
x_215 = lean_ctor_get(x_210, 0);
lean_inc(x_215);
lean_dec(x_210);
x_216 = !lean_is_exclusive(x_212);
if (x_216 == 0)
{
lean_object* x_217; uint8_t x_218; 
x_217 = lean_ctor_get(x_212, 0);
lean_dec(x_217);
x_218 = !lean_is_exclusive(x_214);
if (x_218 == 0)
{
lean_object* x_219; lean_object* x_220; lean_object* x_221; lean_object* x_222; lean_object* x_223; 
x_219 = lean_ctor_get(x_214, 2);
lean_dec(x_219);
x_220 = lean_ctor_get(x_215, 1);
lean_inc(x_220);
lean_ctor_set(x_214, 2, x_220);
x_221 = lean_ctor_get(x_215, 2);
lean_inc(x_221);
lean_dec(x_215);
lean_ctor_set(x_208, 1, x_221);
x_222 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_223 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_222, x_2, x_1, x_156, x_144, x_45, x_222, x_208, x_3, x_7);
return x_223;
}
else
{
lean_object* x_224; lean_object* x_225; lean_object* x_226; lean_object* x_227; lean_object* x_228; lean_object* x_229; lean_object* x_230; lean_object* x_231; lean_object* x_232; lean_object* x_233; lean_object* x_234; 
x_224 = lean_ctor_get(x_214, 0);
x_225 = lean_ctor_get(x_214, 1);
x_226 = lean_ctor_get(x_214, 3);
x_227 = lean_ctor_get(x_214, 4);
x_228 = lean_ctor_get(x_214, 5);
x_229 = lean_ctor_get(x_214, 6);
lean_inc(x_229);
lean_inc(x_228);
lean_inc(x_227);
lean_inc(x_226);
lean_inc(x_225);
lean_inc(x_224);
lean_dec(x_214);
x_230 = lean_ctor_get(x_215, 1);
lean_inc(x_230);
x_231 = lean_alloc_ctor(0, 7, 0);
lean_ctor_set(x_231, 0, x_224);
lean_ctor_set(x_231, 1, x_225);
lean_ctor_set(x_231, 2, x_230);
lean_ctor_set(x_231, 3, x_226);
lean_ctor_set(x_231, 4, x_227);
lean_ctor_set(x_231, 5, x_228);
lean_ctor_set(x_231, 6, x_229);
lean_ctor_set(x_212, 0, x_231);
x_232 = lean_ctor_get(x_215, 2);
lean_inc(x_232);
lean_dec(x_215);
lean_ctor_set(x_208, 1, x_232);
x_233 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_234 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_233, x_2, x_1, x_156, x_144, x_45, x_233, x_208, x_3, x_7);
return x_234;
}
}
else
{
lean_object* x_235; lean_object* x_236; lean_object* x_237; lean_object* x_238; lean_object* x_239; lean_object* x_240; lean_object* x_241; lean_object* x_242; lean_object* x_243; lean_object* x_244; lean_object* x_245; lean_object* x_246; lean_object* x_247; lean_object* x_248; 
x_235 = lean_ctor_get(x_212, 1);
lean_inc(x_235);
lean_dec(x_212);
x_236 = lean_ctor_get(x_214, 0);
lean_inc(x_236);
x_237 = lean_ctor_get(x_214, 1);
lean_inc(x_237);
x_238 = lean_ctor_get(x_214, 3);
lean_inc(x_238);
x_239 = lean_ctor_get(x_214, 4);
lean_inc(x_239);
x_240 = lean_ctor_get(x_214, 5);
lean_inc(x_240);
x_241 = lean_ctor_get(x_214, 6);
lean_inc(x_241);
if (lean_is_exclusive(x_214)) {
 lean_ctor_release(x_214, 0);
 lean_ctor_release(x_214, 1);
 lean_ctor_release(x_214, 2);
 lean_ctor_release(x_214, 3);
 lean_ctor_release(x_214, 4);
 lean_ctor_release(x_214, 5);
 lean_ctor_release(x_214, 6);
 x_242 = x_214;
} else {
 lean_dec_ref(x_214);
 x_242 = lean_box(0);
}
x_243 = lean_ctor_get(x_215, 1);
lean_inc(x_243);
if (lean_is_scalar(x_242)) {
 x_244 = lean_alloc_ctor(0, 7, 0);
} else {
 x_244 = x_242;
}
lean_ctor_set(x_244, 0, x_236);
lean_ctor_set(x_244, 1, x_237);
lean_ctor_set(x_244, 2, x_243);
lean_ctor_set(x_244, 3, x_238);
lean_ctor_set(x_244, 4, x_239);
lean_ctor_set(x_244, 5, x_240);
lean_ctor_set(x_244, 6, x_241);
x_245 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_245, 0, x_244);
lean_ctor_set(x_245, 1, x_235);
x_246 = lean_ctor_get(x_215, 2);
lean_inc(x_246);
lean_dec(x_215);
lean_ctor_set(x_208, 1, x_246);
lean_ctor_set(x_208, 0, x_245);
x_247 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_248 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_247, x_2, x_1, x_156, x_144, x_45, x_247, x_208, x_3, x_7);
return x_248;
}
}
else
{
lean_object* x_249; lean_object* x_250; lean_object* x_251; lean_object* x_252; lean_object* x_253; lean_object* x_254; lean_object* x_255; lean_object* x_256; lean_object* x_257; lean_object* x_258; lean_object* x_259; lean_object* x_260; lean_object* x_261; lean_object* x_262; lean_object* x_263; lean_object* x_264; lean_object* x_265; lean_object* x_266; lean_object* x_267; 
x_249 = lean_ctor_get(x_208, 0);
lean_inc(x_249);
lean_dec(x_208);
x_250 = lean_ctor_get(x_249, 0);
lean_inc(x_250);
x_251 = lean_ctor_get(x_210, 0);
lean_inc(x_251);
lean_dec(x_210);
x_252 = lean_ctor_get(x_249, 1);
lean_inc(x_252);
if (lean_is_exclusive(x_249)) {
 lean_ctor_release(x_249, 0);
 lean_ctor_release(x_249, 1);
 x_253 = x_249;
} else {
 lean_dec_ref(x_249);
 x_253 = lean_box(0);
}
x_254 = lean_ctor_get(x_250, 0);
lean_inc(x_254);
x_255 = lean_ctor_get(x_250, 1);
lean_inc(x_255);
x_256 = lean_ctor_get(x_250, 3);
lean_inc(x_256);
x_257 = lean_ctor_get(x_250, 4);
lean_inc(x_257);
x_258 = lean_ctor_get(x_250, 5);
lean_inc(x_258);
x_259 = lean_ctor_get(x_250, 6);
lean_inc(x_259);
if (lean_is_exclusive(x_250)) {
 lean_ctor_release(x_250, 0);
 lean_ctor_release(x_250, 1);
 lean_ctor_release(x_250, 2);
 lean_ctor_release(x_250, 3);
 lean_ctor_release(x_250, 4);
 lean_ctor_release(x_250, 5);
 lean_ctor_release(x_250, 6);
 x_260 = x_250;
} else {
 lean_dec_ref(x_250);
 x_260 = lean_box(0);
}
x_261 = lean_ctor_get(x_251, 1);
lean_inc(x_261);
if (lean_is_scalar(x_260)) {
 x_262 = lean_alloc_ctor(0, 7, 0);
} else {
 x_262 = x_260;
}
lean_ctor_set(x_262, 0, x_254);
lean_ctor_set(x_262, 1, x_255);
lean_ctor_set(x_262, 2, x_261);
lean_ctor_set(x_262, 3, x_256);
lean_ctor_set(x_262, 4, x_257);
lean_ctor_set(x_262, 5, x_258);
lean_ctor_set(x_262, 6, x_259);
if (lean_is_scalar(x_253)) {
 x_263 = lean_alloc_ctor(0, 2, 0);
} else {
 x_263 = x_253;
}
lean_ctor_set(x_263, 0, x_262);
lean_ctor_set(x_263, 1, x_252);
x_264 = lean_ctor_get(x_251, 2);
lean_inc(x_264);
lean_dec(x_251);
x_265 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_265, 0, x_263);
lean_ctor_set(x_265, 1, x_264);
x_266 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_267 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_266, x_2, x_1, x_156, x_144, x_45, x_266, x_265, x_3, x_7);
return x_267;
}
}
else
{
lean_object* x_268; lean_object* x_269; 
lean_dec(x_210);
lean_dec(x_208);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_268 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_269 = lean_alloc_ctor(0, 2, 0);
} else {
 x_269 = x_8;
}
lean_ctor_set(x_269, 0, x_268);
lean_ctor_set(x_269, 1, x_7);
return x_269;
}
}
else
{
lean_object* x_270; lean_object* x_271; 
lean_dec(x_209);
lean_dec(x_208);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_270 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_271 = lean_alloc_ctor(0, 2, 0);
} else {
 x_271 = x_8;
}
lean_ctor_set(x_271, 0, x_270);
lean_ctor_set(x_271, 1, x_7);
return x_271;
}
}
}
else
{
lean_object* x_272; lean_object* x_273; lean_object* x_274; lean_object* x_275; 
x_272 = lean_ctor_get(x_199, 0);
lean_inc(x_272);
lean_dec(x_199);
x_273 = l_Lean_Syntax_getKind(x_198);
x_274 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_274, 0, x_43);
x_275 = l_Lean_CodeAction_findInfoTree_x3f(x_273, x_272, x_274, x_41, x_35, x_31);
lean_dec(x_272);
lean_dec(x_273);
if (lean_obj_tag(x_275) == 0)
{
lean_object* x_276; lean_object* x_277; 
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_276 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_277 = lean_alloc_ctor(0, 2, 0);
} else {
 x_277 = x_8;
}
lean_ctor_set(x_277, 0, x_276);
lean_ctor_set(x_277, 1, x_7);
return x_277;
}
else
{
lean_object* x_278; lean_object* x_279; 
x_278 = lean_ctor_get(x_275, 0);
lean_inc(x_278);
lean_dec(x_275);
x_279 = lean_ctor_get(x_278, 1);
lean_inc(x_279);
if (lean_obj_tag(x_279) == 1)
{
lean_object* x_280; 
x_280 = lean_ctor_get(x_279, 0);
lean_inc(x_280);
lean_dec(x_279);
if (lean_obj_tag(x_280) == 0)
{
lean_object* x_281; lean_object* x_282; lean_object* x_283; lean_object* x_284; lean_object* x_285; lean_object* x_286; lean_object* x_287; lean_object* x_288; lean_object* x_289; lean_object* x_290; lean_object* x_291; lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; lean_object* x_296; lean_object* x_297; lean_object* x_298; lean_object* x_299; lean_object* x_300; 
lean_dec(x_8);
x_281 = lean_ctor_get(x_278, 0);
lean_inc(x_281);
if (lean_is_exclusive(x_278)) {
 lean_ctor_release(x_278, 0);
 lean_ctor_release(x_278, 1);
 x_282 = x_278;
} else {
 lean_dec_ref(x_278);
 x_282 = lean_box(0);
}
x_283 = lean_ctor_get(x_281, 0);
lean_inc(x_283);
x_284 = lean_ctor_get(x_280, 0);
lean_inc(x_284);
lean_dec(x_280);
x_285 = lean_ctor_get(x_281, 1);
lean_inc(x_285);
if (lean_is_exclusive(x_281)) {
 lean_ctor_release(x_281, 0);
 lean_ctor_release(x_281, 1);
 x_286 = x_281;
} else {
 lean_dec_ref(x_281);
 x_286 = lean_box(0);
}
x_287 = lean_ctor_get(x_283, 0);
lean_inc(x_287);
x_288 = lean_ctor_get(x_283, 1);
lean_inc(x_288);
x_289 = lean_ctor_get(x_283, 3);
lean_inc(x_289);
x_290 = lean_ctor_get(x_283, 4);
lean_inc(x_290);
x_291 = lean_ctor_get(x_283, 5);
lean_inc(x_291);
x_292 = lean_ctor_get(x_283, 6);
lean_inc(x_292);
if (lean_is_exclusive(x_283)) {
 lean_ctor_release(x_283, 0);
 lean_ctor_release(x_283, 1);
 lean_ctor_release(x_283, 2);
 lean_ctor_release(x_283, 3);
 lean_ctor_release(x_283, 4);
 lean_ctor_release(x_283, 5);
 lean_ctor_release(x_283, 6);
 x_293 = x_283;
} else {
 lean_dec_ref(x_283);
 x_293 = lean_box(0);
}
x_294 = lean_ctor_get(x_284, 1);
lean_inc(x_294);
if (lean_is_scalar(x_293)) {
 x_295 = lean_alloc_ctor(0, 7, 0);
} else {
 x_295 = x_293;
}
lean_ctor_set(x_295, 0, x_287);
lean_ctor_set(x_295, 1, x_288);
lean_ctor_set(x_295, 2, x_294);
lean_ctor_set(x_295, 3, x_289);
lean_ctor_set(x_295, 4, x_290);
lean_ctor_set(x_295, 5, x_291);
lean_ctor_set(x_295, 6, x_292);
if (lean_is_scalar(x_286)) {
 x_296 = lean_alloc_ctor(0, 2, 0);
} else {
 x_296 = x_286;
}
lean_ctor_set(x_296, 0, x_295);
lean_ctor_set(x_296, 1, x_285);
x_297 = lean_ctor_get(x_284, 2);
lean_inc(x_297);
lean_dec(x_284);
if (lean_is_scalar(x_282)) {
 x_298 = lean_alloc_ctor(0, 2, 0);
} else {
 x_298 = x_282;
}
lean_ctor_set(x_298, 0, x_296);
lean_ctor_set(x_298, 1, x_297);
x_299 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_300 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_299, x_2, x_1, x_156, x_144, x_45, x_299, x_298, x_3, x_7);
return x_300;
}
else
{
lean_object* x_301; lean_object* x_302; 
lean_dec(x_280);
lean_dec(x_278);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_301 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_302 = lean_alloc_ctor(0, 2, 0);
} else {
 x_302 = x_8;
}
lean_ctor_set(x_302, 0, x_301);
lean_ctor_set(x_302, 1, x_7);
return x_302;
}
}
else
{
lean_object* x_303; lean_object* x_304; 
lean_dec(x_279);
lean_dec(x_278);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_303 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_304 = lean_alloc_ctor(0, 2, 0);
} else {
 x_304 = x_8;
}
lean_ctor_set(x_304, 0, x_303);
lean_ctor_set(x_304, 1, x_7);
return x_304;
}
}
}
}
}
}
else
{
lean_object* x_305; lean_object* x_306; lean_object* x_307; lean_object* x_308; uint8_t x_309; 
x_305 = lean_ctor_get(x_155, 0);
lean_inc(x_305);
lean_dec(x_155);
x_306 = lean_unsigned_to_nat(2u);
x_307 = lean_nat_mul(x_306, x_156);
x_308 = l_Lean_Syntax_getNumArgs(x_305);
x_309 = lean_nat_dec_lt(x_307, x_308);
lean_dec(x_308);
if (x_309 == 0)
{
lean_object* x_310; lean_object* x_311; lean_object* x_312; lean_object* x_313; lean_object* x_314; lean_object* x_315; lean_object* x_316; lean_object* x_317; lean_object* x_318; lean_object* x_319; lean_object* x_320; lean_object* x_321; lean_object* x_322; lean_object* x_323; lean_object* x_324; lean_object* x_325; lean_object* x_326; 
lean_dec(x_307);
lean_dec(x_305);
lean_dec(x_41);
lean_dec(x_8);
x_310 = lean_ctor_get(x_43, 0);
lean_inc(x_310);
x_311 = lean_ctor_get(x_43, 1);
lean_inc(x_311);
if (lean_is_exclusive(x_43)) {
 lean_ctor_release(x_43, 0);
 lean_ctor_release(x_43, 1);
 x_312 = x_43;
} else {
 lean_dec_ref(x_43);
 x_312 = lean_box(0);
}
x_313 = lean_ctor_get(x_310, 0);
lean_inc(x_313);
x_314 = lean_ctor_get(x_310, 1);
lean_inc(x_314);
x_315 = lean_ctor_get(x_310, 3);
lean_inc(x_315);
x_316 = lean_ctor_get(x_310, 4);
lean_inc(x_316);
x_317 = lean_ctor_get(x_310, 5);
lean_inc(x_317);
x_318 = lean_ctor_get(x_310, 6);
lean_inc(x_318);
if (lean_is_exclusive(x_310)) {
 lean_ctor_release(x_310, 0);
 lean_ctor_release(x_310, 1);
 lean_ctor_release(x_310, 2);
 lean_ctor_release(x_310, 3);
 lean_ctor_release(x_310, 4);
 lean_ctor_release(x_310, 5);
 lean_ctor_release(x_310, 6);
 x_319 = x_310;
} else {
 lean_dec_ref(x_310);
 x_319 = lean_box(0);
}
x_320 = lean_ctor_get(x_44, 3);
lean_inc(x_320);
if (lean_is_scalar(x_319)) {
 x_321 = lean_alloc_ctor(0, 7, 0);
} else {
 x_321 = x_319;
}
lean_ctor_set(x_321, 0, x_313);
lean_ctor_set(x_321, 1, x_314);
lean_ctor_set(x_321, 2, x_320);
lean_ctor_set(x_321, 3, x_315);
lean_ctor_set(x_321, 4, x_316);
lean_ctor_set(x_321, 5, x_317);
lean_ctor_set(x_321, 6, x_318);
if (lean_is_scalar(x_312)) {
 x_322 = lean_alloc_ctor(0, 2, 0);
} else {
 x_322 = x_312;
}
lean_ctor_set(x_322, 0, x_321);
lean_ctor_set(x_322, 1, x_311);
x_323 = lean_ctor_get(x_44, 4);
lean_inc(x_323);
lean_dec(x_44);
x_324 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_324, 0, x_322);
lean_ctor_set(x_324, 1, x_323);
x_325 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_326 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_325, x_2, x_1, x_156, x_144, x_45, x_325, x_324, x_3, x_7);
return x_326;
}
else
{
lean_object* x_327; lean_object* x_328; 
lean_dec(x_44);
x_327 = l_Lean_Syntax_getArg(x_305, x_307);
lean_dec(x_307);
lean_dec(x_305);
x_328 = l_Lean_Syntax_getRange_x3f(x_327, x_31);
if (lean_obj_tag(x_328) == 0)
{
lean_object* x_329; lean_object* x_330; 
lean_dec(x_327);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_43);
lean_dec(x_41);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_329 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_330 = lean_alloc_ctor(0, 2, 0);
} else {
 x_330 = x_8;
}
lean_ctor_set(x_330, 0, x_329);
lean_ctor_set(x_330, 1, x_7);
return x_330;
}
else
{
lean_object* x_331; lean_object* x_332; lean_object* x_333; lean_object* x_334; lean_object* x_335; 
x_331 = lean_ctor_get(x_328, 0);
lean_inc(x_331);
if (lean_is_exclusive(x_328)) {
 lean_ctor_release(x_328, 0);
 x_332 = x_328;
} else {
 lean_dec_ref(x_328);
 x_332 = lean_box(0);
}
x_333 = l_Lean_Syntax_getKind(x_327);
if (lean_is_scalar(x_332)) {
 x_334 = lean_alloc_ctor(1, 1, 0);
} else {
 x_334 = x_332;
}
lean_ctor_set(x_334, 0, x_43);
x_335 = l_Lean_CodeAction_findInfoTree_x3f(x_333, x_331, x_334, x_41, x_35, x_31);
lean_dec(x_331);
lean_dec(x_333);
if (lean_obj_tag(x_335) == 0)
{
lean_object* x_336; lean_object* x_337; 
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_336 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_337 = lean_alloc_ctor(0, 2, 0);
} else {
 x_337 = x_8;
}
lean_ctor_set(x_337, 0, x_336);
lean_ctor_set(x_337, 1, x_7);
return x_337;
}
else
{
lean_object* x_338; lean_object* x_339; 
x_338 = lean_ctor_get(x_335, 0);
lean_inc(x_338);
lean_dec(x_335);
x_339 = lean_ctor_get(x_338, 1);
lean_inc(x_339);
if (lean_obj_tag(x_339) == 1)
{
lean_object* x_340; 
x_340 = lean_ctor_get(x_339, 0);
lean_inc(x_340);
lean_dec(x_339);
if (lean_obj_tag(x_340) == 0)
{
lean_object* x_341; lean_object* x_342; lean_object* x_343; lean_object* x_344; lean_object* x_345; lean_object* x_346; lean_object* x_347; lean_object* x_348; lean_object* x_349; lean_object* x_350; lean_object* x_351; lean_object* x_352; lean_object* x_353; lean_object* x_354; lean_object* x_355; lean_object* x_356; lean_object* x_357; lean_object* x_358; lean_object* x_359; lean_object* x_360; 
lean_dec(x_8);
x_341 = lean_ctor_get(x_338, 0);
lean_inc(x_341);
if (lean_is_exclusive(x_338)) {
 lean_ctor_release(x_338, 0);
 lean_ctor_release(x_338, 1);
 x_342 = x_338;
} else {
 lean_dec_ref(x_338);
 x_342 = lean_box(0);
}
x_343 = lean_ctor_get(x_341, 0);
lean_inc(x_343);
x_344 = lean_ctor_get(x_340, 0);
lean_inc(x_344);
lean_dec(x_340);
x_345 = lean_ctor_get(x_341, 1);
lean_inc(x_345);
if (lean_is_exclusive(x_341)) {
 lean_ctor_release(x_341, 0);
 lean_ctor_release(x_341, 1);
 x_346 = x_341;
} else {
 lean_dec_ref(x_341);
 x_346 = lean_box(0);
}
x_347 = lean_ctor_get(x_343, 0);
lean_inc(x_347);
x_348 = lean_ctor_get(x_343, 1);
lean_inc(x_348);
x_349 = lean_ctor_get(x_343, 3);
lean_inc(x_349);
x_350 = lean_ctor_get(x_343, 4);
lean_inc(x_350);
x_351 = lean_ctor_get(x_343, 5);
lean_inc(x_351);
x_352 = lean_ctor_get(x_343, 6);
lean_inc(x_352);
if (lean_is_exclusive(x_343)) {
 lean_ctor_release(x_343, 0);
 lean_ctor_release(x_343, 1);
 lean_ctor_release(x_343, 2);
 lean_ctor_release(x_343, 3);
 lean_ctor_release(x_343, 4);
 lean_ctor_release(x_343, 5);
 lean_ctor_release(x_343, 6);
 x_353 = x_343;
} else {
 lean_dec_ref(x_343);
 x_353 = lean_box(0);
}
x_354 = lean_ctor_get(x_344, 1);
lean_inc(x_354);
if (lean_is_scalar(x_353)) {
 x_355 = lean_alloc_ctor(0, 7, 0);
} else {
 x_355 = x_353;
}
lean_ctor_set(x_355, 0, x_347);
lean_ctor_set(x_355, 1, x_348);
lean_ctor_set(x_355, 2, x_354);
lean_ctor_set(x_355, 3, x_349);
lean_ctor_set(x_355, 4, x_350);
lean_ctor_set(x_355, 5, x_351);
lean_ctor_set(x_355, 6, x_352);
if (lean_is_scalar(x_346)) {
 x_356 = lean_alloc_ctor(0, 2, 0);
} else {
 x_356 = x_346;
}
lean_ctor_set(x_356, 0, x_355);
lean_ctor_set(x_356, 1, x_345);
x_357 = lean_ctor_get(x_344, 2);
lean_inc(x_357);
lean_dec(x_344);
if (lean_is_scalar(x_342)) {
 x_358 = lean_alloc_ctor(0, 2, 0);
} else {
 x_358 = x_342;
}
lean_ctor_set(x_358, 0, x_356);
lean_ctor_set(x_358, 1, x_357);
x_359 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
x_360 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5(x_359, x_2, x_1, x_156, x_144, x_45, x_359, x_358, x_3, x_7);
return x_360;
}
else
{
lean_object* x_361; lean_object* x_362; 
lean_dec(x_340);
lean_dec(x_338);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_361 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_362 = lean_alloc_ctor(0, 2, 0);
} else {
 x_362 = x_8;
}
lean_ctor_set(x_362, 0, x_361);
lean_ctor_set(x_362, 1, x_7);
return x_362;
}
}
else
{
lean_object* x_363; lean_object* x_364; 
lean_dec(x_339);
lean_dec(x_338);
lean_dec(x_156);
lean_dec(x_144);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_363 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_364 = lean_alloc_ctor(0, 2, 0);
} else {
 x_364 = x_8;
}
lean_ctor_set(x_364, 0, x_363);
lean_ctor_set(x_364, 1, x_7);
return x_364;
}
}
}
}
}
}
}
}
else
{
lean_object* x_365; lean_object* x_366; 
lean_dec(x_42);
lean_dec(x_41);
lean_dec(x_40);
lean_dec(x_27);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_365 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_366 = lean_alloc_ctor(0, 2, 0);
} else {
 x_366 = x_8;
}
lean_ctor_set(x_366, 0, x_365);
lean_ctor_set(x_366, 1, x_7);
return x_366;
}
}
else
{
lean_object* x_367; lean_object* x_368; 
lean_dec(x_41);
lean_dec(x_40);
lean_dec(x_27);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_367 = l_Batteries_CodeAction_tacticCodeActionProvider___closed__1;
if (lean_is_scalar(x_8)) {
 x_368 = lean_alloc_ctor(0, 2, 0);
} else {
 x_368 = x_8;
}
lean_ctor_set(x_368, 0, x_367);
lean_ctor_set(x_368, 1, x_7);
return x_368;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_13 = lean_unbox_usize(x_8);
lean_dec(x_8);
x_14 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_12, x_13, x_9, x_10, x_11);
lean_dec(x_6);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_13 = lean_unbox_usize(x_8);
lean_dec(x_8);
x_14 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_12, x_13, x_9, x_10, x_11);
lean_dec(x_6);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_8);
lean_dec(x_8);
x_14 = lean_unbox_usize(x_9);
lean_dec(x_9);
x_15 = l_Array_forInUnsafe_loop___at_Batteries_CodeAction_tacticCodeActionProvider___spec__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_13, x_14, x_10, x_11, x_12);
lean_dec(x_7);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; lean_object* x_5; 
x_4 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__1(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
x_5 = lean_box(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__2(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__3(x_1, x_2, x_3, x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Batteries_CodeAction_tacticCodeActionProvider___lambda__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_9);
lean_dec(x_1);
return x_12;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_BuiltinTerm(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Elab_BuiltinNotation(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Server_InfoUtils(uint8_t builtin, lean_object*);
lean_object* initialize_Lean_Server_CodeActions_Provider(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_CodeAction_Attr(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_CodeAction_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_BuiltinTerm(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Elab_BuiltinNotation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Server_InfoUtils(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean_Server_CodeActions_Provider(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_CodeAction_Attr(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__1 = _init_l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__1();
lean_mark_persistent(l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__1);
l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__2 = _init_l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__2();
lean_mark_persistent(l_panic___at_Batteries_CodeAction_tacticCodeActionProvider___spec__1___closed__2);
l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___lambda__5___closed__1);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__1 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__1();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__1);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__2 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__2();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__2);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__3 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__3();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__3);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__4 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__4();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__4);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__5 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__5();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__5);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__6 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__6();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__6);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__7 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__7();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__7);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__8 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__8();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__8);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__9 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__9();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__9);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__10 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__10();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__10);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__11 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__11();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__11);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__12 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__12();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__12);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__13 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__13();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__13);
l_Batteries_CodeAction_tacticCodeActionProvider___closed__14 = _init_l_Batteries_CodeAction_tacticCodeActionProvider___closed__14();
lean_mark_persistent(l_Batteries_CodeAction_tacticCodeActionProvider___closed__14);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
