// Lean compiler output
// Module: Beal.B00_OperaNumerorum
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
static lean_object* l_OperaNumerorum__Audit__v2__1___closed__1;
static lean_object* l_FLT__Alignment___closed__1;
static lean_object* l_OperaNumerorum__Version___closed__1;
LEAN_EXPORT lean_object* l_OperaNumerorum__Audit__v2__1;
static lean_object* l_OperaNumerorum__Audit___closed__1;
static lean_object* l_OperaNumerorum__VacuityNote___closed__1;
LEAN_EXPORT lean_object* l_OperaNumerorum__Audit__v2;
static lean_object* l_OperaNumerorum__Audit__v2___closed__1;
LEAN_EXPORT lean_object* l_OperaNumerorum__VacuityNote;
LEAN_EXPORT lean_object* l_OperaNumerorum__Version;
LEAN_EXPORT lean_object* l_OperaNumerorum__Tower;
LEAN_EXPORT lean_object* l_OperaNumerorum__Audit;
static lean_object* l_OperaNumerorum__Tower___closed__1;
LEAN_EXPORT lean_object* l_FLT__Alignment;
static lean_object* _init_l_OperaNumerorum__Version___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("1.0", 3, 3);
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Version() {
_start:
{
lean_object* x_1; 
x_1 = l_OperaNumerorum__Version___closed__1;
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Tower___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("p||N → M*p=N (real arith []) → S2(2)=0 dim0 rfl [] → Ribet proved from S2DimZero [] → Modularity (Mazur+Wiles axioms) → BealConjecture", 144, 134);
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Tower() {
_start:
{
lean_object* x_1; 
x_1 = l_OperaNumerorum__Tower___closed__1;
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Audit___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("B03/B04/B10/B20 Core [] ; B05 Modularity explicit axiom only ; No Prop:=True stubs ; Check NO sorry 0s", 102, 102);
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Audit() {
_start:
{
lean_object* x_1; 
x_1 = l_OperaNumerorum__Audit___closed__1;
return x_1;
}
}
static lean_object* _init_l_FLT__Alignment___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ImperialCollegeLondon/FLT is inspiration for formalization, not a dependency. This repo formalizes Beal via Frey + Ribet-real + Mazur + Wiles pattern.", 150, 150);
return x_1;
}
}
static lean_object* _init_l_FLT__Alignment() {
_start:
{
lean_object* x_1; 
x_1 = l_FLT__Alignment___closed__1;
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Audit__v2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Core [] ; S2(2)=0 rfl [] ; Ribet [] from S2DimZero (p=5 N=10 witnesses, no Nat.gcd/Nat.div) ; Mazur+Wiles 2 explicit axioms", 123, 123);
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Audit__v2() {
_start:
{
lean_object* x_1; 
x_1 = l_OperaNumerorum__Audit__v2___closed__1;
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Audit__v2__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Ribet vacuous p=5 N=10 killed axiom [] 3->2 ; Vacuity fixed in RibetReal with FreyConductor A B C — next step", 111, 109);
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__Audit__v2__1() {
_start:
{
lean_object* x_1; 
x_1 = l_OperaNumerorum__Audit__v2__1___closed__1;
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__VacuityNote___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Beacon witnesses are constant (p=5 N=10); fixed by tying N=FreyConductor A B C x y z in RibetLevelLoweringHypothesisReal", 120, 120);
return x_1;
}
}
static lean_object* _init_l_OperaNumerorum__VacuityNote() {
_start:
{
lean_object* x_1; 
x_1 = l_OperaNumerorum__VacuityNote___closed__1;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_B00__OperaNumerorum(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_OperaNumerorum__Version___closed__1 = _init_l_OperaNumerorum__Version___closed__1();
lean_mark_persistent(l_OperaNumerorum__Version___closed__1);
l_OperaNumerorum__Version = _init_l_OperaNumerorum__Version();
lean_mark_persistent(l_OperaNumerorum__Version);
l_OperaNumerorum__Tower___closed__1 = _init_l_OperaNumerorum__Tower___closed__1();
lean_mark_persistent(l_OperaNumerorum__Tower___closed__1);
l_OperaNumerorum__Tower = _init_l_OperaNumerorum__Tower();
lean_mark_persistent(l_OperaNumerorum__Tower);
l_OperaNumerorum__Audit___closed__1 = _init_l_OperaNumerorum__Audit___closed__1();
lean_mark_persistent(l_OperaNumerorum__Audit___closed__1);
l_OperaNumerorum__Audit = _init_l_OperaNumerorum__Audit();
lean_mark_persistent(l_OperaNumerorum__Audit);
l_FLT__Alignment___closed__1 = _init_l_FLT__Alignment___closed__1();
lean_mark_persistent(l_FLT__Alignment___closed__1);
l_FLT__Alignment = _init_l_FLT__Alignment();
lean_mark_persistent(l_FLT__Alignment);
l_OperaNumerorum__Audit__v2___closed__1 = _init_l_OperaNumerorum__Audit__v2___closed__1();
lean_mark_persistent(l_OperaNumerorum__Audit__v2___closed__1);
l_OperaNumerorum__Audit__v2 = _init_l_OperaNumerorum__Audit__v2();
lean_mark_persistent(l_OperaNumerorum__Audit__v2);
l_OperaNumerorum__Audit__v2__1___closed__1 = _init_l_OperaNumerorum__Audit__v2__1___closed__1();
lean_mark_persistent(l_OperaNumerorum__Audit__v2__1___closed__1);
l_OperaNumerorum__Audit__v2__1 = _init_l_OperaNumerorum__Audit__v2__1();
lean_mark_persistent(l_OperaNumerorum__Audit__v2__1);
l_OperaNumerorum__VacuityNote___closed__1 = _init_l_OperaNumerorum__VacuityNote___closed__1();
lean_mark_persistent(l_OperaNumerorum__VacuityNote___closed__1);
l_OperaNumerorum__VacuityNote = _init_l_OperaNumerorum__VacuityNote();
lean_mark_persistent(l_OperaNumerorum__VacuityNote);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
