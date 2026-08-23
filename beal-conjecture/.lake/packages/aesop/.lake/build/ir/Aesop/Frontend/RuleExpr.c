// Lean compiler output
// Module: Aesop.Frontend.RuleExpr
// Imports: Init Aesop.ElabM Aesop.Percent Aesop.Rule.Name Aesop.Builder.Cases Aesop.Builder.Default Aesop.Builder.Forward Aesop.Builder.Unfold Aesop.RuleSet.Filter
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
static lean_object* l_Aesop_Frontend_Parser_featIdent___closed__2;
static lean_object* l_Aesop_Frontend_Parser_feature____1___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__3___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__8;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__1;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__10;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toRuleBuilder(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__1;
LEAN_EXPORT lean_object* l_Array_mergeDedupWith_go___at_Aesop_Frontend_RuleConfig_addFeature___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__13;
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_instToString___boxed(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
static lean_object* l_Aesop_Frontend_Feature_elab___closed__3;
lean_object* l_Aesop_ElabM_Context_forGlobalErasing(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__9;
static lean_object* l_Aesop_Frontend_Parser_feature____3___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_Term_resolveId_x3f(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_feature_x28___x29___closed__4;
static lean_object* l_Aesop_Frontend_Parser_phaseUnsafe___closed__2;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__21;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__5;
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__3;
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
lean_object* l_Aesop_Percent_toHumanString(double);
static lean_object* l_Aesop_Frontend_Parser_builder__nameConstructors___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_priority;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_rule__expr______;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__10;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_instInhabitedDBuilderName;
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__1;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29;
static lean_object* l_Aesop_Frontend_Parser_phaseSafe___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getRuleBuilderInput(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__4;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__7;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameCases___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7;
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__4;
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__5;
static lean_object* l_Aesop_Frontend_Parser_builder__nameDefault___closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__7;
static lean_object* l_Aesop_Frontend_Parser_feature____1___closed__3;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameUnfold___closed__5;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__1;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___rarg(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_indexing__modeUnindexed;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1___rarg(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_featIdent;
LEAN_EXPORT lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameSimp___closed__3;
extern lean_object* l_Aesop_RuleBuilderOptions_default;
static lean_object* l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameSimp___closed__5;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toRuleFilters___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__8;
static lean_object* l_Aesop_Frontend_Parser_featIdent___closed__3;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_instInhabitedFeature;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7___boxed__const__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_instInhabitedRuleExpr;
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__9;
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__5;
static lean_object* l_Aesop_Frontend_Parser_phaseUnsafe___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__nameDefault___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_PhaseName_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getId(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_phaseSafe___closed__1;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__25;
static lean_object* l_Aesop_Frontend_Parser_phaseUnsafe___closed__3;
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__7;
lean_object* l_Array_toSubarray___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__5;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4(lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_builder__name;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2;
lean_object* l_Array_qpartition___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toRuleConfigs___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__26;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_phaseSafe___closed__3;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19;
uint8_t lean_usize_dec_eq(size_t, size_t);
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__8;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArgs(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16;
extern lean_object* l_Aesop_defaultSimpRulePriority;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__7___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_IndexingMode_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_instToString(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameDestruct___closed__5;
static lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__1;
lean_object* l_Lean_replaceRef(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__17;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__nameTactic___closed__5;
lean_object* l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_feature____2___closed__1;
lean_object* lean_array_fget(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__9;
static lean_object* l_Aesop_Frontend_Feature_elab___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__11;
static lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__1;
lean_object* l_Aesop_RuleBuilder_unfold(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_TSepArray_getElems___rarg(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_instInhabitedDBuilderName___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__12;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__3;
static lean_object* l_Aesop_Frontend_instInhabitedPriority___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__1;
extern double l_Aesop_defaultSuccessProbability;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__5;
extern lean_object* l_Aesop_defaultRuleSetName;
static lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___closed__1;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__7;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__6;
lean_object* l_Aesop_Percent_ofNat(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__5;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameDefault;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__4;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__4;
static lean_object* l_Aesop_Frontend_Priority_elab___lambda__1___closed__1;
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3;
uint8_t l_Lean_Syntax_isOfKind(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_rule__expr_____closed__2;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameSimp;
static lean_object* l_Aesop_Frontend_Parser_feature____4___closed__2;
lean_object* l_Lean_stringToMessageData(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameCases___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__12;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__22;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__9;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__1(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__20;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__6;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__9(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__8;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29;
lean_object* l_Lean_throwError___at_Lean_Meta_CheckTactic_matchCheckGoalType___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameUnfold___closed__1;
uint8_t lean_int_dec_le(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_addBuilderOption(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs(lean_object*);
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__nameCases___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__9;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_throwError___at_Lean_PrettyPrinter_Delaborator_delab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__11;
lean_object* l_Aesop_RuleBuilder_apply(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_phaseUnsafe___closed__5;
static lean_object* l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__1;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__6;
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__9(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_BuilderOption_elab___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameForward___closed__2;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__12___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleSets_elab___spec__2___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__5;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__15;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_IndexingMode_elab___spec__1(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__9;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameTactic___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr3(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1___rarg(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__5;
static lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__8;
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_feature__;
size_t lean_usize_of_nat(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameSimp___closed__2;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__14;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_feature____1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_transparency;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__9___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_phaseSafe;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__2;
uint8_t l_Ordering_isLT(uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_feature____1___closed__2;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__9___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__7;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5(uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___lambda__1(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getRuleBuilderInput___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_elabPattern(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Priority_elab___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Feature_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_feature;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameForward;
lean_object* l_Aesop_ElabM_Context_forAdditionalGlobalRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameForward___closed__4;
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_BuilderOption_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofSyntax(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__8;
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__5;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__16;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__4;
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSets_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__3;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__1;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_buildLocalRule(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__nameForward___closed__1;
static lean_object* l_Aesop_Frontend_Parser_builder__nameApply___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__nameSimp___closed__4;
static lean_object* l_Aesop_Frontend_Parser_feature____4___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Feature_elab___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleSets_elab___spec__2(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_instInhabitedPriority;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__5;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleBuilder_constructors(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofFormat(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameCases___closed__4;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9;
static lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1;
static lean_object* l_Aesop_Frontend_Parser_feature_x28___x29___closed__6;
lean_object* l_Lean_Elab_getBetterRef(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toBuilderName_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toLocalRuleFilters(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__2;
lean_object* l_Aesop_LocalRuleSetMember_toGlobalRuleSetMember_x3f(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__5;
static lean_object* l_Aesop_Frontend_Parser_builder__nameTactic___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__nameDefault___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__5;
LEAN_EXPORT lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___lambda__1___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_instToString(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_FVarId_getDecl(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__4(lean_object*, lean_object*, lean_object*, lean_object*, uint8_t);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__2___boxed(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__10;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__9;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__4;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameForward___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_priority_x2d__;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toRuleFilters___spec__1(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__10;
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabTransparency(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Aesop_RuleBuilder_cases(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameTactic___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_CasesPattern_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_instInhabitedRuleExpr___closed__1;
static lean_object* l_Aesop_Frontend_Priority_elab___lambda__1___closed__3;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12;
lean_object* l_Lean_Meta_abstractMVars(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__nameDestruct___closed__4;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29;
lean_object* l_Lean_Elab_Term_saveState___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_instInhabitedRuleSets;
static lean_object* l_Aesop_Frontend_Parser_builder__nameConstructors___closed__1;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__3;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__2;
static lean_object* l_Aesop_Frontend_Parser_feature____2___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabTransparency___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__5;
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__7;
static lean_object* l_Aesop_Frontend_Parser_feature_x28___x29___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___lambda__1(size_t, lean_object*, lean_object*, lean_object*, lean_object*, size_t, lean_object*);
static lean_object* l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__10;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_instInhabitedPriority___closed__1;
lean_object* l_Aesop_RuleBuilder_simp(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__7;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__9;
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__10;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameCases;
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__1;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2;
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_feature____4;
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__7;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot;
static lean_object* l_Aesop_Frontend_Parser_phaseNorm___closed__3;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2(lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode_elabKeys___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameForward___closed__5;
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__10;
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__10;
lean_object* l_Lean_Name_str___override(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__8;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_throwError___at___private_Lean_Elab_Quotation_0__Lean_Elab_Term_Quotation_quoteSyntax___spec__25(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_Priority_elab___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Feature_elab___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_phaseNorm___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__11___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameDestruct;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__3;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__9;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Syntax_getArg(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__21;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__6;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_IndexingMode_elab___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_matchesNull(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_rule__expr_____closed__1;
static lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_phaseNorm;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__13;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__5;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___at_Aesop_Frontend_RuleConfig_buildRule___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__12(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t l_Lean_Syntax_isIdent(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSetName_elab(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__15;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_elab___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1;
static lean_object* l_Aesop_Frontend_Parser_feature_____closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_IndexingMode_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__7;
lean_object* lean_mk_syntax_ident(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildRule___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10;
LEAN_EXPORT lean_object* l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_rule__expr__;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules___spec__1(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toGlobalRuleFilters(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_Priority_elab___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Priority_elab___closed__2;
static lean_object* l_Aesop_Frontend_Parser_feature____3___closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__10;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__3(lean_object*, double);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__11(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Meta_DiscrTree_mkPath(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__11;
lean_object* l_Aesop_shouldParsePriorities(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__8;
lean_object* l_Array_append___rarg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_indexing__mode;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toRuleConfigs___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget__;
LEAN_EXPORT lean_object* l_Aesop_Frontend_PhaseName_elab___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_MessageData_ofExpr(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__9;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg(lean_object*, lean_object*, uint8_t, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__1;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__9;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_feature_x28___x29;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__5;
LEAN_EXPORT lean_object* l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Priority_elab___lambda__1___closed__4;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__4;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__nameConstructors___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__7;
static lean_object* l_Aesop_Frontend_Parser_feature_x28___x29___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__14;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__24;
lean_object* l_Lean_LocalDecl_userName(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__2;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__2;
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__5;
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___lambda__1(size_t, lean_object*, lean_object*, lean_object*, lean_object*, size_t, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
static lean_object* l_Aesop_Frontend_Parser_builder__nameDefault___closed__4;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__11;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6;
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__8;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__1;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__1;
static lean_object* l_Aesop_Frontend_Parser_builder__nameUnfold___closed__4;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__2;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__1;
static lean_object* l_Aesop_Frontend_Parser_phaseUnsafe___closed__1;
lean_object* lean_nat_abs(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__23;
lean_object* l_Lean_throwError___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_instInhabitedFeature___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildRule___spec__2(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_feature_x28___x29___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__5(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameDefault___closed__5;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__13;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__6;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__5;
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__10;
LEAN_EXPORT lean_object* l_Lean_withoutModifyingState___at_Aesop_Frontend_elabSingleIndexingMode_elabKeys___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___rarg(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__5;
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__7;
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameDestruct___closed__1;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameTactic___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__nameSimp___closed__1;
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__13;
static lean_object* l_Aesop_Frontend_Parser_builder__nameApply___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__4;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
extern lean_object* l_Aesop_defaultSafePenalty;
static lean_object* l_Aesop_Frontend_Parser_builder__nameApply___closed__1;
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSetName_elab___boxed(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__9;
static lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1___rarg(lean_object*);
lean_object* l_Lean_Name_mkStr2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameUnfold;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29;
static lean_object* l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__1;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleExpr_elab___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__6;
static lean_object* l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__3;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5;
static lean_object* l_Aesop_Frontend_Parser_feature____2___closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__9;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2(size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__7(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleFilters(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_feature_x28___x29___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__11;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__1;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__18;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__6;
lean_object* l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Int_toNat(lean_object*);
lean_object* l_Array_mapMUnsafe_map___at_Lean_Parser_withOpenDeclFnCore___spec__1(size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29;
static lean_object* l_Aesop_Frontend_Parser_phaseNorm___closed__2;
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15;
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__5;
uint8_t lean_int_dec_lt(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules(lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_feature____3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_toPercent_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp__;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameTactic;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__3;
static lean_object* l_Aesop_Frontend_Feature_elab___closed__1;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__4;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__12;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6;
lean_object* l_Aesop_RuleBuilder_forward(uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2;
static lean_object* l_Aesop_Frontend_Parser_phaseSafe___closed__5;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Array_ofSubarray___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2;
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_toInt_x3f(lean_object*);
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19;
lean_object* lean_erase_macro_scopes(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__3(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSimpPriority(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__17;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__9;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__10;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_feature____2;
static lean_object* l_Aesop_Frontend_Parser_feature_____closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__9;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__8;
uint8_t l_Lean_Name_quickCmp(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__nameApply___closed__2;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__3;
lean_object* l_Aesop_RuleBuilder_default(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_usize_add(size_t, size_t);
static lean_object* l_Aesop_Frontend_Parser_rule__expr_____closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__12;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__6;
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__7;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__4;
LEAN_EXPORT lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_feature____4___closed__1;
static lean_object* l_Aesop_Frontend_Parser_feature_____closed__3;
static lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2___closed__1;
lean_object* lean_array_uget(lean_object*, size_t);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
size_t lean_array_size(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__10;
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__2;
static lean_object* l_Aesop_Frontend_Parser_rule__expr_________closed__3;
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__1;
static lean_object* l_Aesop_Frontend_Parser_feature____3___closed__3;
static lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg(lean_object*, lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__8;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__9;
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__11(lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__22;
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toBuilderName_x3f___boxed(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_buildGlobalRule(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_buildRule(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* l_Lean_Name_mkStr4(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___rarg(lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2;
static lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__17;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__17;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__3;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__7;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_string_append(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___at_Aesop_Frontend_RuleConfig_buildRule___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__2;
static lean_object* l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__3;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameApply;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__19;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__7;
static lean_object* l_Aesop_Frontend_Parser_phaseSafe___closed__4;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__4;
lean_object* lean_array_get_size(lean_object*);
extern lean_object* l_Aesop_localRuleSetName;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
lean_object* lean_int_neg(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__14;
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toRuleBuilder___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__12;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot;
static lean_object* l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2;
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go(lean_object*, lean_object*);
extern lean_object* l_Lean_Elab_unsupportedSyntaxExceptionId;
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_usize_dec_lt(size_t, size_t);
extern lean_object* l_Aesop_defaultNormPenalty;
static lean_object* l_Aesop_Frontend_Parser_featIdent___closed__1;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__8(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode_elabKeys___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23;
static lean_object* l_Aesop_Frontend_Parser_phaseNorm___closed__4;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2;
static lean_object* l_Aesop_Frontend_Parser_builder__nameCases___closed__5;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__8;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_phaseUnsafe;
lean_object* lean_nat_add(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__5;
lean_object* l_Lean_throwError___at_Aesop_RuleBuilder_cases___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__20;
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3(lean_object*, lean_object*, size_t, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_phase;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__1(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__8;
static lean_object* l_Aesop_Frontend_DBuilderName_elab___closed__6;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__8;
static lean_object* l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__2(lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__9;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__18;
lean_object* l_Lean_Elab_Term_SavedState_restore(lean_object*, uint8_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_priority_x2d_____closed__3;
static lean_object* l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__3;
static lean_object* l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__3;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__3;
static lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__11___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalLocalRules(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_array_uset(lean_object*, size_t, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_rule__expr;
static lean_object* l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__10;
lean_object* l___private_Init_Data_Repr_0__Nat_reprFast(lean_object*);
lean_object* l_Aesop_RuleBuilder_tactic(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__1;
static lean_object* l_Aesop_Frontend_Parser_priority___x25___closed__7;
static lean_object* l_Aesop_Frontend_Parser_phaseNorm___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSets_elab___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__4;
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_builder__nameConstructors;
static lean_object* l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__9;
extern lean_object* l_Aesop_discrTreeConfig;
static lean_object* l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__5;
lean_object* l_Lean_Syntax_toNat(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_Parser_priority___x25;
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__4(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__5;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__1(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* l_Aesop_Frontend_Parser_builder__nameApply___closed__5;
static lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2;
static lean_object* l_Aesop_Frontend_Priority_elab___lambda__1___closed__2;
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature(lean_object*);
static lean_object* l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2;
static lean_object* l_Aesop_Frontend_Parser_transparency___closed__13;
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lean_Parser_Category_Aesop_builder__option;
uint8_t l_Array_isEmpty___rarg(lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__2(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability(lean_object*);
static lean_object* l_Aesop_Frontend_Parser_ruleSetsFeature___closed__11;
static lean_object* l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__19;
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Lean", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Parser", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("quot", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__1;
x_2 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__3;
x_4 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Aesop", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("priority", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__9() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("andthen", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__9;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(priority| ", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__11;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__13;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__15() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(")", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__15;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__12;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__17;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__8;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__18;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__19;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_priority_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__20;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_priority() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("Frontend", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("priority_%", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_priority___x25___closed__2;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("num", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__4;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_priority___x25___closed__5;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("%", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_priority___x25___closed__7;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__6;
x_3 = l_Aesop_Frontend_Parser_priority___x25___closed__8;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_priority___x25___closed__3;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_priority___x25___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority___x25() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_priority___x25___closed__10;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("priority-_", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_priority_x2d_____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("optional", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_priority_x2d_____closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("-", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_priority_x2d_____closed__5;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_priority_x2d_____closed__4;
x_2 = l_Aesop_Frontend_Parser_priority_x2d_____closed__6;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_priority_x2d_____closed__7;
x_3 = l_Aesop_Frontend_Parser_priority___x25___closed__6;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_priority_x2d_____closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_priority_x2d_____closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_priority_x2d__() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_priority_x2d_____closed__9;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedPriority___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedPriority___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_instInhabitedPriority___closed__1;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedPriority() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_instInhabitedPriority___closed__2;
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = l_Lean_Elab_unsupportedSyntaxExceptionId;
return x_1;
}
}
static lean_object* _init_l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__1;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_Priority_elab___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
static lean_object* _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("percentage '", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Priority_elab___lambda__1___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("%' is not between 0 and 100.", 28, 28);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Priority_elab___lambda__1___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; uint8_t x_12; 
x_11 = l_Aesop_Frontend_Parser_priority___x25___closed__3;
lean_inc(x_1);
x_12 = l_Lean_Syntax_isOfKind(x_1, x_11);
if (x_12 == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = l_Aesop_Frontend_Parser_priority_x2d_____closed__2;
lean_inc(x_1);
x_14 = l_Lean_Syntax_isOfKind(x_1, x_13);
if (x_14 == 0)
{
lean_object* x_15; 
lean_dec(x_1);
x_15 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(x_10);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_unsigned_to_nat(0u);
x_17 = l_Lean_Syntax_getArg(x_1, x_16);
x_18 = lean_unsigned_to_nat(1u);
lean_inc(x_17);
x_19 = l_Lean_Syntax_matchesNull(x_17, x_18);
if (x_19 == 0)
{
uint8_t x_20; 
x_20 = l_Lean_Syntax_matchesNull(x_17, x_16);
if (x_20 == 0)
{
lean_object* x_21; 
lean_dec(x_1);
x_21 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(x_10);
return x_21;
}
else
{
lean_object* x_22; lean_object* x_23; uint8_t x_24; 
x_22 = l_Lean_Syntax_getArg(x_1, x_18);
lean_dec(x_1);
x_23 = l_Aesop_Frontend_Parser_priority___x25___closed__5;
lean_inc(x_22);
x_24 = l_Lean_Syntax_isOfKind(x_22, x_23);
if (x_24 == 0)
{
lean_object* x_25; 
lean_dec(x_22);
x_25 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(x_10);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_26 = l_Lean_Syntax_toNat(x_22);
lean_dec(x_22);
x_27 = lean_nat_to_int(x_26);
x_28 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_28, 0, x_27);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_10);
return x_29;
}
}
}
else
{
lean_object* x_30; lean_object* x_31; uint8_t x_32; 
lean_dec(x_17);
x_30 = l_Lean_Syntax_getArg(x_1, x_18);
lean_dec(x_1);
x_31 = l_Aesop_Frontend_Parser_priority___x25___closed__5;
lean_inc(x_30);
x_32 = l_Lean_Syntax_isOfKind(x_30, x_31);
if (x_32 == 0)
{
lean_object* x_33; 
lean_dec(x_30);
x_33 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(x_10);
return x_33;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_34 = l_Lean_Syntax_toNat(x_30);
lean_dec(x_30);
x_35 = lean_nat_to_int(x_34);
x_36 = lean_int_neg(x_35);
lean_dec(x_35);
x_37 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_37, 0, x_36);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_10);
return x_38;
}
}
}
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; 
x_39 = lean_unsigned_to_nat(0u);
x_40 = l_Lean_Syntax_getArg(x_1, x_39);
lean_dec(x_1);
x_41 = l_Aesop_Frontend_Parser_priority___x25___closed__5;
lean_inc(x_40);
x_42 = l_Lean_Syntax_isOfKind(x_40, x_41);
if (x_42 == 0)
{
lean_object* x_43; 
lean_dec(x_40);
x_43 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg(x_10);
return x_43;
}
else
{
lean_object* x_44; lean_object* x_45; 
x_44 = l_Lean_Syntax_toNat(x_40);
lean_dec(x_40);
x_45 = l_Aesop_Percent_ofNat(x_44);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_46 = l___private_Init_Data_Repr_0__Nat_reprFast(x_44);
x_47 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_47, 0, x_46);
x_48 = l_Lean_MessageData_ofFormat(x_47);
x_49 = l_Aesop_Frontend_Priority_elab___lambda__1___closed__2;
x_50 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_48);
x_51 = l_Aesop_Frontend_Priority_elab___lambda__1___closed__4;
x_52 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_52, 0, x_50);
lean_ctor_set(x_52, 1, x_51);
x_53 = l_Lean_throwError___at_Aesop_Frontend_Priority_elab___spec__2(x_52, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_53;
}
else
{
uint8_t x_54; 
lean_dec(x_44);
x_54 = !lean_is_exclusive(x_45);
if (x_54 == 0)
{
lean_object* x_55; 
x_55 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_55, 0, x_45);
lean_ctor_set(x_55, 1, x_10);
return x_55;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_45, 0);
lean_inc(x_56);
lean_dec(x_45);
x_57 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_57, 0, x_56);
x_58 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_58, 0, x_57);
lean_ctor_set(x_58, 1, x_10);
return x_58;
}
}
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_Priority_elab___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unexpected priority.", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Priority_elab___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Priority_elab___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = !lean_is_exclusive(x_7);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_11 = lean_ctor_get(x_7, 5);
x_12 = l_Lean_replaceRef(x_1, x_11);
lean_dec(x_11);
lean_ctor_set(x_7, 5, x_12);
x_13 = l_Aesop_shouldParsePriorities(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_unbox(x_14);
lean_dec(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
lean_dec(x_1);
x_16 = lean_ctor_get(x_13, 1);
lean_inc(x_16);
lean_dec(x_13);
x_17 = l_Aesop_Frontend_Priority_elab___closed__2;
x_18 = l_Lean_throwError___at_Aesop_RuleBuilder_cases___spec__1(x_17, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_16);
lean_dec(x_7);
x_19 = !lean_is_exclusive(x_18);
if (x_19 == 0)
{
return x_18;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_18, 0);
x_21 = lean_ctor_get(x_18, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_18);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_13, 1);
lean_inc(x_23);
lean_dec(x_13);
x_24 = lean_box(0);
x_25 = l_Aesop_Frontend_Priority_elab___lambda__1(x_1, x_24, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_23);
lean_dec(x_7);
return x_25;
}
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; uint8_t x_37; lean_object* x_38; uint8_t x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; uint8_t x_44; 
x_26 = lean_ctor_get(x_7, 0);
x_27 = lean_ctor_get(x_7, 1);
x_28 = lean_ctor_get(x_7, 2);
x_29 = lean_ctor_get(x_7, 3);
x_30 = lean_ctor_get(x_7, 4);
x_31 = lean_ctor_get(x_7, 5);
x_32 = lean_ctor_get(x_7, 6);
x_33 = lean_ctor_get(x_7, 7);
x_34 = lean_ctor_get(x_7, 8);
x_35 = lean_ctor_get(x_7, 9);
x_36 = lean_ctor_get(x_7, 10);
x_37 = lean_ctor_get_uint8(x_7, sizeof(void*)*12);
x_38 = lean_ctor_get(x_7, 11);
x_39 = lean_ctor_get_uint8(x_7, sizeof(void*)*12 + 1);
lean_inc(x_38);
lean_inc(x_36);
lean_inc(x_35);
lean_inc(x_34);
lean_inc(x_33);
lean_inc(x_32);
lean_inc(x_31);
lean_inc(x_30);
lean_inc(x_29);
lean_inc(x_28);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_7);
x_40 = l_Lean_replaceRef(x_1, x_31);
lean_dec(x_31);
x_41 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_41, 0, x_26);
lean_ctor_set(x_41, 1, x_27);
lean_ctor_set(x_41, 2, x_28);
lean_ctor_set(x_41, 3, x_29);
lean_ctor_set(x_41, 4, x_30);
lean_ctor_set(x_41, 5, x_40);
lean_ctor_set(x_41, 6, x_32);
lean_ctor_set(x_41, 7, x_33);
lean_ctor_set(x_41, 8, x_34);
lean_ctor_set(x_41, 9, x_35);
lean_ctor_set(x_41, 10, x_36);
lean_ctor_set(x_41, 11, x_38);
lean_ctor_set_uint8(x_41, sizeof(void*)*12, x_37);
lean_ctor_set_uint8(x_41, sizeof(void*)*12 + 1, x_39);
x_42 = l_Aesop_shouldParsePriorities(x_2, x_3, x_4, x_5, x_6, x_41, x_8, x_9);
x_43 = lean_ctor_get(x_42, 0);
lean_inc(x_43);
x_44 = lean_unbox(x_43);
lean_dec(x_43);
if (x_44 == 0)
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; 
lean_dec(x_1);
x_45 = lean_ctor_get(x_42, 1);
lean_inc(x_45);
lean_dec(x_42);
x_46 = l_Aesop_Frontend_Priority_elab___closed__2;
x_47 = l_Lean_throwError___at_Aesop_RuleBuilder_cases___spec__1(x_46, x_2, x_3, x_4, x_5, x_6, x_41, x_8, x_45);
lean_dec(x_41);
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
if (lean_is_scalar(x_50)) {
 x_51 = lean_alloc_ctor(1, 2, 0);
} else {
 x_51 = x_50;
}
lean_ctor_set(x_51, 0, x_48);
lean_ctor_set(x_51, 1, x_49);
return x_51;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_42, 1);
lean_inc(x_52);
lean_dec(x_42);
x_53 = lean_box(0);
x_54 = l_Aesop_Frontend_Priority_elab___lambda__1(x_1, x_53, x_2, x_3, x_4, x_5, x_6, x_41, x_8, x_52);
lean_dec(x_41);
return x_54;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_Priority_elab___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_Priority_elab___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_Priority_elab___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_elab___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_Priority_elab(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_instToString(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; lean_object* x_3; uint8_t x_4; 
x_2 = lean_ctor_get(x_1, 0);
lean_inc(x_2);
lean_dec(x_1);
x_3 = l_Aesop_Frontend_instInhabitedPriority___closed__1;
x_4 = lean_int_dec_lt(x_2, x_3);
if (x_4 == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = lean_nat_abs(x_2);
lean_dec(x_2);
x_6 = l___private_Init_Data_Repr_0__Nat_reprFast(x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_7 = lean_nat_abs(x_2);
lean_dec(x_2);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_7, x_8);
lean_dec(x_7);
x_10 = lean_nat_add(x_9, x_8);
lean_dec(x_9);
x_11 = l___private_Init_Data_Repr_0__Nat_reprFast(x_10);
x_12 = l_Aesop_Frontend_Parser_priority_x2d_____closed__5;
x_13 = lean_string_append(x_12, x_11);
lean_dec(x_11);
return x_13;
}
}
else
{
lean_object* x_14; double x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_1, 0);
lean_inc(x_14);
lean_dec(x_1);
x_15 = lean_unbox_float(x_14);
lean_dec(x_14);
x_16 = l_Aesop_Percent_toHumanString(x_15);
return x_16;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_toInt_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_ctor_set_tag(x_1, 1);
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
else
{
lean_object* x_5; 
lean_dec(x_1);
x_5 = lean_box(0);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Priority_toPercent_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
lean_dec(x_1);
x_2 = lean_box(0);
return x_2;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
return x_1;
}
else
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec(x_1);
x_5 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5, 0, x_4);
return x_5;
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("phase", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(phase| ", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_phase_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__10;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_phase() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseSafe___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("phaseSafe", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseSafe___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_phaseSafe___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseSafe___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("safe", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseSafe___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_phaseSafe___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseSafe___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_phaseSafe___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_phaseSafe___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseSafe() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_phaseSafe___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseNorm___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("phaseNorm", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseNorm___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_phaseNorm___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseNorm___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("norm", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseNorm___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_phaseNorm___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseNorm___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_phaseNorm___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_phaseNorm___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseNorm() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_phaseNorm___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("phaseUnsafe", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unsafe", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_phaseUnsafe() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__5;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_PhaseName_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_Aesop_Frontend_Parser_phaseSafe___closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = l_Aesop_Frontend_Parser_phaseNorm___closed__2;
lean_inc(x_1);
x_13 = l_Lean_Syntax_isOfKind(x_1, x_12);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__2;
x_15 = l_Lean_Syntax_isOfKind(x_1, x_14);
if (x_15 == 0)
{
lean_object* x_16; 
x_16 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1___rarg(x_9);
return x_16;
}
else
{
uint8_t x_17; lean_object* x_18; lean_object* x_19; 
x_17 = 2;
x_18 = lean_box(x_17);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_9);
return x_19;
}
}
else
{
uint8_t x_20; lean_object* x_21; lean_object* x_22; 
lean_dec(x_1);
x_20 = 0;
x_21 = lean_box(x_20);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_9);
return x_22;
}
}
else
{
uint8_t x_23; lean_object* x_24; lean_object* x_25; 
lean_dec(x_1);
x_23 = 1;
x_24 = lean_box(x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_9);
return x_25;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_PhaseName_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_PhaseName_elab___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_PhaseName_elab(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_name", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(builder_name| ", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__10;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_builder__name() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameApply", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameApply___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("apply", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameApply___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameApply___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameApply___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameApply() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameApply___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameSimp", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("simp", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameSimp() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameUnfold", 18, 18);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unfold", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameUnfold() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameTactic", 18, 18);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("tactic", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameTactic() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameConstructors", 24, 24);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("constructors", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameConstructors() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameForward", 19, 19);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameForward___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("forward", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameForward___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameForward___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameForward___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameForward() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameForward___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameDestruct", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("destruct", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDestruct() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameCases", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameCases___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("cases", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameCases___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameCases___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameCases___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameCases() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameCases___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_nameDefault", 19, 19);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("default", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__nameDefault() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__5;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedDBuilderName___closed__1() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 0;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedDBuilderName() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_instInhabitedDBuilderName___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__1() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 1;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__2() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 3;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__3() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 4;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__4() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 2;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__5() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 6;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__6() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 7;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_DBuilderName_elab___closed__7() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 5;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_Aesop_Frontend_Parser_builder__nameApply___closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__2;
lean_inc(x_1);
x_13 = l_Lean_Syntax_isOfKind(x_1, x_12);
if (x_13 == 0)
{
lean_object* x_14; uint8_t x_15; 
x_14 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2;
lean_inc(x_1);
x_15 = l_Lean_Syntax_isOfKind(x_1, x_14);
if (x_15 == 0)
{
lean_object* x_16; uint8_t x_17; 
x_16 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__2;
lean_inc(x_1);
x_17 = l_Lean_Syntax_isOfKind(x_1, x_16);
if (x_17 == 0)
{
lean_object* x_18; uint8_t x_19; 
x_18 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2;
lean_inc(x_1);
x_19 = l_Lean_Syntax_isOfKind(x_1, x_18);
if (x_19 == 0)
{
lean_object* x_20; uint8_t x_21; 
x_20 = l_Aesop_Frontend_Parser_builder__nameForward___closed__2;
lean_inc(x_1);
x_21 = l_Lean_Syntax_isOfKind(x_1, x_20);
if (x_21 == 0)
{
lean_object* x_22; uint8_t x_23; 
x_22 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2;
lean_inc(x_1);
x_23 = l_Lean_Syntax_isOfKind(x_1, x_22);
if (x_23 == 0)
{
lean_object* x_24; uint8_t x_25; 
x_24 = l_Aesop_Frontend_Parser_builder__nameCases___closed__2;
lean_inc(x_1);
x_25 = l_Lean_Syntax_isOfKind(x_1, x_24);
if (x_25 == 0)
{
lean_object* x_26; uint8_t x_27; 
x_26 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__2;
x_27 = l_Lean_Syntax_isOfKind(x_1, x_26);
if (x_27 == 0)
{
lean_object* x_28; 
x_28 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1___rarg(x_9);
return x_28;
}
else
{
lean_object* x_29; lean_object* x_30; 
x_29 = lean_box(1);
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_29);
lean_ctor_set(x_30, 1, x_9);
return x_30;
}
}
else
{
lean_object* x_31; lean_object* x_32; 
lean_dec(x_1);
x_31 = l_Aesop_Frontend_DBuilderName_elab___closed__1;
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_9);
return x_32;
}
}
else
{
lean_object* x_33; lean_object* x_34; 
lean_dec(x_1);
x_33 = l_Aesop_Frontend_DBuilderName_elab___closed__2;
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_9);
return x_34;
}
}
else
{
lean_object* x_35; lean_object* x_36; 
lean_dec(x_1);
x_35 = l_Aesop_Frontend_DBuilderName_elab___closed__3;
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_9);
return x_36;
}
}
else
{
lean_object* x_37; lean_object* x_38; 
lean_dec(x_1);
x_37 = l_Aesop_Frontend_DBuilderName_elab___closed__4;
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_9);
return x_38;
}
}
else
{
lean_object* x_39; lean_object* x_40; 
lean_dec(x_1);
x_39 = l_Aesop_Frontend_DBuilderName_elab___closed__5;
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_39);
lean_ctor_set(x_40, 1, x_9);
return x_40;
}
}
else
{
lean_object* x_41; lean_object* x_42; 
lean_dec(x_1);
x_41 = l_Aesop_Frontend_DBuilderName_elab___closed__6;
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_41);
lean_ctor_set(x_42, 1, x_9);
return x_42;
}
}
else
{
lean_object* x_43; lean_object* x_44; 
lean_dec(x_1);
x_43 = l_Aesop_Frontend_DBuilderName_elab___closed__7;
x_44 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_44, 0, x_43);
lean_ctor_set(x_44, 1, x_9);
return x_44;
}
}
else
{
lean_object* x_45; lean_object* x_46; 
lean_dec(x_1);
x_45 = l_Aesop_Frontend_instInhabitedDBuilderName___closed__1;
x_46 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_9);
return x_46;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_DBuilderName_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_elab___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_DBuilderName_elab(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_instToString(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; 
x_2 = lean_ctor_get_uint8(x_1, 0);
switch (x_2) {
case 0:
{
lean_object* x_3; 
x_3 = l_Aesop_Frontend_Parser_builder__nameApply___closed__3;
return x_3;
}
case 1:
{
lean_object* x_4; 
x_4 = l_Aesop_Frontend_Parser_builder__nameCases___closed__3;
return x_4;
}
case 2:
{
lean_object* x_5; 
x_5 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3;
return x_5;
}
case 3:
{
lean_object* x_6; 
x_6 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3;
return x_6;
}
case 4:
{
lean_object* x_7; 
x_7 = l_Aesop_Frontend_Parser_builder__nameForward___closed__3;
return x_7;
}
case 5:
{
lean_object* x_8; 
x_8 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__3;
return x_8;
}
case 6:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__3;
return x_9;
}
default: 
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3;
return x_10;
}
}
}
else
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__3;
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_instToString___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Frontend_DBuilderName_instToString(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toBuilderName_x3f(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lean_ctor_get_uint8(x_1, 0);
x_3 = lean_box(x_2);
x_4 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
else
{
lean_object* x_5; 
x_5 = lean_box(0);
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toBuilderName_x3f___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Frontend_DBuilderName_toBuilderName_x3f(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toRuleBuilder(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
uint8_t x_11; 
x_11 = lean_ctor_get_uint8(x_1, 0);
switch (x_11) {
case 0:
{
lean_object* x_12; 
x_12 = l_Aesop_RuleBuilder_apply(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
case 1:
{
lean_object* x_13; 
x_13 = l_Aesop_RuleBuilder_cases(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
return x_13;
}
case 2:
{
lean_object* x_14; 
x_14 = l_Aesop_RuleBuilder_constructors(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
return x_14;
}
case 3:
{
uint8_t x_15; lean_object* x_16; 
x_15 = 1;
x_16 = l_Aesop_RuleBuilder_forward(x_15, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_16;
}
case 4:
{
uint8_t x_17; lean_object* x_18; 
x_17 = 0;
x_18 = l_Aesop_RuleBuilder_forward(x_17, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_18;
}
case 5:
{
lean_object* x_19; 
x_19 = l_Aesop_RuleBuilder_simp(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_19;
}
case 6:
{
lean_object* x_20; 
x_20 = l_Aesop_RuleBuilder_tactic(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
return x_20;
}
default: 
{
lean_object* x_21; 
x_21 = l_Aesop_RuleBuilder_unfold(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_3);
return x_21;
}
}
}
else
{
lean_object* x_22; 
x_22 = l_Aesop_RuleBuilder_default(x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_22;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_DBuilderName_toRuleBuilder___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_DBuilderName_toRuleBuilder(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_1);
return x_11;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("indexing_mode", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(indexing_mode| ", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__10;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_indexing__mode() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("indexing_modeTarget_", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("target ", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("term", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__6;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__4;
x_3 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeTarget__() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__9;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("indexing_modeHyp_", 17, 17);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("hyp ", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__4;
x_3 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__5;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeHyp__() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__6;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("indexing_modeUnindexed", 22, 22);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unindexed ", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__4;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__5;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_withoutModifyingState___at_Aesop_Frontend_elabSingleIndexingMode_elabKeys___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = l_Lean_Elab_Term_saveState___rarg(x_3, x_4, x_5, x_6, x_7, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_12 = lean_apply_7(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_11);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; uint8_t x_17; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = 0;
x_16 = l_Lean_Elab_Term_SavedState_restore(x_10, x_15, x_2, x_3, x_4, x_5, x_6, x_7, x_14);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_16, 0);
lean_dec(x_18);
lean_ctor_set(x_16, 0, x_13);
return x_16;
}
else
{
lean_object* x_19; lean_object* x_20; 
x_19 = lean_ctor_get(x_16, 1);
lean_inc(x_19);
lean_dec(x_16);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_13);
lean_ctor_set(x_20, 1, x_19);
return x_20;
}
}
else
{
lean_object* x_21; lean_object* x_22; uint8_t x_23; lean_object* x_24; uint8_t x_25; 
x_21 = lean_ctor_get(x_12, 0);
lean_inc(x_21);
x_22 = lean_ctor_get(x_12, 1);
lean_inc(x_22);
lean_dec(x_12);
x_23 = 0;
x_24 = l_Lean_Elab_Term_SavedState_restore(x_10, x_23, x_2, x_3, x_4, x_5, x_6, x_7, x_22);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; 
x_26 = lean_ctor_get(x_24, 0);
lean_dec(x_26);
lean_ctor_set_tag(x_24, 1);
lean_ctor_set(x_24, 0, x_21);
return x_24;
}
else
{
lean_object* x_27; lean_object* x_28; 
x_27 = lean_ctor_get(x_24, 1);
lean_inc(x_27);
lean_dec(x_24);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_21);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode_elabKeys___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_9 = l_Aesop_elabPattern(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; lean_object* x_17; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = l_Lean_instantiateMVars___at_Lean_Elab_Term_MVarErrorInfo_logError___spec__1(x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_11);
lean_dec(x_3);
lean_dec(x_2);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = l_Aesop_discrTreeConfig;
x_16 = 0;
x_17 = l_Lean_Meta_DiscrTree_mkPath(x_13, x_15, x_16, x_4, x_5, x_6, x_7, x_14);
return x_17;
}
else
{
uint8_t x_18; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_18 = !lean_is_exclusive(x_9);
if (x_18 == 0)
{
return x_9;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_9, 0);
x_20 = lean_ctor_get(x_9, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_9);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_alloc_closure((void*)(l_Aesop_Frontend_elabSingleIndexingMode_elabKeys___lambda__1), 8, 1);
lean_closure_set(x_10, 0, x_1);
x_11 = l_Lean_withoutModifyingState___at_Aesop_Frontend_elabSingleIndexingMode_elabKeys___spec__1(x_10, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode_elabKeys___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; uint8_t x_12; 
x_10 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
x_12 = !lean_is_exclusive(x_7);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_7, 5);
x_14 = l_Lean_replaceRef(x_1, x_13);
lean_dec(x_13);
lean_ctor_set(x_7, 5, x_14);
if (x_11 == 0)
{
lean_object* x_15; uint8_t x_16; 
x_15 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2;
lean_inc(x_1);
x_16 = l_Lean_Syntax_isOfKind(x_1, x_15);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_17 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2;
x_18 = l_Lean_Syntax_isOfKind(x_1, x_17);
if (x_18 == 0)
{
lean_object* x_19; 
x_19 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___rarg(x_9);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_box(0);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_9);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_unsigned_to_nat(1u);
x_23 = l_Lean_Syntax_getArg(x_1, x_22);
lean_dec(x_1);
x_24 = l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(x_23, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_24) == 0)
{
uint8_t x_25; 
x_25 = !lean_is_exclusive(x_24);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_24, 0);
x_27 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_24, 0, x_27);
return x_24;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_28 = lean_ctor_get(x_24, 0);
x_29 = lean_ctor_get(x_24, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_24);
x_30 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_30, 0, x_28);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_29);
return x_31;
}
}
else
{
uint8_t x_32; 
x_32 = !lean_is_exclusive(x_24);
if (x_32 == 0)
{
return x_24;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_24, 0);
x_34 = lean_ctor_get(x_24, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_24);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_unsigned_to_nat(1u);
x_37 = l_Lean_Syntax_getArg(x_1, x_36);
lean_dec(x_1);
x_38 = l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(x_37, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_38) == 0)
{
uint8_t x_39; 
x_39 = !lean_is_exclusive(x_38);
if (x_39 == 0)
{
lean_object* x_40; lean_object* x_41; 
x_40 = lean_ctor_get(x_38, 0);
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_38, 0, x_41);
return x_38;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_42 = lean_ctor_get(x_38, 0);
x_43 = lean_ctor_get(x_38, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_38);
x_44 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_44, 0, x_42);
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_44);
lean_ctor_set(x_45, 1, x_43);
return x_45;
}
}
else
{
uint8_t x_46; 
x_46 = !lean_is_exclusive(x_38);
if (x_46 == 0)
{
return x_38;
}
else
{
lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_47 = lean_ctor_get(x_38, 0);
x_48 = lean_ctor_get(x_38, 1);
lean_inc(x_48);
lean_inc(x_47);
lean_dec(x_38);
x_49 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
return x_49;
}
}
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; uint8_t x_61; lean_object* x_62; uint8_t x_63; lean_object* x_64; lean_object* x_65; 
x_50 = lean_ctor_get(x_7, 0);
x_51 = lean_ctor_get(x_7, 1);
x_52 = lean_ctor_get(x_7, 2);
x_53 = lean_ctor_get(x_7, 3);
x_54 = lean_ctor_get(x_7, 4);
x_55 = lean_ctor_get(x_7, 5);
x_56 = lean_ctor_get(x_7, 6);
x_57 = lean_ctor_get(x_7, 7);
x_58 = lean_ctor_get(x_7, 8);
x_59 = lean_ctor_get(x_7, 9);
x_60 = lean_ctor_get(x_7, 10);
x_61 = lean_ctor_get_uint8(x_7, sizeof(void*)*12);
x_62 = lean_ctor_get(x_7, 11);
x_63 = lean_ctor_get_uint8(x_7, sizeof(void*)*12 + 1);
lean_inc(x_62);
lean_inc(x_60);
lean_inc(x_59);
lean_inc(x_58);
lean_inc(x_57);
lean_inc(x_56);
lean_inc(x_55);
lean_inc(x_54);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_dec(x_7);
x_64 = l_Lean_replaceRef(x_1, x_55);
lean_dec(x_55);
x_65 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_65, 0, x_50);
lean_ctor_set(x_65, 1, x_51);
lean_ctor_set(x_65, 2, x_52);
lean_ctor_set(x_65, 3, x_53);
lean_ctor_set(x_65, 4, x_54);
lean_ctor_set(x_65, 5, x_64);
lean_ctor_set(x_65, 6, x_56);
lean_ctor_set(x_65, 7, x_57);
lean_ctor_set(x_65, 8, x_58);
lean_ctor_set(x_65, 9, x_59);
lean_ctor_set(x_65, 10, x_60);
lean_ctor_set(x_65, 11, x_62);
lean_ctor_set_uint8(x_65, sizeof(void*)*12, x_61);
lean_ctor_set_uint8(x_65, sizeof(void*)*12 + 1, x_63);
if (x_11 == 0)
{
lean_object* x_66; uint8_t x_67; 
x_66 = l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2;
lean_inc(x_1);
x_67 = l_Lean_Syntax_isOfKind(x_1, x_66);
if (x_67 == 0)
{
lean_object* x_68; uint8_t x_69; 
lean_dec(x_65);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_68 = l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2;
x_69 = l_Lean_Syntax_isOfKind(x_1, x_68);
if (x_69 == 0)
{
lean_object* x_70; 
x_70 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___rarg(x_9);
return x_70;
}
else
{
lean_object* x_71; lean_object* x_72; 
x_71 = lean_box(0);
x_72 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_9);
return x_72;
}
}
else
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_73 = lean_unsigned_to_nat(1u);
x_74 = l_Lean_Syntax_getArg(x_1, x_73);
lean_dec(x_1);
x_75 = l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(x_74, x_2, x_3, x_4, x_5, x_6, x_65, x_8, x_9);
if (lean_obj_tag(x_75) == 0)
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; 
x_76 = lean_ctor_get(x_75, 0);
lean_inc(x_76);
x_77 = lean_ctor_get(x_75, 1);
lean_inc(x_77);
if (lean_is_exclusive(x_75)) {
 lean_ctor_release(x_75, 0);
 lean_ctor_release(x_75, 1);
 x_78 = x_75;
} else {
 lean_dec_ref(x_75);
 x_78 = lean_box(0);
}
x_79 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_79, 0, x_76);
if (lean_is_scalar(x_78)) {
 x_80 = lean_alloc_ctor(0, 2, 0);
} else {
 x_80 = x_78;
}
lean_ctor_set(x_80, 0, x_79);
lean_ctor_set(x_80, 1, x_77);
return x_80;
}
else
{
lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_81 = lean_ctor_get(x_75, 0);
lean_inc(x_81);
x_82 = lean_ctor_get(x_75, 1);
lean_inc(x_82);
if (lean_is_exclusive(x_75)) {
 lean_ctor_release(x_75, 0);
 lean_ctor_release(x_75, 1);
 x_83 = x_75;
} else {
 lean_dec_ref(x_75);
 x_83 = lean_box(0);
}
if (lean_is_scalar(x_83)) {
 x_84 = lean_alloc_ctor(1, 2, 0);
} else {
 x_84 = x_83;
}
lean_ctor_set(x_84, 0, x_81);
lean_ctor_set(x_84, 1, x_82);
return x_84;
}
}
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_85 = lean_unsigned_to_nat(1u);
x_86 = l_Lean_Syntax_getArg(x_1, x_85);
lean_dec(x_1);
x_87 = l_Aesop_Frontend_elabSingleIndexingMode_elabKeys(x_86, x_2, x_3, x_4, x_5, x_6, x_65, x_8, x_9);
if (lean_obj_tag(x_87) == 0)
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; 
x_88 = lean_ctor_get(x_87, 0);
lean_inc(x_88);
x_89 = lean_ctor_get(x_87, 1);
lean_inc(x_89);
if (lean_is_exclusive(x_87)) {
 lean_ctor_release(x_87, 0);
 lean_ctor_release(x_87, 1);
 x_90 = x_87;
} else {
 lean_dec_ref(x_87);
 x_90 = lean_box(0);
}
x_91 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_91, 0, x_88);
if (lean_is_scalar(x_90)) {
 x_92 = lean_alloc_ctor(0, 2, 0);
} else {
 x_92 = x_90;
}
lean_ctor_set(x_92, 0, x_91);
lean_ctor_set(x_92, 1, x_89);
return x_92;
}
else
{
lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; 
x_93 = lean_ctor_get(x_87, 0);
lean_inc(x_93);
x_94 = lean_ctor_get(x_87, 1);
lean_inc(x_94);
if (lean_is_exclusive(x_87)) {
 lean_ctor_release(x_87, 0);
 lean_ctor_release(x_87, 1);
 x_95 = x_87;
} else {
 lean_dec_ref(x_87);
 x_95 = lean_box(0);
}
if (lean_is_scalar(x_95)) {
 x_96 = lean_alloc_ctor(1, 2, 0);
} else {
 x_96 = x_95;
}
lean_ctor_set(x_96, 0, x_93);
lean_ctor_set(x_96, 1, x_94);
return x_96;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabSingleIndexingMode___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabSingleIndexingMode___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_elabSingleIndexingMode(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_IndexingMode_elab___spec__1(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_2, x_1);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_array_uget(x_3, x_2);
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_array_uset(x_3, x_2, x_15);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_17 = l_Aesop_Frontend_elabSingleIndexingMode(x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_22 = lean_array_uset(x_16, x_2, x_18);
x_2 = x_21;
x_3 = x_22;
x_11 = x_19;
goto _start;
}
else
{
uint8_t x_24; 
lean_dec(x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
return x_17;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_17, 0);
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_17);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_IndexingMode_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_array_size(x_1);
x_11 = 0;
x_12 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_IndexingMode_elab___spec__1(x_10, x_11, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_12, 0, x_15);
return x_12;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_16 = lean_ctor_get(x_12, 0);
x_17 = lean_ctor_get(x_12, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_12);
x_18 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_18, 0, x_16);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
return x_19;
}
}
else
{
uint8_t x_20; 
x_20 = !lean_is_exclusive(x_12);
if (x_20 == 0)
{
return x_12;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_12, 0);
x_22 = lean_ctor_get(x_12, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_12);
x_23 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_IndexingMode_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_IndexingMode_elab___spec__1(x_12, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_4);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_IndexingMode_elab___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_IndexingMode_elab(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_CasesPattern_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_9 = l_Aesop_elabPattern(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = 1;
x_13 = l_Lean_Meta_abstractMVars(x_10, x_12, x_4, x_5, x_6, x_7, x_11);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_13;
}
else
{
uint8_t x_14; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_14 = !lean_is_exclusive(x_9);
if (x_14 == 0)
{
return x_9;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_15 = lean_ctor_get(x_9, 0);
x_16 = lean_ctor_get(x_9, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_9);
x_17 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_17, 0, x_15);
lean_ctor_set(x_17, 1, x_16);
return x_17;
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("transparency", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_transparency___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("orelse", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_transparency___closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("token", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__5;
x_2 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__3;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__3;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__6;
x_3 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__4;
x_4 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("reducible", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__5;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__8;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__10() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__8;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__8;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__9;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__10;
x_4 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("instances", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__5;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__12;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__14() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__12;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__12;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__13;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__14;
x_4 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("all", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__5;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__16;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__18() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__16;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__16;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__17;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__18;
x_4 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__4;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__15;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__19;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__4;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__11;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__20;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__22() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__4;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__7;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__21;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency___closed__23() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__1;
x_2 = l_Aesop_Frontend_Parser_transparency___closed__2;
x_3 = l_Aesop_Frontend_Parser_transparency___closed__22;
x_4 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_transparency() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__23;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___rarg), 1, 0);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabTransparency(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; 
x_9 = l_Aesop_Frontend_Parser_transparency___closed__2;
lean_inc(x_1);
x_10 = l_Lean_Syntax_isOfKind(x_1, x_9);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_1);
x_11 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___rarg(x_8);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; 
x_12 = lean_unsigned_to_nat(0u);
x_13 = l_Lean_Syntax_getArg(x_1, x_12);
lean_dec(x_1);
x_14 = l_Aesop_Frontend_Parser_transparency___closed__6;
lean_inc(x_13);
x_15 = l_Lean_Syntax_isOfKind(x_13, x_14);
if (x_15 == 0)
{
lean_object* x_16; uint8_t x_17; 
x_16 = l_Aesop_Frontend_Parser_transparency___closed__9;
lean_inc(x_13);
x_17 = l_Lean_Syntax_isOfKind(x_13, x_16);
if (x_17 == 0)
{
lean_object* x_18; uint8_t x_19; 
x_18 = l_Aesop_Frontend_Parser_transparency___closed__13;
lean_inc(x_13);
x_19 = l_Lean_Syntax_isOfKind(x_13, x_18);
if (x_19 == 0)
{
lean_object* x_20; uint8_t x_21; 
x_20 = l_Aesop_Frontend_Parser_transparency___closed__17;
x_21 = l_Lean_Syntax_isOfKind(x_13, x_20);
if (x_21 == 0)
{
lean_object* x_22; 
x_22 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___rarg(x_8);
return x_22;
}
else
{
uint8_t x_23; lean_object* x_24; lean_object* x_25; 
x_23 = 0;
x_24 = lean_box(x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_8);
return x_25;
}
}
else
{
uint8_t x_26; lean_object* x_27; lean_object* x_28; 
lean_dec(x_13);
x_26 = 3;
x_27 = lean_box(x_26);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_8);
return x_28;
}
}
else
{
uint8_t x_29; lean_object* x_30; lean_object* x_31; 
lean_dec(x_13);
x_29 = 2;
x_30 = lean_box(x_29);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_8);
return x_31;
}
}
else
{
uint8_t x_32; lean_object* x_33; lean_object* x_34; 
lean_dec(x_13);
x_32 = 1;
x_33 = lean_box(x_32);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_33);
lean_ctor_set(x_34, 1, x_8);
return x_34;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_elabTransparency___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_elabTransparency___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_elabTransparency(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_9;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(builder_option| ", 18, 18);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__10;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_builder__option() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option(Immediate:=[_])", 30, 30);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" (", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("immediate", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__6() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__5;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__6;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" := ", 4, 4);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__8;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__7;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__11() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("[", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__11;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__10;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__14() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ident", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__14;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(", ", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__17;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(",", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18;
x_4 = 1;
x_5 = lean_alloc_ctor(11, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__13;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__22() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("]", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__22;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__24() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__21;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__25() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__24;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__26() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__25;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__26;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option(Index:=[_])", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("index", 5, 5);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__4;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__5;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__6;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18;
x_4 = 1;
x_5 = lean_alloc_ctor(11, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__7;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__8;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__9;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__10;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__11;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__12;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option(Pattern:=_)", 26, 26);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("pattern", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__4;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__5;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__6;
x_3 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__7;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__9;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option(Cases_patterns:=[_])", 35, 35);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("cases_patterns", 14, 14);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__4;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__5;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__6;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18;
x_4 = 1;
x_5 = lean_alloc_ctor(11, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__7;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__8;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__9;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__10;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__11;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__12;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option(Transparency:=_)", 31, 31);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_transparency___closed__1;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__3;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__5;
x_3 = l_Aesop_Frontend_Parser_transparency;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__7;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__8;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("builder_option(Transparency!:=_)", 32, 32);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("transparency!", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__4() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__4;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__5;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__6;
x_3 = l_Aesop_Frontend_Parser_transparency;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__7;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__9;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_2, x_1);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_array_uget(x_3, x_2);
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_array_uset(x_3, x_2, x_15);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_17 = l_Aesop_Frontend_CasesPattern_elab(x_14, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_22 = lean_array_uset(x_16, x_2, x_18);
x_2 = x_21;
x_3 = x_22;
x_11 = x_19;
goto _start;
}
else
{
uint8_t x_24; 
lean_dec(x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
return x_17;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_17, 0);
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_17);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_BuilderOption_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_7);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_7, 5);
x_14 = l_Lean_replaceRef(x_1, x_13);
lean_dec(x_13);
lean_ctor_set(x_7, 5, x_14);
x_15 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2;
lean_inc(x_1);
x_16 = l_Lean_Syntax_isOfKind(x_1, x_15);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2;
lean_inc(x_1);
x_18 = l_Lean_Syntax_isOfKind(x_1, x_17);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2;
lean_inc(x_1);
x_20 = l_Lean_Syntax_isOfKind(x_1, x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2;
lean_inc(x_1);
x_22 = l_Lean_Syntax_isOfKind(x_1, x_21);
if (x_22 == 0)
{
lean_object* x_23; uint8_t x_24; 
x_23 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2;
lean_inc(x_1);
x_24 = l_Lean_Syntax_isOfKind(x_1, x_23);
if (x_24 == 0)
{
lean_object* x_25; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_25 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___rarg(x_9);
return x_25;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_unsigned_to_nat(3u);
x_27 = l_Lean_Syntax_getArg(x_1, x_26);
lean_dec(x_1);
x_28 = l_Aesop_Frontend_elabTransparency(x_27, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_28) == 0)
{
uint8_t x_29; 
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; uint8_t x_31; lean_object* x_32; uint8_t x_33; 
x_30 = lean_ctor_get(x_28, 0);
x_31 = 1;
x_32 = lean_alloc_ctor(4, 0, 2);
x_33 = lean_unbox(x_30);
lean_dec(x_30);
lean_ctor_set_uint8(x_32, 0, x_33);
lean_ctor_set_uint8(x_32, 1, x_31);
lean_ctor_set(x_28, 0, x_32);
return x_28;
}
else
{
lean_object* x_34; lean_object* x_35; uint8_t x_36; lean_object* x_37; uint8_t x_38; lean_object* x_39; 
x_34 = lean_ctor_get(x_28, 0);
x_35 = lean_ctor_get(x_28, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_28);
x_36 = 1;
x_37 = lean_alloc_ctor(4, 0, 2);
x_38 = lean_unbox(x_34);
lean_dec(x_34);
lean_ctor_set_uint8(x_37, 0, x_38);
lean_ctor_set_uint8(x_37, 1, x_36);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_37);
lean_ctor_set(x_39, 1, x_35);
return x_39;
}
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_28);
if (x_40 == 0)
{
return x_28;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_28, 0);
x_42 = lean_ctor_get(x_28, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_28);
x_43 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
}
}
else
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_44 = lean_unsigned_to_nat(3u);
x_45 = l_Lean_Syntax_getArg(x_1, x_44);
lean_dec(x_1);
x_46 = l_Aesop_Frontend_elabTransparency(x_45, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_46) == 0)
{
uint8_t x_47; 
x_47 = !lean_is_exclusive(x_46);
if (x_47 == 0)
{
lean_object* x_48; uint8_t x_49; lean_object* x_50; uint8_t x_51; 
x_48 = lean_ctor_get(x_46, 0);
x_49 = 0;
x_50 = lean_alloc_ctor(4, 0, 2);
x_51 = lean_unbox(x_48);
lean_dec(x_48);
lean_ctor_set_uint8(x_50, 0, x_51);
lean_ctor_set_uint8(x_50, 1, x_49);
lean_ctor_set(x_46, 0, x_50);
return x_46;
}
else
{
lean_object* x_52; lean_object* x_53; uint8_t x_54; lean_object* x_55; uint8_t x_56; lean_object* x_57; 
x_52 = lean_ctor_get(x_46, 0);
x_53 = lean_ctor_get(x_46, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_46);
x_54 = 0;
x_55 = lean_alloc_ctor(4, 0, 2);
x_56 = lean_unbox(x_52);
lean_dec(x_52);
lean_ctor_set_uint8(x_55, 0, x_56);
lean_ctor_set_uint8(x_55, 1, x_54);
x_57 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_57, 0, x_55);
lean_ctor_set(x_57, 1, x_53);
return x_57;
}
}
else
{
uint8_t x_58; 
x_58 = !lean_is_exclusive(x_46);
if (x_58 == 0)
{
return x_46;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_59 = lean_ctor_get(x_46, 0);
x_60 = lean_ctor_get(x_46, 1);
lean_inc(x_60);
lean_inc(x_59);
lean_dec(x_46);
x_61 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
return x_61;
}
}
}
}
else
{
lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; size_t x_66; size_t x_67; lean_object* x_68; 
x_62 = lean_unsigned_to_nat(4u);
x_63 = l_Lean_Syntax_getArg(x_1, x_62);
lean_dec(x_1);
x_64 = l_Lean_Syntax_getArgs(x_63);
lean_dec(x_63);
x_65 = l_Lean_Syntax_TSepArray_getElems___rarg(x_64);
lean_dec(x_64);
x_66 = lean_array_size(x_65);
x_67 = 0;
x_68 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2(x_66, x_67, x_65, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_68) == 0)
{
uint8_t x_69; 
x_69 = !lean_is_exclusive(x_68);
if (x_69 == 0)
{
lean_object* x_70; lean_object* x_71; 
x_70 = lean_ctor_get(x_68, 0);
x_71 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_71, 0, x_70);
lean_ctor_set(x_68, 0, x_71);
return x_68;
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_72 = lean_ctor_get(x_68, 0);
x_73 = lean_ctor_get(x_68, 1);
lean_inc(x_73);
lean_inc(x_72);
lean_dec(x_68);
x_74 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_74, 0, x_72);
x_75 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_75, 0, x_74);
lean_ctor_set(x_75, 1, x_73);
return x_75;
}
}
else
{
uint8_t x_76; 
x_76 = !lean_is_exclusive(x_68);
if (x_76 == 0)
{
return x_68;
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_77 = lean_ctor_get(x_68, 0);
x_78 = lean_ctor_get(x_68, 1);
lean_inc(x_78);
lean_inc(x_77);
lean_dec(x_68);
x_79 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_79, 0, x_77);
lean_ctor_set(x_79, 1, x_78);
return x_79;
}
}
}
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_80 = lean_unsigned_to_nat(3u);
x_81 = l_Lean_Syntax_getArg(x_1, x_80);
lean_dec(x_1);
x_82 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_82, 0, x_81);
x_83 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_83, 0, x_82);
lean_ctor_set(x_83, 1, x_9);
return x_83;
}
}
else
{
lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; 
x_84 = lean_unsigned_to_nat(4u);
x_85 = l_Lean_Syntax_getArg(x_1, x_84);
lean_dec(x_1);
x_86 = l_Lean_Syntax_getArgs(x_85);
lean_dec(x_85);
x_87 = l_Lean_Syntax_TSepArray_getElems___rarg(x_86);
lean_dec(x_86);
x_88 = l_Aesop_Frontend_IndexingMode_elab(x_87, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_88) == 0)
{
uint8_t x_89; 
x_89 = !lean_is_exclusive(x_88);
if (x_89 == 0)
{
lean_object* x_90; lean_object* x_91; 
x_90 = lean_ctor_get(x_88, 0);
x_91 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_91, 0, x_90);
lean_ctor_set(x_88, 0, x_91);
return x_88;
}
else
{
lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; 
x_92 = lean_ctor_get(x_88, 0);
x_93 = lean_ctor_get(x_88, 1);
lean_inc(x_93);
lean_inc(x_92);
lean_dec(x_88);
x_94 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_94, 0, x_92);
x_95 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_95, 0, x_94);
lean_ctor_set(x_95, 1, x_93);
return x_95;
}
}
else
{
uint8_t x_96; 
x_96 = !lean_is_exclusive(x_88);
if (x_96 == 0)
{
return x_88;
}
else
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; 
x_97 = lean_ctor_get(x_88, 0);
x_98 = lean_ctor_get(x_88, 1);
lean_inc(x_98);
lean_inc(x_97);
lean_dec(x_88);
x_99 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_99, 0, x_97);
lean_ctor_set(x_99, 1, x_98);
return x_99;
}
}
}
}
else
{
lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; uint8_t x_111; lean_object* x_112; uint8_t x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; uint8_t x_117; 
x_100 = lean_ctor_get(x_7, 0);
x_101 = lean_ctor_get(x_7, 1);
x_102 = lean_ctor_get(x_7, 2);
x_103 = lean_ctor_get(x_7, 3);
x_104 = lean_ctor_get(x_7, 4);
x_105 = lean_ctor_get(x_7, 5);
x_106 = lean_ctor_get(x_7, 6);
x_107 = lean_ctor_get(x_7, 7);
x_108 = lean_ctor_get(x_7, 8);
x_109 = lean_ctor_get(x_7, 9);
x_110 = lean_ctor_get(x_7, 10);
x_111 = lean_ctor_get_uint8(x_7, sizeof(void*)*12);
x_112 = lean_ctor_get(x_7, 11);
x_113 = lean_ctor_get_uint8(x_7, sizeof(void*)*12 + 1);
lean_inc(x_112);
lean_inc(x_110);
lean_inc(x_109);
lean_inc(x_108);
lean_inc(x_107);
lean_inc(x_106);
lean_inc(x_105);
lean_inc(x_104);
lean_inc(x_103);
lean_inc(x_102);
lean_inc(x_101);
lean_inc(x_100);
lean_dec(x_7);
x_114 = l_Lean_replaceRef(x_1, x_105);
lean_dec(x_105);
x_115 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_115, 0, x_100);
lean_ctor_set(x_115, 1, x_101);
lean_ctor_set(x_115, 2, x_102);
lean_ctor_set(x_115, 3, x_103);
lean_ctor_set(x_115, 4, x_104);
lean_ctor_set(x_115, 5, x_114);
lean_ctor_set(x_115, 6, x_106);
lean_ctor_set(x_115, 7, x_107);
lean_ctor_set(x_115, 8, x_108);
lean_ctor_set(x_115, 9, x_109);
lean_ctor_set(x_115, 10, x_110);
lean_ctor_set(x_115, 11, x_112);
lean_ctor_set_uint8(x_115, sizeof(void*)*12, x_111);
lean_ctor_set_uint8(x_115, sizeof(void*)*12 + 1, x_113);
x_116 = l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2;
lean_inc(x_1);
x_117 = l_Lean_Syntax_isOfKind(x_1, x_116);
if (x_117 == 0)
{
lean_object* x_118; uint8_t x_119; 
x_118 = l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2;
lean_inc(x_1);
x_119 = l_Lean_Syntax_isOfKind(x_1, x_118);
if (x_119 == 0)
{
lean_object* x_120; uint8_t x_121; 
x_120 = l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2;
lean_inc(x_1);
x_121 = l_Lean_Syntax_isOfKind(x_1, x_120);
if (x_121 == 0)
{
lean_object* x_122; uint8_t x_123; 
x_122 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2;
lean_inc(x_1);
x_123 = l_Lean_Syntax_isOfKind(x_1, x_122);
if (x_123 == 0)
{
lean_object* x_124; uint8_t x_125; 
x_124 = l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2;
lean_inc(x_1);
x_125 = l_Lean_Syntax_isOfKind(x_1, x_124);
if (x_125 == 0)
{
lean_object* x_126; 
lean_dec(x_115);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_126 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___rarg(x_9);
return x_126;
}
else
{
lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_127 = lean_unsigned_to_nat(3u);
x_128 = l_Lean_Syntax_getArg(x_1, x_127);
lean_dec(x_1);
x_129 = l_Aesop_Frontend_elabTransparency(x_128, x_3, x_4, x_5, x_6, x_115, x_8, x_9);
lean_dec(x_8);
lean_dec(x_115);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_129) == 0)
{
lean_object* x_130; lean_object* x_131; lean_object* x_132; uint8_t x_133; lean_object* x_134; uint8_t x_135; lean_object* x_136; 
x_130 = lean_ctor_get(x_129, 0);
lean_inc(x_130);
x_131 = lean_ctor_get(x_129, 1);
lean_inc(x_131);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_132 = x_129;
} else {
 lean_dec_ref(x_129);
 x_132 = lean_box(0);
}
x_133 = 1;
x_134 = lean_alloc_ctor(4, 0, 2);
x_135 = lean_unbox(x_130);
lean_dec(x_130);
lean_ctor_set_uint8(x_134, 0, x_135);
lean_ctor_set_uint8(x_134, 1, x_133);
if (lean_is_scalar(x_132)) {
 x_136 = lean_alloc_ctor(0, 2, 0);
} else {
 x_136 = x_132;
}
lean_ctor_set(x_136, 0, x_134);
lean_ctor_set(x_136, 1, x_131);
return x_136;
}
else
{
lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; 
x_137 = lean_ctor_get(x_129, 0);
lean_inc(x_137);
x_138 = lean_ctor_get(x_129, 1);
lean_inc(x_138);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_139 = x_129;
} else {
 lean_dec_ref(x_129);
 x_139 = lean_box(0);
}
if (lean_is_scalar(x_139)) {
 x_140 = lean_alloc_ctor(1, 2, 0);
} else {
 x_140 = x_139;
}
lean_ctor_set(x_140, 0, x_137);
lean_ctor_set(x_140, 1, x_138);
return x_140;
}
}
}
else
{
lean_object* x_141; lean_object* x_142; lean_object* x_143; 
x_141 = lean_unsigned_to_nat(3u);
x_142 = l_Lean_Syntax_getArg(x_1, x_141);
lean_dec(x_1);
x_143 = l_Aesop_Frontend_elabTransparency(x_142, x_3, x_4, x_5, x_6, x_115, x_8, x_9);
lean_dec(x_8);
lean_dec(x_115);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_143) == 0)
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; uint8_t x_147; lean_object* x_148; uint8_t x_149; lean_object* x_150; 
x_144 = lean_ctor_get(x_143, 0);
lean_inc(x_144);
x_145 = lean_ctor_get(x_143, 1);
lean_inc(x_145);
if (lean_is_exclusive(x_143)) {
 lean_ctor_release(x_143, 0);
 lean_ctor_release(x_143, 1);
 x_146 = x_143;
} else {
 lean_dec_ref(x_143);
 x_146 = lean_box(0);
}
x_147 = 0;
x_148 = lean_alloc_ctor(4, 0, 2);
x_149 = lean_unbox(x_144);
lean_dec(x_144);
lean_ctor_set_uint8(x_148, 0, x_149);
lean_ctor_set_uint8(x_148, 1, x_147);
if (lean_is_scalar(x_146)) {
 x_150 = lean_alloc_ctor(0, 2, 0);
} else {
 x_150 = x_146;
}
lean_ctor_set(x_150, 0, x_148);
lean_ctor_set(x_150, 1, x_145);
return x_150;
}
else
{
lean_object* x_151; lean_object* x_152; lean_object* x_153; lean_object* x_154; 
x_151 = lean_ctor_get(x_143, 0);
lean_inc(x_151);
x_152 = lean_ctor_get(x_143, 1);
lean_inc(x_152);
if (lean_is_exclusive(x_143)) {
 lean_ctor_release(x_143, 0);
 lean_ctor_release(x_143, 1);
 x_153 = x_143;
} else {
 lean_dec_ref(x_143);
 x_153 = lean_box(0);
}
if (lean_is_scalar(x_153)) {
 x_154 = lean_alloc_ctor(1, 2, 0);
} else {
 x_154 = x_153;
}
lean_ctor_set(x_154, 0, x_151);
lean_ctor_set(x_154, 1, x_152);
return x_154;
}
}
}
else
{
lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; size_t x_159; size_t x_160; lean_object* x_161; 
x_155 = lean_unsigned_to_nat(4u);
x_156 = l_Lean_Syntax_getArg(x_1, x_155);
lean_dec(x_1);
x_157 = l_Lean_Syntax_getArgs(x_156);
lean_dec(x_156);
x_158 = l_Lean_Syntax_TSepArray_getElems___rarg(x_157);
lean_dec(x_157);
x_159 = lean_array_size(x_158);
x_160 = 0;
x_161 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2(x_159, x_160, x_158, x_2, x_3, x_4, x_5, x_6, x_115, x_8, x_9);
if (lean_obj_tag(x_161) == 0)
{
lean_object* x_162; lean_object* x_163; lean_object* x_164; lean_object* x_165; lean_object* x_166; 
x_162 = lean_ctor_get(x_161, 0);
lean_inc(x_162);
x_163 = lean_ctor_get(x_161, 1);
lean_inc(x_163);
if (lean_is_exclusive(x_161)) {
 lean_ctor_release(x_161, 0);
 lean_ctor_release(x_161, 1);
 x_164 = x_161;
} else {
 lean_dec_ref(x_161);
 x_164 = lean_box(0);
}
x_165 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_165, 0, x_162);
if (lean_is_scalar(x_164)) {
 x_166 = lean_alloc_ctor(0, 2, 0);
} else {
 x_166 = x_164;
}
lean_ctor_set(x_166, 0, x_165);
lean_ctor_set(x_166, 1, x_163);
return x_166;
}
else
{
lean_object* x_167; lean_object* x_168; lean_object* x_169; lean_object* x_170; 
x_167 = lean_ctor_get(x_161, 0);
lean_inc(x_167);
x_168 = lean_ctor_get(x_161, 1);
lean_inc(x_168);
if (lean_is_exclusive(x_161)) {
 lean_ctor_release(x_161, 0);
 lean_ctor_release(x_161, 1);
 x_169 = x_161;
} else {
 lean_dec_ref(x_161);
 x_169 = lean_box(0);
}
if (lean_is_scalar(x_169)) {
 x_170 = lean_alloc_ctor(1, 2, 0);
} else {
 x_170 = x_169;
}
lean_ctor_set(x_170, 0, x_167);
lean_ctor_set(x_170, 1, x_168);
return x_170;
}
}
}
else
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; 
lean_dec(x_115);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_171 = lean_unsigned_to_nat(3u);
x_172 = l_Lean_Syntax_getArg(x_1, x_171);
lean_dec(x_1);
x_173 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_173, 0, x_172);
x_174 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_174, 0, x_173);
lean_ctor_set(x_174, 1, x_9);
return x_174;
}
}
else
{
lean_object* x_175; lean_object* x_176; lean_object* x_177; lean_object* x_178; lean_object* x_179; 
x_175 = lean_unsigned_to_nat(4u);
x_176 = l_Lean_Syntax_getArg(x_1, x_175);
lean_dec(x_1);
x_177 = l_Lean_Syntax_getArgs(x_176);
lean_dec(x_176);
x_178 = l_Lean_Syntax_TSepArray_getElems___rarg(x_177);
lean_dec(x_177);
x_179 = l_Aesop_Frontend_IndexingMode_elab(x_178, x_2, x_3, x_4, x_5, x_6, x_115, x_8, x_9);
if (lean_obj_tag(x_179) == 0)
{
lean_object* x_180; lean_object* x_181; lean_object* x_182; lean_object* x_183; lean_object* x_184; 
x_180 = lean_ctor_get(x_179, 0);
lean_inc(x_180);
x_181 = lean_ctor_get(x_179, 1);
lean_inc(x_181);
if (lean_is_exclusive(x_179)) {
 lean_ctor_release(x_179, 0);
 lean_ctor_release(x_179, 1);
 x_182 = x_179;
} else {
 lean_dec_ref(x_179);
 x_182 = lean_box(0);
}
x_183 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_183, 0, x_180);
if (lean_is_scalar(x_182)) {
 x_184 = lean_alloc_ctor(0, 2, 0);
} else {
 x_184 = x_182;
}
lean_ctor_set(x_184, 0, x_183);
lean_ctor_set(x_184, 1, x_181);
return x_184;
}
else
{
lean_object* x_185; lean_object* x_186; lean_object* x_187; lean_object* x_188; 
x_185 = lean_ctor_get(x_179, 0);
lean_inc(x_185);
x_186 = lean_ctor_get(x_179, 1);
lean_inc(x_186);
if (lean_is_exclusive(x_179)) {
 lean_ctor_release(x_179, 0);
 lean_ctor_release(x_179, 1);
 x_187 = x_179;
} else {
 lean_dec_ref(x_179);
 x_187 = lean_box(0);
}
if (lean_is_scalar(x_187)) {
 x_188 = lean_alloc_ctor(1, 2, 0);
} else {
 x_188 = x_187;
}
lean_ctor_set(x_188, 0, x_185);
lean_ctor_set(x_188, 1, x_186);
return x_188;
}
}
}
}
else
{
lean_object* x_189; lean_object* x_190; lean_object* x_191; lean_object* x_192; size_t x_193; size_t x_194; lean_object* x_195; lean_object* x_196; lean_object* x_197; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_189 = lean_unsigned_to_nat(4u);
x_190 = l_Lean_Syntax_getArg(x_1, x_189);
lean_dec(x_1);
x_191 = l_Lean_Syntax_getArgs(x_190);
lean_dec(x_190);
x_192 = l_Lean_Syntax_TSepArray_getElems___rarg(x_191);
lean_dec(x_191);
x_193 = lean_array_size(x_192);
x_194 = 0;
x_195 = l_Array_mapMUnsafe_map___at_Lean_Parser_withOpenDeclFnCore___spec__1(x_193, x_194, x_192);
x_196 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_196, 0, x_195);
x_197 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_197, 0, x_196);
lean_ctor_set(x_197, 1, x_9);
return x_197;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_BuilderOption_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_BuilderOption_elab___spec__2(x_12, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_4);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_BuilderOption_elab___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_BuilderOption_elab(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_addBuilderOption(lean_object* x_1, lean_object* x_2) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 0:
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
uint8_t x_4; 
lean_ctor_set_tag(x_2, 1);
x_4 = !lean_is_exclusive(x_1);
if (x_4 == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_1, 0);
lean_dec(x_5);
lean_ctor_set(x_1, 0, x_2);
return x_1;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_1, 1);
x_7 = lean_ctor_get(x_1, 2);
x_8 = lean_ctor_get(x_1, 3);
x_9 = lean_ctor_get(x_1, 4);
x_10 = lean_ctor_get(x_1, 5);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_dec(x_1);
x_11 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_11, 0, x_2);
lean_ctor_set(x_11, 1, x_6);
lean_ctor_set(x_11, 2, x_7);
lean_ctor_set(x_11, 3, x_8);
lean_ctor_set(x_11, 4, x_9);
lean_ctor_set(x_11, 5, x_10);
return x_11;
}
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
lean_dec(x_2);
x_13 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_13, 0, x_12);
x_14 = lean_ctor_get(x_1, 1);
lean_inc(x_14);
x_15 = lean_ctor_get(x_1, 2);
lean_inc(x_15);
x_16 = lean_ctor_get(x_1, 3);
lean_inc(x_16);
x_17 = lean_ctor_get(x_1, 4);
lean_inc(x_17);
x_18 = lean_ctor_get(x_1, 5);
lean_inc(x_18);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_19 = x_1;
} else {
 lean_dec_ref(x_1);
 x_19 = lean_box(0);
}
if (lean_is_scalar(x_19)) {
 x_20 = lean_alloc_ctor(0, 6, 0);
} else {
 x_20 = x_19;
}
lean_ctor_set(x_20, 0, x_13);
lean_ctor_set(x_20, 1, x_14);
lean_ctor_set(x_20, 2, x_15);
lean_ctor_set(x_20, 3, x_16);
lean_ctor_set(x_20, 4, x_17);
lean_ctor_set(x_20, 5, x_18);
return x_20;
}
}
case 1:
{
uint8_t x_21; 
x_21 = !lean_is_exclusive(x_2);
if (x_21 == 0)
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_1);
if (x_22 == 0)
{
lean_object* x_23; 
x_23 = lean_ctor_get(x_1, 1);
lean_dec(x_23);
lean_ctor_set(x_1, 1, x_2);
return x_1;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_24 = lean_ctor_get(x_1, 0);
x_25 = lean_ctor_get(x_1, 2);
x_26 = lean_ctor_get(x_1, 3);
x_27 = lean_ctor_get(x_1, 4);
x_28 = lean_ctor_get(x_1, 5);
lean_inc(x_28);
lean_inc(x_27);
lean_inc(x_26);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_1);
x_29 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_29, 0, x_24);
lean_ctor_set(x_29, 1, x_2);
lean_ctor_set(x_29, 2, x_25);
lean_ctor_set(x_29, 3, x_26);
lean_ctor_set(x_29, 4, x_27);
lean_ctor_set(x_29, 5, x_28);
return x_29;
}
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_30 = lean_ctor_get(x_2, 0);
lean_inc(x_30);
lean_dec(x_2);
x_31 = lean_ctor_get(x_1, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_1, 2);
lean_inc(x_32);
x_33 = lean_ctor_get(x_1, 3);
lean_inc(x_33);
x_34 = lean_ctor_get(x_1, 4);
lean_inc(x_34);
x_35 = lean_ctor_get(x_1, 5);
lean_inc(x_35);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_36 = x_1;
} else {
 lean_dec_ref(x_1);
 x_36 = lean_box(0);
}
x_37 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_37, 0, x_30);
if (lean_is_scalar(x_36)) {
 x_38 = lean_alloc_ctor(0, 6, 0);
} else {
 x_38 = x_36;
}
lean_ctor_set(x_38, 0, x_31);
lean_ctor_set(x_38, 1, x_37);
lean_ctor_set(x_38, 2, x_32);
lean_ctor_set(x_38, 3, x_33);
lean_ctor_set(x_38, 4, x_34);
lean_ctor_set(x_38, 5, x_35);
return x_38;
}
}
case 2:
{
uint8_t x_39; 
x_39 = !lean_is_exclusive(x_2);
if (x_39 == 0)
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_1);
if (x_40 == 0)
{
lean_object* x_41; 
x_41 = lean_ctor_get(x_1, 3);
lean_dec(x_41);
lean_ctor_set_tag(x_2, 1);
lean_ctor_set(x_1, 3, x_2);
return x_1;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_42 = lean_ctor_get(x_1, 0);
x_43 = lean_ctor_get(x_1, 1);
x_44 = lean_ctor_get(x_1, 2);
x_45 = lean_ctor_get(x_1, 4);
x_46 = lean_ctor_get(x_1, 5);
lean_inc(x_46);
lean_inc(x_45);
lean_inc(x_44);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_1);
lean_ctor_set_tag(x_2, 1);
x_47 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_47, 0, x_42);
lean_ctor_set(x_47, 1, x_43);
lean_ctor_set(x_47, 2, x_44);
lean_ctor_set(x_47, 3, x_2);
lean_ctor_set(x_47, 4, x_45);
lean_ctor_set(x_47, 5, x_46);
return x_47;
}
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_48 = lean_ctor_get(x_2, 0);
lean_inc(x_48);
lean_dec(x_2);
x_49 = lean_ctor_get(x_1, 0);
lean_inc(x_49);
x_50 = lean_ctor_get(x_1, 1);
lean_inc(x_50);
x_51 = lean_ctor_get(x_1, 2);
lean_inc(x_51);
x_52 = lean_ctor_get(x_1, 4);
lean_inc(x_52);
x_53 = lean_ctor_get(x_1, 5);
lean_inc(x_53);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_54 = x_1;
} else {
 lean_dec_ref(x_1);
 x_54 = lean_box(0);
}
x_55 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_55, 0, x_48);
if (lean_is_scalar(x_54)) {
 x_56 = lean_alloc_ctor(0, 6, 0);
} else {
 x_56 = x_54;
}
lean_ctor_set(x_56, 0, x_49);
lean_ctor_set(x_56, 1, x_50);
lean_ctor_set(x_56, 2, x_51);
lean_ctor_set(x_56, 3, x_55);
lean_ctor_set(x_56, 4, x_52);
lean_ctor_set(x_56, 5, x_53);
return x_56;
}
}
case 3:
{
uint8_t x_57; 
x_57 = !lean_is_exclusive(x_2);
if (x_57 == 0)
{
uint8_t x_58; 
x_58 = !lean_is_exclusive(x_1);
if (x_58 == 0)
{
lean_object* x_59; 
x_59 = lean_ctor_get(x_1, 2);
lean_dec(x_59);
lean_ctor_set_tag(x_2, 1);
lean_ctor_set(x_1, 2, x_2);
return x_1;
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_60 = lean_ctor_get(x_1, 0);
x_61 = lean_ctor_get(x_1, 1);
x_62 = lean_ctor_get(x_1, 3);
x_63 = lean_ctor_get(x_1, 4);
x_64 = lean_ctor_get(x_1, 5);
lean_inc(x_64);
lean_inc(x_63);
lean_inc(x_62);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_1);
lean_ctor_set_tag(x_2, 1);
x_65 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_65, 0, x_60);
lean_ctor_set(x_65, 1, x_61);
lean_ctor_set(x_65, 2, x_2);
lean_ctor_set(x_65, 3, x_62);
lean_ctor_set(x_65, 4, x_63);
lean_ctor_set(x_65, 5, x_64);
return x_65;
}
}
else
{
lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; 
x_66 = lean_ctor_get(x_2, 0);
lean_inc(x_66);
lean_dec(x_2);
x_67 = lean_ctor_get(x_1, 0);
lean_inc(x_67);
x_68 = lean_ctor_get(x_1, 1);
lean_inc(x_68);
x_69 = lean_ctor_get(x_1, 3);
lean_inc(x_69);
x_70 = lean_ctor_get(x_1, 4);
lean_inc(x_70);
x_71 = lean_ctor_get(x_1, 5);
lean_inc(x_71);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_72 = x_1;
} else {
 lean_dec_ref(x_1);
 x_72 = lean_box(0);
}
x_73 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_73, 0, x_66);
if (lean_is_scalar(x_72)) {
 x_74 = lean_alloc_ctor(0, 6, 0);
} else {
 x_74 = x_72;
}
lean_ctor_set(x_74, 0, x_67);
lean_ctor_set(x_74, 1, x_68);
lean_ctor_set(x_74, 2, x_73);
lean_ctor_set(x_74, 3, x_69);
lean_ctor_set(x_74, 4, x_70);
lean_ctor_set(x_74, 5, x_71);
return x_74;
}
}
default: 
{
uint8_t x_75; uint8_t x_76; uint8_t x_77; 
x_75 = lean_ctor_get_uint8(x_2, 0);
x_76 = lean_ctor_get_uint8(x_2, 1);
lean_dec(x_2);
x_77 = !lean_is_exclusive(x_1);
if (x_77 == 0)
{
lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_78 = lean_ctor_get(x_1, 5);
x_79 = lean_ctor_get(x_1, 4);
lean_dec(x_79);
x_80 = lean_box(x_75);
x_81 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_81, 0, x_80);
if (x_76 == 0)
{
lean_ctor_set(x_1, 4, x_81);
return x_1;
}
else
{
lean_dec(x_78);
lean_inc(x_81);
lean_ctor_set(x_1, 5, x_81);
lean_ctor_set(x_1, 4, x_81);
return x_1;
}
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; 
x_82 = lean_ctor_get(x_1, 0);
x_83 = lean_ctor_get(x_1, 1);
x_84 = lean_ctor_get(x_1, 2);
x_85 = lean_ctor_get(x_1, 3);
x_86 = lean_ctor_get(x_1, 5);
lean_inc(x_86);
lean_inc(x_85);
lean_inc(x_84);
lean_inc(x_83);
lean_inc(x_82);
lean_dec(x_1);
x_87 = lean_box(x_75);
x_88 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_88, 0, x_87);
if (x_76 == 0)
{
lean_object* x_89; 
x_89 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_89, 0, x_82);
lean_ctor_set(x_89, 1, x_83);
lean_ctor_set(x_89, 2, x_84);
lean_ctor_set(x_89, 3, x_85);
lean_ctor_set(x_89, 4, x_88);
lean_ctor_set(x_89, 5, x_86);
return x_89;
}
else
{
lean_object* x_90; 
lean_dec(x_86);
lean_inc(x_88);
x_90 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_90, 0, x_82);
lean_ctor_set(x_90, 1, x_83);
lean_ctor_set(x_90, 2, x_84);
lean_ctor_set(x_90, 3, x_85);
lean_ctor_set(x_90, 4, x_88);
lean_ctor_set(x_90, 5, x_88);
return x_90;
}
}
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ruleSetsFeature", 15, 15);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("(", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule_sets", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__6() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__5;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__4;
x_3 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__6;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__7;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__8;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__9;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__10;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__11;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1;
x_2 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2;
x_3 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__12;
x_4 = lean_alloc_ctor(9, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_ruleSetsFeature() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__13;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSetName_elab(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Syntax_getId(x_1);
x_3 = lean_erase_macro_scopes(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSetName_elab___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Aesop_Frontend_RuleSetName_elab(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedRuleSets___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedRuleSets() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleSets_elab___spec__2(size_t x_1, size_t x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_usize_dec_lt(x_2, x_1);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; 
x_5 = lean_array_uget(x_3, x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_array_uset(x_3, x_2, x_6);
x_8 = l_Aesop_Frontend_RuleSetName_elab(x_5);
lean_dec(x_5);
x_9 = 1;
x_10 = lean_usize_add(x_2, x_9);
x_11 = lean_array_uset(x_7, x_2, x_8);
x_2 = x_10;
x_3 = x_11;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSets_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; 
x_10 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
if (x_11 == 0)
{
lean_object* x_12; 
lean_dec(x_1);
x_12 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1___rarg(x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; size_t x_17; size_t x_18; lean_object* x_19; lean_object* x_20; 
x_13 = lean_unsigned_to_nat(4u);
x_14 = l_Lean_Syntax_getArg(x_1, x_13);
lean_dec(x_1);
x_15 = l_Lean_Syntax_getArgs(x_14);
lean_dec(x_14);
x_16 = l_Lean_Syntax_TSepArray_getElems___rarg(x_15);
lean_dec(x_15);
x_17 = lean_array_size(x_16);
x_18 = 0;
x_19 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleSets_elab___spec__2(x_17, x_18, x_16);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_9);
return x_20;
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleSets_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleSets_elab___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleSets_elab___spec__2(x_4, x_5, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleSets_elab___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleSets_elab(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(feature| ", 11, 11);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_feature_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__10;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_feature() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature_", 8, 8);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_feature_____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_feature_____closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature__() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_feature_____closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____1___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature__1", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____1___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_feature____1___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____1___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_feature____1___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____1() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_feature____1___closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature__2", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_feature____2___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____2___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_feature____2___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____2() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_feature____2___closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature__3", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_feature____3___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____3___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_feature____3___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____3() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_feature____3___closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____4___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature__4", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____4___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_feature____4___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____4___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_feature____4___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_ruleSetsFeature;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature____4() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_feature____4___closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_featIdent___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("featIdent", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_featIdent___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_featIdent___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_featIdent___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_featIdent___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_featIdent() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_featIdent___closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("feature(_)", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__3() {
_start:
{
lean_object* x_1; uint8_t x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3;
x_2 = 0;
x_3 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set_uint8(x_3, sizeof(void*)*1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__3;
x_3 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__5;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_feature_x28___x29() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__6;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedFeature___closed__1() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 0;
x_2 = lean_alloc_ctor(0, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedFeature() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_instInhabitedFeature___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_7);
x_8 = l_Lean_Syntax_isOfKind(x_7, x_1);
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
if (x_8 == 0)
{
lean_object* x_11; 
x_11 = lean_array_push(x_5, x_7);
x_3 = x_10;
x_5 = x_11;
goto _start;
}
else
{
lean_dec(x_7);
x_3 = x_10;
goto _start;
}
}
else
{
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3(lean_object* x_1, lean_object* x_2, size_t x_3, size_t x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = lean_usize_dec_eq(x_3, x_4);
if (x_6 == 0)
{
lean_object* x_7; uint8_t x_8; size_t x_9; size_t x_10; 
x_7 = lean_array_uget(x_2, x_3);
lean_inc(x_7);
x_8 = l_Lean_Syntax_isOfKind(x_7, x_1);
x_9 = 1;
x_10 = lean_usize_add(x_3, x_9);
if (x_8 == 0)
{
lean_object* x_11; 
x_11 = lean_array_push(x_5, x_7);
x_3 = x_10;
x_5 = x_11;
goto _start;
}
else
{
lean_dec(x_7);
x_3 = x_10;
goto _start;
}
}
else
{
return x_5;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; 
x_5 = lean_usize_dec_eq(x_2, x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; uint8_t x_8; size_t x_9; size_t x_10; 
x_6 = lean_array_uget(x_1, x_2);
x_7 = l_Aesop_Frontend_Parser_featIdent___closed__2;
lean_inc(x_6);
x_8 = l_Lean_Syntax_isOfKind(x_6, x_7);
x_9 = 1;
x_10 = lean_usize_add(x_2, x_9);
if (x_8 == 0)
{
lean_object* x_11; 
x_11 = lean_array_push(x_4, x_6);
x_2 = x_10;
x_4 = x_11;
goto _start;
}
else
{
lean_dec(x_6);
x_2 = x_10;
goto _start;
}
}
else
{
return x_4;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Feature_elab___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1___rarg(x_9);
return x_10;
}
}
static lean_object* _init_l_Aesop_Frontend_Feature_elab___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Frontend_Feature_elab___lambda__1___boxed), 9, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Feature_elab___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("choice", 6, 6);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Feature_elab___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Feature_elab___closed__2;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Feature_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; uint8_t x_12; 
x_10 = l_Aesop_Frontend_Parser_feature____1___closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
x_12 = !lean_is_exclusive(x_7);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_7, 5);
x_14 = l_Lean_replaceRef(x_1, x_13);
lean_dec(x_13);
lean_ctor_set(x_7, 5, x_14);
if (x_11 == 0)
{
lean_object* x_15; uint8_t x_16; 
x_15 = l_Aesop_Frontend_Parser_feature_____closed__2;
lean_inc(x_1);
x_16 = l_Lean_Syntax_isOfKind(x_1, x_15);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = l_Aesop_Frontend_Parser_feature____2___closed__2;
lean_inc(x_1);
x_18 = l_Lean_Syntax_isOfKind(x_1, x_17);
if (x_18 == 0)
{
lean_object* x_19; uint8_t x_20; 
x_19 = l_Aesop_Frontend_Parser_feature____3___closed__2;
lean_inc(x_1);
x_20 = l_Lean_Syntax_isOfKind(x_1, x_19);
if (x_20 == 0)
{
lean_object* x_21; uint8_t x_22; 
x_21 = l_Aesop_Frontend_Parser_feature____4___closed__2;
lean_inc(x_1);
x_22 = l_Lean_Syntax_isOfKind(x_1, x_21);
if (x_22 == 0)
{
lean_object* x_23; uint8_t x_24; 
x_23 = l_Aesop_Frontend_Parser_featIdent___closed__2;
lean_inc(x_1);
x_24 = l_Lean_Syntax_isOfKind(x_1, x_23);
if (x_24 == 0)
{
lean_object* x_25; uint8_t x_26; 
x_25 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__2;
lean_inc(x_1);
x_26 = l_Lean_Syntax_isOfKind(x_1, x_25);
if (x_26 == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_46; uint8_t x_47; 
x_27 = l_Aesop_Frontend_Feature_elab___closed__1;
x_46 = l_Aesop_Frontend_Feature_elab___closed__3;
lean_inc(x_1);
x_47 = l_Lean_Syntax_isOfKind(x_1, x_46);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; 
lean_dec(x_1);
x_48 = lean_box(0);
x_49 = lean_apply_9(x_27, x_48, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_49;
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; uint8_t x_53; 
x_50 = l_Lean_Syntax_getArgs(x_1);
lean_dec(x_1);
x_51 = lean_array_get_size(x_50);
x_52 = lean_unsigned_to_nat(0u);
x_53 = lean_nat_dec_lt(x_52, x_51);
if (x_53 == 0)
{
lean_object* x_54; 
lean_dec(x_51);
lean_dec(x_50);
x_54 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_28 = x_54;
goto block_45;
}
else
{
uint8_t x_55; 
x_55 = lean_nat_dec_le(x_51, x_51);
if (x_55 == 0)
{
lean_object* x_56; 
lean_dec(x_51);
lean_dec(x_50);
x_56 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_28 = x_56;
goto block_45;
}
else
{
size_t x_57; size_t x_58; lean_object* x_59; lean_object* x_60; 
x_57 = 0;
x_58 = lean_usize_of_nat(x_51);
lean_dec(x_51);
x_59 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_60 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2(x_23, x_50, x_57, x_58, x_59);
lean_dec(x_50);
x_28 = x_60;
goto block_45;
}
}
}
block_45:
{
lean_object* x_29; lean_object* x_30; uint8_t x_31; 
x_29 = lean_array_get_size(x_28);
x_30 = lean_unsigned_to_nat(1u);
x_31 = lean_nat_dec_eq(x_29, x_30);
lean_dec(x_29);
if (x_31 == 0)
{
lean_object* x_32; lean_object* x_33; 
lean_dec(x_28);
x_32 = lean_box(0);
x_33 = lean_apply_9(x_27, x_32, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_33;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_unsigned_to_nat(0u);
x_35 = lean_array_fget(x_28, x_34);
lean_dec(x_28);
x_36 = l_Aesop_Frontend_Feature_elab(x_35, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_36) == 0)
{
uint8_t x_37; 
x_37 = !lean_is_exclusive(x_36);
if (x_37 == 0)
{
return x_36;
}
else
{
lean_object* x_38; lean_object* x_39; lean_object* x_40; 
x_38 = lean_ctor_get(x_36, 0);
x_39 = lean_ctor_get(x_36, 1);
lean_inc(x_39);
lean_inc(x_38);
lean_dec(x_36);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
return x_40;
}
}
else
{
uint8_t x_41; 
x_41 = !lean_is_exclusive(x_36);
if (x_41 == 0)
{
return x_36;
}
else
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_42 = lean_ctor_get(x_36, 0);
x_43 = lean_ctor_get(x_36, 1);
lean_inc(x_43);
lean_inc(x_42);
lean_dec(x_36);
x_44 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
return x_44;
}
}
}
}
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_61 = lean_unsigned_to_nat(1u);
x_62 = l_Lean_Syntax_getArg(x_1, x_61);
lean_dec(x_1);
x_63 = lean_alloc_ctor(4, 1, 0);
lean_ctor_set(x_63, 0, x_62);
x_64 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_9);
return x_64;
}
}
else
{
lean_object* x_65; lean_object* x_66; lean_object* x_67; uint8_t x_68; 
x_65 = lean_unsigned_to_nat(0u);
x_66 = l_Lean_Syntax_getArg(x_1, x_65);
x_67 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15;
lean_inc(x_66);
x_68 = l_Lean_Syntax_isOfKind(x_66, x_67);
if (x_68 == 0)
{
lean_object* x_69; lean_object* x_70; lean_object* x_87; uint8_t x_88; 
lean_dec(x_66);
x_69 = l_Aesop_Frontend_Feature_elab___closed__1;
x_87 = l_Aesop_Frontend_Feature_elab___closed__3;
lean_inc(x_1);
x_88 = l_Lean_Syntax_isOfKind(x_1, x_87);
if (x_88 == 0)
{
lean_object* x_89; lean_object* x_90; 
lean_dec(x_1);
x_89 = lean_box(0);
x_90 = lean_apply_9(x_69, x_89, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_90;
}
else
{
lean_object* x_91; lean_object* x_92; uint8_t x_93; 
x_91 = l_Lean_Syntax_getArgs(x_1);
lean_dec(x_1);
x_92 = lean_array_get_size(x_91);
x_93 = lean_nat_dec_lt(x_65, x_92);
if (x_93 == 0)
{
lean_object* x_94; 
lean_dec(x_92);
lean_dec(x_91);
x_94 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_70 = x_94;
goto block_86;
}
else
{
uint8_t x_95; 
x_95 = lean_nat_dec_le(x_92, x_92);
if (x_95 == 0)
{
lean_object* x_96; 
lean_dec(x_92);
lean_dec(x_91);
x_96 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_70 = x_96;
goto block_86;
}
else
{
size_t x_97; size_t x_98; lean_object* x_99; lean_object* x_100; 
x_97 = 0;
x_98 = lean_usize_of_nat(x_92);
lean_dec(x_92);
x_99 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_100 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3(x_23, x_91, x_97, x_98, x_99);
lean_dec(x_91);
x_70 = x_100;
goto block_86;
}
}
}
block_86:
{
lean_object* x_71; lean_object* x_72; uint8_t x_73; 
x_71 = lean_array_get_size(x_70);
x_72 = lean_unsigned_to_nat(1u);
x_73 = lean_nat_dec_eq(x_71, x_72);
lean_dec(x_71);
if (x_73 == 0)
{
lean_object* x_74; lean_object* x_75; 
lean_dec(x_70);
x_74 = lean_box(0);
x_75 = lean_apply_9(x_69, x_74, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_75;
}
else
{
lean_object* x_76; lean_object* x_77; 
x_76 = lean_array_fget(x_70, x_65);
lean_dec(x_70);
x_77 = l_Aesop_Frontend_Feature_elab(x_76, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_77) == 0)
{
uint8_t x_78; 
x_78 = !lean_is_exclusive(x_77);
if (x_78 == 0)
{
return x_77;
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_79 = lean_ctor_get(x_77, 0);
x_80 = lean_ctor_get(x_77, 1);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_77);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_79);
lean_ctor_set(x_81, 1, x_80);
return x_81;
}
}
else
{
uint8_t x_82; 
x_82 = !lean_is_exclusive(x_77);
if (x_82 == 0)
{
return x_77;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_77, 0);
x_84 = lean_ctor_get(x_77, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_77);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
}
}
else
{
lean_object* x_101; lean_object* x_102; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_101 = lean_alloc_ctor(4, 1, 0);
lean_ctor_set(x_101, 0, x_66);
x_102 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_102, 0, x_101);
lean_ctor_set(x_102, 1, x_9);
return x_102;
}
}
}
else
{
lean_object* x_103; lean_object* x_104; lean_object* x_105; uint8_t x_106; 
x_103 = lean_unsigned_to_nat(0u);
x_104 = l_Lean_Syntax_getArg(x_1, x_103);
x_105 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2;
lean_inc(x_104);
x_106 = l_Lean_Syntax_isOfKind(x_104, x_105);
if (x_106 == 0)
{
lean_object* x_107; lean_object* x_108; lean_object* x_125; uint8_t x_126; 
lean_dec(x_104);
x_107 = l_Aesop_Frontend_Feature_elab___closed__1;
x_125 = l_Aesop_Frontend_Feature_elab___closed__3;
lean_inc(x_1);
x_126 = l_Lean_Syntax_isOfKind(x_1, x_125);
if (x_126 == 0)
{
lean_object* x_127; lean_object* x_128; 
lean_dec(x_1);
x_127 = lean_box(0);
x_128 = lean_apply_9(x_107, x_127, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_128;
}
else
{
lean_object* x_129; lean_object* x_130; uint8_t x_131; 
x_129 = l_Lean_Syntax_getArgs(x_1);
lean_dec(x_1);
x_130 = lean_array_get_size(x_129);
x_131 = lean_nat_dec_lt(x_103, x_130);
if (x_131 == 0)
{
lean_object* x_132; 
lean_dec(x_130);
lean_dec(x_129);
x_132 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_108 = x_132;
goto block_124;
}
else
{
uint8_t x_133; 
x_133 = lean_nat_dec_le(x_130, x_130);
if (x_133 == 0)
{
lean_object* x_134; 
lean_dec(x_130);
lean_dec(x_129);
x_134 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_108 = x_134;
goto block_124;
}
else
{
size_t x_135; size_t x_136; lean_object* x_137; lean_object* x_138; 
x_135 = 0;
x_136 = lean_usize_of_nat(x_130);
lean_dec(x_130);
x_137 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_138 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4(x_129, x_135, x_136, x_137);
lean_dec(x_129);
x_108 = x_138;
goto block_124;
}
}
}
block_124:
{
lean_object* x_109; lean_object* x_110; uint8_t x_111; 
x_109 = lean_array_get_size(x_108);
x_110 = lean_unsigned_to_nat(1u);
x_111 = lean_nat_dec_eq(x_109, x_110);
lean_dec(x_109);
if (x_111 == 0)
{
lean_object* x_112; lean_object* x_113; 
lean_dec(x_108);
x_112 = lean_box(0);
x_113 = lean_apply_9(x_107, x_112, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_113;
}
else
{
lean_object* x_114; lean_object* x_115; 
x_114 = lean_array_fget(x_108, x_103);
lean_dec(x_108);
x_115 = l_Aesop_Frontend_Feature_elab(x_114, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_115) == 0)
{
uint8_t x_116; 
x_116 = !lean_is_exclusive(x_115);
if (x_116 == 0)
{
return x_115;
}
else
{
lean_object* x_117; lean_object* x_118; lean_object* x_119; 
x_117 = lean_ctor_get(x_115, 0);
x_118 = lean_ctor_get(x_115, 1);
lean_inc(x_118);
lean_inc(x_117);
lean_dec(x_115);
x_119 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_119, 0, x_117);
lean_ctor_set(x_119, 1, x_118);
return x_119;
}
}
else
{
uint8_t x_120; 
x_120 = !lean_is_exclusive(x_115);
if (x_120 == 0)
{
return x_115;
}
else
{
lean_object* x_121; lean_object* x_122; lean_object* x_123; 
x_121 = lean_ctor_get(x_115, 0);
x_122 = lean_ctor_get(x_115, 1);
lean_inc(x_122);
lean_inc(x_121);
lean_dec(x_115);
x_123 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_123, 0, x_121);
lean_ctor_set(x_123, 1, x_122);
return x_123;
}
}
}
}
}
else
{
lean_object* x_139; 
lean_dec(x_1);
x_139 = l_Aesop_Frontend_RuleSets_elab(x_104, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_139) == 0)
{
uint8_t x_140; 
x_140 = !lean_is_exclusive(x_139);
if (x_140 == 0)
{
lean_object* x_141; lean_object* x_142; 
x_141 = lean_ctor_get(x_139, 0);
x_142 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_142, 0, x_141);
lean_ctor_set(x_139, 0, x_142);
return x_139;
}
else
{
lean_object* x_143; lean_object* x_144; lean_object* x_145; lean_object* x_146; 
x_143 = lean_ctor_get(x_139, 0);
x_144 = lean_ctor_get(x_139, 1);
lean_inc(x_144);
lean_inc(x_143);
lean_dec(x_139);
x_145 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_145, 0, x_143);
x_146 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_146, 0, x_145);
lean_ctor_set(x_146, 1, x_144);
return x_146;
}
}
else
{
uint8_t x_147; 
x_147 = !lean_is_exclusive(x_139);
if (x_147 == 0)
{
return x_139;
}
else
{
lean_object* x_148; lean_object* x_149; lean_object* x_150; 
x_148 = lean_ctor_get(x_139, 0);
x_149 = lean_ctor_get(x_139, 1);
lean_inc(x_149);
lean_inc(x_148);
lean_dec(x_139);
x_150 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_150, 0, x_148);
lean_ctor_set(x_150, 1, x_149);
return x_150;
}
}
}
}
}
else
{
lean_object* x_151; lean_object* x_152; lean_object* x_153; 
x_151 = lean_unsigned_to_nat(0u);
x_152 = l_Lean_Syntax_getArg(x_1, x_151);
lean_dec(x_1);
x_153 = l_Aesop_Frontend_BuilderOption_elab(x_152, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
if (lean_obj_tag(x_153) == 0)
{
uint8_t x_154; 
x_154 = !lean_is_exclusive(x_153);
if (x_154 == 0)
{
lean_object* x_155; lean_object* x_156; 
x_155 = lean_ctor_get(x_153, 0);
x_156 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_156, 0, x_155);
lean_ctor_set(x_153, 0, x_156);
return x_153;
}
else
{
lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; 
x_157 = lean_ctor_get(x_153, 0);
x_158 = lean_ctor_get(x_153, 1);
lean_inc(x_158);
lean_inc(x_157);
lean_dec(x_153);
x_159 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_159, 0, x_157);
x_160 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_160, 0, x_159);
lean_ctor_set(x_160, 1, x_158);
return x_160;
}
}
else
{
uint8_t x_161; 
x_161 = !lean_is_exclusive(x_153);
if (x_161 == 0)
{
return x_153;
}
else
{
lean_object* x_162; lean_object* x_163; lean_object* x_164; 
x_162 = lean_ctor_get(x_153, 0);
x_163 = lean_ctor_get(x_153, 1);
lean_inc(x_163);
lean_inc(x_162);
lean_dec(x_153);
x_164 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_164, 0, x_162);
lean_ctor_set(x_164, 1, x_163);
return x_164;
}
}
}
}
else
{
lean_object* x_165; lean_object* x_166; lean_object* x_167; 
x_165 = lean_unsigned_to_nat(0u);
x_166 = l_Lean_Syntax_getArg(x_1, x_165);
lean_dec(x_1);
x_167 = l_Aesop_Frontend_DBuilderName_elab(x_166, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_167) == 0)
{
uint8_t x_168; 
x_168 = !lean_is_exclusive(x_167);
if (x_168 == 0)
{
lean_object* x_169; lean_object* x_170; 
x_169 = lean_ctor_get(x_167, 0);
x_170 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_170, 0, x_169);
lean_ctor_set(x_167, 0, x_170);
return x_167;
}
else
{
lean_object* x_171; lean_object* x_172; lean_object* x_173; lean_object* x_174; 
x_171 = lean_ctor_get(x_167, 0);
x_172 = lean_ctor_get(x_167, 1);
lean_inc(x_172);
lean_inc(x_171);
lean_dec(x_167);
x_173 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_173, 0, x_171);
x_174 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_174, 0, x_173);
lean_ctor_set(x_174, 1, x_172);
return x_174;
}
}
else
{
uint8_t x_175; 
x_175 = !lean_is_exclusive(x_167);
if (x_175 == 0)
{
return x_167;
}
else
{
lean_object* x_176; lean_object* x_177; lean_object* x_178; 
x_176 = lean_ctor_get(x_167, 0);
x_177 = lean_ctor_get(x_167, 1);
lean_inc(x_177);
lean_inc(x_176);
lean_dec(x_167);
x_178 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_178, 0, x_176);
lean_ctor_set(x_178, 1, x_177);
return x_178;
}
}
}
}
else
{
lean_object* x_179; lean_object* x_180; lean_object* x_181; 
x_179 = lean_unsigned_to_nat(0u);
x_180 = l_Lean_Syntax_getArg(x_1, x_179);
lean_dec(x_1);
x_181 = l_Aesop_Frontend_PhaseName_elab(x_180, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_181) == 0)
{
uint8_t x_182; 
x_182 = !lean_is_exclusive(x_181);
if (x_182 == 0)
{
lean_object* x_183; lean_object* x_184; uint8_t x_185; 
x_183 = lean_ctor_get(x_181, 0);
x_184 = lean_alloc_ctor(0, 0, 1);
x_185 = lean_unbox(x_183);
lean_dec(x_183);
lean_ctor_set_uint8(x_184, 0, x_185);
lean_ctor_set(x_181, 0, x_184);
return x_181;
}
else
{
lean_object* x_186; lean_object* x_187; lean_object* x_188; uint8_t x_189; lean_object* x_190; 
x_186 = lean_ctor_get(x_181, 0);
x_187 = lean_ctor_get(x_181, 1);
lean_inc(x_187);
lean_inc(x_186);
lean_dec(x_181);
x_188 = lean_alloc_ctor(0, 0, 1);
x_189 = lean_unbox(x_186);
lean_dec(x_186);
lean_ctor_set_uint8(x_188, 0, x_189);
x_190 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_190, 0, x_188);
lean_ctor_set(x_190, 1, x_187);
return x_190;
}
}
else
{
uint8_t x_191; 
x_191 = !lean_is_exclusive(x_181);
if (x_191 == 0)
{
return x_181;
}
else
{
lean_object* x_192; lean_object* x_193; lean_object* x_194; 
x_192 = lean_ctor_get(x_181, 0);
x_193 = lean_ctor_get(x_181, 1);
lean_inc(x_193);
lean_inc(x_192);
lean_dec(x_181);
x_194 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_194, 0, x_192);
lean_ctor_set(x_194, 1, x_193);
return x_194;
}
}
}
}
else
{
lean_object* x_195; lean_object* x_196; lean_object* x_197; 
x_195 = lean_unsigned_to_nat(0u);
x_196 = l_Lean_Syntax_getArg(x_1, x_195);
lean_dec(x_1);
x_197 = l_Aesop_Frontend_Priority_elab(x_196, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_197) == 0)
{
uint8_t x_198; 
x_198 = !lean_is_exclusive(x_197);
if (x_198 == 0)
{
lean_object* x_199; lean_object* x_200; 
x_199 = lean_ctor_get(x_197, 0);
x_200 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_200, 0, x_199);
lean_ctor_set(x_197, 0, x_200);
return x_197;
}
else
{
lean_object* x_201; lean_object* x_202; lean_object* x_203; lean_object* x_204; 
x_201 = lean_ctor_get(x_197, 0);
x_202 = lean_ctor_get(x_197, 1);
lean_inc(x_202);
lean_inc(x_201);
lean_dec(x_197);
x_203 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_203, 0, x_201);
x_204 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_204, 0, x_203);
lean_ctor_set(x_204, 1, x_202);
return x_204;
}
}
else
{
uint8_t x_205; 
x_205 = !lean_is_exclusive(x_197);
if (x_205 == 0)
{
return x_197;
}
else
{
lean_object* x_206; lean_object* x_207; lean_object* x_208; 
x_206 = lean_ctor_get(x_197, 0);
x_207 = lean_ctor_get(x_197, 1);
lean_inc(x_207);
lean_inc(x_206);
lean_dec(x_197);
x_208 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_208, 0, x_206);
lean_ctor_set(x_208, 1, x_207);
return x_208;
}
}
}
}
else
{
lean_object* x_209; lean_object* x_210; lean_object* x_211; lean_object* x_212; lean_object* x_213; lean_object* x_214; lean_object* x_215; lean_object* x_216; lean_object* x_217; lean_object* x_218; lean_object* x_219; uint8_t x_220; lean_object* x_221; uint8_t x_222; lean_object* x_223; lean_object* x_224; 
x_209 = lean_ctor_get(x_7, 0);
x_210 = lean_ctor_get(x_7, 1);
x_211 = lean_ctor_get(x_7, 2);
x_212 = lean_ctor_get(x_7, 3);
x_213 = lean_ctor_get(x_7, 4);
x_214 = lean_ctor_get(x_7, 5);
x_215 = lean_ctor_get(x_7, 6);
x_216 = lean_ctor_get(x_7, 7);
x_217 = lean_ctor_get(x_7, 8);
x_218 = lean_ctor_get(x_7, 9);
x_219 = lean_ctor_get(x_7, 10);
x_220 = lean_ctor_get_uint8(x_7, sizeof(void*)*12);
x_221 = lean_ctor_get(x_7, 11);
x_222 = lean_ctor_get_uint8(x_7, sizeof(void*)*12 + 1);
lean_inc(x_221);
lean_inc(x_219);
lean_inc(x_218);
lean_inc(x_217);
lean_inc(x_216);
lean_inc(x_215);
lean_inc(x_214);
lean_inc(x_213);
lean_inc(x_212);
lean_inc(x_211);
lean_inc(x_210);
lean_inc(x_209);
lean_dec(x_7);
x_223 = l_Lean_replaceRef(x_1, x_214);
lean_dec(x_214);
x_224 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_224, 0, x_209);
lean_ctor_set(x_224, 1, x_210);
lean_ctor_set(x_224, 2, x_211);
lean_ctor_set(x_224, 3, x_212);
lean_ctor_set(x_224, 4, x_213);
lean_ctor_set(x_224, 5, x_223);
lean_ctor_set(x_224, 6, x_215);
lean_ctor_set(x_224, 7, x_216);
lean_ctor_set(x_224, 8, x_217);
lean_ctor_set(x_224, 9, x_218);
lean_ctor_set(x_224, 10, x_219);
lean_ctor_set(x_224, 11, x_221);
lean_ctor_set_uint8(x_224, sizeof(void*)*12, x_220);
lean_ctor_set_uint8(x_224, sizeof(void*)*12 + 1, x_222);
if (x_11 == 0)
{
lean_object* x_225; uint8_t x_226; 
x_225 = l_Aesop_Frontend_Parser_feature_____closed__2;
lean_inc(x_1);
x_226 = l_Lean_Syntax_isOfKind(x_1, x_225);
if (x_226 == 0)
{
lean_object* x_227; uint8_t x_228; 
x_227 = l_Aesop_Frontend_Parser_feature____2___closed__2;
lean_inc(x_1);
x_228 = l_Lean_Syntax_isOfKind(x_1, x_227);
if (x_228 == 0)
{
lean_object* x_229; uint8_t x_230; 
x_229 = l_Aesop_Frontend_Parser_feature____3___closed__2;
lean_inc(x_1);
x_230 = l_Lean_Syntax_isOfKind(x_1, x_229);
if (x_230 == 0)
{
lean_object* x_231; uint8_t x_232; 
x_231 = l_Aesop_Frontend_Parser_feature____4___closed__2;
lean_inc(x_1);
x_232 = l_Lean_Syntax_isOfKind(x_1, x_231);
if (x_232 == 0)
{
lean_object* x_233; uint8_t x_234; 
x_233 = l_Aesop_Frontend_Parser_featIdent___closed__2;
lean_inc(x_1);
x_234 = l_Lean_Syntax_isOfKind(x_1, x_233);
if (x_234 == 0)
{
lean_object* x_235; uint8_t x_236; 
x_235 = l_Aesop_Frontend_Parser_feature_x28___x29___closed__2;
lean_inc(x_1);
x_236 = l_Lean_Syntax_isOfKind(x_1, x_235);
if (x_236 == 0)
{
lean_object* x_237; lean_object* x_238; lean_object* x_256; uint8_t x_257; 
x_237 = l_Aesop_Frontend_Feature_elab___closed__1;
x_256 = l_Aesop_Frontend_Feature_elab___closed__3;
lean_inc(x_1);
x_257 = l_Lean_Syntax_isOfKind(x_1, x_256);
if (x_257 == 0)
{
lean_object* x_258; lean_object* x_259; 
lean_dec(x_1);
x_258 = lean_box(0);
x_259 = lean_apply_9(x_237, x_258, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
return x_259;
}
else
{
lean_object* x_260; lean_object* x_261; lean_object* x_262; uint8_t x_263; 
x_260 = l_Lean_Syntax_getArgs(x_1);
lean_dec(x_1);
x_261 = lean_array_get_size(x_260);
x_262 = lean_unsigned_to_nat(0u);
x_263 = lean_nat_dec_lt(x_262, x_261);
if (x_263 == 0)
{
lean_object* x_264; 
lean_dec(x_261);
lean_dec(x_260);
x_264 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_238 = x_264;
goto block_255;
}
else
{
uint8_t x_265; 
x_265 = lean_nat_dec_le(x_261, x_261);
if (x_265 == 0)
{
lean_object* x_266; 
lean_dec(x_261);
lean_dec(x_260);
x_266 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_238 = x_266;
goto block_255;
}
else
{
size_t x_267; size_t x_268; lean_object* x_269; lean_object* x_270; 
x_267 = 0;
x_268 = lean_usize_of_nat(x_261);
lean_dec(x_261);
x_269 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_270 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2(x_233, x_260, x_267, x_268, x_269);
lean_dec(x_260);
x_238 = x_270;
goto block_255;
}
}
}
block_255:
{
lean_object* x_239; lean_object* x_240; uint8_t x_241; 
x_239 = lean_array_get_size(x_238);
x_240 = lean_unsigned_to_nat(1u);
x_241 = lean_nat_dec_eq(x_239, x_240);
lean_dec(x_239);
if (x_241 == 0)
{
lean_object* x_242; lean_object* x_243; 
lean_dec(x_238);
x_242 = lean_box(0);
x_243 = lean_apply_9(x_237, x_242, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
return x_243;
}
else
{
lean_object* x_244; lean_object* x_245; lean_object* x_246; 
x_244 = lean_unsigned_to_nat(0u);
x_245 = lean_array_fget(x_238, x_244);
lean_dec(x_238);
x_246 = l_Aesop_Frontend_Feature_elab(x_245, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
if (lean_obj_tag(x_246) == 0)
{
lean_object* x_247; lean_object* x_248; lean_object* x_249; lean_object* x_250; 
x_247 = lean_ctor_get(x_246, 0);
lean_inc(x_247);
x_248 = lean_ctor_get(x_246, 1);
lean_inc(x_248);
if (lean_is_exclusive(x_246)) {
 lean_ctor_release(x_246, 0);
 lean_ctor_release(x_246, 1);
 x_249 = x_246;
} else {
 lean_dec_ref(x_246);
 x_249 = lean_box(0);
}
if (lean_is_scalar(x_249)) {
 x_250 = lean_alloc_ctor(0, 2, 0);
} else {
 x_250 = x_249;
}
lean_ctor_set(x_250, 0, x_247);
lean_ctor_set(x_250, 1, x_248);
return x_250;
}
else
{
lean_object* x_251; lean_object* x_252; lean_object* x_253; lean_object* x_254; 
x_251 = lean_ctor_get(x_246, 0);
lean_inc(x_251);
x_252 = lean_ctor_get(x_246, 1);
lean_inc(x_252);
if (lean_is_exclusive(x_246)) {
 lean_ctor_release(x_246, 0);
 lean_ctor_release(x_246, 1);
 x_253 = x_246;
} else {
 lean_dec_ref(x_246);
 x_253 = lean_box(0);
}
if (lean_is_scalar(x_253)) {
 x_254 = lean_alloc_ctor(1, 2, 0);
} else {
 x_254 = x_253;
}
lean_ctor_set(x_254, 0, x_251);
lean_ctor_set(x_254, 1, x_252);
return x_254;
}
}
}
}
else
{
lean_object* x_271; lean_object* x_272; lean_object* x_273; lean_object* x_274; 
lean_dec(x_224);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_271 = lean_unsigned_to_nat(1u);
x_272 = l_Lean_Syntax_getArg(x_1, x_271);
lean_dec(x_1);
x_273 = lean_alloc_ctor(4, 1, 0);
lean_ctor_set(x_273, 0, x_272);
x_274 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_274, 0, x_273);
lean_ctor_set(x_274, 1, x_9);
return x_274;
}
}
else
{
lean_object* x_275; lean_object* x_276; lean_object* x_277; uint8_t x_278; 
x_275 = lean_unsigned_to_nat(0u);
x_276 = l_Lean_Syntax_getArg(x_1, x_275);
x_277 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15;
lean_inc(x_276);
x_278 = l_Lean_Syntax_isOfKind(x_276, x_277);
if (x_278 == 0)
{
lean_object* x_279; lean_object* x_280; lean_object* x_297; uint8_t x_298; 
lean_dec(x_276);
x_279 = l_Aesop_Frontend_Feature_elab___closed__1;
x_297 = l_Aesop_Frontend_Feature_elab___closed__3;
lean_inc(x_1);
x_298 = l_Lean_Syntax_isOfKind(x_1, x_297);
if (x_298 == 0)
{
lean_object* x_299; lean_object* x_300; 
lean_dec(x_1);
x_299 = lean_box(0);
x_300 = lean_apply_9(x_279, x_299, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
return x_300;
}
else
{
lean_object* x_301; lean_object* x_302; uint8_t x_303; 
x_301 = l_Lean_Syntax_getArgs(x_1);
lean_dec(x_1);
x_302 = lean_array_get_size(x_301);
x_303 = lean_nat_dec_lt(x_275, x_302);
if (x_303 == 0)
{
lean_object* x_304; 
lean_dec(x_302);
lean_dec(x_301);
x_304 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_280 = x_304;
goto block_296;
}
else
{
uint8_t x_305; 
x_305 = lean_nat_dec_le(x_302, x_302);
if (x_305 == 0)
{
lean_object* x_306; 
lean_dec(x_302);
lean_dec(x_301);
x_306 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_280 = x_306;
goto block_296;
}
else
{
size_t x_307; size_t x_308; lean_object* x_309; lean_object* x_310; 
x_307 = 0;
x_308 = lean_usize_of_nat(x_302);
lean_dec(x_302);
x_309 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_310 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3(x_233, x_301, x_307, x_308, x_309);
lean_dec(x_301);
x_280 = x_310;
goto block_296;
}
}
}
block_296:
{
lean_object* x_281; lean_object* x_282; uint8_t x_283; 
x_281 = lean_array_get_size(x_280);
x_282 = lean_unsigned_to_nat(1u);
x_283 = lean_nat_dec_eq(x_281, x_282);
lean_dec(x_281);
if (x_283 == 0)
{
lean_object* x_284; lean_object* x_285; 
lean_dec(x_280);
x_284 = lean_box(0);
x_285 = lean_apply_9(x_279, x_284, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
return x_285;
}
else
{
lean_object* x_286; lean_object* x_287; 
x_286 = lean_array_fget(x_280, x_275);
lean_dec(x_280);
x_287 = l_Aesop_Frontend_Feature_elab(x_286, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
if (lean_obj_tag(x_287) == 0)
{
lean_object* x_288; lean_object* x_289; lean_object* x_290; lean_object* x_291; 
x_288 = lean_ctor_get(x_287, 0);
lean_inc(x_288);
x_289 = lean_ctor_get(x_287, 1);
lean_inc(x_289);
if (lean_is_exclusive(x_287)) {
 lean_ctor_release(x_287, 0);
 lean_ctor_release(x_287, 1);
 x_290 = x_287;
} else {
 lean_dec_ref(x_287);
 x_290 = lean_box(0);
}
if (lean_is_scalar(x_290)) {
 x_291 = lean_alloc_ctor(0, 2, 0);
} else {
 x_291 = x_290;
}
lean_ctor_set(x_291, 0, x_288);
lean_ctor_set(x_291, 1, x_289);
return x_291;
}
else
{
lean_object* x_292; lean_object* x_293; lean_object* x_294; lean_object* x_295; 
x_292 = lean_ctor_get(x_287, 0);
lean_inc(x_292);
x_293 = lean_ctor_get(x_287, 1);
lean_inc(x_293);
if (lean_is_exclusive(x_287)) {
 lean_ctor_release(x_287, 0);
 lean_ctor_release(x_287, 1);
 x_294 = x_287;
} else {
 lean_dec_ref(x_287);
 x_294 = lean_box(0);
}
if (lean_is_scalar(x_294)) {
 x_295 = lean_alloc_ctor(1, 2, 0);
} else {
 x_295 = x_294;
}
lean_ctor_set(x_295, 0, x_292);
lean_ctor_set(x_295, 1, x_293);
return x_295;
}
}
}
}
else
{
lean_object* x_311; lean_object* x_312; 
lean_dec(x_224);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_311 = lean_alloc_ctor(4, 1, 0);
lean_ctor_set(x_311, 0, x_276);
x_312 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_312, 0, x_311);
lean_ctor_set(x_312, 1, x_9);
return x_312;
}
}
}
else
{
lean_object* x_313; lean_object* x_314; lean_object* x_315; uint8_t x_316; 
x_313 = lean_unsigned_to_nat(0u);
x_314 = l_Lean_Syntax_getArg(x_1, x_313);
x_315 = l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2;
lean_inc(x_314);
x_316 = l_Lean_Syntax_isOfKind(x_314, x_315);
if (x_316 == 0)
{
lean_object* x_317; lean_object* x_318; lean_object* x_335; uint8_t x_336; 
lean_dec(x_314);
x_317 = l_Aesop_Frontend_Feature_elab___closed__1;
x_335 = l_Aesop_Frontend_Feature_elab___closed__3;
lean_inc(x_1);
x_336 = l_Lean_Syntax_isOfKind(x_1, x_335);
if (x_336 == 0)
{
lean_object* x_337; lean_object* x_338; 
lean_dec(x_1);
x_337 = lean_box(0);
x_338 = lean_apply_9(x_317, x_337, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
return x_338;
}
else
{
lean_object* x_339; lean_object* x_340; uint8_t x_341; 
x_339 = l_Lean_Syntax_getArgs(x_1);
lean_dec(x_1);
x_340 = lean_array_get_size(x_339);
x_341 = lean_nat_dec_lt(x_313, x_340);
if (x_341 == 0)
{
lean_object* x_342; 
lean_dec(x_340);
lean_dec(x_339);
x_342 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_318 = x_342;
goto block_334;
}
else
{
uint8_t x_343; 
x_343 = lean_nat_dec_le(x_340, x_340);
if (x_343 == 0)
{
lean_object* x_344; 
lean_dec(x_340);
lean_dec(x_339);
x_344 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_318 = x_344;
goto block_334;
}
else
{
size_t x_345; size_t x_346; lean_object* x_347; lean_object* x_348; 
x_345 = 0;
x_346 = lean_usize_of_nat(x_340);
lean_dec(x_340);
x_347 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_348 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4(x_339, x_345, x_346, x_347);
lean_dec(x_339);
x_318 = x_348;
goto block_334;
}
}
}
block_334:
{
lean_object* x_319; lean_object* x_320; uint8_t x_321; 
x_319 = lean_array_get_size(x_318);
x_320 = lean_unsigned_to_nat(1u);
x_321 = lean_nat_dec_eq(x_319, x_320);
lean_dec(x_319);
if (x_321 == 0)
{
lean_object* x_322; lean_object* x_323; 
lean_dec(x_318);
x_322 = lean_box(0);
x_323 = lean_apply_9(x_317, x_322, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
return x_323;
}
else
{
lean_object* x_324; lean_object* x_325; 
x_324 = lean_array_fget(x_318, x_313);
lean_dec(x_318);
x_325 = l_Aesop_Frontend_Feature_elab(x_324, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
if (lean_obj_tag(x_325) == 0)
{
lean_object* x_326; lean_object* x_327; lean_object* x_328; lean_object* x_329; 
x_326 = lean_ctor_get(x_325, 0);
lean_inc(x_326);
x_327 = lean_ctor_get(x_325, 1);
lean_inc(x_327);
if (lean_is_exclusive(x_325)) {
 lean_ctor_release(x_325, 0);
 lean_ctor_release(x_325, 1);
 x_328 = x_325;
} else {
 lean_dec_ref(x_325);
 x_328 = lean_box(0);
}
if (lean_is_scalar(x_328)) {
 x_329 = lean_alloc_ctor(0, 2, 0);
} else {
 x_329 = x_328;
}
lean_ctor_set(x_329, 0, x_326);
lean_ctor_set(x_329, 1, x_327);
return x_329;
}
else
{
lean_object* x_330; lean_object* x_331; lean_object* x_332; lean_object* x_333; 
x_330 = lean_ctor_get(x_325, 0);
lean_inc(x_330);
x_331 = lean_ctor_get(x_325, 1);
lean_inc(x_331);
if (lean_is_exclusive(x_325)) {
 lean_ctor_release(x_325, 0);
 lean_ctor_release(x_325, 1);
 x_332 = x_325;
} else {
 lean_dec_ref(x_325);
 x_332 = lean_box(0);
}
if (lean_is_scalar(x_332)) {
 x_333 = lean_alloc_ctor(1, 2, 0);
} else {
 x_333 = x_332;
}
lean_ctor_set(x_333, 0, x_330);
lean_ctor_set(x_333, 1, x_331);
return x_333;
}
}
}
}
else
{
lean_object* x_349; 
lean_dec(x_1);
x_349 = l_Aesop_Frontend_RuleSets_elab(x_314, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
lean_dec(x_8);
lean_dec(x_224);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_349) == 0)
{
lean_object* x_350; lean_object* x_351; lean_object* x_352; lean_object* x_353; lean_object* x_354; 
x_350 = lean_ctor_get(x_349, 0);
lean_inc(x_350);
x_351 = lean_ctor_get(x_349, 1);
lean_inc(x_351);
if (lean_is_exclusive(x_349)) {
 lean_ctor_release(x_349, 0);
 lean_ctor_release(x_349, 1);
 x_352 = x_349;
} else {
 lean_dec_ref(x_349);
 x_352 = lean_box(0);
}
x_353 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_353, 0, x_350);
if (lean_is_scalar(x_352)) {
 x_354 = lean_alloc_ctor(0, 2, 0);
} else {
 x_354 = x_352;
}
lean_ctor_set(x_354, 0, x_353);
lean_ctor_set(x_354, 1, x_351);
return x_354;
}
else
{
lean_object* x_355; lean_object* x_356; lean_object* x_357; lean_object* x_358; 
x_355 = lean_ctor_get(x_349, 0);
lean_inc(x_355);
x_356 = lean_ctor_get(x_349, 1);
lean_inc(x_356);
if (lean_is_exclusive(x_349)) {
 lean_ctor_release(x_349, 0);
 lean_ctor_release(x_349, 1);
 x_357 = x_349;
} else {
 lean_dec_ref(x_349);
 x_357 = lean_box(0);
}
if (lean_is_scalar(x_357)) {
 x_358 = lean_alloc_ctor(1, 2, 0);
} else {
 x_358 = x_357;
}
lean_ctor_set(x_358, 0, x_355);
lean_ctor_set(x_358, 1, x_356);
return x_358;
}
}
}
}
else
{
lean_object* x_359; lean_object* x_360; lean_object* x_361; 
x_359 = lean_unsigned_to_nat(0u);
x_360 = l_Lean_Syntax_getArg(x_1, x_359);
lean_dec(x_1);
x_361 = l_Aesop_Frontend_BuilderOption_elab(x_360, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
lean_dec(x_2);
if (lean_obj_tag(x_361) == 0)
{
lean_object* x_362; lean_object* x_363; lean_object* x_364; lean_object* x_365; lean_object* x_366; 
x_362 = lean_ctor_get(x_361, 0);
lean_inc(x_362);
x_363 = lean_ctor_get(x_361, 1);
lean_inc(x_363);
if (lean_is_exclusive(x_361)) {
 lean_ctor_release(x_361, 0);
 lean_ctor_release(x_361, 1);
 x_364 = x_361;
} else {
 lean_dec_ref(x_361);
 x_364 = lean_box(0);
}
x_365 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_365, 0, x_362);
if (lean_is_scalar(x_364)) {
 x_366 = lean_alloc_ctor(0, 2, 0);
} else {
 x_366 = x_364;
}
lean_ctor_set(x_366, 0, x_365);
lean_ctor_set(x_366, 1, x_363);
return x_366;
}
else
{
lean_object* x_367; lean_object* x_368; lean_object* x_369; lean_object* x_370; 
x_367 = lean_ctor_get(x_361, 0);
lean_inc(x_367);
x_368 = lean_ctor_get(x_361, 1);
lean_inc(x_368);
if (lean_is_exclusive(x_361)) {
 lean_ctor_release(x_361, 0);
 lean_ctor_release(x_361, 1);
 x_369 = x_361;
} else {
 lean_dec_ref(x_361);
 x_369 = lean_box(0);
}
if (lean_is_scalar(x_369)) {
 x_370 = lean_alloc_ctor(1, 2, 0);
} else {
 x_370 = x_369;
}
lean_ctor_set(x_370, 0, x_367);
lean_ctor_set(x_370, 1, x_368);
return x_370;
}
}
}
else
{
lean_object* x_371; lean_object* x_372; lean_object* x_373; 
x_371 = lean_unsigned_to_nat(0u);
x_372 = l_Lean_Syntax_getArg(x_1, x_371);
lean_dec(x_1);
x_373 = l_Aesop_Frontend_DBuilderName_elab(x_372, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
lean_dec(x_8);
lean_dec(x_224);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_373) == 0)
{
lean_object* x_374; lean_object* x_375; lean_object* x_376; lean_object* x_377; lean_object* x_378; 
x_374 = lean_ctor_get(x_373, 0);
lean_inc(x_374);
x_375 = lean_ctor_get(x_373, 1);
lean_inc(x_375);
if (lean_is_exclusive(x_373)) {
 lean_ctor_release(x_373, 0);
 lean_ctor_release(x_373, 1);
 x_376 = x_373;
} else {
 lean_dec_ref(x_373);
 x_376 = lean_box(0);
}
x_377 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_377, 0, x_374);
if (lean_is_scalar(x_376)) {
 x_378 = lean_alloc_ctor(0, 2, 0);
} else {
 x_378 = x_376;
}
lean_ctor_set(x_378, 0, x_377);
lean_ctor_set(x_378, 1, x_375);
return x_378;
}
else
{
lean_object* x_379; lean_object* x_380; lean_object* x_381; lean_object* x_382; 
x_379 = lean_ctor_get(x_373, 0);
lean_inc(x_379);
x_380 = lean_ctor_get(x_373, 1);
lean_inc(x_380);
if (lean_is_exclusive(x_373)) {
 lean_ctor_release(x_373, 0);
 lean_ctor_release(x_373, 1);
 x_381 = x_373;
} else {
 lean_dec_ref(x_373);
 x_381 = lean_box(0);
}
if (lean_is_scalar(x_381)) {
 x_382 = lean_alloc_ctor(1, 2, 0);
} else {
 x_382 = x_381;
}
lean_ctor_set(x_382, 0, x_379);
lean_ctor_set(x_382, 1, x_380);
return x_382;
}
}
}
else
{
lean_object* x_383; lean_object* x_384; lean_object* x_385; 
x_383 = lean_unsigned_to_nat(0u);
x_384 = l_Lean_Syntax_getArg(x_1, x_383);
lean_dec(x_1);
x_385 = l_Aesop_Frontend_PhaseName_elab(x_384, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
lean_dec(x_8);
lean_dec(x_224);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_385) == 0)
{
lean_object* x_386; lean_object* x_387; lean_object* x_388; lean_object* x_389; uint8_t x_390; lean_object* x_391; 
x_386 = lean_ctor_get(x_385, 0);
lean_inc(x_386);
x_387 = lean_ctor_get(x_385, 1);
lean_inc(x_387);
if (lean_is_exclusive(x_385)) {
 lean_ctor_release(x_385, 0);
 lean_ctor_release(x_385, 1);
 x_388 = x_385;
} else {
 lean_dec_ref(x_385);
 x_388 = lean_box(0);
}
x_389 = lean_alloc_ctor(0, 0, 1);
x_390 = lean_unbox(x_386);
lean_dec(x_386);
lean_ctor_set_uint8(x_389, 0, x_390);
if (lean_is_scalar(x_388)) {
 x_391 = lean_alloc_ctor(0, 2, 0);
} else {
 x_391 = x_388;
}
lean_ctor_set(x_391, 0, x_389);
lean_ctor_set(x_391, 1, x_387);
return x_391;
}
else
{
lean_object* x_392; lean_object* x_393; lean_object* x_394; lean_object* x_395; 
x_392 = lean_ctor_get(x_385, 0);
lean_inc(x_392);
x_393 = lean_ctor_get(x_385, 1);
lean_inc(x_393);
if (lean_is_exclusive(x_385)) {
 lean_ctor_release(x_385, 0);
 lean_ctor_release(x_385, 1);
 x_394 = x_385;
} else {
 lean_dec_ref(x_385);
 x_394 = lean_box(0);
}
if (lean_is_scalar(x_394)) {
 x_395 = lean_alloc_ctor(1, 2, 0);
} else {
 x_395 = x_394;
}
lean_ctor_set(x_395, 0, x_392);
lean_ctor_set(x_395, 1, x_393);
return x_395;
}
}
}
else
{
lean_object* x_396; lean_object* x_397; lean_object* x_398; 
x_396 = lean_unsigned_to_nat(0u);
x_397 = l_Lean_Syntax_getArg(x_1, x_396);
lean_dec(x_1);
x_398 = l_Aesop_Frontend_Priority_elab(x_397, x_2, x_3, x_4, x_5, x_6, x_224, x_8, x_9);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
if (lean_obj_tag(x_398) == 0)
{
lean_object* x_399; lean_object* x_400; lean_object* x_401; lean_object* x_402; lean_object* x_403; 
x_399 = lean_ctor_get(x_398, 0);
lean_inc(x_399);
x_400 = lean_ctor_get(x_398, 1);
lean_inc(x_400);
if (lean_is_exclusive(x_398)) {
 lean_ctor_release(x_398, 0);
 lean_ctor_release(x_398, 1);
 x_401 = x_398;
} else {
 lean_dec_ref(x_398);
 x_401 = lean_box(0);
}
x_402 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_402, 0, x_399);
if (lean_is_scalar(x_401)) {
 x_403 = lean_alloc_ctor(0, 2, 0);
} else {
 x_403 = x_401;
}
lean_ctor_set(x_403, 0, x_402);
lean_ctor_set(x_403, 1, x_400);
return x_403;
}
else
{
lean_object* x_404; lean_object* x_405; lean_object* x_406; lean_object* x_407; 
x_404 = lean_ctor_get(x_398, 0);
lean_inc(x_404);
x_405 = lean_ctor_get(x_398, 1);
lean_inc(x_405);
if (lean_is_exclusive(x_398)) {
 lean_ctor_release(x_398, 0);
 lean_ctor_release(x_398, 1);
 x_406 = x_398;
} else {
 lean_dec_ref(x_398);
 x_406 = lean_box(0);
}
if (lean_is_scalar(x_406)) {
 x_407 = lean_alloc_ctor(1, 2, 0);
} else {
 x_407 = x_406;
}
lean_ctor_set(x_407, 0, x_404);
lean_ctor_set(x_407, 1, x_405);
return x_407;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Feature_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__2(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
size_t x_6; size_t x_7; lean_object* x_8; 
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__3(x_1, x_2, x_6, x_7, x_5);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_7 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_Feature_elab___spec__4(x_1, x_5, x_6, x_4);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_Feature_elab___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_Feature_elab___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule_expr", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4;
x_4 = l_Lean_Name_mkStr3(x_1, x_2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("`(rule_expr| ", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1;
x_3 = l_Lean_Name_mkStr2(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__5;
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__4;
x_3 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__7;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__2;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5;
x_2 = lean_unsigned_to_nat(1024u);
x_3 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__9;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__10;
return x_1;
}
}
static lean_object* _init_l_Lean_Parser_Category_Aesop_rule__expr() {
_start:
{
lean_object* x_1; 
x_1 = lean_box(0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule_expr_", 10, 10);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_rule__expr_____closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_rule__expr_____closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr__() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_rule__expr_____closed__3;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule_expr___", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_rule__expr_________closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("ppSpace", 7, 7);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l_Aesop_Frontend_Parser_rule__expr_________closed__3;
x_3 = l_Lean_Name_str___override(x_1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_rule__expr_________closed__4;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_rule__expr_________closed__5;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_rule__expr_________closed__6;
x_3 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr_________closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_rule__expr_________closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_rule__expr_________closed__7;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr______() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_rule__expr_________closed__8;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("rule_expr_[_]", 13, 13);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_priority___x25___closed__1;
x_3 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2;
x_4 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__1;
x_5 = l_Lean_Name_mkStr4(x_1, x_2, x_3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" [", 2, 2);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__3;
x_2 = lean_alloc_ctor(5, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6;
x_3 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__4;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; uint8_t x_4; lean_object* x_5; 
x_1 = l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6;
x_2 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18;
x_4 = 1;
x_5 = lean_alloc_ctor(11, 3, 1);
lean_ctor_set(x_5, 0, x_1);
lean_ctor_set(x_5, 1, x_2);
lean_ctor_set(x_5, 2, x_3);
lean_ctor_set_uint8(x_5, sizeof(void*)*3, x_4);
return x_5;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__5;
x_3 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__6;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10;
x_2 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__7;
x_3 = l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23;
x_4 = lean_alloc_ctor(2, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2;
x_2 = lean_unsigned_to_nat(1022u);
x_3 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__8;
x_4 = lean_alloc_ctor(3, 3, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_2);
lean_ctor_set(x_4, 2, x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__9;
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedRuleExpr___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_instInhabitedFeature___closed__1;
x_2 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_instInhabitedRuleExpr() {
_start:
{
lean_object* x_1; 
x_1 = l_Aesop_Frontend_instInhabitedRuleExpr___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___rarg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2;
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = lean_alloc_closure((void*)(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___rarg), 1, 0);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_2, x_1);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_array_uget(x_3, x_2);
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_array_uset(x_3, x_2, x_15);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_17 = l_Aesop_Frontend_RuleExpr_elab(x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_22 = lean_array_uset(x_16, x_2, x_18);
x_2 = x_21;
x_3 = x_22;
x_11 = x_19;
goto _start;
}
else
{
uint8_t x_24; 
lean_dec(x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
return x_17;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_17, 0);
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_17);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_RuleExpr_elab___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_elab(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; uint8_t x_11; uint8_t x_12; 
x_10 = l_Aesop_Frontend_Parser_rule__expr_________closed__2;
lean_inc(x_1);
x_11 = l_Lean_Syntax_isOfKind(x_1, x_10);
x_12 = !lean_is_exclusive(x_7);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_7, 5);
x_14 = l_Lean_replaceRef(x_1, x_13);
lean_dec(x_13);
lean_ctor_set(x_7, 5, x_14);
if (x_11 == 0)
{
lean_object* x_15; uint8_t x_16; 
x_15 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2;
lean_inc(x_1);
x_16 = l_Lean_Syntax_isOfKind(x_1, x_15);
if (x_16 == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = l_Aesop_Frontend_Parser_rule__expr_____closed__2;
lean_inc(x_1);
x_18 = l_Lean_Syntax_isOfKind(x_1, x_17);
if (x_18 == 0)
{
lean_object* x_19; 
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_19 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___rarg(x_9);
return x_19;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_unsigned_to_nat(0u);
x_21 = l_Lean_Syntax_getArg(x_1, x_20);
lean_dec(x_1);
x_22 = l_Aesop_Frontend_Feature_elab(x_21, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_22) == 0)
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_22);
if (x_23 == 0)
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_22, 0);
x_25 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
lean_ctor_set(x_22, 0, x_26);
return x_22;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_27 = lean_ctor_get(x_22, 0);
x_28 = lean_ctor_get(x_22, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_22);
x_29 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_30 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_30, 0, x_27);
lean_ctor_set(x_30, 1, x_29);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set(x_31, 1, x_28);
return x_31;
}
}
else
{
uint8_t x_32; 
x_32 = !lean_is_exclusive(x_22);
if (x_32 == 0)
{
return x_22;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_22, 0);
x_34 = lean_ctor_get(x_22, 1);
lean_inc(x_34);
lean_inc(x_33);
lean_dec(x_22);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set(x_35, 1, x_34);
return x_35;
}
}
}
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_36 = lean_unsigned_to_nat(0u);
x_37 = l_Lean_Syntax_getArg(x_1, x_36);
x_38 = lean_unsigned_to_nat(2u);
x_39 = l_Lean_Syntax_getArg(x_1, x_38);
lean_dec(x_1);
x_40 = l_Lean_Syntax_getArgs(x_39);
lean_dec(x_39);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_41 = l_Aesop_Frontend_Feature_elab(x_37, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_41) == 0)
{
lean_object* x_42; lean_object* x_43; lean_object* x_44; size_t x_45; size_t x_46; lean_object* x_47; 
x_42 = lean_ctor_get(x_41, 0);
lean_inc(x_42);
x_43 = lean_ctor_get(x_41, 1);
lean_inc(x_43);
lean_dec(x_41);
x_44 = l_Lean_Syntax_TSepArray_getElems___rarg(x_40);
lean_dec(x_40);
x_45 = lean_array_size(x_44);
x_46 = 0;
x_47 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2(x_45, x_46, x_44, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_43);
if (lean_obj_tag(x_47) == 0)
{
uint8_t x_48; 
x_48 = !lean_is_exclusive(x_47);
if (x_48 == 0)
{
lean_object* x_49; lean_object* x_50; 
x_49 = lean_ctor_get(x_47, 0);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_42);
lean_ctor_set(x_50, 1, x_49);
lean_ctor_set(x_47, 0, x_50);
return x_47;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_51 = lean_ctor_get(x_47, 0);
x_52 = lean_ctor_get(x_47, 1);
lean_inc(x_52);
lean_inc(x_51);
lean_dec(x_47);
x_53 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_53, 0, x_42);
lean_ctor_set(x_53, 1, x_51);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_52);
return x_54;
}
}
else
{
uint8_t x_55; 
lean_dec(x_42);
x_55 = !lean_is_exclusive(x_47);
if (x_55 == 0)
{
return x_47;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_47, 0);
x_57 = lean_ctor_get(x_47, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_47);
x_58 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
return x_58;
}
}
}
else
{
uint8_t x_59; 
lean_dec(x_40);
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_59 = !lean_is_exclusive(x_41);
if (x_59 == 0)
{
return x_41;
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_60 = lean_ctor_get(x_41, 0);
x_61 = lean_ctor_get(x_41, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_41);
x_62 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_62, 0, x_60);
lean_ctor_set(x_62, 1, x_61);
return x_62;
}
}
}
}
else
{
lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
x_63 = lean_unsigned_to_nat(0u);
x_64 = l_Lean_Syntax_getArg(x_1, x_63);
x_65 = lean_unsigned_to_nat(1u);
x_66 = l_Lean_Syntax_getArg(x_1, x_65);
lean_dec(x_1);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_67 = l_Aesop_Frontend_Feature_elab(x_64, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_67) == 0)
{
lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_68 = lean_ctor_get(x_67, 0);
lean_inc(x_68);
x_69 = lean_ctor_get(x_67, 1);
lean_inc(x_69);
lean_dec(x_67);
x_70 = l_Aesop_Frontend_RuleExpr_elab(x_66, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_69);
if (lean_obj_tag(x_70) == 0)
{
uint8_t x_71; 
x_71 = !lean_is_exclusive(x_70);
if (x_71 == 0)
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; 
x_72 = lean_ctor_get(x_70, 0);
x_73 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_74 = lean_array_push(x_73, x_72);
x_75 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_75, 0, x_68);
lean_ctor_set(x_75, 1, x_74);
lean_ctor_set(x_70, 0, x_75);
return x_70;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_76 = lean_ctor_get(x_70, 0);
x_77 = lean_ctor_get(x_70, 1);
lean_inc(x_77);
lean_inc(x_76);
lean_dec(x_70);
x_78 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_79 = lean_array_push(x_78, x_76);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_68);
lean_ctor_set(x_80, 1, x_79);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_77);
return x_81;
}
}
else
{
uint8_t x_82; 
lean_dec(x_68);
x_82 = !lean_is_exclusive(x_70);
if (x_82 == 0)
{
return x_70;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_70, 0);
x_84 = lean_ctor_get(x_70, 1);
lean_inc(x_84);
lean_inc(x_83);
lean_dec(x_70);
x_85 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_85, 0, x_83);
lean_ctor_set(x_85, 1, x_84);
return x_85;
}
}
}
else
{
uint8_t x_86; 
lean_dec(x_66);
lean_dec(x_7);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_86 = !lean_is_exclusive(x_67);
if (x_86 == 0)
{
return x_67;
}
else
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; 
x_87 = lean_ctor_get(x_67, 0);
x_88 = lean_ctor_get(x_67, 1);
lean_inc(x_88);
lean_inc(x_87);
lean_dec(x_67);
x_89 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_89, 0, x_87);
lean_ctor_set(x_89, 1, x_88);
return x_89;
}
}
}
}
else
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; uint8_t x_101; lean_object* x_102; uint8_t x_103; lean_object* x_104; lean_object* x_105; 
x_90 = lean_ctor_get(x_7, 0);
x_91 = lean_ctor_get(x_7, 1);
x_92 = lean_ctor_get(x_7, 2);
x_93 = lean_ctor_get(x_7, 3);
x_94 = lean_ctor_get(x_7, 4);
x_95 = lean_ctor_get(x_7, 5);
x_96 = lean_ctor_get(x_7, 6);
x_97 = lean_ctor_get(x_7, 7);
x_98 = lean_ctor_get(x_7, 8);
x_99 = lean_ctor_get(x_7, 9);
x_100 = lean_ctor_get(x_7, 10);
x_101 = lean_ctor_get_uint8(x_7, sizeof(void*)*12);
x_102 = lean_ctor_get(x_7, 11);
x_103 = lean_ctor_get_uint8(x_7, sizeof(void*)*12 + 1);
lean_inc(x_102);
lean_inc(x_100);
lean_inc(x_99);
lean_inc(x_98);
lean_inc(x_97);
lean_inc(x_96);
lean_inc(x_95);
lean_inc(x_94);
lean_inc(x_93);
lean_inc(x_92);
lean_inc(x_91);
lean_inc(x_90);
lean_dec(x_7);
x_104 = l_Lean_replaceRef(x_1, x_95);
lean_dec(x_95);
x_105 = lean_alloc_ctor(0, 12, 2);
lean_ctor_set(x_105, 0, x_90);
lean_ctor_set(x_105, 1, x_91);
lean_ctor_set(x_105, 2, x_92);
lean_ctor_set(x_105, 3, x_93);
lean_ctor_set(x_105, 4, x_94);
lean_ctor_set(x_105, 5, x_104);
lean_ctor_set(x_105, 6, x_96);
lean_ctor_set(x_105, 7, x_97);
lean_ctor_set(x_105, 8, x_98);
lean_ctor_set(x_105, 9, x_99);
lean_ctor_set(x_105, 10, x_100);
lean_ctor_set(x_105, 11, x_102);
lean_ctor_set_uint8(x_105, sizeof(void*)*12, x_101);
lean_ctor_set_uint8(x_105, sizeof(void*)*12 + 1, x_103);
if (x_11 == 0)
{
lean_object* x_106; uint8_t x_107; 
x_106 = l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2;
lean_inc(x_1);
x_107 = l_Lean_Syntax_isOfKind(x_1, x_106);
if (x_107 == 0)
{
lean_object* x_108; uint8_t x_109; 
x_108 = l_Aesop_Frontend_Parser_rule__expr_____closed__2;
lean_inc(x_1);
x_109 = l_Lean_Syntax_isOfKind(x_1, x_108);
if (x_109 == 0)
{
lean_object* x_110; 
lean_dec(x_105);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_110 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___rarg(x_9);
return x_110;
}
else
{
lean_object* x_111; lean_object* x_112; lean_object* x_113; 
x_111 = lean_unsigned_to_nat(0u);
x_112 = l_Lean_Syntax_getArg(x_1, x_111);
lean_dec(x_1);
x_113 = l_Aesop_Frontend_Feature_elab(x_112, x_2, x_3, x_4, x_5, x_6, x_105, x_8, x_9);
if (lean_obj_tag(x_113) == 0)
{
lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; 
x_114 = lean_ctor_get(x_113, 0);
lean_inc(x_114);
x_115 = lean_ctor_get(x_113, 1);
lean_inc(x_115);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_116 = x_113;
} else {
 lean_dec_ref(x_113);
 x_116 = lean_box(0);
}
x_117 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_118 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_118, 0, x_114);
lean_ctor_set(x_118, 1, x_117);
if (lean_is_scalar(x_116)) {
 x_119 = lean_alloc_ctor(0, 2, 0);
} else {
 x_119 = x_116;
}
lean_ctor_set(x_119, 0, x_118);
lean_ctor_set(x_119, 1, x_115);
return x_119;
}
else
{
lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; 
x_120 = lean_ctor_get(x_113, 0);
lean_inc(x_120);
x_121 = lean_ctor_get(x_113, 1);
lean_inc(x_121);
if (lean_is_exclusive(x_113)) {
 lean_ctor_release(x_113, 0);
 lean_ctor_release(x_113, 1);
 x_122 = x_113;
} else {
 lean_dec_ref(x_113);
 x_122 = lean_box(0);
}
if (lean_is_scalar(x_122)) {
 x_123 = lean_alloc_ctor(1, 2, 0);
} else {
 x_123 = x_122;
}
lean_ctor_set(x_123, 0, x_120);
lean_ctor_set(x_123, 1, x_121);
return x_123;
}
}
}
else
{
lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; 
x_124 = lean_unsigned_to_nat(0u);
x_125 = l_Lean_Syntax_getArg(x_1, x_124);
x_126 = lean_unsigned_to_nat(2u);
x_127 = l_Lean_Syntax_getArg(x_1, x_126);
lean_dec(x_1);
x_128 = l_Lean_Syntax_getArgs(x_127);
lean_dec(x_127);
lean_inc(x_8);
lean_inc(x_105);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_129 = l_Aesop_Frontend_Feature_elab(x_125, x_2, x_3, x_4, x_5, x_6, x_105, x_8, x_9);
if (lean_obj_tag(x_129) == 0)
{
lean_object* x_130; lean_object* x_131; lean_object* x_132; size_t x_133; size_t x_134; lean_object* x_135; 
x_130 = lean_ctor_get(x_129, 0);
lean_inc(x_130);
x_131 = lean_ctor_get(x_129, 1);
lean_inc(x_131);
lean_dec(x_129);
x_132 = l_Lean_Syntax_TSepArray_getElems___rarg(x_128);
lean_dec(x_128);
x_133 = lean_array_size(x_132);
x_134 = 0;
x_135 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2(x_133, x_134, x_132, x_2, x_3, x_4, x_5, x_6, x_105, x_8, x_131);
if (lean_obj_tag(x_135) == 0)
{
lean_object* x_136; lean_object* x_137; lean_object* x_138; lean_object* x_139; lean_object* x_140; 
x_136 = lean_ctor_get(x_135, 0);
lean_inc(x_136);
x_137 = lean_ctor_get(x_135, 1);
lean_inc(x_137);
if (lean_is_exclusive(x_135)) {
 lean_ctor_release(x_135, 0);
 lean_ctor_release(x_135, 1);
 x_138 = x_135;
} else {
 lean_dec_ref(x_135);
 x_138 = lean_box(0);
}
x_139 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_139, 0, x_130);
lean_ctor_set(x_139, 1, x_136);
if (lean_is_scalar(x_138)) {
 x_140 = lean_alloc_ctor(0, 2, 0);
} else {
 x_140 = x_138;
}
lean_ctor_set(x_140, 0, x_139);
lean_ctor_set(x_140, 1, x_137);
return x_140;
}
else
{
lean_object* x_141; lean_object* x_142; lean_object* x_143; lean_object* x_144; 
lean_dec(x_130);
x_141 = lean_ctor_get(x_135, 0);
lean_inc(x_141);
x_142 = lean_ctor_get(x_135, 1);
lean_inc(x_142);
if (lean_is_exclusive(x_135)) {
 lean_ctor_release(x_135, 0);
 lean_ctor_release(x_135, 1);
 x_143 = x_135;
} else {
 lean_dec_ref(x_135);
 x_143 = lean_box(0);
}
if (lean_is_scalar(x_143)) {
 x_144 = lean_alloc_ctor(1, 2, 0);
} else {
 x_144 = x_143;
}
lean_ctor_set(x_144, 0, x_141);
lean_ctor_set(x_144, 1, x_142);
return x_144;
}
}
else
{
lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; 
lean_dec(x_128);
lean_dec(x_105);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_145 = lean_ctor_get(x_129, 0);
lean_inc(x_145);
x_146 = lean_ctor_get(x_129, 1);
lean_inc(x_146);
if (lean_is_exclusive(x_129)) {
 lean_ctor_release(x_129, 0);
 lean_ctor_release(x_129, 1);
 x_147 = x_129;
} else {
 lean_dec_ref(x_129);
 x_147 = lean_box(0);
}
if (lean_is_scalar(x_147)) {
 x_148 = lean_alloc_ctor(1, 2, 0);
} else {
 x_148 = x_147;
}
lean_ctor_set(x_148, 0, x_145);
lean_ctor_set(x_148, 1, x_146);
return x_148;
}
}
}
else
{
lean_object* x_149; lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; 
x_149 = lean_unsigned_to_nat(0u);
x_150 = l_Lean_Syntax_getArg(x_1, x_149);
x_151 = lean_unsigned_to_nat(1u);
x_152 = l_Lean_Syntax_getArg(x_1, x_151);
lean_dec(x_1);
lean_inc(x_8);
lean_inc(x_105);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_153 = l_Aesop_Frontend_Feature_elab(x_150, x_2, x_3, x_4, x_5, x_6, x_105, x_8, x_9);
if (lean_obj_tag(x_153) == 0)
{
lean_object* x_154; lean_object* x_155; lean_object* x_156; 
x_154 = lean_ctor_get(x_153, 0);
lean_inc(x_154);
x_155 = lean_ctor_get(x_153, 1);
lean_inc(x_155);
lean_dec(x_153);
x_156 = l_Aesop_Frontend_RuleExpr_elab(x_152, x_2, x_3, x_4, x_5, x_6, x_105, x_8, x_155);
if (lean_obj_tag(x_156) == 0)
{
lean_object* x_157; lean_object* x_158; lean_object* x_159; lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; 
x_157 = lean_ctor_get(x_156, 0);
lean_inc(x_157);
x_158 = lean_ctor_get(x_156, 1);
lean_inc(x_158);
if (lean_is_exclusive(x_156)) {
 lean_ctor_release(x_156, 0);
 lean_ctor_release(x_156, 1);
 x_159 = x_156;
} else {
 lean_dec_ref(x_156);
 x_159 = lean_box(0);
}
x_160 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_161 = lean_array_push(x_160, x_157);
x_162 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_162, 0, x_154);
lean_ctor_set(x_162, 1, x_161);
if (lean_is_scalar(x_159)) {
 x_163 = lean_alloc_ctor(0, 2, 0);
} else {
 x_163 = x_159;
}
lean_ctor_set(x_163, 0, x_162);
lean_ctor_set(x_163, 1, x_158);
return x_163;
}
else
{
lean_object* x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; 
lean_dec(x_154);
x_164 = lean_ctor_get(x_156, 0);
lean_inc(x_164);
x_165 = lean_ctor_get(x_156, 1);
lean_inc(x_165);
if (lean_is_exclusive(x_156)) {
 lean_ctor_release(x_156, 0);
 lean_ctor_release(x_156, 1);
 x_166 = x_156;
} else {
 lean_dec_ref(x_156);
 x_166 = lean_box(0);
}
if (lean_is_scalar(x_166)) {
 x_167 = lean_alloc_ctor(1, 2, 0);
} else {
 x_167 = x_166;
}
lean_ctor_set(x_167, 0, x_164);
lean_ctor_set(x_167, 1, x_165);
return x_167;
}
}
else
{
lean_object* x_168; lean_object* x_169; lean_object* x_170; lean_object* x_171; 
lean_dec(x_152);
lean_dec(x_105);
lean_dec(x_8);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_168 = lean_ctor_get(x_153, 0);
lean_inc(x_168);
x_169 = lean_ctor_get(x_153, 1);
lean_inc(x_169);
if (lean_is_exclusive(x_153)) {
 lean_ctor_release(x_153, 0);
 lean_ctor_release(x_153, 1);
 x_170 = x_153;
} else {
 lean_dec_ref(x_153);
 x_170 = lean_box(0);
}
if (lean_is_scalar(x_170)) {
 x_171 = lean_alloc_ctor(1, 2, 0);
} else {
 x_171 = x_170;
}
lean_ctor_set(x_171, 0, x_168);
lean_ctor_set(x_171, 1, x_169);
return x_171;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_RuleExpr_elab___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_elab___spec__2(x_12, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___lambda__1(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = 1;
x_9 = lean_usize_add(x_1, x_8);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg(x_2, x_3, x_4, x_5, x_9, x_6, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, size_t x_5, size_t x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_usize_dec_eq(x_5, x_6);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_9 = lean_ctor_get(x_1, 1);
lean_inc(x_9);
x_10 = lean_array_uget(x_4, x_5);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_11 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg(x_1, x_2, x_3, x_7, x_10);
x_12 = lean_box_usize(x_5);
x_13 = lean_box_usize(x_6);
x_14 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___lambda__1___boxed), 7, 6);
lean_closure_set(x_14, 0, x_12);
lean_closure_set(x_14, 1, x_1);
lean_closure_set(x_14, 2, x_2);
lean_closure_set(x_14, 3, x_3);
lean_closure_set(x_14, 4, x_4);
lean_closure_set(x_14, 5, x_13);
x_15 = lean_apply_4(x_9, lean_box(0), lean_box(0), x_11, x_14);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_16 = lean_ctor_get(x_1, 0);
lean_inc(x_16);
lean_dec(x_1);
x_17 = lean_ctor_get(x_16, 1);
lean_inc(x_17);
lean_dec(x_16);
x_18 = lean_apply_2(x_17, lean_box(0), x_7);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___boxed), 7, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = l_Array_isEmpty___rarg(x_1);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_array_get_size(x_1);
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_lt(x_8, x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
lean_dec(x_2);
x_11 = lean_ctor_get(x_10, 1);
lean_inc(x_11);
lean_dec(x_10);
x_12 = lean_apply_2(x_11, lean_box(0), x_3);
return x_12;
}
else
{
uint8_t x_13; 
x_13 = lean_nat_dec_le(x_7, x_7);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_7);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_1);
x_14 = lean_ctor_get(x_2, 0);
lean_inc(x_14);
lean_dec(x_2);
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec(x_14);
x_16 = lean_apply_2(x_15, lean_box(0), x_3);
return x_16;
}
else
{
size_t x_17; size_t x_18; lean_object* x_19; 
x_17 = 0;
x_18 = lean_usize_of_nat(x_7);
lean_dec(x_7);
x_19 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg(x_2, x_4, x_5, x_1, x_17, x_18, x_3);
return x_19;
}
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
lean_dec(x_4);
lean_dec(x_1);
x_20 = lean_ctor_get(x_2, 0);
lean_inc(x_20);
lean_dec(x_2);
x_21 = lean_ctor_get(x_20, 1);
lean_inc(x_21);
lean_dec(x_20);
x_22 = lean_array_push(x_3, x_5);
x_23 = lean_apply_2(x_21, lean_box(0), x_22);
return x_23;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_6 = lean_ctor_get(x_5, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_5, 1);
lean_inc(x_7);
lean_dec(x_5);
x_8 = lean_ctor_get(x_1, 1);
lean_inc(x_8);
lean_inc(x_2);
x_9 = lean_apply_2(x_2, x_3, x_6);
x_10 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg___lambda__1), 5, 4);
lean_closure_set(x_10, 0, x_7);
lean_closure_set(x_10, 1, x_1);
lean_closure_set(x_10, 2, x_4);
lean_closure_set(x_10, 3, x_2);
x_11 = lean_apply_4(x_8, lean_box(0), lean_box(0), x_9, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg), 5, 0);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___lambda__1(x_8, x_2, x_3, x_4, x_5, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_foldBranchesM_go___spec__1___rarg(x_1, x_2, x_3, x_4, x_8, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_6 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg(x_1, x_2, x_3, x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_foldBranchesM___rarg), 4, 0);
return x_3;
}
}
LEAN_EXPORT uint8_t l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; 
x_3 = l_Lean_Name_quickCmp(x_1, x_2);
x_4 = l_Ordering_isLT(x_3);
return x_4;
}
}
static lean_object* _init_l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___lambda__1___boxed), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_nat_dec_lt(x_2, x_3);
if (x_4 == 0)
{
lean_dec(x_2);
return x_1;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_5 = l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___closed__1;
lean_inc(x_2);
x_6 = l_Array_qpartition___rarg(x_1, x_5, x_2, x_3);
x_7 = lean_ctor_get(x_6, 0);
lean_inc(x_7);
x_8 = lean_ctor_get(x_6, 1);
lean_inc(x_8);
lean_dec(x_6);
x_9 = lean_nat_dec_le(x_3, x_7);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2(x_8, x_2, x_7);
x_11 = lean_unsigned_to_nat(1u);
x_12 = lean_nat_add(x_7, x_11);
lean_dec(x_7);
x_1 = x_10;
x_2 = x_12;
goto _start;
}
else
{
lean_dec(x_7);
lean_dec(x_2);
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_2 = lean_array_get_size(x_1);
x_3 = lean_unsigned_to_nat(1u);
x_4 = lean_nat_sub(x_2, x_3);
lean_dec(x_2);
x_5 = lean_unsigned_to_nat(0u);
x_6 = l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2(x_1, x_5, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Array_mergeDedupWith_go___at_Aesop_Frontend_RuleConfig_addFeature___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; uint8_t x_8; 
x_7 = lean_array_get_size(x_1);
x_8 = lean_nat_dec_le(x_7, x_5);
lean_dec(x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_array_get_size(x_2);
x_10 = lean_nat_dec_le(x_9, x_6);
lean_dec(x_9);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_array_fget(x_1, x_5);
x_12 = lean_array_fget(x_2, x_6);
x_13 = l_Lean_Name_quickCmp(x_11, x_12);
switch (x_13) {
case 0:
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_dec(x_12);
x_14 = lean_array_push(x_4, x_11);
x_15 = lean_unsigned_to_nat(1u);
x_16 = lean_nat_add(x_5, x_15);
lean_dec(x_5);
x_4 = x_14;
x_5 = x_16;
goto _start;
}
case 1:
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
lean_inc(x_3);
x_18 = lean_apply_2(x_3, x_11, x_12);
x_19 = lean_array_push(x_4, x_18);
x_20 = lean_unsigned_to_nat(1u);
x_21 = lean_nat_add(x_5, x_20);
lean_dec(x_5);
x_22 = lean_nat_add(x_6, x_20);
lean_dec(x_6);
x_4 = x_19;
x_5 = x_21;
x_6 = x_22;
goto _start;
}
default: 
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
lean_dec(x_11);
x_24 = lean_array_push(x_4, x_12);
x_25 = lean_unsigned_to_nat(1u);
x_26 = lean_nat_add(x_6, x_25);
lean_dec(x_6);
x_4 = x_24;
x_6 = x_26;
goto _start;
}
}
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
lean_dec(x_6);
lean_dec(x_3);
lean_dec(x_2);
x_28 = lean_array_get_size(x_1);
x_29 = l_Array_toSubarray___rarg(x_1, x_5, x_28);
x_30 = l_Array_ofSubarray___rarg(x_29);
lean_dec(x_29);
x_31 = l_Array_append___rarg(x_4, x_30);
lean_dec(x_30);
return x_31;
}
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; 
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_1);
x_32 = lean_array_get_size(x_2);
x_33 = l_Array_toSubarray___rarg(x_2, x_6, x_32);
x_34 = l_Array_ofSubarray___rarg(x_33);
lean_dec(x_33);
x_35 = l_Array_append___rarg(x_4, x_34);
lean_dec(x_34);
return x_35;
}
}
}
LEAN_EXPORT lean_object* l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = lean_array_get_size(x_1);
x_5 = lean_array_get_size(x_2);
x_6 = lean_nat_add(x_4, x_5);
lean_dec(x_5);
lean_dec(x_4);
x_7 = lean_mk_empty_array_with_capacity(x_6);
lean_dec(x_6);
x_8 = lean_unsigned_to_nat(0u);
x_9 = l_Array_mergeDedupWith_go___at_Aesop_Frontend_RuleConfig_addFeature___spec__4(x_1, x_2, x_3, x_7, x_8, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_5 = lean_ctor_get(x_1, 0);
lean_inc(x_5);
lean_dec(x_1);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec(x_5);
x_7 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_7, 0, x_2);
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_ctor_get(x_3, 0);
lean_dec(x_9);
lean_ctor_set(x_3, 0, x_7);
x_10 = lean_apply_2(x_6, lean_box(0), x_3);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_11 = lean_ctor_get(x_3, 1);
x_12 = lean_ctor_get(x_3, 2);
x_13 = lean_ctor_get(x_3, 3);
x_14 = lean_ctor_get(x_3, 4);
x_15 = lean_ctor_get(x_3, 5);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_dec(x_3);
x_16 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_16, 0, x_7);
lean_ctor_set(x_16, 1, x_11);
lean_ctor_set(x_16, 2, x_12);
lean_ctor_set(x_16, 3, x_13);
lean_ctor_set(x_16, 4, x_14);
lean_ctor_set(x_16, 5, x_15);
x_17 = lean_apply_2(x_6, lean_box(0), x_16);
return x_17;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("duplicate rule '", 16, 16);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("'; rule '", 9, 9);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("' was already given.\nUse [<term>,...] to give multiple rules.", 61, 61);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__2___boxed), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
switch (lean_obj_tag(x_4)) {
case 0:
{
uint8_t x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
lean_dec(x_2);
x_5 = lean_ctor_get_uint8(x_4, 0);
lean_dec(x_4);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
lean_dec(x_1);
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec(x_6);
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_3, 1);
lean_dec(x_9);
x_10 = lean_box(x_5);
x_11 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_3, 1, x_11);
x_12 = lean_apply_2(x_7, lean_box(0), x_3);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_13 = lean_ctor_get(x_3, 0);
x_14 = lean_ctor_get(x_3, 2);
x_15 = lean_ctor_get(x_3, 3);
x_16 = lean_ctor_get(x_3, 4);
x_17 = lean_ctor_get(x_3, 5);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_3);
x_18 = lean_box(x_5);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_18);
x_20 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_20, 0, x_13);
lean_ctor_set(x_20, 1, x_19);
lean_ctor_set(x_20, 2, x_14);
lean_ctor_set(x_20, 3, x_15);
lean_ctor_set(x_20, 4, x_16);
lean_ctor_set(x_20, 5, x_17);
x_21 = lean_apply_2(x_7, lean_box(0), x_20);
return x_21;
}
}
case 1:
{
uint8_t x_22; 
lean_dec(x_2);
x_22 = !lean_is_exclusive(x_4);
if (x_22 == 0)
{
lean_object* x_23; lean_object* x_24; uint8_t x_25; 
x_23 = lean_ctor_get(x_1, 0);
lean_inc(x_23);
lean_dec(x_1);
x_24 = lean_ctor_get(x_23, 1);
lean_inc(x_24);
lean_dec(x_23);
x_25 = !lean_is_exclusive(x_3);
if (x_25 == 0)
{
lean_object* x_26; lean_object* x_27; 
x_26 = lean_ctor_get(x_3, 2);
lean_dec(x_26);
lean_ctor_set(x_3, 2, x_4);
x_27 = lean_apply_2(x_24, lean_box(0), x_3);
return x_27;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_28 = lean_ctor_get(x_3, 0);
x_29 = lean_ctor_get(x_3, 1);
x_30 = lean_ctor_get(x_3, 3);
x_31 = lean_ctor_get(x_3, 4);
x_32 = lean_ctor_get(x_3, 5);
lean_inc(x_32);
lean_inc(x_31);
lean_inc(x_30);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_3);
x_33 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_33, 0, x_28);
lean_ctor_set(x_33, 1, x_29);
lean_ctor_set(x_33, 2, x_4);
lean_ctor_set(x_33, 3, x_30);
lean_ctor_set(x_33, 4, x_31);
lean_ctor_set(x_33, 5, x_32);
x_34 = lean_apply_2(x_24, lean_box(0), x_33);
return x_34;
}
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_35 = lean_ctor_get(x_4, 0);
lean_inc(x_35);
lean_dec(x_4);
x_36 = lean_ctor_get(x_1, 0);
lean_inc(x_36);
lean_dec(x_1);
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
x_38 = lean_ctor_get(x_3, 0);
lean_inc(x_38);
x_39 = lean_ctor_get(x_3, 1);
lean_inc(x_39);
x_40 = lean_ctor_get(x_3, 3);
lean_inc(x_40);
x_41 = lean_ctor_get(x_3, 4);
lean_inc(x_41);
x_42 = lean_ctor_get(x_3, 5);
lean_inc(x_42);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 lean_ctor_release(x_3, 2);
 lean_ctor_release(x_3, 3);
 lean_ctor_release(x_3, 4);
 lean_ctor_release(x_3, 5);
 x_43 = x_3;
} else {
 lean_dec_ref(x_3);
 x_43 = lean_box(0);
}
x_44 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_44, 0, x_35);
if (lean_is_scalar(x_43)) {
 x_45 = lean_alloc_ctor(0, 6, 0);
} else {
 x_45 = x_43;
}
lean_ctor_set(x_45, 0, x_38);
lean_ctor_set(x_45, 1, x_39);
lean_ctor_set(x_45, 2, x_44);
lean_ctor_set(x_45, 3, x_40);
lean_ctor_set(x_45, 4, x_41);
lean_ctor_set(x_45, 5, x_42);
x_46 = lean_apply_2(x_37, lean_box(0), x_45);
return x_46;
}
}
case 2:
{
uint8_t x_47; 
lean_dec(x_2);
x_47 = !lean_is_exclusive(x_4);
if (x_47 == 0)
{
lean_object* x_48; lean_object* x_49; uint8_t x_50; 
x_48 = lean_ctor_get(x_1, 0);
lean_inc(x_48);
lean_dec(x_1);
x_49 = lean_ctor_get(x_48, 1);
lean_inc(x_49);
lean_dec(x_48);
x_50 = !lean_is_exclusive(x_3);
if (x_50 == 0)
{
lean_object* x_51; lean_object* x_52; 
x_51 = lean_ctor_get(x_3, 3);
lean_dec(x_51);
lean_ctor_set_tag(x_4, 1);
lean_ctor_set(x_3, 3, x_4);
x_52 = lean_apply_2(x_49, lean_box(0), x_3);
return x_52;
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_53 = lean_ctor_get(x_3, 0);
x_54 = lean_ctor_get(x_3, 1);
x_55 = lean_ctor_get(x_3, 2);
x_56 = lean_ctor_get(x_3, 4);
x_57 = lean_ctor_get(x_3, 5);
lean_inc(x_57);
lean_inc(x_56);
lean_inc(x_55);
lean_inc(x_54);
lean_inc(x_53);
lean_dec(x_3);
lean_ctor_set_tag(x_4, 1);
x_58 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_58, 0, x_53);
lean_ctor_set(x_58, 1, x_54);
lean_ctor_set(x_58, 2, x_55);
lean_ctor_set(x_58, 3, x_4);
lean_ctor_set(x_58, 4, x_56);
lean_ctor_set(x_58, 5, x_57);
x_59 = lean_apply_2(x_49, lean_box(0), x_58);
return x_59;
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; 
x_60 = lean_ctor_get(x_4, 0);
lean_inc(x_60);
lean_dec(x_4);
x_61 = lean_ctor_get(x_1, 0);
lean_inc(x_61);
lean_dec(x_1);
x_62 = lean_ctor_get(x_61, 1);
lean_inc(x_62);
lean_dec(x_61);
x_63 = lean_ctor_get(x_3, 0);
lean_inc(x_63);
x_64 = lean_ctor_get(x_3, 1);
lean_inc(x_64);
x_65 = lean_ctor_get(x_3, 2);
lean_inc(x_65);
x_66 = lean_ctor_get(x_3, 4);
lean_inc(x_66);
x_67 = lean_ctor_get(x_3, 5);
lean_inc(x_67);
if (lean_is_exclusive(x_3)) {
 lean_ctor_release(x_3, 0);
 lean_ctor_release(x_3, 1);
 lean_ctor_release(x_3, 2);
 lean_ctor_release(x_3, 3);
 lean_ctor_release(x_3, 4);
 lean_ctor_release(x_3, 5);
 x_68 = x_3;
} else {
 lean_dec_ref(x_3);
 x_68 = lean_box(0);
}
x_69 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_69, 0, x_60);
if (lean_is_scalar(x_68)) {
 x_70 = lean_alloc_ctor(0, 6, 0);
} else {
 x_70 = x_68;
}
lean_ctor_set(x_70, 0, x_63);
lean_ctor_set(x_70, 1, x_64);
lean_ctor_set(x_70, 2, x_65);
lean_ctor_set(x_70, 3, x_69);
lean_ctor_set(x_70, 4, x_66);
lean_ctor_set(x_70, 5, x_67);
x_71 = lean_apply_2(x_62, lean_box(0), x_70);
return x_71;
}
}
case 3:
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; uint8_t x_75; 
lean_dec(x_2);
x_72 = lean_ctor_get(x_4, 0);
lean_inc(x_72);
lean_dec(x_4);
x_73 = lean_ctor_get(x_1, 0);
lean_inc(x_73);
lean_dec(x_1);
x_74 = lean_ctor_get(x_73, 1);
lean_inc(x_74);
lean_dec(x_73);
x_75 = !lean_is_exclusive(x_3);
if (x_75 == 0)
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_76 = lean_ctor_get(x_3, 4);
x_77 = l_Aesop_Frontend_addBuilderOption(x_76, x_72);
lean_ctor_set(x_3, 4, x_77);
x_78 = lean_apply_2(x_74, lean_box(0), x_3);
return x_78;
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_79 = lean_ctor_get(x_3, 0);
x_80 = lean_ctor_get(x_3, 1);
x_81 = lean_ctor_get(x_3, 2);
x_82 = lean_ctor_get(x_3, 3);
x_83 = lean_ctor_get(x_3, 4);
x_84 = lean_ctor_get(x_3, 5);
lean_inc(x_84);
lean_inc(x_83);
lean_inc(x_82);
lean_inc(x_81);
lean_inc(x_80);
lean_inc(x_79);
lean_dec(x_3);
x_85 = l_Aesop_Frontend_addBuilderOption(x_83, x_72);
x_86 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_86, 0, x_79);
lean_ctor_set(x_86, 1, x_80);
lean_ctor_set(x_86, 2, x_81);
lean_ctor_set(x_86, 3, x_82);
lean_ctor_set(x_86, 4, x_85);
lean_ctor_set(x_86, 5, x_84);
x_87 = lean_apply_2(x_74, lean_box(0), x_86);
return x_87;
}
}
case 4:
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_88 = lean_ctor_get(x_4, 0);
lean_inc(x_88);
lean_dec(x_4);
lean_inc(x_3);
lean_inc(x_88);
lean_inc(x_1);
x_89 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__1___boxed), 4, 3);
lean_closure_set(x_89, 0, x_1);
lean_closure_set(x_89, 1, x_88);
lean_closure_set(x_89, 2, x_3);
x_90 = lean_ctor_get(x_3, 0);
lean_inc(x_90);
lean_dec(x_3);
if (lean_obj_tag(x_90) == 0)
{
lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; 
lean_dec(x_88);
lean_dec(x_2);
x_91 = lean_ctor_get(x_1, 1);
lean_inc(x_91);
x_92 = lean_ctor_get(x_1, 0);
lean_inc(x_92);
lean_dec(x_1);
x_93 = lean_ctor_get(x_92, 1);
lean_inc(x_93);
lean_dec(x_92);
x_94 = lean_box(0);
x_95 = lean_apply_2(x_93, lean_box(0), x_94);
x_96 = lean_apply_4(x_91, lean_box(0), lean_box(0), x_95, x_89);
return x_96;
}
else
{
lean_object* x_97; lean_object* x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; 
x_97 = lean_ctor_get(x_90, 0);
lean_inc(x_97);
lean_dec(x_90);
x_98 = lean_ctor_get(x_1, 1);
lean_inc(x_98);
x_99 = l_Lean_MessageData_ofSyntax(x_88);
x_100 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2;
x_101 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_101, 0, x_100);
lean_ctor_set(x_101, 1, x_99);
x_102 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4;
x_103 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_103, 0, x_101);
lean_ctor_set(x_103, 1, x_102);
x_104 = l_Lean_MessageData_ofSyntax(x_97);
x_105 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_105, 0, x_103);
lean_ctor_set(x_105, 1, x_104);
x_106 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6;
x_107 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_107, 0, x_105);
lean_ctor_set(x_107, 1, x_106);
x_108 = l_Lean_throwError___rarg(x_1, x_2, x_107);
x_109 = lean_apply_4(x_98, lean_box(0), lean_box(0), x_108, x_89);
return x_109;
}
}
default: 
{
lean_object* x_110; uint8_t x_111; 
lean_dec(x_2);
x_110 = lean_ctor_get(x_4, 0);
lean_inc(x_110);
lean_dec(x_4);
x_111 = !lean_is_exclusive(x_3);
if (x_111 == 0)
{
lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; 
x_112 = lean_ctor_get(x_3, 5);
x_113 = l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(x_110);
x_114 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
x_115 = l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(x_112, x_113, x_114);
x_116 = lean_ctor_get(x_1, 0);
lean_inc(x_116);
lean_dec(x_1);
x_117 = lean_ctor_get(x_116, 1);
lean_inc(x_117);
lean_dec(x_116);
lean_ctor_set(x_3, 5, x_115);
x_118 = lean_apply_2(x_117, lean_box(0), x_3);
return x_118;
}
else
{
lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; lean_object* x_124; lean_object* x_125; lean_object* x_126; lean_object* x_127; lean_object* x_128; lean_object* x_129; lean_object* x_130; lean_object* x_131; 
x_119 = lean_ctor_get(x_3, 0);
x_120 = lean_ctor_get(x_3, 1);
x_121 = lean_ctor_get(x_3, 2);
x_122 = lean_ctor_get(x_3, 3);
x_123 = lean_ctor_get(x_3, 4);
x_124 = lean_ctor_get(x_3, 5);
lean_inc(x_124);
lean_inc(x_123);
lean_inc(x_122);
lean_inc(x_121);
lean_inc(x_120);
lean_inc(x_119);
lean_dec(x_3);
x_125 = l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(x_110);
x_126 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
x_127 = l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(x_124, x_125, x_126);
x_128 = lean_ctor_get(x_1, 0);
lean_inc(x_128);
lean_dec(x_1);
x_129 = lean_ctor_get(x_128, 1);
lean_inc(x_129);
lean_dec(x_128);
x_130 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_130, 0, x_119);
lean_ctor_set(x_130, 1, x_120);
lean_ctor_set(x_130, 2, x_121);
lean_ctor_set(x_130, 3, x_122);
lean_ctor_set(x_130, 4, x_123);
lean_ctor_set(x_130, 5, x_127);
x_131 = lean_apply_2(x_129, lean_box(0), x_130);
return x_131;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___lambda__1___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___lambda__1(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__1(x_1, x_2, x_3, x_4);
lean_dec(x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__2___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___lambda__2(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" rules must specify an integer penalty", 38, 38);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_phaseNorm___closed__3;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__5;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__6;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_phaseSafe___closed__3;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__9;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__10;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_Parser_phaseUnsafe___closed__3;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__13;
x_2 = l_Lean_MessageData_ofFormat(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__14;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__17() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" rules must specify an integer penalty (not a success probability)", 66, 66);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__17;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15;
x_2 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18;
x_3 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_4, 2);
lean_inc(x_5);
lean_dec(x_4);
if (lean_obj_tag(x_5) == 0)
{
switch (x_3) {
case 0:
{
lean_object* x_6; lean_object* x_7; 
x_6 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8;
x_7 = l_Lean_throwError___rarg(x_1, x_2, x_6);
return x_7;
}
case 1:
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12;
x_9 = l_Lean_throwError___rarg(x_1, x_2, x_8);
return x_9;
}
default: 
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16;
x_11 = l_Lean_throwError___rarg(x_1, x_2, x_10);
return x_11;
}
}
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_5, 0);
lean_inc(x_12);
lean_dec(x_5);
x_13 = l_Aesop_Frontend_Priority_toInt_x3f(x_12);
if (lean_obj_tag(x_13) == 0)
{
switch (x_3) {
case 0:
{
lean_object* x_14; lean_object* x_15; 
x_14 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19;
x_15 = l_Lean_throwError___rarg(x_1, x_2, x_14);
return x_15;
}
case 1:
{
lean_object* x_16; lean_object* x_17; 
x_16 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20;
x_17 = l_Lean_throwError___rarg(x_1, x_2, x_16);
return x_17;
}
default: 
{
lean_object* x_18; lean_object* x_19; 
x_18 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21;
x_19 = l_Lean_throwError___rarg(x_1, x_2, x_18);
return x_19;
}
}
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; 
lean_dec(x_2);
x_20 = lean_ctor_get(x_13, 0);
lean_inc(x_20);
lean_dec(x_13);
x_21 = lean_ctor_get(x_1, 0);
lean_inc(x_21);
lean_dec(x_1);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = lean_apply_2(x_22, lean_box(0), x_20);
return x_23;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___boxed), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_3);
lean_dec(x_3);
x_6 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg(x_1, x_2, x_5, x_4);
return x_6;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unsafe rules must specify a success probability", 47, 47);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unsafe rules must specify a success probability (not an integer penalty)", 72, 72);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2;
x_6 = l_Lean_throwError___rarg(x_1, x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
lean_dec(x_4);
x_8 = l_Aesop_Frontend_Priority_toPercent_x3f(x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4;
x_10 = l_Lean_throwError___rarg(x_1, x_2, x_9);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
lean_dec(x_2);
x_11 = lean_ctor_get(x_8, 0);
lean_inc(x_11);
lean_dec(x_8);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
lean_dec(x_1);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = lean_apply_2(x_13, lean_box(0), x_11);
return x_14;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg), 3, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("simp rules must specify a non-negative integer priority", 55, 55);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 2);
lean_inc(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2;
x_6 = l_Lean_throwError___rarg(x_1, x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; 
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
lean_dec(x_4);
x_8 = l_Aesop_Frontend_Priority_toInt_x3f(x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; 
x_9 = l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2;
x_10 = l_Lean_throwError___rarg(x_1, x_2, x_9);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_8, 0);
lean_inc(x_11);
lean_dec(x_8);
x_12 = l_Aesop_Frontend_instInhabitedPriority___closed__1;
x_13 = lean_int_dec_le(x_12, x_11);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
lean_dec(x_11);
x_14 = l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2;
x_15 = l_Lean_throwError___rarg(x_1, x_2, x_14);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
lean_dec(x_2);
x_16 = l_Int_toNat(x_11);
lean_dec(x_11);
x_17 = lean_ctor_get(x_1, 0);
lean_inc(x_17);
lean_dec(x_1);
x_18 = lean_ctor_get(x_17, 1);
lean_inc(x_18);
lean_dec(x_17);
x_19 = lean_apply_2(x_18, lean_box(0), x_16);
return x_19;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSimpPriority(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg), 3, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("missing rule", 12, 12);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2;
x_6 = l_Lean_throwError___rarg(x_1, x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_2);
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
lean_dec(x_4);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_apply_2(x_9, lean_box(0), x_7);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getTerm___rarg), 3, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("missing phase (norm/safe/unsafe)", 32, 32);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2;
x_6 = l_Lean_throwError___rarg(x_1, x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_2);
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
lean_dec(x_4);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_apply_2(x_9, lean_box(0), x_7);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPhase___rarg), 3, 0);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("missing rule builder (apply, forward, simp, ...)", 48, 48);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 3);
lean_inc(x_4);
lean_dec(x_3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2;
x_6 = l_Lean_throwError___rarg(x_1, x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_2);
x_7 = lean_ctor_get(x_4, 0);
lean_inc(x_7);
lean_dec(x_4);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_apply_2(x_9, lean_box(0), x_7);
return x_10;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getBuilder___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__1(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_5, 0, x_2);
x_6 = lean_apply_2(x_4, lean_box(0), x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__2(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = 0;
x_6 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_6, 0, x_2);
lean_ctor_set_uint8(x_6, sizeof(void*)*1, x_5);
x_7 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_7, 0, x_6);
x_8 = lean_apply_2(x_4, lean_box(0), x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__3(lean_object* x_1, double x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec(x_3);
x_5 = lean_box_float(x_2);
x_6 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_6, 0, x_5);
x_7 = lean_apply_2(x_4, lean_box(0), x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, uint8_t x_5) {
_start:
{
switch (x_5) {
case 0:
{
uint8_t x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = 0;
lean_inc(x_1);
x_7 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg(x_1, x_2, x_6, x_3);
x_8 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__1), 2, 1);
lean_closure_set(x_8, 0, x_1);
x_9 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
case 1:
{
uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = 1;
lean_inc(x_1);
x_11 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg(x_1, x_2, x_10, x_3);
x_12 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__2), 2, 1);
lean_closure_set(x_12, 0, x_1);
x_13 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_11, x_12);
return x_13;
}
default: 
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
lean_inc(x_1);
x_14 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg(x_1, x_2, x_3);
x_15 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__3___boxed), 2, 1);
lean_closure_set(x_15, 0, x_1);
x_16 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_14, x_15);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_4 = lean_ctor_get(x_1, 1);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_5 = l_Aesop_Frontend_RuleConfig_getPhase___rarg(x_1, x_2, x_3);
lean_inc(x_4);
x_6 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__4___boxed), 5, 4);
lean_closure_set(x_6, 0, x_1);
lean_closure_set(x_6, 1, x_2);
lean_closure_set(x_6, 2, x_3);
lean_closure_set(x_6, 3, x_4);
x_7 = lean_apply_4(x_4, lean_box(0), lean_box(0), x_5, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__3___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
double x_3; lean_object* x_4; 
x_3 = lean_unbox_float(x_2);
lean_dec(x_2);
x_4 = l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__3(x_1, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = lean_unbox(x_5);
lean_dec(x_5);
x_7 = l_Aesop_Frontend_RuleConfig_getPhaseSpec___rarg___lambda__4(x_1, x_2, x_3, x_4, x_6);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2;
x_11 = l_Lean_throwError___at___private_Lean_Elab_Quotation_0__Lean_Elab_Term_Quotation_quoteSyntax___spec__25(x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_2);
x_12 = lean_ctor_get(x_9, 0);
lean_inc(x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_8);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_6, 5);
x_10 = lean_ctor_get(x_2, 2);
lean_inc(x_10);
lean_inc(x_10);
x_11 = l_Lean_Elab_getBetterRef(x_9, x_10);
x_12 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_4, x_5, x_6, x_7, x_8);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(x_14, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
lean_dec(x_2);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_16, 0);
lean_ctor_set(x_12, 1, x_18);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set_tag(x_16, 1);
lean_ctor_set(x_16, 0, x_12);
return x_16;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_16, 0);
x_20 = lean_ctor_get(x_16, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_16);
lean_ctor_set(x_12, 1, x_19);
lean_ctor_set(x_12, 0, x_11);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_12);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_22 = lean_ctor_get(x_12, 0);
x_23 = lean_ctor_get(x_12, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_12);
x_24 = l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(x_22, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_23);
lean_dec(x_2);
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
if (lean_is_exclusive(x_24)) {
 lean_ctor_release(x_24, 0);
 lean_ctor_release(x_24, 1);
 x_27 = x_24;
} else {
 lean_dec_ref(x_24);
 x_27 = lean_box(0);
}
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_11);
lean_ctor_set(x_28, 1, x_25);
if (lean_is_scalar(x_27)) {
 x_29 = lean_alloc_ctor(1, 2, 0);
} else {
 x_29 = x_27;
 lean_ctor_set_tag(x_29, 1);
}
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_26);
return x_29;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2;
x_11 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__4(x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
lean_dec(x_2);
x_12 = lean_ctor_get(x_9, 0);
lean_inc(x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_12);
lean_ctor_set(x_13, 1, x_8);
return x_13;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_6, 5);
x_10 = lean_ctor_get(x_2, 2);
lean_inc(x_10);
lean_inc(x_10);
x_11 = l_Lean_Elab_getBetterRef(x_9, x_10);
x_12 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_4, x_5, x_6, x_7, x_8);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(x_14, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
lean_dec(x_2);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_16, 0);
lean_ctor_set(x_12, 1, x_18);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set_tag(x_16, 1);
lean_ctor_set(x_16, 0, x_12);
return x_16;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_16, 0);
x_20 = lean_ctor_get(x_16, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_16);
lean_ctor_set(x_12, 1, x_19);
lean_ctor_set(x_12, 0, x_11);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_12);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_22 = lean_ctor_get(x_12, 0);
x_23 = lean_ctor_get(x_12, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_12);
x_24 = l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(x_22, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_23);
lean_dec(x_2);
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
if (lean_is_exclusive(x_24)) {
 lean_ctor_release(x_24, 0);
 lean_ctor_release(x_24, 1);
 x_27 = x_24;
} else {
 lean_dec_ref(x_24);
 x_27 = lean_box(0);
}
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_11);
lean_ctor_set(x_28, 1, x_25);
if (lean_is_scalar(x_27)) {
 x_29 = lean_alloc_ctor(1, 2, 0);
} else {
 x_29 = x_27;
 lean_ctor_set_tag(x_29, 1);
}
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_26);
return x_29;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5(uint8_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_2, 2);
lean_inc(x_10);
lean_dec(x_2);
if (lean_obj_tag(x_10) == 0)
{
switch (x_1) {
case 0:
{
lean_object* x_11; lean_object* x_12; 
x_11 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8;
x_12 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
case 1:
{
lean_object* x_13; lean_object* x_14; 
x_13 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12;
x_14 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_14;
}
default: 
{
lean_object* x_15; lean_object* x_16; 
x_15 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16;
x_16 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_15, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_16;
}
}
}
else
{
lean_object* x_17; lean_object* x_18; 
x_17 = lean_ctor_get(x_10, 0);
lean_inc(x_17);
lean_dec(x_10);
x_18 = l_Aesop_Frontend_Priority_toInt_x3f(x_17);
if (lean_obj_tag(x_18) == 0)
{
switch (x_1) {
case 0:
{
lean_object* x_19; lean_object* x_20; 
x_19 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19;
x_20 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_19, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_20;
}
case 1:
{
lean_object* x_21; lean_object* x_22; 
x_21 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20;
x_22 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_21, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_22;
}
default: 
{
lean_object* x_23; lean_object* x_24; 
x_23 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21;
x_24 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_23, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_24;
}
}
}
else
{
lean_object* x_25; lean_object* x_26; 
lean_dec(x_3);
x_25 = lean_ctor_get(x_18, 0);
lean_inc(x_25);
lean_dec(x_18);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_9);
return x_26;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_9 = lean_ctor_get(x_6, 5);
x_10 = lean_ctor_get(x_2, 2);
lean_inc(x_10);
lean_inc(x_10);
x_11 = l_Lean_Elab_getBetterRef(x_9, x_10);
x_12 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_4, x_5, x_6, x_7, x_8);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; uint8_t x_17; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(x_14, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_15);
lean_dec(x_2);
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; 
x_18 = lean_ctor_get(x_16, 0);
lean_ctor_set(x_12, 1, x_18);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set_tag(x_16, 1);
lean_ctor_set(x_16, 0, x_12);
return x_16;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_16, 0);
x_20 = lean_ctor_get(x_16, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_16);
lean_ctor_set(x_12, 1, x_19);
lean_ctor_set(x_12, 0, x_11);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_12);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_22 = lean_ctor_get(x_12, 0);
x_23 = lean_ctor_get(x_12, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_12);
x_24 = l_Lean_Elab_addMacroStack___at_Lean_Elab_Term_instAddErrorMessageContextTermElabM___spec__1(x_22, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_23);
lean_dec(x_2);
x_25 = lean_ctor_get(x_24, 0);
lean_inc(x_25);
x_26 = lean_ctor_get(x_24, 1);
lean_inc(x_26);
if (lean_is_exclusive(x_24)) {
 lean_ctor_release(x_24, 0);
 lean_ctor_release(x_24, 1);
 x_27 = x_24;
} else {
 lean_dec_ref(x_24);
 x_27 = lean_box(0);
}
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_11);
lean_ctor_set(x_28, 1, x_25);
if (lean_is_scalar(x_27)) {
 x_29 = lean_alloc_ctor(1, 2, 0);
} else {
 x_29 = x_27;
 lean_ctor_set_tag(x_29, 1);
}
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_26);
return x_29;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_1, 2);
lean_inc(x_9);
lean_dec(x_1);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2;
x_11 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8(x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_9, 0);
lean_inc(x_12);
lean_dec(x_9);
x_13 = l_Aesop_Frontend_Priority_toPercent_x3f(x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4;
x_15 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; 
lean_dec(x_2);
x_16 = lean_ctor_get(x_13, 0);
lean_inc(x_16);
lean_dec(x_13);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_8);
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_2);
x_9 = l_Aesop_Frontend_RuleConfig_getPhase___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_unbox(x_10);
lean_dec(x_10);
switch (x_11) {
case 0:
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_9, 1);
lean_inc(x_12);
lean_dec(x_9);
x_13 = 0;
x_14 = l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5(x_13, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_12);
if (lean_obj_tag(x_14) == 0)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_14, 0, x_17);
return x_14;
}
else
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_18 = lean_ctor_get(x_14, 0);
x_19 = lean_ctor_get(x_14, 1);
lean_inc(x_19);
lean_inc(x_18);
lean_dec(x_14);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_18);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_19);
return x_21;
}
}
else
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_14);
if (x_22 == 0)
{
return x_14;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_14, 0);
x_24 = lean_ctor_get(x_14, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_14);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
case 1:
{
lean_object* x_26; uint8_t x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_9, 1);
lean_inc(x_26);
lean_dec(x_9);
x_27 = 1;
x_28 = l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5(x_27, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_26);
if (lean_obj_tag(x_28) == 0)
{
uint8_t x_29; 
x_29 = !lean_is_exclusive(x_28);
if (x_29 == 0)
{
lean_object* x_30; uint8_t x_31; lean_object* x_32; lean_object* x_33; 
x_30 = lean_ctor_get(x_28, 0);
x_31 = 0;
x_32 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_32, 0, x_30);
lean_ctor_set_uint8(x_32, sizeof(void*)*1, x_31);
x_33 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_28, 0, x_33);
return x_28;
}
else
{
lean_object* x_34; lean_object* x_35; uint8_t x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_34 = lean_ctor_get(x_28, 0);
x_35 = lean_ctor_get(x_28, 1);
lean_inc(x_35);
lean_inc(x_34);
lean_dec(x_28);
x_36 = 0;
x_37 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_37, 0, x_34);
lean_ctor_set_uint8(x_37, sizeof(void*)*1, x_36);
x_38 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_38, 0, x_37);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_35);
return x_39;
}
}
else
{
uint8_t x_40; 
x_40 = !lean_is_exclusive(x_28);
if (x_40 == 0)
{
return x_28;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_28, 0);
x_42 = lean_ctor_get(x_28, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_28);
x_43 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
}
default: 
{
lean_object* x_44; lean_object* x_45; 
x_44 = lean_ctor_get(x_9, 1);
lean_inc(x_44);
lean_dec(x_9);
x_45 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__7(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_44);
if (lean_obj_tag(x_45) == 0)
{
uint8_t x_46; 
x_46 = !lean_is_exclusive(x_45);
if (x_46 == 0)
{
lean_object* x_47; lean_object* x_48; 
x_47 = lean_ctor_get(x_45, 0);
x_48 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_45, 0, x_48);
return x_45;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_49 = lean_ctor_get(x_45, 0);
x_50 = lean_ctor_get(x_45, 1);
lean_inc(x_50);
lean_inc(x_49);
lean_dec(x_45);
x_51 = lean_alloc_ctor(2, 1, 0);
lean_ctor_set(x_51, 0, x_49);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_50);
return x_52;
}
}
else
{
uint8_t x_53; 
x_53 = !lean_is_exclusive(x_45);
if (x_53 == 0)
{
return x_45;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
x_54 = lean_ctor_get(x_45, 0);
x_55 = lean_ctor_get(x_45, 1);
lean_inc(x_55);
lean_inc(x_54);
lean_dec(x_45);
x_56 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_56, 0, x_54);
lean_ctor_set(x_56, 1, x_55);
return x_56;
}
}
}
}
}
else
{
uint8_t x_57; 
lean_dec(x_2);
lean_dec(x_1);
x_57 = !lean_is_exclusive(x_9);
if (x_57 == 0)
{
return x_9;
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; 
x_58 = lean_ctor_get(x_9, 0);
x_59 = lean_ctor_get(x_9, 1);
lean_inc(x_59);
lean_inc(x_58);
lean_dec(x_9);
x_60 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_60, 0, x_58);
lean_ctor_set(x_60, 1, x_59);
return x_60;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getRuleBuilderInput(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
lean_inc(x_2);
x_9 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
lean_inc(x_1);
x_12 = l_Aesop_Frontend_RuleConfig_getPhaseSpec___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_11);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_1, 4);
lean_inc(x_15);
lean_dec(x_1);
x_16 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_16, 0, x_10);
lean_ctor_set(x_16, 1, x_15);
lean_ctor_set(x_16, 2, x_14);
lean_ctor_set(x_12, 0, x_16);
return x_12;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_17 = lean_ctor_get(x_12, 0);
x_18 = lean_ctor_get(x_12, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_12);
x_19 = lean_ctor_get(x_1, 4);
lean_inc(x_19);
lean_dec(x_1);
x_20 = lean_alloc_ctor(0, 3, 0);
lean_ctor_set(x_20, 0, x_10);
lean_ctor_set(x_20, 1, x_19);
lean_ctor_set(x_20, 2, x_17);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_18);
return x_21;
}
}
else
{
uint8_t x_22; 
lean_dec(x_10);
lean_dec(x_1);
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
lean_dec(x_2);
lean_dec(x_1);
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
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhase___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_RuleConfig_getPhase___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__6(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; lean_object* x_11; 
x_10 = lean_unbox(x_1);
lean_dec(x_1);
x_11 = l_Aesop_Frontend_RuleConfig_getPenalty___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__5(x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__8(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getSuccessProbability___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_RuleConfig_getSuccessProbability___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__7(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getPhaseSpec___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_RuleConfig_getPhaseSpec___at_Aesop_Frontend_RuleConfig_getRuleBuilderInput___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getRuleBuilderInput___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_RuleConfig_getRuleBuilderInput(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildRule___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___at_Aesop_Frontend_RuleConfig_buildRule___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_1, 3);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2;
x_12 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildRule___spec__2(x_11, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_10, 0);
lean_inc(x_13);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_buildRule(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_getBuilder___at_Aesop_Frontend_RuleConfig_buildRule___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
lean_inc(x_3);
lean_inc(x_1);
x_13 = l_Aesop_Frontend_RuleConfig_getRuleBuilderInput(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = l_Aesop_Frontend_DBuilderName_toRuleBuilder(x_11, x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_15);
lean_dec(x_11);
if (lean_obj_tag(x_16) == 0)
{
uint8_t x_17; 
x_17 = !lean_is_exclusive(x_16);
if (x_17 == 0)
{
lean_object* x_18; lean_object* x_19; lean_object* x_20; 
x_18 = lean_ctor_get(x_16, 0);
x_19 = lean_ctor_get(x_1, 5);
lean_inc(x_19);
lean_dec(x_1);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
lean_ctor_set(x_16, 0, x_20);
return x_16;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_21 = lean_ctor_get(x_16, 0);
x_22 = lean_ctor_get(x_16, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_16);
x_23 = lean_ctor_get(x_1, 5);
lean_inc(x_23);
lean_dec(x_1);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_21);
lean_ctor_set(x_24, 1, x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_22);
return x_25;
}
}
else
{
uint8_t x_26; 
lean_dec(x_1);
x_26 = !lean_is_exclusive(x_16);
if (x_26 == 0)
{
return x_16;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_16, 0);
x_28 = lean_ctor_get(x_16, 1);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_16);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
return x_29;
}
}
}
else
{
uint8_t x_30; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_30 = !lean_is_exclusive(x_13);
if (x_30 == 0)
{
return x_13;
}
else
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_13, 0);
x_32 = lean_ctor_get(x_13, 1);
lean_inc(x_32);
lean_inc(x_31);
lean_dec(x_13);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
return x_33;
}
}
}
else
{
uint8_t x_34; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
x_34 = !lean_is_exclusive(x_10);
if (x_34 == 0)
{
return x_10;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_10, 0);
x_36 = lean_ctor_get(x_10, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_10);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildRule___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildRule___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getBuilder___at_Aesop_Frontend_RuleConfig_buildRule___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_getBuilder___at_Aesop_Frontend_RuleConfig_buildRule___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("internal error: buildGlobalRule: unexpected local rule", 54, 54);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_buildGlobalRule(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_10 = l_Aesop_Frontend_RuleConfig_buildRule(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_10, 1);
x_15 = lean_ctor_get(x_12, 0);
x_16 = lean_ctor_get(x_12, 1);
x_17 = l_Aesop_LocalRuleSetMember_toGlobalRuleSetMember_x3f(x_15);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; 
lean_free_object(x_12);
lean_dec(x_16);
lean_free_object(x_10);
x_18 = l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2;
x_19 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1(x_18, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_14);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_19;
}
else
{
lean_object* x_20; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_20 = lean_ctor_get(x_17, 0);
lean_inc(x_20);
lean_dec(x_17);
lean_ctor_set(x_12, 0, x_20);
return x_10;
}
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_10, 1);
x_22 = lean_ctor_get(x_12, 0);
x_23 = lean_ctor_get(x_12, 1);
lean_inc(x_23);
lean_inc(x_22);
lean_dec(x_12);
x_24 = l_Aesop_LocalRuleSetMember_toGlobalRuleSetMember_x3f(x_22);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; 
lean_dec(x_23);
lean_free_object(x_10);
x_25 = l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2;
x_26 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1(x_25, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_21);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_27 = lean_ctor_get(x_24, 0);
lean_inc(x_27);
lean_dec(x_24);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_23);
lean_ctor_set(x_10, 0, x_28);
return x_10;
}
}
}
else
{
lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_29 = lean_ctor_get(x_10, 0);
x_30 = lean_ctor_get(x_10, 1);
lean_inc(x_30);
lean_inc(x_29);
lean_dec(x_10);
x_31 = lean_ctor_get(x_29, 0);
lean_inc(x_31);
x_32 = lean_ctor_get(x_29, 1);
lean_inc(x_32);
if (lean_is_exclusive(x_29)) {
 lean_ctor_release(x_29, 0);
 lean_ctor_release(x_29, 1);
 x_33 = x_29;
} else {
 lean_dec_ref(x_29);
 x_33 = lean_box(0);
}
x_34 = l_Aesop_LocalRuleSetMember_toGlobalRuleSetMember_x3f(x_31);
if (lean_obj_tag(x_34) == 0)
{
lean_object* x_35; lean_object* x_36; 
lean_dec(x_33);
lean_dec(x_32);
x_35 = l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2;
x_36 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1(x_35, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_30);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_36;
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_37 = lean_ctor_get(x_34, 0);
lean_inc(x_37);
lean_dec(x_34);
if (lean_is_scalar(x_33)) {
 x_38 = lean_alloc_ctor(0, 2, 0);
} else {
 x_38 = x_33;
}
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_32);
x_39 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_39, 0, x_38);
lean_ctor_set(x_39, 1, x_30);
return x_39;
}
}
}
else
{
uint8_t x_40; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_40 = !lean_is_exclusive(x_10);
if (x_40 == 0)
{
return x_10;
}
else
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_41 = lean_ctor_get(x_10, 0);
x_42 = lean_ctor_get(x_10, 1);
lean_inc(x_42);
lean_inc(x_41);
lean_dec(x_10);
x_43 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
return x_43;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_buildGlobalRule___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_buildLocalRule(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_buildRule(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
lean_dec(x_12);
lean_ctor_set(x_10, 0, x_13);
return x_10;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_ctor_get(x_10, 0);
x_15 = lean_ctor_get(x_10, 1);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_10);
x_16 = lean_ctor_get(x_14, 0);
lean_inc(x_16);
lean_dec(x_14);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_15);
return x_17;
}
}
else
{
uint8_t x_18; 
x_18 = !lean_is_exclusive(x_10);
if (x_18 == 0)
{
return x_10;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_10, 0);
x_20 = lean_ctor_get(x_10, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_10);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2;
x_12 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__2(x_11, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_10, 0);
lean_inc(x_13);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_13);
lean_ctor_set(x_14, 1, x_9);
return x_14;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; 
x_13 = lean_ctor_get(x_1, 1);
lean_inc(x_13);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_1, 5);
lean_inc(x_14);
lean_dec(x_1);
x_15 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_16 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_16, 0, x_2);
lean_ctor_set(x_16, 1, x_4);
lean_ctor_set(x_16, 2, x_15);
lean_ctor_set_uint8(x_16, sizeof(void*)*3, x_3);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_14);
lean_ctor_set(x_17, 1, x_16);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_12);
return x_18;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_19 = lean_ctor_get(x_1, 5);
lean_inc(x_19);
lean_dec(x_1);
x_20 = lean_ctor_get(x_13, 0);
lean_inc(x_20);
lean_dec(x_13);
x_21 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_22 = lean_array_push(x_21, x_20);
x_23 = lean_alloc_ctor(0, 3, 1);
lean_ctor_set(x_23, 0, x_2);
lean_ctor_set(x_23, 1, x_4);
lean_ctor_set(x_23, 2, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*3, x_3);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_19);
lean_ctor_set(x_24, 1, x_23);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_12);
return x_25;
}
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" cannot be used when erasing rules.\nUse the corresponding non-default builder (e.g. 'apply' or 'constructors') instead.", 119, 119);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_1, 3);
lean_inc(x_11);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; uint8_t x_15; lean_object* x_16; 
x_12 = lean_ctor_get(x_2, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_2, 1);
lean_inc(x_13);
lean_dec(x_2);
x_14 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_15 = lean_unbox(x_13);
lean_dec(x_13);
x_16 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1(x_1, x_12, x_15, x_14, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_17 = lean_ctor_get(x_2, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_2, 1);
lean_inc(x_18);
if (lean_is_exclusive(x_2)) {
 lean_ctor_release(x_2, 0);
 lean_ctor_release(x_2, 1);
 x_19 = x_2;
} else {
 lean_dec_ref(x_2);
 x_19 = lean_box(0);
}
x_20 = lean_ctor_get(x_11, 0);
lean_inc(x_20);
if (lean_is_exclusive(x_11)) {
 lean_ctor_release(x_11, 0);
 x_21 = x_11;
} else {
 lean_dec_ref(x_11);
 x_21 = lean_box(0);
}
x_22 = l_Aesop_Frontend_DBuilderName_toBuilderName_x3f(x_20);
if (lean_obj_tag(x_22) == 0)
{
lean_object* x_23; 
lean_dec(x_18);
lean_dec(x_17);
lean_dec(x_1);
if (lean_obj_tag(x_20) == 0)
{
uint8_t x_36; 
x_36 = lean_ctor_get_uint8(x_20, 0);
lean_dec(x_20);
switch (x_36) {
case 0:
{
lean_object* x_37; 
x_37 = l_Aesop_Frontend_Parser_builder__nameApply___closed__3;
x_23 = x_37;
goto block_35;
}
case 1:
{
lean_object* x_38; 
x_38 = l_Aesop_Frontend_Parser_builder__nameCases___closed__3;
x_23 = x_38;
goto block_35;
}
case 2:
{
lean_object* x_39; 
x_39 = l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3;
x_23 = x_39;
goto block_35;
}
case 3:
{
lean_object* x_40; 
x_40 = l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3;
x_23 = x_40;
goto block_35;
}
case 4:
{
lean_object* x_41; 
x_41 = l_Aesop_Frontend_Parser_builder__nameForward___closed__3;
x_23 = x_41;
goto block_35;
}
case 5:
{
lean_object* x_42; 
x_42 = l_Aesop_Frontend_Parser_builder__nameSimp___closed__3;
x_23 = x_42;
goto block_35;
}
case 6:
{
lean_object* x_43; 
x_43 = l_Aesop_Frontend_Parser_builder__nameTactic___closed__3;
x_23 = x_43;
goto block_35;
}
default: 
{
lean_object* x_44; 
x_44 = l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3;
x_23 = x_44;
goto block_35;
}
}
}
else
{
lean_object* x_45; 
x_45 = l_Aesop_Frontend_Parser_builder__nameDefault___closed__3;
x_23 = x_45;
goto block_35;
}
block_35:
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; uint8_t x_31; 
if (lean_is_scalar(x_21)) {
 x_24 = lean_alloc_ctor(3, 1, 0);
} else {
 x_24 = x_21;
 lean_ctor_set_tag(x_24, 3);
}
lean_ctor_set(x_24, 0, x_23);
x_25 = l_Lean_MessageData_ofFormat(x_24);
x_26 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2;
if (lean_is_scalar(x_19)) {
 x_27 = lean_alloc_ctor(7, 2, 0);
} else {
 x_27 = x_19;
 lean_ctor_set_tag(x_27, 7);
}
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_25);
x_28 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__2;
x_29 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__4(x_29, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
x_31 = !lean_is_exclusive(x_30);
if (x_31 == 0)
{
return x_30;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_32 = lean_ctor_get(x_30, 0);
x_33 = lean_ctor_get(x_30, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_30);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_32);
lean_ctor_set(x_34, 1, x_33);
return x_34;
}
}
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; uint8_t x_49; lean_object* x_50; 
lean_dec(x_21);
lean_dec(x_20);
lean_dec(x_19);
x_46 = lean_ctor_get(x_22, 0);
lean_inc(x_46);
lean_dec(x_22);
x_47 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_48 = lean_array_push(x_47, x_46);
x_49 = lean_unbox(x_18);
lean_dec(x_18);
x_50 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1(x_1, x_17, x_49, x_48, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_50;
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("unknown identifier: ", 20, 20);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("internal error: expected const or fvar, but got '", 49, 49);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__3;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__5() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("'", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__5;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_13; lean_object* x_14; 
x_12 = l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5;
x_13 = 0;
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_1);
x_14 = l_Lean_Elab_Term_resolveId_x3f(x_1, x_12, x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
lean_dec(x_2);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = l_Lean_MessageData_ofSyntax(x_1);
x_18 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__2;
x_19 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_17);
x_20 = l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2;
x_21 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
x_22 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__3(x_21, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_22;
}
else
{
lean_object* x_23; 
lean_dec(x_1);
x_23 = lean_ctor_get(x_15, 0);
lean_inc(x_23);
lean_dec(x_15);
switch (lean_obj_tag(x_23)) {
case 1:
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_14, 1);
lean_inc(x_24);
lean_dec(x_14);
x_25 = lean_ctor_get(x_23, 0);
lean_inc(x_25);
lean_dec(x_23);
lean_inc(x_7);
x_26 = l_Lean_FVarId_getDecl(x_25, x_7, x_8, x_9, x_10, x_24);
if (lean_obj_tag(x_26) == 0)
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; uint8_t x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_27 = lean_ctor_get(x_26, 0);
lean_inc(x_27);
x_28 = lean_ctor_get(x_26, 1);
lean_inc(x_28);
lean_dec(x_26);
x_29 = l_Lean_LocalDecl_userName(x_27);
lean_dec(x_27);
x_30 = 1;
x_31 = lean_box(x_30);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_29);
lean_ctor_set(x_32, 1, x_31);
x_33 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2(x_2, x_32, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_28);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_33;
}
else
{
uint8_t x_34; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
x_34 = !lean_is_exclusive(x_26);
if (x_34 == 0)
{
return x_26;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_35 = lean_ctor_get(x_26, 0);
x_36 = lean_ctor_get(x_26, 1);
lean_inc(x_36);
lean_inc(x_35);
lean_dec(x_26);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_35);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
}
case 4:
{
lean_object* x_38; lean_object* x_39; uint8_t x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_38 = lean_ctor_get(x_14, 1);
lean_inc(x_38);
lean_dec(x_14);
x_39 = lean_ctor_get(x_23, 0);
lean_inc(x_39);
lean_dec(x_23);
x_40 = 0;
x_41 = lean_box(x_40);
x_42 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_42, 0, x_39);
lean_ctor_set(x_42, 1, x_41);
x_43 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2(x_2, x_42, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_38);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_43;
}
default: 
{
lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; uint8_t x_51; 
lean_dec(x_2);
x_44 = lean_ctor_get(x_14, 1);
lean_inc(x_44);
lean_dec(x_14);
x_45 = l_Lean_MessageData_ofExpr(x_23);
x_46 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__4;
x_47 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_47, 0, x_46);
lean_ctor_set(x_47, 1, x_45);
x_48 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__6;
x_49 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_49, 0, x_47);
lean_ctor_set(x_49, 1, x_48);
x_50 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__5(x_49, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_44);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_51 = !lean_is_exclusive(x_50);
if (x_51 == 0)
{
return x_50;
}
else
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_52 = lean_ctor_get(x_50, 0);
x_53 = lean_ctor_get(x_50, 1);
lean_inc(x_53);
lean_inc(x_52);
lean_dec(x_50);
x_54 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
return x_54;
}
}
}
}
}
else
{
uint8_t x_55; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_2);
lean_dec(x_1);
x_55 = !lean_is_exclusive(x_14);
if (x_55 == 0)
{
return x_14;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_14, 0);
x_57 = lean_ctor_get(x_14, 1);
lean_inc(x_57);
lean_inc(x_56);
lean_dec(x_14);
x_58 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
return x_58;
}
}
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("erase rule must be a name, not a composite term", 47, 47);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = l_Lean_Syntax_isIdent(x_11);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; 
lean_dec(x_11);
lean_dec(x_1);
x_14 = l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__2;
x_15 = l_Lean_throwError___at_Aesop_RuleBuilder_cases___spec__1(x_14, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
return x_15;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_15);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
else
{
lean_object* x_20; lean_object* x_21; 
x_20 = lean_box(0);
x_21 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3(x_11, x_1, x_20, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
return x_21;
}
}
else
{
uint8_t x_22; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_1);
x_22 = !lean_is_exclusive(x_10);
if (x_22 == 0)
{
return x_10;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_10, 0);
x_24 = lean_ctor_get(x_10, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_10);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__5___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__5(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; lean_object* x_14; 
x_13 = lean_unbox(x_3);
lean_dec(x_3);
x_14 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__1(x_1, x_2, x_13, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_4);
lean_dec(x_3);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_toRuleFilter___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_toRuleFilter(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_2);
return x_10;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("phase (safe/unsafe/norm) not specified.", 39, 39);
return x_1;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__1;
x_2 = l_Lean_stringToMessageData(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_defaultNormPenalty;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = 0;
x_2 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__3;
x_3 = lean_box(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_defaultSafePenalty;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = 1;
x_2 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__5;
x_3 = lean_box(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7___boxed__const__1() {
_start:
{
double x_1; lean_object* x_2; 
x_1 = l_Aesop_defaultSuccessProbability;
x_2 = lean_box_float(x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7___boxed__const__1;
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = 2;
x_2 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7;
x_3 = lean_box(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_Aesop_defaultSimpRulePriority;
x_2 = lean_alloc_ctor(0, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10() {
_start:
{
uint8_t x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = 0;
x_2 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9;
x_3 = lean_box(x_1);
x_4 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_4, 0, x_3);
lean_ctor_set(x_4, 1, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_3, 3);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; 
x_5 = lean_ctor_get(x_3, 1);
if (lean_obj_tag(x_5) == 0)
{
lean_object* x_6; 
x_6 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_7; lean_object* x_8; 
x_7 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_8 = l_Lean_throwError___rarg(x_1, x_2, x_7);
return x_8;
}
else
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_6, 0);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_11 = l_Lean_throwError___rarg(x_1, x_2, x_10);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
lean_dec(x_2);
x_12 = lean_ctor_get(x_1, 0);
lean_inc(x_12);
lean_dec(x_1);
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec(x_12);
x_14 = 2;
x_15 = lean_box(x_14);
lean_inc(x_9);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_15);
lean_ctor_set(x_16, 1, x_9);
x_17 = lean_apply_2(x_13, lean_box(0), x_16);
return x_17;
}
}
}
else
{
lean_object* x_18; uint8_t x_19; 
lean_dec(x_2);
x_18 = lean_ctor_get(x_5, 0);
x_19 = lean_unbox(x_18);
switch (x_19) {
case 0:
{
lean_object* x_20; 
x_20 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_20) == 0)
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_21 = lean_ctor_get(x_1, 0);
lean_inc(x_21);
lean_dec(x_1);
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec(x_21);
x_23 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_24 = lean_apply_2(x_22, lean_box(0), x_23);
return x_24;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_25 = lean_ctor_get(x_20, 0);
x_26 = lean_ctor_get(x_1, 0);
lean_inc(x_26);
lean_dec(x_1);
x_27 = lean_ctor_get(x_26, 1);
lean_inc(x_27);
lean_dec(x_26);
lean_inc(x_25);
lean_inc(x_18);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_18);
lean_ctor_set(x_28, 1, x_25);
x_29 = lean_apply_2(x_27, lean_box(0), x_28);
return x_29;
}
}
case 1:
{
lean_object* x_30; 
x_30 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; 
x_31 = lean_ctor_get(x_1, 0);
lean_inc(x_31);
lean_dec(x_1);
x_32 = lean_ctor_get(x_31, 1);
lean_inc(x_32);
lean_dec(x_31);
x_33 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_34 = lean_apply_2(x_32, lean_box(0), x_33);
return x_34;
}
else
{
lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_35 = lean_ctor_get(x_30, 0);
x_36 = lean_ctor_get(x_1, 0);
lean_inc(x_36);
lean_dec(x_1);
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec(x_36);
lean_inc(x_35);
lean_inc(x_18);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_18);
lean_ctor_set(x_38, 1, x_35);
x_39 = lean_apply_2(x_37, lean_box(0), x_38);
return x_39;
}
}
default: 
{
lean_object* x_40; 
x_40 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_40) == 0)
{
lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; 
x_41 = lean_ctor_get(x_1, 0);
lean_inc(x_41);
lean_dec(x_1);
x_42 = lean_ctor_get(x_41, 1);
lean_inc(x_42);
lean_dec(x_41);
x_43 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_44 = lean_apply_2(x_42, lean_box(0), x_43);
return x_44;
}
else
{
lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
x_45 = lean_ctor_get(x_40, 0);
x_46 = lean_ctor_get(x_1, 0);
lean_inc(x_46);
lean_dec(x_1);
x_47 = lean_ctor_get(x_46, 1);
lean_inc(x_47);
lean_dec(x_46);
lean_inc(x_45);
lean_inc(x_18);
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_18);
lean_ctor_set(x_48, 1, x_45);
x_49 = lean_apply_2(x_47, lean_box(0), x_48);
return x_49;
}
}
}
}
}
else
{
lean_object* x_50; 
x_50 = lean_ctor_get(x_4, 0);
if (lean_obj_tag(x_50) == 0)
{
uint8_t x_51; lean_object* x_52; 
x_51 = lean_ctor_get_uint8(x_50, 0);
x_52 = lean_box(x_51);
if (lean_obj_tag(x_52) == 5)
{
lean_object* x_53; 
lean_dec(x_2);
x_53 = lean_ctor_get(x_3, 1);
if (lean_obj_tag(x_53) == 0)
{
lean_object* x_54; 
x_54 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_55 = lean_ctor_get(x_1, 0);
lean_inc(x_55);
lean_dec(x_1);
x_56 = lean_ctor_get(x_55, 1);
lean_inc(x_56);
lean_dec(x_55);
x_57 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10;
x_58 = lean_apply_2(x_56, lean_box(0), x_57);
return x_58;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; uint8_t x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; 
x_59 = lean_ctor_get(x_54, 0);
x_60 = lean_ctor_get(x_1, 0);
lean_inc(x_60);
lean_dec(x_1);
x_61 = lean_ctor_get(x_60, 1);
lean_inc(x_61);
lean_dec(x_60);
x_62 = 0;
x_63 = lean_box(x_62);
lean_inc(x_59);
x_64 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_59);
x_65 = lean_apply_2(x_61, lean_box(0), x_64);
return x_65;
}
}
else
{
lean_object* x_66; 
x_66 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_66) == 0)
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_67 = lean_ctor_get(x_53, 0);
x_68 = lean_ctor_get(x_1, 0);
lean_inc(x_68);
lean_dec(x_1);
x_69 = lean_ctor_get(x_68, 1);
lean_inc(x_69);
lean_dec(x_68);
x_70 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9;
lean_inc(x_67);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_67);
lean_ctor_set(x_71, 1, x_70);
x_72 = lean_apply_2(x_69, lean_box(0), x_71);
return x_72;
}
else
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_73 = lean_ctor_get(x_53, 0);
x_74 = lean_ctor_get(x_66, 0);
x_75 = lean_ctor_get(x_1, 0);
lean_inc(x_75);
lean_dec(x_1);
x_76 = lean_ctor_get(x_75, 1);
lean_inc(x_76);
lean_dec(x_75);
lean_inc(x_74);
lean_inc(x_73);
x_77 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_77, 0, x_73);
lean_ctor_set(x_77, 1, x_74);
x_78 = lean_apply_2(x_76, lean_box(0), x_77);
return x_78;
}
}
}
else
{
lean_object* x_79; 
lean_dec(x_52);
x_79 = lean_ctor_get(x_3, 1);
if (lean_obj_tag(x_79) == 0)
{
lean_object* x_80; 
x_80 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_80) == 0)
{
lean_object* x_81; lean_object* x_82; 
x_81 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_82 = l_Lean_throwError___rarg(x_1, x_2, x_81);
return x_82;
}
else
{
lean_object* x_83; 
x_83 = lean_ctor_get(x_80, 0);
if (lean_obj_tag(x_83) == 0)
{
lean_object* x_84; lean_object* x_85; 
x_84 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_85 = l_Lean_throwError___rarg(x_1, x_2, x_84);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; uint8_t x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; 
lean_dec(x_2);
x_86 = lean_ctor_get(x_1, 0);
lean_inc(x_86);
lean_dec(x_1);
x_87 = lean_ctor_get(x_86, 1);
lean_inc(x_87);
lean_dec(x_86);
x_88 = 2;
x_89 = lean_box(x_88);
lean_inc(x_83);
x_90 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_83);
x_91 = lean_apply_2(x_87, lean_box(0), x_90);
return x_91;
}
}
}
else
{
lean_object* x_92; uint8_t x_93; 
lean_dec(x_2);
x_92 = lean_ctor_get(x_79, 0);
x_93 = lean_unbox(x_92);
switch (x_93) {
case 0:
{
lean_object* x_94; 
x_94 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_94) == 0)
{
lean_object* x_95; lean_object* x_96; lean_object* x_97; lean_object* x_98; 
x_95 = lean_ctor_get(x_1, 0);
lean_inc(x_95);
lean_dec(x_1);
x_96 = lean_ctor_get(x_95, 1);
lean_inc(x_96);
lean_dec(x_95);
x_97 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_98 = lean_apply_2(x_96, lean_box(0), x_97);
return x_98;
}
else
{
lean_object* x_99; lean_object* x_100; lean_object* x_101; lean_object* x_102; lean_object* x_103; 
x_99 = lean_ctor_get(x_94, 0);
x_100 = lean_ctor_get(x_1, 0);
lean_inc(x_100);
lean_dec(x_1);
x_101 = lean_ctor_get(x_100, 1);
lean_inc(x_101);
lean_dec(x_100);
lean_inc(x_99);
lean_inc(x_92);
x_102 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_102, 0, x_92);
lean_ctor_set(x_102, 1, x_99);
x_103 = lean_apply_2(x_101, lean_box(0), x_102);
return x_103;
}
}
case 1:
{
lean_object* x_104; 
x_104 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_104) == 0)
{
lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; 
x_105 = lean_ctor_get(x_1, 0);
lean_inc(x_105);
lean_dec(x_1);
x_106 = lean_ctor_get(x_105, 1);
lean_inc(x_106);
lean_dec(x_105);
x_107 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_108 = lean_apply_2(x_106, lean_box(0), x_107);
return x_108;
}
else
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; 
x_109 = lean_ctor_get(x_104, 0);
x_110 = lean_ctor_get(x_1, 0);
lean_inc(x_110);
lean_dec(x_1);
x_111 = lean_ctor_get(x_110, 1);
lean_inc(x_111);
lean_dec(x_110);
lean_inc(x_109);
lean_inc(x_92);
x_112 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_112, 0, x_92);
lean_ctor_set(x_112, 1, x_109);
x_113 = lean_apply_2(x_111, lean_box(0), x_112);
return x_113;
}
}
default: 
{
lean_object* x_114; 
x_114 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_114) == 0)
{
lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; 
x_115 = lean_ctor_get(x_1, 0);
lean_inc(x_115);
lean_dec(x_1);
x_116 = lean_ctor_get(x_115, 1);
lean_inc(x_116);
lean_dec(x_115);
x_117 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_118 = lean_apply_2(x_116, lean_box(0), x_117);
return x_118;
}
else
{
lean_object* x_119; lean_object* x_120; lean_object* x_121; lean_object* x_122; lean_object* x_123; 
x_119 = lean_ctor_get(x_114, 0);
x_120 = lean_ctor_get(x_1, 0);
lean_inc(x_120);
lean_dec(x_1);
x_121 = lean_ctor_get(x_120, 1);
lean_inc(x_121);
lean_dec(x_120);
lean_inc(x_119);
lean_inc(x_92);
x_122 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_122, 0, x_92);
lean_ctor_set(x_122, 1, x_119);
x_123 = lean_apply_2(x_121, lean_box(0), x_122);
return x_123;
}
}
}
}
}
}
else
{
lean_object* x_124; 
x_124 = lean_ctor_get(x_3, 1);
if (lean_obj_tag(x_124) == 0)
{
lean_object* x_125; 
x_125 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_125) == 0)
{
lean_object* x_126; lean_object* x_127; 
x_126 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_127 = l_Lean_throwError___rarg(x_1, x_2, x_126);
return x_127;
}
else
{
lean_object* x_128; 
x_128 = lean_ctor_get(x_125, 0);
if (lean_obj_tag(x_128) == 0)
{
lean_object* x_129; lean_object* x_130; 
x_129 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_130 = l_Lean_throwError___rarg(x_1, x_2, x_129);
return x_130;
}
else
{
lean_object* x_131; lean_object* x_132; uint8_t x_133; lean_object* x_134; lean_object* x_135; lean_object* x_136; 
lean_dec(x_2);
x_131 = lean_ctor_get(x_1, 0);
lean_inc(x_131);
lean_dec(x_1);
x_132 = lean_ctor_get(x_131, 1);
lean_inc(x_132);
lean_dec(x_131);
x_133 = 2;
x_134 = lean_box(x_133);
lean_inc(x_128);
x_135 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_135, 0, x_134);
lean_ctor_set(x_135, 1, x_128);
x_136 = lean_apply_2(x_132, lean_box(0), x_135);
return x_136;
}
}
}
else
{
lean_object* x_137; uint8_t x_138; 
lean_dec(x_2);
x_137 = lean_ctor_get(x_124, 0);
x_138 = lean_unbox(x_137);
switch (x_138) {
case 0:
{
lean_object* x_139; 
x_139 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_139) == 0)
{
lean_object* x_140; lean_object* x_141; lean_object* x_142; lean_object* x_143; 
x_140 = lean_ctor_get(x_1, 0);
lean_inc(x_140);
lean_dec(x_1);
x_141 = lean_ctor_get(x_140, 1);
lean_inc(x_141);
lean_dec(x_140);
x_142 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_143 = lean_apply_2(x_141, lean_box(0), x_142);
return x_143;
}
else
{
lean_object* x_144; lean_object* x_145; lean_object* x_146; lean_object* x_147; lean_object* x_148; 
x_144 = lean_ctor_get(x_139, 0);
x_145 = lean_ctor_get(x_1, 0);
lean_inc(x_145);
lean_dec(x_1);
x_146 = lean_ctor_get(x_145, 1);
lean_inc(x_146);
lean_dec(x_145);
lean_inc(x_144);
lean_inc(x_137);
x_147 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_147, 0, x_137);
lean_ctor_set(x_147, 1, x_144);
x_148 = lean_apply_2(x_146, lean_box(0), x_147);
return x_148;
}
}
case 1:
{
lean_object* x_149; 
x_149 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_149) == 0)
{
lean_object* x_150; lean_object* x_151; lean_object* x_152; lean_object* x_153; 
x_150 = lean_ctor_get(x_1, 0);
lean_inc(x_150);
lean_dec(x_1);
x_151 = lean_ctor_get(x_150, 1);
lean_inc(x_151);
lean_dec(x_150);
x_152 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_153 = lean_apply_2(x_151, lean_box(0), x_152);
return x_153;
}
else
{
lean_object* x_154; lean_object* x_155; lean_object* x_156; lean_object* x_157; lean_object* x_158; 
x_154 = lean_ctor_get(x_149, 0);
x_155 = lean_ctor_get(x_1, 0);
lean_inc(x_155);
lean_dec(x_1);
x_156 = lean_ctor_get(x_155, 1);
lean_inc(x_156);
lean_dec(x_155);
lean_inc(x_154);
lean_inc(x_137);
x_157 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_157, 0, x_137);
lean_ctor_set(x_157, 1, x_154);
x_158 = lean_apply_2(x_156, lean_box(0), x_157);
return x_158;
}
}
default: 
{
lean_object* x_159; 
x_159 = lean_ctor_get(x_3, 2);
if (lean_obj_tag(x_159) == 0)
{
lean_object* x_160; lean_object* x_161; lean_object* x_162; lean_object* x_163; 
x_160 = lean_ctor_get(x_1, 0);
lean_inc(x_160);
lean_dec(x_1);
x_161 = lean_ctor_get(x_160, 1);
lean_inc(x_161);
lean_dec(x_160);
x_162 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_163 = lean_apply_2(x_161, lean_box(0), x_162);
return x_163;
}
else
{
lean_object* x_164; lean_object* x_165; lean_object* x_166; lean_object* x_167; lean_object* x_168; 
x_164 = lean_ctor_get(x_159, 0);
x_165 = lean_ctor_get(x_1, 0);
lean_inc(x_165);
lean_dec(x_1);
x_166 = lean_ctor_get(x_165, 1);
lean_inc(x_166);
lean_dec(x_165);
lean_inc(x_164);
lean_inc(x_137);
x_167 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_167, 0, x_137);
lean_ctor_set(x_167, 1, x_164);
x_168 = lean_apply_2(x_166, lean_box(0), x_167);
return x_168;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___boxed), 3, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg(x_1, x_2, x_3);
lean_dec(x_3);
return x_4;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(1);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; 
x_6 = !lean_is_exclusive(x_1);
if (x_6 == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; uint8_t x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_7 = lean_ctor_get(x_5, 0);
x_8 = lean_ctor_get(x_5, 1);
x_9 = lean_ctor_get(x_1, 3);
x_10 = lean_ctor_get(x_1, 5);
x_11 = lean_ctor_get(x_1, 2);
lean_dec(x_11);
x_12 = lean_ctor_get(x_1, 1);
lean_dec(x_12);
x_13 = lean_ctor_get(x_1, 0);
lean_dec(x_13);
x_14 = l_Array_isEmpty___rarg(x_10);
x_15 = lean_ctor_get(x_2, 0);
lean_inc(x_15);
lean_dec(x_2);
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec(x_15);
x_17 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_17, 0, x_3);
lean_inc(x_7);
x_18 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_18, 0, x_7);
lean_inc(x_8);
x_19 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_19, 0, x_8);
if (lean_obj_tag(x_9) == 0)
{
if (x_14 == 0)
{
lean_object* x_20; lean_object* x_21; 
lean_dec(x_4);
x_20 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
lean_ctor_set(x_1, 3, x_20);
lean_ctor_set(x_1, 2, x_19);
lean_ctor_set(x_1, 1, x_18);
lean_ctor_set(x_1, 0, x_17);
x_21 = lean_apply_2(x_16, lean_box(0), x_1);
return x_21;
}
else
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
lean_dec(x_10);
x_22 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_23 = lean_array_push(x_22, x_4);
x_24 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
lean_ctor_set(x_1, 5, x_23);
lean_ctor_set(x_1, 3, x_24);
lean_ctor_set(x_1, 2, x_19);
lean_ctor_set(x_1, 1, x_18);
lean_ctor_set(x_1, 0, x_17);
x_25 = lean_apply_2(x_16, lean_box(0), x_1);
return x_25;
}
}
else
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_9);
if (x_26 == 0)
{
if (x_14 == 0)
{
lean_object* x_27; 
lean_dec(x_4);
lean_ctor_set(x_1, 2, x_19);
lean_ctor_set(x_1, 1, x_18);
lean_ctor_set(x_1, 0, x_17);
x_27 = lean_apply_2(x_16, lean_box(0), x_1);
return x_27;
}
else
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
lean_dec(x_10);
x_28 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_29 = lean_array_push(x_28, x_4);
lean_ctor_set(x_1, 5, x_29);
lean_ctor_set(x_1, 2, x_19);
lean_ctor_set(x_1, 1, x_18);
lean_ctor_set(x_1, 0, x_17);
x_30 = lean_apply_2(x_16, lean_box(0), x_1);
return x_30;
}
}
else
{
lean_object* x_31; lean_object* x_32; 
x_31 = lean_ctor_get(x_9, 0);
lean_inc(x_31);
lean_dec(x_9);
x_32 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_32, 0, x_31);
if (x_14 == 0)
{
lean_object* x_33; 
lean_dec(x_4);
lean_ctor_set(x_1, 3, x_32);
lean_ctor_set(x_1, 2, x_19);
lean_ctor_set(x_1, 1, x_18);
lean_ctor_set(x_1, 0, x_17);
x_33 = lean_apply_2(x_16, lean_box(0), x_1);
return x_33;
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
lean_dec(x_10);
x_34 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_35 = lean_array_push(x_34, x_4);
lean_ctor_set(x_1, 5, x_35);
lean_ctor_set(x_1, 3, x_32);
lean_ctor_set(x_1, 2, x_19);
lean_ctor_set(x_1, 1, x_18);
lean_ctor_set(x_1, 0, x_17);
x_36 = lean_apply_2(x_16, lean_box(0), x_1);
return x_36;
}
}
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; uint8_t x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; 
x_37 = lean_ctor_get(x_5, 0);
x_38 = lean_ctor_get(x_5, 1);
x_39 = lean_ctor_get(x_1, 3);
x_40 = lean_ctor_get(x_1, 4);
x_41 = lean_ctor_get(x_1, 5);
lean_inc(x_41);
lean_inc(x_40);
lean_inc(x_39);
lean_dec(x_1);
x_42 = l_Array_isEmpty___rarg(x_41);
x_43 = lean_ctor_get(x_2, 0);
lean_inc(x_43);
lean_dec(x_2);
x_44 = lean_ctor_get(x_43, 1);
lean_inc(x_44);
lean_dec(x_43);
x_45 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_45, 0, x_3);
lean_inc(x_37);
x_46 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_46, 0, x_37);
lean_inc(x_38);
x_47 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_47, 0, x_38);
if (lean_obj_tag(x_39) == 0)
{
if (x_42 == 0)
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; 
lean_dec(x_4);
x_48 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
x_49 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_49, 0, x_45);
lean_ctor_set(x_49, 1, x_46);
lean_ctor_set(x_49, 2, x_47);
lean_ctor_set(x_49, 3, x_48);
lean_ctor_set(x_49, 4, x_40);
lean_ctor_set(x_49, 5, x_41);
x_50 = lean_apply_2(x_44, lean_box(0), x_49);
return x_50;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
lean_dec(x_41);
x_51 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_52 = lean_array_push(x_51, x_4);
x_53 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
x_54 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_54, 0, x_45);
lean_ctor_set(x_54, 1, x_46);
lean_ctor_set(x_54, 2, x_47);
lean_ctor_set(x_54, 3, x_53);
lean_ctor_set(x_54, 4, x_40);
lean_ctor_set(x_54, 5, x_52);
x_55 = lean_apply_2(x_44, lean_box(0), x_54);
return x_55;
}
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_56 = lean_ctor_get(x_39, 0);
lean_inc(x_56);
if (lean_is_exclusive(x_39)) {
 lean_ctor_release(x_39, 0);
 x_57 = x_39;
} else {
 lean_dec_ref(x_39);
 x_57 = lean_box(0);
}
if (lean_is_scalar(x_57)) {
 x_58 = lean_alloc_ctor(1, 1, 0);
} else {
 x_58 = x_57;
}
lean_ctor_set(x_58, 0, x_56);
if (x_42 == 0)
{
lean_object* x_59; lean_object* x_60; 
lean_dec(x_4);
x_59 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_59, 0, x_45);
lean_ctor_set(x_59, 1, x_46);
lean_ctor_set(x_59, 2, x_47);
lean_ctor_set(x_59, 3, x_58);
lean_ctor_set(x_59, 4, x_40);
lean_ctor_set(x_59, 5, x_41);
x_60 = lean_apply_2(x_44, lean_box(0), x_59);
return x_60;
}
else
{
lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
lean_dec(x_41);
x_61 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_62 = lean_array_push(x_61, x_4);
x_63 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_63, 0, x_45);
lean_ctor_set(x_63, 1, x_46);
lean_ctor_set(x_63, 2, x_47);
lean_ctor_set(x_63, 3, x_58);
lean_ctor_set(x_63, 4, x_40);
lean_ctor_set(x_63, 5, x_62);
x_64 = lean_apply_2(x_44, lean_box(0), x_63);
return x_64;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
lean_inc(x_1);
x_7 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg(x_1, x_2, x_3);
x_8 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___boxed), 5, 4);
lean_closure_set(x_8, 0, x_3);
lean_closure_set(x_8, 1, x_1);
lean_closure_set(x_8, 2, x_6);
lean_closure_set(x_8, 3, x_4);
x_9 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_ctor_get(x_1, 1);
lean_inc(x_5);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_6 = l_Aesop_Frontend_RuleConfig_getTerm___rarg(x_1, x_2, x_3);
lean_inc(x_5);
x_7 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__2), 6, 5);
lean_closure_set(x_7, 0, x_1);
lean_closure_set(x_7, 1, x_2);
lean_closure_set(x_7, 2, x_3);
lean_closure_set(x_7, 3, x_4);
lean_closure_set(x_7, 4, x_5);
x_8 = lean_apply_4(x_5, lean_box(0), lean_box(0), x_6, x_7);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; 
x_6 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1(x_1, x_2, x_3, x_4, x_5);
lean_dec(x_5);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toRuleConfigs___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
x_5 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_6 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___rarg(x_1, x_2, x_3, x_5, x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toRuleConfigs___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toRuleConfigs___spec__1___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; lean_object* x_6; 
lean_inc(x_1);
x_5 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___rarg), 4, 2);
lean_closure_set(x_5, 0, x_1);
lean_closure_set(x_5, 1, x_2);
x_6 = l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toRuleConfigs___spec__1___rarg(x_1, x_5, x_4, x_3);
return x_6;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_toRuleConfigs___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___lambda__1(size_t x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, size_t x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; lean_object* x_11; 
x_8 = 1;
x_9 = lean_usize_add(x_1, x_8);
x_10 = lean_array_uset(x_2, x_1, x_7);
x_11 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg(x_3, x_4, x_5, x_6, x_9, x_10);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6) {
_start:
{
uint8_t x_7; 
x_7 = lean_usize_dec_lt(x_5, x_4);
if (x_7 == 0)
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_3);
lean_dec(x_2);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
x_9 = lean_ctor_get(x_8, 1);
lean_inc(x_9);
lean_dec(x_8);
x_10 = lean_apply_2(x_9, lean_box(0), x_6);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_11 = lean_array_uget(x_6, x_5);
x_12 = lean_unsigned_to_nat(0u);
x_13 = lean_array_uset(x_6, x_5, x_12);
x_14 = lean_ctor_get(x_1, 1);
lean_inc(x_14);
lean_inc(x_3);
lean_inc(x_2);
lean_inc(x_1);
x_15 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg(x_1, x_2, x_11, x_3);
x_16 = lean_box_usize(x_5);
x_17 = lean_box_usize(x_4);
x_18 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___lambda__1___boxed), 7, 6);
lean_closure_set(x_18, 0, x_16);
lean_closure_set(x_18, 1, x_13);
lean_closure_set(x_18, 2, x_1);
lean_closure_set(x_18, 3, x_2);
lean_closure_set(x_18, 4, x_3);
lean_closure_set(x_18, 5, x_17);
x_19 = lean_apply_4(x_14, lean_box(0), lean_box(0), x_15, x_18);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___boxed), 6, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
size_t x_5; size_t x_6; lean_object* x_7; 
x_5 = lean_array_size(x_4);
x_6 = 0;
x_7 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg(x_1, x_2, x_3, x_5, x_6, x_4);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_1, 1);
lean_inc(x_6);
lean_inc(x_2);
lean_inc(x_1);
x_7 = l_Aesop_Frontend_RuleExpr_toRuleConfigs___rarg(x_1, x_2, x_3, x_4);
x_8 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg___lambda__1), 4, 3);
lean_closure_set(x_8, 0, x_1);
lean_closure_set(x_8, 1, x_2);
lean_closure_set(x_8, 2, x_5);
x_9 = lean_apply_4(x_6, lean_box(0), lean_box(0), x_7, x_8);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg), 5, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_9 = lean_unbox_usize(x_6);
lean_dec(x_6);
x_10 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___lambda__1(x_8, x_2, x_3, x_4, x_5, x_9, x_7);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
size_t x_7; size_t x_8; lean_object* x_9; 
x_7 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_8 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_9 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalRules___spec__1___rarg(x_1, x_2, x_3, x_7, x_8, x_6);
return x_9;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_1 = lean_box(0);
x_2 = l_Aesop_RuleBuilderOptions_default;
x_3 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_4 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_4, 0, x_1);
lean_ctor_set(x_4, 1, x_1);
lean_ctor_set(x_4, 2, x_1);
lean_ctor_set(x_4, 3, x_1);
lean_ctor_set(x_4, 4, x_2);
lean_ctor_set(x_4, 5, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_5 = l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1;
x_6 = l_Aesop_defaultRuleSetName;
x_7 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg(x_1, x_2, x_4, x_5, x_6);
return x_7;
}
else
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_3);
if (x_8 == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_9 = lean_ctor_get(x_3, 0);
x_10 = lean_box(0);
x_11 = lean_mk_syntax_ident(x_9);
lean_ctor_set(x_3, 0, x_11);
x_12 = l_Aesop_RuleBuilderOptions_default;
x_13 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_14 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_14, 0, x_3);
lean_ctor_set(x_14, 1, x_10);
lean_ctor_set(x_14, 2, x_10);
lean_ctor_set(x_14, 3, x_10);
lean_ctor_set(x_14, 4, x_12);
lean_ctor_set(x_14, 5, x_13);
x_15 = l_Aesop_defaultRuleSetName;
x_16 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg(x_1, x_2, x_4, x_14, x_15);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_17 = lean_ctor_get(x_3, 0);
lean_inc(x_17);
lean_dec(x_3);
x_18 = lean_box(0);
x_19 = lean_mk_syntax_ident(x_17);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_19);
x_21 = l_Aesop_RuleBuilderOptions_default;
x_22 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_23 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_23, 0, x_20);
lean_ctor_set(x_23, 1, x_18);
lean_ctor_set(x_23, 2, x_18);
lean_ctor_set(x_23, 3, x_18);
lean_ctor_set(x_23, 4, x_21);
lean_ctor_set(x_23, 5, x_22);
x_24 = l_Aesop_defaultRuleSetName;
x_25 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___rarg(x_1, x_2, x_4, x_23, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg), 4, 0);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; uint8_t x_13; 
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_1);
x_13 = !lean_is_exclusive(x_2);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; 
x_14 = lean_ctor_get(x_2, 0);
lean_dec(x_14);
lean_ctor_set(x_2, 0, x_12);
x_15 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_15, 0, x_2);
lean_ctor_set(x_15, 1, x_11);
return x_15;
}
else
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_16 = lean_ctor_get(x_2, 1);
x_17 = lean_ctor_get(x_2, 2);
x_18 = lean_ctor_get(x_2, 3);
x_19 = lean_ctor_get(x_2, 4);
x_20 = lean_ctor_get(x_2, 5);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_2);
x_21 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_21, 0, x_12);
lean_ctor_set(x_21, 1, x_16);
lean_ctor_set(x_21, 2, x_17);
lean_ctor_set(x_21, 3, x_18);
lean_ctor_set(x_21, 4, x_19);
lean_ctor_set(x_21, 5, x_20);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_11);
return x_22;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 0:
{
uint8_t x_11; uint8_t x_12; 
x_11 = lean_ctor_get_uint8(x_2, 0);
lean_dec(x_2);
x_12 = !lean_is_exclusive(x_1);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; 
x_13 = lean_ctor_get(x_1, 1);
lean_dec(x_13);
x_14 = lean_box(x_11);
x_15 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_1, 1, x_15);
x_16 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_16, 0, x_1);
lean_ctor_set(x_16, 1, x_10);
return x_16;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_17 = lean_ctor_get(x_1, 0);
x_18 = lean_ctor_get(x_1, 2);
x_19 = lean_ctor_get(x_1, 3);
x_20 = lean_ctor_get(x_1, 4);
x_21 = lean_ctor_get(x_1, 5);
lean_inc(x_21);
lean_inc(x_20);
lean_inc(x_19);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_1);
x_22 = lean_box(x_11);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_22);
x_24 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_24, 0, x_17);
lean_ctor_set(x_24, 1, x_23);
lean_ctor_set(x_24, 2, x_18);
lean_ctor_set(x_24, 3, x_19);
lean_ctor_set(x_24, 4, x_20);
lean_ctor_set(x_24, 5, x_21);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_10);
return x_25;
}
}
case 1:
{
uint8_t x_26; 
x_26 = !lean_is_exclusive(x_2);
if (x_26 == 0)
{
uint8_t x_27; 
x_27 = !lean_is_exclusive(x_1);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; 
x_28 = lean_ctor_get(x_1, 2);
lean_dec(x_28);
lean_ctor_set(x_1, 2, x_2);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_1);
lean_ctor_set(x_29, 1, x_10);
return x_29;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_30 = lean_ctor_get(x_1, 0);
x_31 = lean_ctor_get(x_1, 1);
x_32 = lean_ctor_get(x_1, 3);
x_33 = lean_ctor_get(x_1, 4);
x_34 = lean_ctor_get(x_1, 5);
lean_inc(x_34);
lean_inc(x_33);
lean_inc(x_32);
lean_inc(x_31);
lean_inc(x_30);
lean_dec(x_1);
x_35 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_35, 0, x_30);
lean_ctor_set(x_35, 1, x_31);
lean_ctor_set(x_35, 2, x_2);
lean_ctor_set(x_35, 3, x_32);
lean_ctor_set(x_35, 4, x_33);
lean_ctor_set(x_35, 5, x_34);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_35);
lean_ctor_set(x_36, 1, x_10);
return x_36;
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_37 = lean_ctor_get(x_2, 0);
lean_inc(x_37);
lean_dec(x_2);
x_38 = lean_ctor_get(x_1, 0);
lean_inc(x_38);
x_39 = lean_ctor_get(x_1, 1);
lean_inc(x_39);
x_40 = lean_ctor_get(x_1, 3);
lean_inc(x_40);
x_41 = lean_ctor_get(x_1, 4);
lean_inc(x_41);
x_42 = lean_ctor_get(x_1, 5);
lean_inc(x_42);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_43 = x_1;
} else {
 lean_dec_ref(x_1);
 x_43 = lean_box(0);
}
x_44 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_44, 0, x_37);
if (lean_is_scalar(x_43)) {
 x_45 = lean_alloc_ctor(0, 6, 0);
} else {
 x_45 = x_43;
}
lean_ctor_set(x_45, 0, x_38);
lean_ctor_set(x_45, 1, x_39);
lean_ctor_set(x_45, 2, x_44);
lean_ctor_set(x_45, 3, x_40);
lean_ctor_set(x_45, 4, x_41);
lean_ctor_set(x_45, 5, x_42);
x_46 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set(x_46, 1, x_10);
return x_46;
}
}
case 2:
{
uint8_t x_47; 
x_47 = !lean_is_exclusive(x_2);
if (x_47 == 0)
{
uint8_t x_48; 
x_48 = !lean_is_exclusive(x_1);
if (x_48 == 0)
{
lean_object* x_49; lean_object* x_50; 
x_49 = lean_ctor_get(x_1, 3);
lean_dec(x_49);
lean_ctor_set_tag(x_2, 1);
lean_ctor_set(x_1, 3, x_2);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_1);
lean_ctor_set(x_50, 1, x_10);
return x_50;
}
else
{
lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; 
x_51 = lean_ctor_get(x_1, 0);
x_52 = lean_ctor_get(x_1, 1);
x_53 = lean_ctor_get(x_1, 2);
x_54 = lean_ctor_get(x_1, 4);
x_55 = lean_ctor_get(x_1, 5);
lean_inc(x_55);
lean_inc(x_54);
lean_inc(x_53);
lean_inc(x_52);
lean_inc(x_51);
lean_dec(x_1);
lean_ctor_set_tag(x_2, 1);
x_56 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_56, 0, x_51);
lean_ctor_set(x_56, 1, x_52);
lean_ctor_set(x_56, 2, x_53);
lean_ctor_set(x_56, 3, x_2);
lean_ctor_set(x_56, 4, x_54);
lean_ctor_set(x_56, 5, x_55);
x_57 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_57, 0, x_56);
lean_ctor_set(x_57, 1, x_10);
return x_57;
}
}
else
{
lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; 
x_58 = lean_ctor_get(x_2, 0);
lean_inc(x_58);
lean_dec(x_2);
x_59 = lean_ctor_get(x_1, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_1, 1);
lean_inc(x_60);
x_61 = lean_ctor_get(x_1, 2);
lean_inc(x_61);
x_62 = lean_ctor_get(x_1, 4);
lean_inc(x_62);
x_63 = lean_ctor_get(x_1, 5);
lean_inc(x_63);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_64 = x_1;
} else {
 lean_dec_ref(x_1);
 x_64 = lean_box(0);
}
x_65 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_65, 0, x_58);
if (lean_is_scalar(x_64)) {
 x_66 = lean_alloc_ctor(0, 6, 0);
} else {
 x_66 = x_64;
}
lean_ctor_set(x_66, 0, x_59);
lean_ctor_set(x_66, 1, x_60);
lean_ctor_set(x_66, 2, x_61);
lean_ctor_set(x_66, 3, x_65);
lean_ctor_set(x_66, 4, x_62);
lean_ctor_set(x_66, 5, x_63);
x_67 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_67, 0, x_66);
lean_ctor_set(x_67, 1, x_10);
return x_67;
}
}
case 3:
{
lean_object* x_68; uint8_t x_69; 
x_68 = lean_ctor_get(x_2, 0);
lean_inc(x_68);
lean_dec(x_2);
x_69 = !lean_is_exclusive(x_1);
if (x_69 == 0)
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; 
x_70 = lean_ctor_get(x_1, 4);
x_71 = l_Aesop_Frontend_addBuilderOption(x_70, x_68);
lean_ctor_set(x_1, 4, x_71);
x_72 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_72, 0, x_1);
lean_ctor_set(x_72, 1, x_10);
return x_72;
}
else
{
lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_73 = lean_ctor_get(x_1, 0);
x_74 = lean_ctor_get(x_1, 1);
x_75 = lean_ctor_get(x_1, 2);
x_76 = lean_ctor_get(x_1, 3);
x_77 = lean_ctor_get(x_1, 4);
x_78 = lean_ctor_get(x_1, 5);
lean_inc(x_78);
lean_inc(x_77);
lean_inc(x_76);
lean_inc(x_75);
lean_inc(x_74);
lean_inc(x_73);
lean_dec(x_1);
x_79 = l_Aesop_Frontend_addBuilderOption(x_77, x_68);
x_80 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_80, 0, x_73);
lean_ctor_set(x_80, 1, x_74);
lean_ctor_set(x_80, 2, x_75);
lean_ctor_set(x_80, 3, x_76);
lean_ctor_set(x_80, 4, x_79);
lean_ctor_set(x_80, 5, x_78);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_10);
return x_81;
}
}
case 4:
{
lean_object* x_82; 
x_82 = lean_ctor_get(x_1, 0);
lean_inc(x_82);
if (lean_obj_tag(x_82) == 0)
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; 
x_83 = lean_ctor_get(x_2, 0);
lean_inc(x_83);
lean_dec(x_2);
x_84 = lean_box(0);
x_85 = l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___lambda__1(x_83, x_1, x_84, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_85;
}
else
{
lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; lean_object* x_95; lean_object* x_96; lean_object* x_97; uint8_t x_98; 
lean_dec(x_1);
x_86 = lean_ctor_get(x_2, 0);
lean_inc(x_86);
lean_dec(x_2);
x_87 = lean_ctor_get(x_82, 0);
lean_inc(x_87);
lean_dec(x_82);
x_88 = l_Lean_MessageData_ofSyntax(x_86);
x_89 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2;
x_90 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_88);
x_91 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4;
x_92 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_92, 0, x_90);
lean_ctor_set(x_92, 1, x_91);
x_93 = l_Lean_MessageData_ofSyntax(x_87);
x_94 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_94, 0, x_92);
lean_ctor_set(x_94, 1, x_93);
x_95 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6;
x_96 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_96, 0, x_94);
lean_ctor_set(x_96, 1, x_95);
x_97 = l_Lean_throwError___at_Aesop_RuleBuilder_cases___spec__1(x_96, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
x_98 = !lean_is_exclusive(x_97);
if (x_98 == 0)
{
return x_97;
}
else
{
lean_object* x_99; lean_object* x_100; lean_object* x_101; 
x_99 = lean_ctor_get(x_97, 0);
x_100 = lean_ctor_get(x_97, 1);
lean_inc(x_100);
lean_inc(x_99);
lean_dec(x_97);
x_101 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_101, 0, x_99);
lean_ctor_set(x_101, 1, x_100);
return x_101;
}
}
}
default: 
{
lean_object* x_102; uint8_t x_103; 
x_102 = lean_ctor_get(x_2, 0);
lean_inc(x_102);
lean_dec(x_2);
x_103 = !lean_is_exclusive(x_1);
if (x_103 == 0)
{
lean_object* x_104; lean_object* x_105; lean_object* x_106; lean_object* x_107; lean_object* x_108; 
x_104 = lean_ctor_get(x_1, 5);
x_105 = l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(x_102);
x_106 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
x_107 = l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(x_104, x_105, x_106);
lean_ctor_set(x_1, 5, x_107);
x_108 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_108, 0, x_1);
lean_ctor_set(x_108, 1, x_10);
return x_108;
}
else
{
lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; lean_object* x_117; lean_object* x_118; lean_object* x_119; 
x_109 = lean_ctor_get(x_1, 0);
x_110 = lean_ctor_get(x_1, 1);
x_111 = lean_ctor_get(x_1, 2);
x_112 = lean_ctor_get(x_1, 3);
x_113 = lean_ctor_get(x_1, 4);
x_114 = lean_ctor_get(x_1, 5);
lean_inc(x_114);
lean_inc(x_113);
lean_inc(x_112);
lean_inc(x_111);
lean_inc(x_110);
lean_inc(x_109);
lean_dec(x_1);
x_115 = l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(x_102);
x_116 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
x_117 = l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(x_114, x_115, x_116);
x_118 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_118, 0, x_109);
lean_ctor_set(x_118, 1, x_110);
lean_ctor_set(x_118, 2, x_111);
lean_ctor_set(x_118, 3, x_112);
lean_ctor_set(x_118, 4, x_113);
lean_ctor_set(x_118, 5, x_117);
x_119 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_119, 0, x_118);
lean_ctor_set(x_119, 1, x_10);
return x_119;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
uint8_t x_15; 
x_15 = lean_usize_dec_eq(x_4, x_5);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = lean_array_uget(x_3, x_4);
lean_inc(x_13);
lean_inc(x_12);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_2);
lean_inc(x_1);
x_17 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__6(x_1, x_2, x_6, x_16, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_4, x_20);
x_4 = x_21;
x_6 = x_18;
x_14 = x_19;
goto _start;
}
else
{
uint8_t x_23; 
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
x_23 = !lean_is_exclusive(x_17);
if (x_23 == 0)
{
return x_17;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_17, 0);
x_25 = lean_ctor_get(x_17, 1);
lean_inc(x_25);
lean_inc(x_24);
lean_dec(x_17);
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
lean_dec(x_13);
lean_dec(x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
x_27 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_27, 0, x_6);
lean_ctor_set(x_27, 1, x_14);
return x_27;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_4, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_4, 1);
lean_inc(x_14);
lean_dec(x_4);
lean_inc(x_1);
lean_inc(x_11);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_15 = lean_apply_10(x_1, x_2, x_13, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_15) == 0)
{
uint8_t x_16; 
x_16 = !lean_is_exclusive(x_15);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_ctor_get(x_15, 0);
x_18 = lean_ctor_get(x_15, 1);
x_19 = l_Array_isEmpty___rarg(x_14);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; uint8_t x_22; 
x_20 = lean_array_get_size(x_14);
x_21 = lean_unsigned_to_nat(0u);
x_22 = lean_nat_dec_lt(x_21, x_20);
if (x_22 == 0)
{
lean_dec(x_20);
lean_dec(x_17);
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
lean_ctor_set(x_15, 0, x_3);
return x_15;
}
else
{
uint8_t x_23; 
x_23 = lean_nat_dec_le(x_20, x_20);
if (x_23 == 0)
{
lean_dec(x_20);
lean_dec(x_17);
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
lean_ctor_set(x_15, 0, x_3);
return x_15;
}
else
{
size_t x_24; size_t x_25; lean_object* x_26; 
lean_free_object(x_15);
x_24 = 0;
x_25 = lean_usize_of_nat(x_20);
lean_dec(x_20);
x_26 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7(x_1, x_17, x_14, x_24, x_25, x_3, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_18);
lean_dec(x_14);
return x_26;
}
}
}
else
{
lean_object* x_27; 
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_27 = lean_array_push(x_3, x_17);
lean_ctor_set(x_15, 0, x_27);
return x_15;
}
}
else
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_28 = lean_ctor_get(x_15, 0);
x_29 = lean_ctor_get(x_15, 1);
lean_inc(x_29);
lean_inc(x_28);
lean_dec(x_15);
x_30 = l_Array_isEmpty___rarg(x_14);
if (x_30 == 0)
{
lean_object* x_31; lean_object* x_32; uint8_t x_33; 
x_31 = lean_array_get_size(x_14);
x_32 = lean_unsigned_to_nat(0u);
x_33 = lean_nat_dec_lt(x_32, x_31);
if (x_33 == 0)
{
lean_object* x_34; 
lean_dec(x_31);
lean_dec(x_28);
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_3);
lean_ctor_set(x_34, 1, x_29);
return x_34;
}
else
{
uint8_t x_35; 
x_35 = lean_nat_dec_le(x_31, x_31);
if (x_35 == 0)
{
lean_object* x_36; 
lean_dec(x_31);
lean_dec(x_28);
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_36 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_36, 0, x_3);
lean_ctor_set(x_36, 1, x_29);
return x_36;
}
else
{
size_t x_37; size_t x_38; lean_object* x_39; 
x_37 = 0;
x_38 = lean_usize_of_nat(x_31);
lean_dec(x_31);
x_39 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7(x_1, x_28, x_14, x_37, x_38, x_3, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_29);
lean_dec(x_14);
return x_39;
}
}
}
else
{
lean_object* x_40; lean_object* x_41; 
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_40 = lean_array_push(x_3, x_28);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_29);
return x_41;
}
}
}
else
{
uint8_t x_42; 
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_1);
x_42 = !lean_is_exclusive(x_15);
if (x_42 == 0)
{
return x_15;
}
else
{
lean_object* x_43; lean_object* x_44; lean_object* x_45; 
x_43 = lean_ctor_get(x_15, 0);
x_44 = lean_ctor_get(x_15, 1);
lean_inc(x_44);
lean_inc(x_43);
lean_dec(x_15);
x_45 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_45, 0, x_43);
lean_ctor_set(x_45, 1, x_44);
return x_45;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
x_12 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_13 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__6(x_1, x_2, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_13;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___boxed), 10, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; lean_object* x_12; 
x_11 = l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1;
x_12 = l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__5(x_11, x_2, x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_10 = lean_ctor_get(x_7, 5);
x_11 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_5, x_6, x_7, x_8, x_9);
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_ctor_get(x_11, 0);
lean_inc(x_10);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_10);
lean_ctor_set(x_14, 1, x_13);
lean_ctor_set_tag(x_11, 1);
lean_ctor_set(x_11, 0, x_14);
return x_11;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_ctor_get(x_11, 0);
x_16 = lean_ctor_get(x_11, 1);
lean_inc(x_16);
lean_inc(x_15);
lean_dec(x_11);
lean_inc(x_10);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_10);
lean_ctor_set(x_17, 1, x_15);
x_18 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_16);
return x_18;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = lean_ctor_get(x_1, 3);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; 
x_12 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_14 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_13, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_14;
}
else
{
lean_object* x_15; 
x_15 = lean_ctor_get(x_12, 0);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; 
x_16 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_17 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_16, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_17;
}
else
{
uint8_t x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_18 = 2;
x_19 = lean_box(x_18);
lean_inc(x_15);
x_20 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_20, 0, x_19);
lean_ctor_set(x_20, 1, x_15);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_9);
return x_21;
}
}
}
else
{
lean_object* x_22; uint8_t x_23; 
x_22 = lean_ctor_get(x_11, 0);
x_23 = lean_unbox(x_22);
switch (x_23) {
case 0:
{
lean_object* x_24; 
x_24 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; 
x_25 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_9);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
x_27 = lean_ctor_get(x_24, 0);
lean_inc(x_27);
lean_inc(x_22);
x_28 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_28, 0, x_22);
lean_ctor_set(x_28, 1, x_27);
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_9);
return x_29;
}
}
case 1:
{
lean_object* x_30; 
x_30 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; 
x_31 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_9);
return x_32;
}
else
{
lean_object* x_33; lean_object* x_34; lean_object* x_35; 
x_33 = lean_ctor_get(x_30, 0);
lean_inc(x_33);
lean_inc(x_22);
x_34 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_34, 0, x_22);
lean_ctor_set(x_34, 1, x_33);
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_9);
return x_35;
}
}
default: 
{
lean_object* x_36; 
x_36 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_36) == 0)
{
lean_object* x_37; lean_object* x_38; 
x_37 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_9);
return x_38;
}
else
{
lean_object* x_39; lean_object* x_40; lean_object* x_41; 
x_39 = lean_ctor_get(x_36, 0);
lean_inc(x_39);
lean_inc(x_22);
x_40 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_40, 0, x_22);
lean_ctor_set(x_40, 1, x_39);
x_41 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_9);
return x_41;
}
}
}
}
}
else
{
lean_object* x_42; 
x_42 = lean_ctor_get(x_10, 0);
if (lean_obj_tag(x_42) == 0)
{
uint8_t x_43; lean_object* x_44; 
x_43 = lean_ctor_get_uint8(x_42, 0);
x_44 = lean_box(x_43);
if (lean_obj_tag(x_44) == 5)
{
lean_object* x_45; 
x_45 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_45) == 0)
{
lean_object* x_46; 
x_46 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_46) == 0)
{
lean_object* x_47; lean_object* x_48; 
x_47 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10;
x_48 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_48, 0, x_47);
lean_ctor_set(x_48, 1, x_9);
return x_48;
}
else
{
lean_object* x_49; uint8_t x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; 
x_49 = lean_ctor_get(x_46, 0);
x_50 = 0;
x_51 = lean_box(x_50);
lean_inc(x_49);
x_52 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_52, 0, x_51);
lean_ctor_set(x_52, 1, x_49);
x_53 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_53, 0, x_52);
lean_ctor_set(x_53, 1, x_9);
return x_53;
}
}
else
{
lean_object* x_54; 
x_54 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_54) == 0)
{
lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; 
x_55 = lean_ctor_get(x_45, 0);
x_56 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9;
lean_inc(x_55);
x_57 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_57, 0, x_55);
lean_ctor_set(x_57, 1, x_56);
x_58 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_58, 0, x_57);
lean_ctor_set(x_58, 1, x_9);
return x_58;
}
else
{
lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; 
x_59 = lean_ctor_get(x_45, 0);
x_60 = lean_ctor_get(x_54, 0);
lean_inc(x_60);
lean_inc(x_59);
x_61 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_61, 0, x_59);
lean_ctor_set(x_61, 1, x_60);
x_62 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_62, 0, x_61);
lean_ctor_set(x_62, 1, x_9);
return x_62;
}
}
}
else
{
lean_object* x_63; 
lean_dec(x_44);
x_63 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_63) == 0)
{
lean_object* x_64; 
x_64 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_64) == 0)
{
lean_object* x_65; lean_object* x_66; 
x_65 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_66 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_65, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_66;
}
else
{
lean_object* x_67; 
x_67 = lean_ctor_get(x_64, 0);
if (lean_obj_tag(x_67) == 0)
{
lean_object* x_68; lean_object* x_69; 
x_68 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_69 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_68, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_69;
}
else
{
uint8_t x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; 
x_70 = 2;
x_71 = lean_box(x_70);
lean_inc(x_67);
x_72 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_72, 0, x_71);
lean_ctor_set(x_72, 1, x_67);
x_73 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_73, 0, x_72);
lean_ctor_set(x_73, 1, x_9);
return x_73;
}
}
}
else
{
lean_object* x_74; uint8_t x_75; 
x_74 = lean_ctor_get(x_63, 0);
x_75 = lean_unbox(x_74);
switch (x_75) {
case 0:
{
lean_object* x_76; 
x_76 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_76) == 0)
{
lean_object* x_77; lean_object* x_78; 
x_77 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_77);
lean_ctor_set(x_78, 1, x_9);
return x_78;
}
else
{
lean_object* x_79; lean_object* x_80; lean_object* x_81; 
x_79 = lean_ctor_get(x_76, 0);
lean_inc(x_79);
lean_inc(x_74);
x_80 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_80, 0, x_74);
lean_ctor_set(x_80, 1, x_79);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_9);
return x_81;
}
}
case 1:
{
lean_object* x_82; 
x_82 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_82) == 0)
{
lean_object* x_83; lean_object* x_84; 
x_83 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_84 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_84, 0, x_83);
lean_ctor_set(x_84, 1, x_9);
return x_84;
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; 
x_85 = lean_ctor_get(x_82, 0);
lean_inc(x_85);
lean_inc(x_74);
x_86 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_86, 0, x_74);
lean_ctor_set(x_86, 1, x_85);
x_87 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_87, 0, x_86);
lean_ctor_set(x_87, 1, x_9);
return x_87;
}
}
default: 
{
lean_object* x_88; 
x_88 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_88) == 0)
{
lean_object* x_89; lean_object* x_90; 
x_89 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_90 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_9);
return x_90;
}
else
{
lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_91 = lean_ctor_get(x_88, 0);
lean_inc(x_91);
lean_inc(x_74);
x_92 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_92, 0, x_74);
lean_ctor_set(x_92, 1, x_91);
x_93 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_93, 0, x_92);
lean_ctor_set(x_93, 1, x_9);
return x_93;
}
}
}
}
}
}
else
{
lean_object* x_94; 
x_94 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_94) == 0)
{
lean_object* x_95; 
x_95 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_95) == 0)
{
lean_object* x_96; lean_object* x_97; 
x_96 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_97 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_96, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_97;
}
else
{
lean_object* x_98; 
x_98 = lean_ctor_get(x_95, 0);
if (lean_obj_tag(x_98) == 0)
{
lean_object* x_99; lean_object* x_100; 
x_99 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_100 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_99, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
return x_100;
}
else
{
uint8_t x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; 
x_101 = 2;
x_102 = lean_box(x_101);
lean_inc(x_98);
x_103 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_103, 0, x_102);
lean_ctor_set(x_103, 1, x_98);
x_104 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_104, 0, x_103);
lean_ctor_set(x_104, 1, x_9);
return x_104;
}
}
}
else
{
lean_object* x_105; uint8_t x_106; 
x_105 = lean_ctor_get(x_94, 0);
x_106 = lean_unbox(x_105);
switch (x_106) {
case 0:
{
lean_object* x_107; 
x_107 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_107) == 0)
{
lean_object* x_108; lean_object* x_109; 
x_108 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_109 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_109, 0, x_108);
lean_ctor_set(x_109, 1, x_9);
return x_109;
}
else
{
lean_object* x_110; lean_object* x_111; lean_object* x_112; 
x_110 = lean_ctor_get(x_107, 0);
lean_inc(x_110);
lean_inc(x_105);
x_111 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_111, 0, x_105);
lean_ctor_set(x_111, 1, x_110);
x_112 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_112, 0, x_111);
lean_ctor_set(x_112, 1, x_9);
return x_112;
}
}
case 1:
{
lean_object* x_113; 
x_113 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_113) == 0)
{
lean_object* x_114; lean_object* x_115; 
x_114 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_115 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_115, 0, x_114);
lean_ctor_set(x_115, 1, x_9);
return x_115;
}
else
{
lean_object* x_116; lean_object* x_117; lean_object* x_118; 
x_116 = lean_ctor_get(x_113, 0);
lean_inc(x_116);
lean_inc(x_105);
x_117 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_117, 0, x_105);
lean_ctor_set(x_117, 1, x_116);
x_118 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_118, 0, x_117);
lean_ctor_set(x_118, 1, x_9);
return x_118;
}
}
default: 
{
lean_object* x_119; 
x_119 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_119) == 0)
{
lean_object* x_120; lean_object* x_121; 
x_120 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_121 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_121, 0, x_120);
lean_ctor_set(x_121, 1, x_9);
return x_121;
}
else
{
lean_object* x_122; lean_object* x_123; lean_object* x_124; 
x_122 = lean_ctor_get(x_119, 0);
lean_inc(x_122);
lean_inc(x_105);
x_123 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_123, 0, x_105);
lean_ctor_set(x_123, 1, x_122);
x_124 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_124, 0, x_123);
lean_ctor_set(x_124, 1, x_9);
return x_124;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleConfig_toRuleFilter___spec__1(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
if (lean_obj_tag(x_11) == 0)
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_12 = lean_ctor_get(x_11, 0);
lean_inc(x_12);
x_13 = lean_ctor_get(x_11, 1);
lean_inc(x_13);
lean_dec(x_11);
x_14 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__9(x_1, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_13);
if (lean_obj_tag(x_14) == 0)
{
uint8_t x_15; 
x_15 = !lean_is_exclusive(x_14);
if (x_15 == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_16 = lean_ctor_get(x_14, 0);
x_17 = lean_ctor_get(x_16, 0);
lean_inc(x_17);
x_18 = lean_ctor_get(x_16, 1);
lean_inc(x_18);
lean_dec(x_16);
x_19 = !lean_is_exclusive(x_1);
if (x_19 == 0)
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; uint8_t x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_20 = lean_ctor_get(x_1, 3);
x_21 = lean_ctor_get(x_1, 5);
x_22 = lean_ctor_get(x_1, 2);
lean_dec(x_22);
x_23 = lean_ctor_get(x_1, 1);
lean_dec(x_23);
x_24 = lean_ctor_get(x_1, 0);
lean_dec(x_24);
x_25 = l_Array_isEmpty___rarg(x_21);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_12);
x_27 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_27, 0, x_17);
x_28 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_28, 0, x_18);
if (lean_obj_tag(x_20) == 0)
{
if (x_25 == 0)
{
lean_object* x_29; 
lean_dec(x_2);
x_29 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
lean_ctor_set(x_1, 3, x_29);
lean_ctor_set(x_1, 2, x_28);
lean_ctor_set(x_1, 1, x_27);
lean_ctor_set(x_1, 0, x_26);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
lean_dec(x_21);
x_30 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_31 = lean_array_push(x_30, x_2);
x_32 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
lean_ctor_set(x_1, 5, x_31);
lean_ctor_set(x_1, 3, x_32);
lean_ctor_set(x_1, 2, x_28);
lean_ctor_set(x_1, 1, x_27);
lean_ctor_set(x_1, 0, x_26);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
}
else
{
uint8_t x_33; 
x_33 = !lean_is_exclusive(x_20);
if (x_33 == 0)
{
if (x_25 == 0)
{
lean_dec(x_2);
lean_ctor_set(x_1, 2, x_28);
lean_ctor_set(x_1, 1, x_27);
lean_ctor_set(x_1, 0, x_26);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
else
{
lean_object* x_34; lean_object* x_35; 
lean_dec(x_21);
x_34 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_35 = lean_array_push(x_34, x_2);
lean_ctor_set(x_1, 5, x_35);
lean_ctor_set(x_1, 2, x_28);
lean_ctor_set(x_1, 1, x_27);
lean_ctor_set(x_1, 0, x_26);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
}
else
{
lean_object* x_36; lean_object* x_37; 
x_36 = lean_ctor_get(x_20, 0);
lean_inc(x_36);
lean_dec(x_20);
x_37 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_37, 0, x_36);
if (x_25 == 0)
{
lean_dec(x_2);
lean_ctor_set(x_1, 3, x_37);
lean_ctor_set(x_1, 2, x_28);
lean_ctor_set(x_1, 1, x_27);
lean_ctor_set(x_1, 0, x_26);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
else
{
lean_object* x_38; lean_object* x_39; 
lean_dec(x_21);
x_38 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_39 = lean_array_push(x_38, x_2);
lean_ctor_set(x_1, 5, x_39);
lean_ctor_set(x_1, 3, x_37);
lean_ctor_set(x_1, 2, x_28);
lean_ctor_set(x_1, 1, x_27);
lean_ctor_set(x_1, 0, x_26);
lean_ctor_set(x_14, 0, x_1);
return x_14;
}
}
}
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; uint8_t x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_40 = lean_ctor_get(x_1, 3);
x_41 = lean_ctor_get(x_1, 4);
x_42 = lean_ctor_get(x_1, 5);
lean_inc(x_42);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_1);
x_43 = l_Array_isEmpty___rarg(x_42);
x_44 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_44, 0, x_12);
x_45 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_45, 0, x_17);
x_46 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_46, 0, x_18);
if (lean_obj_tag(x_40) == 0)
{
if (x_43 == 0)
{
lean_object* x_47; lean_object* x_48; 
lean_dec(x_2);
x_47 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
x_48 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_48, 0, x_44);
lean_ctor_set(x_48, 1, x_45);
lean_ctor_set(x_48, 2, x_46);
lean_ctor_set(x_48, 3, x_47);
lean_ctor_set(x_48, 4, x_41);
lean_ctor_set(x_48, 5, x_42);
lean_ctor_set(x_14, 0, x_48);
return x_14;
}
else
{
lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; 
lean_dec(x_42);
x_49 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_50 = lean_array_push(x_49, x_2);
x_51 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
x_52 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_52, 0, x_44);
lean_ctor_set(x_52, 1, x_45);
lean_ctor_set(x_52, 2, x_46);
lean_ctor_set(x_52, 3, x_51);
lean_ctor_set(x_52, 4, x_41);
lean_ctor_set(x_52, 5, x_50);
lean_ctor_set(x_14, 0, x_52);
return x_14;
}
}
else
{
lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_53 = lean_ctor_get(x_40, 0);
lean_inc(x_53);
if (lean_is_exclusive(x_40)) {
 lean_ctor_release(x_40, 0);
 x_54 = x_40;
} else {
 lean_dec_ref(x_40);
 x_54 = lean_box(0);
}
if (lean_is_scalar(x_54)) {
 x_55 = lean_alloc_ctor(1, 1, 0);
} else {
 x_55 = x_54;
}
lean_ctor_set(x_55, 0, x_53);
if (x_43 == 0)
{
lean_object* x_56; 
lean_dec(x_2);
x_56 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_56, 0, x_44);
lean_ctor_set(x_56, 1, x_45);
lean_ctor_set(x_56, 2, x_46);
lean_ctor_set(x_56, 3, x_55);
lean_ctor_set(x_56, 4, x_41);
lean_ctor_set(x_56, 5, x_42);
lean_ctor_set(x_14, 0, x_56);
return x_14;
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; 
lean_dec(x_42);
x_57 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_58 = lean_array_push(x_57, x_2);
x_59 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_59, 0, x_44);
lean_ctor_set(x_59, 1, x_45);
lean_ctor_set(x_59, 2, x_46);
lean_ctor_set(x_59, 3, x_55);
lean_ctor_set(x_59, 4, x_41);
lean_ctor_set(x_59, 5, x_58);
lean_ctor_set(x_14, 0, x_59);
return x_14;
}
}
}
}
else
{
lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; lean_object* x_65; lean_object* x_66; lean_object* x_67; uint8_t x_68; lean_object* x_69; lean_object* x_70; lean_object* x_71; 
x_60 = lean_ctor_get(x_14, 0);
x_61 = lean_ctor_get(x_14, 1);
lean_inc(x_61);
lean_inc(x_60);
lean_dec(x_14);
x_62 = lean_ctor_get(x_60, 0);
lean_inc(x_62);
x_63 = lean_ctor_get(x_60, 1);
lean_inc(x_63);
lean_dec(x_60);
x_64 = lean_ctor_get(x_1, 3);
lean_inc(x_64);
x_65 = lean_ctor_get(x_1, 4);
lean_inc(x_65);
x_66 = lean_ctor_get(x_1, 5);
lean_inc(x_66);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_67 = x_1;
} else {
 lean_dec_ref(x_1);
 x_67 = lean_box(0);
}
x_68 = l_Array_isEmpty___rarg(x_66);
x_69 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_69, 0, x_12);
x_70 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_70, 0, x_62);
x_71 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_71, 0, x_63);
if (lean_obj_tag(x_64) == 0)
{
if (x_68 == 0)
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; 
lean_dec(x_2);
x_72 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
if (lean_is_scalar(x_67)) {
 x_73 = lean_alloc_ctor(0, 6, 0);
} else {
 x_73 = x_67;
}
lean_ctor_set(x_73, 0, x_69);
lean_ctor_set(x_73, 1, x_70);
lean_ctor_set(x_73, 2, x_71);
lean_ctor_set(x_73, 3, x_72);
lean_ctor_set(x_73, 4, x_65);
lean_ctor_set(x_73, 5, x_66);
x_74 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_74, 0, x_73);
lean_ctor_set(x_74, 1, x_61);
return x_74;
}
else
{
lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; lean_object* x_79; 
lean_dec(x_66);
x_75 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_76 = lean_array_push(x_75, x_2);
x_77 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
if (lean_is_scalar(x_67)) {
 x_78 = lean_alloc_ctor(0, 6, 0);
} else {
 x_78 = x_67;
}
lean_ctor_set(x_78, 0, x_69);
lean_ctor_set(x_78, 1, x_70);
lean_ctor_set(x_78, 2, x_71);
lean_ctor_set(x_78, 3, x_77);
lean_ctor_set(x_78, 4, x_65);
lean_ctor_set(x_78, 5, x_76);
x_79 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_79, 0, x_78);
lean_ctor_set(x_79, 1, x_61);
return x_79;
}
}
else
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_80 = lean_ctor_get(x_64, 0);
lean_inc(x_80);
if (lean_is_exclusive(x_64)) {
 lean_ctor_release(x_64, 0);
 x_81 = x_64;
} else {
 lean_dec_ref(x_64);
 x_81 = lean_box(0);
}
if (lean_is_scalar(x_81)) {
 x_82 = lean_alloc_ctor(1, 1, 0);
} else {
 x_82 = x_81;
}
lean_ctor_set(x_82, 0, x_80);
if (x_68 == 0)
{
lean_object* x_83; lean_object* x_84; 
lean_dec(x_2);
if (lean_is_scalar(x_67)) {
 x_83 = lean_alloc_ctor(0, 6, 0);
} else {
 x_83 = x_67;
}
lean_ctor_set(x_83, 0, x_69);
lean_ctor_set(x_83, 1, x_70);
lean_ctor_set(x_83, 2, x_71);
lean_ctor_set(x_83, 3, x_82);
lean_ctor_set(x_83, 4, x_65);
lean_ctor_set(x_83, 5, x_66);
x_84 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_84, 0, x_83);
lean_ctor_set(x_84, 1, x_61);
return x_84;
}
else
{
lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; 
lean_dec(x_66);
x_85 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_86 = lean_array_push(x_85, x_2);
if (lean_is_scalar(x_67)) {
 x_87 = lean_alloc_ctor(0, 6, 0);
} else {
 x_87 = x_67;
}
lean_ctor_set(x_87, 0, x_69);
lean_ctor_set(x_87, 1, x_70);
lean_ctor_set(x_87, 2, x_71);
lean_ctor_set(x_87, 3, x_82);
lean_ctor_set(x_87, 4, x_65);
lean_ctor_set(x_87, 5, x_86);
x_88 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_88, 0, x_87);
lean_ctor_set(x_88, 1, x_61);
return x_88;
}
}
}
}
else
{
uint8_t x_89; 
lean_dec(x_12);
lean_dec(x_2);
lean_dec(x_1);
x_89 = !lean_is_exclusive(x_14);
if (x_89 == 0)
{
return x_14;
}
else
{
lean_object* x_90; lean_object* x_91; lean_object* x_92; 
x_90 = lean_ctor_get(x_14, 0);
x_91 = lean_ctor_get(x_14, 1);
lean_inc(x_91);
lean_inc(x_90);
lean_dec(x_14);
x_92 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_92, 0, x_90);
lean_ctor_set(x_92, 1, x_91);
return x_92;
}
}
}
else
{
uint8_t x_93; 
lean_dec(x_2);
lean_dec(x_1);
x_93 = !lean_is_exclusive(x_11);
if (x_93 == 0)
{
return x_11;
}
else
{
lean_object* x_94; lean_object* x_95; lean_object* x_96; 
x_94 = lean_ctor_get(x_11, 0);
x_95 = lean_ctor_get(x_11, 1);
lean_inc(x_95);
lean_inc(x_94);
lean_dec(x_11);
x_96 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_96, 0, x_94);
lean_ctor_set(x_96, 1, x_95);
return x_96;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__11(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
uint8_t x_13; 
x_13 = lean_usize_dec_lt(x_3, x_2);
if (x_13 == 0)
{
lean_object* x_14; 
lean_dec(x_1);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_4);
lean_ctor_set(x_14, 1, x_12);
return x_14;
}
else
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = lean_array_uget(x_4, x_3);
x_16 = lean_unsigned_to_nat(0u);
x_17 = lean_array_uset(x_4, x_3, x_16);
lean_inc(x_1);
x_18 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__8(x_15, x_1, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; size_t x_21; size_t x_22; lean_object* x_23; 
x_19 = lean_ctor_get(x_18, 0);
lean_inc(x_19);
x_20 = lean_ctor_get(x_18, 1);
lean_inc(x_20);
lean_dec(x_18);
x_21 = 1;
x_22 = lean_usize_add(x_3, x_21);
x_23 = lean_array_uset(x_17, x_3, x_19);
x_3 = x_22;
x_4 = x_23;
x_12 = x_20;
goto _start;
}
else
{
uint8_t x_25; 
lean_dec(x_17);
lean_dec(x_1);
x_25 = !lean_is_exclusive(x_18);
if (x_25 == 0)
{
return x_18;
}
else
{
lean_object* x_26; lean_object* x_27; lean_object* x_28; 
x_26 = lean_ctor_get(x_18, 0);
x_27 = lean_ctor_get(x_18, 1);
lean_inc(x_27);
lean_inc(x_26);
lean_dec(x_18);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set(x_28, 1, x_27);
return x_28;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; lean_object* x_13; 
x_12 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___boxed), 10, 0);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_13 = l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__5(x_12, x_2, x_1, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; size_t x_16; size_t x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_array_size(x_14);
x_17 = 0;
x_18 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__11(x_3, x_16, x_17, x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_15);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_18;
}
else
{
uint8_t x_19; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_19 = !lean_is_exclusive(x_13);
if (x_19 == 0)
{
return x_13;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_13, 0);
x_21 = lean_ctor_get(x_13, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_13);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_11 = l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1;
x_12 = l_Aesop_defaultRuleSetName;
x_13 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__2(x_2, x_11, x_12, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_13;
}
else
{
uint8_t x_14; 
x_14 = !lean_is_exclusive(x_1);
if (x_14 == 0)
{
lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_15 = lean_ctor_get(x_1, 0);
x_16 = lean_box(0);
x_17 = lean_mk_syntax_ident(x_15);
lean_ctor_set(x_1, 0, x_17);
x_18 = l_Aesop_RuleBuilderOptions_default;
x_19 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_20 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_20, 0, x_1);
lean_ctor_set(x_20, 1, x_16);
lean_ctor_set(x_20, 2, x_16);
lean_ctor_set(x_20, 3, x_16);
lean_ctor_set(x_20, 4, x_18);
lean_ctor_set(x_20, 5, x_19);
x_21 = l_Aesop_defaultRuleSetName;
x_22 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__2(x_2, x_20, x_21, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_22;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_23 = lean_ctor_get(x_1, 0);
lean_inc(x_23);
lean_dec(x_1);
x_24 = lean_box(0);
x_25 = lean_mk_syntax_ident(x_23);
x_26 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_26, 0, x_25);
x_27 = l_Aesop_RuleBuilderOptions_default;
x_28 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_29 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_29, 0, x_26);
lean_ctor_set(x_29, 1, x_24);
lean_ctor_set(x_29, 2, x_24);
lean_ctor_set(x_29, 3, x_24);
lean_ctor_set(x_29, 4, x_27);
lean_ctor_set(x_29, 5, x_28);
x_30 = l_Aesop_defaultRuleSetName;
x_31 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__2(x_2, x_29, x_30, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
return x_31;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__12(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_2, x_1);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_array_uget(x_3, x_2);
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_array_uset(x_3, x_2, x_15);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_17 = l_Aesop_Frontend_RuleConfig_buildGlobalRule(x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_22 = lean_array_uset(x_16, x_2, x_18);
x_2 = x_21;
x_3 = x_22;
x_11 = x_19;
goto _start;
}
else
{
uint8_t x_24; 
lean_dec(x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
return x_17;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_17, 0);
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_17);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = l_Aesop_ElabM_Context_forAdditionalGlobalRules(x_5, x_6, x_7, x_8, x_9);
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_11);
x_13 = l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__1(x_1, x_2, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_12);
if (lean_obj_tag(x_13) == 0)
{
lean_object* x_14; lean_object* x_15; size_t x_16; size_t x_17; lean_object* x_18; 
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = lean_array_size(x_14);
x_17 = 0;
x_18 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__12(x_16, x_17, x_14, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_15);
return x_18;
}
else
{
uint8_t x_19; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_19 = !lean_is_exclusive(x_13);
if (x_19 == 0)
{
return x_13;
}
else
{
lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_20 = lean_ctor_get(x_13, 0);
x_21 = lean_ctor_get(x_13, 1);
lean_inc(x_21);
lean_inc(x_20);
lean_dec(x_13);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_20);
lean_ctor_set(x_22, 1, x_21);
return x_22;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
lean_object* x_12; 
x_12 = l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__4(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14) {
_start:
{
size_t x_15; size_t x_16; lean_object* x_17; 
x_15 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_16 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_17 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__7(x_1, x_2, x_3, x_15, x_16, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14);
lean_dec(x_3);
return x_17;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__10(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__9(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10) {
_start:
{
lean_object* x_11; 
x_11 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__8(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_11;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__11___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12) {
_start:
{
size_t x_13; size_t x_14; lean_object* x_15; 
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_15 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__11(x_1, x_13, x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12);
lean_dec(x_11);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_15;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__12___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__12(x_12, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___lambda__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_9, 0, x_1);
x_10 = !lean_is_exclusive(x_2);
if (x_10 == 0)
{
lean_object* x_11; lean_object* x_12; 
x_11 = lean_ctor_get(x_2, 0);
lean_dec(x_11);
lean_ctor_set(x_2, 0, x_9);
x_12 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_12, 0, x_2);
lean_ctor_set(x_12, 1, x_8);
return x_12;
}
else
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_13 = lean_ctor_get(x_2, 1);
x_14 = lean_ctor_get(x_2, 2);
x_15 = lean_ctor_get(x_2, 3);
x_16 = lean_ctor_get(x_2, 4);
x_17 = lean_ctor_get(x_2, 5);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_inc(x_13);
lean_dec(x_2);
x_18 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_18, 0, x_9);
lean_ctor_set(x_18, 1, x_13);
lean_ctor_set(x_18, 2, x_14);
lean_ctor_set(x_18, 3, x_15);
lean_ctor_set(x_18, 4, x_16);
lean_ctor_set(x_18, 5, x_17);
x_19 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_8);
return x_19;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
switch (lean_obj_tag(x_2)) {
case 0:
{
uint8_t x_8; uint8_t x_9; 
x_8 = lean_ctor_get_uint8(x_2, 0);
lean_dec(x_2);
x_9 = !lean_is_exclusive(x_1);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; 
x_10 = lean_ctor_get(x_1, 1);
lean_dec(x_10);
x_11 = lean_box(x_8);
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_1, 1, x_12);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_1);
lean_ctor_set(x_13, 1, x_7);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; 
x_14 = lean_ctor_get(x_1, 0);
x_15 = lean_ctor_get(x_1, 2);
x_16 = lean_ctor_get(x_1, 3);
x_17 = lean_ctor_get(x_1, 4);
x_18 = lean_ctor_get(x_1, 5);
lean_inc(x_18);
lean_inc(x_17);
lean_inc(x_16);
lean_inc(x_15);
lean_inc(x_14);
lean_dec(x_1);
x_19 = lean_box(x_8);
x_20 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_20, 0, x_19);
x_21 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_21, 0, x_14);
lean_ctor_set(x_21, 1, x_20);
lean_ctor_set(x_21, 2, x_15);
lean_ctor_set(x_21, 3, x_16);
lean_ctor_set(x_21, 4, x_17);
lean_ctor_set(x_21, 5, x_18);
x_22 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_22, 0, x_21);
lean_ctor_set(x_22, 1, x_7);
return x_22;
}
}
case 1:
{
uint8_t x_23; 
x_23 = !lean_is_exclusive(x_2);
if (x_23 == 0)
{
uint8_t x_24; 
x_24 = !lean_is_exclusive(x_1);
if (x_24 == 0)
{
lean_object* x_25; lean_object* x_26; 
x_25 = lean_ctor_get(x_1, 2);
lean_dec(x_25);
lean_ctor_set(x_1, 2, x_2);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_1);
lean_ctor_set(x_26, 1, x_7);
return x_26;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_27 = lean_ctor_get(x_1, 0);
x_28 = lean_ctor_get(x_1, 1);
x_29 = lean_ctor_get(x_1, 3);
x_30 = lean_ctor_get(x_1, 4);
x_31 = lean_ctor_get(x_1, 5);
lean_inc(x_31);
lean_inc(x_30);
lean_inc(x_29);
lean_inc(x_28);
lean_inc(x_27);
lean_dec(x_1);
x_32 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_32, 0, x_27);
lean_ctor_set(x_32, 1, x_28);
lean_ctor_set(x_32, 2, x_2);
lean_ctor_set(x_32, 3, x_29);
lean_ctor_set(x_32, 4, x_30);
lean_ctor_set(x_32, 5, x_31);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_32);
lean_ctor_set(x_33, 1, x_7);
return x_33;
}
}
else
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_34 = lean_ctor_get(x_2, 0);
lean_inc(x_34);
lean_dec(x_2);
x_35 = lean_ctor_get(x_1, 0);
lean_inc(x_35);
x_36 = lean_ctor_get(x_1, 1);
lean_inc(x_36);
x_37 = lean_ctor_get(x_1, 3);
lean_inc(x_37);
x_38 = lean_ctor_get(x_1, 4);
lean_inc(x_38);
x_39 = lean_ctor_get(x_1, 5);
lean_inc(x_39);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_40 = x_1;
} else {
 lean_dec_ref(x_1);
 x_40 = lean_box(0);
}
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_34);
if (lean_is_scalar(x_40)) {
 x_42 = lean_alloc_ctor(0, 6, 0);
} else {
 x_42 = x_40;
}
lean_ctor_set(x_42, 0, x_35);
lean_ctor_set(x_42, 1, x_36);
lean_ctor_set(x_42, 2, x_41);
lean_ctor_set(x_42, 3, x_37);
lean_ctor_set(x_42, 4, x_38);
lean_ctor_set(x_42, 5, x_39);
x_43 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_43, 0, x_42);
lean_ctor_set(x_43, 1, x_7);
return x_43;
}
}
case 2:
{
uint8_t x_44; 
x_44 = !lean_is_exclusive(x_2);
if (x_44 == 0)
{
uint8_t x_45; 
x_45 = !lean_is_exclusive(x_1);
if (x_45 == 0)
{
lean_object* x_46; lean_object* x_47; 
x_46 = lean_ctor_get(x_1, 3);
lean_dec(x_46);
lean_ctor_set_tag(x_2, 1);
lean_ctor_set(x_1, 3, x_2);
x_47 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_47, 0, x_1);
lean_ctor_set(x_47, 1, x_7);
return x_47;
}
else
{
lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; 
x_48 = lean_ctor_get(x_1, 0);
x_49 = lean_ctor_get(x_1, 1);
x_50 = lean_ctor_get(x_1, 2);
x_51 = lean_ctor_get(x_1, 4);
x_52 = lean_ctor_get(x_1, 5);
lean_inc(x_52);
lean_inc(x_51);
lean_inc(x_50);
lean_inc(x_49);
lean_inc(x_48);
lean_dec(x_1);
lean_ctor_set_tag(x_2, 1);
x_53 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_53, 0, x_48);
lean_ctor_set(x_53, 1, x_49);
lean_ctor_set(x_53, 2, x_50);
lean_ctor_set(x_53, 3, x_2);
lean_ctor_set(x_53, 4, x_51);
lean_ctor_set(x_53, 5, x_52);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_53);
lean_ctor_set(x_54, 1, x_7);
return x_54;
}
}
else
{
lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; 
x_55 = lean_ctor_get(x_2, 0);
lean_inc(x_55);
lean_dec(x_2);
x_56 = lean_ctor_get(x_1, 0);
lean_inc(x_56);
x_57 = lean_ctor_get(x_1, 1);
lean_inc(x_57);
x_58 = lean_ctor_get(x_1, 2);
lean_inc(x_58);
x_59 = lean_ctor_get(x_1, 4);
lean_inc(x_59);
x_60 = lean_ctor_get(x_1, 5);
lean_inc(x_60);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_61 = x_1;
} else {
 lean_dec_ref(x_1);
 x_61 = lean_box(0);
}
x_62 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_62, 0, x_55);
if (lean_is_scalar(x_61)) {
 x_63 = lean_alloc_ctor(0, 6, 0);
} else {
 x_63 = x_61;
}
lean_ctor_set(x_63, 0, x_56);
lean_ctor_set(x_63, 1, x_57);
lean_ctor_set(x_63, 2, x_58);
lean_ctor_set(x_63, 3, x_62);
lean_ctor_set(x_63, 4, x_59);
lean_ctor_set(x_63, 5, x_60);
x_64 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_64, 0, x_63);
lean_ctor_set(x_64, 1, x_7);
return x_64;
}
}
case 3:
{
lean_object* x_65; uint8_t x_66; 
x_65 = lean_ctor_get(x_2, 0);
lean_inc(x_65);
lean_dec(x_2);
x_66 = !lean_is_exclusive(x_1);
if (x_66 == 0)
{
lean_object* x_67; lean_object* x_68; lean_object* x_69; 
x_67 = lean_ctor_get(x_1, 4);
x_68 = l_Aesop_Frontend_addBuilderOption(x_67, x_65);
lean_ctor_set(x_1, 4, x_68);
x_69 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_69, 0, x_1);
lean_ctor_set(x_69, 1, x_7);
return x_69;
}
else
{
lean_object* x_70; lean_object* x_71; lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_70 = lean_ctor_get(x_1, 0);
x_71 = lean_ctor_get(x_1, 1);
x_72 = lean_ctor_get(x_1, 2);
x_73 = lean_ctor_get(x_1, 3);
x_74 = lean_ctor_get(x_1, 4);
x_75 = lean_ctor_get(x_1, 5);
lean_inc(x_75);
lean_inc(x_74);
lean_inc(x_73);
lean_inc(x_72);
lean_inc(x_71);
lean_inc(x_70);
lean_dec(x_1);
x_76 = l_Aesop_Frontend_addBuilderOption(x_74, x_65);
x_77 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_77, 0, x_70);
lean_ctor_set(x_77, 1, x_71);
lean_ctor_set(x_77, 2, x_72);
lean_ctor_set(x_77, 3, x_73);
lean_ctor_set(x_77, 4, x_76);
lean_ctor_set(x_77, 5, x_75);
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_77);
lean_ctor_set(x_78, 1, x_7);
return x_78;
}
}
case 4:
{
lean_object* x_79; 
x_79 = lean_ctor_get(x_1, 0);
lean_inc(x_79);
if (lean_obj_tag(x_79) == 0)
{
lean_object* x_80; lean_object* x_81; lean_object* x_82; 
x_80 = lean_ctor_get(x_2, 0);
lean_inc(x_80);
lean_dec(x_2);
x_81 = lean_box(0);
x_82 = l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___lambda__1(x_80, x_1, x_81, x_3, x_4, x_5, x_6, x_7);
return x_82;
}
else
{
lean_object* x_83; lean_object* x_84; lean_object* x_85; lean_object* x_86; lean_object* x_87; lean_object* x_88; lean_object* x_89; lean_object* x_90; lean_object* x_91; lean_object* x_92; lean_object* x_93; lean_object* x_94; uint8_t x_95; 
lean_dec(x_1);
x_83 = lean_ctor_get(x_2, 0);
lean_inc(x_83);
lean_dec(x_2);
x_84 = lean_ctor_get(x_79, 0);
lean_inc(x_84);
lean_dec(x_79);
x_85 = l_Lean_MessageData_ofSyntax(x_83);
x_86 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2;
x_87 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_87, 0, x_86);
lean_ctor_set(x_87, 1, x_85);
x_88 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4;
x_89 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_89, 0, x_87);
lean_ctor_set(x_89, 1, x_88);
x_90 = l_Lean_MessageData_ofSyntax(x_84);
x_91 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_91, 0, x_89);
lean_ctor_set(x_91, 1, x_90);
x_92 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6;
x_93 = lean_alloc_ctor(7, 2, 0);
lean_ctor_set(x_93, 0, x_91);
lean_ctor_set(x_93, 1, x_92);
x_94 = l_Lean_throwError___at_Lean_Meta_CheckTactic_matchCheckGoalType___spec__2(x_93, x_3, x_4, x_5, x_6, x_7);
x_95 = !lean_is_exclusive(x_94);
if (x_95 == 0)
{
return x_94;
}
else
{
lean_object* x_96; lean_object* x_97; lean_object* x_98; 
x_96 = lean_ctor_get(x_94, 0);
x_97 = lean_ctor_get(x_94, 1);
lean_inc(x_97);
lean_inc(x_96);
lean_dec(x_94);
x_98 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_98, 0, x_96);
lean_ctor_set(x_98, 1, x_97);
return x_98;
}
}
}
default: 
{
lean_object* x_99; uint8_t x_100; 
x_99 = lean_ctor_get(x_2, 0);
lean_inc(x_99);
lean_dec(x_2);
x_100 = !lean_is_exclusive(x_1);
if (x_100 == 0)
{
lean_object* x_101; lean_object* x_102; lean_object* x_103; lean_object* x_104; lean_object* x_105; 
x_101 = lean_ctor_get(x_1, 5);
x_102 = l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(x_99);
x_103 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
x_104 = l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(x_101, x_102, x_103);
lean_ctor_set(x_1, 5, x_104);
x_105 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_105, 0, x_1);
lean_ctor_set(x_105, 1, x_7);
return x_105;
}
else
{
lean_object* x_106; lean_object* x_107; lean_object* x_108; lean_object* x_109; lean_object* x_110; lean_object* x_111; lean_object* x_112; lean_object* x_113; lean_object* x_114; lean_object* x_115; lean_object* x_116; 
x_106 = lean_ctor_get(x_1, 0);
x_107 = lean_ctor_get(x_1, 1);
x_108 = lean_ctor_get(x_1, 2);
x_109 = lean_ctor_get(x_1, 3);
x_110 = lean_ctor_get(x_1, 4);
x_111 = lean_ctor_get(x_1, 5);
lean_inc(x_111);
lean_inc(x_110);
lean_inc(x_109);
lean_inc(x_108);
lean_inc(x_107);
lean_inc(x_106);
lean_dec(x_1);
x_112 = l_Array_qsortOrd___at_Aesop_Frontend_RuleConfig_addFeature___spec__1(x_99);
x_113 = l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7;
x_114 = l_Array_mergeDedupWith___at_Aesop_Frontend_RuleConfig_addFeature___spec__3(x_111, x_112, x_113);
x_115 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_115, 0, x_106);
lean_ctor_set(x_115, 1, x_107);
lean_ctor_set(x_115, 2, x_108);
lean_ctor_set(x_115, 3, x_109);
lean_ctor_set(x_115, 4, x_110);
lean_ctor_set(x_115, 5, x_114);
x_116 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_116, 0, x_115);
lean_ctor_set(x_116, 1, x_7);
return x_116;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_eq(x_4, x_5);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = lean_array_uget(x_3, x_4);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_2);
lean_inc(x_1);
x_14 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__5(x_1, x_2, x_6, x_13, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; lean_object* x_16; size_t x_17; size_t x_18; 
x_15 = lean_ctor_get(x_14, 0);
lean_inc(x_15);
x_16 = lean_ctor_get(x_14, 1);
lean_inc(x_16);
lean_dec(x_14);
x_17 = 1;
x_18 = lean_usize_add(x_4, x_17);
x_4 = x_18;
x_6 = x_15;
x_11 = x_16;
goto _start;
}
else
{
uint8_t x_20; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
x_20 = !lean_is_exclusive(x_14);
if (x_20 == 0)
{
return x_14;
}
else
{
lean_object* x_21; lean_object* x_22; lean_object* x_23; 
x_21 = lean_ctor_get(x_14, 0);
x_22 = lean_ctor_get(x_14, 1);
lean_inc(x_22);
lean_inc(x_21);
lean_dec(x_14);
x_23 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_23, 0, x_21);
lean_ctor_set(x_23, 1, x_22);
return x_23;
}
}
}
else
{
lean_object* x_24; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_2);
lean_dec(x_1);
x_24 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_24, 0, x_6);
lean_ctor_set(x_24, 1, x_11);
return x_24;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__5(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_4, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_4, 1);
lean_inc(x_11);
lean_dec(x_4);
lean_inc(x_1);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_12 = lean_apply_7(x_1, x_2, x_10, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_12) == 0)
{
uint8_t x_13; 
x_13 = !lean_is_exclusive(x_12);
if (x_13 == 0)
{
lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_14 = lean_ctor_get(x_12, 0);
x_15 = lean_ctor_get(x_12, 1);
x_16 = l_Array_isEmpty___rarg(x_11);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; uint8_t x_19; 
x_17 = lean_array_get_size(x_11);
x_18 = lean_unsigned_to_nat(0u);
x_19 = lean_nat_dec_lt(x_18, x_17);
if (x_19 == 0)
{
lean_dec(x_17);
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
lean_ctor_set(x_12, 0, x_3);
return x_12;
}
else
{
uint8_t x_20; 
x_20 = lean_nat_dec_le(x_17, x_17);
if (x_20 == 0)
{
lean_dec(x_17);
lean_dec(x_14);
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
lean_ctor_set(x_12, 0, x_3);
return x_12;
}
else
{
size_t x_21; size_t x_22; lean_object* x_23; 
lean_free_object(x_12);
x_21 = 0;
x_22 = lean_usize_of_nat(x_17);
lean_dec(x_17);
x_23 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6(x_1, x_14, x_11, x_21, x_22, x_3, x_5, x_6, x_7, x_8, x_15);
lean_dec(x_11);
return x_23;
}
}
}
else
{
lean_object* x_24; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_24 = lean_array_push(x_3, x_14);
lean_ctor_set(x_12, 0, x_24);
return x_12;
}
}
else
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; 
x_25 = lean_ctor_get(x_12, 0);
x_26 = lean_ctor_get(x_12, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_12);
x_27 = l_Array_isEmpty___rarg(x_11);
if (x_27 == 0)
{
lean_object* x_28; lean_object* x_29; uint8_t x_30; 
x_28 = lean_array_get_size(x_11);
x_29 = lean_unsigned_to_nat(0u);
x_30 = lean_nat_dec_lt(x_29, x_28);
if (x_30 == 0)
{
lean_object* x_31; 
lean_dec(x_28);
lean_dec(x_25);
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_3);
lean_ctor_set(x_31, 1, x_26);
return x_31;
}
else
{
uint8_t x_32; 
x_32 = lean_nat_dec_le(x_28, x_28);
if (x_32 == 0)
{
lean_object* x_33; 
lean_dec(x_28);
lean_dec(x_25);
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_33 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_33, 0, x_3);
lean_ctor_set(x_33, 1, x_26);
return x_33;
}
else
{
size_t x_34; size_t x_35; lean_object* x_36; 
x_34 = 0;
x_35 = lean_usize_of_nat(x_28);
lean_dec(x_28);
x_36 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6(x_1, x_25, x_11, x_34, x_35, x_3, x_5, x_6, x_7, x_8, x_26);
lean_dec(x_11);
return x_36;
}
}
}
else
{
lean_object* x_37; lean_object* x_38; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_1);
x_37 = lean_array_push(x_3, x_25);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_26);
return x_38;
}
}
}
else
{
uint8_t x_39; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_3);
lean_dec(x_1);
x_39 = !lean_is_exclusive(x_12);
if (x_39 == 0)
{
return x_12;
}
else
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_12, 0);
x_41 = lean_ctor_get(x_12, 1);
lean_inc(x_41);
lean_inc(x_40);
lean_dec(x_12);
x_42 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set(x_42, 1, x_41);
return x_42;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__4(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = l_Aesop_Frontend_instInhabitedRuleSets___closed__1;
x_10 = l_Aesop_Frontend_RuleExpr_foldBranchesM_go___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__5(x_1, x_2, x_9, x_3, x_4, x_5, x_6, x_7, x_8);
return x_10;
}
}
static lean_object* _init_l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___boxed), 7, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2___closed__1;
x_9 = l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__4(x_8, x_2, x_1, x_3, x_4, x_5, x_6, x_7);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__8(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; lean_object* x_9; 
x_8 = l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2;
x_9 = l_Lean_throwError___at_Lean_PrettyPrinter_Delaborator_delab___spec__1(x_8, x_2, x_3, x_4, x_5, x_6);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_7, 0);
lean_inc(x_10);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_10);
lean_ctor_set(x_11, 1, x_6);
return x_11;
}
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_ctor_get(x_4, 5);
x_8 = l_Lean_addMessageContextFull___at_Lean_Meta_instAddMessageContextMetaM___spec__1(x_1, x_2, x_3, x_4, x_5, x_6);
x_9 = !lean_is_exclusive(x_8);
if (x_9 == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_8, 0);
lean_inc(x_7);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_7);
lean_ctor_set(x_11, 1, x_10);
lean_ctor_set_tag(x_8, 1);
lean_ctor_set(x_8, 0, x_11);
return x_8;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_ctor_get(x_8, 0);
x_13 = lean_ctor_get(x_8, 1);
lean_inc(x_13);
lean_inc(x_12);
lean_dec(x_8);
lean_inc(x_7);
x_14 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_14, 0, x_7);
lean_ctor_set(x_14, 1, x_12);
x_15 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_15, 0, x_14);
lean_ctor_set(x_15, 1, x_13);
return x_15;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__9(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = lean_ctor_get(x_1, 3);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; 
x_10 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_11 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_10, x_2, x_3, x_4, x_5, x_6);
return x_11;
}
else
{
lean_object* x_12; 
x_12 = lean_ctor_get(x_9, 0);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; 
x_13 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_14 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_13, x_2, x_3, x_4, x_5, x_6);
return x_14;
}
else
{
uint8_t x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_15 = 2;
x_16 = lean_box(x_15);
lean_inc(x_12);
x_17 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_17, 0, x_16);
lean_ctor_set(x_17, 1, x_12);
x_18 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_18, 0, x_17);
lean_ctor_set(x_18, 1, x_6);
return x_18;
}
}
}
else
{
lean_object* x_19; uint8_t x_20; 
x_19 = lean_ctor_get(x_8, 0);
x_20 = lean_unbox(x_19);
switch (x_20) {
case 0:
{
lean_object* x_21; 
x_21 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; 
x_22 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_23 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set(x_23, 1, x_6);
return x_23;
}
else
{
lean_object* x_24; lean_object* x_25; lean_object* x_26; 
x_24 = lean_ctor_get(x_21, 0);
lean_inc(x_24);
lean_inc(x_19);
x_25 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_25, 0, x_19);
lean_ctor_set(x_25, 1, x_24);
x_26 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set(x_26, 1, x_6);
return x_26;
}
}
case 1:
{
lean_object* x_27; 
x_27 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; 
x_28 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_29 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_6);
return x_29;
}
else
{
lean_object* x_30; lean_object* x_31; lean_object* x_32; 
x_30 = lean_ctor_get(x_27, 0);
lean_inc(x_30);
lean_inc(x_19);
x_31 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_31, 0, x_19);
lean_ctor_set(x_31, 1, x_30);
x_32 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_6);
return x_32;
}
}
default: 
{
lean_object* x_33; 
x_33 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; 
x_34 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_35 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_35, 0, x_34);
lean_ctor_set(x_35, 1, x_6);
return x_35;
}
else
{
lean_object* x_36; lean_object* x_37; lean_object* x_38; 
x_36 = lean_ctor_get(x_33, 0);
lean_inc(x_36);
lean_inc(x_19);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_19);
lean_ctor_set(x_37, 1, x_36);
x_38 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set(x_38, 1, x_6);
return x_38;
}
}
}
}
}
else
{
lean_object* x_39; 
x_39 = lean_ctor_get(x_7, 0);
if (lean_obj_tag(x_39) == 0)
{
uint8_t x_40; lean_object* x_41; 
x_40 = lean_ctor_get_uint8(x_39, 0);
x_41 = lean_box(x_40);
if (lean_obj_tag(x_41) == 5)
{
lean_object* x_42; 
x_42 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_42) == 0)
{
lean_object* x_43; 
x_43 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_43) == 0)
{
lean_object* x_44; lean_object* x_45; 
x_44 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10;
x_45 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_45, 0, x_44);
lean_ctor_set(x_45, 1, x_6);
return x_45;
}
else
{
lean_object* x_46; uint8_t x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; 
x_46 = lean_ctor_get(x_43, 0);
x_47 = 0;
x_48 = lean_box(x_47);
lean_inc(x_46);
x_49 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_49, 1, x_46);
x_50 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_50, 0, x_49);
lean_ctor_set(x_50, 1, x_6);
return x_50;
}
}
else
{
lean_object* x_51; 
x_51 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_51) == 0)
{
lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; 
x_52 = lean_ctor_get(x_42, 0);
x_53 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9;
lean_inc(x_52);
x_54 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_54, 0, x_52);
lean_ctor_set(x_54, 1, x_53);
x_55 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_55, 0, x_54);
lean_ctor_set(x_55, 1, x_6);
return x_55;
}
else
{
lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; 
x_56 = lean_ctor_get(x_42, 0);
x_57 = lean_ctor_get(x_51, 0);
lean_inc(x_57);
lean_inc(x_56);
x_58 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_58, 0, x_56);
lean_ctor_set(x_58, 1, x_57);
x_59 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_59, 0, x_58);
lean_ctor_set(x_59, 1, x_6);
return x_59;
}
}
}
else
{
lean_object* x_60; 
lean_dec(x_41);
x_60 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_60) == 0)
{
lean_object* x_61; 
x_61 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_61) == 0)
{
lean_object* x_62; lean_object* x_63; 
x_62 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_63 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_62, x_2, x_3, x_4, x_5, x_6);
return x_63;
}
else
{
lean_object* x_64; 
x_64 = lean_ctor_get(x_61, 0);
if (lean_obj_tag(x_64) == 0)
{
lean_object* x_65; lean_object* x_66; 
x_65 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_66 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_65, x_2, x_3, x_4, x_5, x_6);
return x_66;
}
else
{
uint8_t x_67; lean_object* x_68; lean_object* x_69; lean_object* x_70; 
x_67 = 2;
x_68 = lean_box(x_67);
lean_inc(x_64);
x_69 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_69, 0, x_68);
lean_ctor_set(x_69, 1, x_64);
x_70 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_70, 0, x_69);
lean_ctor_set(x_70, 1, x_6);
return x_70;
}
}
}
else
{
lean_object* x_71; uint8_t x_72; 
x_71 = lean_ctor_get(x_60, 0);
x_72 = lean_unbox(x_71);
switch (x_72) {
case 0:
{
lean_object* x_73; 
x_73 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_73) == 0)
{
lean_object* x_74; lean_object* x_75; 
x_74 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_75 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_75, 0, x_74);
lean_ctor_set(x_75, 1, x_6);
return x_75;
}
else
{
lean_object* x_76; lean_object* x_77; lean_object* x_78; 
x_76 = lean_ctor_get(x_73, 0);
lean_inc(x_76);
lean_inc(x_71);
x_77 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_77, 0, x_71);
lean_ctor_set(x_77, 1, x_76);
x_78 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_78, 0, x_77);
lean_ctor_set(x_78, 1, x_6);
return x_78;
}
}
case 1:
{
lean_object* x_79; 
x_79 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_79) == 0)
{
lean_object* x_80; lean_object* x_81; 
x_80 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_6);
return x_81;
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; 
x_82 = lean_ctor_get(x_79, 0);
lean_inc(x_82);
lean_inc(x_71);
x_83 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_83, 0, x_71);
lean_ctor_set(x_83, 1, x_82);
x_84 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_84, 0, x_83);
lean_ctor_set(x_84, 1, x_6);
return x_84;
}
}
default: 
{
lean_object* x_85; 
x_85 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_85) == 0)
{
lean_object* x_86; lean_object* x_87; 
x_86 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_87 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_87, 0, x_86);
lean_ctor_set(x_87, 1, x_6);
return x_87;
}
else
{
lean_object* x_88; lean_object* x_89; lean_object* x_90; 
x_88 = lean_ctor_get(x_85, 0);
lean_inc(x_88);
lean_inc(x_71);
x_89 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_89, 0, x_71);
lean_ctor_set(x_89, 1, x_88);
x_90 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_90, 0, x_89);
lean_ctor_set(x_90, 1, x_6);
return x_90;
}
}
}
}
}
}
else
{
lean_object* x_91; 
x_91 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_91) == 0)
{
lean_object* x_92; 
x_92 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_92) == 0)
{
lean_object* x_93; lean_object* x_94; 
x_93 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_94 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_93, x_2, x_3, x_4, x_5, x_6);
return x_94;
}
else
{
lean_object* x_95; 
x_95 = lean_ctor_get(x_92, 0);
if (lean_obj_tag(x_95) == 0)
{
lean_object* x_96; lean_object* x_97; 
x_96 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2;
x_97 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_96, x_2, x_3, x_4, x_5, x_6);
return x_97;
}
else
{
uint8_t x_98; lean_object* x_99; lean_object* x_100; lean_object* x_101; 
x_98 = 2;
x_99 = lean_box(x_98);
lean_inc(x_95);
x_100 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_100, 0, x_99);
lean_ctor_set(x_100, 1, x_95);
x_101 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_101, 0, x_100);
lean_ctor_set(x_101, 1, x_6);
return x_101;
}
}
}
else
{
lean_object* x_102; uint8_t x_103; 
x_102 = lean_ctor_get(x_91, 0);
x_103 = lean_unbox(x_102);
switch (x_103) {
case 0:
{
lean_object* x_104; 
x_104 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_104) == 0)
{
lean_object* x_105; lean_object* x_106; 
x_105 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4;
x_106 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_106, 0, x_105);
lean_ctor_set(x_106, 1, x_6);
return x_106;
}
else
{
lean_object* x_107; lean_object* x_108; lean_object* x_109; 
x_107 = lean_ctor_get(x_104, 0);
lean_inc(x_107);
lean_inc(x_102);
x_108 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_108, 0, x_102);
lean_ctor_set(x_108, 1, x_107);
x_109 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_109, 0, x_108);
lean_ctor_set(x_109, 1, x_6);
return x_109;
}
}
case 1:
{
lean_object* x_110; 
x_110 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_110) == 0)
{
lean_object* x_111; lean_object* x_112; 
x_111 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6;
x_112 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_112, 0, x_111);
lean_ctor_set(x_112, 1, x_6);
return x_112;
}
else
{
lean_object* x_113; lean_object* x_114; lean_object* x_115; 
x_113 = lean_ctor_get(x_110, 0);
lean_inc(x_113);
lean_inc(x_102);
x_114 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_114, 0, x_102);
lean_ctor_set(x_114, 1, x_113);
x_115 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_115, 0, x_114);
lean_ctor_set(x_115, 1, x_6);
return x_115;
}
}
default: 
{
lean_object* x_116; 
x_116 = lean_ctor_get(x_1, 2);
if (lean_obj_tag(x_116) == 0)
{
lean_object* x_117; lean_object* x_118; 
x_117 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8;
x_118 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_118, 0, x_117);
lean_ctor_set(x_118, 1, x_6);
return x_118;
}
else
{
lean_object* x_119; lean_object* x_120; lean_object* x_121; 
x_119 = lean_ctor_get(x_116, 0);
lean_inc(x_119);
lean_inc(x_102);
x_120 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_120, 0, x_102);
lean_ctor_set(x_120, 1, x_119);
x_121 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_121, 0, x_120);
lean_ctor_set(x_121, 1, x_6);
return x_121;
}
}
}
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__7(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__8(x_1, x_3, x_4, x_5, x_6, x_7);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_9 = lean_ctor_get(x_8, 0);
lean_inc(x_9);
x_10 = lean_ctor_get(x_8, 1);
lean_inc(x_10);
lean_dec(x_8);
x_11 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__9(x_1, x_3, x_4, x_5, x_6, x_10);
if (lean_obj_tag(x_11) == 0)
{
uint8_t x_12; 
x_12 = !lean_is_exclusive(x_11);
if (x_12 == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; uint8_t x_16; 
x_13 = lean_ctor_get(x_11, 0);
x_14 = lean_ctor_get(x_13, 0);
lean_inc(x_14);
x_15 = lean_ctor_get(x_13, 1);
lean_inc(x_15);
lean_dec(x_13);
x_16 = !lean_is_exclusive(x_1);
if (x_16 == 0)
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; uint8_t x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_17 = lean_ctor_get(x_1, 3);
x_18 = lean_ctor_get(x_1, 5);
x_19 = lean_ctor_get(x_1, 2);
lean_dec(x_19);
x_20 = lean_ctor_get(x_1, 1);
lean_dec(x_20);
x_21 = lean_ctor_get(x_1, 0);
lean_dec(x_21);
x_22 = l_Array_isEmpty___rarg(x_18);
x_23 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_23, 0, x_9);
x_24 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_24, 0, x_14);
x_25 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_25, 0, x_15);
if (lean_obj_tag(x_17) == 0)
{
if (x_22 == 0)
{
lean_object* x_26; 
lean_dec(x_2);
x_26 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
lean_ctor_set(x_1, 3, x_26);
lean_ctor_set(x_1, 2, x_25);
lean_ctor_set(x_1, 1, x_24);
lean_ctor_set(x_1, 0, x_23);
lean_ctor_set(x_11, 0, x_1);
return x_11;
}
else
{
lean_object* x_27; lean_object* x_28; lean_object* x_29; 
lean_dec(x_18);
x_27 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_28 = lean_array_push(x_27, x_2);
x_29 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
lean_ctor_set(x_1, 5, x_28);
lean_ctor_set(x_1, 3, x_29);
lean_ctor_set(x_1, 2, x_25);
lean_ctor_set(x_1, 1, x_24);
lean_ctor_set(x_1, 0, x_23);
lean_ctor_set(x_11, 0, x_1);
return x_11;
}
}
else
{
uint8_t x_30; 
x_30 = !lean_is_exclusive(x_17);
if (x_30 == 0)
{
if (x_22 == 0)
{
lean_dec(x_2);
lean_ctor_set(x_1, 2, x_25);
lean_ctor_set(x_1, 1, x_24);
lean_ctor_set(x_1, 0, x_23);
lean_ctor_set(x_11, 0, x_1);
return x_11;
}
else
{
lean_object* x_31; lean_object* x_32; 
lean_dec(x_18);
x_31 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_32 = lean_array_push(x_31, x_2);
lean_ctor_set(x_1, 5, x_32);
lean_ctor_set(x_1, 2, x_25);
lean_ctor_set(x_1, 1, x_24);
lean_ctor_set(x_1, 0, x_23);
lean_ctor_set(x_11, 0, x_1);
return x_11;
}
}
else
{
lean_object* x_33; lean_object* x_34; 
x_33 = lean_ctor_get(x_17, 0);
lean_inc(x_33);
lean_dec(x_17);
x_34 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_34, 0, x_33);
if (x_22 == 0)
{
lean_dec(x_2);
lean_ctor_set(x_1, 3, x_34);
lean_ctor_set(x_1, 2, x_25);
lean_ctor_set(x_1, 1, x_24);
lean_ctor_set(x_1, 0, x_23);
lean_ctor_set(x_11, 0, x_1);
return x_11;
}
else
{
lean_object* x_35; lean_object* x_36; 
lean_dec(x_18);
x_35 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_36 = lean_array_push(x_35, x_2);
lean_ctor_set(x_1, 5, x_36);
lean_ctor_set(x_1, 3, x_34);
lean_ctor_set(x_1, 2, x_25);
lean_ctor_set(x_1, 1, x_24);
lean_ctor_set(x_1, 0, x_23);
lean_ctor_set(x_11, 0, x_1);
return x_11;
}
}
}
}
else
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; uint8_t x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; 
x_37 = lean_ctor_get(x_1, 3);
x_38 = lean_ctor_get(x_1, 4);
x_39 = lean_ctor_get(x_1, 5);
lean_inc(x_39);
lean_inc(x_38);
lean_inc(x_37);
lean_dec(x_1);
x_40 = l_Array_isEmpty___rarg(x_39);
x_41 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_41, 0, x_9);
x_42 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_42, 0, x_14);
x_43 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_43, 0, x_15);
if (lean_obj_tag(x_37) == 0)
{
if (x_40 == 0)
{
lean_object* x_44; lean_object* x_45; 
lean_dec(x_2);
x_44 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
x_45 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_45, 0, x_41);
lean_ctor_set(x_45, 1, x_42);
lean_ctor_set(x_45, 2, x_43);
lean_ctor_set(x_45, 3, x_44);
lean_ctor_set(x_45, 4, x_38);
lean_ctor_set(x_45, 5, x_39);
lean_ctor_set(x_11, 0, x_45);
return x_11;
}
else
{
lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; 
lean_dec(x_39);
x_46 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_47 = lean_array_push(x_46, x_2);
x_48 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
x_49 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_49, 0, x_41);
lean_ctor_set(x_49, 1, x_42);
lean_ctor_set(x_49, 2, x_43);
lean_ctor_set(x_49, 3, x_48);
lean_ctor_set(x_49, 4, x_38);
lean_ctor_set(x_49, 5, x_47);
lean_ctor_set(x_11, 0, x_49);
return x_11;
}
}
else
{
lean_object* x_50; lean_object* x_51; lean_object* x_52; 
x_50 = lean_ctor_get(x_37, 0);
lean_inc(x_50);
if (lean_is_exclusive(x_37)) {
 lean_ctor_release(x_37, 0);
 x_51 = x_37;
} else {
 lean_dec_ref(x_37);
 x_51 = lean_box(0);
}
if (lean_is_scalar(x_51)) {
 x_52 = lean_alloc_ctor(1, 1, 0);
} else {
 x_52 = x_51;
}
lean_ctor_set(x_52, 0, x_50);
if (x_40 == 0)
{
lean_object* x_53; 
lean_dec(x_2);
x_53 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_53, 0, x_41);
lean_ctor_set(x_53, 1, x_42);
lean_ctor_set(x_53, 2, x_43);
lean_ctor_set(x_53, 3, x_52);
lean_ctor_set(x_53, 4, x_38);
lean_ctor_set(x_53, 5, x_39);
lean_ctor_set(x_11, 0, x_53);
return x_11;
}
else
{
lean_object* x_54; lean_object* x_55; lean_object* x_56; 
lean_dec(x_39);
x_54 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_55 = lean_array_push(x_54, x_2);
x_56 = lean_alloc_ctor(0, 6, 0);
lean_ctor_set(x_56, 0, x_41);
lean_ctor_set(x_56, 1, x_42);
lean_ctor_set(x_56, 2, x_43);
lean_ctor_set(x_56, 3, x_52);
lean_ctor_set(x_56, 4, x_38);
lean_ctor_set(x_56, 5, x_55);
lean_ctor_set(x_11, 0, x_56);
return x_11;
}
}
}
}
else
{
lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; lean_object* x_62; lean_object* x_63; lean_object* x_64; uint8_t x_65; lean_object* x_66; lean_object* x_67; lean_object* x_68; 
x_57 = lean_ctor_get(x_11, 0);
x_58 = lean_ctor_get(x_11, 1);
lean_inc(x_58);
lean_inc(x_57);
lean_dec(x_11);
x_59 = lean_ctor_get(x_57, 0);
lean_inc(x_59);
x_60 = lean_ctor_get(x_57, 1);
lean_inc(x_60);
lean_dec(x_57);
x_61 = lean_ctor_get(x_1, 3);
lean_inc(x_61);
x_62 = lean_ctor_get(x_1, 4);
lean_inc(x_62);
x_63 = lean_ctor_get(x_1, 5);
lean_inc(x_63);
if (lean_is_exclusive(x_1)) {
 lean_ctor_release(x_1, 0);
 lean_ctor_release(x_1, 1);
 lean_ctor_release(x_1, 2);
 lean_ctor_release(x_1, 3);
 lean_ctor_release(x_1, 4);
 lean_ctor_release(x_1, 5);
 x_64 = x_1;
} else {
 lean_dec_ref(x_1);
 x_64 = lean_box(0);
}
x_65 = l_Array_isEmpty___rarg(x_63);
x_66 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_66, 0, x_9);
x_67 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_67, 0, x_59);
x_68 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_68, 0, x_60);
if (lean_obj_tag(x_61) == 0)
{
if (x_65 == 0)
{
lean_object* x_69; lean_object* x_70; lean_object* x_71; 
lean_dec(x_2);
x_69 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
if (lean_is_scalar(x_64)) {
 x_70 = lean_alloc_ctor(0, 6, 0);
} else {
 x_70 = x_64;
}
lean_ctor_set(x_70, 0, x_66);
lean_ctor_set(x_70, 1, x_67);
lean_ctor_set(x_70, 2, x_68);
lean_ctor_set(x_70, 3, x_69);
lean_ctor_set(x_70, 4, x_62);
lean_ctor_set(x_70, 5, x_63);
x_71 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_71, 0, x_70);
lean_ctor_set(x_71, 1, x_58);
return x_71;
}
else
{
lean_object* x_72; lean_object* x_73; lean_object* x_74; lean_object* x_75; lean_object* x_76; 
lean_dec(x_63);
x_72 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_73 = lean_array_push(x_72, x_2);
x_74 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1;
if (lean_is_scalar(x_64)) {
 x_75 = lean_alloc_ctor(0, 6, 0);
} else {
 x_75 = x_64;
}
lean_ctor_set(x_75, 0, x_66);
lean_ctor_set(x_75, 1, x_67);
lean_ctor_set(x_75, 2, x_68);
lean_ctor_set(x_75, 3, x_74);
lean_ctor_set(x_75, 4, x_62);
lean_ctor_set(x_75, 5, x_73);
x_76 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_76, 0, x_75);
lean_ctor_set(x_76, 1, x_58);
return x_76;
}
}
else
{
lean_object* x_77; lean_object* x_78; lean_object* x_79; 
x_77 = lean_ctor_get(x_61, 0);
lean_inc(x_77);
if (lean_is_exclusive(x_61)) {
 lean_ctor_release(x_61, 0);
 x_78 = x_61;
} else {
 lean_dec_ref(x_61);
 x_78 = lean_box(0);
}
if (lean_is_scalar(x_78)) {
 x_79 = lean_alloc_ctor(1, 1, 0);
} else {
 x_79 = x_78;
}
lean_ctor_set(x_79, 0, x_77);
if (x_65 == 0)
{
lean_object* x_80; lean_object* x_81; 
lean_dec(x_2);
if (lean_is_scalar(x_64)) {
 x_80 = lean_alloc_ctor(0, 6, 0);
} else {
 x_80 = x_64;
}
lean_ctor_set(x_80, 0, x_66);
lean_ctor_set(x_80, 1, x_67);
lean_ctor_set(x_80, 2, x_68);
lean_ctor_set(x_80, 3, x_79);
lean_ctor_set(x_80, 4, x_62);
lean_ctor_set(x_80, 5, x_63);
x_81 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_81, 0, x_80);
lean_ctor_set(x_81, 1, x_58);
return x_81;
}
else
{
lean_object* x_82; lean_object* x_83; lean_object* x_84; lean_object* x_85; 
lean_dec(x_63);
x_82 = l_Aesop_Frontend_RuleExpr_elab___closed__1;
x_83 = lean_array_push(x_82, x_2);
if (lean_is_scalar(x_64)) {
 x_84 = lean_alloc_ctor(0, 6, 0);
} else {
 x_84 = x_64;
}
lean_ctor_set(x_84, 0, x_66);
lean_ctor_set(x_84, 1, x_67);
lean_ctor_set(x_84, 2, x_68);
lean_ctor_set(x_84, 3, x_79);
lean_ctor_set(x_84, 4, x_62);
lean_ctor_set(x_84, 5, x_83);
x_85 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_85, 0, x_84);
lean_ctor_set(x_85, 1, x_58);
return x_85;
}
}
}
}
else
{
uint8_t x_86; 
lean_dec(x_9);
lean_dec(x_2);
lean_dec(x_1);
x_86 = !lean_is_exclusive(x_11);
if (x_86 == 0)
{
return x_11;
}
else
{
lean_object* x_87; lean_object* x_88; lean_object* x_89; 
x_87 = lean_ctor_get(x_11, 0);
x_88 = lean_ctor_get(x_11, 1);
lean_inc(x_88);
lean_inc(x_87);
lean_dec(x_11);
x_89 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_89, 0, x_87);
lean_ctor_set(x_89, 1, x_88);
return x_89;
}
}
}
else
{
uint8_t x_90; 
lean_dec(x_2);
lean_dec(x_1);
x_90 = !lean_is_exclusive(x_8);
if (x_90 == 0)
{
return x_8;
}
else
{
lean_object* x_91; lean_object* x_92; lean_object* x_93; 
x_91 = lean_ctor_get(x_8, 0);
x_92 = lean_ctor_get(x_8, 1);
lean_inc(x_92);
lean_inc(x_91);
lean_dec(x_8);
x_93 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_93, 0, x_91);
lean_ctor_set(x_93, 1, x_92);
return x_93;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__11(lean_object* x_1, size_t x_2, size_t x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; 
x_10 = lean_usize_dec_lt(x_3, x_2);
if (x_10 == 0)
{
lean_object* x_11; 
lean_dec(x_1);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_4);
lean_ctor_set(x_11, 1, x_9);
return x_11;
}
else
{
lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_12 = lean_array_uget(x_4, x_3);
x_13 = lean_unsigned_to_nat(0u);
x_14 = lean_array_uset(x_4, x_3, x_13);
lean_inc(x_1);
x_15 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__7(x_12, x_1, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; size_t x_18; size_t x_19; lean_object* x_20; 
x_16 = lean_ctor_get(x_15, 0);
lean_inc(x_16);
x_17 = lean_ctor_get(x_15, 1);
lean_inc(x_17);
lean_dec(x_15);
x_18 = 1;
x_19 = lean_usize_add(x_3, x_18);
x_20 = lean_array_uset(x_14, x_3, x_16);
x_3 = x_19;
x_4 = x_20;
x_9 = x_17;
goto _start;
}
else
{
uint8_t x_22; 
lean_dec(x_14);
lean_dec(x_1);
x_22 = !lean_is_exclusive(x_15);
if (x_22 == 0)
{
return x_15;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_15, 0);
x_24 = lean_ctor_get(x_15, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_15);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__1(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; 
x_9 = lean_alloc_closure((void*)(l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___boxed), 7, 0);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_10 = l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__4(x_9, x_2, x_1, x_4, x_5, x_6, x_7, x_8);
if (lean_obj_tag(x_10) == 0)
{
lean_object* x_11; lean_object* x_12; size_t x_13; size_t x_14; lean_object* x_15; 
x_11 = lean_ctor_get(x_10, 0);
lean_inc(x_11);
x_12 = lean_ctor_get(x_10, 1);
lean_inc(x_12);
lean_dec(x_10);
x_13 = lean_array_size(x_11);
x_14 = 0;
x_15 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__11(x_3, x_13, x_14, x_11, x_4, x_5, x_6, x_7, x_12);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
return x_15;
}
else
{
uint8_t x_16; 
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_16 = !lean_is_exclusive(x_10);
if (x_16 == 0)
{
return x_10;
}
else
{
lean_object* x_17; lean_object* x_18; lean_object* x_19; 
x_17 = lean_ctor_get(x_10, 0);
x_18 = lean_ctor_get(x_10, 1);
lean_inc(x_18);
lean_inc(x_17);
lean_dec(x_10);
x_19 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
return x_19;
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toAdditionalLocalRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1;
x_8 = l_Aesop_localRuleSetName;
x_9 = l_Aesop_Frontend_RuleExpr_toAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__1(x_1, x_7, x_8, x_2, x_3, x_4, x_5, x_6);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___lambda__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; 
x_9 = l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___lambda__1(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_9;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_Frontend_RuleConfig_addFeature___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__3(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_13 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_14 = l_Array_foldlMUnsafe_fold___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__6(x_1, x_2, x_3, x_12, x_13, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_3);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__8___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_Frontend_RuleConfig_getTerm___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__8(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Lean_throwError___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__10(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__9___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6) {
_start:
{
lean_object* x_7; 
x_7 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__9(x_1, x_2, x_3, x_4, x_5, x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
lean_dec(x_1);
return x_7;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__7___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
lean_object* x_8; 
x_8 = l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__7(x_1, x_2, x_3, x_4, x_5, x_6, x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
return x_8;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__11___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
size_t x_10; size_t x_11; lean_object* x_12; 
x_10 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_11 = lean_unbox_usize(x_3);
lean_dec(x_3);
x_12 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__11(x_1, x_10, x_11, x_4, x_5, x_6, x_7, x_8, x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules___spec__1(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_2, x_1);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_array_uget(x_3, x_2);
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_array_uset(x_3, x_2, x_15);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
x_17 = l_Aesop_Frontend_RuleConfig_buildLocalRule(x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_22 = lean_array_uset(x_16, x_2, x_18);
x_2 = x_21;
x_3 = x_22;
x_11 = x_19;
goto _start;
}
else
{
uint8_t x_24; 
lean_dec(x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
return x_17;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_17, 0);
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_17);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
uint8_t x_10; lean_object* x_11; lean_object* x_12; 
x_10 = 1;
x_11 = lean_alloc_ctor(0, 1, 1);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set_uint8(x_11, sizeof(void*)*1, x_10);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_12 = l_Aesop_Frontend_RuleExpr_toAdditionalLocalRules(x_2, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; size_t x_15; size_t x_16; lean_object* x_17; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_array_size(x_13);
x_16 = 0;
x_17 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules___spec__1(x_15, x_16, x_13, x_11, x_3, x_4, x_5, x_6, x_7, x_8, x_14);
return x_17;
}
else
{
uint8_t x_18; 
lean_dec(x_11);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
x_18 = !lean_is_exclusive(x_12);
if (x_18 == 0)
{
return x_12;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_12, 0);
x_20 = lean_ctor_get(x_12, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_12);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_buildAdditionalLocalRules___spec__1(x_12, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toRuleFilters___spec__1(size_t x_1, size_t x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
uint8_t x_12; 
x_12 = lean_usize_dec_lt(x_2, x_1);
if (x_12 == 0)
{
lean_object* x_13; 
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_13 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_13, 0, x_3);
lean_ctor_set(x_13, 1, x_11);
return x_13;
}
else
{
lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; 
x_14 = lean_array_uget(x_3, x_2);
x_15 = lean_unsigned_to_nat(0u);
x_16 = lean_array_uset(x_3, x_2, x_15);
lean_inc(x_10);
lean_inc(x_9);
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
x_17 = l_Aesop_Frontend_RuleConfig_toRuleFilter(x_14, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
if (lean_obj_tag(x_17) == 0)
{
lean_object* x_18; lean_object* x_19; size_t x_20; size_t x_21; lean_object* x_22; 
x_18 = lean_ctor_get(x_17, 0);
lean_inc(x_18);
x_19 = lean_ctor_get(x_17, 1);
lean_inc(x_19);
lean_dec(x_17);
x_20 = 1;
x_21 = lean_usize_add(x_2, x_20);
x_22 = lean_array_uset(x_16, x_2, x_18);
x_2 = x_21;
x_3 = x_22;
x_11 = x_19;
goto _start;
}
else
{
uint8_t x_24; 
lean_dec(x_16);
lean_dec(x_10);
lean_dec(x_9);
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
x_24 = !lean_is_exclusive(x_17);
if (x_24 == 0)
{
return x_17;
}
else
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_17, 0);
x_26 = lean_ctor_get(x_17, 1);
lean_inc(x_26);
lean_inc(x_25);
lean_dec(x_17);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_25);
lean_ctor_set(x_27, 1, x_26);
return x_27;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toRuleFilters(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1;
x_11 = l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1;
lean_inc(x_8);
lean_inc(x_7);
lean_inc(x_6);
lean_inc(x_5);
lean_inc(x_4);
lean_inc(x_3);
lean_inc(x_2);
x_12 = l_Aesop_Frontend_RuleExpr_foldBranchesM___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__5(x_10, x_11, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; size_t x_15; size_t x_16; lean_object* x_17; 
x_13 = lean_ctor_get(x_12, 0);
lean_inc(x_13);
x_14 = lean_ctor_get(x_12, 1);
lean_inc(x_14);
lean_dec(x_12);
x_15 = lean_array_size(x_13);
x_16 = 0;
x_17 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toRuleFilters___spec__1(x_15, x_16, x_13, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_14);
lean_dec(x_2);
return x_17;
}
else
{
uint8_t x_18; 
lean_dec(x_8);
lean_dec(x_7);
lean_dec(x_6);
lean_dec(x_5);
lean_dec(x_4);
lean_dec(x_3);
lean_dec(x_2);
x_18 = !lean_is_exclusive(x_12);
if (x_18 == 0)
{
return x_12;
}
else
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_12, 0);
x_20 = lean_ctor_get(x_12, 1);
lean_inc(x_20);
lean_inc(x_19);
lean_dec(x_12);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set(x_21, 1, x_20);
return x_21;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toRuleFilters___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11) {
_start:
{
size_t x_12; size_t x_13; lean_object* x_14; 
x_12 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_13 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_14 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toRuleFilters___spec__1(x_12, x_13, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11);
lean_dec(x_4);
return x_14;
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toGlobalRuleFilters(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8) {
_start:
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = l_Aesop_ElabM_Context_forGlobalErasing(x_4, x_5, x_6, x_7, x_8);
x_10 = lean_ctor_get(x_9, 0);
lean_inc(x_10);
x_11 = lean_ctor_get(x_9, 1);
lean_inc(x_11);
lean_dec(x_9);
x_12 = l_Aesop_Frontend_RuleExpr_toRuleFilters(x_1, x_10, x_2, x_3, x_4, x_5, x_6, x_7, x_11);
return x_12;
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1(size_t x_1, size_t x_2, lean_object* x_3) {
_start:
{
uint8_t x_4; 
x_4 = lean_usize_dec_lt(x_2, x_1);
if (x_4 == 0)
{
return x_3;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; size_t x_9; size_t x_10; lean_object* x_11; 
x_5 = lean_array_uget(x_3, x_2);
x_6 = lean_unsigned_to_nat(0u);
x_7 = lean_array_uset(x_3, x_2, x_6);
x_8 = lean_ctor_get(x_5, 1);
lean_inc(x_8);
lean_dec(x_5);
x_9 = 1;
x_10 = lean_usize_add(x_2, x_9);
x_11 = lean_array_uset(x_7, x_2, x_8);
x_2 = x_10;
x_3 = x_11;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_Aesop_Frontend_RuleExpr_toLocalRuleFilters(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9) {
_start:
{
lean_object* x_10; 
x_10 = l_Aesop_Frontend_RuleExpr_toRuleFilters(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9);
if (lean_obj_tag(x_10) == 0)
{
uint8_t x_11; 
x_11 = !lean_is_exclusive(x_10);
if (x_11 == 0)
{
lean_object* x_12; size_t x_13; size_t x_14; lean_object* x_15; 
x_12 = lean_ctor_get(x_10, 0);
x_13 = lean_array_size(x_12);
x_14 = 0;
x_15 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1(x_13, x_14, x_12);
lean_ctor_set(x_10, 0, x_15);
return x_10;
}
else
{
lean_object* x_16; lean_object* x_17; size_t x_18; size_t x_19; lean_object* x_20; lean_object* x_21; 
x_16 = lean_ctor_get(x_10, 0);
x_17 = lean_ctor_get(x_10, 1);
lean_inc(x_17);
lean_inc(x_16);
lean_dec(x_10);
x_18 = lean_array_size(x_16);
x_19 = 0;
x_20 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1(x_18, x_19, x_16);
x_21 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_21, 0, x_20);
lean_ctor_set(x_21, 1, x_17);
return x_21;
}
}
else
{
uint8_t x_22; 
x_22 = !lean_is_exclusive(x_10);
if (x_22 == 0)
{
return x_10;
}
else
{
lean_object* x_23; lean_object* x_24; lean_object* x_25; 
x_23 = lean_ctor_get(x_10, 0);
x_24 = lean_ctor_get(x_10, 1);
lean_inc(x_24);
lean_inc(x_23);
lean_dec(x_10);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_23);
lean_ctor_set(x_25, 1, x_24);
return x_25;
}
}
}
}
LEAN_EXPORT lean_object* l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
size_t x_4; size_t x_5; lean_object* x_6; 
x_4 = lean_unbox_usize(x_1);
lean_dec(x_1);
x_5 = lean_unbox_usize(x_2);
lean_dec(x_2);
x_6 = l_Array_mapMUnsafe_map___at_Aesop_Frontend_RuleExpr_toLocalRuleFilters___spec__1(x_4, x_5, x_3);
return x_6;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_ElabM(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Percent(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Rule_Name(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Cases(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Default(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Forward(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_Builder_Unfold(uint8_t builtin, lean_object*);
lean_object* initialize_Aesop_RuleSet_Filter(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_Aesop_Frontend_RuleExpr(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_ElabM(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Percent(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Rule_Name(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Cases(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Default(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Forward(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_Builder_Unfold(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Aesop_RuleSet_Filter(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__11 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__11();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__11);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__12 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__12();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__12);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__13 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__13();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__13);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__14);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__15 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__15();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__15);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__16);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__17 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__17();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__17);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__18 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__18();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__18);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__19 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__19();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__19);
l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__20 = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__20();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot___closed__20);
l_Aesop_Frontend_Parser_Aesop_priority_quot = _init_l_Aesop_Frontend_Parser_Aesop_priority_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_priority_quot);
l_Lean_Parser_Category_Aesop_priority = _init_l_Lean_Parser_Category_Aesop_priority();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_priority);
l_Aesop_Frontend_Parser_priority___x25___closed__1 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__1);
l_Aesop_Frontend_Parser_priority___x25___closed__2 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__2);
l_Aesop_Frontend_Parser_priority___x25___closed__3 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__3);
l_Aesop_Frontend_Parser_priority___x25___closed__4 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__4);
l_Aesop_Frontend_Parser_priority___x25___closed__5 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__5);
l_Aesop_Frontend_Parser_priority___x25___closed__6 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__6);
l_Aesop_Frontend_Parser_priority___x25___closed__7 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__7);
l_Aesop_Frontend_Parser_priority___x25___closed__8 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__8);
l_Aesop_Frontend_Parser_priority___x25___closed__9 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__9);
l_Aesop_Frontend_Parser_priority___x25___closed__10 = _init_l_Aesop_Frontend_Parser_priority___x25___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25___closed__10);
l_Aesop_Frontend_Parser_priority___x25 = _init_l_Aesop_Frontend_Parser_priority___x25();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority___x25);
l_Aesop_Frontend_Parser_priority_x2d_____closed__1 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__1);
l_Aesop_Frontend_Parser_priority_x2d_____closed__2 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__2);
l_Aesop_Frontend_Parser_priority_x2d_____closed__3 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__3);
l_Aesop_Frontend_Parser_priority_x2d_____closed__4 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__4);
l_Aesop_Frontend_Parser_priority_x2d_____closed__5 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__5);
l_Aesop_Frontend_Parser_priority_x2d_____closed__6 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__6);
l_Aesop_Frontend_Parser_priority_x2d_____closed__7 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__7);
l_Aesop_Frontend_Parser_priority_x2d_____closed__8 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__8);
l_Aesop_Frontend_Parser_priority_x2d_____closed__9 = _init_l_Aesop_Frontend_Parser_priority_x2d_____closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d_____closed__9);
l_Aesop_Frontend_Parser_priority_x2d__ = _init_l_Aesop_Frontend_Parser_priority_x2d__();
lean_mark_persistent(l_Aesop_Frontend_Parser_priority_x2d__);
l_Aesop_Frontend_instInhabitedPriority___closed__1 = _init_l_Aesop_Frontend_instInhabitedPriority___closed__1();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedPriority___closed__1);
l_Aesop_Frontend_instInhabitedPriority___closed__2 = _init_l_Aesop_Frontend_instInhabitedPriority___closed__2();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedPriority___closed__2);
l_Aesop_Frontend_instInhabitedPriority = _init_l_Aesop_Frontend_instInhabitedPriority();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedPriority);
l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__1 = _init_l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__1();
lean_mark_persistent(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__1);
l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2 = _init_l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2();
lean_mark_persistent(l_Lean_Elab_throwUnsupportedSyntax___at_Aesop_Frontend_Priority_elab___spec__1___rarg___closed__2);
l_Aesop_Frontend_Priority_elab___lambda__1___closed__1 = _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Priority_elab___lambda__1___closed__1);
l_Aesop_Frontend_Priority_elab___lambda__1___closed__2 = _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Priority_elab___lambda__1___closed__2);
l_Aesop_Frontend_Priority_elab___lambda__1___closed__3 = _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Priority_elab___lambda__1___closed__3);
l_Aesop_Frontend_Priority_elab___lambda__1___closed__4 = _init_l_Aesop_Frontend_Priority_elab___lambda__1___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Priority_elab___lambda__1___closed__4);
l_Aesop_Frontend_Priority_elab___closed__1 = _init_l_Aesop_Frontend_Priority_elab___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Priority_elab___closed__1);
l_Aesop_Frontend_Priority_elab___closed__2 = _init_l_Aesop_Frontend_Priority_elab___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Priority_elab___closed__2);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_phase_quot = _init_l_Aesop_Frontend_Parser_Aesop_phase_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_phase_quot);
l_Lean_Parser_Category_Aesop_phase = _init_l_Lean_Parser_Category_Aesop_phase();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_phase);
l_Aesop_Frontend_Parser_phaseSafe___closed__1 = _init_l_Aesop_Frontend_Parser_phaseSafe___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseSafe___closed__1);
l_Aesop_Frontend_Parser_phaseSafe___closed__2 = _init_l_Aesop_Frontend_Parser_phaseSafe___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseSafe___closed__2);
l_Aesop_Frontend_Parser_phaseSafe___closed__3 = _init_l_Aesop_Frontend_Parser_phaseSafe___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseSafe___closed__3);
l_Aesop_Frontend_Parser_phaseSafe___closed__4 = _init_l_Aesop_Frontend_Parser_phaseSafe___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseSafe___closed__4);
l_Aesop_Frontend_Parser_phaseSafe___closed__5 = _init_l_Aesop_Frontend_Parser_phaseSafe___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseSafe___closed__5);
l_Aesop_Frontend_Parser_phaseSafe = _init_l_Aesop_Frontend_Parser_phaseSafe();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseSafe);
l_Aesop_Frontend_Parser_phaseNorm___closed__1 = _init_l_Aesop_Frontend_Parser_phaseNorm___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseNorm___closed__1);
l_Aesop_Frontend_Parser_phaseNorm___closed__2 = _init_l_Aesop_Frontend_Parser_phaseNorm___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseNorm___closed__2);
l_Aesop_Frontend_Parser_phaseNorm___closed__3 = _init_l_Aesop_Frontend_Parser_phaseNorm___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseNorm___closed__3);
l_Aesop_Frontend_Parser_phaseNorm___closed__4 = _init_l_Aesop_Frontend_Parser_phaseNorm___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseNorm___closed__4);
l_Aesop_Frontend_Parser_phaseNorm___closed__5 = _init_l_Aesop_Frontend_Parser_phaseNorm___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseNorm___closed__5);
l_Aesop_Frontend_Parser_phaseNorm = _init_l_Aesop_Frontend_Parser_phaseNorm();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseNorm);
l_Aesop_Frontend_Parser_phaseUnsafe___closed__1 = _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseUnsafe___closed__1);
l_Aesop_Frontend_Parser_phaseUnsafe___closed__2 = _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseUnsafe___closed__2);
l_Aesop_Frontend_Parser_phaseUnsafe___closed__3 = _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseUnsafe___closed__3);
l_Aesop_Frontend_Parser_phaseUnsafe___closed__4 = _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseUnsafe___closed__4);
l_Aesop_Frontend_Parser_phaseUnsafe___closed__5 = _init_l_Aesop_Frontend_Parser_phaseUnsafe___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseUnsafe___closed__5);
l_Aesop_Frontend_Parser_phaseUnsafe = _init_l_Aesop_Frontend_Parser_phaseUnsafe();
lean_mark_persistent(l_Aesop_Frontend_Parser_phaseUnsafe);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_builder__name_quot = _init_l_Aesop_Frontend_Parser_Aesop_builder__name_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__name_quot);
l_Lean_Parser_Category_Aesop_builder__name = _init_l_Lean_Parser_Category_Aesop_builder__name();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_builder__name);
l_Aesop_Frontend_Parser_builder__nameApply___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameApply___closed__1);
l_Aesop_Frontend_Parser_builder__nameApply___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameApply___closed__2);
l_Aesop_Frontend_Parser_builder__nameApply___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameApply___closed__3);
l_Aesop_Frontend_Parser_builder__nameApply___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameApply___closed__4);
l_Aesop_Frontend_Parser_builder__nameApply___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameApply___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameApply___closed__5);
l_Aesop_Frontend_Parser_builder__nameApply = _init_l_Aesop_Frontend_Parser_builder__nameApply();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameApply);
l_Aesop_Frontend_Parser_builder__nameSimp___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameSimp___closed__1);
l_Aesop_Frontend_Parser_builder__nameSimp___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameSimp___closed__2);
l_Aesop_Frontend_Parser_builder__nameSimp___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameSimp___closed__3);
l_Aesop_Frontend_Parser_builder__nameSimp___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameSimp___closed__4);
l_Aesop_Frontend_Parser_builder__nameSimp___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameSimp___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameSimp___closed__5);
l_Aesop_Frontend_Parser_builder__nameSimp = _init_l_Aesop_Frontend_Parser_builder__nameSimp();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameSimp);
l_Aesop_Frontend_Parser_builder__nameUnfold___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameUnfold___closed__1);
l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameUnfold___closed__2);
l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameUnfold___closed__3);
l_Aesop_Frontend_Parser_builder__nameUnfold___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameUnfold___closed__4);
l_Aesop_Frontend_Parser_builder__nameUnfold___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameUnfold___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameUnfold___closed__5);
l_Aesop_Frontend_Parser_builder__nameUnfold = _init_l_Aesop_Frontend_Parser_builder__nameUnfold();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameUnfold);
l_Aesop_Frontend_Parser_builder__nameTactic___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameTactic___closed__1);
l_Aesop_Frontend_Parser_builder__nameTactic___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameTactic___closed__2);
l_Aesop_Frontend_Parser_builder__nameTactic___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameTactic___closed__3);
l_Aesop_Frontend_Parser_builder__nameTactic___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameTactic___closed__4);
l_Aesop_Frontend_Parser_builder__nameTactic___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameTactic___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameTactic___closed__5);
l_Aesop_Frontend_Parser_builder__nameTactic = _init_l_Aesop_Frontend_Parser_builder__nameTactic();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameTactic);
l_Aesop_Frontend_Parser_builder__nameConstructors___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameConstructors___closed__1);
l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameConstructors___closed__2);
l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameConstructors___closed__3);
l_Aesop_Frontend_Parser_builder__nameConstructors___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameConstructors___closed__4);
l_Aesop_Frontend_Parser_builder__nameConstructors___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameConstructors___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameConstructors___closed__5);
l_Aesop_Frontend_Parser_builder__nameConstructors = _init_l_Aesop_Frontend_Parser_builder__nameConstructors();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameConstructors);
l_Aesop_Frontend_Parser_builder__nameForward___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameForward___closed__1);
l_Aesop_Frontend_Parser_builder__nameForward___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameForward___closed__2);
l_Aesop_Frontend_Parser_builder__nameForward___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameForward___closed__3);
l_Aesop_Frontend_Parser_builder__nameForward___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameForward___closed__4);
l_Aesop_Frontend_Parser_builder__nameForward___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameForward___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameForward___closed__5);
l_Aesop_Frontend_Parser_builder__nameForward = _init_l_Aesop_Frontend_Parser_builder__nameForward();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameForward);
l_Aesop_Frontend_Parser_builder__nameDestruct___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDestruct___closed__1);
l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDestruct___closed__2);
l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDestruct___closed__3);
l_Aesop_Frontend_Parser_builder__nameDestruct___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDestruct___closed__4);
l_Aesop_Frontend_Parser_builder__nameDestruct___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameDestruct___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDestruct___closed__5);
l_Aesop_Frontend_Parser_builder__nameDestruct = _init_l_Aesop_Frontend_Parser_builder__nameDestruct();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDestruct);
l_Aesop_Frontend_Parser_builder__nameCases___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameCases___closed__1);
l_Aesop_Frontend_Parser_builder__nameCases___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameCases___closed__2);
l_Aesop_Frontend_Parser_builder__nameCases___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameCases___closed__3);
l_Aesop_Frontend_Parser_builder__nameCases___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameCases___closed__4);
l_Aesop_Frontend_Parser_builder__nameCases___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameCases___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameCases___closed__5);
l_Aesop_Frontend_Parser_builder__nameCases = _init_l_Aesop_Frontend_Parser_builder__nameCases();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameCases);
l_Aesop_Frontend_Parser_builder__nameDefault___closed__1 = _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDefault___closed__1);
l_Aesop_Frontend_Parser_builder__nameDefault___closed__2 = _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDefault___closed__2);
l_Aesop_Frontend_Parser_builder__nameDefault___closed__3 = _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDefault___closed__3);
l_Aesop_Frontend_Parser_builder__nameDefault___closed__4 = _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDefault___closed__4);
l_Aesop_Frontend_Parser_builder__nameDefault___closed__5 = _init_l_Aesop_Frontend_Parser_builder__nameDefault___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDefault___closed__5);
l_Aesop_Frontend_Parser_builder__nameDefault = _init_l_Aesop_Frontend_Parser_builder__nameDefault();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__nameDefault);
l_Aesop_Frontend_instInhabitedDBuilderName___closed__1 = _init_l_Aesop_Frontend_instInhabitedDBuilderName___closed__1();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedDBuilderName___closed__1);
l_Aesop_Frontend_instInhabitedDBuilderName = _init_l_Aesop_Frontend_instInhabitedDBuilderName();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedDBuilderName);
l_Aesop_Frontend_DBuilderName_elab___closed__1 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__1();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__1);
l_Aesop_Frontend_DBuilderName_elab___closed__2 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__2();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__2);
l_Aesop_Frontend_DBuilderName_elab___closed__3 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__3();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__3);
l_Aesop_Frontend_DBuilderName_elab___closed__4 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__4();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__4);
l_Aesop_Frontend_DBuilderName_elab___closed__5 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__5();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__5);
l_Aesop_Frontend_DBuilderName_elab___closed__6 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__6();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__6);
l_Aesop_Frontend_DBuilderName_elab___closed__7 = _init_l_Aesop_Frontend_DBuilderName_elab___closed__7();
lean_mark_persistent(l_Aesop_Frontend_DBuilderName_elab___closed__7);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot = _init_l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_indexing__mode_quot);
l_Lean_Parser_Category_Aesop_indexing__mode = _init_l_Lean_Parser_Category_Aesop_indexing__mode();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_indexing__mode);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__1 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__1);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__2);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__3 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__3);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__4 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__4);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__5);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__6 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__6);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__7);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__8 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__8);
l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__9 = _init_l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget_____closed__9);
l_Aesop_Frontend_Parser_indexing__modeTarget__ = _init_l_Aesop_Frontend_Parser_indexing__modeTarget__();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeTarget__);
l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__1 = _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__1);
l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2 = _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__2);
l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__3 = _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__3);
l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__4 = _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__4);
l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__5 = _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__5);
l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__6 = _init_l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp_____closed__6);
l_Aesop_Frontend_Parser_indexing__modeHyp__ = _init_l_Aesop_Frontend_Parser_indexing__modeHyp__();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeHyp__);
l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__1 = _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__1);
l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2 = _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__2);
l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__3 = _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__3);
l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__4 = _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__4);
l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__5 = _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeUnindexed___closed__5);
l_Aesop_Frontend_Parser_indexing__modeUnindexed = _init_l_Aesop_Frontend_Parser_indexing__modeUnindexed();
lean_mark_persistent(l_Aesop_Frontend_Parser_indexing__modeUnindexed);
l_Aesop_Frontend_Parser_transparency___closed__1 = _init_l_Aesop_Frontend_Parser_transparency___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__1);
l_Aesop_Frontend_Parser_transparency___closed__2 = _init_l_Aesop_Frontend_Parser_transparency___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__2);
l_Aesop_Frontend_Parser_transparency___closed__3 = _init_l_Aesop_Frontend_Parser_transparency___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__3);
l_Aesop_Frontend_Parser_transparency___closed__4 = _init_l_Aesop_Frontend_Parser_transparency___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__4);
l_Aesop_Frontend_Parser_transparency___closed__5 = _init_l_Aesop_Frontend_Parser_transparency___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__5);
l_Aesop_Frontend_Parser_transparency___closed__6 = _init_l_Aesop_Frontend_Parser_transparency___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__6);
l_Aesop_Frontend_Parser_transparency___closed__7 = _init_l_Aesop_Frontend_Parser_transparency___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__7);
l_Aesop_Frontend_Parser_transparency___closed__8 = _init_l_Aesop_Frontend_Parser_transparency___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__8);
l_Aesop_Frontend_Parser_transparency___closed__9 = _init_l_Aesop_Frontend_Parser_transparency___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__9);
l_Aesop_Frontend_Parser_transparency___closed__10 = _init_l_Aesop_Frontend_Parser_transparency___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__10);
l_Aesop_Frontend_Parser_transparency___closed__11 = _init_l_Aesop_Frontend_Parser_transparency___closed__11();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__11);
l_Aesop_Frontend_Parser_transparency___closed__12 = _init_l_Aesop_Frontend_Parser_transparency___closed__12();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__12);
l_Aesop_Frontend_Parser_transparency___closed__13 = _init_l_Aesop_Frontend_Parser_transparency___closed__13();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__13);
l_Aesop_Frontend_Parser_transparency___closed__14 = _init_l_Aesop_Frontend_Parser_transparency___closed__14();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__14);
l_Aesop_Frontend_Parser_transparency___closed__15 = _init_l_Aesop_Frontend_Parser_transparency___closed__15();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__15);
l_Aesop_Frontend_Parser_transparency___closed__16 = _init_l_Aesop_Frontend_Parser_transparency___closed__16();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__16);
l_Aesop_Frontend_Parser_transparency___closed__17 = _init_l_Aesop_Frontend_Parser_transparency___closed__17();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__17);
l_Aesop_Frontend_Parser_transparency___closed__18 = _init_l_Aesop_Frontend_Parser_transparency___closed__18();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__18);
l_Aesop_Frontend_Parser_transparency___closed__19 = _init_l_Aesop_Frontend_Parser_transparency___closed__19();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__19);
l_Aesop_Frontend_Parser_transparency___closed__20 = _init_l_Aesop_Frontend_Parser_transparency___closed__20();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__20);
l_Aesop_Frontend_Parser_transparency___closed__21 = _init_l_Aesop_Frontend_Parser_transparency___closed__21();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__21);
l_Aesop_Frontend_Parser_transparency___closed__22 = _init_l_Aesop_Frontend_Parser_transparency___closed__22();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__22);
l_Aesop_Frontend_Parser_transparency___closed__23 = _init_l_Aesop_Frontend_Parser_transparency___closed__23();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency___closed__23);
l_Aesop_Frontend_Parser_transparency = _init_l_Aesop_Frontend_Parser_transparency();
lean_mark_persistent(l_Aesop_Frontend_Parser_transparency);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_builder__option_quot = _init_l_Aesop_Frontend_Parser_Aesop_builder__option_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_builder__option_quot);
l_Lean_Parser_Category_Aesop_builder__option = _init_l_Lean_Parser_Category_Aesop_builder__option();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_builder__option);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__1 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__1);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__2);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__3 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__3);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__4);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__5 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__5);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__6 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__6);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__7 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__7);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__8 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__8);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__9);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__10 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__10);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__11 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__11();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__11);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__12);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__13 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__13();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__13);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__14 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__14();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__14);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__15);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__16);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__17 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__17();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__17);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__18);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__19);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__20);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__21 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__21();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__21);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__22 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__22();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__22);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__23);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__24 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__24();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__24);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__25 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__25();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__25);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__26 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__26();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29___closed__26);
l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29 = _init_l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Immediate_x3a_x3d_x5b___x5d_x29);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__1 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__1);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__2);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__3 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__3);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__4 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__4);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__5 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__5);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__6 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__6);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__7 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__7);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__8 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__8);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__9 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__9);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__10 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__10);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__11 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__11();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__11);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__12 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__12();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29___closed__12);
l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29 = _init_l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Index_x3a_x3d_x5b___x5d_x29);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__1 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__1);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__2);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__3 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__3);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__4 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__4);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__5 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__5);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__6 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__6);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__7 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__7);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__8 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__8);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__9 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29___closed__9);
l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29 = _init_l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Pattern_x3a_x3d___x29);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__1 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__1);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__2);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__3 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__3);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__4 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__4);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__5 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__5);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__6 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__6);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__7 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__7);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__8 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__8);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__9 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__9);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__10 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__10);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__11 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__11();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__11);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__12 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__12();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29___closed__12);
l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29 = _init_l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Cases__patterns_x3a_x3d_x5b___x5d_x29);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__1 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__1);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__2);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__3 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__3);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__4 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__4);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__5 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__5);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__6 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__6);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__7 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__7);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__8 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29___closed__8);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x3a_x3d___x29);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__1 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__1);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__2);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__3 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__3);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__4 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__4);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__5 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__5);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__6 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__6);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__7 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__7);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__8 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__8);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__9 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29___closed__9);
l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29 = _init_l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_builder__option_x28Transparency_x21_x3a_x3d___x29);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__1);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__2);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__3);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__4 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__4);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__5 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__5);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__6 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__6);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__7 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__7);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__8 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__8);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__9 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__9);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__10 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__10);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__11 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__11();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__11);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__12 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__12();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__12);
l_Aesop_Frontend_Parser_ruleSetsFeature___closed__13 = _init_l_Aesop_Frontend_Parser_ruleSetsFeature___closed__13();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature___closed__13);
l_Aesop_Frontend_Parser_ruleSetsFeature = _init_l_Aesop_Frontend_Parser_ruleSetsFeature();
lean_mark_persistent(l_Aesop_Frontend_Parser_ruleSetsFeature);
l_Aesop_Frontend_instInhabitedRuleSets___closed__1 = _init_l_Aesop_Frontend_instInhabitedRuleSets___closed__1();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedRuleSets___closed__1);
l_Aesop_Frontend_instInhabitedRuleSets = _init_l_Aesop_Frontend_instInhabitedRuleSets();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedRuleSets);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_feature_quot = _init_l_Aesop_Frontend_Parser_Aesop_feature_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_feature_quot);
l_Lean_Parser_Category_Aesop_feature = _init_l_Lean_Parser_Category_Aesop_feature();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_feature);
l_Aesop_Frontend_Parser_feature_____closed__1 = _init_l_Aesop_Frontend_Parser_feature_____closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_____closed__1);
l_Aesop_Frontend_Parser_feature_____closed__2 = _init_l_Aesop_Frontend_Parser_feature_____closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_____closed__2);
l_Aesop_Frontend_Parser_feature_____closed__3 = _init_l_Aesop_Frontend_Parser_feature_____closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_____closed__3);
l_Aesop_Frontend_Parser_feature__ = _init_l_Aesop_Frontend_Parser_feature__();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature__);
l_Aesop_Frontend_Parser_feature____1___closed__1 = _init_l_Aesop_Frontend_Parser_feature____1___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____1___closed__1);
l_Aesop_Frontend_Parser_feature____1___closed__2 = _init_l_Aesop_Frontend_Parser_feature____1___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____1___closed__2);
l_Aesop_Frontend_Parser_feature____1___closed__3 = _init_l_Aesop_Frontend_Parser_feature____1___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____1___closed__3);
l_Aesop_Frontend_Parser_feature____1 = _init_l_Aesop_Frontend_Parser_feature____1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____1);
l_Aesop_Frontend_Parser_feature____2___closed__1 = _init_l_Aesop_Frontend_Parser_feature____2___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____2___closed__1);
l_Aesop_Frontend_Parser_feature____2___closed__2 = _init_l_Aesop_Frontend_Parser_feature____2___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____2___closed__2);
l_Aesop_Frontend_Parser_feature____2___closed__3 = _init_l_Aesop_Frontend_Parser_feature____2___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____2___closed__3);
l_Aesop_Frontend_Parser_feature____2 = _init_l_Aesop_Frontend_Parser_feature____2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____2);
l_Aesop_Frontend_Parser_feature____3___closed__1 = _init_l_Aesop_Frontend_Parser_feature____3___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____3___closed__1);
l_Aesop_Frontend_Parser_feature____3___closed__2 = _init_l_Aesop_Frontend_Parser_feature____3___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____3___closed__2);
l_Aesop_Frontend_Parser_feature____3___closed__3 = _init_l_Aesop_Frontend_Parser_feature____3___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____3___closed__3);
l_Aesop_Frontend_Parser_feature____3 = _init_l_Aesop_Frontend_Parser_feature____3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____3);
l_Aesop_Frontend_Parser_feature____4___closed__1 = _init_l_Aesop_Frontend_Parser_feature____4___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____4___closed__1);
l_Aesop_Frontend_Parser_feature____4___closed__2 = _init_l_Aesop_Frontend_Parser_feature____4___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____4___closed__2);
l_Aesop_Frontend_Parser_feature____4___closed__3 = _init_l_Aesop_Frontend_Parser_feature____4___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____4___closed__3);
l_Aesop_Frontend_Parser_feature____4 = _init_l_Aesop_Frontend_Parser_feature____4();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature____4);
l_Aesop_Frontend_Parser_featIdent___closed__1 = _init_l_Aesop_Frontend_Parser_featIdent___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_featIdent___closed__1);
l_Aesop_Frontend_Parser_featIdent___closed__2 = _init_l_Aesop_Frontend_Parser_featIdent___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_featIdent___closed__2);
l_Aesop_Frontend_Parser_featIdent___closed__3 = _init_l_Aesop_Frontend_Parser_featIdent___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_featIdent___closed__3);
l_Aesop_Frontend_Parser_featIdent = _init_l_Aesop_Frontend_Parser_featIdent();
lean_mark_persistent(l_Aesop_Frontend_Parser_featIdent);
l_Aesop_Frontend_Parser_feature_x28___x29___closed__1 = _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29___closed__1);
l_Aesop_Frontend_Parser_feature_x28___x29___closed__2 = _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29___closed__2);
l_Aesop_Frontend_Parser_feature_x28___x29___closed__3 = _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29___closed__3);
l_Aesop_Frontend_Parser_feature_x28___x29___closed__4 = _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29___closed__4);
l_Aesop_Frontend_Parser_feature_x28___x29___closed__5 = _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29___closed__5);
l_Aesop_Frontend_Parser_feature_x28___x29___closed__6 = _init_l_Aesop_Frontend_Parser_feature_x28___x29___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29___closed__6);
l_Aesop_Frontend_Parser_feature_x28___x29 = _init_l_Aesop_Frontend_Parser_feature_x28___x29();
lean_mark_persistent(l_Aesop_Frontend_Parser_feature_x28___x29);
l_Aesop_Frontend_instInhabitedFeature___closed__1 = _init_l_Aesop_Frontend_instInhabitedFeature___closed__1();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedFeature___closed__1);
l_Aesop_Frontend_instInhabitedFeature = _init_l_Aesop_Frontend_instInhabitedFeature();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedFeature);
l_Aesop_Frontend_Feature_elab___closed__1 = _init_l_Aesop_Frontend_Feature_elab___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Feature_elab___closed__1);
l_Aesop_Frontend_Feature_elab___closed__2 = _init_l_Aesop_Frontend_Feature_elab___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Feature_elab___closed__2);
l_Aesop_Frontend_Feature_elab___closed__3 = _init_l_Aesop_Frontend_Feature_elab___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Feature_elab___closed__3);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__1);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__2 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__2);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__3 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__3);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__4 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__4);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__5 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__5);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__6);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__7 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__7);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__8 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__8);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__9 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__9);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__10 = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__10();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot___closed__10);
l_Aesop_Frontend_Parser_Aesop_rule__expr_quot = _init_l_Aesop_Frontend_Parser_Aesop_rule__expr_quot();
lean_mark_persistent(l_Aesop_Frontend_Parser_Aesop_rule__expr_quot);
l_Lean_Parser_Category_Aesop_rule__expr = _init_l_Lean_Parser_Category_Aesop_rule__expr();
lean_mark_persistent(l_Lean_Parser_Category_Aesop_rule__expr);
l_Aesop_Frontend_Parser_rule__expr_____closed__1 = _init_l_Aesop_Frontend_Parser_rule__expr_____closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_____closed__1);
l_Aesop_Frontend_Parser_rule__expr_____closed__2 = _init_l_Aesop_Frontend_Parser_rule__expr_____closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_____closed__2);
l_Aesop_Frontend_Parser_rule__expr_____closed__3 = _init_l_Aesop_Frontend_Parser_rule__expr_____closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_____closed__3);
l_Aesop_Frontend_Parser_rule__expr__ = _init_l_Aesop_Frontend_Parser_rule__expr__();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr__);
l_Aesop_Frontend_Parser_rule__expr_________closed__1 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__1);
l_Aesop_Frontend_Parser_rule__expr_________closed__2 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__2);
l_Aesop_Frontend_Parser_rule__expr_________closed__3 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__3);
l_Aesop_Frontend_Parser_rule__expr_________closed__4 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__4);
l_Aesop_Frontend_Parser_rule__expr_________closed__5 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__5);
l_Aesop_Frontend_Parser_rule__expr_________closed__6 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__6);
l_Aesop_Frontend_Parser_rule__expr_________closed__7 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__7);
l_Aesop_Frontend_Parser_rule__expr_________closed__8 = _init_l_Aesop_Frontend_Parser_rule__expr_________closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr_________closed__8);
l_Aesop_Frontend_Parser_rule__expr______ = _init_l_Aesop_Frontend_Parser_rule__expr______();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr______);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__1 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__1();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__1);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__2);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__3 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__3();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__3);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__4 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__4();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__4);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__5 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__5();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__5);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__6 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__6();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__6);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__7 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__7();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__7);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__8 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__8();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__8);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__9 = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__9();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d___closed__9);
l_Aesop_Frontend_Parser_rule__expr___x5b___x5d = _init_l_Aesop_Frontend_Parser_rule__expr___x5b___x5d();
lean_mark_persistent(l_Aesop_Frontend_Parser_rule__expr___x5b___x5d);
l_Aesop_Frontend_instInhabitedRuleExpr___closed__1 = _init_l_Aesop_Frontend_instInhabitedRuleExpr___closed__1();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedRuleExpr___closed__1);
l_Aesop_Frontend_instInhabitedRuleExpr = _init_l_Aesop_Frontend_instInhabitedRuleExpr();
lean_mark_persistent(l_Aesop_Frontend_instInhabitedRuleExpr);
l_Aesop_Frontend_RuleExpr_elab___closed__1 = _init_l_Aesop_Frontend_RuleExpr_elab___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleExpr_elab___closed__1);
l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___closed__1 = _init_l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___closed__1();
lean_mark_persistent(l_Array_qsort_sort___at_Aesop_Frontend_RuleConfig_addFeature___spec__2___closed__1);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__3 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__3();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__3);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__4);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__5 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__5();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__5);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__6);
l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7 = _init_l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_addFeature___rarg___closed__7);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__3 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__3();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__3);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__4);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__5 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__5();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__5);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__6 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__6();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__6);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__7);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__8);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__9 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__9();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__9);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__10 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__10();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__10);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__11);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__12);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__13 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__13();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__13);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__14 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__14();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__14);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__15);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__16);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__17 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__17();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__17);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__18);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__19);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__20);
l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21 = _init_l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPenalty___rarg___closed__21);
l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__3 = _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__3();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__3);
l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4 = _init_l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getSuccessProbability___rarg___closed__4);
l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getSimpPriority___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getTerm___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getPhase___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_getBuilder___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__1 = _init_l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__1);
l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2 = _init_l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_buildGlobalRule___closed__2);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__1 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__1);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__2 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__2___closed__2);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__1 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__1);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__2 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__2);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__3 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__3();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__3);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__4 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__4();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__4);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__5 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__5();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__5);
l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__6 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__6();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___lambda__3___closed__6);
l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__1 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__1);
l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__2 = _init_l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_toRuleFilter___closed__2);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__1 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__1);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__2);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__3 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__3();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__3);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__4);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__5 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__5();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__5);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__6);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7___boxed__const__1 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7___boxed__const__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7___boxed__const__1);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__7);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__8);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__9);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules_getPhaseAndPriority___rarg___closed__10);
l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1 = _init_l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleConfig_validateForAdditionalRules___rarg___lambda__1___closed__1);
l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1 = _init_l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleExpr_toAdditionalGlobalRules___rarg___closed__1);
l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1 = _init_l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_buildAdditionalGlobalRules___spec__3___closed__1);
l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2___closed__1 = _init_l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2___closed__1();
lean_mark_persistent(l_Aesop_Frontend_RuleExpr_toRuleConfigs___at_Aesop_Frontend_RuleExpr_toAdditionalLocalRules___spec__2___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
