// Lean compiler output
// Module: Aesop.Percent
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
static lean_object* l_Aesop_Percent_toHumanString___closed__2;
lean_object* lean_string_utf8_extract(lean_object*, lean_object*, lean_object*);
static double l_Aesop_Percent_ofFloat___closed__2;
uint32_t lean_string_utf8_get(lean_object*, lean_object*);
double lean_float_mul(double, double);
LEAN_EXPORT lean_object* l_Aesop_Percent_toHumanString(double);
LEAN_EXPORT lean_object* l_Aesop_Percent_ofNat___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Percent_instOrd___boxed(lean_object*, lean_object*);
double lean_float_div(double, double);
LEAN_EXPORT lean_object* l_Aesop_Percent_instMul___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Percent_instOrd(double, double);
LEAN_EXPORT double l_Aesop_Percent__u03b4;
static double l_Aesop_Percent_toHumanString___closed__1;
static lean_object* l_Aesop_Percent_toHumanString___closed__3;
static lean_object* l_Aesop_instInhabitedPercent___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Percent_instToString___boxed(lean_object*);
LEAN_EXPORT lean_object* l_String_splitAux___at_Aesop_Percent_toHumanString___spec__2(lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_float_decLt(double, double);
LEAN_EXPORT lean_object* l_Aesop_Percent_ofNat(lean_object*);
static double l_Aesop_Percent_ofFloat___closed__1;
static lean_object* l_Aesop_Percent_toHumanString___closed__5;
LEAN_EXPORT double l_Aesop_Percent_hundred;
lean_object* lean_string_utf8_byte_size(lean_object*);
lean_object* lean_string_utf8_next(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Percent_instLE;
LEAN_EXPORT double l_Aesop_Percent_instMul(double, double);
LEAN_EXPORT lean_object* l_String_split___at_Aesop_Percent_toHumanString___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Percent_instToString(double);
static double l_Aesop_Percent__u03b4___closed__1;
LEAN_EXPORT lean_object* l_String_splitAux___at_Aesop_Percent_toHumanString___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Percent_toHumanString___closed__7;
uint8_t lean_string_utf8_at_end(lean_object*, lean_object*);
lean_object* l_panic___at_String_fromUTF8_x21___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Percent_toHumanString___boxed(lean_object*);
LEAN_EXPORT lean_object* l_String_split___at_Aesop_Percent_toHumanString___spec__1___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Aesop_Percent_instBEq(double, double);
LEAN_EXPORT lean_object* l_Aesop_Percent_ofFloat___boxed(lean_object*);
double pow(double, double);
lean_object* l___private_Init_Util_0__mkPanicMessageWithDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Percent_instLT;
static lean_object* l_Aesop_Percent_toHumanString___closed__4;
LEAN_EXPORT double l_Aesop_Percent_fifty;
double l_Float_ofScientific(lean_object*, uint8_t, lean_object*);
lean_object* l_Substring_nextn(lean_object*, lean_object*, lean_object*);
lean_object* lean_float_to_string(double);
uint8_t lean_uint32_dec_eq(uint32_t, uint32_t);
static double l_Aesop_Percent_hundred___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Percent_ofFloat(double);
uint8_t lean_float_decLe(double, double);
LEAN_EXPORT lean_object* l_Aesop_Percent_instHPowNat___boxed(lean_object*, lean_object*);
lean_object* l_List_reverse___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_instInhabitedPercent;
static lean_object* l_Aesop_Percent_toHumanString___closed__6;
lean_object* lean_string_append(lean_object*, lean_object*);
static double l_Aesop_Percent_fifty___closed__1;
LEAN_EXPORT double l_Aesop_Percent_instHPowNat(double, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Percent_instBEq___boxed(lean_object*, lean_object*);
double lean_float_sub(double, double);
static lean_object* _init_l_Aesop_instInhabitedPercent___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_instInhabitedPercent() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_instInhabitedPercent___closed__1;
return x_1;
}
}
static double _init_l_Aesop_Percent_ofFloat___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; double x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = 0;
x_3 = l_Float_ofScientific(x_1, x_2, x_1);
return x_3;
}
}
static double _init_l_Aesop_Percent_ofFloat___closed__2() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = 1;
x_3 = lean_unsigned_to_nat(1u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_ofFloat(double x_1) {
_start:
{
double x_2; uint8_t x_3; 
x_2 = l_Aesop_Percent_ofFloat___closed__1;
x_3 = lean_float_decLe(x_2, x_1);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
else
{
double x_5; uint8_t x_6; 
x_5 = l_Aesop_Percent_ofFloat___closed__2;
x_6 = lean_float_decLe(x_1, x_5);
if (x_6 == 0)
{
lean_object* x_7; 
x_7 = lean_box(0);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; 
x_8 = lean_box_float(x_1);
x_9 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_9, 0, x_8);
return x_9;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_ofFloat___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = lean_unbox_float(x_1);
lean_dec(x_1);
x_3 = l_Aesop_Percent_ofFloat(x_2);
return x_3;
}
}
LEAN_EXPORT double l_Aesop_Percent_instMul(double x_1, double x_2) {
_start:
{
double x_3; 
x_3 = lean_float_mul(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_instMul___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; double x_4; double x_5; lean_object* x_6; 
x_3 = lean_unbox_float(x_1);
lean_dec(x_1);
x_4 = lean_unbox_float(x_2);
lean_dec(x_2);
x_5 = l_Aesop_Percent_instMul(x_3, x_4);
x_6 = lean_box_float(x_5);
return x_6;
}
}
static double _init_l_Aesop_Percent__u03b4___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = 1;
x_3 = lean_unsigned_to_nat(5u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static double _init_l_Aesop_Percent__u03b4() {
_start:
{
double x_1; 
x_1 = l_Aesop_Percent__u03b4___closed__1;
return x_1;
}
}
LEAN_EXPORT uint8_t l_Aesop_Percent_instBEq(double x_1, double x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_float_decLt(x_2, x_1);
if (x_3 == 0)
{
double x_4; double x_5; uint8_t x_6; 
x_4 = lean_float_sub(x_2, x_1);
x_5 = l_Aesop_Percent__u03b4___closed__1;
x_6 = lean_float_decLt(x_4, x_5);
return x_6;
}
else
{
double x_7; double x_8; uint8_t x_9; 
x_7 = lean_float_sub(x_1, x_2);
x_8 = l_Aesop_Percent__u03b4___closed__1;
x_9 = lean_float_decLt(x_7, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_instBEq___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; double x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox_float(x_1);
lean_dec(x_1);
x_4 = lean_unbox_float(x_2);
lean_dec(x_2);
x_5 = l_Aesop_Percent_instBEq(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
LEAN_EXPORT uint8_t l_Aesop_Percent_instOrd(double x_1, double x_2) {
_start:
{
uint8_t x_3; 
x_3 = lean_float_decLt(x_2, x_1);
if (x_3 == 0)
{
double x_4; double x_5; uint8_t x_6; 
x_4 = lean_float_sub(x_2, x_1);
x_5 = l_Aesop_Percent__u03b4___closed__1;
x_6 = lean_float_decLt(x_4, x_5);
if (x_6 == 0)
{
uint8_t x_7; 
x_7 = lean_float_decLt(x_1, x_2);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = 2;
return x_8;
}
else
{
uint8_t x_9; 
x_9 = 0;
return x_9;
}
}
else
{
uint8_t x_10; 
x_10 = 1;
return x_10;
}
}
else
{
double x_11; double x_12; uint8_t x_13; 
x_11 = lean_float_sub(x_1, x_2);
x_12 = l_Aesop_Percent__u03b4___closed__1;
x_13 = lean_float_decLt(x_11, x_12);
if (x_13 == 0)
{
uint8_t x_14; 
x_14 = lean_float_decLt(x_1, x_2);
if (x_14 == 0)
{
uint8_t x_15; 
x_15 = 2;
return x_15;
}
else
{
uint8_t x_16; 
x_16 = 0;
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = 1;
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_instOrd___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; double x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox_float(x_1);
lean_dec(x_1);
x_4 = lean_unbox_float(x_2);
lean_dec(x_2);
x_5 = l_Aesop_Percent_instOrd(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_Percent_instLT() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Percent_instLE() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_instToString(double x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_float_to_string(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_instToString___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = lean_unbox_float(x_1);
lean_dec(x_1);
x_3 = l_Aesop_Percent_instToString(x_2);
return x_3;
}
}
LEAN_EXPORT double l_Aesop_Percent_instHPowNat(double x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; double x_5; double x_6; 
x_3 = 0;
x_4 = lean_unsigned_to_nat(0u);
x_5 = l_Float_ofScientific(x_2, x_3, x_4);
x_6 = pow(x_1, x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_instHPowNat___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; double x_4; lean_object* x_5; 
x_3 = lean_unbox_float(x_1);
lean_dec(x_1);
x_4 = l_Aesop_Percent_instHPowNat(x_3, x_2);
lean_dec(x_2);
x_5 = lean_box_float(x_4);
return x_5;
}
}
static double _init_l_Aesop_Percent_hundred___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static double _init_l_Aesop_Percent_hundred() {
_start:
{
double x_1; 
x_1 = l_Aesop_Percent_hundred___closed__1;
return x_1;
}
}
static double _init_l_Aesop_Percent_fifty___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(5u);
x_2 = 1;
x_3 = lean_unsigned_to_nat(1u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static double _init_l_Aesop_Percent_fifty() {
_start:
{
double x_1; 
x_1 = l_Aesop_Percent_fifty___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_String_splitAux___at_Aesop_Percent_toHumanString___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_string_utf8_at_end(x_1, x_3);
if (x_5 == 0)
{
uint32_t x_6; uint32_t x_7; uint8_t x_8; 
x_6 = lean_string_utf8_get(x_1, x_3);
x_7 = 46;
x_8 = lean_uint32_dec_eq(x_6, x_7);
if (x_8 == 0)
{
lean_object* x_9; 
x_9 = lean_string_utf8_next(x_1, x_3);
lean_dec(x_3);
x_3 = x_9;
goto _start;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_string_utf8_next(x_1, x_3);
x_12 = lean_string_utf8_extract(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
x_13 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_4);
lean_inc(x_11);
x_2 = x_11;
x_3 = x_11;
x_4 = x_13;
goto _start;
}
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_string_utf8_extract(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_2);
x_16 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_4);
x_17 = l_List_reverse___rarg(x_16);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_String_split___at_Aesop_Percent_toHumanString___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_box(0);
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_String_splitAux___at_Aesop_Percent_toHumanString___spec__2(x_1, x_3, x_3, x_2);
return x_4;
}
}
static double _init_l_Aesop_Percent_toHumanString___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_unsigned_to_nat(100u);
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Percent_toHumanString___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Aesop.Percent", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_Percent_toHumanString___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Aesop.Percent.toHumanString", 27, 27);
return x_1;
}
}
static lean_object* _init_l_Aesop_Percent_toHumanString___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unreachable code has been reached", 33, 33);
return x_1;
}
}
static lean_object* _init_l_Aesop_Percent_toHumanString___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_1 = l_Aesop_Percent_toHumanString___closed__2;
x_2 = l_Aesop_Percent_toHumanString___closed__3;
x_3 = lean_unsigned_to_nat(69u);
x_4 = lean_unsigned_to_nat(9u);
x_5 = l_Aesop_Percent_toHumanString___closed__4;
x_6 = l___private_Init_Util_0__mkPanicMessageWithDecl(x_1, x_2, x_3, x_4, x_5);
return x_6;
}
}
static lean_object* _init_l_Aesop_Percent_toHumanString___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("%", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Percent_toHumanString___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(".", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_toHumanString(double x_1) {
_start:
{
double x_2; double x_3; lean_object* x_4; lean_object* x_5; 
x_2 = l_Aesop_Percent_toHumanString___closed__1;
x_3 = lean_float_mul(x_1, x_2);
x_4 = lean_float_to_string(x_3);
x_5 = l_String_split___at_Aesop_Percent_toHumanString___spec__1(x_4);
lean_dec(x_4);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_Aesop_Percent_toHumanString___closed__5;
x_7 = l_panic___at_String_fromUTF8_x21___spec__1(x_6);
return x_7;
}
else
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_5, 0);
lean_inc(x_9);
lean_dec(x_5);
x_10 = l_Aesop_Percent_toHumanString___closed__6;
x_11 = lean_string_append(x_9, x_10);
return x_11;
}
else
{
lean_object* x_12; 
x_12 = lean_ctor_get(x_8, 1);
lean_inc(x_12);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_13 = lean_ctor_get(x_5, 0);
lean_inc(x_13);
lean_dec(x_5);
x_14 = lean_ctor_get(x_8, 0);
lean_inc(x_14);
lean_dec(x_8);
x_15 = l_Aesop_Percent_toHumanString___closed__7;
x_16 = lean_string_append(x_13, x_15);
x_17 = lean_string_utf8_byte_size(x_14);
x_18 = lean_unsigned_to_nat(0u);
lean_inc(x_14);
x_19 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_19, 0, x_14);
lean_ctor_set(x_19, 1, x_18);
lean_ctor_set(x_19, 2, x_17);
x_20 = lean_unsigned_to_nat(4u);
x_21 = l_Substring_nextn(x_19, x_20, x_18);
lean_dec(x_19);
x_22 = lean_nat_add(x_18, x_21);
lean_dec(x_21);
x_23 = lean_string_utf8_extract(x_14, x_18, x_22);
lean_dec(x_22);
lean_dec(x_14);
x_24 = lean_string_append(x_16, x_23);
lean_dec(x_23);
x_25 = l_Aesop_Percent_toHumanString___closed__6;
x_26 = lean_string_append(x_24, x_25);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; 
lean_dec(x_12);
lean_dec(x_8);
lean_dec(x_5);
x_27 = l_Aesop_Percent_toHumanString___closed__5;
x_28 = l_panic___at_String_fromUTF8_x21___spec__1(x_27);
return x_28;
}
}
}
}
}
LEAN_EXPORT lean_object* l_String_splitAux___at_Aesop_Percent_toHumanString___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_String_splitAux___at_Aesop_Percent_toHumanString___spec__2(x_1, x_2, x_3, x_4);
lean_dec(x_1);
return x_5;
}
}
LEAN_EXPORT lean_object* l_String_split___at_Aesop_Percent_toHumanString___spec__1___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_String_split___at_Aesop_Percent_toHumanString___spec__1(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_toHumanString___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = lean_unbox_float(x_1);
lean_dec(x_1);
x_3 = l_Aesop_Percent_toHumanString(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_ofNat(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; double x_4; double x_5; double x_6; lean_object* x_7; 
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
x_5 = l_Aesop_Percent_toHumanString___closed__1;
x_6 = lean_float_div(x_4, x_5);
x_7 = l_Aesop_Percent_ofFloat(x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Percent_ofNat___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Percent_ofNat(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Percent(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_instInhabitedPercent___closed__1 = _init_l_Aesop_instInhabitedPercent___closed__1();
lean_mark_persistent(l_Aesop_instInhabitedPercent___closed__1);
l_Aesop_instInhabitedPercent = _init_l_Aesop_instInhabitedPercent();
lean_mark_persistent(l_Aesop_instInhabitedPercent);
l_Aesop_Percent_ofFloat___closed__1 = _init_l_Aesop_Percent_ofFloat___closed__1();
l_Aesop_Percent_ofFloat___closed__2 = _init_l_Aesop_Percent_ofFloat___closed__2();
l_Aesop_Percent__u03b4___closed__1 = _init_l_Aesop_Percent__u03b4___closed__1();
l_Aesop_Percent__u03b4 = _init_l_Aesop_Percent__u03b4();
l_Aesop_Percent_instLT = _init_l_Aesop_Percent_instLT();
lean_mark_persistent(l_Aesop_Percent_instLT);
l_Aesop_Percent_instLE = _init_l_Aesop_Percent_instLE();
lean_mark_persistent(l_Aesop_Percent_instLE);
l_Aesop_Percent_hundred___closed__1 = _init_l_Aesop_Percent_hundred___closed__1();
l_Aesop_Percent_hundred = _init_l_Aesop_Percent_hundred();
l_Aesop_Percent_fifty___closed__1 = _init_l_Aesop_Percent_fifty___closed__1();
l_Aesop_Percent_fifty = _init_l_Aesop_Percent_fifty();
l_Aesop_Percent_toHumanString___closed__1 = _init_l_Aesop_Percent_toHumanString___closed__1();
l_Aesop_Percent_toHumanString___closed__2 = _init_l_Aesop_Percent_toHumanString___closed__2();
lean_mark_persistent(l_Aesop_Percent_toHumanString___closed__2);
l_Aesop_Percent_toHumanString___closed__3 = _init_l_Aesop_Percent_toHumanString___closed__3();
lean_mark_persistent(l_Aesop_Percent_toHumanString___closed__3);
l_Aesop_Percent_toHumanString___closed__4 = _init_l_Aesop_Percent_toHumanString___closed__4();
lean_mark_persistent(l_Aesop_Percent_toHumanString___closed__4);
l_Aesop_Percent_toHumanString___closed__5 = _init_l_Aesop_Percent_toHumanString___closed__5();
lean_mark_persistent(l_Aesop_Percent_toHumanString___closed__5);
l_Aesop_Percent_toHumanString___closed__6 = _init_l_Aesop_Percent_toHumanString___closed__6();
lean_mark_persistent(l_Aesop_Percent_toHumanString___closed__6);
l_Aesop_Percent_toHumanString___closed__7 = _init_l_Aesop_Percent_toHumanString___closed__7();
lean_mark_persistent(l_Aesop_Percent_toHumanString___closed__7);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
