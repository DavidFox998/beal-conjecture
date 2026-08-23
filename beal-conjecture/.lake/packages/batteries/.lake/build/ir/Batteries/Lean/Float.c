// Lean compiler output
// Module: Batteries.Lean.Float
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
lean_object* lean_string_utf8_extract(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Int_divFloat___boxed(lean_object*, lean_object*);
static double l_Float_nan___closed__1;
LEAN_EXPORT double l_Int_divFloat(lean_object*, lean_object*);
double lean_float_scaleb(double, lean_object*);
uint32_t lean_string_utf8_get(lean_object*, lean_object*);
double lean_float_mul(double, double);
static lean_object* l_Float_toStringFull___closed__2;
double lean_float_div(double, double);
uint64_t lean_uint64_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Float_toStringFull(double);
uint8_t lean_float_decLt(double, double);
static lean_object* l_Float_toStringFull___closed__1;
static double l_Float_inf___closed__1;
uint8_t lean_uint8_add(uint8_t, uint8_t);
uint8_t lean_int_dec_le(lean_object*, lean_object*);
double lean_float_negate(double);
lean_object* lean_string_utf8_byte_size(lean_object*);
uint64_t lean_uint64_land(uint64_t, uint64_t);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT double l_Float_nan;
uint64_t lean_uint64_shift_right(uint64_t, uint64_t);
lean_object* lean_nat_to_int(lean_object*);
lean_object* lean_nat_div(lean_object*, lean_object*);
uint64_t lean_uint8_to_uint64(uint8_t);
LEAN_EXPORT double l_Float_inf;
double lean_uint64_to_float(uint64_t);
lean_object* lean_uint64_to_nat(uint64_t);
static double l_Float_inf___closed__2;
lean_object* lean_float_frexp(double);
LEAN_EXPORT lean_object* l_Float_toRatParts___boxed(lean_object*);
uint64_t lean_uint64_add(uint64_t, uint64_t);
LEAN_EXPORT double l_Nat_divFloat(lean_object*, lean_object*);
lean_object* lean_string_utf8_prev(lean_object*, lean_object*);
static lean_object* l_Float_toRatParts_x27___closed__3;
LEAN_EXPORT lean_object* l_Substring_takeRightWhileAux___at_Float_toStringFull___spec__1(lean_object*, lean_object*, lean_object*);
static lean_object* l_Float_toRatParts_x27___closed__1;
lean_object* lean_int_sub(lean_object*, lean_object*);
double l_Float_ofScientific(lean_object*, uint8_t, lean_object*);
lean_object* lean_nat_abs(lean_object*);
static lean_object* l_Float_toRatParts_x27___closed__2;
lean_object* lean_nat_pow(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
lean_object* lean_nat_mod(lean_object*, lean_object*);
lean_object* lean_float_to_string(double);
uint8_t lean_uint32_dec_eq(uint32_t, uint32_t);
static double l_Float_toRatParts___closed__1;
lean_object* lean_nat_log2(lean_object*);
LEAN_EXPORT lean_object* l_Substring_takeRightWhileAux___at_Float_toStringFull___spec__1___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_Int_toNat(lean_object*);
lean_object* lean_nat_shiftl(lean_object*, lean_object*);
uint8_t lean_int_dec_lt(lean_object*, lean_object*);
static lean_object* l_Float_toStringFull___closed__3;
lean_object* lean_nat_mul(lean_object*, lean_object*);
uint64_t lean_float_to_uint64(double);
LEAN_EXPORT lean_object* l_Float_toStringFull___boxed(lean_object*);
LEAN_EXPORT uint8_t l_Float_toRatParts_x27_trailingZeros(uint64_t, uint8_t);
uint8_t lean_uint64_dec_eq(uint64_t, uint64_t);
static double l_Float_inf___closed__3;
LEAN_EXPORT lean_object* l_Float_toRatParts_x27_trailingZeros___boxed(lean_object*, lean_object*);
lean_object* lean_uint8_to_nat(uint8_t);
double floor(double);
lean_object* lean_int_add(lean_object*, lean_object*);
uint8_t lean_int_dec_eq(lean_object*, lean_object*);
lean_object* lean_string_append(lean_object*, lean_object*);
lean_object* lean_int_neg(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Nat_divFloat___boxed(lean_object*, lean_object*);
static lean_object* l_Nat_divFloat___closed__1;
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Float_toRatParts_x27(double);
uint8_t lean_float_isfinite(double);
LEAN_EXPORT lean_object* l_Float_toRatParts_x27___boxed(lean_object*);
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
LEAN_EXPORT lean_object* l_Float_toRatParts(double);
static lean_object* l_Float_toRatParts___closed__2;
static double _init_l_Float_inf___closed__1() {
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
static double _init_l_Float_inf___closed__2() {
_start:
{
lean_object* x_1; uint8_t x_2; double x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = 0;
x_3 = l_Float_ofScientific(x_1, x_2, x_1);
return x_3;
}
}
static double _init_l_Float_inf___closed__3() {
_start:
{
double x_1; double x_2; double x_3; 
x_1 = l_Float_inf___closed__1;
x_2 = l_Float_inf___closed__2;
x_3 = lean_float_div(x_1, x_2);
return x_3;
}
}
static double _init_l_Float_inf() {
_start:
{
double x_1; 
x_1 = l_Float_inf___closed__3;
return x_1;
}
}
static double _init_l_Float_nan___closed__1() {
_start:
{
double x_1; double x_2; 
x_1 = l_Float_inf___closed__2;
x_2 = lean_float_div(x_1, x_1);
return x_2;
}
}
static double _init_l_Float_nan() {
_start:
{
double x_1; 
x_1 = l_Float_nan___closed__1;
return x_1;
}
}
static double _init_l_Float_toRatParts___closed__1() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; double x_4; 
x_1 = lean_cstr_to_nat("9007199254740992");
x_2 = 0;
x_3 = lean_unsigned_to_nat(0u);
x_4 = l_Float_ofScientific(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Float_toRatParts___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(53u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Float_toRatParts(double x_1) {
_start:
{
uint8_t x_2; 
x_2 = lean_float_isfinite(x_1);
if (x_2 == 0)
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_float_frexp(x_1);
x_5 = !lean_is_exclusive(x_4);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; double x_8; double x_9; double x_10; double x_11; uint8_t x_12; lean_object* x_13; lean_object* x_14; 
x_6 = lean_ctor_get(x_4, 0);
x_7 = lean_ctor_get(x_4, 1);
x_8 = l_Float_toRatParts___closed__1;
x_9 = lean_unbox_float(x_6);
lean_dec(x_6);
x_10 = lean_float_mul(x_8, x_9);
x_11 = l_Float_inf___closed__2;
x_12 = lean_float_decLt(x_10, x_11);
x_13 = l_Float_toRatParts___closed__2;
x_14 = lean_int_sub(x_7, x_13);
lean_dec(x_7);
if (x_12 == 0)
{
double x_15; uint64_t x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_15 = floor(x_10);
x_16 = lean_float_to_uint64(x_15);
x_17 = lean_uint64_to_nat(x_16);
x_18 = lean_nat_to_int(x_17);
lean_ctor_set(x_4, 1, x_14);
lean_ctor_set(x_4, 0, x_18);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_4);
return x_19;
}
else
{
double x_20; double x_21; uint64_t x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_20 = lean_float_negate(x_10);
x_21 = floor(x_20);
x_22 = lean_float_to_uint64(x_21);
x_23 = lean_uint64_to_nat(x_22);
x_24 = lean_nat_to_int(x_23);
x_25 = lean_int_neg(x_24);
lean_dec(x_24);
lean_ctor_set(x_4, 1, x_14);
lean_ctor_set(x_4, 0, x_25);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_4);
return x_26;
}
}
else
{
lean_object* x_27; lean_object* x_28; double x_29; double x_30; double x_31; double x_32; uint8_t x_33; lean_object* x_34; lean_object* x_35; 
x_27 = lean_ctor_get(x_4, 0);
x_28 = lean_ctor_get(x_4, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_4);
x_29 = l_Float_toRatParts___closed__1;
x_30 = lean_unbox_float(x_27);
lean_dec(x_27);
x_31 = lean_float_mul(x_29, x_30);
x_32 = l_Float_inf___closed__2;
x_33 = lean_float_decLt(x_31, x_32);
x_34 = l_Float_toRatParts___closed__2;
x_35 = lean_int_sub(x_28, x_34);
lean_dec(x_28);
if (x_33 == 0)
{
double x_36; uint64_t x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_36 = floor(x_31);
x_37 = lean_float_to_uint64(x_36);
x_38 = lean_uint64_to_nat(x_37);
x_39 = lean_nat_to_int(x_38);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_39);
lean_ctor_set(x_40, 1, x_35);
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_40);
return x_41;
}
else
{
double x_42; double x_43; uint64_t x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_42 = lean_float_negate(x_31);
x_43 = floor(x_42);
x_44 = lean_float_to_uint64(x_43);
x_45 = lean_uint64_to_nat(x_44);
x_46 = lean_nat_to_int(x_45);
x_47 = lean_int_neg(x_46);
lean_dec(x_46);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_35);
x_49 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_49, 0, x_48);
return x_49;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Float_toRatParts___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = lean_unbox_float(x_1);
lean_dec(x_1);
x_3 = l_Float_toRatParts(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Float_toRatParts_x27_trailingZeros(uint64_t x_1, uint8_t x_2) {
_start:
{
uint64_t x_3; uint64_t x_4; uint64_t x_5; uint8_t x_6; 
x_3 = 1;
x_4 = lean_uint64_land(x_1, x_3);
x_5 = 0;
x_6 = lean_uint64_dec_eq(x_4, x_5);
if (x_6 == 0)
{
return x_2;
}
else
{
uint64_t x_7; uint8_t x_8; uint8_t x_9; 
x_7 = lean_uint64_shift_right(x_1, x_3);
x_8 = 1;
x_9 = lean_uint8_add(x_2, x_8);
x_1 = x_7;
x_2 = x_9;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Float_toRatParts_x27_trailingZeros___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint64_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox_uint64(x_1);
lean_dec(x_1);
x_4 = lean_unbox(x_2);
lean_dec(x_2);
x_5 = l_Float_toRatParts_x27_trailingZeros(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_l_Float_toRatParts_x27___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Float_toRatParts_x27___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Float_toRatParts_x27___closed__1;
x_2 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_2, 0, x_1);
lean_ctor_set(x_2, 1, x_1);
return x_2;
}
}
static lean_object* _init_l_Float_toRatParts_x27___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Float_toRatParts_x27___closed__2;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Float_toRatParts_x27(double x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Float_toRatParts(x_1);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
else
{
uint8_t x_4; 
x_4 = !lean_is_exclusive(x_2);
if (x_4 == 0)
{
lean_object* x_5; uint8_t x_6; 
x_5 = lean_ctor_get(x_2, 0);
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_7 = lean_ctor_get(x_5, 0);
x_8 = lean_ctor_get(x_5, 1);
x_9 = l_Float_toRatParts_x27___closed__1;
x_10 = lean_int_dec_eq(x_7, x_9);
if (x_10 == 0)
{
uint8_t x_11; lean_object* x_12; uint64_t x_13; uint8_t x_14; uint8_t x_15; uint64_t x_16; uint64_t x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_11 = lean_int_dec_lt(x_7, x_9);
x_12 = lean_nat_abs(x_7);
lean_dec(x_7);
x_13 = lean_uint64_of_nat(x_12);
lean_dec(x_12);
x_14 = 0;
x_15 = l_Float_toRatParts_x27_trailingZeros(x_13, x_14);
x_16 = lean_uint8_to_uint64(x_15);
x_17 = lean_uint64_shift_right(x_13, x_16);
x_18 = lean_uint64_to_nat(x_17);
x_19 = lean_uint8_to_nat(x_15);
x_20 = lean_nat_to_int(x_19);
x_21 = lean_int_add(x_8, x_20);
lean_dec(x_20);
lean_dec(x_8);
if (x_11 == 0)
{
lean_object* x_22; 
x_22 = lean_nat_to_int(x_18);
lean_ctor_set(x_5, 1, x_21);
lean_ctor_set(x_5, 0, x_22);
return x_2;
}
else
{
lean_object* x_23; lean_object* x_24; 
x_23 = lean_nat_to_int(x_18);
x_24 = lean_int_neg(x_23);
lean_dec(x_23);
lean_ctor_set(x_5, 1, x_21);
lean_ctor_set(x_5, 0, x_24);
return x_2;
}
}
else
{
lean_object* x_25; 
lean_free_object(x_5);
lean_dec(x_8);
lean_dec(x_7);
lean_free_object(x_2);
x_25 = l_Float_toRatParts_x27___closed__3;
return x_25;
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; uint8_t x_29; 
x_26 = lean_ctor_get(x_5, 0);
x_27 = lean_ctor_get(x_5, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_5);
x_28 = l_Float_toRatParts_x27___closed__1;
x_29 = lean_int_dec_eq(x_26, x_28);
if (x_29 == 0)
{
uint8_t x_30; lean_object* x_31; uint64_t x_32; uint8_t x_33; uint8_t x_34; uint64_t x_35; uint64_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_30 = lean_int_dec_lt(x_26, x_28);
x_31 = lean_nat_abs(x_26);
lean_dec(x_26);
x_32 = lean_uint64_of_nat(x_31);
lean_dec(x_31);
x_33 = 0;
x_34 = l_Float_toRatParts_x27_trailingZeros(x_32, x_33);
x_35 = lean_uint8_to_uint64(x_34);
x_36 = lean_uint64_shift_right(x_32, x_35);
x_37 = lean_uint64_to_nat(x_36);
x_38 = lean_uint8_to_nat(x_34);
x_39 = lean_nat_to_int(x_38);
x_40 = lean_int_add(x_27, x_39);
lean_dec(x_39);
lean_dec(x_27);
if (x_30 == 0)
{
lean_object* x_41; lean_object* x_42; 
x_41 = lean_nat_to_int(x_37);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_40);
lean_ctor_set(x_2, 0, x_42);
return x_2;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_nat_to_int(x_37);
x_44 = lean_int_neg(x_43);
lean_dec(x_43);
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_44);
lean_ctor_set(x_45, 1, x_40);
lean_ctor_set(x_2, 0, x_45);
return x_2;
}
}
else
{
lean_object* x_46; 
lean_dec(x_27);
lean_dec(x_26);
lean_free_object(x_2);
x_46 = l_Float_toRatParts_x27___closed__3;
return x_46;
}
}
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; uint8_t x_52; 
x_47 = lean_ctor_get(x_2, 0);
lean_inc(x_47);
lean_dec(x_2);
x_48 = lean_ctor_get(x_47, 0);
lean_inc(x_48);
x_49 = lean_ctor_get(x_47, 1);
lean_inc(x_49);
if (lean_is_exclusive(x_47)) {
 lean_ctor_release(x_47, 0);
 lean_ctor_release(x_47, 1);
 x_50 = x_47;
} else {
 lean_dec_ref(x_47);
 x_50 = lean_box(0);
}
x_51 = l_Float_toRatParts_x27___closed__1;
x_52 = lean_int_dec_eq(x_48, x_51);
if (x_52 == 0)
{
uint8_t x_53; lean_object* x_54; uint64_t x_55; uint8_t x_56; uint8_t x_57; uint64_t x_58; uint64_t x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; 
x_53 = lean_int_dec_lt(x_48, x_51);
x_54 = lean_nat_abs(x_48);
lean_dec(x_48);
x_55 = lean_uint64_of_nat(x_54);
lean_dec(x_54);
x_56 = 0;
x_57 = l_Float_toRatParts_x27_trailingZeros(x_55, x_56);
x_58 = lean_uint8_to_uint64(x_57);
x_59 = lean_uint64_shift_right(x_55, x_58);
x_60 = lean_uint64_to_nat(x_59);
x_61 = lean_uint8_to_nat(x_57);
x_62 = lean_nat_to_int(x_61);
x_63 = lean_int_add(x_49, x_62);
lean_dec(x_62);
lean_dec(x_49);
if (x_53 == 0)
{
lean_object* x_64; lean_object* x_65; lean_object* x_66; 
x_64 = lean_nat_to_int(x_60);
if (lean_is_scalar(x_50)) {
 x_65 = lean_alloc_ctor(0, 2, 0);
} else {
 x_65 = x_50;
}
lean_ctor_set(x_65, 0, x_64);
lean_ctor_set(x_65, 1, x_63);
x_66 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_66, 0, x_65);
return x_66;
}
else
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_67 = lean_nat_to_int(x_60);
x_68 = lean_int_neg(x_67);
lean_dec(x_67);
if (lean_is_scalar(x_50)) {
 x_69 = lean_alloc_ctor(0, 2, 0);
} else {
 x_69 = x_50;
}
lean_ctor_set(x_69, 0, x_68);
lean_ctor_set(x_69, 1, x_63);
x_70 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_70, 0, x_69);
return x_70;
}
}
else
{
lean_object* x_71; 
lean_dec(x_50);
lean_dec(x_49);
lean_dec(x_48);
x_71 = l_Float_toRatParts_x27___closed__3;
return x_71;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Float_toRatParts_x27___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = lean_unbox_float(x_1);
lean_dec(x_1);
x_3 = l_Float_toRatParts_x27(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Substring_takeRightWhileAux___at_Float_toStringFull___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_lt(x_2, x_3);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; uint32_t x_6; uint32_t x_7; uint8_t x_8; 
x_5 = lean_string_utf8_prev(x_1, x_3);
x_6 = lean_string_utf8_get(x_1, x_5);
x_7 = 48;
x_8 = lean_uint32_dec_eq(x_6, x_7);
if (x_8 == 0)
{
lean_dec(x_5);
return x_3;
}
else
{
lean_dec(x_3);
x_3 = x_5;
goto _start;
}
}
}
}
static lean_object* _init_l_Float_toStringFull___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Float_toStringFull___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(".", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Float_toStringFull___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("-", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Float_toStringFull(double x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Float_toRatParts(x_1);
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_float_to_string(x_1);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; uint8_t x_10; 
x_4 = lean_ctor_get(x_2, 0);
lean_inc(x_4);
lean_dec(x_2);
x_5 = lean_ctor_get(x_4, 0);
lean_inc(x_5);
x_6 = lean_ctor_get(x_4, 1);
lean_inc(x_6);
lean_dec(x_4);
x_7 = lean_nat_abs(x_5);
x_8 = l_Float_toRatParts_x27___closed__1;
x_9 = lean_int_dec_le(x_8, x_6);
x_10 = lean_int_dec_lt(x_5, x_8);
lean_dec(x_5);
if (x_9 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; uint8_t x_18; 
x_11 = lean_int_neg(x_6);
lean_dec(x_6);
x_12 = l_Int_toNat(x_11);
lean_dec(x_11);
x_13 = lean_unsigned_to_nat(2u);
x_14 = lean_nat_pow(x_13, x_12);
x_15 = lean_nat_div(x_7, x_14);
x_16 = lean_nat_mod(x_7, x_14);
lean_dec(x_7);
x_17 = lean_unsigned_to_nat(0u);
x_18 = lean_nat_dec_eq(x_16, x_17);
if (x_18 == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_19 = lean_nat_add(x_14, x_16);
lean_dec(x_16);
lean_dec(x_14);
x_20 = lean_unsigned_to_nat(5u);
x_21 = lean_nat_pow(x_20, x_12);
lean_dec(x_12);
x_22 = lean_nat_mul(x_19, x_21);
lean_dec(x_21);
lean_dec(x_19);
x_23 = l___private_Init_Data_Repr_0__Nat_reprFast(x_22);
x_24 = lean_string_utf8_byte_size(x_23);
x_25 = l_Substring_takeRightWhileAux___at_Float_toStringFull___spec__1(x_23, x_17, x_24);
x_26 = lean_string_utf8_extract(x_23, x_17, x_25);
lean_dec(x_25);
lean_dec(x_23);
x_27 = l___private_Init_Data_Repr_0__Nat_reprFast(x_15);
x_28 = l_Float_toStringFull___closed__1;
x_29 = lean_string_append(x_28, x_27);
lean_dec(x_27);
x_30 = l_Float_toStringFull___closed__2;
x_31 = lean_string_append(x_29, x_30);
x_32 = lean_string_utf8_byte_size(x_26);
x_33 = lean_unsigned_to_nat(1u);
x_34 = lean_string_utf8_extract(x_26, x_33, x_32);
lean_dec(x_32);
lean_dec(x_26);
x_35 = lean_string_append(x_31, x_34);
lean_dec(x_34);
x_36 = lean_string_append(x_35, x_28);
if (x_10 == 0)
{
return x_36;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = l_Float_toStringFull___closed__3;
x_38 = lean_string_append(x_37, x_36);
lean_dec(x_36);
x_39 = lean_string_append(x_38, x_28);
return x_39;
}
}
else
{
lean_object* x_40; 
lean_dec(x_16);
lean_dec(x_14);
lean_dec(x_12);
x_40 = l___private_Init_Data_Repr_0__Nat_reprFast(x_15);
if (x_10 == 0)
{
return x_40;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_41 = l_Float_toStringFull___closed__3;
x_42 = lean_string_append(x_41, x_40);
lean_dec(x_40);
x_43 = l_Float_toStringFull___closed__1;
x_44 = lean_string_append(x_42, x_43);
return x_44;
}
}
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_45 = l_Int_toNat(x_6);
lean_dec(x_6);
x_46 = lean_unsigned_to_nat(2u);
x_47 = lean_nat_pow(x_46, x_45);
lean_dec(x_45);
x_48 = lean_nat_mul(x_7, x_47);
lean_dec(x_47);
lean_dec(x_7);
x_49 = l___private_Init_Data_Repr_0__Nat_reprFast(x_48);
if (x_10 == 0)
{
return x_49;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_50 = l_Float_toStringFull___closed__3;
x_51 = lean_string_append(x_50, x_49);
lean_dec(x_49);
x_52 = l_Float_toStringFull___closed__1;
x_53 = lean_string_append(x_51, x_52);
return x_53;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Substring_takeRightWhileAux___at_Float_toStringFull___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Substring_takeRightWhileAux___at_Float_toStringFull___spec__1(x_1, x_2, x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Float_toStringFull___boxed(lean_object* x_1) {
_start:
{
double x_2; lean_object* x_3; 
x_2 = lean_unbox_float(x_1);
lean_dec(x_1);
x_3 = l_Float_toStringFull(x_2);
return x_3;
}
}
static lean_object* _init_l_Nat_divFloat___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(52u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT double l_Nat_divFloat(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = lean_nat_dec_eq(x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_5 = lean_nat_log2(x_1);
x_6 = lean_nat_log2(x_2);
x_7 = lean_unsigned_to_nat(1024u);
x_8 = lean_nat_add(x_6, x_7);
x_9 = lean_nat_dec_lt(x_8, x_5);
lean_dec(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; uint64_t x_13; uint64_t x_14; lean_object* x_15; lean_object* x_16; 
x_10 = lean_nat_shiftl(x_2, x_5);
x_11 = lean_nat_shiftl(x_1, x_6);
x_12 = lean_nat_dec_le(x_10, x_11);
lean_dec(x_11);
x_13 = 3;
x_14 = 1;
x_15 = lean_nat_to_int(x_5);
if (x_12 == 0)
{
lean_object* x_43; lean_object* x_44; 
x_43 = lean_unsigned_to_nat(1u);
x_44 = lean_nat_add(x_6, x_43);
lean_dec(x_6);
x_16 = x_44;
goto block_42;
}
else
{
x_16 = x_6;
goto block_42;
}
block_42:
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; uint64_t x_21; uint64_t x_22; uint8_t x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_17 = lean_unsigned_to_nat(53u);
x_18 = lean_nat_add(x_16, x_17);
x_19 = lean_nat_shiftl(x_1, x_18);
lean_dec(x_18);
x_20 = lean_nat_div(x_19, x_10);
x_21 = lean_uint64_of_nat(x_20);
lean_dec(x_20);
x_22 = lean_uint64_land(x_21, x_13);
x_23 = lean_uint64_dec_eq(x_22, x_14);
x_24 = lean_nat_to_int(x_16);
x_25 = l_Nat_divFloat___closed__1;
x_26 = lean_int_add(x_24, x_25);
lean_dec(x_24);
x_27 = lean_int_sub(x_15, x_26);
lean_dec(x_26);
lean_dec(x_15);
if (x_23 == 0)
{
uint64_t x_28; uint64_t x_29; double x_30; double x_31; 
lean_dec(x_19);
lean_dec(x_10);
x_28 = lean_uint64_add(x_21, x_14);
x_29 = lean_uint64_shift_right(x_28, x_14);
x_30 = lean_uint64_to_float(x_29);
x_31 = lean_float_scaleb(x_30, x_27);
lean_dec(x_27);
return x_31;
}
else
{
lean_object* x_32; lean_object* x_33; uint8_t x_34; 
x_32 = lean_uint64_to_nat(x_21);
x_33 = lean_nat_mul(x_32, x_10);
lean_dec(x_10);
lean_dec(x_32);
x_34 = lean_nat_dec_eq(x_19, x_33);
lean_dec(x_33);
lean_dec(x_19);
if (x_34 == 0)
{
uint64_t x_35; uint64_t x_36; double x_37; double x_38; 
x_35 = lean_uint64_add(x_21, x_14);
x_36 = lean_uint64_shift_right(x_35, x_14);
x_37 = lean_uint64_to_float(x_36);
x_38 = lean_float_scaleb(x_37, x_27);
lean_dec(x_27);
return x_38;
}
else
{
uint64_t x_39; double x_40; double x_41; 
x_39 = lean_uint64_shift_right(x_21, x_14);
x_40 = lean_uint64_to_float(x_39);
x_41 = lean_float_scaleb(x_40, x_27);
lean_dec(x_27);
return x_41;
}
}
}
}
else
{
double x_45; 
lean_dec(x_6);
lean_dec(x_5);
x_45 = l_Float_inf;
return x_45;
}
}
else
{
uint8_t x_46; 
x_46 = lean_nat_dec_eq(x_1, x_3);
if (x_46 == 0)
{
double x_47; 
x_47 = l_Float_inf;
return x_47;
}
else
{
double x_48; 
x_48 = l_Float_nan;
return x_48;
}
}
}
}
LEAN_EXPORT lean_object* l_Nat_divFloat___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; lean_object* x_4; 
x_3 = l_Nat_divFloat(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box_float(x_3);
return x_4;
}
}
LEAN_EXPORT double l_Int_divFloat(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; uint8_t x_5; uint8_t x_6; 
x_3 = l_Float_toRatParts_x27___closed__1;
x_4 = lean_int_dec_le(x_3, x_1);
x_5 = lean_int_dec_le(x_3, x_2);
if (x_4 == 0)
{
if (x_5 == 0)
{
uint8_t x_15; 
x_15 = 1;
x_6 = x_15;
goto block_14;
}
else
{
uint8_t x_16; 
x_16 = 0;
x_6 = x_16;
goto block_14;
}
}
else
{
if (x_5 == 0)
{
uint8_t x_17; 
x_17 = 0;
x_6 = x_17;
goto block_14;
}
else
{
uint8_t x_18; 
x_18 = 1;
x_6 = x_18;
goto block_14;
}
}
block_14:
{
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; double x_9; double x_10; 
x_7 = lean_nat_abs(x_1);
x_8 = lean_nat_abs(x_2);
x_9 = l_Nat_divFloat(x_7, x_8);
lean_dec(x_8);
lean_dec(x_7);
x_10 = lean_float_negate(x_9);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; double x_13; 
x_11 = lean_nat_abs(x_1);
x_12 = lean_nat_abs(x_2);
x_13 = l_Nat_divFloat(x_11, x_12);
lean_dec(x_12);
lean_dec(x_11);
return x_13;
}
}
}
}
LEAN_EXPORT lean_object* l_Int_divFloat___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; lean_object* x_4; 
x_3 = l_Int_divFloat(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box_float(x_3);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Lean_Float(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Float_inf___closed__1 = _init_l_Float_inf___closed__1();
l_Float_inf___closed__2 = _init_l_Float_inf___closed__2();
l_Float_inf___closed__3 = _init_l_Float_inf___closed__3();
l_Float_inf = _init_l_Float_inf();
l_Float_nan___closed__1 = _init_l_Float_nan___closed__1();
l_Float_nan = _init_l_Float_nan();
l_Float_toRatParts___closed__1 = _init_l_Float_toRatParts___closed__1();
l_Float_toRatParts___closed__2 = _init_l_Float_toRatParts___closed__2();
lean_mark_persistent(l_Float_toRatParts___closed__2);
l_Float_toRatParts_x27___closed__1 = _init_l_Float_toRatParts_x27___closed__1();
lean_mark_persistent(l_Float_toRatParts_x27___closed__1);
l_Float_toRatParts_x27___closed__2 = _init_l_Float_toRatParts_x27___closed__2();
lean_mark_persistent(l_Float_toRatParts_x27___closed__2);
l_Float_toRatParts_x27___closed__3 = _init_l_Float_toRatParts_x27___closed__3();
lean_mark_persistent(l_Float_toRatParts_x27___closed__3);
l_Float_toStringFull___closed__1 = _init_l_Float_toStringFull___closed__1();
lean_mark_persistent(l_Float_toStringFull___closed__1);
l_Float_toStringFull___closed__2 = _init_l_Float_toStringFull___closed__2();
lean_mark_persistent(l_Float_toStringFull___closed__2);
l_Float_toStringFull___closed__3 = _init_l_Float_toStringFull___closed__3();
lean_mark_persistent(l_Float_toStringFull___closed__3);
l_Nat_divFloat___closed__1 = _init_l_Nat_divFloat___closed__1();
lean_mark_persistent(l_Nat_divFloat___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
