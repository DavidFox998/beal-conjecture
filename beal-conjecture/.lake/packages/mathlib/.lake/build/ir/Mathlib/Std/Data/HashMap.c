// Lean compiler output
// Module: Mathlib.Std.Data.HashMap
// Imports: Init Std.Data.HashMap.Basic
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
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mapVal___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_uint64_to_usize(uint64_t);
lean_object* lean_mk_array(lean_object*, lean_object*);
uint8_t lean_usize_dec_eq(size_t, size_t);
lean_object* l_Nat_nextPowerOfTwo_go(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mapVal___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mapVal___spec__1(lean_object*, lean_object*, lean_object*);
uint64_t lean_uint64_shift_right(uint64_t, uint64_t);
lean_object* lean_nat_div(lean_object*, lean_object*);
uint8_t l_Std_DHashMap_Internal_AssocList_contains___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Std_DHashMap_Internal_AssocList_replace___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mapVal(lean_object*, lean_object*, lean_object*);
static lean_object* l_Std_HashMap_mapVal___rarg___closed__2;
static lean_object* l_Std_HashMap_mapVal___rarg___closed__3;
static lean_object* l_Std_HashMap_mapVal___rarg___closed__1;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
uint64_t lean_uint64_xor(uint64_t, uint64_t);
lean_object* lean_nat_mul(lean_object*, lean_object*);
size_t lean_usize_sub(size_t, size_t);
size_t lean_usize_add(size_t, size_t);
lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
lean_object* lean_array_get_size(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mapVal___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2(lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
size_t lean_usize_land(size_t, size_t);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mapVal___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_5) == 0)
{
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_4;
}
else
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_5);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; uint8_t x_11; 
x_7 = lean_ctor_get(x_5, 0);
x_8 = lean_ctor_get(x_5, 1);
x_9 = lean_ctor_get(x_5, 2);
lean_inc(x_3);
lean_inc(x_7);
x_10 = lean_apply_2(x_3, x_7, x_8);
x_11 = !lean_is_exclusive(x_4);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; uint64_t x_22; size_t x_23; size_t x_24; size_t x_25; size_t x_26; size_t x_27; lean_object* x_28; uint8_t x_29; 
x_12 = lean_ctor_get(x_4, 0);
x_13 = lean_ctor_get(x_4, 1);
x_14 = lean_array_get_size(x_13);
lean_inc(x_2);
lean_inc(x_7);
x_15 = lean_apply_1(x_2, x_7);
x_16 = lean_unbox_uint64(x_15);
lean_dec(x_15);
x_17 = 32;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = 16;
x_21 = lean_uint64_shift_right(x_19, x_20);
x_22 = lean_uint64_xor(x_19, x_21);
x_23 = lean_uint64_to_usize(x_22);
x_24 = lean_usize_of_nat(x_14);
lean_dec(x_14);
x_25 = 1;
x_26 = lean_usize_sub(x_24, x_25);
x_27 = lean_usize_land(x_23, x_26);
x_28 = lean_array_uget(x_13, x_27);
lean_inc(x_28);
lean_inc(x_7);
lean_inc(x_1);
x_29 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_7, x_28);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; uint8_t x_38; 
x_30 = lean_unsigned_to_nat(1u);
x_31 = lean_nat_add(x_12, x_30);
lean_dec(x_12);
lean_ctor_set(x_5, 2, x_28);
lean_ctor_set(x_5, 1, x_10);
x_32 = lean_array_uset(x_13, x_27, x_5);
x_33 = lean_unsigned_to_nat(4u);
x_34 = lean_nat_mul(x_31, x_33);
x_35 = lean_unsigned_to_nat(3u);
x_36 = lean_nat_div(x_34, x_35);
lean_dec(x_34);
x_37 = lean_array_get_size(x_32);
x_38 = lean_nat_dec_le(x_36, x_37);
lean_dec(x_37);
lean_dec(x_36);
if (x_38 == 0)
{
lean_object* x_39; 
lean_inc(x_2);
x_39 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_32);
lean_ctor_set(x_4, 1, x_39);
lean_ctor_set(x_4, 0, x_31);
x_5 = x_9;
goto _start;
}
else
{
lean_ctor_set(x_4, 1, x_32);
lean_ctor_set(x_4, 0, x_31);
x_5 = x_9;
goto _start;
}
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
lean_free_object(x_5);
x_42 = lean_box(0);
x_43 = lean_array_uset(x_13, x_27, x_42);
lean_inc(x_1);
x_44 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_7, x_10, x_28);
x_45 = lean_array_uset(x_43, x_27, x_44);
lean_ctor_set(x_4, 1, x_45);
x_5 = x_9;
goto _start;
}
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; uint64_t x_51; uint64_t x_52; uint64_t x_53; uint64_t x_54; uint64_t x_55; uint64_t x_56; uint64_t x_57; size_t x_58; size_t x_59; size_t x_60; size_t x_61; size_t x_62; lean_object* x_63; uint8_t x_64; 
x_47 = lean_ctor_get(x_4, 0);
x_48 = lean_ctor_get(x_4, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_4);
x_49 = lean_array_get_size(x_48);
lean_inc(x_2);
lean_inc(x_7);
x_50 = lean_apply_1(x_2, x_7);
x_51 = lean_unbox_uint64(x_50);
lean_dec(x_50);
x_52 = 32;
x_53 = lean_uint64_shift_right(x_51, x_52);
x_54 = lean_uint64_xor(x_51, x_53);
x_55 = 16;
x_56 = lean_uint64_shift_right(x_54, x_55);
x_57 = lean_uint64_xor(x_54, x_56);
x_58 = lean_uint64_to_usize(x_57);
x_59 = lean_usize_of_nat(x_49);
lean_dec(x_49);
x_60 = 1;
x_61 = lean_usize_sub(x_59, x_60);
x_62 = lean_usize_land(x_58, x_61);
x_63 = lean_array_uget(x_48, x_62);
lean_inc(x_63);
lean_inc(x_7);
lean_inc(x_1);
x_64 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_7, x_63);
if (x_64 == 0)
{
lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; uint8_t x_73; 
x_65 = lean_unsigned_to_nat(1u);
x_66 = lean_nat_add(x_47, x_65);
lean_dec(x_47);
lean_ctor_set(x_5, 2, x_63);
lean_ctor_set(x_5, 1, x_10);
x_67 = lean_array_uset(x_48, x_62, x_5);
x_68 = lean_unsigned_to_nat(4u);
x_69 = lean_nat_mul(x_66, x_68);
x_70 = lean_unsigned_to_nat(3u);
x_71 = lean_nat_div(x_69, x_70);
lean_dec(x_69);
x_72 = lean_array_get_size(x_67);
x_73 = lean_nat_dec_le(x_71, x_72);
lean_dec(x_72);
lean_dec(x_71);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; 
lean_inc(x_2);
x_74 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_67);
x_75 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_75, 0, x_66);
lean_ctor_set(x_75, 1, x_74);
x_4 = x_75;
x_5 = x_9;
goto _start;
}
else
{
lean_object* x_77; 
x_77 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_77, 0, x_66);
lean_ctor_set(x_77, 1, x_67);
x_4 = x_77;
x_5 = x_9;
goto _start;
}
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
lean_free_object(x_5);
x_79 = lean_box(0);
x_80 = lean_array_uset(x_48, x_62, x_79);
lean_inc(x_1);
x_81 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_7, x_10, x_63);
x_82 = lean_array_uset(x_80, x_62, x_81);
x_83 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_83, 0, x_47);
lean_ctor_set(x_83, 1, x_82);
x_4 = x_83;
x_5 = x_9;
goto _start;
}
}
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; uint64_t x_94; uint64_t x_95; uint64_t x_96; uint64_t x_97; uint64_t x_98; uint64_t x_99; uint64_t x_100; size_t x_101; size_t x_102; size_t x_103; size_t x_104; size_t x_105; lean_object* x_106; uint8_t x_107; 
x_85 = lean_ctor_get(x_5, 0);
x_86 = lean_ctor_get(x_5, 1);
x_87 = lean_ctor_get(x_5, 2);
lean_inc(x_87);
lean_inc(x_86);
lean_inc(x_85);
lean_dec(x_5);
lean_inc(x_3);
lean_inc(x_85);
x_88 = lean_apply_2(x_3, x_85, x_86);
x_89 = lean_ctor_get(x_4, 0);
lean_inc(x_89);
x_90 = lean_ctor_get(x_4, 1);
lean_inc(x_90);
if (lean_is_exclusive(x_4)) {
 lean_ctor_release(x_4, 0);
 lean_ctor_release(x_4, 1);
 x_91 = x_4;
} else {
 lean_dec_ref(x_4);
 x_91 = lean_box(0);
}
x_92 = lean_array_get_size(x_90);
lean_inc(x_2);
lean_inc(x_85);
x_93 = lean_apply_1(x_2, x_85);
x_94 = lean_unbox_uint64(x_93);
lean_dec(x_93);
x_95 = 32;
x_96 = lean_uint64_shift_right(x_94, x_95);
x_97 = lean_uint64_xor(x_94, x_96);
x_98 = 16;
x_99 = lean_uint64_shift_right(x_97, x_98);
x_100 = lean_uint64_xor(x_97, x_99);
x_101 = lean_uint64_to_usize(x_100);
x_102 = lean_usize_of_nat(x_92);
lean_dec(x_92);
x_103 = 1;
x_104 = lean_usize_sub(x_102, x_103);
x_105 = lean_usize_land(x_101, x_104);
x_106 = lean_array_uget(x_90, x_105);
lean_inc(x_106);
lean_inc(x_85);
lean_inc(x_1);
x_107 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_85, x_106);
if (x_107 == 0)
{
lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; uint8_t x_117; 
x_108 = lean_unsigned_to_nat(1u);
x_109 = lean_nat_add(x_89, x_108);
lean_dec(x_89);
x_110 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_110, 0, x_85);
lean_ctor_set(x_110, 1, x_88);
lean_ctor_set(x_110, 2, x_106);
x_111 = lean_array_uset(x_90, x_105, x_110);
x_112 = lean_unsigned_to_nat(4u);
x_113 = lean_nat_mul(x_109, x_112);
x_114 = lean_unsigned_to_nat(3u);
x_115 = lean_nat_div(x_113, x_114);
lean_dec(x_113);
x_116 = lean_array_get_size(x_111);
x_117 = lean_nat_dec_le(x_115, x_116);
lean_dec(x_116);
lean_dec(x_115);
if (x_117 == 0)
{
lean_object* x_118; lean_object* x_119; 
lean_inc(x_2);
x_118 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_111);
if (lean_is_scalar(x_91)) {
 x_119 = lean_alloc_ctor(0, 2, 0);
} else {
 x_119 = x_91;
}
lean_ctor_set(x_119, 0, x_109);
lean_ctor_set(x_119, 1, x_118);
x_4 = x_119;
x_5 = x_87;
goto _start;
}
else
{
lean_object* x_121; 
if (lean_is_scalar(x_91)) {
 x_121 = lean_alloc_ctor(0, 2, 0);
} else {
 x_121 = x_91;
}
lean_ctor_set(x_121, 0, x_109);
lean_ctor_set(x_121, 1, x_111);
x_4 = x_121;
x_5 = x_87;
goto _start;
}
}
else
{
lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; 
x_123 = lean_box(0);
x_124 = lean_array_uset(x_90, x_105, x_123);
lean_inc(x_1);
x_125 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_85, x_88, x_106);
x_126 = lean_array_uset(x_124, x_105, x_125);
if (lean_is_scalar(x_91)) {
 x_127 = lean_alloc_ctor(0, 2, 0);
} else {
 x_127 = x_91;
}
lean_ctor_set(x_127, 0, x_89);
lean_ctor_set(x_127, 1, x_126);
x_4 = x_127;
x_5 = x_87;
goto _start;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mapVal___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mapVal___spec__1___rarg), 5, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_usize_dec_eq(x_5, x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; size_t x_11; size_t x_12; 
x_9 = lean_array_uget(x_4, x_5);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_10 = l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mapVal___spec__1___rarg(x_1, x_2, x_3, x_7, x_9);
x_11 = 1;
x_12 = lean_usize_add(x_5, x_11);
x_5 = x_12;
x_7 = x_10;
goto _start;
}
else
{
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg___boxed), 7, 0);
return x_4;
}
}
static lean_object* _init_l_Std_HashMap_mapVal___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = lean_unsigned_to_nat(1u);
x_3 = l_Nat_nextPowerOfTwo_go(x_1, x_2, lean_box(0));
return x_3;
}
}
static lean_object* _init_l_Std_HashMap_mapVal___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Std_HashMap_mapVal___rarg___closed__1;
x_3 = lean_mk_array(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_Std_HashMap_mapVal___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_Std_HashMap_mapVal___rarg___closed__2;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mapVal___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_4, 1);
x_6 = lean_array_get_size(x_5);
x_7 = lean_unsigned_to_nat(0u);
x_8 = lean_nat_dec_lt(x_7, x_6);
if (x_8 == 0)
{
lean_object* x_9; 
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_9 = l_Std_HashMap_mapVal___rarg___closed__3;
return x_9;
}
else
{
uint8_t x_10; 
x_10 = lean_nat_dec_le(x_6, x_6);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_11 = l_Std_HashMap_mapVal___rarg___closed__3;
return x_11;
}
else
{
size_t x_12; size_t x_13; lean_object* x_14; lean_object* x_15; 
x_12 = 0;
x_13 = lean_usize_of_nat(x_6);
lean_dec(x_6);
x_14 = l_Std_HashMap_mapVal___rarg___closed__3;
x_15 = l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg(x_1, x_2, x_3, x_5, x_12, x_13, x_14);
return x_15;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mapVal(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Std_HashMap_mapVal___rarg___boxed), 4, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Std_HashMap_mapVal___spec__2___rarg(x_1, x_2, x_3, x_4, x_8, x_9, x_7);
lean_dec(x_4);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mapVal___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Std_HashMap_mapVal___rarg(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Std_Data_HashMap_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Mathlib_Std_Data_HashMap(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Std_Data_HashMap_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Std_HashMap_mapVal___rarg___closed__1 = _init_l_Std_HashMap_mapVal___rarg___closed__1();
lean_mark_persistent(l_Std_HashMap_mapVal___rarg___closed__1);
l_Std_HashMap_mapVal___rarg___closed__2 = _init_l_Std_HashMap_mapVal___rarg___closed__2();
lean_mark_persistent(l_Std_HashMap_mapVal___rarg___closed__2);
l_Std_HashMap_mapVal___rarg___closed__3 = _init_l_Std_HashMap_mapVal___rarg___closed__3();
lean_mark_persistent(l_Std_HashMap_mapVal___rarg___closed__3);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
