// Lean compiler output
// Module: Mathlib.Data.Bracket
// Imports: Init Mathlib.Tactic.TypeStar
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
static lean_object* l_term_u2045___x2c___u2046___closed__11;
LEAN_EXPORT lean_object* l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__11;
static lean_object* l_term_u2045___x2c___u2046___closed__9;
static lean_object* l_term_u2045___x2c___u2046___closed__2;
static lean_object* l_term_u2045___x2c___u2046___closed__10;
static lean_object* l_term_u2045___x2c___u2046___closed__18;
lean_object* l_Lean_replaceRef(lean_object*, lean_object*);
static lean_object* l_term_u2045___x2c___u2046___closed__5;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__13;
lean_object* l_Lean_Syntax_node5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__7;
LEAN_EXPORT lean_object* l_term_u2045___x2c___u2046;
static lean_object* l_term_u2045___x2c___u2046___closed__12;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__9;
lean_object* l_Lean_SourceInfo_fromRef(lean_object*, uint8_t);
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__14;
static lean_object* l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__2;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__3;
static lean_object* l_term_u2045___x2c___u2046___closed__3;
lean_object* l_Lean_addMacroScope(lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__4;
lean_object* l_Lean_Syntax_node2(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__2;
uint8_t l_Lean_Syntax_matchesNull(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_term_u2045___x2c___u2046___closed__7;
static lean_object* l_term_u2045___x2c___u2046___closed__15;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__1;
static lean_object* l_term_u2045___x2c___u2046___closed__17;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__12;
static lean_object* l_term_u2045___x2c___u2046___closed__1;
static lean_object* l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__1;
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
static lean_object* l_term_u2045___x2c___u2046___closed__6;
static lean_object* l_term_u2045___x2c___u2046___closed__16;
LEAN_EXPORT lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_term_u2045___x2c___u2046___closed__8;
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_term_u2045___x2c___u2046___closed__4;
static lean_object* l_term_u2045___x2c___u2046___closed__13;
lean_object* l_String_toSubstring_x27(lean_object*);
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__6;
static lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__8;
static lean_object* l_term_u2045___x2c___u2046___closed__14;
static lean_object* _init_l_term_u2045___x2c___u2046___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term⁅_,_⁆", 13, 9);
return x_1;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_term_u2045___x2c___u2046___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_term_u2045___x2c___u2046___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("⁅", 3, 1);
return x_1;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_term_u2045___x2c___u2046___closed__5;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_term_u2045___x2c___u2046___closed__7;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_term_u2045___x2c___u2046___closed__8;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_term_u2045___x2c___u2046___closed__4;
x_2 = l_term_u2045___x2c___u2046___closed__6;
x_3 = l_term_u2045___x2c___u2046___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(", ", 2, 2);
return x_1;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_term_u2045___x2c___u2046___closed__11;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_term_u2045___x2c___u2046___closed__4;
x_2 = l_term_u2045___x2c___u2046___closed__10;
x_3 = l_term_u2045___x2c___u2046___closed__12;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_term_u2045___x2c___u2046___closed__4;
x_2 = l_term_u2045___x2c___u2046___closed__13;
x_3 = l_term_u2045___x2c___u2046___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("⁆", 3, 1);
return x_1;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_term_u2045___x2c___u2046___closed__15;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_term_u2045___x2c___u2046___closed__4;
x_2 = l_term_u2045___x2c___u2046___closed__14;
x_3 = l_term_u2045___x2c___u2046___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_term_u2045___x2c___u2046___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_term_u2045___x2c___u2046___closed__17;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_term_u2045___x2c___u2046() {
_start:
{
lean_object* x_1; 
x_1 = l_term_u2045___x2c___u2046___closed__18;
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Term", 4, 4);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("app", 3, 3);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__1;
x_2 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__2;
x_3 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__3;
x_4 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Bracket.bracket", 15, 15);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__6;
x_2 = l_String_toSubstring_x27(x_1);
return x_2;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Bracket", 7, 7);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("bracket", 7, 7);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__8;
x_2 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__9;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__11;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("null", 4, 4);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__13;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l_term_u2045___x2c___u2046___closed__2;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_2);
lean_dec(x_1);
x_6 = lean_box(1);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_8 = lean_unsigned_to_nat(1u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = lean_unsigned_to_nat(3u);
x_11 = l_Lean_Syntax_getArg(x_1, x_10);
lean_dec(x_1);
x_12 = lean_ctor_get(x_2, 5);
lean_inc(x_12);
x_13 = 0;
x_14 = l_Lean_SourceInfo_fromRef(x_12, x_13);
lean_dec(x_12);
x_15 = lean_ctor_get(x_2, 2);
lean_inc(x_15);
x_16 = lean_ctor_get(x_2, 1);
lean_inc(x_16);
lean_dec(x_2);
x_17 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10;
x_18 = l_Lean_addMacroScope(x_16, x_17, x_15);
x_19 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__7;
x_20 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__12;
lean_inc(x_14);
x_21 = lean_alloc_ctor(3, 4, 0);
lean_ctor_set(x_21, 0, x_14);
lean_ctor_set(x_21, 1, x_19);
lean_ctor_set(x_21, 2, x_18);
lean_ctor_set(x_21, 3, x_20);
x_22 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__14;
lean_inc(x_14);
x_23 = l_Lean_Syntax_node2(x_14, x_22, x_9, x_11);
x_24 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5;
x_25 = l_Lean_Syntax_node2(x_14, x_24, x_21, x_23);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_3);
return x_26;
}
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__1;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5;
lean_inc(x_1);
x_5 = l_Lean_Syntax_isOfKind(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_1);
x_6 = lean_box(0);
x_7 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_7, 0, x_6);
lean_ctor_set(x_7, 1, x_3);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Lean_Syntax_getArg(x_1, x_8);
x_10 = l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__2;
lean_inc(x_9);
x_11 = l_Lean_Syntax_isOfKind(x_9, x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_9);
lean_dec(x_1);
x_12 = lean_box(0);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_3);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_unsigned_to_nat(1u);
x_15 = l_Lean_Syntax_getArg(x_1, x_14);
lean_dec(x_1);
x_16 = lean_unsigned_to_nat(2u);
lean_inc(x_15);
x_17 = l_Lean_Syntax_matchesNull(x_15, x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; 
lean_dec(x_15);
lean_dec(x_9);
x_18 = lean_box(0);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_3);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_20 = l_Lean_Syntax_getArg(x_15, x_8);
x_21 = l_Lean_Syntax_getArg(x_15, x_14);
lean_dec(x_15);
x_22 = l_Lean_replaceRef(x_9, x_2);
lean_dec(x_9);
x_23 = 0;
x_24 = l_Lean_SourceInfo_fromRef(x_22, x_23);
lean_dec(x_22);
x_25 = l_term_u2045___x2c___u2046___closed__5;
lean_inc(x_24);
x_26 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
x_27 = l_term_u2045___x2c___u2046___closed__11;
lean_inc(x_24);
x_28 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_28, 0, x_24);
lean_ctor_set(x_28, 1, x_27);
x_29 = l_term_u2045___x2c___u2046___closed__15;
lean_inc(x_24);
x_30 = lean_alloc_ctor(2, 2, 0);
lean_ctor_set(x_30, 0, x_24);
lean_ctor_set(x_30, 1, x_29);
x_31 = l_term_u2045___x2c___u2046___closed__2;
x_32 = l_Lean_Syntax_node5(x_24, x_31, x_26, x_20, x_28, x_21, x_30);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_3);
return x_33;
}
}
}
}
}
LEAN_EXPORT lean_object* l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1(x_1, x_2, x_3);
lean_dec(x_2);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Tactic_TypeStar(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Data_Bracket(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Tactic_TypeStar(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_term_u2045___x2c___u2046___closed__1 = _init_l_term_u2045___x2c___u2046___closed__1();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__1);
l_term_u2045___x2c___u2046___closed__2 = _init_l_term_u2045___x2c___u2046___closed__2();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__2);
l_term_u2045___x2c___u2046___closed__3 = _init_l_term_u2045___x2c___u2046___closed__3();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__3);
l_term_u2045___x2c___u2046___closed__4 = _init_l_term_u2045___x2c___u2046___closed__4();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__4);
l_term_u2045___x2c___u2046___closed__5 = _init_l_term_u2045___x2c___u2046___closed__5();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__5);
l_term_u2045___x2c___u2046___closed__6 = _init_l_term_u2045___x2c___u2046___closed__6();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__6);
l_term_u2045___x2c___u2046___closed__7 = _init_l_term_u2045___x2c___u2046___closed__7();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__7);
l_term_u2045___x2c___u2046___closed__8 = _init_l_term_u2045___x2c___u2046___closed__8();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__8);
l_term_u2045___x2c___u2046___closed__9 = _init_l_term_u2045___x2c___u2046___closed__9();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__9);
l_term_u2045___x2c___u2046___closed__10 = _init_l_term_u2045___x2c___u2046___closed__10();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__10);
l_term_u2045___x2c___u2046___closed__11 = _init_l_term_u2045___x2c___u2046___closed__11();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__11);
l_term_u2045___x2c___u2046___closed__12 = _init_l_term_u2045___x2c___u2046___closed__12();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__12);
l_term_u2045___x2c___u2046___closed__13 = _init_l_term_u2045___x2c___u2046___closed__13();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__13);
l_term_u2045___x2c___u2046___closed__14 = _init_l_term_u2045___x2c___u2046___closed__14();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__14);
l_term_u2045___x2c___u2046___closed__15 = _init_l_term_u2045___x2c___u2046___closed__15();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__15);
l_term_u2045___x2c___u2046___closed__16 = _init_l_term_u2045___x2c___u2046___closed__16();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__16);
l_term_u2045___x2c___u2046___closed__17 = _init_l_term_u2045___x2c___u2046___closed__17();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__17);
l_term_u2045___x2c___u2046___closed__18 = _init_l_term_u2045___x2c___u2046___closed__18();
lean_mark_persistent(l_term_u2045___x2c___u2046___closed__18);
l_term_u2045___x2c___u2046 = _init_l_term_u2045___x2c___u2046();
lean_mark_persistent(l_term_u2045___x2c___u2046);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__1 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__1();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__1);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__2 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__2();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__2);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__3 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__3();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__3);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__4 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__4();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__4);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__5);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__6 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__6();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__6);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__7 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__7();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__7);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__8 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__8();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__8);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__9 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__9();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__9);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__10);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__11 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__11();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__11);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__12 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__12();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__12);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__13 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__13();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__13);
l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__14 = _init_l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__14();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______macroRules__term_u2045___x2c___u2046__1___closed__14);
l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__1 = _init_l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__1();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__1);
l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__2 = _init_l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__2();
lean_mark_persistent(l___aux__Mathlib__Data__Bracket______unexpand__Bracket__bracket__1___closed__2);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
