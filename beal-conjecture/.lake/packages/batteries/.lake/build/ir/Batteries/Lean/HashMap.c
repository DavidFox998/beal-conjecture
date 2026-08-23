// Lean compiler output
// Module: Batteries.Lean.HashMap
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
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_uint64_to_usize(uint64_t);
uint8_t lean_usize_dec_eq(size_t, size_t);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWith___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, lean_object*, lean_object*);
size_t lean_usize_of_nat(lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint64_t lean_uint64_shift_right(uint64_t, uint64_t);
lean_object* lean_nat_div(lean_object*, lean_object*);
uint8_t l_Std_DHashMap_Internal_AssocList_contains___rarg(lean_object*, lean_object*, lean_object*);
lean_object* l_Std_DHashMap_Internal_AssocList_replace___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mergeWith___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mergeWith___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWith___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2(lean_object*);
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint64_t lean_uint64_xor(uint64_t, uint64_t);
lean_object* lean_nat_mul(lean_object*, lean_object*);
size_t lean_usize_sub(size_t, size_t);
size_t lean_usize_add(size_t, size_t);
lean_object* l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(lean_object*, lean_object*);
lean_object* lean_array_uget(lean_object*, size_t);
lean_object* l_Array_foldlMUnsafe_fold___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
lean_object* lean_array_get_size(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Std_DHashMap_Internal_AssocList_get_x3f___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWith(lean_object*);
size_t lean_usize_land(size_t, size_t);
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, size_t x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
lean_dec(x_1);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_12 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_2, x_3, x_4);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; 
lean_dec(x_2);
x_13 = lean_unsigned_to_nat(1u);
x_14 = lean_nat_add(x_5, x_13);
lean_dec(x_5);
x_15 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_15, 0, x_3);
lean_ctor_set(x_15, 1, x_9);
lean_ctor_set(x_15, 2, x_4);
x_16 = lean_array_uset(x_6, x_7, x_15);
x_17 = lean_unsigned_to_nat(4u);
x_18 = lean_nat_mul(x_14, x_17);
x_19 = lean_unsigned_to_nat(3u);
x_20 = lean_nat_div(x_18, x_19);
lean_dec(x_18);
x_21 = lean_array_get_size(x_16);
x_22 = lean_nat_dec_le(x_20, x_21);
lean_dec(x_21);
lean_dec(x_20);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_8, x_16);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_14);
lean_ctor_set(x_24, 1, x_23);
x_25 = lean_apply_2(x_11, lean_box(0), x_24);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; 
lean_dec(x_8);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_14);
lean_ctor_set(x_26, 1, x_16);
x_27 = lean_apply_2(x_11, lean_box(0), x_26);
return x_27;
}
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
lean_dec(x_8);
x_28 = lean_box(0);
x_29 = lean_array_uset(x_6, x_7, x_28);
x_30 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_2, x_3, x_9, x_4);
x_31 = lean_array_uset(x_29, x_7, x_30);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_5);
lean_ctor_set(x_32, 1, x_31);
x_33 = lean_apply_2(x_11, lean_box(0), x_32);
return x_33;
}
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_5);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint64_t x_13; uint64_t x_14; uint64_t x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; size_t x_20; size_t x_21; size_t x_22; size_t x_23; size_t x_24; lean_object* x_25; lean_object* x_26; 
x_9 = lean_ctor_get(x_5, 0);
x_10 = lean_ctor_get(x_5, 1);
x_11 = lean_array_get_size(x_10);
lean_inc(x_1);
lean_inc(x_6);
x_12 = lean_apply_1(x_1, x_6);
x_13 = lean_unbox_uint64(x_12);
lean_dec(x_12);
x_14 = 32;
x_15 = lean_uint64_shift_right(x_13, x_14);
x_16 = lean_uint64_xor(x_13, x_15);
x_17 = 16;
x_18 = lean_uint64_shift_right(x_16, x_17);
x_19 = lean_uint64_xor(x_16, x_18);
x_20 = lean_uint64_to_usize(x_19);
x_21 = lean_usize_of_nat(x_11);
lean_dec(x_11);
x_22 = 1;
x_23 = lean_usize_sub(x_21, x_22);
x_24 = lean_usize_land(x_20, x_23);
x_25 = lean_array_uget(x_10, x_24);
lean_inc(x_25);
lean_inc(x_6);
lean_inc(x_2);
x_26 = l_Std_DHashMap_Internal_AssocList_get_x3f___rarg(x_2, x_6, x_25);
if (lean_obj_tag(x_26) == 0)
{
lean_object* x_27; lean_object* x_28; uint8_t x_29; 
lean_dec(x_4);
x_27 = lean_ctor_get(x_3, 0);
lean_inc(x_27);
lean_dec(x_3);
x_28 = lean_ctor_get(x_27, 1);
lean_inc(x_28);
lean_dec(x_27);
lean_inc(x_25);
lean_inc(x_6);
lean_inc(x_2);
x_29 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_2, x_6, x_25);
if (x_29 == 0)
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; 
lean_dec(x_2);
x_30 = lean_unsigned_to_nat(1u);
x_31 = lean_nat_add(x_9, x_30);
lean_dec(x_9);
x_32 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_32, 0, x_6);
lean_ctor_set(x_32, 1, x_7);
lean_ctor_set(x_32, 2, x_25);
x_33 = lean_array_uset(x_10, x_24, x_32);
x_34 = lean_unsigned_to_nat(4u);
x_35 = lean_nat_mul(x_31, x_34);
x_36 = lean_unsigned_to_nat(3u);
x_37 = lean_nat_div(x_35, x_36);
lean_dec(x_35);
x_38 = lean_array_get_size(x_33);
x_39 = lean_nat_dec_le(x_37, x_38);
lean_dec(x_38);
lean_dec(x_37);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; 
x_40 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_1, x_33);
lean_ctor_set(x_5, 1, x_40);
lean_ctor_set(x_5, 0, x_31);
x_41 = lean_apply_2(x_28, lean_box(0), x_5);
return x_41;
}
else
{
lean_object* x_42; 
lean_dec(x_1);
lean_ctor_set(x_5, 1, x_33);
lean_ctor_set(x_5, 0, x_31);
x_42 = lean_apply_2(x_28, lean_box(0), x_5);
return x_42;
}
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
lean_dec(x_1);
x_43 = lean_box(0);
x_44 = lean_array_uset(x_10, x_24, x_43);
x_45 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_2, x_6, x_7, x_25);
x_46 = lean_array_uset(x_44, x_24, x_45);
lean_ctor_set(x_5, 1, x_46);
x_47 = lean_apply_2(x_28, lean_box(0), x_5);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
lean_free_object(x_5);
x_48 = lean_ctor_get(x_26, 0);
lean_inc(x_48);
lean_dec(x_26);
x_49 = lean_ctor_get(x_3, 1);
lean_inc(x_49);
lean_inc(x_6);
x_50 = lean_apply_3(x_4, x_6, x_48, x_7);
x_51 = lean_box_usize(x_24);
x_52 = lean_alloc_closure((void*)(l_Std_HashMap_mergeWithM___rarg___lambda__1___boxed), 9, 8);
lean_closure_set(x_52, 0, x_3);
lean_closure_set(x_52, 1, x_2);
lean_closure_set(x_52, 2, x_6);
lean_closure_set(x_52, 3, x_25);
lean_closure_set(x_52, 4, x_9);
lean_closure_set(x_52, 5, x_10);
lean_closure_set(x_52, 6, x_51);
lean_closure_set(x_52, 7, x_1);
x_53 = lean_apply_4(x_49, lean_box(0), lean_box(0), x_50, x_52);
return x_53;
}
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; uint64_t x_58; uint64_t x_59; uint64_t x_60; uint64_t x_61; uint64_t x_62; uint64_t x_63; uint64_t x_64; size_t x_65; size_t x_66; size_t x_67; size_t x_68; size_t x_69; lean_object* x_70; lean_object* x_71; 
x_54 = lean_ctor_get(x_5, 0);
x_55 = lean_ctor_get(x_5, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_5);
x_56 = lean_array_get_size(x_55);
lean_inc(x_1);
lean_inc(x_6);
x_57 = lean_apply_1(x_1, x_6);
x_58 = lean_unbox_uint64(x_57);
lean_dec(x_57);
x_59 = 32;
x_60 = lean_uint64_shift_right(x_58, x_59);
x_61 = lean_uint64_xor(x_58, x_60);
x_62 = 16;
x_63 = lean_uint64_shift_right(x_61, x_62);
x_64 = lean_uint64_xor(x_61, x_63);
x_65 = lean_uint64_to_usize(x_64);
x_66 = lean_usize_of_nat(x_56);
lean_dec(x_56);
x_67 = 1;
x_68 = lean_usize_sub(x_66, x_67);
x_69 = lean_usize_land(x_65, x_68);
x_70 = lean_array_uget(x_55, x_69);
lean_inc(x_70);
lean_inc(x_6);
lean_inc(x_2);
x_71 = l_Std_DHashMap_Internal_AssocList_get_x3f___rarg(x_2, x_6, x_70);
if (lean_obj_tag(x_71) == 0)
{
lean_object* x_72; lean_object* x_73; uint8_t x_74; 
lean_dec(x_4);
x_72 = lean_ctor_get(x_3, 0);
lean_inc(x_72);
lean_dec(x_3);
x_73 = lean_ctor_get(x_72, 1);
lean_inc(x_73);
lean_dec(x_72);
lean_inc(x_70);
lean_inc(x_6);
lean_inc(x_2);
x_74 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_2, x_6, x_70);
if (x_74 == 0)
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; uint8_t x_84; 
lean_dec(x_2);
x_75 = lean_unsigned_to_nat(1u);
x_76 = lean_nat_add(x_54, x_75);
lean_dec(x_54);
x_77 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_77, 0, x_6);
lean_ctor_set(x_77, 1, x_7);
lean_ctor_set(x_77, 2, x_70);
x_78 = lean_array_uset(x_55, x_69, x_77);
x_79 = lean_unsigned_to_nat(4u);
x_80 = lean_nat_mul(x_76, x_79);
x_81 = lean_unsigned_to_nat(3u);
x_82 = lean_nat_div(x_80, x_81);
lean_dec(x_80);
x_83 = lean_array_get_size(x_78);
x_84 = lean_nat_dec_le(x_82, x_83);
lean_dec(x_83);
lean_dec(x_82);
if (x_84 == 0)
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_85 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_1, x_78);
x_86 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_86, 0, x_76);
lean_ctor_set(x_86, 1, x_85);
x_87 = lean_apply_2(x_73, lean_box(0), x_86);
return x_87;
}
else
{
lean_object* x_88; lean_object* x_89; 
lean_dec(x_1);
x_88 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_88, 0, x_76);
lean_ctor_set(x_88, 1, x_78);
x_89 = lean_apply_2(x_73, lean_box(0), x_88);
return x_89;
}
}
else
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; 
lean_dec(x_1);
x_90 = lean_box(0);
x_91 = lean_array_uset(x_55, x_69, x_90);
x_92 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_2, x_6, x_7, x_70);
x_93 = lean_array_uset(x_91, x_69, x_92);
x_94 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_94, 0, x_54);
lean_ctor_set(x_94, 1, x_93);
x_95 = lean_apply_2(x_73, lean_box(0), x_94);
return x_95;
}
}
else
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; 
x_96 = lean_ctor_get(x_71, 0);
lean_inc(x_96);
lean_dec(x_71);
x_97 = lean_ctor_get(x_3, 1);
lean_inc(x_97);
lean_inc(x_6);
x_98 = lean_apply_3(x_4, x_6, x_96, x_7);
x_99 = lean_box_usize(x_69);
x_100 = lean_alloc_closure((void*)(l_Std_HashMap_mergeWithM___rarg___lambda__1___boxed), 9, 8);
lean_closure_set(x_100, 0, x_3);
lean_closure_set(x_100, 1, x_2);
lean_closure_set(x_100, 2, x_6);
lean_closure_set(x_100, 3, x_70);
lean_closure_set(x_100, 4, x_54);
lean_closure_set(x_100, 5, x_55);
lean_closure_set(x_100, 6, x_99);
lean_closure_set(x_100, 7, x_1);
x_101 = lean_apply_4(x_97, lean_box(0), lean_box(0), x_98, x_100);
return x_101;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
lean_inc(x_3);
x_7 = lean_alloc_closure((void*)(l_Std_HashMap_mergeWithM___rarg___lambda__2), 7, 4);
lean_closure_set(x_7, 0, x_2);
lean_closure_set(x_7, 1, x_1);
lean_closure_set(x_7, 2, x_3);
lean_closure_set(x_7, 3, x_4);
lean_inc(x_3);
x_8 = lean_alloc_closure((void*)(l_Std_DHashMap_Internal_AssocList_foldlM___rarg), 4, 2);
lean_closure_set(x_8, 0, x_3);
lean_closure_set(x_8, 1, x_7);
x_9 = lean_ctor_get(x_6, 1);
lean_inc(x_9);
lean_dec(x_6);
x_10 = lean_array_get_size(x_9);
x_11 = lean_unsigned_to_nat(0u);
x_12 = lean_nat_dec_lt(x_11, x_10);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_13 = lean_ctor_get(x_3, 0);
lean_inc(x_13);
lean_dec(x_3);
x_14 = lean_ctor_get(x_13, 1);
lean_inc(x_14);
lean_dec(x_13);
x_15 = lean_apply_2(x_14, lean_box(0), x_5);
return x_15;
}
else
{
uint8_t x_16; 
x_16 = lean_nat_dec_le(x_10, x_10);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
x_17 = lean_ctor_get(x_3, 0);
lean_inc(x_17);
lean_dec(x_3);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_apply_2(x_18, lean_box(0), x_5);
return x_19;
}
else
{
size_t x_20; size_t x_21; lean_object* x_22; 
x_20 = 0;
x_21 = lean_usize_of_nat(x_10);
lean_dec(x_10);
x_22 = l_Array_foldlMUnsafe_fold___rarg(x_3, x_8, x_9, x_20, x_21, x_5);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_alloc_closure((void*)(l_Std_HashMap_mergeWithM___rarg), 6, 0);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWithM___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
size_t x_10; lean_object* x_11; 
x_10 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_11 = l_Std_HashMap_mergeWithM___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_10, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mergeWith___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
if (lean_obj_tag(x_6) == 0)
{
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
uint8_t x_7; 
x_7 = !lean_is_exclusive(x_6);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_5);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint64_t x_16; uint64_t x_17; uint64_t x_18; uint64_t x_19; uint64_t x_20; uint64_t x_21; uint64_t x_22; size_t x_23; size_t x_24; size_t x_25; size_t x_26; size_t x_27; lean_object* x_28; lean_object* x_29; 
x_9 = lean_ctor_get(x_6, 0);
x_10 = lean_ctor_get(x_6, 1);
x_11 = lean_ctor_get(x_6, 2);
x_12 = lean_ctor_get(x_5, 0);
x_13 = lean_ctor_get(x_5, 1);
x_14 = lean_array_get_size(x_13);
lean_inc(x_2);
lean_inc(x_9);
x_15 = lean_apply_1(x_2, x_9);
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
lean_inc(x_9);
lean_inc(x_1);
x_29 = l_Std_DHashMap_Internal_AssocList_get_x3f___rarg(x_1, x_9, x_28);
if (lean_obj_tag(x_29) == 0)
{
uint8_t x_30; 
lean_inc(x_28);
lean_inc(x_9);
lean_inc(x_1);
x_30 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_9, x_28);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; uint8_t x_39; 
x_31 = lean_unsigned_to_nat(1u);
x_32 = lean_nat_add(x_12, x_31);
lean_dec(x_12);
lean_ctor_set(x_6, 2, x_28);
x_33 = lean_array_uset(x_13, x_27, x_6);
x_34 = lean_unsigned_to_nat(4u);
x_35 = lean_nat_mul(x_32, x_34);
x_36 = lean_unsigned_to_nat(3u);
x_37 = lean_nat_div(x_35, x_36);
lean_dec(x_35);
x_38 = lean_array_get_size(x_33);
x_39 = lean_nat_dec_le(x_37, x_38);
lean_dec(x_38);
lean_dec(x_37);
if (x_39 == 0)
{
lean_object* x_40; 
lean_inc(x_2);
x_40 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_33);
lean_ctor_set(x_5, 1, x_40);
lean_ctor_set(x_5, 0, x_32);
x_3 = lean_box(0);
x_6 = x_11;
goto _start;
}
else
{
lean_ctor_set(x_5, 1, x_33);
lean_ctor_set(x_5, 0, x_32);
x_3 = lean_box(0);
x_6 = x_11;
goto _start;
}
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
lean_free_object(x_6);
x_43 = lean_box(0);
x_44 = lean_array_uset(x_13, x_27, x_43);
lean_inc(x_1);
x_45 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_9, x_10, x_28);
x_46 = lean_array_uset(x_44, x_27, x_45);
lean_ctor_set(x_5, 1, x_46);
x_3 = lean_box(0);
x_6 = x_11;
goto _start;
}
}
else
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_29, 0);
lean_inc(x_48);
lean_dec(x_29);
lean_inc(x_4);
lean_inc(x_9);
x_49 = lean_apply_3(x_4, x_9, x_48, x_10);
lean_inc(x_28);
lean_inc(x_9);
lean_inc(x_1);
x_50 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_9, x_28);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; uint8_t x_59; 
x_51 = lean_unsigned_to_nat(1u);
x_52 = lean_nat_add(x_12, x_51);
lean_dec(x_12);
lean_ctor_set(x_6, 2, x_28);
lean_ctor_set(x_6, 1, x_49);
x_53 = lean_array_uset(x_13, x_27, x_6);
x_54 = lean_unsigned_to_nat(4u);
x_55 = lean_nat_mul(x_52, x_54);
x_56 = lean_unsigned_to_nat(3u);
x_57 = lean_nat_div(x_55, x_56);
lean_dec(x_55);
x_58 = lean_array_get_size(x_53);
x_59 = lean_nat_dec_le(x_57, x_58);
lean_dec(x_58);
lean_dec(x_57);
if (x_59 == 0)
{
lean_object* x_60; 
lean_inc(x_2);
x_60 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_53);
lean_ctor_set(x_5, 1, x_60);
lean_ctor_set(x_5, 0, x_52);
x_3 = lean_box(0);
x_6 = x_11;
goto _start;
}
else
{
lean_ctor_set(x_5, 1, x_53);
lean_ctor_set(x_5, 0, x_52);
x_3 = lean_box(0);
x_6 = x_11;
goto _start;
}
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; 
lean_free_object(x_6);
x_63 = lean_box(0);
x_64 = lean_array_uset(x_13, x_27, x_63);
lean_inc(x_1);
x_65 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_9, x_49, x_28);
x_66 = lean_array_uset(x_64, x_27, x_65);
lean_ctor_set(x_5, 1, x_66);
x_3 = lean_box(0);
x_6 = x_11;
goto _start;
}
}
}
else
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; uint64_t x_75; uint64_t x_76; uint64_t x_77; uint64_t x_78; uint64_t x_79; uint64_t x_80; uint64_t x_81; size_t x_82; size_t x_83; size_t x_84; size_t x_85; size_t x_86; lean_object* x_87; lean_object* x_88; 
x_68 = lean_ctor_get(x_6, 0);
x_69 = lean_ctor_get(x_6, 1);
x_70 = lean_ctor_get(x_6, 2);
x_71 = lean_ctor_get(x_5, 0);
x_72 = lean_ctor_get(x_5, 1);
lean_inc(x_72);
lean_inc(x_71);
lean_dec(x_5);
x_73 = lean_array_get_size(x_72);
lean_inc(x_2);
lean_inc(x_68);
x_74 = lean_apply_1(x_2, x_68);
x_75 = lean_unbox_uint64(x_74);
lean_dec(x_74);
x_76 = 32;
x_77 = lean_uint64_shift_right(x_75, x_76);
x_78 = lean_uint64_xor(x_75, x_77);
x_79 = 16;
x_80 = lean_uint64_shift_right(x_78, x_79);
x_81 = lean_uint64_xor(x_78, x_80);
x_82 = lean_uint64_to_usize(x_81);
x_83 = lean_usize_of_nat(x_73);
lean_dec(x_73);
x_84 = 1;
x_85 = lean_usize_sub(x_83, x_84);
x_86 = lean_usize_land(x_82, x_85);
x_87 = lean_array_uget(x_72, x_86);
lean_inc(x_87);
lean_inc(x_68);
lean_inc(x_1);
x_88 = l_Std_DHashMap_Internal_AssocList_get_x3f___rarg(x_1, x_68, x_87);
if (lean_obj_tag(x_88) == 0)
{
uint8_t x_89; 
lean_inc(x_87);
lean_inc(x_68);
lean_inc(x_1);
x_89 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_68, x_87);
if (x_89 == 0)
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; uint8_t x_98; 
x_90 = lean_unsigned_to_nat(1u);
x_91 = lean_nat_add(x_71, x_90);
lean_dec(x_71);
lean_ctor_set(x_6, 2, x_87);
x_92 = lean_array_uset(x_72, x_86, x_6);
x_93 = lean_unsigned_to_nat(4u);
x_94 = lean_nat_mul(x_91, x_93);
x_95 = lean_unsigned_to_nat(3u);
x_96 = lean_nat_div(x_94, x_95);
lean_dec(x_94);
x_97 = lean_array_get_size(x_92);
x_98 = lean_nat_dec_le(x_96, x_97);
lean_dec(x_97);
lean_dec(x_96);
if (x_98 == 0)
{
lean_object* x_99; lean_object* x_100; 
lean_inc(x_2);
x_99 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_92);
x_100 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_100, 0, x_91);
lean_ctor_set(x_100, 1, x_99);
x_3 = lean_box(0);
x_5 = x_100;
x_6 = x_70;
goto _start;
}
else
{
lean_object* x_102; 
x_102 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_102, 0, x_91);
lean_ctor_set(x_102, 1, x_92);
x_3 = lean_box(0);
x_5 = x_102;
x_6 = x_70;
goto _start;
}
}
else
{
lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; 
lean_free_object(x_6);
x_104 = lean_box(0);
x_105 = lean_array_uset(x_72, x_86, x_104);
lean_inc(x_1);
x_106 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_68, x_69, x_87);
x_107 = lean_array_uset(x_105, x_86, x_106);
x_108 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_108, 0, x_71);
lean_ctor_set(x_108, 1, x_107);
x_3 = lean_box(0);
x_5 = x_108;
x_6 = x_70;
goto _start;
}
}
else
{
lean_object* x_110; lean_object* x_111; uint8_t x_112; 
x_110 = lean_ctor_get(x_88, 0);
lean_inc(x_110);
lean_dec(x_88);
lean_inc(x_4);
lean_inc(x_68);
x_111 = lean_apply_3(x_4, x_68, x_110, x_69);
lean_inc(x_87);
lean_inc(x_68);
lean_inc(x_1);
x_112 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_68, x_87);
if (x_112 == 0)
{
lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; lean_object* x_120; uint8_t x_121; 
x_113 = lean_unsigned_to_nat(1u);
x_114 = lean_nat_add(x_71, x_113);
lean_dec(x_71);
lean_ctor_set(x_6, 2, x_87);
lean_ctor_set(x_6, 1, x_111);
x_115 = lean_array_uset(x_72, x_86, x_6);
x_116 = lean_unsigned_to_nat(4u);
x_117 = lean_nat_mul(x_114, x_116);
x_118 = lean_unsigned_to_nat(3u);
x_119 = lean_nat_div(x_117, x_118);
lean_dec(x_117);
x_120 = lean_array_get_size(x_115);
x_121 = lean_nat_dec_le(x_119, x_120);
lean_dec(x_120);
lean_dec(x_119);
if (x_121 == 0)
{
lean_object* x_122; lean_object* x_123; 
lean_inc(x_2);
x_122 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_115);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_114);
lean_ctor_set(x_123, 1, x_122);
x_3 = lean_box(0);
x_5 = x_123;
x_6 = x_70;
goto _start;
}
else
{
lean_object* x_125; 
x_125 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_125, 0, x_114);
lean_ctor_set(x_125, 1, x_115);
x_3 = lean_box(0);
x_5 = x_125;
x_6 = x_70;
goto _start;
}
}
else
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
lean_free_object(x_6);
x_127 = lean_box(0);
x_128 = lean_array_uset(x_72, x_86, x_127);
lean_inc(x_1);
x_129 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_68, x_111, x_87);
x_130 = lean_array_uset(x_128, x_86, x_129);
x_131 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_131, 0, x_71);
lean_ctor_set(x_131, 1, x_130);
x_3 = lean_box(0);
x_5 = x_131;
x_6 = x_70;
goto _start;
}
}
}
}
else
{
lean_object* x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; uint64_t x_141; uint64_t x_142; uint64_t x_143; uint64_t x_144; uint64_t x_145; uint64_t x_146; uint64_t x_147; size_t x_148; size_t x_149; size_t x_150; size_t x_151; size_t x_152; lean_object* x_153; lean_object* x_154; 
x_133 = lean_ctor_get(x_6, 0);
x_134 = lean_ctor_get(x_6, 1);
x_135 = lean_ctor_get(x_6, 2);
lean_inc(x_135);
lean_inc(x_134);
lean_inc(x_133);
lean_dec(x_6);
x_136 = lean_ctor_get(x_5, 0);
lean_inc(x_136);
x_137 = lean_ctor_get(x_5, 1);
lean_inc(x_137);
if (lean_is_exclusive(x_5)) {
 lean_ctor_release(x_5, 0);
 lean_ctor_release(x_5, 1);
 x_138 = x_5;
} else {
 lean_dec_ref(x_5);
 x_138 = lean_box(0);
}
x_139 = lean_array_get_size(x_137);
lean_inc(x_2);
lean_inc(x_133);
x_140 = lean_apply_1(x_2, x_133);
x_141 = lean_unbox_uint64(x_140);
lean_dec(x_140);
x_142 = 32;
x_143 = lean_uint64_shift_right(x_141, x_142);
x_144 = lean_uint64_xor(x_141, x_143);
x_145 = 16;
x_146 = lean_uint64_shift_right(x_144, x_145);
x_147 = lean_uint64_xor(x_144, x_146);
x_148 = lean_uint64_to_usize(x_147);
x_149 = lean_usize_of_nat(x_139);
lean_dec(x_139);
x_150 = 1;
x_151 = lean_usize_sub(x_149, x_150);
x_152 = lean_usize_land(x_148, x_151);
x_153 = lean_array_uget(x_137, x_152);
lean_inc(x_153);
lean_inc(x_133);
lean_inc(x_1);
x_154 = l_Std_DHashMap_Internal_AssocList_get_x3f___rarg(x_1, x_133, x_153);
if (lean_obj_tag(x_154) == 0)
{
uint8_t x_155; 
lean_inc(x_153);
lean_inc(x_133);
lean_inc(x_1);
x_155 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_133, x_153);
if (x_155 == 0)
{
lean_object* x_156; lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; lean_object* x_164; uint8_t x_165; 
x_156 = lean_unsigned_to_nat(1u);
x_157 = lean_nat_add(x_136, x_156);
lean_dec(x_136);
x_158 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_158, 0, x_133);
lean_ctor_set(x_158, 1, x_134);
lean_ctor_set(x_158, 2, x_153);
x_159 = lean_array_uset(x_137, x_152, x_158);
x_160 = lean_unsigned_to_nat(4u);
x_161 = lean_nat_mul(x_157, x_160);
x_162 = lean_unsigned_to_nat(3u);
x_163 = lean_nat_div(x_161, x_162);
lean_dec(x_161);
x_164 = lean_array_get_size(x_159);
x_165 = lean_nat_dec_le(x_163, x_164);
lean_dec(x_164);
lean_dec(x_163);
if (x_165 == 0)
{
lean_object* x_166; lean_object* x_167; 
lean_inc(x_2);
x_166 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_159);
if (lean_is_scalar(x_138)) {
 x_167 = lean_alloc_ctor(0, 2, 0);
} else {
 x_167 = x_138;
}
lean_ctor_set(x_167, 0, x_157);
lean_ctor_set(x_167, 1, x_166);
x_3 = lean_box(0);
x_5 = x_167;
x_6 = x_135;
goto _start;
}
else
{
lean_object* x_169; 
if (lean_is_scalar(x_138)) {
 x_169 = lean_alloc_ctor(0, 2, 0);
} else {
 x_169 = x_138;
}
lean_ctor_set(x_169, 0, x_157);
lean_ctor_set(x_169, 1, x_159);
x_3 = lean_box(0);
x_5 = x_169;
x_6 = x_135;
goto _start;
}
}
else
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; lean_object* x_175; 
x_171 = lean_box(0);
x_172 = lean_array_uset(x_137, x_152, x_171);
lean_inc(x_1);
x_173 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_133, x_134, x_153);
x_174 = lean_array_uset(x_172, x_152, x_173);
if (lean_is_scalar(x_138)) {
 x_175 = lean_alloc_ctor(0, 2, 0);
} else {
 x_175 = x_138;
}
lean_ctor_set(x_175, 0, x_136);
lean_ctor_set(x_175, 1, x_174);
x_3 = lean_box(0);
x_5 = x_175;
x_6 = x_135;
goto _start;
}
}
else
{
lean_object* x_177; lean_object* x_178; uint8_t x_179; 
x_177 = lean_ctor_get(x_154, 0);
lean_inc(x_177);
lean_dec(x_154);
lean_inc(x_4);
lean_inc(x_133);
x_178 = lean_apply_3(x_4, x_133, x_177, x_134);
lean_inc(x_153);
lean_inc(x_133);
lean_inc(x_1);
x_179 = l_Std_DHashMap_Internal_AssocList_contains___rarg(x_1, x_133, x_153);
if (x_179 == 0)
{
lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; uint8_t x_189; 
x_180 = lean_unsigned_to_nat(1u);
x_181 = lean_nat_add(x_136, x_180);
lean_dec(x_136);
x_182 = lean_alloc_ctor(1, 3, 0);
lean_ctor_set(x_182, 0, x_133);
lean_ctor_set(x_182, 1, x_178);
lean_ctor_set(x_182, 2, x_153);
x_183 = lean_array_uset(x_137, x_152, x_182);
x_184 = lean_unsigned_to_nat(4u);
x_185 = lean_nat_mul(x_181, x_184);
x_186 = lean_unsigned_to_nat(3u);
x_187 = lean_nat_div(x_185, x_186);
lean_dec(x_185);
x_188 = lean_array_get_size(x_183);
x_189 = lean_nat_dec_le(x_187, x_188);
lean_dec(x_188);
lean_dec(x_187);
if (x_189 == 0)
{
lean_object* x_190; lean_object* x_191; 
lean_inc(x_2);
x_190 = l_Std_DHashMap_Internal_Raw_u2080_expand___rarg(x_2, x_183);
if (lean_is_scalar(x_138)) {
 x_191 = lean_alloc_ctor(0, 2, 0);
} else {
 x_191 = x_138;
}
lean_ctor_set(x_191, 0, x_181);
lean_ctor_set(x_191, 1, x_190);
x_3 = lean_box(0);
x_5 = x_191;
x_6 = x_135;
goto _start;
}
else
{
lean_object* x_193; 
if (lean_is_scalar(x_138)) {
 x_193 = lean_alloc_ctor(0, 2, 0);
} else {
 x_193 = x_138;
}
lean_ctor_set(x_193, 0, x_181);
lean_ctor_set(x_193, 1, x_183);
x_3 = lean_box(0);
x_5 = x_193;
x_6 = x_135;
goto _start;
}
}
else
{
lean_object* x_195; lean_object* x_196; lean_object* x_197; lean_object* x_198; lean_object* x_199; 
x_195 = lean_box(0);
x_196 = lean_array_uset(x_137, x_152, x_195);
lean_inc(x_1);
x_197 = l_Std_DHashMap_Internal_AssocList_replace___rarg(x_1, x_133, x_178, x_153);
x_198 = lean_array_uset(x_196, x_152, x_197);
if (lean_is_scalar(x_138)) {
 x_199 = lean_alloc_ctor(0, 2, 0);
} else {
 x_199 = x_138;
}
lean_ctor_set(x_199, 0, x_136);
lean_ctor_set(x_199, 1, x_198);
x_3 = lean_box(0);
x_5 = x_199;
x_6 = x_135;
goto _start;
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mergeWith___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mergeWith___spec__1___rarg), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, size_t x_7, lean_object* x_8) {
_start:
{
uint8_t x_9; 
x_9 = lean_usize_dec_eq(x_6, x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; size_t x_12; size_t x_13; 
x_10 = lean_array_uget(x_5, x_6);
lean_inc(x_4);
lean_inc(x_2);
lean_inc(x_1);
x_11 = l_Std_DHashMap_Internal_AssocList_foldlM___at_Std_HashMap_mergeWith___spec__1___rarg(x_1, x_2, lean_box(0), x_4, x_8, x_10);
x_12 = 1;
x_13 = lean_usize_add(x_6, x_12);
x_3 = lean_box(0);
x_6 = x_13;
x_8 = x_11;
goto _start;
}
else
{
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg___boxed), 8, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWith___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; 
x_7 = lean_ctor_get(x_6, 1);
x_8 = lean_array_get_size(x_7);
x_9 = lean_unsigned_to_nat(0u);
x_10 = lean_nat_dec_lt(x_9, x_8);
if (x_10 == 0)
{
lean_dec(x_8);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
uint8_t x_11; 
x_11 = lean_nat_dec_le(x_8, x_8);
if (x_11 == 0)
{
lean_dec(x_8);
lean_dec(x_4);
lean_dec(x_2);
lean_dec(x_1);
return x_5;
}
else
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = 0;
x_13 = lean_usize_of_nat(x_8);
lean_dec(x_8);
x_14 = l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg(x_1, x_2, lean_box(0), x_4, x_7, x_12, x_13, x_5);
return x_14;
}
}
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWith(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Std_HashMap_mergeWith___rarg___boxed), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
size_t x_9; size_t x_10; lean_object* x_11; 
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = lean_unbox_usize(x_7);
lean_dec(x_7);
x_11 = l_Array_foldlMUnsafe_fold___at_Std_HashMap_mergeWith___spec__2___rarg(x_1, x_2, x_3, x_4, x_5, x_9, x_10, x_8);
lean_dec(x_5);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Std_HashMap_mergeWith___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Std_HashMap_mergeWith___rarg(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
return x_7;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Std_Data_HashMap_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Batteries_Lean_HashMap(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Std_Data_HashMap_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
