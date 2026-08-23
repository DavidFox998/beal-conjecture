// Lean compiler output
// Module: Mathlib.Logic.Basic
// Imports: Init Mathlib.Tactic.Attr.Register Mathlib.Tactic.Basic Batteries.Logic Batteries.Util.LibraryNote Batteries.Tactic.Lint.Basic Mathlib.Data.Nat.Notation Mathlib.Data.Int.Notation Mathlib.Order.Defs
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
LEAN_EXPORT lean_object* l_instDecidableFact___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Classical_choice__of__byContradiction_x27___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_instDecidableXor_x27___rarg___boxed(lean_object*, lean_object*);
uint8_t l_instDecidableNot___rarg(uint8_t);
LEAN_EXPORT lean_object* l_Classical_choice__of__byContradiction_x27(lean_object*);
LEAN_EXPORT lean_object* l_hidden___rarg(lean_object*);
LEAN_EXPORT uint8_t l_decidableEq__of__subsingleton(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_swap_u2082___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Function_swap_u2082(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_instDecidableFact___rarg(uint8_t);
LEAN_EXPORT lean_object* l_instDecidableXor_x27(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_hidden(lean_object*);
LEAN_EXPORT lean_object* l_decidableEq__of__subsingleton___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_hidden___rarg___boxed(lean_object*);
LEAN_EXPORT lean_object* l_instDecidableFact(lean_object*);
LEAN_EXPORT uint8_t l_instDecidableXor_x27___rarg(uint8_t, uint8_t);
LEAN_EXPORT lean_object* l_hidden___rarg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_hidden(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_hidden___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_hidden___rarg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_hidden___rarg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t l_decidableEq__of__subsingleton(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = 1;
return x_5;
}
}
LEAN_EXPORT lean_object* l_decidableEq__of__subsingleton___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = l_decidableEq__of__subsingleton(x_1, x_2, x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT uint8_t l_instDecidableFact___rarg(uint8_t x_1) {
_start:
{
return x_1;
}
}
LEAN_EXPORT lean_object* l_instDecidableFact(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_instDecidableFact___rarg___boxed), 1, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_instDecidableFact___rarg___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_instDecidableFact___rarg(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Function_swap_u2082___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_apply_4(x_1, x_4, x_5, x_2, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Function_swap_u2082(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = lean_alloc_closure((void*)(l_Function_swap_u2082___rarg), 5, 0);
return x_6;
}
}
LEAN_EXPORT uint8_t l_instDecidableXor_x27___rarg(uint8_t x_1, uint8_t x_2) {
_start:
{
if (x_1 == 0)
{
if (x_2 == 0)
{
uint8_t x_3; 
x_3 = 0;
return x_3;
}
else
{
uint8_t x_4; 
x_4 = l_instDecidableNot___rarg(x_1);
return x_4;
}
}
else
{
uint8_t x_5; 
x_5 = l_instDecidableNot___rarg(x_2);
if (x_5 == 0)
{
if (x_2 == 0)
{
uint8_t x_6; 
x_6 = 0;
return x_6;
}
else
{
uint8_t x_7; 
x_7 = l_instDecidableNot___rarg(x_1);
return x_7;
}
}
else
{
uint8_t x_8; 
x_8 = 1;
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_instDecidableXor_x27(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_instDecidableXor_x27___rarg___boxed), 2, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_instDecidableXor_x27___rarg___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l_instDecidableXor_x27___rarg(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Classical_choice__of__byContradiction_x27___rarg(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_apply_1(x_1, lean_box(0));
return x_3;
}
}
LEAN_EXPORT lean_object* l_Classical_choice__of__byContradiction_x27(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Classical_choice__of__byContradiction_x27___rarg), 2, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Attr_Register(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Logic(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Util_LibraryNote(uint8_t builtin, lean_object*);
lean_object* initialize_Batteries_Tactic_Lint_Basic(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_Notation(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Int_Notation(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Order_Defs(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Logic_Basic(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Attr_Register(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Logic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Util_LibraryNote(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Batteries_Tactic_Lint_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_Notation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Int_Notation(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Order_Defs(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
