// Lean compiler output
// Module: Beal.ArakelovRH.DesertBrothers.JitterInterface
// Imports: Init Mathlib.Data.Nat.GCD.Basic
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
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__19;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__26;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__1;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__22;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__30;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__27;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__34;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__9;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__6;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__10;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__16;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__5;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__3;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__4;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_scaledNearestIntegerDistance(lean_object*);
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__29;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__18;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__12;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__15;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__33;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__25;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__32;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__20;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__17;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fractionalResidue___boxed(lean_object*);
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__23;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__35;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__13;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__24;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__8;
lean_object* lean_nat_mod(lean_object*, lean_object*);
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__11;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_scaledNearestIntegerDistance___boxed(lean_object*);
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__28;
lean_object* lean_nat_sub(lean_object*, lean_object*);
lean_object* lean_nat_mul(lean_object*, lean_object*);
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__2;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__7;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__14;
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__21;
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fractionalResidue(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
static lean_object* l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__31;
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(3141592653u);
return x_1;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator() {
_start:
{
lean_object* x_1; 
x_1 = lean_cstr_to_nat("10000000000");
return x_1;
}
}
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fractionalResidue(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator;
x_3 = lean_nat_mul(x_1, x_2);
x_4 = l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator;
x_5 = lean_nat_mod(x_3, x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_fractionalResidue___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Beal_ArakelovRH_DesertBrothers_fractionalResidue(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_scaledNearestIntegerDistance(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_2 = l_Beal_ArakelovRH_DesertBrothers_fractionalResidue(x_1);
x_3 = l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator;
x_4 = lean_nat_sub(x_3, x_2);
x_5 = lean_nat_dec_le(x_2, x_4);
if (x_5 == 0)
{
lean_dec(x_2);
return x_4;
}
else
{
lean_dec(x_4);
return x_2;
}
}
}
LEAN_EXPORT lean_object* l_Beal_ArakelovRH_DesertBrothers_scaledNearestIntegerDistance___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Beal_ArakelovRH_DesertBrothers_scaledNearestIntegerDistance(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_unsigned_to_nat(52481u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(44041u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__1;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(23281u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(19193u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__3;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(17183u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__4;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__5;
x_2 = lean_unsigned_to_nat(14929u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(13513u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__6;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(12433u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__7;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(11311u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__8;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__9;
x_2 = lean_unsigned_to_nat(10259u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(9859u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__10;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(9413u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__11;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(8999u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__12;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(8321u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__13;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__14;
x_2 = lean_unsigned_to_nat(7583u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(7043u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__15;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(6823u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__16;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(6427u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__17;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__18;
x_2 = lean_unsigned_to_nat(6197u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(5779u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__19;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(5639u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__20;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(5347u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__21;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__23() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(5059u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__22;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__24() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__23;
x_2 = lean_unsigned_to_nat(4639u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__25() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(4273u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__24;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__26() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(4091u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__25;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__27() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(3671u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__26;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__28() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__27;
x_2 = lean_unsigned_to_nat(3467u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__29() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(3251u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__28;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__30() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(2777u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__29;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__31() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(2411u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__30;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__32() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__31;
x_2 = lean_unsigned_to_nat(2113u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__33() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(1907u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__32;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__34() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(1841u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__33;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__35() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(1419u);
x_2 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__34;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419() {
_start:
{
lean_object* x_1; 
x_1 = l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__35;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Mathlib_Data_Nat_GCD_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Beal_ArakelovRH_DesertBrothers_JitterInterface(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Mathlib_Data_Nat_GCD_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator = _init_l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_alpha0Numerator);
l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator = _init_l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_alpha0Denominator);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__1 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__1();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__1);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__2 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__2();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__2);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__3 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__3();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__3);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__4 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__4();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__4);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__5 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__5();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__5);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__6 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__6();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__6);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__7 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__7();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__7);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__8 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__8();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__8);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__9 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__9();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__9);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__10 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__10();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__10);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__11 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__11();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__11);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__12 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__12();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__12);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__13 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__13();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__13);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__14 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__14();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__14);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__15 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__15();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__15);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__16 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__16();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__16);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__17 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__17();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__17);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__18 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__18();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__18);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__19 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__19();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__19);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__20 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__20();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__20);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__21 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__21();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__21);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__22 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__22();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__22);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__23 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__23();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__23);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__24 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__24();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__24);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__25 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__25();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__25);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__26 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__26();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__26);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__27 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__27();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__27);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__28 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__28();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__28);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__29 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__29();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__29);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__30 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__30();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__30);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__31 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__31();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__31);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__32 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__32();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__32);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__33 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__33();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__33);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__34 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__34();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__34);
l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__35 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__35();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419___closed__35);
l_Beal_ArakelovRH_DesertBrothers_brothers1419 = _init_l_Beal_ArakelovRH_DesertBrothers_brothers1419();
lean_mark_persistent(l_Beal_ArakelovRH_DesertBrothers_brothers1419);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
