// Lean compiler output
// Module: Mathlib.Tactic.RenameBVar
// Imports: Init Lean Mathlib.Util.Tactic Mathlib.Lean.Expr.Basic
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
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__16;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentHashMap_find_x3f___at_Lean_MetavarContext_getDecl___spec__1(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__18;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1___lambda__1(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Unreachable______elabRules__Batteries__Tactic__unreachable__1___spec__1___rarg(lean_object*);
lean_object* l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__7;
extern lean_object* l_Lean_Parser_Tactic_location;
lean_object* l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_expandLocation(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getId(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11;
lean_object* l_Lean_Elab_Tactic_getMainGoal(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_renameBVar(lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4;
lean_object* l_Lean_LocalDecl_setType(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__19;
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
lean_object* l_Lean_stringToMessageData(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_index(lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_PersistentArray_set___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192____;
lean_object* lean_local_ctx_find(lean_object*, lean_object*);
lean_object* lean_st_ref_take(lean_object*, lean_object*);
lean_object* l_Lean_Elab_Tactic_withLocation(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__1;
lean_object* l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__20;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2___lambda__1(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getOptional_x3f(lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__2;
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__12;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__3;
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_fvarId(lean_object*);
static lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__1;
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__8;
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__13;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget___lambda__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget___lambda__1(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__15;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_LocalDecl_type(lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__5;
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__14;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__9;
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__17;
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__10;
lean_object* lean_st_ref_set(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__2;
static lean_object* l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__21;
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_8 = lean_st_ref_take(x_4, x_7);
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_8, 1);
lean_inc(x_11);
lean_dec(x_8);
x_12 = !lean_is_exclusive(x_9);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_13 = lean_ctor_get(x_9, 0);
lean_dec(x_13);
x_14 = lean_ctor_get(x_10, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_10, 1);
lean_inc(x_15);
x_16 = lean_ctor_get(x_10, 2);
lean_inc(x_16);
x_17 = lean_ctor_get(x_10, 3);
lean_inc(x_17);
x_18 = lean_ctor_get(x_10, 4);
lean_inc(x_18);
x_19 = lean_ctor_get(x_10, 5);
lean_inc(x_19);
x_20 = lean_ctor_get(x_10, 6);
lean_inc(x_20);
x_21 = lean_ctor_get(x_10, 7);
lean_inc(x_21);
x_22 = lean_ctor_get(x_10, 8);
lean_inc(x_22);
lean_inc(x_18);
x_23 = l_Lean_PersistentHashMap_find_x3f___at_Lean_MetavarContext_getDecl___spec__1(x_18, x_1);
if (lean_obj_tag(x_23) == 0)
{
lean_object* x_24; uint8_t x_25; 
lean_dec(x_22);
lean_dec(x_21);
lean_dec(x_20);
lean_dec(x_19);
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_2);
lean_dec(x_1);
x_24 = lean_st_ref_set(x_4, x_9, x_11);
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_24, 0);
lean_dec(x_26);
x_27 = lean_box(0);
lean_ctor_set(x_24, 0, x_27);
return x_24;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_24, 1);
lean_inc(x_28);
lean_dec(x_24);
x_29 = lean_box(0);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_28);
return x_30;
}
}
else
{
uint8_t x_31; 
x_31 = !lean_is_exclusive(x_10);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; uint8_t x_45; 
x_32 = lean_ctor_get(x_10, 8);
lean_dec(x_32);
x_33 = lean_ctor_get(x_10, 7);
lean_dec(x_33);
x_34 = lean_ctor_get(x_10, 6);
lean_dec(x_34);
x_35 = lean_ctor_get(x_10, 5);
lean_dec(x_35);
x_36 = lean_ctor_get(x_10, 4);
lean_dec(x_36);
x_37 = lean_ctor_get(x_10, 3);
lean_dec(x_37);
x_38 = lean_ctor_get(x_10, 2);
lean_dec(x_38);
x_39 = lean_ctor_get(x_10, 1);
lean_dec(x_39);
x_40 = lean_ctor_get(x_10, 0);
lean_dec(x_40);
x_41 = lean_ctor_get(x_23, 0);
lean_inc(x_41);
lean_dec(x_23);
x_42 = lean_apply_1(x_2, x_41);
x_43 = l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(x_18, x_1, x_42);
lean_ctor_set(x_10, 4, x_43);
x_44 = lean_st_ref_set(x_4, x_9, x_11);
x_45 = !lean_is_exclusive(x_44);
if (x_45 == 0)
{
lean_object* x_46; lean_object* x_47; 
x_46 = lean_ctor_get(x_44, 0);
lean_dec(x_46);
x_47 = lean_box(0);
lean_ctor_set(x_44, 0, x_47);
return x_44;
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_48 = lean_ctor_get(x_44, 1);
lean_inc(x_48);
lean_dec(x_44);
x_49 = lean_box(0);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_48);
return x_50;
}
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
lean_dec(x_10);
x_51 = lean_ctor_get(x_23, 0);
lean_inc(x_51);
lean_dec(x_23);
x_52 = lean_apply_1(x_2, x_51);
x_53 = l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(x_18, x_1, x_52);
x_54 = lean_alloc_ctor(0, 9, 0);
lean_ctor_set(x_54, 0, x_14);
lean_ctor_set(x_54, 1, x_15);
lean_ctor_set(x_54, 2, x_16);
lean_ctor_set(x_54, 3, x_17);
lean_ctor_set(x_54, 4, x_53);
lean_ctor_set(x_54, 5, x_19);
lean_ctor_set(x_54, 6, x_20);
lean_ctor_set(x_54, 7, x_21);
lean_ctor_set(x_54, 8, x_22);
lean_ctor_set(x_9, 0, x_54);
x_55 = lean_st_ref_set(x_4, x_9, x_11);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
if (lean_is_exclusive(x_55)) {
 lean_ctor_release(x_55, 0);
 lean_ctor_release(x_55, 1);
 x_57 = x_55;
} else {
 lean_dec_ref(x_55);
 x_57 = lean_box(0);
}
x_58 = lean_box(0);
if (lean_is_scalar(x_57)) {
 x_59 = lean_alloc_ctor(0, 2, 0);
} else {
 x_59 = x_57;
}
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_56);
return x_59;
}
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_60 = lean_ctor_get(x_9, 1);
x_61 = lean_ctor_get(x_9, 2);
x_62 = lean_ctor_get(x_9, 3);
x_63 = lean_ctor_get(x_9, 4);
lean_inc(x_63);
lean_inc(x_62);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_9);
x_64 = lean_ctor_get(x_10, 0);
lean_inc(x_64);
x_65 = lean_ctor_get(x_10, 1);
lean_inc(x_65);
x_66 = lean_ctor_get(x_10, 2);
lean_inc(x_66);
x_67 = lean_ctor_get(x_10, 3);
lean_inc(x_67);
x_68 = lean_ctor_get(x_10, 4);
lean_inc(x_68);
x_69 = lean_ctor_get(x_10, 5);
lean_inc(x_69);
x_70 = lean_ctor_get(x_10, 6);
lean_inc(x_70);
x_71 = lean_ctor_get(x_10, 7);
lean_inc(x_71);
x_72 = lean_ctor_get(x_10, 8);
lean_inc(x_72);
lean_inc(x_68);
x_73 = l_Lean_PersistentHashMap_find_x3f___at_Lean_MetavarContext_getDecl___spec__1(x_68, x_1);
if (lean_obj_tag(x_73) == 0)
{
lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; 
lean_dec(x_72);
lean_dec(x_71);
lean_dec(x_70);
lean_dec(x_69);
lean_dec(x_68);
lean_dec(x_67);
lean_dec(x_66);
lean_dec(x_65);
lean_dec(x_64);
lean_dec(x_2);
lean_dec(x_1);
x_74 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_74, 0, x_10);
lean_ctor_set(x_74, 1, x_60);
lean_ctor_set(x_74, 2, x_61);
lean_ctor_set(x_74, 3, x_62);
lean_ctor_set(x_74, 4, x_63);
x_75 = lean_st_ref_set(x_4, x_74, x_11);
x_76 = lean_ctor_get(x_75, 1);
lean_inc(x_76);
if (lean_is_exclusive(x_75)) {
 lean_ctor_release(x_75, 0);
 lean_ctor_release(x_75, 1);
 x_77 = x_75;
} else {
 lean_dec_ref(x_75);
 x_77 = lean_box(0);
}
x_78 = lean_box(0);
if (lean_is_scalar(x_77)) {
 x_79 = lean_alloc_ctor(0, 2, 0);
} else {
 x_79 = x_77;
}
lean_ctor_set(x_79, 0, x_78);
lean_ctor_set(x_79, 1, x_76);
return x_79;
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; 
if (lean_is_exclusive(x_10)) {
 lean_ctor_release(x_10, 0);
 lean_ctor_release(x_10, 1);
 lean_ctor_release(x_10, 2);
 lean_ctor_release(x_10, 3);
 lean_ctor_release(x_10, 4);
 lean_ctor_release(x_10, 5);
 lean_ctor_release(x_10, 6);
 lean_ctor_release(x_10, 7);
 lean_ctor_release(x_10, 8);
 x_80 = x_10;
} else {
 lean_dec_ref(x_10);
 x_80 = lean_box(0);
}
x_81 = lean_ctor_get(x_73, 0);
lean_inc(x_81);
lean_dec(x_73);
x_82 = lean_apply_1(x_2, x_81);
x_83 = l_Lean_PersistentHashMap_insert___at_Lean_instantiateMVarDeclMVars___spec__1(x_68, x_1, x_82);
if (lean_is_scalar(x_80)) {
 x_84 = lean_alloc_ctor(0, 9, 0);
} else {
 x_84 = x_80;
}
lean_ctor_set(x_84, 0, x_64);
lean_ctor_set(x_84, 1, x_65);
lean_ctor_set(x_84, 2, x_66);
lean_ctor_set(x_84, 3, x_67);
lean_ctor_set(x_84, 4, x_83);
lean_ctor_set(x_84, 5, x_69);
lean_ctor_set(x_84, 6, x_70);
lean_ctor_set(x_84, 7, x_71);
lean_ctor_set(x_84, 8, x_72);
x_85 = lean_alloc_ctor(0, 5, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_60);
lean_ctor_set(x_85, 2, x_61);
lean_ctor_set(x_85, 3, x_62);
lean_ctor_set(x_85, 4, x_63);
x_86 = lean_st_ref_set(x_4, x_85, x_11);
x_87 = lean_ctor_get(x_86, 1);
lean_inc(x_87);
if (lean_is_exclusive(x_86)) {
 lean_ctor_release(x_86, 0);
 lean_ctor_release(x_86, 1);
 x_88 = x_86;
} else {
 lean_dec_ref(x_86);
 x_88 = lean_box(0);
}
x_89 = lean_box(0);
if (lean_is_scalar(x_88)) {
 x_90 = lean_alloc_ctor(0, 2, 0);
} else {
 x_90 = x_88;
}
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_87);
return x_90;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 1);
x_5 = lean_apply_1(x_1, x_4);
lean_ctor_set(x_2, 1, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_2, 2);
x_9 = lean_ctor_get(x_2, 3);
x_10 = lean_ctor_get(x_2, 4);
x_11 = lean_ctor_get_uint8(x_2, sizeof(void*)*7);
x_12 = lean_ctor_get(x_2, 5);
x_13 = lean_ctor_get(x_2, 6);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_2);
x_14 = lean_apply_1(x_1, x_7);
x_15 = lean_alloc_ctor(0, 7, 1);
lean_ctor_set(x_15, 0, x_6);
lean_ctor_set(x_15, 1, x_14);
lean_ctor_set(x_15, 2, x_8);
lean_ctor_set(x_15, 3, x_9);
lean_ctor_set(x_15, 4, x_10);
lean_ctor_set(x_15, 5, x_12);
lean_ctor_set(x_15, 6, x_13);
lean_ctor_set_uint8(x_15, sizeof(void*)*7, x_11);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2___lambda__1), 2, 1);
lean_closure_set(x_8, 0, x_2);
x_9 = l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3(x_1, x_8, x_3, x_4, x_5, x_6, x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_inc(x_3);
x_6 = lean_local_ctx_find(x_3, x_1);
if (lean_obj_tag(x_6) == 0)
{
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
return x_3;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_3);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_8 = lean_ctor_get(x_3, 1);
lean_dec(x_8);
x_9 = lean_ctor_get(x_3, 0);
lean_dec(x_9);
x_10 = !lean_is_exclusive(x_6);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_11 = lean_ctor_get(x_6, 0);
x_12 = lean_apply_1(x_2, x_11);
x_13 = l_Lean_LocalDecl_fvarId(x_12);
lean_inc(x_12);
x_14 = l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(x_4, x_13, x_12);
x_15 = l_Lean_LocalDecl_index(x_12);
lean_ctor_set(x_6, 0, x_12);
x_16 = l_Lean_PersistentArray_set___rarg(x_5, x_15, x_6);
lean_dec(x_15);
lean_ctor_set(x_3, 1, x_16);
lean_ctor_set(x_3, 0, x_14);
return x_3;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_17 = lean_ctor_get(x_6, 0);
lean_inc(x_17);
lean_dec(x_6);
x_18 = lean_apply_1(x_2, x_17);
x_19 = l_Lean_LocalDecl_fvarId(x_18);
lean_inc(x_18);
x_20 = l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(x_4, x_19, x_18);
x_21 = l_Lean_LocalDecl_index(x_18);
x_22 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_22, 0, x_18);
x_23 = l_Lean_PersistentArray_set___rarg(x_5, x_21, x_22);
lean_dec(x_21);
lean_ctor_set(x_3, 1, x_23);
lean_ctor_set(x_3, 0, x_20);
return x_3;
}
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_3);
x_24 = lean_ctor_get(x_6, 0);
lean_inc(x_24);
if (lean_is_exclusive(x_6)) {
 lean_ctor_release(x_6, 0);
 x_25 = x_6;
} else {
 lean_dec_ref(x_6);
 x_25 = lean_box(0);
}
x_26 = lean_apply_1(x_2, x_24);
x_27 = l_Lean_LocalDecl_fvarId(x_26);
lean_inc(x_26);
x_28 = l_Lean_PersistentHashMap_insert___at_Lean_LocalContext_mkLocalDecl___spec__1(x_4, x_27, x_26);
x_29 = l_Lean_LocalDecl_index(x_26);
if (lean_is_scalar(x_25)) {
 x_30 = lean_alloc_ctor(1, 1, 0);
} else {
 x_30 = x_25;
}
lean_ctor_set(x_30, 0, x_26);
x_31 = l_Lean_PersistentArray_set___rarg(x_5, x_29, x_30);
lean_dec(x_29);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_28);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1___lambda__1), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_3);
x_10 = l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2(x_1, x_9, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = l_Lean_LocalDecl_type(x_3);
x_5 = l_Lean_Expr_renameBVar(x_4, x_1, x_2);
x_6 = l_Lean_LocalDecl_setType(x_3, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_alloc_closure((void*)(l_Mathlib_Tactic_renameBVarHyp___lambda__1___boxed), 3, 2);
lean_closure_set(x_10, 0, x_3);
lean_closure_set(x_10, 1, x_4);
x_11 = l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1(x_1, x_2, x_10, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Mathlib_Tactic_modifyLocalContext___at_Mathlib_Tactic_renameBVarHyp___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Tactic_modifyLocalDecl___at_Mathlib_Tactic_renameBVarHyp___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Mathlib_Tactic_renameBVarHyp___lambda__1(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarHyp___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Tactic_renameBVarHyp(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 2);
x_5 = lean_apply_1(x_1, x_4);
lean_ctor_set(x_2, 2, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_6 = lean_ctor_get(x_2, 0);
x_7 = lean_ctor_get(x_2, 1);
x_8 = lean_ctor_get(x_2, 2);
x_9 = lean_ctor_get(x_2, 3);
x_10 = lean_ctor_get(x_2, 4);
x_11 = lean_ctor_get_uint8(x_2, sizeof(void*)*7);
x_12 = lean_ctor_get(x_2, 5);
x_13 = lean_ctor_get(x_2, 6);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_2);
x_14 = lean_apply_1(x_1, x_8);
x_15 = lean_alloc_ctor(0, 7, 1);
lean_ctor_set(x_15, 0, x_6);
lean_ctor_set(x_15, 1, x_7);
lean_ctor_set(x_15, 2, x_14);
lean_ctor_set(x_15, 3, x_9);
lean_ctor_set(x_15, 4, x_10);
lean_ctor_set(x_15, 5, x_12);
lean_ctor_set(x_15, 6, x_13);
lean_ctor_set_uint8(x_15, sizeof(void*)*7, x_11);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_alloc_closure((void*)(l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1___lambda__1), 2, 1);
lean_closure_set(x_8, 0, x_2);
x_9 = l_Mathlib_Tactic_modifyMetavarDecl___at_Mathlib_Tactic_renameBVarHyp___spec__3(x_1, x_8, x_3, x_4, x_5, x_6, x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Expr_renameBVar(x_3, x_1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_alloc_closure((void*)(l_Mathlib_Tactic_renameBVarTarget___lambda__1___boxed), 3, 2);
lean_closure_set(x_9, 0, x_2);
lean_closure_set(x_9, 1, x_3);
x_10 = l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1(x_1, x_9, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Mathlib_Tactic_modifyTarget___at_Mathlib_Tactic_renameBVarTarget___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Mathlib_Tactic_renameBVarTarget___lambda__1(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic_renameBVarTarget___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Tactic_renameBVarTarget(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_9;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Mathlib", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tacticRename_bvar_→__", 23, 21);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__1;
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__2;
x_3 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__3;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rename_bvar ", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__8() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__7;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__10;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6;
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__8;
x_3 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" → ", 5, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__13;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6;
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__12;
x_3 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__14;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6;
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__15;
x_3 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("optional", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__17;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__18;
x_2 = l_Lean_Parser_Tactic_location;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6;
x_2 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__16;
x_3 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__19;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__20;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Tactic_tacticRename__bvar___u2192____() {
_start:
{
lean_object* x_1; 
x_1 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__21;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = l_Lean_Syntax_getId(x_1);
x_15 = l_Lean_Syntax_getId(x_2);
x_16 = l_Mathlib_Tactic_renameBVarHyp(x_3, x_4, x_14, x_15, x_9, x_10, x_11, x_12, x_13);
return x_16;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Mathlib_Tactic_renameBVarTarget(x_1, x_2, x_3, x_8, x_9, x_10, x_11, x_12);
return x_13;
}
}
static lean_object* _init_l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unexpected location syntax", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__2;
x_12 = l_Lean_throwError___at_Lean_Elab_Tactic_evalTactic_throwExs___spec__2(x_11, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
static lean_object* _init_l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___boxed), 10, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4;
lean_inc(x_1);
x_12 = l_Lean_Syntax_isOfKind(x_1, x_11);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_13 = l_Lean_Elab_throwUnsupportedSyntax___at_Batteries_Tactic___aux__Batteries__Tactic__Unreachable______elabRules__Batteries__Tactic__unreachable__1___spec__1___rarg(x_10);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
x_16 = lean_unsigned_to_nat(3u);
x_17 = l_Lean_Syntax_getArg(x_1, x_16);
x_18 = lean_unsigned_to_nat(4u);
x_19 = l_Lean_Syntax_getArg(x_1, x_18);
lean_dec(x_1);
x_20 = l_Lean_Syntax_getOptional_x3f(x_19);
lean_dec(x_19);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_43; 
x_43 = lean_box(0);
x_21 = x_43;
goto block_42;
}
else
{
uint8_t x_44; 
x_44 = !lean_is_exclusive(x_20);
if (x_44 == 0)
{
x_21 = x_20;
goto block_42;
}
else
{
lean_object* x_45; lean_object* x_46; 
x_45 = lean_ctor_get(x_20, 0);
lean_inc(x_45);
lean_dec(x_20);
x_46 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_46, 0, x_45);
x_21 = x_46;
goto block_42;
}
}
block_42:
{
lean_object* x_22; 
x_22 = l_Lean_Elab_Tactic_getMainGoal(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_22) == 0)
{
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = l_Lean_Syntax_getId(x_15);
lean_dec(x_15);
x_26 = l_Lean_Syntax_getId(x_17);
lean_dec(x_17);
x_27 = l_Mathlib_Tactic_renameBVarTarget(x_23, x_25, x_26, x_6, x_7, x_8, x_9, x_24);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
return x_27;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_28 = lean_ctor_get(x_22, 0);
lean_inc(x_28);
x_29 = lean_ctor_get(x_22, 1);
lean_inc(x_29);
lean_dec(x_22);
x_30 = lean_ctor_get(x_21, 0);
lean_inc(x_30);
lean_dec(x_21);
x_31 = l_Lean_Elab_Tactic_expandLocation(x_30);
lean_dec(x_30);
lean_inc(x_28);
lean_inc(x_17);
lean_inc(x_15);
x_32 = lean_alloc_closure((void*)(l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__1___boxed), 13, 3);
lean_closure_set(x_32, 0, x_15);
lean_closure_set(x_32, 1, x_17);
lean_closure_set(x_32, 2, x_28);
x_33 = l_Lean_Syntax_getId(x_15);
lean_dec(x_15);
x_34 = l_Lean_Syntax_getId(x_17);
lean_dec(x_17);
x_35 = lean_alloc_closure((void*)(l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__2___boxed), 12, 3);
lean_closure_set(x_35, 0, x_28);
lean_closure_set(x_35, 1, x_33);
lean_closure_set(x_35, 2, x_34);
x_36 = l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___closed__1;
x_37 = l_Lean_Elab_Tactic_withLocation(x_31, x_32, x_35, x_36, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_29);
lean_dec(x_31);
return x_37;
}
}
else
{
uint8_t x_38; 
lean_dec(x_21);
lean_dec(x_17);
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_38 = !lean_is_exclusive(x_22);
if (x_38 == 0)
{
return x_22;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_22, 0);
x_40 = lean_ctor_get(x_22, 1);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_22);
x_41 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set(x_41, 1, x_40);
return x_41;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13) {
_start:
{
lean_object* x_14; 
x_14 = l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_11;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Util_Tactic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Lean_Expr_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_RenameBVar(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Util_Tactic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Lean_Expr_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__1 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__1();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__1);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__2 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__2();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__2);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__3 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__3();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__3);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__4);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__5 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__5();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__5);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__6);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__7 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__7();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__7);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__8 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__8();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__8);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__9 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__9();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__9);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__10 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__10();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__10);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__11);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__12 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__12();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__12);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__13 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__13();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__13);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__14 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__14();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__14);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__15 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__15();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__15);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__16 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__16();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__16);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__17 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__17();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__17);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__18 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__18();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__18);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__19 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__19();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__19);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__20 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__20();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__20);
l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__21 = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__21();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192_______closed__21);
l_Mathlib_Tactic_tacticRename__bvar___u2192____ = _init_l_Mathlib_Tactic_tacticRename__bvar___u2192____();
lean_mark_persistent(l_Mathlib_Tactic_tacticRename__bvar___u2192____);
l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__1 = _init_l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__1();
lean_mark_persistent(l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__1);
l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__2 = _init_l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__2();
lean_mark_persistent(l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___lambda__3___closed__2);
l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___closed__1 = _init_l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___closed__1();
lean_mark_persistent(l_Mathlib_Tactic___aux__Mathlib__Tactic__RenameBVar______elabRules__Mathlib__Tactic__tacticRename__bvar___u2192______1___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
