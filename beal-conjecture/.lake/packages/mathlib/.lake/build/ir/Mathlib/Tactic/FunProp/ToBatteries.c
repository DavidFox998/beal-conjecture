// Lean compiler output
// Module: Mathlib.Tactic.FunProp.ToBatteries
// Imports: Init Mathlib.Init Lean
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
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_betaThroughLet(lean_object*, lean_object*);
lean_object* l_Lean_Expr_looseBVarRange(lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Lean_mkAppN(lean_object*, lean_object*);
lean_object* l___private_Lean_Expr_0__Lean_Expr_getAppNumArgsAux(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_swapBVars(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_toString(lean_object*, uint8_t);
lean_object* l_Lean_Expr_sort___override(lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
lean_object* l_Array_toSubarray___rarg(lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_array(lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
lean_object* l_Lean_FVarId_isLetVar(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_headBetaThroughLet(lean_object*);
lean_object* l_Lean_Expr_bvar___override(lean_object*);
lean_object* lean_array_fget(lean_object*, lean_object*);
lean_object* l_Lean_Expr_fvarId_x21(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Expr_swapBVars___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_etaExpand1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkProdElem(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_withLocalDecl___at_Lean_Meta_GeneralizeTelescope_generalizeTelescopeAux___spec__1___rarg(lean_object*, uint8_t, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Expr_isHeadBetaTargetFn(uint8_t, lean_object*);
uint8_t l_Lean_Expr_isLambda(lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
static lean_object* l_Mathlib_Meta_FunProp_mkProdElem___closed__1;
lean_object* l_Lean_Meta_forallBoundedTelescope___at_Lean_Meta_arrowDomainsN___spec__6___rarg(lean_object*, lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1(lean_object*);
static lean_object* l_Mathlib_Meta_FunProp_etaExpand1___closed__1;
lean_object* l_Lean_Meta_lambdaLetTelescope___at___private_Lean_Meta_InferType_0__Lean_Meta_inferLambdaType___spec__1___rarg(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkProdSplitElem(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_expr_instantiate(lean_object*, lean_object*);
lean_object* l_outOfBounds___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Lean_Expr_swapBVars___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkAppM(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_isOrderedSubsetOf(lean_object*);
static lean_object* l_Mathlib_Meta_FunProp_mkProdProj___closed__1;
lean_object* lean_array_to_list(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_levelZero;
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Lean_Expr_swapBVars___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_etaExpand1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Lean_instInhabitedExpr;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_foldrMUnsafe_fold___at_Lean_Elab_WF_GuessLex_mkProdElem___spec__1(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Expr_letE___override(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_FunProp_mkProdProj___closed__5;
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_etaExpand1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_betaThroughLetAux(lean_object*, lean_object*);
lean_object* l_Array_range(lean_object*);
static lean_object* l_Mathlib_Meta_FunProp_mkProdProj___closed__4;
static lean_object* l_Mathlib_Meta_FunProp_headBetaThroughLet___closed__1;
static lean_object* l_Mathlib_Meta_FunProp_mkProdProj___closed__2;
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl(lean_object*);
lean_object* l_Lean_Expr_eta(lean_object*);
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Mathlib_Meta_FunProp_mkProdProj___closed__3;
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
static lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2___closed__1;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
lean_object* l_Lean_FVarId_getUserName(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Mathlib_Meta_FunProp_mkProdSplitElem___spec__1(lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
lean_object* l_Lean_Expr_getAppFn(lean_object*);
static uint8_t l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__1;
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static uint8_t l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__2;
static lean_object* l_Mathlib_Meta_FunProp_mkProdProj___closed__6;
lean_object* l_Array_ofSubarray___rarg(lean_object*);
lean_object* lean_erase_macro_scopes(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Mathlib_Meta_FunProp_mkUncurryFun___spec__1(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Mathlib_Meta_FunProp_mkProdSplitElem___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
lean_object* l_List_redLength___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Mathlib_Meta_FunProp_mkUncurryFun___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l___private_Lean_Expr_0__Lean_Expr_getAppArgsAux(lean_object*, lean_object*, lean_object*);
lean_object* lean_string_append(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope(lean_object*, lean_object*);
lean_object* l_Lean_Expr_headBeta(lean_object*);
lean_object* lean_array_get_size(lean_object*);
lean_object* lean_infer_type(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT uint8_t l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkLambdaFVars(lean_object*, lean_object*, uint8_t, uint8_t, uint8_t, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkProdProj(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_mkAppM_x27(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_expr_instantiate1(lean_object*, lean_object*);
lean_object* l_List_toArrayAux___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; uint8_t x_11; 
x_9 = lean_array_get_size(x_1);
x_10 = lean_nat_dec_lt(x_7, x_9);
lean_dec(x_9);
x_11 = lean_nat_dec_lt(x_2, x_3);
if (x_10 == 0)
{
lean_object* x_12; 
lean_inc(x_4);
x_12 = l_outOfBounds___rarg(x_4);
if (x_11 == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_13 = l_outOfBounds___rarg(x_4);
x_14 = lean_apply_2(x_5, x_12, x_13);
x_15 = lean_unbox(x_14);
lean_dec(x_14);
if (x_15 == 0)
{
lean_object* x_16; 
x_16 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_16, 0, x_7);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_unsigned_to_nat(1u);
x_18 = lean_nat_add(x_7, x_17);
lean_dec(x_7);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_18);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; uint8_t x_22; 
lean_dec(x_4);
x_20 = lean_array_fget(x_6, x_2);
x_21 = lean_apply_2(x_5, x_12, x_20);
x_22 = lean_unbox(x_21);
lean_dec(x_21);
if (x_22 == 0)
{
lean_object* x_23; 
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_7);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_unsigned_to_nat(1u);
x_25 = lean_nat_add(x_7, x_24);
lean_dec(x_7);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_25);
return x_26;
}
}
}
else
{
lean_object* x_27; 
x_27 = lean_array_fget(x_1, x_7);
if (x_11 == 0)
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_28 = l_outOfBounds___rarg(x_4);
x_29 = lean_apply_2(x_5, x_27, x_28);
x_30 = lean_unbox(x_29);
lean_dec(x_29);
if (x_30 == 0)
{
lean_object* x_31; 
x_31 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_31, 0, x_7);
return x_31;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_unsigned_to_nat(1u);
x_33 = lean_nat_add(x_7, x_32);
lean_dec(x_7);
x_34 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_34, 0, x_33);
return x_34;
}
}
else
{
lean_object* x_35; lean_object* x_36; uint8_t x_37; 
lean_dec(x_4);
x_35 = lean_array_fget(x_6, x_2);
x_36 = lean_apply_2(x_5, x_27, x_35);
x_37 = lean_unbox(x_36);
lean_dec(x_36);
if (x_37 == 0)
{
lean_object* x_38; 
x_38 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_38, 0, x_7);
return x_38;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_unsigned_to_nat(1u);
x_40 = lean_nat_add(x_7, x_39);
lean_dec(x_7);
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_40);
return x_41;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_nat_dec_le(x_8, x_7);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_nat_dec_eq(x_6, x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = lean_nat_sub(x_6, x_14);
lean_dec(x_6);
x_16 = lean_array_get_size(x_3);
x_17 = lean_nat_dec_eq(x_10, x_16);
lean_dec(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_18 = lean_box(0);
lean_inc(x_2);
lean_inc(x_1);
x_19 = l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___lambda__1(x_3, x_7, x_5, x_1, x_2, x_4, x_10, x_18);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
lean_dec(x_19);
x_21 = lean_nat_add(x_7, x_9);
lean_dec(x_7);
x_6 = x_15;
x_7 = x_21;
x_10 = x_20;
goto _start;
}
else
{
lean_dec(x_15);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
else
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
else
{
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___boxed), 10, 0);
return x_2;
}
}
LEAN_EXPORT uint8_t l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_6 = lean_array_get_size(x_1);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_unsigned_to_nat(1u);
lean_inc(x_6);
x_9 = l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg(x_2, x_3, x_4, x_1, x_6, x_6, x_7, x_6, x_8, x_7);
lean_dec(x_6);
x_10 = lean_array_get_size(x_4);
x_11 = lean_nat_dec_eq(x_9, x_10);
lean_dec(x_10);
lean_dec(x_9);
return x_11;
}
}
LEAN_EXPORT uint8_t l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_5 = lean_array_get_size(x_4);
x_6 = lean_array_get_size(x_3);
x_7 = lean_nat_dec_lt(x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_box(0);
x_9 = l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___lambda__1(x_4, x_1, x_2, x_3, x_8);
return x_9;
}
else
{
uint8_t x_10; 
lean_dec(x_2);
lean_dec(x_1);
x_10 = 0;
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_isOrderedSubsetOf(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Std_Range_forIn_loop___at_Mathlib_Meta_FunProp_isOrderedSubsetOf___spec__1___rarg(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_7 = lean_box(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = l_Mathlib_Meta_FunProp_isOrderedSubsetOf___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_add(x_2, x_9);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set(x_11, 1, x_10);
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_11);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_8);
return x_13;
}
}
static uint8_t _init_l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__1() {
_start:
{
uint8_t x_1; uint8_t x_2; 
x_1 = 0;
x_2 = l_instDecidableNot___rarg(x_1);
return x_2;
}
}
static uint8_t _init_l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__2() {
_start:
{
uint8_t x_1; uint8_t x_2; 
x_1 = 1;
x_2 = l_instDecidableNot___rarg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_4, x_3);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_6);
lean_dec(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; lean_object* x_31; lean_object* x_32; 
x_13 = lean_array_uget(x_2, x_4);
x_14 = lean_ctor_get(x_5, 1);
lean_inc(x_14);
if (lean_is_exclusive(x_5)) {
 lean_ctor_release(x_5, 0);
 lean_ctor_release(x_5, 1);
 x_15 = x_5;
} else {
 lean_dec_ref(x_5);
 x_15 = lean_box(0);
}
x_31 = l_Lean_Expr_fvarId_x21(x_13);
lean_dec(x_13);
lean_inc(x_6);
x_32 = l_Lean_FVarId_isLetVar(x_31, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_32) == 0)
{
lean_object* x_33; uint8_t x_34; 
x_33 = lean_ctor_get(x_32, 0);
lean_inc(x_33);
x_34 = lean_unbox(x_33);
lean_dec(x_33);
if (x_34 == 0)
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_ctor_get(x_32, 1);
lean_inc(x_35);
lean_dec(x_32);
x_36 = l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__1;
x_16 = x_36;
x_17 = x_35;
goto block_30;
}
else
{
lean_object* x_37; uint8_t x_38; 
x_37 = lean_ctor_get(x_32, 1);
lean_inc(x_37);
lean_dec(x_32);
x_38 = l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__2;
x_16 = x_38;
x_17 = x_37;
goto block_30;
}
}
else
{
uint8_t x_39; 
lean_dec(x_15);
lean_dec(x_14);
lean_dec(x_6);
lean_dec(x_1);
x_39 = !lean_is_exclusive(x_32);
if (x_39 == 0)
{
return x_32;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_32, 0);
x_41 = lean_ctor_get(x_32, 1);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_32);
x_42 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set(x_42, 1, x_41);
return x_42;
}
}
block_30:
{
if (x_16 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; size_t x_23; size_t x_24; 
lean_dec(x_15);
x_18 = lean_box(0);
lean_inc(x_1);
x_19 = l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___lambda__1(x_1, x_14, x_18, x_6, x_7, x_8, x_9, x_17);
lean_dec(x_14);
x_20 = lean_ctor_get(x_19, 0);
lean_inc(x_20);
x_21 = lean_ctor_get(x_19, 1);
lean_inc(x_21);
lean_dec(x_19);
x_22 = lean_ctor_get(x_20, 0);
lean_inc(x_22);
lean_dec(x_20);
x_23 = 1;
x_24 = lean_usize_add(x_4, x_23);
x_4 = x_24;
x_5 = x_22;
x_10 = x_21;
goto _start;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_6);
lean_dec(x_1);
lean_inc(x_14);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_14);
x_27 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_27, 0, x_26);
if (lean_is_scalar(x_15)) {
 x_28 = lean_alloc_ctor(0, 2, 0);
} else {
 x_28 = x_15;
}
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_14);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_17);
return x_29;
}
}
}
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_8, 0, x_1);
lean_ctor_set(x_8, 1, x_7);
return x_8;
}
}
static lean_object* _init_l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; size_t x_10; size_t x_11; lean_object* x_12; lean_object* x_13; lean_object* x_34; lean_object* x_35; 
x_9 = lean_box(0);
x_10 = lean_array_size(x_2);
x_11 = 0;
x_34 = l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2___closed__1;
lean_inc(x_4);
x_35 = l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1(x_9, x_2, x_10, x_11, x_34, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_35) == 0)
{
lean_object* x_36; lean_object* x_37; 
x_36 = lean_ctor_get(x_35, 0);
lean_inc(x_36);
x_37 = lean_ctor_get(x_36, 0);
lean_inc(x_37);
lean_dec(x_36);
if (lean_obj_tag(x_37) == 0)
{
lean_object* x_38; 
x_38 = lean_ctor_get(x_35, 1);
lean_inc(x_38);
lean_dec(x_35);
x_12 = x_9;
x_13 = x_38;
goto block_33;
}
else
{
lean_object* x_39; lean_object* x_40; 
x_39 = lean_ctor_get(x_35, 1);
lean_inc(x_39);
lean_dec(x_35);
x_40 = lean_ctor_get(x_37, 0);
lean_inc(x_40);
lean_dec(x_37);
x_12 = x_40;
x_13 = x_39;
goto block_33;
}
}
else
{
uint8_t x_41; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_41 = !lean_is_exclusive(x_35);
if (x_41 == 0)
{
return x_35;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_35, 0);
x_43 = lean_ctor_get(x_35, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_35);
x_44 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
}
block_33:
{
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_14; 
x_14 = lean_apply_7(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_13);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; uint8_t x_20; uint8_t x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_12, 0);
lean_inc(x_15);
lean_dec(x_12);
x_16 = lean_array_get_size(x_2);
lean_inc(x_15);
lean_inc(x_2);
x_17 = l_Array_toSubarray___rarg(x_2, x_15, x_16);
x_18 = l_Array_ofSubarray___rarg(x_17);
lean_dec(x_17);
x_19 = 0;
x_20 = 1;
x_21 = 1;
x_22 = l_Lean_Meta_mkLambdaFVars(x_18, x_3, x_19, x_20, x_19, x_21, x_4, x_5, x_6, x_7, x_13);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_23 = lean_ctor_get(x_22, 0);
lean_inc(x_23);
x_24 = lean_ctor_get(x_22, 1);
lean_inc(x_24);
lean_dec(x_22);
x_25 = lean_unsigned_to_nat(0u);
x_26 = l_Array_toSubarray___rarg(x_2, x_25, x_15);
x_27 = l_Array_ofSubarray___rarg(x_26);
lean_dec(x_26);
x_28 = lean_apply_7(x_1, x_27, x_23, x_4, x_5, x_6, x_7, x_24);
return x_28;
}
else
{
uint8_t x_29; 
lean_dec(x_15);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_29 = !lean_is_exclusive(x_22);
if (x_29 == 0)
{
return x_22;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_22, 0);
x_31 = lean_ctor_get(x_22, 1);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_22);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set(x_32, 1, x_31);
return x_32;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; lean_object* x_10; 
x_8 = lean_alloc_closure((void*)(l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2), 8, 1);
lean_closure_set(x_8, 0, x_2);
x_9 = 0;
x_10 = l_Lean_Meta_lambdaLetTelescope___at___private_Lean_Meta_InferType_0__Lean_Meta_inferLambdaType___spec__1___rarg(x_1, x_8, x_9, x_3, x_4, x_5, x_6, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg), 7, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
return x_13;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_apply_2(x_1, x_3, x_4);
x_11 = lean_apply_7(x_2, lean_box(0), x_10, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_letTelescope___rarg___lambda__1), 9, 2);
lean_closure_set(x_9, 0, x_1);
lean_closure_set(x_9, 1, x_3);
x_10 = l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg(x_2, x_9, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_letTelescope___rarg___lambda__2), 8, 2);
lean_closure_set(x_6, 0, x_4);
lean_closure_set(x_6, 1, x_3);
x_7 = lean_ctor_get(x_1, 0);
lean_inc(x_7);
x_8 = lean_apply_2(x_7, lean_box(0), x_6);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
lean_dec(x_1);
x_10 = lean_apply_1(x_9, lean_box(0));
x_11 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_8, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_letTelescope(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_letTelescope___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Lean_Expr_swapBVars___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_nat_dec_le(x_5, x_4);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_eq(x_3, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_sub(x_3, x_11);
lean_dec(x_3);
x_13 = lean_nat_dec_eq(x_4, x_1);
if (x_13 == 0)
{
uint8_t x_14; 
x_14 = lean_nat_dec_eq(x_4, x_2);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_inc(x_4);
x_15 = l_Lean_Expr_bvar___override(x_4);
x_16 = lean_array_push(x_7, x_15);
x_17 = lean_nat_add(x_4, x_6);
lean_dec(x_4);
x_3 = x_12;
x_4 = x_17;
x_7 = x_16;
goto _start;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
lean_inc(x_1);
x_19 = l_Lean_Expr_bvar___override(x_1);
x_20 = lean_array_push(x_7, x_19);
x_21 = lean_nat_add(x_4, x_6);
lean_dec(x_4);
x_3 = x_12;
x_4 = x_21;
x_7 = x_20;
goto _start;
}
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
lean_inc(x_2);
x_23 = l_Lean_Expr_bvar___override(x_2);
x_24 = lean_array_push(x_7, x_23);
x_25 = lean_nat_add(x_4, x_6);
lean_dec(x_4);
x_3 = x_12;
x_4 = x_25;
x_7 = x_24;
goto _start;
}
}
else
{
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
else
{
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_swapBVars(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = l_Lean_Expr_looseBVarRange(x_1);
x_5 = lean_mk_empty_array_with_capacity(x_4);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_unsigned_to_nat(1u);
lean_inc(x_4);
x_8 = l_Std_Range_forIn_loop___at_Lean_Expr_swapBVars___spec__1(x_2, x_3, x_4, x_6, x_4, x_7, x_5);
lean_dec(x_4);
x_9 = lean_expr_instantiate(x_1, x_8);
lean_dec(x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Std_Range_forIn_loop___at_Lean_Expr_swapBVars___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Std_Range_forIn_loop___at_Lean_Expr_swapBVars___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_Expr_swapBVars___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Lean_Expr_swapBVars(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdElem___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Lean_Expr_bvar___override(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkProdElem(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_array_get_size(x_1);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_eq(x_7, x_8);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_unsigned_to_nat(1u);
x_11 = lean_nat_dec_eq(x_7, x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_12 = lean_nat_sub(x_7, x_10);
x_13 = lean_nat_dec_lt(x_12, x_7);
lean_dec(x_7);
lean_inc(x_12);
lean_inc(x_1);
x_14 = l_Array_toSubarray___rarg(x_1, x_8, x_12);
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 2);
lean_inc(x_16);
x_17 = lean_ctor_get(x_14, 1);
lean_inc(x_17);
lean_dec(x_14);
x_18 = lean_array_get_size(x_15);
x_19 = lean_nat_dec_le(x_16, x_18);
if (x_13 == 0)
{
lean_object* x_20; lean_object* x_21; 
lean_dec(x_12);
lean_dec(x_1);
x_20 = l_Lean_instInhabitedExpr;
x_21 = l_outOfBounds___rarg(x_20);
if (x_19 == 0)
{
uint8_t x_22; 
lean_dec(x_16);
x_22 = lean_nat_dec_lt(x_17, x_18);
if (x_22 == 0)
{
lean_object* x_23; 
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_15);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_6);
return x_23;
}
else
{
size_t x_24; size_t x_25; lean_object* x_26; 
x_24 = lean_usize_of_nat(x_18);
lean_dec(x_18);
x_25 = lean_usize_of_nat(x_17);
lean_dec(x_17);
x_26 = l_Array_foldrMUnsafe_fold___at_Lean_Elab_WF_GuessLex_mkProdElem___spec__1(x_15, x_24, x_25, x_21, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_15);
return x_26;
}
}
else
{
uint8_t x_27; 
lean_dec(x_18);
x_27 = lean_nat_dec_lt(x_17, x_16);
if (x_27 == 0)
{
lean_object* x_28; 
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_21);
lean_ctor_set(x_28, 1, x_6);
return x_28;
}
else
{
size_t x_29; size_t x_30; lean_object* x_31; 
x_29 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_30 = lean_usize_of_nat(x_17);
lean_dec(x_17);
x_31 = l_Array_foldrMUnsafe_fold___at_Lean_Elab_WF_GuessLex_mkProdElem___spec__1(x_15, x_29, x_30, x_21, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_15);
return x_31;
}
}
}
else
{
lean_object* x_32; 
x_32 = lean_array_fget(x_1, x_12);
lean_dec(x_12);
lean_dec(x_1);
if (x_19 == 0)
{
uint8_t x_33; 
lean_dec(x_16);
x_33 = lean_nat_dec_lt(x_17, x_18);
if (x_33 == 0)
{
lean_object* x_34; 
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_15);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_6);
return x_34;
}
else
{
size_t x_35; size_t x_36; lean_object* x_37; 
x_35 = lean_usize_of_nat(x_18);
lean_dec(x_18);
x_36 = lean_usize_of_nat(x_17);
lean_dec(x_17);
x_37 = l_Array_foldrMUnsafe_fold___at_Lean_Elab_WF_GuessLex_mkProdElem___spec__1(x_15, x_35, x_36, x_32, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_15);
return x_37;
}
}
else
{
uint8_t x_38; 
lean_dec(x_18);
x_38 = lean_nat_dec_lt(x_17, x_16);
if (x_38 == 0)
{
lean_object* x_39; 
lean_dec(x_17);
lean_dec(x_16);
lean_dec(x_15);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_32);
lean_ctor_set(x_39, 1, x_6);
return x_39;
}
else
{
size_t x_40; size_t x_41; lean_object* x_42; 
x_40 = lean_usize_of_nat(x_16);
lean_dec(x_16);
x_41 = lean_usize_of_nat(x_17);
lean_dec(x_17);
x_42 = l_Array_foldrMUnsafe_fold___at_Lean_Elab_WF_GuessLex_mkProdElem___spec__1(x_15, x_40, x_41, x_32, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_15);
return x_42;
}
}
}
}
else
{
uint8_t x_43; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_43 = lean_nat_dec_lt(x_8, x_7);
lean_dec(x_7);
if (x_43 == 0)
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
lean_dec(x_1);
x_44 = l_Lean_instInhabitedExpr;
x_45 = l_outOfBounds___rarg(x_44);
x_46 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_6);
return x_46;
}
else
{
lean_object* x_47; lean_object* x_48; 
x_47 = lean_array_fget(x_1, x_8);
lean_dec(x_1);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_6);
return x_48;
}
}
}
else
{
lean_object* x_49; lean_object* x_50; 
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_49 = l_Mathlib_Meta_FunProp_mkProdElem___closed__1;
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_6);
return x_50;
}
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Prod", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("snd", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Meta_FunProp_mkProdProj___closed__1;
x_2 = l_Mathlib_Meta_FunProp_mkProdProj___closed__2;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("fst", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Mathlib_Meta_FunProp_mkProdProj___closed__1;
x_2 = l_Mathlib_Meta_FunProp_mkProdProj___closed__5;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkProdProj(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_eq(x_2, x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_sub(x_2, x_11);
lean_dec(x_2);
x_13 = lean_nat_dec_eq(x_3, x_9);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = lean_nat_sub(x_3, x_11);
lean_dec(x_3);
x_15 = lean_nat_dec_eq(x_14, x_9);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_16 = l_Mathlib_Meta_FunProp_mkProdProj___closed__4;
x_17 = lean_array_push(x_16, x_1);
x_18 = lean_ctor_get(x_4, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_4, 1);
lean_inc(x_19);
x_20 = lean_ctor_get(x_4, 2);
lean_inc(x_20);
x_21 = lean_ctor_get(x_4, 3);
lean_inc(x_21);
x_22 = lean_ctor_get(x_4, 4);
lean_inc(x_22);
x_23 = lean_ctor_get(x_4, 5);
lean_inc(x_23);
x_24 = !lean_is_exclusive(x_18);
if (x_24 == 0)
{
uint8_t x_25; uint8_t x_26; uint8_t x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_25 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_26 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_27 = 0;
lean_ctor_set_uint8(x_18, 9, x_27);
x_28 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_28, 0, x_18);
lean_ctor_set(x_28, 1, x_19);
lean_ctor_set(x_28, 2, x_20);
lean_ctor_set(x_28, 3, x_21);
lean_ctor_set(x_28, 4, x_22);
lean_ctor_set(x_28, 5, x_23);
lean_ctor_set_uint8(x_28, sizeof(void*)*6, x_25);
lean_ctor_set_uint8(x_28, sizeof(void*)*6 + 1, x_26);
x_29 = l_Mathlib_Meta_FunProp_mkProdProj___closed__3;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_30 = l_Lean_Meta_mkAppM(x_29, x_17, x_28, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_30, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_30, 1);
lean_inc(x_32);
lean_dec(x_30);
x_1 = x_31;
x_2 = x_12;
x_3 = x_14;
x_8 = x_32;
goto _start;
}
else
{
uint8_t x_34; 
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_34 = !lean_is_exclusive(x_30);
if (x_34 == 0)
{
return x_30;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_30, 0);
x_36 = lean_ctor_get(x_30, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_30);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
else
{
uint8_t x_38; uint8_t x_39; uint8_t x_40; uint8_t x_41; uint8_t x_42; uint8_t x_43; uint8_t x_44; uint8_t x_45; uint8_t x_46; uint8_t x_47; uint8_t x_48; uint8_t x_49; uint8_t x_50; uint8_t x_51; uint8_t x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_38 = lean_ctor_get_uint8(x_4, sizeof(void*)*6);
x_39 = lean_ctor_get_uint8(x_4, sizeof(void*)*6 + 1);
x_40 = lean_ctor_get_uint8(x_18, 0);
x_41 = lean_ctor_get_uint8(x_18, 1);
x_42 = lean_ctor_get_uint8(x_18, 2);
x_43 = lean_ctor_get_uint8(x_18, 3);
x_44 = lean_ctor_get_uint8(x_18, 4);
x_45 = lean_ctor_get_uint8(x_18, 5);
x_46 = lean_ctor_get_uint8(x_18, 6);
x_47 = lean_ctor_get_uint8(x_18, 7);
x_48 = lean_ctor_get_uint8(x_18, 8);
x_49 = lean_ctor_get_uint8(x_18, 10);
x_50 = lean_ctor_get_uint8(x_18, 11);
x_51 = lean_ctor_get_uint8(x_18, 12);
lean_dec(x_18);
x_52 = 0;
x_53 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_53, 0, x_40);
lean_ctor_set_uint8(x_53, 1, x_41);
lean_ctor_set_uint8(x_53, 2, x_42);
lean_ctor_set_uint8(x_53, 3, x_43);
lean_ctor_set_uint8(x_53, 4, x_44);
lean_ctor_set_uint8(x_53, 5, x_45);
lean_ctor_set_uint8(x_53, 6, x_46);
lean_ctor_set_uint8(x_53, 7, x_47);
lean_ctor_set_uint8(x_53, 8, x_48);
lean_ctor_set_uint8(x_53, 9, x_52);
lean_ctor_set_uint8(x_53, 10, x_49);
lean_ctor_set_uint8(x_53, 11, x_50);
lean_ctor_set_uint8(x_53, 12, x_51);
x_54 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_19);
lean_ctor_set(x_54, 2, x_20);
lean_ctor_set(x_54, 3, x_21);
lean_ctor_set(x_54, 4, x_22);
lean_ctor_set(x_54, 5, x_23);
lean_ctor_set_uint8(x_54, sizeof(void*)*6, x_38);
lean_ctor_set_uint8(x_54, sizeof(void*)*6 + 1, x_39);
x_55 = l_Mathlib_Meta_FunProp_mkProdProj___closed__3;
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_56 = l_Lean_Meta_mkAppM(x_55, x_17, x_54, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_56) == 0)
{
lean_object* x_57; lean_object* x_58; 
x_57 = lean_ctor_get(x_56, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_56, 1);
lean_inc(x_58);
lean_dec(x_56);
x_1 = x_57;
x_2 = x_12;
x_3 = x_14;
x_8 = x_58;
goto _start;
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_60 = lean_ctor_get(x_56, 0);
lean_inc(x_60);
x_61 = lean_ctor_get(x_56, 1);
lean_inc(x_61);
if (lean_is_exclusive(x_56)) {
 lean_ctor_release(x_56, 0);
 lean_ctor_release(x_56, 1);
 x_62 = x_56;
} else {
 lean_dec_ref(x_56);
 x_62 = lean_box(0);
}
if (lean_is_scalar(x_62)) {
 x_63 = lean_alloc_ctor(1, 2, 0);
} else {
 x_63 = x_62;
}
lean_ctor_set(x_63, 0, x_60);
lean_ctor_set(x_63, 1, x_61);
return x_63;
}
}
}
else
{
lean_object* x_64; 
lean_dec(x_14);
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_64 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_64, 0, x_1);
lean_ctor_set(x_64, 1, x_8);
return x_64;
}
}
else
{
lean_object* x_65; 
lean_dec(x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_65 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_65, 0, x_1);
lean_ctor_set(x_65, 1, x_8);
return x_65;
}
}
else
{
uint8_t x_66; 
lean_dec(x_2);
x_66 = lean_nat_dec_eq(x_3, x_9);
if (x_66 == 0)
{
lean_object* x_67; uint8_t x_68; 
x_67 = lean_unsigned_to_nat(1u);
x_68 = lean_nat_dec_eq(x_3, x_67);
lean_dec(x_3);
if (x_68 == 0)
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_69 = l_Mathlib_Meta_FunProp_mkProdProj___closed__4;
x_70 = lean_array_push(x_69, x_1);
x_71 = l_Mathlib_Meta_FunProp_mkProdProj___closed__6;
x_72 = l_Lean_Meta_mkAppM(x_71, x_70, x_4, x_5, x_6, x_7, x_8);
return x_72;
}
else
{
lean_object* x_73; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_73 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_73, 0, x_1);
lean_ctor_set(x_73, 1, x_8);
return x_73;
}
}
else
{
lean_object* x_74; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_1);
lean_ctor_set(x_74, 1, x_8);
return x_74;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Mathlib_Meta_FunProp_mkProdSplitElem___spec__1(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
uint8_t x_11; 
x_11 = lean_usize_dec_lt(x_4, x_3);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_5);
lean_ctor_set(x_12, 1, x_10);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_array_uget(x_5, x_4);
x_14 = lean_unsigned_to_nat(0u);
x_15 = lean_array_uset(x_5, x_4, x_14);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_2);
lean_inc(x_1);
x_16 = l_Mathlib_Meta_FunProp_mkProdProj(x_1, x_13, x_2, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_16) == 0)
{
lean_object* x_17; lean_object* x_18; size_t x_19; size_t x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = 1;
x_20 = lean_usize_add(x_4, x_19);
x_21 = lean_array_uset(x_15, x_4, x_17);
x_4 = x_20;
x_5 = x_21;
x_10 = x_18;
goto _start;
}
else
{
uint8_t x_23; 
lean_dec(x_15);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_2);
lean_dec(x_1);
x_23 = !lean_is_exclusive(x_16);
if (x_23 == 0)
{
return x_16;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_16, 0);
x_25 = lean_ctor_get(x_16, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_16);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkProdSplitElem(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; 
lean_inc(x_2);
x_8 = l_Array_range(x_2);
x_9 = lean_array_size(x_8);
x_10 = 0;
x_11 = l_Array_mapMUnsafe_map___at_Mathlib_Meta_FunProp_mkProdSplitElem___spec__1(x_1, x_2, x_9, x_10, x_8, x_3, x_4, x_5, x_6, x_7);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Mathlib_Meta_FunProp_mkProdSplitElem___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
size_t x_11; size_t x_12; lean_object* x_13; 
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = l_Array_mapMUnsafe_map___at_Mathlib_Meta_FunProp_mkProdSplitElem___spec__1(x_1, x_2, x_11, x_12, x_5, x_6, x_7, x_8, x_9, x_10);
return x_13;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Mathlib_Meta_FunProp_mkUncurryFun___spec__1(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = lean_usize_dec_eq(x_2, x_3);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_array_uget(x_1, x_2);
x_12 = l_Lean_Expr_fvarId_x21(x_11);
lean_dec(x_11);
lean_inc(x_5);
x_13 = l_Lean_FVarId_getUserName(x_12, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_erase_macro_scopes(x_14);
x_17 = 1;
x_18 = l_Lean_Name_toString(x_16, x_17);
x_19 = lean_string_append(x_4, x_18);
lean_dec(x_18);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_2 = x_21;
x_4 = x_19;
x_9 = x_15;
goto _start;
}
else
{
uint8_t x_23; 
lean_dec(x_5);
lean_dec(x_4);
x_23 = !lean_is_exclusive(x_13);
if (x_23 == 0)
{
return x_13;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_13, 0);
x_25 = lean_ctor_get(x_13, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_13);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
return x_26;
}
}
}
else
{
lean_object* x_27; 
lean_dec(x_5);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_4);
lean_ctor_set(x_27, 1, x_9);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
x_9 = l_Mathlib_Meta_FunProp_mkProdSplitElem(x_3, x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_12 = l_Lean_Meta_mkAppM_x27(x_2, x_10, x_4, x_5, x_6, x_7, x_11);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; uint8_t x_19; uint8_t x_20; lean_object* x_21; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = l_Mathlib_Meta_FunProp_mkProdProj___closed__4;
x_16 = lean_array_push(x_15, x_3);
x_17 = l_Lean_Expr_headBeta(x_13);
x_18 = 0;
x_19 = 1;
x_20 = 1;
x_21 = l_Lean_Meta_mkLambdaFVars(x_16, x_17, x_18, x_19, x_18, x_20, x_4, x_5, x_6, x_7, x_14);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_21;
}
else
{
uint8_t x_22; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_22 = !lean_is_exclusive(x_12);
if (x_22 == 0)
{
return x_12;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_12, 0);
x_24 = lean_ctor_get(x_12, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_12);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
else
{
uint8_t x_26; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_26 = !lean_is_exclusive(x_9);
if (x_26 == 0)
{
return x_9;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_9, 0);
x_28 = lean_ctor_get(x_9, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_9);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_array_get_size(x_3);
x_11 = lean_unsigned_to_nat(0u);
x_12 = lean_nat_dec_lt(x_11, x_10);
if (x_12 == 0)
{
lean_object* x_36; 
lean_dec(x_10);
x_36 = l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1;
x_13 = x_36;
x_14 = x_9;
goto block_35;
}
else
{
uint8_t x_37; 
x_37 = lean_nat_dec_le(x_10, x_10);
if (x_37 == 0)
{
lean_object* x_38; 
lean_dec(x_10);
x_38 = l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1;
x_13 = x_38;
x_14 = x_9;
goto block_35;
}
else
{
size_t x_39; size_t x_40; lean_object* x_41; lean_object* x_42; 
x_39 = 0;
x_40 = lean_usize_of_nat(x_10);
lean_dec(x_10);
x_41 = l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1;
lean_inc(x_5);
x_42 = l_Array_foldlMUnsafe_fold___at_Mathlib_Meta_FunProp_mkUncurryFun___spec__1(x_3, x_39, x_40, x_41, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_42) == 0)
{
lean_object* x_43; lean_object* x_44; 
x_43 = lean_ctor_get(x_42, 0);
lean_inc(x_43);
x_44 = lean_ctor_get(x_42, 1);
lean_inc(x_44);
lean_dec(x_42);
x_13 = x_43;
x_14 = x_44;
goto block_35;
}
else
{
uint8_t x_45; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_45 = !lean_is_exclusive(x_42);
if (x_45 == 0)
{
return x_42;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; 
x_46 = lean_ctor_get(x_42, 0);
x_47 = lean_ctor_get(x_42, 1);
lean_inc(x_47);
lean_inc(x_46);
lean_dec(x_42);
x_48 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
return x_48;
}
}
}
}
block_35:
{
lean_object* x_15; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_15 = l_Mathlib_Meta_FunProp_mkProdElem(x_3, x_5, x_6, x_7, x_8, x_14);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_18 = lean_infer_type(x_16, x_5, x_6, x_7, x_8, x_17);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; uint8_t x_24; uint8_t x_25; lean_object* x_26; 
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = lean_box(0);
x_22 = l_Lean_Name_str___override(x_21, x_13);
x_23 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__1), 8, 2);
lean_closure_set(x_23, 0, x_1);
lean_closure_set(x_23, 1, x_2);
x_24 = 0;
x_25 = 0;
x_26 = l_Lean_Meta_withLocalDecl___at_Lean_Meta_GeneralizeTelescope_generalizeTelescopeAux___spec__1___rarg(x_22, x_24, x_19, x_23, x_25, x_5, x_6, x_7, x_8, x_20);
return x_26;
}
else
{
uint8_t x_27; 
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_27 = !lean_is_exclusive(x_18);
if (x_27 == 0)
{
return x_18;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_18, 0);
x_29 = lean_ctor_get(x_18, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_18);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_28);
lean_ctor_set(x_30, 1, x_29);
return x_30;
}
}
}
else
{
uint8_t x_31; 
lean_dec(x_13);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_31 = !lean_is_exclusive(x_15);
if (x_31 == 0)
{
return x_15;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_15, 0);
x_33 = lean_ctor_get(x_15, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_15);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_1);
x_9 = lean_infer_type(x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
lean_inc(x_2);
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_2);
x_13 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___boxed), 9, 2);
lean_closure_set(x_13, 0, x_2);
lean_closure_set(x_13, 1, x_1);
x_14 = 0;
x_15 = l_Lean_Meta_forallBoundedTelescope___at_Lean_Meta_arrowDomainsN___spec__6___rarg(x_10, x_12, x_13, x_14, x_4, x_5, x_6, x_7, x_11);
return x_15;
}
else
{
uint8_t x_16; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
x_16 = !lean_is_exclusive(x_9);
if (x_16 == 0)
{
return x_9;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_9, 0);
x_18 = lean_ctor_get(x_9, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_9);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_dec_le(x_1, x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_box(0);
x_11 = l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__3(x_2, x_1, x_10, x_3, x_4, x_5, x_6, x_7);
return x_11;
}
else
{
lean_object* x_12; 
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_2);
lean_ctor_set(x_12, 1, x_7);
return x_12;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Mathlib_Meta_FunProp_mkUncurryFun___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = l_Array_foldlMUnsafe_fold___at_Mathlib_Meta_FunProp_mkUncurryFun___spec__1(x_1, x_10, x_11, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_1);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_4);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_etaExpand1___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; uint8_t x_11; uint8_t x_12; lean_object* x_13; 
x_9 = l_Lean_mkAppN(x_1, x_2);
x_10 = 0;
x_11 = 1;
x_12 = 1;
x_13 = l_Lean_Meta_mkLambdaFVars(x_2, x_9, x_10, x_11, x_10, x_12, x_4, x_5, x_6, x_7, x_8);
return x_13;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_etaExpand1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_etaExpand1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = l_Lean_Expr_eta(x_1);
x_8 = l_Lean_Expr_isLambda(x_7);
if (x_8 == 0)
{
uint8_t x_9; 
x_9 = !lean_is_exclusive(x_2);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_2, 0);
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
uint8_t x_12; lean_object* x_13; 
x_12 = 1;
lean_ctor_set_uint8(x_10, 9, x_12);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_7);
x_13 = lean_infer_type(x_7, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; lean_object* x_19; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_etaExpand1___lambda__1___boxed), 8, 1);
lean_closure_set(x_16, 0, x_7);
x_17 = l_Mathlib_Meta_FunProp_etaExpand1___closed__1;
x_18 = 0;
x_19 = l_Lean_Meta_forallBoundedTelescope___at_Lean_Meta_arrowDomainsN___spec__6___rarg(x_14, x_17, x_16, x_18, x_2, x_3, x_4, x_5, x_15);
if (lean_obj_tag(x_19) == 0)
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_19);
if (x_20 == 0)
{
return x_19;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_19, 0);
x_22 = lean_ctor_get(x_19, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_19);
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
else
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_19);
if (x_24 == 0)
{
return x_19;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_19, 0);
x_26 = lean_ctor_get(x_19, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_19);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
else
{
uint8_t x_28; 
lean_dec(x_2);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_28 = !lean_is_exclusive(x_13);
if (x_28 == 0)
{
return x_13;
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_29 = lean_ctor_get(x_13, 0);
x_30 = lean_ctor_get(x_13, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_13);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
return x_31;
}
}
}
else
{
uint8_t x_32; uint8_t x_33; uint8_t x_34; uint8_t x_35; uint8_t x_36; uint8_t x_37; uint8_t x_38; uint8_t x_39; uint8_t x_40; uint8_t x_41; uint8_t x_42; uint8_t x_43; uint8_t x_44; lean_object* x_45; lean_object* x_46; 
x_32 = lean_ctor_get_uint8(x_10, 0);
x_33 = lean_ctor_get_uint8(x_10, 1);
x_34 = lean_ctor_get_uint8(x_10, 2);
x_35 = lean_ctor_get_uint8(x_10, 3);
x_36 = lean_ctor_get_uint8(x_10, 4);
x_37 = lean_ctor_get_uint8(x_10, 5);
x_38 = lean_ctor_get_uint8(x_10, 6);
x_39 = lean_ctor_get_uint8(x_10, 7);
x_40 = lean_ctor_get_uint8(x_10, 8);
x_41 = lean_ctor_get_uint8(x_10, 10);
x_42 = lean_ctor_get_uint8(x_10, 11);
x_43 = lean_ctor_get_uint8(x_10, 12);
lean_dec(x_10);
x_44 = 1;
x_45 = lean_alloc_ctor(0, 0, 13);
lean_ctor_set_uint8(x_45, 0, x_32);
lean_ctor_set_uint8(x_45, 1, x_33);
lean_ctor_set_uint8(x_45, 2, x_34);
lean_ctor_set_uint8(x_45, 3, x_35);
lean_ctor_set_uint8(x_45, 4, x_36);
lean_ctor_set_uint8(x_45, 5, x_37);
lean_ctor_set_uint8(x_45, 6, x_38);
lean_ctor_set_uint8(x_45, 7, x_39);
lean_ctor_set_uint8(x_45, 8, x_40);
lean_ctor_set_uint8(x_45, 9, x_44);
lean_ctor_set_uint8(x_45, 10, x_41);
lean_ctor_set_uint8(x_45, 11, x_42);
lean_ctor_set_uint8(x_45, 12, x_43);
lean_ctor_set(x_2, 0, x_45);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_7);
x_46 = lean_infer_type(x_7, x_2, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; lean_object* x_52; 
x_47 = lean_ctor_get(x_46, 0);
lean_inc(x_47);
x_48 = lean_ctor_get(x_46, 1);
lean_inc(x_48);
lean_dec(x_46);
x_49 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_etaExpand1___lambda__1___boxed), 8, 1);
lean_closure_set(x_49, 0, x_7);
x_50 = l_Mathlib_Meta_FunProp_etaExpand1___closed__1;
x_51 = 0;
x_52 = l_Lean_Meta_forallBoundedTelescope___at_Lean_Meta_arrowDomainsN___spec__6___rarg(x_47, x_50, x_49, x_51, x_2, x_3, x_4, x_5, x_48);
if (lean_obj_tag(x_52) == 0)
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_53 = lean_ctor_get(x_52, 0);
lean_inc(x_53);
x_54 = lean_ctor_get(x_52, 1);
lean_inc(x_54);
if (lean_is_exclusive(x_52)) {
 lean_ctor_release(x_52, 0);
 lean_ctor_release(x_52, 1);
 x_55 = x_52;
} else {
 lean_dec_ref(x_52);
 x_55 = lean_box(0);
}
if (lean_is_scalar(x_55)) {
 x_56 = lean_alloc_ctor(0, 2, 0);
} else {
 x_56 = x_55;
}
lean_ctor_set(x_56, 0, x_53);
lean_ctor_set(x_56, 1, x_54);
return x_56;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_57 = lean_ctor_get(x_52, 0);
lean_inc(x_57);
x_58 = lean_ctor_get(x_52, 1);
lean_inc(x_58);
if (lean_is_exclusive(x_52)) {
 lean_ctor_release(x_52, 0);
 lean_ctor_release(x_52, 1);
 x_59 = x_52;
} else {
 lean_dec_ref(x_52);
 x_59 = lean_box(0);
}
if (lean_is_scalar(x_59)) {
 x_60 = lean_alloc_ctor(1, 2, 0);
} else {
 x_60 = x_59;
}
lean_ctor_set(x_60, 0, x_57);
lean_ctor_set(x_60, 1, x_58);
return x_60;
}
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
lean_dec(x_2);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_61 = lean_ctor_get(x_46, 0);
lean_inc(x_61);
x_62 = lean_ctor_get(x_46, 1);
lean_inc(x_62);
if (lean_is_exclusive(x_46)) {
 lean_ctor_release(x_46, 0);
 lean_ctor_release(x_46, 1);
 x_63 = x_46;
} else {
 lean_dec_ref(x_46);
 x_63 = lean_box(0);
}
if (lean_is_scalar(x_63)) {
 x_64 = lean_alloc_ctor(1, 2, 0);
} else {
 x_64 = x_63;
}
lean_ctor_set(x_64, 0, x_61);
lean_ctor_set(x_64, 1, x_62);
return x_64;
}
}
}
else
{
lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; uint8_t x_71; uint8_t x_72; uint8_t x_73; uint8_t x_74; uint8_t x_75; uint8_t x_76; uint8_t x_77; uint8_t x_78; uint8_t x_79; uint8_t x_80; uint8_t x_81; uint8_t x_82; uint8_t x_83; uint8_t x_84; lean_object* x_85; uint8_t x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; 
x_65 = lean_ctor_get(x_2, 0);
x_66 = lean_ctor_get(x_2, 1);
x_67 = lean_ctor_get(x_2, 2);
x_68 = lean_ctor_get(x_2, 3);
x_69 = lean_ctor_get(x_2, 4);
x_70 = lean_ctor_get(x_2, 5);
x_71 = lean_ctor_get_uint8(x_2, sizeof(void*)*6);
x_72 = lean_ctor_get_uint8(x_2, sizeof(void*)*6 + 1);
lean_inc(x_70);
lean_inc(x_69);
lean_inc(x_68);
lean_inc(x_67);
lean_inc(x_66);
lean_inc(x_65);
lean_dec(x_2);
x_73 = lean_ctor_get_uint8(x_65, 0);
x_74 = lean_ctor_get_uint8(x_65, 1);
x_75 = lean_ctor_get_uint8(x_65, 2);
x_76 = lean_ctor_get_uint8(x_65, 3);
x_77 = lean_ctor_get_uint8(x_65, 4);
x_78 = lean_ctor_get_uint8(x_65, 5);
x_79 = lean_ctor_get_uint8(x_65, 6);
x_80 = lean_ctor_get_uint8(x_65, 7);
x_81 = lean_ctor_get_uint8(x_65, 8);
x_82 = lean_ctor_get_uint8(x_65, 10);
x_83 = lean_ctor_get_uint8(x_65, 11);
x_84 = lean_ctor_get_uint8(x_65, 12);
if (lean_is_exclusive(x_65)) {
 x_85 = x_65;
} else {
 lean_dec_ref(x_65);
 x_85 = lean_box(0);
}
x_86 = 1;
if (lean_is_scalar(x_85)) {
 x_87 = lean_alloc_ctor(0, 0, 13);
} else {
 x_87 = x_85;
}
lean_ctor_set_uint8(x_87, 0, x_73);
lean_ctor_set_uint8(x_87, 1, x_74);
lean_ctor_set_uint8(x_87, 2, x_75);
lean_ctor_set_uint8(x_87, 3, x_76);
lean_ctor_set_uint8(x_87, 4, x_77);
lean_ctor_set_uint8(x_87, 5, x_78);
lean_ctor_set_uint8(x_87, 6, x_79);
lean_ctor_set_uint8(x_87, 7, x_80);
lean_ctor_set_uint8(x_87, 8, x_81);
lean_ctor_set_uint8(x_87, 9, x_86);
lean_ctor_set_uint8(x_87, 10, x_82);
lean_ctor_set_uint8(x_87, 11, x_83);
lean_ctor_set_uint8(x_87, 12, x_84);
x_88 = lean_alloc_ctor(0, 6, 2);
lean_ctor_set(x_88, 0, x_87);
lean_ctor_set(x_88, 1, x_66);
lean_ctor_set(x_88, 2, x_67);
lean_ctor_set(x_88, 3, x_68);
lean_ctor_set(x_88, 4, x_69);
lean_ctor_set(x_88, 5, x_70);
lean_ctor_set_uint8(x_88, sizeof(void*)*6, x_71);
lean_ctor_set_uint8(x_88, sizeof(void*)*6 + 1, x_72);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_88);
lean_inc(x_7);
x_89 = lean_infer_type(x_7, x_88, x_3, x_4, x_5, x_6);
if (lean_obj_tag(x_89) == 0)
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint8_t x_94; lean_object* x_95; 
x_90 = lean_ctor_get(x_89, 0);
lean_inc(x_90);
x_91 = lean_ctor_get(x_89, 1);
lean_inc(x_91);
lean_dec(x_89);
x_92 = lean_alloc_closure((void*)(l_Mathlib_Meta_FunProp_etaExpand1___lambda__1___boxed), 8, 1);
lean_closure_set(x_92, 0, x_7);
x_93 = l_Mathlib_Meta_FunProp_etaExpand1___closed__1;
x_94 = 0;
x_95 = l_Lean_Meta_forallBoundedTelescope___at_Lean_Meta_arrowDomainsN___spec__6___rarg(x_90, x_93, x_92, x_94, x_88, x_3, x_4, x_5, x_91);
if (lean_obj_tag(x_95) == 0)
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_96 = lean_ctor_get(x_95, 0);
lean_inc(x_96);
x_97 = lean_ctor_get(x_95, 1);
lean_inc(x_97);
if (lean_is_exclusive(x_95)) {
 lean_ctor_release(x_95, 0);
 lean_ctor_release(x_95, 1);
 x_98 = x_95;
} else {
 lean_dec_ref(x_95);
 x_98 = lean_box(0);
}
if (lean_is_scalar(x_98)) {
 x_99 = lean_alloc_ctor(0, 2, 0);
} else {
 x_99 = x_98;
}
lean_ctor_set(x_99, 0, x_96);
lean_ctor_set(x_99, 1, x_97);
return x_99;
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; 
x_100 = lean_ctor_get(x_95, 0);
lean_inc(x_100);
x_101 = lean_ctor_get(x_95, 1);
lean_inc(x_101);
if (lean_is_exclusive(x_95)) {
 lean_ctor_release(x_95, 0);
 lean_ctor_release(x_95, 1);
 x_102 = x_95;
} else {
 lean_dec_ref(x_95);
 x_102 = lean_box(0);
}
if (lean_is_scalar(x_102)) {
 x_103 = lean_alloc_ctor(1, 2, 0);
} else {
 x_103 = x_102;
}
lean_ctor_set(x_103, 0, x_100);
lean_ctor_set(x_103, 1, x_101);
return x_103;
}
}
else
{
lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; 
lean_dec(x_88);
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_104 = lean_ctor_get(x_89, 0);
lean_inc(x_104);
x_105 = lean_ctor_get(x_89, 1);
lean_inc(x_105);
if (lean_is_exclusive(x_89)) {
 lean_ctor_release(x_89, 0);
 lean_ctor_release(x_89, 1);
 x_106 = x_89;
} else {
 lean_dec_ref(x_89);
 x_106 = lean_box(0);
}
if (lean_is_scalar(x_106)) {
 x_107 = lean_alloc_ctor(1, 2, 0);
} else {
 x_107 = x_106;
}
lean_ctor_set(x_107, 0, x_104);
lean_ctor_set(x_107, 1, x_105);
return x_107;
}
}
}
else
{
lean_object* x_108; 
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_108 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_108, 0, x_7);
lean_ctor_set(x_108, 1, x_6);
return x_108;
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_etaExpand1___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Mathlib_Meta_FunProp_etaExpand1___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_betaThroughLetAux(lean_object* x_1, lean_object* x_2) {
_start:
{
switch (lean_obj_tag(x_1)) {
case 6:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_ctor_get(x_1, 2);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_2, 1);
lean_inc(x_5);
lean_dec(x_2);
x_6 = lean_expr_instantiate1(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
x_1 = x_6;
x_2 = x_5;
goto _start;
}
}
case 8:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
x_10 = lean_ctor_get(x_1, 2);
lean_inc(x_10);
x_11 = lean_ctor_get(x_1, 3);
lean_inc(x_11);
lean_dec(x_1);
x_12 = l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_betaThroughLetAux(x_11, x_2);
x_13 = 0;
x_14 = l_Lean_Expr_letE___override(x_8, x_9, x_10, x_12, x_13);
return x_14;
}
}
case 10:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_1, 1);
lean_inc(x_15);
lean_dec(x_1);
x_1 = x_15;
goto _start;
}
}
default: 
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_17 = l_List_redLength___rarg(x_2);
x_18 = lean_mk_empty_array_with_capacity(x_17);
lean_dec(x_17);
x_19 = l_List_toArrayAux___rarg(x_2, x_18);
x_20 = l_Lean_mkAppN(x_1, x_19);
lean_dec(x_19);
return x_20;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_betaThroughLet(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_array_to_list(lean_box(0), x_2);
x_4 = l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_betaThroughLetAux(x_1, x_3);
return x_4;
}
}
static lean_object* _init_l_Mathlib_Meta_FunProp_headBetaThroughLet___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Lean_levelZero;
x_2 = l_Lean_Expr_sort___override(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Mathlib_Meta_FunProp_headBetaThroughLet(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; uint8_t x_4; 
x_2 = l_Lean_Expr_getAppFn(x_1);
x_3 = 1;
x_4 = l_Lean_Expr_isHeadBetaTargetFn(x_3, x_2);
if (x_4 == 0)
{
lean_dec(x_2);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_5 = lean_unsigned_to_nat(0u);
x_6 = l___private_Lean_Expr_0__Lean_Expr_getAppNumArgsAux(x_1, x_5);
x_7 = l_Mathlib_Meta_FunProp_headBetaThroughLet___closed__1;
lean_inc(x_6);
x_8 = lean_mk_array(x_6, x_7);
x_9 = lean_unsigned_to_nat(1u);
x_10 = lean_nat_sub(x_6, x_9);
lean_dec(x_6);
x_11 = l___private_Lean_Expr_0__Lean_Expr_getAppArgsAux(x_1, x_8, x_10);
x_12 = l_Mathlib_Meta_FunProp_betaThroughLet(x_2, x_11);
return x_12;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Lean(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Tactic_FunProp_ToBatteries(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Lean(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__1 = _init_l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__1();
l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__2 = _init_l_Array_forInUnsafe_loop___at___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___spec__1___closed__2();
l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2___closed__1 = _init_l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2___closed__1();
lean_mark_persistent(l___private_Mathlib_Tactic_FunProp_ToBatteries_0__Mathlib_Meta_FunProp_letTelescopeImpl___rarg___lambda__2___closed__1);
l_Mathlib_Meta_FunProp_mkProdElem___closed__1 = _init_l_Mathlib_Meta_FunProp_mkProdElem___closed__1();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdElem___closed__1);
l_Mathlib_Meta_FunProp_mkProdProj___closed__1 = _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__1();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdProj___closed__1);
l_Mathlib_Meta_FunProp_mkProdProj___closed__2 = _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__2();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdProj___closed__2);
l_Mathlib_Meta_FunProp_mkProdProj___closed__3 = _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__3();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdProj___closed__3);
l_Mathlib_Meta_FunProp_mkProdProj___closed__4 = _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__4();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdProj___closed__4);
l_Mathlib_Meta_FunProp_mkProdProj___closed__5 = _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__5();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdProj___closed__5);
l_Mathlib_Meta_FunProp_mkProdProj___closed__6 = _init_l_Mathlib_Meta_FunProp_mkProdProj___closed__6();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkProdProj___closed__6);
l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1 = _init_l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1();
lean_mark_persistent(l_Mathlib_Meta_FunProp_mkUncurryFun___lambda__2___closed__1);
l_Mathlib_Meta_FunProp_etaExpand1___closed__1 = _init_l_Mathlib_Meta_FunProp_etaExpand1___closed__1();
lean_mark_persistent(l_Mathlib_Meta_FunProp_etaExpand1___closed__1);
l_Mathlib_Meta_FunProp_headBetaThroughLet___closed__1 = _init_l_Mathlib_Meta_FunProp_headBetaThroughLet___closed__1();
lean_mark_persistent(l_Mathlib_Meta_FunProp_headBetaThroughLet___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
