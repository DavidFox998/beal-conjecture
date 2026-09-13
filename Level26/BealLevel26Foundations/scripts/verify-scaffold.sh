#!/usr/bin/env bash
set -euo pipefail

test -f README.md
test -f docs/OPERA_NUMERORUM_LINKS.md
test -f docs/README.md
test -f docs/releases/README.md
test -f lean/README.md
test -f lean/Beal/README.md
test -f lean/Beal/Foundations/README.md
test -f lean/BealLevel26Foundations/README.md
test -f lean/BealLevel26Foundations/Frey/README.md
test -f lean/BealLevel26Foundations/Jacobian/README.md
test -f lean/BealLevel26Foundations/Mazur/README.md
test -f lean/BealLevel26Foundations/Real/README.md
test -f lean/BealLevel26Foundations/Ribet/README.md
test -f sagemath/README.md
test -f sagemath/certs/README.md
test -f scripts/README.md
test -f .github/README.md
test -f PLAN.md
test -f lean-toolchain
test -f lakefile.lean
test -f lean/BealLevel26Foundations.lean
test -f lean/BealLevel26Foundations/FiniteEvidence.lean
test -f lean/BealLevel26Foundations/CoefficientLedger_26.lean
test -f lean/BealLevel26Foundations/M3_Explicit.lean
test -f lean/BealLevel26Foundations/FiniteChecks_26.lean
test -f lean/BealLevel26Foundations/Scaffold.lean
test -f lean/BealLevel26Foundations/Frey/FreyConductorData_26.lean
test -f lean/BealLevel26Foundations/Mazur/Genus_26_Scaffold.lean
test -f lean/BealLevel26Foundations/Mazur/QExpansionCotangent_Scaffold_26.lean
test -f lean/BealLevel26Foundations/Real.lean
test -f lean/BealLevel26Foundations/Real/FreyWeierstrass.lean
test -f lean/BealLevel26Foundations/Real/Conductor_26_Unconditional.lean
test -f lean/BealLevel26Foundations/Frey/FreyConductorUnconditional_26.lean
test -f lean/BealLevel26Foundations/Frey/Conductor_26_Unconditional.lean
test -f lean/BealLevel26Foundations/AbelJacobiDifferential.lean
test -f lean/BealLevel26Foundations/Mazur/Genus_26_Real.lean
test -f lean/BealLevel26Foundations/Mazur/QExpansionCotangent_Real_26.lean
test -f CITATION.cff
test -f LICENSE
test -f docs/releases/v1.0.1-computable.md
test -f docs/releases/v1.3.0.md
test -f docs/releases/v1.4.0.md
test -f docs/releases/v2.0.0-frey.md
test -f docs/releases/v3.0.0-ribet.md
test -f docs/releases/v4.0.0-mazur.md
test -f docs/releases/v4.0.1-jacobian-skeleton.md
test -f docs/releases/v4.0.2-selmer.md
test -f docs/releases/v4.0.3-formal-immersion.md
test -f docs/releases/v4.0.4-x026-rational-points.md
test -f docs/releases/v4.0.5-nofrey-point.md
test -f docs/releases/v4.0.6-rank-zero-fixed.md
test -f docs/releases/v4.0.7-hIdentify.md
test -f docs/releases/v4.0.7-hIdentify-j.md
test -f docs/releases/v4.0.8-geom-forbid.md
test -f docs/releases/v4.0.9-fourCusps-forall.md
test -f docs/releases/v4.0.10-chabauty0-no-doi.md
test -f docs/releases/v4.0.11-residue-disks-no-doi.md
test -f docs/releases/v4.0.12-scheme-stub-no-doi.md
test -f docs/releases/v4.0.13-formal-immersion-proof-no-doi.md
test -f docs/releases/v4.0.14-coleman-integral-no-doi.md
test -f docs/releases/v4.0.15-lmfdb-certs-no-doi.md
test -f docs/releases/v4.1.0-descent-start.md
test -f docs/releases/v4.1.1-descent-compute.md
test -f docs/releases/v4.1.2-beal-13-endgame.md
test -f docs/releases/v4.1.3-beal-13-theorem.md
test -f docs/releases/v4.2.0-full-chain.md
test -f docs/releases/v4.2.1-chabauty-closes-typed.md
test -f docs/releases/v4.2.2-zenodo-trigger.md
test -f docs/releases/v4.3.0-final-forall-package.md
test -f docs/releases/v4.4.0-typed-refactor-true-close.md
test -f docs/releases/v4.5.0-forall-real.md
test -f docs/releases/v4.6.0-readmes-about.md
test -f docs/releases/v4.7.0-iter-typed-no-axioms-closing.md
test -f docs/releases/v4.8.0-iter-modularity-scaffold.md
test -f docs/releases/v4.9.0-iter-no-True-X0.md
test -f docs/releases/v4.10.0-iter-pari-locked.md
test -f docs/releases/v4.12.0-iter-verify-plus.md
test -f docs/releases/v4.13.0-iter-contradiction-start.md
test -f docs/releases/v4.13.1-iter-unstick.md
test -f docs/images/2-descent-level-26-26a1-26b1.webp
test -f lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
test -f lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
test -f docs/BealExponent13_Iter_Package.md
test -f certs/pari_x0_26_four_cusps.json
test -f docs/NEXT_STEPS.md
test -f lean/BealLevel26Foundations/Chain/X0_26_Point.lean
test -f docs/Chain/X0_26_Point.md
test -f docs/releases/v4.27.0-iter-X0-26-cusps-P-mem-locked.md
test -f docs/releases/v4.28.0-iter-zenodo-X0-26-cusps-metadata-mint.md
test -f docs/releases/v4.29.0-iter-readme-X0-26-22452680-locked.md
test -f docs/releases/v4.30.0-iter-zenodo-22456594-metadata-fix.md
test -f docs/Chain/README.md
test -f docs/Modularity/README.md
test -f docs/Mazur/README.md
test -f docs/Final/README.md
test -f docs/Final/BealExponent13_Forall.md
test -f lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean
test -f lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean
test -f lean/BealLevel26Foundations/Modularity/README.md
test -f docs/CHANGELOG.md
test -f lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
test -f lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
test -f lean/BealLevel26Foundations/Final/README.md
test -f lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
test -f lean/BealLevel26Foundations/Chain/README.md
test -f lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean
test -f lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
test -f lean/BealLevel26Foundations/Certs/Descent_26.json
test -f scripts/verify_descent_26.py
test -f lean/BealLevel26Foundations/Descent/README.md
test -f lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
test -f lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
test -f lean/BealLevel26Foundations/Descent/Selmer_26.lean
test -f lean/BealLevel26Foundations/Blueprint/README.md
test -f lean/BealLevel26Foundations/Certs/LMFDB_26.json
test -f lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
test -f scripts/fetch_LMFDB.py
test -f scripts/verify_lmfdb_26.py
test -f lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean
test -f lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean
test -f lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean
test -f lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean
test -f lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean
test -f lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean
test -f lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean
test -f lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean
test -f lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
test -f lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
test -f lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
test -f lean/Beal/Foundations/EndgameScaffold.lean
test -f lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
test -f lean/BealLevel26Foundations/Jacobian/PicardAbelJacobiIdentification_26.lean
test -f lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
test -f lean/BealLevel26Foundations/Real/LevelLowering_26.lean
test -f lean/Beal/Foundations/LevelLowering_26.lean
test -f sagemath/level_26_ledger.json
test -f sagemath/foundations_doi_manifest.json
test -f sagemath/certs/j0_26_decomposition.json
test -f sagemath/certs/formal_immersion_M3.json
test -f sagemath/j0_26_decomp_foundation.sage
test -f sagemath/j0_26_decomp_foundations.sage
test -f sagemath/formal_immersion_M3.sage
test -f lean/Beal/Foundations.lean
test -f lean/Beal.lean
test -f lean/Beal/Foundations/J0_26_Decomp.lean
test -f lean/Beal/Foundations/J0DecompositionCertificate.lean
test -f lean/Beal/Foundations/FormalImmersionM3.lean
test -f lean/Beal/Foundations/FormalImmersionM3Certificate.lean
test -f lean/BealLevel26Foundations/GaloisRep/FreyGaloisRepReal.lean
test -f lean/BealLevel26Foundations/GaloisRep/FreyDeltaSeparated.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean
test -f lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/HeckeAction.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixedCore.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed_5_100.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed_901_1000.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/X0_2_Genus.lean
test -f docs/Beal/X0_2_Genus.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Size_Table.lean
test -f certs/Beal_4_13_13_Size_Table.lean
test -f lean/BealLevel26Foundations/Beal_4_13_13_Size_C_ge_B_plus_2.lean
test -f certs/Beal_4_13_13_Size_C_ge_B_plus_2_Table.lean
test -f docs/Beal/Beal_4_13_13_Size_C_ge_B_plus_2.md
test -f docs/Beal/Beal_4_13_13_Size.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step4.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step7_General_k.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.md
test -f lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/B14Witnesses.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/Step60B14List.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
test -f docs/Beal/Beal_4_13_13_Zsigmondy_Density_2M.md
test -f docs/Beal/KrausB14.md
test -f docs/Beal/LevelLoweringB14.md
test -f docs/Beal/BealFreyB14.md
test -f docs/Beal/BealFreyASearch.md
test -f docs/Beal/BealFreyMod53Kill.md
test -f docs/Beal/BealFreyModQKill.md
test -f docs/Beal/BealFreyConductorGeneral.md
test -f docs/Beal/BealGap3ZsigBeyond2M.md
test -f docs/Beal/BealGap3BakerUpperBound.md
test -f docs/Beal/BealBakerB0Certificate.md
test -f docs/Beal/BealBakerB0ReductionCertificate.md
test -f docs/Beal/BealMatveevConstants.md
test -f docs/Beal/BealMatveevInequality.md
test -f docs/Beal/BealMatveevInequalityReal.md
test -f docs/Beal/BealBakerBoundGap3.md
test -f docs/Beal/BealMatveevThm14.md
test -f docs/Beal/BealBugeaudLLLFormal.md
test -f docs/Beal/BealFreyTateConductor.md
test -f docs/Beal/BealLevel26ModularElimination.md
test -f lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
test -f docs/Beal/Level26_Newforms.md
test -f lean/BealLevel26Foundations/Beal/FullProof.lean
test -f docs/Beal/TrueConductor.md
test -f docs/Beal/ModularityRibet.md
test -f docs/Beal/GeometryBridge.md
test -f docs/Beal/BealForallProof.md
test -f docs/Beal/ModularImpliesNewform.md
test -f docs/Beal/GeometryScheme.md
test -f docs/Beal/HeckeAlgebra.md
test -f docs/Beal/RibetFunctor.md
test -f docs/Beal/X0_26_Model.md
test -f docs/Beal/HeckeAction.md
test -f docs/Beal/LevelLowering.md
test -f docs/Beal/RibetMazur.md
test -f lean/BealLevel26Foundations/Tate/RealTateAlgorithm.lean
test -f lean/BealLevel26Foundations/RT/PatchingWitnessReal.lean
test -f lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean

grep -q "def rho_bar_Frey_13_real_algorithm_inhabited" \
  lean/BealLevel26Foundations/GaloisRep/FreyGaloisRepReal.lean
grep -q "def frey_Delta13_formula" \
  lean/BealLevel26Foundations/GaloisRep/FreyDeltaSeparated.lean
grep -q "theorem frey_Delta13_ne_0_of_pos_real" \
  lean/BealLevel26Foundations/GaloisRep/FreyDeltaSeparated.lean
grep -q "def FreyGaloisRep13_real_algorithm_inhabited_separated" \
  lean/BealLevel26Foundations/GaloisRep/FreyDeltaSeparated.lean
grep -q "def beal_forall_in_kernel_from_delta_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def cyclotomicCharacter13" \
  lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean
grep -q "def frey_det_eq_cyclotomic_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean
grep -q "def frey_det_eq_cyclotomic_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_det" \
  lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean
grep -q "def FreyCurveSeparated_det.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean
grep -q "def beal_forall_in_kernel_from_det_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def frey_unramified_outside_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean
grep -q "def frey_semistable_at_2_13_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean
grep -q "def frey_unramified_outside_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_unramified" \
  lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean
grep -q "def FreyCurveSeparated_unramified.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean
grep -q "def beal_forall_in_kernel_from_unramified_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def frey_finite_flat_at_13_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean
grep -q "def frey_finite_flat_at_13_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_finite_flat" \
  lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean
grep -q "def FreyCurveSeparated_finite_flat.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean
grep -q "def beal_forall_in_kernel_from_finite_flat_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def ribet_level_26_div_13_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
grep -q "def frey_ribet_level_lowering_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
grep -q "def frey_ribet_level_lowering_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
grep -q "def frey_modularity_at_26_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_ribet" \
  lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
grep -q "def FreyCurveSeparated_ribet.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean
grep -q "def beal_forall_in_kernel_from_ribet_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def frey_TW_primes_Q_n_real_infinite_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
grep -q "def frey_R_T_patching_witness_real_infinite_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
grep -q "def frey_modular_lifting_at_26_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
grep -q "def frey_modular_lifting_at_26_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting" \
  lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
grep -q "def FreyCurveSeparated_modular_lifting.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean
grep -q "def beal_forall_in_kernel_from_modular_lifting_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def frey_exists_newform_level_2_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean
grep -q "def frey_exists_newform_level_2_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean
grep -q "def ExistsNewformLevel2_real_witness" \
  lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_exists_newform" \
  lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean
grep -q "def FreyCurveSeparated_exists_newform.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean
grep -q "def beal_forall_in_kernel_from_exists_newform_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def frey_beal_forall_closed_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean
grep -q "def frey_beal_forall_closed_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean
grep -q "def BealForall_real_witness" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean
grep -q "def FreyCurveSeparated_beal_forall_closed.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean
grep -q "def beal_forall_in_kernel_from_beal_forall_closed_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def frey_beal_forall_none_formula" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean
grep -q "def frey_beal_forall_none_real_lemma" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean
grep -q "def BealForall_real_witness_none" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean
grep -q "def rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean
grep -q "def FreyCurveSeparated_beal_forall_none.token" \
  lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean
grep -q "def beal_forall_in_kernel_from_beal_forall_none_separated" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def beal_forall_in_kernel_from_beal_forall_none_separated_none" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def beal_forall_from_none_formula_displayed" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "theorem tate_real_conductor_26" \
  lean/BealLevel26Foundations/Tate/RealTateAlgorithm.lean
grep -q "def R_T_patching_witness_real" \
  lean/BealLevel26Foundations/RT/PatchingWitnessReal.lean
grep -q "def R_T_patching_witness_real_infinite" \
  lean/BealLevel26Foundations/RT/PatchingWitnessReal.lean
grep -q "def TW_primes_Q_n_real_infinite" \
  lean/BealLevel26Foundations/RT/PatchingWitnessReal.lean
grep -q "def Q_1" \
  lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean
grep -q "def Q_2" \
  lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean
grep -q "def ChebotarevToken" \
  lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean
grep -q "def TW_infinite_family_exists" \
  lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean
grep -q "def beal_forall_in_kernel_from_real_algorithms" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
grep -q "def beal_forall_in_kernel_from_infinite_TW" \
  lean/BealLevel26Foundations/Chain/BealForallInKernel.lean
if grep -nE \
    '^import[[:space:]]+(BealLevel26Foundations\.Final|BealLevel26Foundations\.Mazur\.BealTheoremFromMazurChain26|BealLevel26Foundations\.Chain\.PathLock|BealLevel26Foundations\.Chain\.BealForallInKernel|BealLevel26Foundations\.Beal\.BealForall)' \
    lean/BealLevel26Foundations/GaloisRep/FreyGaloisRepReal.lean \
    lean/BealLevel26Foundations/GaloisRep/FreyDeltaSeparated.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/Tate/RealTateAlgorithm.lean \
    lean/BealLevel26Foundations/RT/PatchingWitnessReal.lean \
    lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean; then
  echo "FAIL: real-algorithm modules must not import Forall / Mazur / PathLock / kernel (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/FreyDeltaSeparated.lean; then
  echo "FAIL: FreyDeltaSeparated must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisDetCyclotomicReal.lean; then
  echo "FAIL: GaloisDetCyclotomicReal must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean; then
  echo "FAIL: GaloisUnramifiedSemistableReal must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisUnramifiedSemistableReal.lean; then
  echo "FAIL: GaloisUnramifiedSemistableReal must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean; then
  echo "FAIL: GaloisFiniteFlatAt13Real must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisFiniteFlatAt13Real.lean; then
  echo "FAIL: GaloisFiniteFlatAt13Real must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean; then
  echo "FAIL: GaloisRibetModularityAt26Real must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisRibetModularityAt26Real.lean; then
  echo "FAIL: GaloisRibetModularityAt26Real must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean; then
  echo "FAIL: GaloisModularLiftingAt26Real must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean; then
  echo "FAIL: GaloisModularLiftingAt26Real must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.RT.PatchingWitnessReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisModularLiftingAt26Real.lean; then
  echo "FAIL: GaloisModularLiftingAt26Real must not import PatchingWitnessReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean; then
  echo "FAIL: GaloisExistsNewformLevel2Real must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean; then
  echo "FAIL: GaloisExistsNewformLevel2Real must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.RT.PatchingWitnessReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean; then
  echo "FAIL: GaloisExistsNewformLevel2Real must not import PatchingWitnessReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Chain.Level2" \
    lean/BealLevel26Foundations/GaloisRep/GaloisExistsNewformLevel2Real.lean; then
  echo "FAIL: GaloisExistsNewformLevel2Real must not import Level2 (false-label lock)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean; then
  echo "FAIL: GaloisBealForallClosedReal must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean; then
  echo "FAIL: GaloisBealForallClosedReal must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.RT.PatchingWitnessReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean; then
  echo "FAIL: GaloisBealForallClosedReal must not import PatchingWitnessReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Chain.Level2" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean; then
  echo "FAIL: GaloisBealForallClosedReal must not import Level2 (false-label lock)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean; then
  echo "FAIL: GaloisBealForallNoneReal must not import FreyGaloisRepReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Tate.RealTateAlgorithm" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean; then
  echo "FAIL: GaloisBealForallNoneReal must not import Tate (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.RT.PatchingWitnessReal" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean; then
  echo "FAIL: GaloisBealForallNoneReal must not import PatchingWitnessReal (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Chain.Level2" \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean; then
  echo "FAIL: GaloisBealForallNoneReal must not import Level2 (false-label lock)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.RT.PatchingWitnessReal" \
    lean/BealLevel26Foundations/RT/TaylorWilesInfiniteFamily.lean; then
  echo "FAIL: TaylorWilesInfiniteFamily must not import PatchingWitnessReal (cycle)"
  exit 1
fi

grep -q "v1.0.1" README.md
grep -q "v1.3.0" README.md
grep -q "v1.4.0" README.md
grep -q "v2.0.0" README.md
grep -q "v2.0.0-frey" README.md
grep -q "v3.0.0" README.md
grep -q "v3.0.0-ribet" README.md
grep -q "v4.0.0" README.md
grep -q "v4.0.0-mazur" README.md
grep -q "v4.0.1-jacobian-skeleton" README.md
grep -q "v4.0.2-selmer" README.md
grep -q "v4.0.3-formal-immersion" README.md
grep -q "v4.0.4-x026-rational-points" README.md
grep -q "v4.0.5-nofrey-point" README.md
grep -q "v4.0.6-rank-zero-fixed" README.md
grep -q "v4.0.7-hIdentify" README.md
grep -q "v4.0.7-hIdentify-j" README.md
grep -q "v4.0.8-geom-forbid" README.md
grep -q "v4.0.9-fourCusps-forall" README.md
grep -q "v4.0.10-chabauty0-no-doi" README.md
grep -q "v4.0.11-residue-disks-no-doi" README.md
grep -q "v4.0.12-scheme-stub-no-doi" README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" README.md
grep -q "v4.0.14-coleman-integral-no-doi" README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" README.md
grep -q "v4.1.0-descent-start" README.md
grep -q "v4.1.1-descent-compute" README.md
grep -q "v4.1.2-beal-13-endgame" README.md
grep -q "v4.1.3-beal-13-theorem" README.md
grep -q "v4.2.0-full-chain" README.md
grep -q "v4.2.1-chabauty-closes-typed" README.md
grep -q "v4.2.2-zenodo-trigger" README.md
grep -q "v4.3.0-final-forall-package" README.md
grep -q "v4.4.0-typed-refactor-true-close" README.md
grep -q "v4.5.0-forall-real" README.md
grep -q "v4.6.0-readmes-about" README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" README.md
grep -q "v4.8.0-iter-modularity-scaffold" README.md
grep -q "v4.9.0-iter-no-True-X0" README.md
grep -q "v4.10.0-iter-pari-locked" README.md
grep -q "v4.12.0-iter-verify-plus" README.md
grep -q "v4.13.0-iter-contradiction-start" README.md
grep -q "v4.13.1-iter-unstick" README.md
grep -q "v4.0.3-formal-immersion" docs/README.md
grep -q "v4.0.4-x026-rational-points" docs/README.md
grep -q "v4.0.5-nofrey-point" docs/README.md
grep -q "v4.0.6-rank-zero-fixed" docs/README.md
grep -q "v4.0.7-hIdentify" docs/README.md
grep -q "v4.0.7-hIdentify-j" docs/README.md
grep -q "v4.0.8-geom-forbid" docs/README.md
grep -q "v4.0.9-fourCusps-forall" docs/README.md
grep -q "v4.0.10-chabauty0-no-doi" docs/README.md
grep -q "v4.0.11-residue-disks-no-doi" docs/README.md
grep -q "v4.0.12-scheme-stub-no-doi" docs/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" docs/README.md
grep -q "v4.0.14-coleman-integral-no-doi" docs/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" docs/README.md
grep -q "v4.1.0-descent-start" docs/README.md
grep -q "v4.1.1-descent-compute" docs/README.md
grep -q "v4.1.2-beal-13-endgame" docs/README.md
grep -q "v4.1.3-beal-13-theorem" docs/README.md
grep -q "v4.2.0-full-chain" docs/README.md
grep -q "v4.2.1-chabauty-closes-typed" docs/README.md
grep -q "v4.2.2-zenodo-trigger" docs/README.md
grep -q "v4.3.0-final-forall-package" docs/README.md
grep -q "v4.4.0-typed-refactor-true-close" docs/README.md
grep -q "v4.5.0-forall-real" docs/README.md
grep -q "v4.6.0-readmes-about" docs/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" docs/README.md
grep -q "v4.8.0-iter-modularity-scaffold" docs/README.md
grep -q "v4.9.0-iter-no-True-X0" docs/README.md
grep -q "v4.10.0-iter-pari-locked" docs/README.md
grep -q "v4.12.0-iter-verify-plus" docs/README.md
grep -q "v4.13.0-iter-contradiction-start" docs/README.md
grep -q "v4.13.1-iter-unstick" docs/README.md
grep -q "v4.0.3-formal-immersion" docs/releases/README.md
grep -q "v4.0.4-x026-rational-points" docs/releases/README.md
grep -q "v4.0.5-nofrey-point" docs/releases/README.md
grep -q "v4.0.6-rank-zero-fixed" docs/releases/README.md
grep -q "v4.0.7-hIdentify" docs/releases/README.md
grep -q "v4.0.7-hIdentify-j" docs/releases/README.md
grep -q "v4.0.8-geom-forbid" docs/releases/README.md
grep -q "v4.0.9-fourCusps-forall" docs/releases/README.md
grep -q "v4.0.10-chabauty0-no-doi" docs/releases/README.md
grep -q "v4.0.11-residue-disks-no-doi" docs/releases/README.md
grep -q "v4.0.12-scheme-stub-no-doi" docs/releases/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" docs/releases/README.md
grep -q "v4.0.14-coleman-integral-no-doi" docs/releases/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" docs/releases/README.md
grep -q "v4.1.0-descent-start" docs/releases/README.md
grep -q "v4.1.1-descent-compute" docs/releases/README.md
grep -q "v4.1.2-beal-13-endgame" docs/releases/README.md
grep -q "v4.1.3-beal-13-theorem" docs/releases/README.md
grep -q "v4.2.0-full-chain" docs/releases/README.md
grep -q "v4.2.1-chabauty-closes-typed" docs/releases/README.md
grep -q "v4.2.2-zenodo-trigger" docs/releases/README.md
grep -q "v4.3.0-final-forall-package" docs/releases/README.md
grep -q "v4.4.0-typed-refactor-true-close" docs/releases/README.md
grep -q "v4.5.0-forall-real" docs/releases/README.md
grep -q "v4.6.0-readmes-about" docs/releases/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" docs/releases/README.md
grep -q "v4.8.0-iter-modularity-scaffold" docs/releases/README.md
grep -q "v4.9.0-iter-no-True-X0" docs/releases/README.md
grep -q "v4.10.0-iter-pari-locked" docs/releases/README.md
grep -q "v4.12.0-iter-verify-plus" docs/releases/README.md
grep -q "v4.13.0-iter-contradiction-start" docs/releases/README.md
grep -q "v4.13.1-iter-unstick" docs/releases/README.md
grep -q "v4.0.3-formal-immersion" lean/README.md
grep -q "v4.0.4-x026-rational-points" lean/README.md
grep -q "v4.0.5-nofrey-point" lean/README.md
grep -q "v4.0.6-rank-zero-fixed" lean/README.md
grep -q "v4.0.7-hIdentify" lean/README.md
grep -q "v4.0.7-hIdentify-j" lean/README.md
grep -q "v4.0.8-geom-forbid" lean/README.md
grep -q "v4.0.9-fourCusps-forall" lean/README.md
grep -q "v4.0.10-chabauty0-no-doi" lean/README.md
grep -q "v4.0.11-residue-disks-no-doi" lean/README.md
grep -q "v4.0.12-scheme-stub-no-doi" lean/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" lean/README.md
grep -q "v4.0.14-coleman-integral-no-doi" lean/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" lean/README.md
grep -q "v4.1.0-descent-start" lean/README.md
grep -q "v4.1.1-descent-compute" lean/README.md
grep -q "v4.1.2-beal-13-endgame" lean/README.md
grep -q "v4.1.3-beal-13-theorem" lean/README.md
grep -q "v4.2.0-full-chain" lean/README.md
grep -q "v4.2.1-chabauty-closes-typed" lean/README.md
grep -q "v4.2.2-zenodo-trigger" lean/README.md
grep -q "v4.3.0-final-forall-package" lean/README.md
grep -q "v4.4.0-typed-refactor-true-close" lean/README.md
grep -q "v4.5.0-forall-real" lean/README.md
grep -q "v4.6.0-readmes-about" lean/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" lean/README.md
grep -q "v4.8.0-iter-modularity-scaffold" lean/README.md
grep -q "v4.9.0-iter-no-True-X0" lean/README.md
grep -q "v4.10.0-iter-pari-locked" lean/README.md
grep -q "v4.12.0-iter-verify-plus" lean/README.md
grep -q "v4.13.0-iter-contradiction-start" lean/README.md
grep -q "v4.13.1-iter-unstick" lean/README.md
grep -q "v4.0.3-formal-immersion" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.6-rank-zero-fixed" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.7-hIdentify" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.7-hIdentify-j" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.8-geom-forbid" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.9-fourCusps-forall" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.10-chabauty0-no-doi" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.11-residue-disks-no-doi" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.12-scheme-stub-no-doi" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.14-coleman-integral-no-doi" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.1.0-descent-start" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.1.1-descent-compute" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.1.2-beal-13-endgame" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.1.3-beal-13-theorem" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.2.0-full-chain" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.2.1-chabauty-closes-typed" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.2.2-zenodo-trigger" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.3.0-final-forall-package" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.4.0-typed-refactor-true-close" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.5.0-forall-real" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.6.0-readmes-about" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.8.0-iter-modularity-scaffold" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.9.0-iter-no-True-X0" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.10.0-iter-pari-locked" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.12.0-iter-verify-plus" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.13.0-iter-contradiction-start" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.13.1-iter-unstick" lean/BealLevel26Foundations/Jacobian/README.md
grep -q "v4.0.4-x026-rational-points" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.6-rank-zero-fixed" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.7-hIdentify" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.7-hIdentify-j" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.8-geom-forbid" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.9-fourCusps-forall" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.10-chabauty0-no-doi" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.11-residue-disks-no-doi" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.12-scheme-stub-no-doi" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.14-coleman-integral-no-doi" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.1.0-descent-start" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.1.1-descent-compute" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.1.2-beal-13-endgame" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.1.3-beal-13-theorem" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.2.0-full-chain" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.2.1-chabauty-closes-typed" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.2.2-zenodo-trigger" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.3.0-final-forall-package" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.4.0-typed-refactor-true-close" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.5.0-forall-real" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.6.0-readmes-about" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.8.0-iter-modularity-scaffold" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.9.0-iter-no-True-X0" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.10.0-iter-pari-locked" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.12.0-iter-verify-plus" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.13.0-iter-contradiction-start" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.13.1-iter-unstick" lean/BealLevel26Foundations/Mazur/README.md
grep -q "v4.0.5-nofrey-point" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.6-rank-zero-fixed" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.7-hIdentify" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.7-hIdentify-j" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.8-geom-forbid" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.9-fourCusps-forall" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.10-chabauty0-no-doi" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.11-residue-disks-no-doi" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.12-scheme-stub-no-doi" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.14-coleman-integral-no-doi" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.1.0-descent-start" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.1.1-descent-compute" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.1.2-beal-13-endgame" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.1.3-beal-13-theorem" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.2.0-full-chain" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.2.1-chabauty-closes-typed" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.2.2-zenodo-trigger" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.3.0-final-forall-package" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.4.0-typed-refactor-true-close" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.5.0-forall-real" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.6.0-readmes-about" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.8.0-iter-modularity-scaffold" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.9.0-iter-no-True-X0" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.10.0-iter-pari-locked" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.12.0-iter-verify-plus" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.13.0-iter-contradiction-start" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.13.1-iter-unstick" lean/BealLevel26Foundations/Ribet/README.md
grep -q "v4.0.6-rank-zero-fixed" sagemath/README.md
grep -q "v4.0.7-hIdentify" sagemath/README.md
grep -q "v4.0.7-hIdentify-j" sagemath/README.md
grep -q "v4.0.8-geom-forbid" sagemath/README.md
grep -q "v4.0.9-fourCusps-forall" sagemath/README.md
grep -q "v4.0.10-chabauty0-no-doi" sagemath/README.md
grep -q "v4.0.11-residue-disks-no-doi" sagemath/README.md
grep -q "v4.0.12-scheme-stub-no-doi" sagemath/README.md
grep -q "v4.0.13-formal-immersion-proof-no-doi" sagemath/README.md
grep -q "v4.0.14-coleman-integral-no-doi" sagemath/README.md
grep -q "v4.0.15-lmfdb-certs-no-doi" sagemath/README.md
grep -q "v4.1.0-descent-start" sagemath/README.md
grep -q "v4.1.1-descent-compute" sagemath/README.md
grep -q "v4.1.2-beal-13-endgame" sagemath/README.md
grep -q "v4.1.3-beal-13-theorem" sagemath/README.md
grep -q "v4.2.0-full-chain" sagemath/README.md
grep -q "v4.2.1-chabauty-closes-typed" sagemath/README.md
grep -q "v4.2.2-zenodo-trigger" sagemath/README.md
grep -q "v4.3.0-final-forall-package" sagemath/README.md
grep -q "v4.4.0-typed-refactor-true-close" sagemath/README.md
grep -q "v4.5.0-forall-real" sagemath/README.md
grep -q "v4.6.0-readmes-about" sagemath/README.md
grep -q "v4.7.0-iter-typed-no-axioms-closing" sagemath/README.md
grep -q "v4.8.0-iter-modularity-scaffold" sagemath/README.md
grep -q "v4.9.0-iter-no-True-X0" sagemath/README.md
grep -q "v4.10.0-iter-pari-locked" sagemath/README.md
grep -q "v4.12.0-iter-verify-plus" sagemath/README.md
grep -q "v4.13.0-iter-contradiction-start" sagemath/README.md
grep -q "v4.13.1-iter-unstick" sagemath/README.md
for readme in \
  README.md \
  docs/README.md \
  lean/README.md \
  lean/BealLevel26Foundations/README.md \
  lean/BealLevel26Foundations/Chain/README.md \
  lean/BealLevel26Foundations/Final/README.md \
  lean/BealLevel26Foundations/Mazur/README.md \
  lean/BealLevel26Foundations/Certs/README.md
do
  grep -q "v4.6.0-readmes-about" "$readme"
  grep -q "v4.7.0-iter-typed-no-axioms-closing" "$readme"
  grep -q "v4.8.0-iter-modularity-scaffold" "$readme"
  grep -q "v4.9.0-iter-no-True-X0" "$readme"
  grep -q "v4.10.0-iter-pari-locked" "$readme"
  grep -q "v4.12.0-iter-verify-plus" "$readme"
  grep -q "v4.13.0-iter-contradiction-start" "$readme"
  grep -q "v4.13.1-iter-unstick" "$readme"
  grep -q "BealExponent13_Iter_Package" "$readme"
  grep -q "d3cf8a7" "$readme"
  grep -q "1d0044e" "$readme"
  grep -q "hNotIn hInList" "$readme"
  grep -q "depends on no axioms" "$readme"
  grep -q "not \`∀ ℕ\`" "$readme"
  grep -q "no \`False.elim\`" "$readme"
  grep -q "22452680" "$readme"
  grep -q "22456594" "$readme"
  grep -q "v6.0.0-iter-real-algorithms" "$readme"
  grep -q "v6.0.1-iter-about-catchup-22558788" "$readme"
  grep -q "v6.1.0-iter-tw-infinite-family" "$readme"
  grep -q "v6.1.1-iter-about-catchup-22559449" "$readme"
  grep -q "v6.2.0-iter-frey-delta-separated" "$readme"
  grep -q "v6.2.1-iter-about-catchup-22562014" "$readme"
  grep -q "v6.3.0-iter-det-cyclotomic-real" "$readme"
  grep -q "v6.3.1-iter-about-catchup-22565376" "$readme"
  grep -q "v6.4.0-iter-unramified-semistable-real" "$readme"
  grep -q "v6.4.1-iter-about-catchup-22572211" "$readme"
  grep -q "v6.5.0-iter-finite-flat-at-13-real" "$readme"
  grep -q "v6.5.1-iter-about-catchup-22582199" "$readme"
  grep -q "v6.6.0-iter-ribet-modularity-at-26-real" "$readme"
  grep -q "v6.6.1-iter-about-catchup-22587409" "$readme"
  grep -q "v6.7.0-iter-modular-lifting-at-26-real" "$readme"
  grep -q "v6.7.1-iter-about-catchup-22592524" "$readme"
  grep -q "v6.8.0-iter-exists-newform-level-2-real" "$readme"
  grep -q "v6.8.1-iter-about-catchup-22602899-relook" "$readme"
  grep -q "v6.9.0-iter-beal-forall-closed-real" "$readme"
  grep -q "v6.9.1-iter-about-catchup-22611775-relook" "$readme"
  grep -q "v7.0.0-iter-beal-forall-none-real" "$readme"
  grep -q "v7.0.1-iter-about-catchup-22618433-relook" "$readme"
  grep -q "v7.1.0-iter-beal-forall-kernel-separated-none-real" "$readme"
  grep -q "v7.1.1-iter-about-catchup-22632209-relook" "$readme"
  grep -q "v7.1.2-iter-readme-uniform-opera-links" "$readme"
  grep -q "v7.1.3-iter-beal-not-route-e-corrected" "$readme"
  grep -q "v7.2.0-step1-true-conductor-scaffold" "$readme"
  grep -q "v7.2.1-tate-filled" "$readme"
  grep -q "v7.3.0-ribet-rt-filled" "$readme"
  grep -q "v7.4.0-geometry-filled" "$readme"
  grep -q "v8.0.0-beal-forall-proof" "$readme"
  grep -q "v8.1.0-modular-implies-newform" "$readme"
  grep -q "v8.2.0-scheme-hecke-ribet" "$readme"
  grep -q "v8.3.0-explicit-X0-26" "$readme"
  grep -q "v8.4.0-formal-immersion" "$readme"
  grep -q "v8.5.0-cotangent-sheaf" "$readme"
  grep -q "v8.6.0-level-lowering-term" "$readme"
  grep -q "v8.7.0-ribet-q-mazur" "$readme"
  grep -q "v8.8.0-ribet-proof" "$readme"
  grep -q "v8.9.0-explicit-J0N" "$readme"
  grep -q "v8.10.0-frey-aq-pm1-real" "$readme"
  grep -q "v8.11.0-frey-ell-case" "$readme"
  grep -q "v8.12.0-fermat-four-plus-RinfTinf-ell" "$readme"
  grep -q "v8.13.0-mixed-ell-plus-dirichlet" "$readme"
  grep -q "v8.14.0-mixed-odd-A" "$readme"
  grep -q "v8.15.0-dirichlet-up-to-1000" "$readme"
  grep -q "v8.16.0-q2-table-100M" "$readme"
  grep -q "v8.17.0-twaux-26-and-10000" "$readme"
  grep -q "v8.18.0-product" "$readme"
  grep -q "v8.19.0-ExistsNewformLevel2" "$readme"
  grep -q "v8.19.1-beal-4-13-13-size" "$readme"
  grep -q "v8.19.2-C-ge-B+2" "$readme"
  grep -q "v8.19.3-zsigmondy-13" "$readme"
  grep -q "v8.19.4-zsigmondy-13-step4" "$readme"
  grep -q "v8.19.5-p-mod-13-eq-1" "$readme"
  grep -q "v8.19.6-B-le-100-closed" "$readme"
  grep -q "v8.19.7-general-k" "$readme"
  grep -q "v8.19.8-k-odd-coprime" "$readme"
  grep -q "v8.19.9-fourth-pow-residue" "$readme"
  grep -q "v8.19.9-fourth-power-residue" "$readme"
  grep -q "v8.20.0-k-upper-bound-plan" "$readme"
  grep -q "v8.20.0-upper-bound-k" "$readme"
  grep -q "v8.20.1-B-le-100-closed" "$readme"
  grep -q "v8.21.0-B-gt-100-bounded-k" "$readme"
  grep -q "v8.21.1-Modular-W-lift-last-lock" "$readme"
  grep -q "v8.22.0-X0-26-RibetMazur-plan" "$readme"
  grep -q "v8.22.1-X0-2q-Darmon-Merel-plan" "$readme"
  grep -q "v8.23.0-odd-A-closure-plan" "$readme"
  grep -q "v8.23.1-Zsigmondy-S-vp1-plan" "$readme"
  grep -q "v8.24.0-Zsigmondy-primitive-vp1-inhabited" "$readme"
  grep -q "v8.24.1-odd-A-closed-for-real" "$readme"
  grep -q "v8.25.0-Hensel-dichotomy-S-not-fourth-plan" "$readme"
  grep -q "v8.26.0-exists-p-order-ne-13-plan" "$readme"
  grep -q "v8.27.0-two-primitive-primes-counting-plan" "$readme"
  grep -q "v8.28.0-Phi13-Zeta13-prime-ideal-plan" "$readme"
  grep -q "v8.29.0-Phi13-derivative-LTE-plan" "$readme"
  grep -q "v8.30.0-Chebotarev-lift-density-plan" "$readme"
  grep -q "v8.31.0-S-not-prime-power-gap3-fast-track" "$readme"
  grep -q "v8.32.0-S-not-proper-prime-power-gap3" "$readme"
  grep -q "v8.33.0-S-has-prime-with-exp-one-gap3" "$readme"
  grep -q "v8.34.0-B-le-100-exp-one-table" "$readme"
  grep -q "v8.35.0-S-not-proper-power-B-le-100-from-exp-one" "$readme"
  grep -q "v8.36.0-B-le-100-order-ne-13-from-exp-one" "$readme"
  grep -q "v8.37.0-B-le-1000-exp-one-extension" "$readme"
  grep -q "v8.38.0-B-le-10000-exp-one-extension" "$readme"
  grep -q "v8.39.0-B-le-50000-exp-one-real-witnesses" "$readme"
  grep -q "v8.40.0-B-gt-50000-rad-bound" "$readme"
  grep -q "v8.41.0-Kraus-X0-26-elimination" "$readme"
  grep -q "v8.42.0-B-le-100k-extension" "$readme"
  grep -q "v8.43.0-Kraus-p3-elim-26b1" "$readme"
  grep -q "v8.44.0-Kraus-p5-elim-26a1" "$readme"
  grep -q "v8.45.0-level-lowering-26-to-2" "$readme"
  grep -q "v8.46.0-B-le-200k-600-rows" "$readme"
  grep -q "v8.47.0-B-200k-outlier-12186951011" "$readme"
  grep -q "v8.48.0-B-le-300k-900-rows" "$readme"
  grep -q "v8.49.0-B-le-400k-1199-rows" "$readme"
  grep -q "v8.50.0-B-le-500k-1498-rows" "$readme"
  grep -q "v8.51.0-B-le-600k-1797-rows" "$readme"
  grep -q "v8.52.0-B-le-700k-2096-rows" "$readme"
  grep -q "v8.53.0-B-le-800k-2395-rows" "$readme"
  grep -q "v8.54.0-B-le-900k-2694-rows" "$readme"
  grep -q "v8.55.0-B-le-1000k-2993-rows" "$readme"
  grep -q "v8.56.0-B-le-1100k-3292-rows" "$readme"
  grep -q "v8.57.0-B-le-1200k-3591-rows" "$readme"
  grep -q "v8.58.0-B-le-1300k-3890-rows" "$readme"
  grep -q "v8.59.0-B-le-1400k-4189-rows" "$readme"
  grep -q "v8.60.0-B-le-1500k-4488-rows" "$readme"
  grep -q "v8.61.0-B-le-1600k-4787-rows" "$readme"
  grep -q "v8.62.0-B-le-1700k-5086-rows" "$readme"
  grep -q "v8.63.0-B-le-1800k-5385-rows" "$readme"
  grep -q "v8.64.0-B-le-1900k-5684-rows" "$readme"
  grep -q "v8.65.0-B-le-2000k-5983-rows" "$readme"
  grep -q "v8.66.0-B-le-2000k-density-capstone" "$readme"
  grep -q "v8.67.0-level26-newforms-skeleton" "$readme"
  grep -q "v8.68.0-kraus-elim-53-443" "$readme"
  grep -q "v8.68.1-frey-ap-53-443" "$readme"
  grep -q "v8.69.0-kraus-elim-theorem" "$readme"
  grep -q "v8.71.0-ribet-mazur-pack" "$readme"
  grep -q "v8.73.0-modularity-exists-level2" "$readme"
  grep -q "v8.74.0-frey-irreducible-mod13" "$readme"
  grep -q "v8.75.0-first-honest-beal-rows" "$readme"
done
test -f docs/assets/v6.7.0/ribet_26_to_2.jpg
test -f docs/assets/v6.7.0/ribet_26_to_2.png
test -f docs/assets/v6.7.0/ribet_26_to_2.webp
test -f docs/assets/v6.7.0/tw_qn_infinite_family.jpg
test -f docs/assets/v6.7.0/tw_qn_infinite_family.png
test -f docs/assets/v6.7.0/tw_qn_infinite_family.webp
test -f docs/assets/v6.7.0/galois_token.jpg
test -f docs/assets/v6.7.0/galois_token.png
test -f docs/assets/v6.7.0/galois_token.webp
grep -q 'og:image" content="https://davidfox998.github.io/beal-level-26-foundations/assets/v6.7.0/ribet_26_to_2.jpg"' \
  docs/index.html
grep -q 'og:image:type" content="image/jpeg"' docs/index.html
grep -q 'assets/v6.7.0/ribet_26_to_2.jpg' docs/facebook-share.json
grep -q 'image/jpeg' docs/facebook-share.json
test ! -e extensions/facebook
test ! -e docs/images/797726399_1063690106418837_5544926896290683567_n.webp
grep -q "assets/v6.7.0/ribet_26_to_2.jpg" docs/About.md
grep -q "assets/v6.7.0/tw_qn_infinite_family.jpg" docs/About.md
grep -q "assets/v6.7.0/galois_token.jpg" docs/About.md
grep -q "assets/v6.7.0/ribet_26_to_2.jpg" docs/Final/FINAL.md
grep -q "assets/v6.7.0/tw_qn_infinite_family.jpg" docs/Final/FINAL.md
grep -q "assets/v6.7.0/galois_token.jpg" docs/Final/FINAL.md
grep -q "docs/assets/v6.7.0/ribet_26_to_2.jpg" README.md
grep -q "docs/assets/v6.7.0/tw_qn_infinite_family.jpg" README.md
grep -q "docs/assets/v6.7.0/galois_token.jpg" README.md
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  sagemath/README.md
grep -qi "genuine cohomological 2-Selmer" \
  lean/BealLevel26Foundations/Jacobian/README.md
grep -q "scheme-theoretic" \
  lean/BealLevel26Foundations/Jacobian/README.md
grep -q "Jacobian/" README.md
grep -q "FreyCurveExists" README.md
grep -q "LevelLowering_26" README.md
grep -q "v1.0.1-computable" CITATION.cff
grep -q "cohomological 2-Selmer" README.md

if grep -RInE \
  --exclude-dir=.git \
  --exclude-dir=.lake \
  --exclude-dir=.cache \
  '^[[:space:]]*(sorry|admit)([[:space:]]|$)' \
  --include='*.lean' .; then
  echo "FAIL: unfinished Lean declaration found"
  exit 1
fi

while IFS= read -r line; do
  case "$line" in
    *Modularity/FreyModularity_13.lean:*axiom[[:space:]]frey_modular_13*)
      ;;
    *Modularity/RibetLevelLowering_26.lean:*axiom[[:space:]]ribet_level_lowering_26*)
      ;;
    *)
      echo "FAIL: unexpected axiom: $line"
      exit 1
      ;;
  esac
done < <(grep -RInE \
  --exclude-dir=.git \
  --exclude-dir=.lake \
  --exclude-dir=.cache \
  '^[[:space:]]*axiom[[:space:]]+' \
  --include='*.lean' . || true)

while IFS= read -r line; do
  case "$line" in
    *Modularity/RibetLevelLowering_26.lean:*ribet_secured_by_certs*)
      ;;
    *)
      echo "FAIL: unexpected True := : $line"
      exit 1
      ;;
  esac
done < <(grep -RInE \
  --exclude-dir=.git \
  --exclude-dir=.lake \
  --exclude-dir=.cache \
  ':[[:space:]]*True[[:space:]]*:=' \
  --include='*.lean' . || true)

grep -q "def coefficientMatrix" lean/BealLevel26Foundations/FiniteEvidence.lean
grep -q "def BinaryQuartic.hasFpPointForTwist" \
  lean/BealLevel26Foundations/FiniteEvidence.lean
grep -q "theorem M3_eq" lean/BealLevel26Foundations/FiniteEvidence.lean
grep -q "theorem M3_det_nonzero" lean/BealLevel26Foundations/FiniteEvidence.lean
grep -q "theorem all_80_bad_prime_checks_pass" \
  lean/BealLevel26Foundations/FiniteEvidence.lean
grep -q "theorem finiteCandidateAudit_not_singleton" \
  lean/BealLevel26Foundations/FiniteEvidence.lean
grep -q "theorem ledger_byteForByte" \
  lean/BealLevel26Foundations/CoefficientLedger_26.lean
grep -q "theorem det_ledgerM3_ne_zero" \
  lean/BealLevel26Foundations/M3_Explicit.lean
grep -q "theorem finite_checks_at_2_and_13" \
  lean/BealLevel26Foundations/FiniteChecks_26.lean
grep -q "theorem certifiedDecompositionDimension_eq_two" \
  lean/Beal/Foundations/J0_26_Decomp.lean
grep -q "theorem certifiedDecomposition_two_distinct_newforms" \
  lean/Beal/Foundations/J0_26_Decomp.lean
grep -q "theorem qexp26a1_prefix_eq_ledger" \
  lean/Beal/Foundations/J0_26_Decomp.lean
grep -q "theorem qexp26b1_prefix_eq_ledger" \
  lean/Beal/Foundations/J0_26_Decomp.lean
grep -q "theorem certifiedJ0Dimension26_eq_two" \
  lean/Beal/Foundations/J0DecompositionCertificate.lean
grep -q "theorem certifiedM3_eq" \
  lean/Beal/Foundations/FormalImmersionM3.lean
grep -q "theorem certifiedM3_det" \
  lean/Beal/Foundations/FormalImmersionM3.lean
grep -q "theorem certifiedM3_eq_ledgerM3" \
  lean/Beal/Foundations/FormalImmersionM3.lean
grep -q "theorem certifiedM3_eq_ledgerM3" \
  lean/Beal/Foundations/FormalImmersionM3Certificate.lean
grep -q "theorem certifiedM3_det_nonzero" \
  lean/Beal/Foundations/FormalImmersionM3Certificate.lean

grep -q 'roots := #\[`BealLevel26Foundations, `Beal\]' lakefile.lean
grep -q 'roots := #\[`BealLevel26Foundations.Scaffold\]' lakefile.lean
grep -q 'roots := #\[`BealLevel26Foundations.Real\]' lakefile.lean
grep -q 'roots := #\[`BealLevel26Foundations.Beal.FullProof\]' lakefile.lean
grep -q "structure PrimitiveBealTriple" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem frey_Delta_of_equation" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem pairwise_coprime" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem odd_prime_not_dvd_c4" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem true_gcd_pairwise" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem tate_odd_prime" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem tate_two" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "def kodairaTate" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "def conductorExponentTate" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem frey_minimal_model_at_odd_prime" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem frey_conductor_exponent_one_odd" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem frey_conductor_two" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "theorem frey_global_conductor" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "structure FreyTwoAdicExponentOneCertificate" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "structure FreyTwoAdicConductorCertificate" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.TrueConductor" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.ModularityRibet" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.GeometryBridge" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealForallProof" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.GeometryScheme" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.HeckeAlgebra" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.RibetFunctor" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.X0_26_Model" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.HeckeAction" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.LevelLowering" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.RibetMazur" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealGap3ZsigBeyond2M" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealBakerB0Certificate" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealMatveevInequalityReal" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealBakerBoundGap3" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealMatveevThm14" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealBugeaudLLLFormal" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "import BealLevel26Foundations.Beal.FullProof.BealLevel26ModularElimination" \
  lean/BealLevel26Foundations/Beal/FullProof.lean
grep -q "theorem wiles_modularity_Frey" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem ribet_level_lowering_general" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem ribet_level_quotient" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "def TW_primes_Q" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem TW_Q_infinite" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem TW_q53_mod13" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem TW_q677_mod169" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "abbrev HeckeAlgebra_26" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "structure TaylorWilesPatchingData" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "def R_T_scaffold" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem localizedRankOne_from_Patching" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem S2_Gamma0_2_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem no_newform_level2" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem ribet_step_2_contradiction" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean
grep -q "theorem J0_26_dim" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
grep -q "theorem J0_26_isogeny" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
grep -q "theorem PicardAbelJacobiIdentification_26" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
grep -q "theorem formal_immersion_X0_26_to_J0_26_at_2" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
grep -q "theorem no_noncuspidal_Q_points" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
grep -q "theorem GeometryBridge" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean
if grep -q "import BealLevel26Foundations.Beal.FullProof.ModularityRibet" \
    lean/BealLevel26Foundations.lean \
    lean/BealLevel26Foundations/Beal/BealForall.lean \
    lean/BealLevel26Foundations/Chain/BealForallInKernel.lean \
    lean/BealLevel26Foundations/Chain/PathLock.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: none chain must not import ModularityRibet"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Beal.FullProof.GeometryBridge" \
    lean/BealLevel26Foundations.lean \
    lean/BealLevel26Foundations/Beal/BealForall.lean \
    lean/BealLevel26Foundations/Chain/BealForallInKernel.lean \
    lean/BealLevel26Foundations/Chain/PathLock.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: none chain must not import GeometryBridge"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Beal.FullProof.BealForallProof" \
    lean/BealLevel26Foundations.lean \
    lean/BealLevel26Foundations/Beal/BealForall.lean \
    lean/BealLevel26Foundations/Chain/BealForallInKernel.lean \
    lean/BealLevel26Foundations/Chain/PathLock.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: none chain must not import BealForallProof"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform" \
    lean/BealLevel26Foundations.lean \
    lean/BealLevel26Foundations/Beal/BealForall.lean \
    lean/BealLevel26Foundations/Chain/BealForallInKernel.lean \
    lean/BealLevel26Foundations/Chain/PathLock.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: none chain must not import ModularImpliesNewform"
  exit 1
fi
if grep -E -q "import BealLevel26Foundations.Beal.FullProof.(GeometryScheme|HeckeAlgebra|RibetFunctor|X0_26_Model|HeckeAction|LevelLowering|LevelLoweringB14|BealFreyB14|BealFreyASearch|BealFreyMod53Kill|BealFreyModQKill|BealFreyConductorGeneral|BealGap3ZsigBeyond2M|BealGap3BakerUpperBound|BealBakerB0Certificate|BealBakerB0ReductionCertificate|BealMatveevConstants|BealMatveevInequality|BealMatveevInequalityReal|BealBakerBoundGap3|BealMatveevThm14|BealBugeaudLLLFormal|BealFreyTateConductor|BealLevel26ModularElimination|RibetMazur|TWPrimes|TWPrimesPratt|TWPrimesQ2|TWAuxEllFixed|X0_2_Genus|Beal_4_13_13_Size_Table|BealElim|BealMod16|KrausB14|B14Witnesses|Step60B14List|FreyModularity|Level26_Newforms)" \
    lean/BealLevel26Foundations.lean \
    lean/BealLevel26Foundations/Beal/BealForall.lean \
    lean/BealLevel26Foundations/Chain/BealForallInKernel.lean \
    lean/BealLevel26Foundations/Chain/PathLock.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: none chain must not import GeometryScheme / HeckeAlgebra / RibetFunctor / X0_26_Model / HeckeAction / LevelLowering / RibetMazur / TWPrimes / TWPrimesPratt / TWPrimesQ2 / TWAuxEllFixed / X0_2_Genus / Beal_4_13_13_Size_Table"
  exit 1
fi
if grep -E -q "import BealLevel26Foundations.Beal_4_13_13_(Size|Zsigmondy)" \
    lean/BealLevel26Foundations.lean \
    lean/BealLevel26Foundations/Beal/BealForall.lean \
    lean/BealLevel26Foundations/Chain/BealForallInKernel.lean \
    lean/BealLevel26Foundations/Chain/PathLock.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallNoneReal.lean \
    lean/BealLevel26Foundations/GaloisRep/GaloisBealForallClosedReal.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: none chain must not import size tables or Zsigmondy_13"
  exit 1
fi
grep -q "def X0_26_f" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def cotangent_Z" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def cotangent_Z2" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def cotangent_Z3" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem formal_immersion_at_2" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem formal_immersion_at_3" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem X0_26_Q_points_cusps_model_real" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem cotangent_Z3_det_isUnit" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem cotangent_Z2_det_not_unit" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "abbrev coordinateRing_X0_26" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "abbrev kaehlerDifferentials_X0_26" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem hyperelliptic_kaehler_relation" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def cotangentSheaf_X0_26" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "theorem cotangent_Z3_is_unit_sheaf" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def basis_H0_Omega1" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def HeckeOperator_Tq_coeff" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAction.lean
grep -q "theorem R_inf_eq_T_inf_patched" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAction.lean
grep -q "theorem level_lowering_to_2" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
grep -q "def Frey_GaloisRep" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
grep -q "theorem level_lowering_to_2_term" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
grep -q "theorem beal_positive_bases" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
grep -q "theorem beal_positive_bases_unconditional" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
grep -q "def q_expansion_26a1" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def q_expansion_26b1" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mazur_principle_step" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_iterated" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def ribet_iterated_arrow" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_from_ribet" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def HeckeAction_N" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mazur_step_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_iterated_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def ModularImpliesLevel2Newform_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_from_ribet_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "structure X0_N_Model" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "structure J0_N_Model" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def HeckeAction_N_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_a_q_is_pm1" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mazur_step_real_fixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_iterated_real_fixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_from_ribet_real_fixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def J0_N_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_a_q_real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_rho_unramified_iff_13_dvd_vqDelta" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def Frey13Case" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def odd_q_divisors_with_13dvd" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def FreyEllCase5" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def FreyEllCase5Weak" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def ell_of_q" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def HeckeAction_N_real_ell" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_a_q_real_ell" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_rho_unramified_iff_ell_dvd_vqDelta" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem trace_eq_pm_qplus1_when_unramified" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mazur_step_ell" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_iterated_ell_case" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem N_div_Prod_eq_2_of_FreyEllCase5" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_from_ribet_ell_case" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ell_of_q_dvd_vqDelta" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem fermat_four_lemma" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def FermatFourCase" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def FreyEllCase5Complete" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def find_prime_congruent_one_mod" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def HeckeAction_N_real_ell_upgraded" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mazur_step_real_ell_upgraded" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_iterated_ell_upgraded" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_from_ribet_ell_upgraded" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_pow2_exponents" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem not_FreyEllCase5_of_exp_four_reduced" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def FreyEllCase5Mixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "structure TWAuxEllFixed" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixedCore.lean
grep -q "def find_prime_congruent_one_mod_explicit" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_pow2_base" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mixed_covers_4_13_13" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem thirteen_dvd_Delta_of_mixed_pow2_A" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_iterated_ell_mixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_from_ribet_ell_mixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem exists_prime_one_mod_ell_listed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mod_pow4_odd" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem mod_pow13_odd" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_4_13_13_mod8" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_4_13_13_mod13" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem not_beal_4_13_13_of_A_eq_one" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem FreyEllCase5Mixed_4_13_13_iff_pow2_A" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def beal_4_13_13_size" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem not_forall_pow13_mod8" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem exists_prime_one_mod_ell_all" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "def InTWEll1000" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "theorem Q1_not_dvd_N_of_Q1_gt_N" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "theorem exists_prime_one_mod_ell_sq_all" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "def find_next_prime_one_mod_gt_exists" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "theorem prime_of_pratt" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimesPratt.lean
grep -q "theorem q2_witness_919" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimesQ2_901_1000.lean
grep -q "def TWAuxEllFixed.of5_26" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def TWAuxEllFixed.of7_26" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def TWAuxEllFixed.of5_26_gt" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def TWAuxEllFixed.of5_10000" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def TWAuxEllFixed_inhabited_for_every_ell_le_1000" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def primes_le_1000" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "def next_Q1_gt_N" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "def InTWEll1000_complete" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes.lean
grep -q "theorem TWAuxEllFixedExists_26_all" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed.lean
grep -q "theorem TWAuxEllFixedExists_10000_all" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed.lean
grep -q "theorem TWAuxEllFixedExists_all_N_le_10000" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed.lean
grep -q "theorem TWAuxEllFixed_inhabited_for_every_ell_le_1000_product" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed.lean
grep -q "def of_ℓ_N_product" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed.lean
grep -q "def TWAuxEllFixed.of_N_le" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixedCore.lean
grep -q "def genus_X0_2_rat" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_2_Genus.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_2_Genus.lean
grep -q "inductive BealAArm" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_odd_A_ge3_not_mixed" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def beal_from_ribet_upside_down" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def beal_mixed_pow2_implies_level_2_newform" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem C13_sub_B13_ge_13_mul_B_pow_12" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Size_Table.lean
grep -q "theorem beal_4_13_13_size_lower_bound" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Size_Table.lean
grep -q "theorem beal_4_13_13_size_B_le_100_C_succ" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Size_Table.lean
grep -q "def zsigmondy_13" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def beal_odd_A_ge3_size_gap" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem zsigmondy_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "theorem has_primitive_prime_divisor_13_of_C_gt_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "theorem zsigmondy_exception_not_2_1_6" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "theorem beal_odd_A_ge3_size_gap" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "theorem primitive_prime_not_dvd_C_sub_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "def S_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean
grep -q "theorem C13_sub_B13_eq_sub_mul_S" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean
grep -q "theorem p_dvd_S_of_p_dvd_diff_and_not_dvd_sub" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean
grep -q "theorem beal_odd_A_ge3_p_dvd_B_contradiction" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean
grep -q "def p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean
grep -q "noncomputable def order_mod_p" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "theorem order_dvd_p_minus_one_of_prime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "theorem order_eq_13_of_primitive_prime_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "theorem primitive_prime_mod_13_eq_1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "theorem primitive_prime_ge_53" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "theorem beal_odd_A_ge3_A_ge_53" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "def beal_odd_A_ge3_closed_of_A_ge_53" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean
grep -q "theorem beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "theorem beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "theorem beal_odd_A_ge3_B_le_100_C_le_B_plus_2_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "theorem beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "theorem beal_odd_A_ge3_B_le_100_slice_C_le_B_plus_2_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "def beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "def S_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem S_13_ge_13_mul_B_pow12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem C13_sub_B13_ge_13_k_mul_B_pow12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem C_ge_B_plus_k_implies_A_pow4_ge_13kB12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "def beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem k_odd_of_odd_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem gcd_k_B_eq_one_of_coprime_C_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem gcd_A_B_eq_one_of_coprime_C_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem A_pow4_congr_k_pow13_mod_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem beal_4_13_13_k_odd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem beal_4_13_13_gcd_k_B_eq_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem beal_4_13_13_gcd_A_B_eq_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem beal_4_13_13_A_pow4_mod_B_eq_k_pow13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "def beal_4_13_13_gcd_k_B_eq_one_of_coprime_only" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem odd_fourth_mod4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem odd_fourth_mod8" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem k_mod4_eq_1_of_fourth_pow_residue" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem k_mod8_eq_1_of_fourth_pow_residue" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "def k_mod4_eq_1_of_B_mod4_eq_0_without_odd_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem fourth_pow_mod_4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem fourth_pow_mod_8_odd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem odd_pow_mod_4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem k_pow13_mod_8_odd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem k_mod_4_eq_1_of_B_divisible_by_4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem k_mod_8_eq_1_of_B_divisible_by_8" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem beal_4_13_13_A4_cong_k13_mod_B_restricts_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.lean
grep -q "theorem S_13_mod_k" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem gcd_k_S_dvd_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem gcd_k_S_eq_1_or_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem k_mul_S_eq_A_pow4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem coprime_mul_eq_fourth_pow" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem k_almost_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem beal_4_13_13_k_almost_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem fourth_pow_mod_16" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "def B_le_100_k_ge_3_no_S_fourth_pow" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "def beal_odd_A_ge3_closed_of_k_upper_bound_plan" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "def k_almost_fourth_power_without_gcd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean
grep -q "theorem S_13_mod_k" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem gcd_k_S_dvd_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem gcd_k_S_eq_1_or_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem k_mul_S_eq_A_pow4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem coprime_mul_eq_fourth_pow_imp_fourth_pow" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem k_almost_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "def B_le_100_k_ge_3_no_S_fourth_pow" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "def beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "def beal_mixed_pow2_implies_level_2_newform" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "def beal_from_ribet_upside_down" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean
grep -q "theorem primitive_prime_dvd_S" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem v_p_S_eq_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem S_not_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem B_le_100_k_ge_3_no_S_fourth_pow" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem beal_4_13_13_B_le_100_C_ge_B_plus_3_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem beal_4_13_13_B_le_100_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem S_almost_fourth_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean
grep -q "theorem A_ge_53_of_S_prime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "theorem k_le_A_pow4_div_13_B_pow12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "theorem B_gt_100_imp_k_bounded_by_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "theorem k_ge_B_imp_A_large" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "theorem k_lt_B_imp_S_between" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "def beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "def beal_4_13_13_B_gt_100_slice_uninhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "def beal_from_ribet_upside_down" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "def beal_4_13_13_size" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean
grep -q "theorem frey_curve_conductor" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def A_ge_53_of_S_prime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def k_le_A_pow4_div_13_B_pow12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def B_gt_100_imp_k_bounded_by_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "theorem genus_X0_2_rat_eq_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def beal_mixed_pow2_implies_level_2_newform" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def modular_W_lift" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def ribet_level_lowering_to_2" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def X0_2_no_newforms" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def beal_4_13_13_final_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def beal_from_ribet_upside_down" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "def beal_4_13_13_size" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean
grep -q "theorem even_not_pow2_has_odd_prime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "theorem frey_conductor_even_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "theorem minimal_level_26_of_13_dvd_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "theorem level_at_least_6_of_even_not_pow2" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def ribet_level_lowering_to_Nprime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def X0_26_no_matching_newform" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def conductor_26_elliptic_curves_list" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def beal_even_not_pow2_implies_level_26_newform" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def beal_even_not_pow2_13dvdA_False" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def beal_even_not_pow2_general_False" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def beal_even_A_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def beal_4_13_13_X0_26_RibetMazur_plan" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean
grep -q "def oddPart_rec" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def rad" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "theorem oddPart_def" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "theorem rad_dvd_pow" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "theorem even_not_pow2_has_odd_prime_q" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "theorem level_2q_of_odd_prime_dvd_A" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def kraus_criterion_q_ne_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def X0_2q_no_Frey_match" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def beal_even_not_pow2_general_q_False" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def beal_even_not_pow2_closed_v8_22_1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def beal_even_A_closed_v8_22_1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "def beal_4_13_13_X0_2q_Darmon_Merel_plan" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean
grep -q "theorem S_bounds_13_B12_le_S_le_13_C12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "theorem k_almost_fourth_power_shape" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "theorem k_le_A4_div_13_B12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "theorem B_gt_100_k_bounded" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "theorem k_ge_B_imp_A_ge_9B3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def zsigmondy_prime_S" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def zsig_p_not_dvd_k" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def S_not_fourth_power_of_zsig" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def S_times_g_not_fourth" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def beal_odd_A_ge3_B_gt_100_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def beal_odd_A_closed_v8_23_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closure_plan" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean
grep -q "def S_val" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "theorem S_bounds" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "theorem thirteen_dvd_S_of_13_nmid_B" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "theorem gcd_k_S_dvd_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "theorem k_shape_1_13_13cubed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def zsigmondy_exists_primitive" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def zsigmondy_vp_S_eq_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def zsig_p_not_dvd_k_of_gcd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def S_times_g_not_fourth_of_vp1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def beal_odd_A_ge3_B_gt_100_closed_via_zsig" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def beal_odd_A_closed_v8_23_1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_23_1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean
grep -q "theorem thirteen_dvd_S_of_BeqC_mod13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem gcd_k_S_dvd_13_honest" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem zsigmondy_exists_primitive_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem zsigmondy_vp_S_eq_one_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem zsig_p_not_dvd_k_of_gcd_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem S_times_g_not_fourth_of_vp1_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem beal_odd_A_ge3_closed_of_vp1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "def zsigmondy_vp_S_eq_one_unconditional" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "def beal_odd_A_ge3_B_le_100_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "def beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "def beal_odd_A_closed_v8_24_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "def beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean
grep -q "theorem primitive_prime_not_dvd_bases" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "theorem beal_odd_A_ge3_closed_of_vp1_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "theorem beal_odd_A_closed_via_zsig_hensel" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "theorem beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "def beal_odd_A_ge3_B_le_100_closed" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean
grep -q "theorem p_sq_dvd_S_iff_order_13_mod_p_sq" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "theorem hensel_lift_example_B1_C460_p53" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "theorem S_not_fourth_of_order_ne_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "theorem beal_odd_A_closed_via_zsig_hensel" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "def S_not_fourth" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean
grep -q "theorem p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "theorem zsigmondy_vp_S_eq_one_of_order_ne_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "theorem exists_p_of_two_primes_one_not_square" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def not_all_p_lift_when_two_primes" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def beal_odd_A_closed_via_zsig_hensel_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean
grep -q "theorem S_not_power_of_thirteen" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "theorem exists_p_of_two_primes_one_not_square_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "theorem zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "theorem S_not_fourth_of_order_ne_13_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "def S_not_prime_power_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean
grep -q "theorem S_not_power_of_thirteen_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "theorem norm_eq_S" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "theorem zeta13_class_number_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "theorem zeta13_prime_ideal_factorization_exists" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def S_not_prime_power_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def zeta13_two_prime_ideals_give_two_rational_primes" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean
grep -q "theorem phi13_derivative_separable_mod_p" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "theorem hensel_unique_lift_of_phi13_root" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "theorem p_sq_dvd_S_iff_CB_eq_lifted_root" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def Phi13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def S_not_prime_power_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean
grep -q "theorem phi13_derivative_separable_mod_p_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem hensel_unique_lift_of_phi13_root_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem primes_eq1_mod13_infinite" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem density_p_div_S" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem thin_set_p_sq_div_S" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def S_not_prime_power_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean
grep -q "theorem S_val_1_5_prime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "theorem S_not_prime_power_when_C_ge_B_plus_3_fast_refuted" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "theorem S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "theorem exists_p_with_order_ne_13_mod_p_sq_example_B1_C5" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def S_not_prime_power_when_C_ge_B_plus_3_fast" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def not_all_p_lift_when_two_primes" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean
grep -q "def IsProperPrimePower" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "theorem S_val_1_5_not_proper_prime_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "theorem not_isProperPrimePower_of_prime" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "theorem proper_prime_power_imp_sq_dvd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def S_not_proper_prime_power_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def S_has_prime_with_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def not_all_p_lift_when_two_primes" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def beal_odd_A_closed_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean
grep -q "def HasPrimeWithExpOne" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
grep -q "theorem S_val_1_5_has_prime_with_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
grep -q "theorem exists_p_with_order_ne_13_of_has_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean
grep -q "theorem S_val_1_4_has_prime_with_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "theorem S_val_2_5_has_prime_with_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "theorem S_val_100_103_has_prime_with_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_100_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "theorem exists_p_with_order_ne_13_mod_p_sq_example_B1_C4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean
grep -q "theorem not_proper_prime_power_of_has_exp_one" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
grep -q "theorem S_not_proper_prime_power_B_le_100_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
grep -q "theorem S_val_1_4_not_proper_prime_power" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
grep -q "def S_not_proper_prime_power_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean
grep -q "theorem order_ne_13_B1_C4" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
grep -q "theorem S_not_fourth_B_le_100_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_1000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
grep -q "theorem S_not_fourth_B_le_1000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_10000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
grep -q "theorem S_not_fourth_B_le_10000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_50000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
grep -q "theorem S_not_fourth_B_le_50000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean
grep -q "theorem S_le_13_C_pow12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "theorem sqrt_S_le_4_C6" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "theorem rad_le_sqrt_of_squarefull" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "theorem rad_gt_C_of_P_phi13_gt_C" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_50000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean
grep -q "theorem ap_bound_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "def X0_26_Q_displayed_points" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "theorem level_26_eq_2_mul_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "theorem S2_level_26_dim_two" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_50000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_100000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "theorem S_not_fourth_B_le_100000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_100000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean
grep -q "theorem kraus_elimination_26b1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
grep -q "def kraus_elimination_26a1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean
grep -q "theorem kraus_elimination_26a1" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean
grep -q "def level_lowering_26_to_2_from_no_match" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean
grep -q "theorem s2_26_displayed_newforms_miss_frey_traces" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean
grep -q "theorem level_lowering_26_to_2_from_no_match" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean
grep -q "def ribet_26_to_2_from_displayed_miss" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_200000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "theorem S_not_fourth_B_le_200000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "theorem row_199996_199999" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "def row_200000_200003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_200000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean
grep -q "theorem row_200000_200003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "theorem prime_12186951011" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "theorem S_has_prime_with_exp_one_B_le_200000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "theorem exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "theorem S_not_fourth_B_le_200000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_200000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean
grep -q "S_has_prime_with_exp_one_B_le_300000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "S_not_fourth_B_le_300000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "theorem row_299999_300002" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_300000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.lean
grep -q "S_has_prime_with_exp_one_B_le_400000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "S_not_fourth_B_le_400000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "theorem row_300003_300006" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "theorem row_400000_400003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_400000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_500000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "S_not_fourth_B_le_500000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "theorem row_400001_400004" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "theorem row_500000_500003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_500000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_600000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "S_not_fourth_B_le_600000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "theorem row_500003_500006" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "theorem row_600000_600003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_600000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_700000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "S_not_fourth_B_le_700000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "theorem row_600001_600004" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "theorem row_700000_700003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_700000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_800000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "S_not_fourth_B_le_800000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "theorem row_700001_700004" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "theorem row_800000_800003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_800000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_900000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "S_not_fourth_B_le_900000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "theorem row_800005_800008" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "theorem row_899999_900002" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_900000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1000000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "S_not_fourth_B_le_1000000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "theorem row_900002_900005" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "theorem row_1000000_1000003" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1000000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1100000_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "S_not_fourth_B_le_1100000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "theorem row_1000003_1000006" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "theorem row_1099999_1100002" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1100000" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1200000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "S_not_fourth_B_le_1200000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "theorem row_1100002_1100005" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "theorem row_1199998_1200001" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1200000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1300000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "S_not_fourth_B_le_1300000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "theorem row_1200001_1200004" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "theorem row_1299998_1300001" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1300000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1400000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "S_not_fourth_B_le_1400000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "theorem row_1300002_1300005" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "theorem row_1400000_1400003" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1400000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1500000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "S_not_fourth_B_le_1500000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "theorem row_1400001_1400004" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "theorem row_1499999_1500002" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1500000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1600000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "S_not_fourth_B_le_1600000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "theorem row_1500003_1500006" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "theorem row_1600000_1600003" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1600000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1700000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "S_not_fourth_B_le_1700000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "theorem row_1600001_1600004" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "theorem row_1700000_1700003" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1700000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1800000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "S_not_fourth_B_le_1800000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "theorem row_1700007_1700010" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "theorem row_1800000_1800003" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1800000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_1900000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "S_not_fourth_B_le_1900000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "theorem row_1800004_1800007" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "theorem row_1899995_1899998" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_1900000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.lean
grep -q "S_has_prime_with_exp_one_B_le_2000000_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "S_not_fourth_B_le_2000000_from_exp_one_table_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "theorem row_1900001_1900004" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "theorem row_2000000_2000003" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "def bugeaud_P_phi13_gt_C_when_B_gt_2000000" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.lean
grep -q "def smallZsigPrimes" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "theorem zsig_density_2M_stats" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "theorem hasSmallZsigWitness_196" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "def exists_p_with_order_ne_13_mod_p_sq_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "def S_has_prime_with_exp_one_when_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "def newform_26_a_qexp" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "def newform_26_b_qexp" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "def kraus_primes_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem zsig_density_links_to_kraus" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "def kraus_condition" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem level26_a_eliminated_by_53" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem level26_b_eliminated_by_443" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
test ! -n "$(grep -E 'def kraus_elimination_q_13_level_26_proof_sketch' \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean || true)"
grep -q "theorem kraus_elimination_q_13_level_26_density" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem ribet_mazur_pack_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "structure Newform" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem exists_newform_level_26_dim2" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem ExistsNewformLevel26_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem frey_mod13_irreducible" \
  lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean
grep -q "theorem frey_modular" \
  lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean
grep -q "def level_lowering_to_26" \
  lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean
grep -q "Classical.em" \
  lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/FreyModularity.lean || true)"
grep -q "theorem beal_4_13_13_gap3_B_196_eliminated" \
  lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean
grep -q "theorem beal_4_13_13_gap3_B_1500003_eliminated" \
  lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean
grep -q "theorem beal_4_13_13_gap3_first_honest_rows" \
  lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean
grep -q "Classical.em" \
  lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
grep -q "theorem beal_gap3_mod16_elim" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
grep -q "theorem beal_gap3_mod16_elim_even_not14" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_mod16" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
grep -q "def density_5983_list" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
grep -q "Classical.em" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/B14Witnesses.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus" \
  lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_full" \
  lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean
grep -q "theorem b14_elim_at_p" \
  lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean
grep -q "def b14_witnesses" \
  lean/BealLevel26Foundations/Beal/FullProof/B14Witnesses.lean
grep -q "Classical.em" \
  lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/Step60B14List.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean
grep -q "def step60_b14_list" \
  lean/BealLevel26Foundations/Beal/FullProof/Step60B14List.lean
grep -q "theorem frey_modular_B14" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean
grep -q "def level_lowering_to_26_B14" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean
grep -q "def beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_full_honest" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLoweringB14.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def bealFreyCubic" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "theorem beal_frey_has_full_2_torsion" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def beal_frey_modular" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def level_lowering_to_26_B14_honest" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_full_honest" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "def fourth_powers_mod53" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "def a53_beal_frey" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "theorem a53_res_miss_or_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "theorem beal_frey_a53_miss_B14" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "theorem a53_res_in_table" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "theorem beal_frey_a53_value_of_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "def a53_nonzero_values" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean
grep -q "def beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyASearch.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
grep -q "def rhs_mod53" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
grep -q "theorem direct_mod53_kill" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
grep -q "def step60_b14_killed_mod53" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
grep -q "def survivors_86_list" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
grep -q "theorem beal_frey_a53_miss_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "theorem gcd_B_Bplus3_dvd_three" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "theorem irreducible_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def conductor_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def level_lowering_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def beal_4_13_13_gap3_B_le_2M_eliminated_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def beal_frey_a53_miss_86" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "def fourth_powers_mod_q_17" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem direct_mod17_kill" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem direct_mod_q_17_kill" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem direct_mod29_kill" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem direct_mod109_kill" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_modq" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_modq" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_full" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_full" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "beal_4_13_13_gap3_B_le_2M_eliminated_B14_full" \
  paper/mcom-draft.tex
grep -q "baker_bound_gap3" \
  paper/mcom-draft.tex
grep -q "matveev_explicit_gap3" \
  paper/mcom-draft.tex
grep -q "baker_conditional_gap3_full" \
  paper/mcom-draft.tex
grep -q "allKilled_62500" \
  paper/mcom-draft.tex
grep -q "allKilled_1e6" \
  paper/mcom-draft.tex
grep -q "v10.0.0-paper-B14-Baker-1e6-DOI" \
  README.md
grep -q "10.5281/zenodo.22712897" \
  README.md
grep -q "10.5281/zenodo.22713047" \
  README.md
grep -q "62500" \
  README.md
grep -q "tate_conductor_bound_rhs" \
  README.md
grep -q "10.5281/zenodo.22712897" \
  .zenodo.json
grep -q "10.5281/zenodo.22713047" \
  .zenodo.json
grep -q "v10.0.0-paper-B14-Baker-1e6-DOI" \
  paper/mcom-draft.tex
grep -q "needs Baker, not Zsig" \
  paper/mcom-draft.tex
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.BealFreyModQKill' \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
grep -q "theorem frey_conductor_general" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
grep -q "def bealFreyWeierstrass" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
grep -q "def frey_conductor_N0_dvd_rad_BC" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
grep -q "def rad" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
grep -q "theorem frey_conductor_general" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def conductor_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.BealFreyB14' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "def beal_gap3_B_gt_2M_eliminated" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "def exists_zsig_q_gt_2M_dvd_C13_sub_B4" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "theorem zsig_5983_eq_4488_plus_5_times_299" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "theorem not_prime_dvd_C13_of_gt" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "theorem q_pow4_dvd_C13_sub_B4_of_dvd_A" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "def q_pow4_dvd_C13_of_dvd_A" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "def beal_gap3_B_gt_2M_eliminated" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_conductor_general" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean
grep -q "def conductor_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.BealFreyB14' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "def baker_bound_gap3" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "def baker_B0" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem baker_conditional_gap3_full" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem matveev_explicit_gap3" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "explicit Matveev for (4,4,13) gap3, not general Bugeaud" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem matveev_no_solution_A_le_B" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem allKilled_chunk_0" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem allKilled_chunk_24" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem allKilled_62500" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "theorem allKilled_1e6" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "set_option maxRecDepth 200000" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "set_option maxHeartbeats 4000000000" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "Bugeaud linear forms external" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "needs Baker, not Zsig" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean
grep -q "def baker_bound_gap3" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem baker_conditional_gap3_full" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_explicit_gap3" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem allKilled_chunk_0" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem allKilled_chunk_24" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem allKilled_62500" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem allKilled_1e6" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_full" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean
grep -q "def conductor_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.BealFreyB14' \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "def frey_tate_conductor" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "def tateConductor" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "theorem frey_tate_conductor_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "theorem tate_odd_prime_exponent_one" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "theorem v2_c4_ge_four" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "def tate_rhs" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "theorem tate_2adic_exponent_le5" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "def tate_conductor_bound_rhs" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "theorem tate_odd_exponent_le_one" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean
grep -q "def baker_bound_gap3" \
  lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean
grep -q "def conductor_86" \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyB14.lean
grep -q "def frey_tate_conductor" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def tateConductor" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem frey_tate_conductor_inhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem tate_odd_prime_exponent_one" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem tate_2adic_exponent_le5" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def tate_conductor_bound_rhs" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "frey_tate_conductor" \
  paper/mcom-draft.tex
grep -q "frey_tate_conductor_inhabited" \
  paper/mcom-draft.tex
grep -q "tateConductor" \
  paper/mcom-draft.tex
grep -q "tate_2adic_exponent_le5" \
  paper/mcom-draft.tex
grep -q "tate_conductor_bound_rhs" \
  paper/mcom-draft.tex
test ! -n "$(grep -E '^axiom |import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.BealFreyB14' \
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "structure J0DecompositionCert_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def J0DecompositionSoundness_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "structure MwrankCertificate_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def MwrankCertificateSoundness_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "structure FormalImmersionCert_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def FormalImmersionSoundness_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "structure FreyCurveCert" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def FreyCurveExists" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "structure LevelLoweringCert_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def LevelLowering_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def kraus_a53_values" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def S2_26_a5_values" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "theorem kraus_a53_elimination" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "theorem beal_44_13_level_26_modular_elimination" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "set_option maxRecDepth 200000" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "set_option maxHeartbeats 4000000000" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "63982" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean)" -eq 0
grep -q "theorem kraus_a53_elimination" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem beal_44_13_level_26_modular_elimination" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "structure J0DecompositionCert_26" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def J0DecompositionCert_26_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def MwrankCertificate_26_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def FormalImmersionCert_26_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def FreyCurveCert_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def LevelLoweringCert_26_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "theorem J0DecompositionSoundness_26_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "theorem MwrankCertificateSoundness_26_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "theorem FormalImmersionSoundness_26_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -qF 'rank := 2, gens := [0, 12]' \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
test "$(git diff v13.0.0-Beal-44-13-Level-26-Modular-Elimination -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v13.0.0-Beal-44-13-Level-26-Modular-Elimination -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff cea155c -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff cea155c -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v14.0.0-J0-Mwrank-Formal-Verified -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v14.0.0-J0-Mwrank-Formal-Verified -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v16.0.0-Beal-44-13-Level-26-Cumulative-Archive -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v16.0.0-Beal-44-13-Level-26-Cumulative-Archive -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v16.0.0-Beal-44-13-Level-26-Cumulative-Archive -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v16.0.0-Beal-44-13-Level-26-Cumulative-Archive -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v16.0.0-Beal-44-13-Level-26-Cumulative-Archive -- BealFreyTateConductor.lean BealGap3BakerUpperBound.lean BealLevel26ModularElimination.lean BealBakerB0Certificate.lean | wc -l)" -eq 0
test -f scripts/baker_b0_gap3.gp
test -f scripts/baker_B0_certificate.json
test -f baker_B0_certificate.json
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean
grep -q "def baker_B0_PARI" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean
grep -q "def baker_B0_certificate_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean
grep -q "theorem baker_B0_certificate_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean
grep -q "def baker_bound_gap3_of_PARI" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean
test "$(python3 -c "import json; print(json.load(open('scripts/baker_B0_certificate.json'))['B0'])")" = "1000000"
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean || true)"
grep -q "import BealLevel26Foundations.Beal.FullProof.BealBakerB0Certificate" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "baker_B0_PARI" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "theorem baker_B0_certificate_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f scripts/baker_b0_reduction.gp
test -f scripts/baker_B0_reduction_certificate.json
test -f baker_B0_reduction_certificate.json
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
grep -q "def baker_B0_reduced_PARI" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
grep -q "def baker_reduction_certificate_displayed" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
grep -q "theorem baker_reduction_certificate_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
test "$(python3 -c "import json; print(json.load(open('scripts/baker_B0_reduction_certificate.json'))['B0_reduced'])")" = "1000000"
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean || true)"
grep -q "theorem baker_reduction_certificate_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean
grep -q "def matveev_C1_floor" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean
grep -q "theorem matveev_C1_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean
grep -q "theorem matveev_explicit_gap3_constants_hold" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean
grep -q "def matveev_height_B0" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean || true)"
grep -q "theorem matveev_C1_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_explicit_gap3_constants_hold" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
grep -q "def matveev_log_form" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
grep -q "def matveev_lower_bound" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
grep -q "theorem matveev_inequality_constants_hold" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
grep -q "def matveev_log_form_int" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
grep -q "theorem matveev_log_form_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
grep -q "theorem matveev_height_le_log_B0" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean || true)"
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
grep -q "def bugeaud_K" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
grep -q "def bugeaud_lattice" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
grep -q "theorem bugeaud_LLL_basis_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
grep -q "def bugeaud_reduction_formal" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean || true)"
grep -q "theorem matveev_inequality_constants_hold" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem bugeaud_LLL_basis_holds" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_log_form_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_height_le_log_B0" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean
grep -q "def matveev_C_exp_bound" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean
grep -q "def matveev_inequality_real_formal" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean
grep -q "theorem matveev_C_exp_bound_decide" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean || true)"
grep -q "theorem matveev_C_exp_bound_decide" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean
grep -q "theorem matveev_C_exp_bound_lt_neg_onee12" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean
grep -q "theorem matveev_log_form_ne_zero_of_gap3" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean
grep -q "def baker_bound_gap3_remaining" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean || true)"
grep -q "theorem matveev_C_exp_bound_lt_neg_onee12" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test -f lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_height_log_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_exp_bound_neg" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "def matveev_inequality_real_target" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_thirty_pow_ne_72900000" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C1_floor_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_thirty_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_height_B0_gt_two" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_log_height_monotone" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C_exp_bound_lt_zero_of_pos_log" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_exp_bound_lt_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_exp_of_bound_pos_lt_one" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_exp_of_bound_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C_exp_bound_le_neg_onee12" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "def matveev_target_exp_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C1_floor_mul_thirty_pow_div10" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C1_floor_mul_thirty_pow" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_height_product_link" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C_exp_bound_eq_neg_height_mul_log" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C_exp_bound_eq_neg_height_log" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_target_exp_lower_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_height_B0_mul_log_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C_exp_bound_neg_of_mul_log_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_B_pos_of_solution" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_A_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_log_form_upper_bound" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_exp_lower_lt_one_and_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_A_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_B3_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_log_form_eq_log_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_abs_lambda_eq_log_one_plus_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_log_one_plus_le_self" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_B_pow_div_A_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_abs_lambda_nonneg" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_abs_lambda_le_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_abs_lambda_lt_one_of_small_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_conditional_lower_implies_ratio_gt_exp" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_conditional_lower_implies_ratio_gt_exp_of_solution" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_ratio_lower_bound_conditional" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
test "$(grep -c '^axiom ' lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean)" -eq 0
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide|^axiom ' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean || true)"
grep -q "theorem matveev_height_log_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_height_B0_gt_two" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_log_height_monotone" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_C_exp_bound_lt_zero_of_pos_log" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_exp_of_bound_pos_lt_one" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_exp_of_bound_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_C1_floor_mul_thirty_pow" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_height_product_link" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_C_exp_bound_eq_neg_height_mul_log" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_C_exp_bound_eq_neg_height_log" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_target_exp_lower_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_height_B0_mul_log_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_C_exp_bound_neg_of_mul_log_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_B_pos_of_solution" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_A_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_log_form_upper_bound" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_exp_lower_lt_one_and_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_A_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_B3_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_log_form_eq_log_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_abs_lambda_eq_log_one_plus_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_log_one_plus_le_self" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_B_pow_div_A_pow_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_abs_lambda_nonneg" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_abs_lambda_le_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_abs_lambda_lt_one_of_small_ratio" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_conditional_lower_implies_ratio_gt_exp" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_conditional_lower_implies_ratio_gt_exp_of_solution" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_ratio_lower_bound_conditional" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_conditional_ratio_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_ratio_pos_of_conditional_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_A_pow_eq_B3_pow_sub_B_pow" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_ratio_explicit" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_conditional_B_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_conditional_B_lower_of_target" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_conditional_B_pos_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_C_exp_bound_le_neg_1e12" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_target_exp_lower_lt_exp_neg_1e12" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_target_exp_lower_lt_onee12" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_exp_C_pos_lt_one" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_v24x_summary" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_v24x_conditional_summary" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem bugeaud_v24x_final_link" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem baker_v24x_reduction_shape" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "def bugeaud_LLL_reduction_conditional" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem matveev_gap3_conditional_ratio_pos" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_ratio_pos_of_conditional_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_A_pow_eq_B3_pow_sub_B_pow" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_ratio_explicit" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_conditional_B_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_conditional_B_lower_of_target" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_gap3_conditional_B_pos_lower" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_C_exp_bound_le_neg_1e12" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_target_exp_lower_lt_exp_neg_1e12" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_target_exp_lower_lt_onee12" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_exp_C_pos_lt_one" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_v24x_summary" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem matveev_v24x_conditional_summary" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem bugeaud_v24x_final_link" \
  lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean
grep -q "theorem baker_v24x_reduction_shape" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
grep -q "\[104382751019310000000, 1000000\]" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
grep -q "\[9, -16201573319, -5065060422\]" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean
grep -q "\[\[1, 0, 1, -5, -8\], \[1, -1, 1, -3, 3\]\]" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "s2Basis := \[0, 12\]" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "chabautyMatrix := \[\[1, 1\], \[0, 2\]\]" \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean
grep -q "def bugeaud_LLL_reduction_conditional" \
  lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link -- lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean | wc -l)" -eq 0
test "$(git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean | wc -l)" -eq 0
test "$(git diff v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
test "$(git diff v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization -- lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean | wc -l)" -eq 0
test "$(git diff v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17 -- lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean | wc -l)" -eq 0
test "$(git diff v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17 -- lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean | wc -l)" -eq 0
test "$(git diff v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17 -- lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean | wc -l)" -eq 0
test "$(git diff v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17 -- lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean | wc -l)" -eq 0
grep -q "baker_B0_certificate" \
  paper/mcom-draft.tex
grep -q "baker_B0_reduction_certificate" \
  paper/mcom-draft.tex
grep -q "matveev_C1_floor" \
  paper/mcom-draft.tex
grep -q "matveev_log_form" \
  paper/mcom-draft.tex
grep -q "matveev_log_form_ne_zero" \
  paper/mcom-draft.tex
grep -q "matveev_height_le_log_B0" \
  paper/mcom-draft.tex
grep -q "matveev_C_exp_bound" \
  paper/mcom-draft.tex
grep -q "matveev_inequality_real_formal" \
  paper/mcom-draft.tex
grep -q "matveev_C_exp_bound_lt_neg_onee12" \
  paper/mcom-draft.tex
grep -q "matveev_log_form_ne_zero_of_gap3" \
  paper/mcom-draft.tex
grep -q "baker_bound_gap3_remaining" \
  paper/mcom-draft.tex
grep -q "matveev_height_log_pos" \
  paper/mcom-draft.tex
grep -q "matveev_inequality_real_target" \
  paper/mcom-draft.tex
grep -q "matveev_height_B0_gt_two" \
  paper/mcom-draft.tex
grep -q "matveev_log_height_monotone" \
  paper/mcom-draft.tex
grep -q "matveev_C_exp_bound_lt_zero_of_pos_log" \
  paper/mcom-draft.tex
grep -q "matveev_exp_of_bound_pos_lt_one" \
  paper/mcom-draft.tex
grep -q "matveev_exp_of_bound_pos" \
  paper/mcom-draft.tex
grep -q "matveev_target_exp_lower" \
  paper/mcom-draft.tex
grep -q "matveev_C1_floor_mul_thirty_pow" \
  paper/mcom-draft.tex
grep -q "matveev_height_product_link" \
  paper/mcom-draft.tex
grep -q "matveev_C_exp_bound_eq_neg_height_mul_log" \
  paper/mcom-draft.tex
grep -q "matveev_C_exp_bound_eq_neg_height_log" \
  paper/mcom-draft.tex
grep -q "matveev_target_exp_lower_eq" \
  paper/mcom-draft.tex
grep -q "matveev_height_B0_mul_log_pos" \
  paper/mcom-draft.tex
grep -q "matveev_C_exp_bound_neg_of_mul_log_pos" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_B_pos_of_solution" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_A_pos" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_log_form_upper_bound" \
  paper/mcom-draft.tex
grep -q "matveev_exp_lower_lt_one_and_pos" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_A_pow_pos" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_B3_pow_pos" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_log_form_eq_log_ratio" \
  paper/mcom-draft.tex
grep -q "matveev_gap3_abs_lambda_eq_log_one_plus_ratio" \
  paper/mcom-draft.tex
grep -q "matveev_v24x_summary" \
  paper/mcom-draft.tex
grep -q "matveev_v24x_conditional_summary" \
  paper/mcom-draft.tex
grep -q "bugeaud_v24x_final_link" \
  paper/mcom-draft.tex
grep -q "baker_v24x_reduction_shape" \
  paper/mcom-draft.tex
grep -q "22730408" \
  paper/mcom-draft.tex
grep -q "22732045" \
  paper/mcom-draft.tex
grep -q "bugeaud_LLL_basis_holds" \
  paper/mcom-draft.tex
grep -q "beal_44_13_level_26_modular_elimination" \
  paper/mcom-draft.tex
grep -q "kraus_a53_elimination" \
  paper/mcom-draft.tex
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Modularity.FreyModularity_13' \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean || true)"
test ! -n "$(grep -E '^\s*(sorry|admit)\b|False\.elim|native_decide' \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean || true)"
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.BealFreyB14' \
  lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean || true)"
grep -q "import BealLevel26Foundations.Beal.FullProof.Level26_Newforms" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
test ! -n "$(grep -E 'import BealLevel26Foundations.Beal.FullProof.RibetMazur' \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean || true)"
grep -q "def kraus_elimination_q_13_level_26" \
  lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean
grep -q "theorem ExistsNewformLevel2_eq_zero_ne_zero" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "def newform_26_a_qexp_100" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a53_26a1_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a53_26b1_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem displayed_two_misses_a53_26a1" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a443_26a1_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a443_26b1_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "def a53_E_196" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "def a443_E_1500003" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a53_E_196_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a443_E_1500003_eq" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a443_E_1500003_misses_26a1" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem a443_E_1500003_misses_26b1" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "List.take 500 qExp_26a1_500" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem level26_a_eliminated_by_53_of_witness" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem hasSmallZsigWitness_1500003" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem level26_b_eliminated_by_443_of_witness" \
  lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean
grep -q "theorem beal_4_13_13_k_odd" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean
grep -q "theorem S_13_ge_13_mul_B_pow12" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean
grep -q "theorem zsigmondy_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "theorem beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean
grep -q "theorem zsigmondy_13" \
  lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean
grep -q "def beal_size_B_le_100_table" \
  certs/Beal_4_13_13_Size_Table.lean
grep -q "def beal_4_13_13_C_eq_B_plus_1_diff" \
  certs/Beal_4_13_13_Size_Table.lean
grep -q "theorem C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2" \
  lean/BealLevel26Foundations/Beal_4_13_13_Size_C_ge_B_plus_2.lean
grep -q "theorem beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2" \
  lean/BealLevel26Foundations/Beal_4_13_13_Size_C_ge_B_plus_2.lean
grep -q "theorem size_table_C_eq_B_plus_2_lower_bound_B_le_100" \
  lean/BealLevel26Foundations/Beal_4_13_13_Size_C_ge_B_plus_2.lean
grep -q "def beal_4_13_13_size_C_eq_B_plus_2_full_table" \
  certs/Beal_4_13_13_Size_C_ge_B_plus_2_Table.lean
grep -q "def zsigmondy_13" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
grep -q "theorem primes5to100_eq_Icc_filter" \
  lean/BealLevel26Foundations/Beal/FullProof/TWPrimes_5_100.lean
grep -q "def twaux_10000_941" \
  lean/BealLevel26Foundations/Beal/FullProof/TWAuxEllFixed_901_1000.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean
if grep -q "import BealLevel26Foundations.Beal.FullProof.X0_26_Model" \
    lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean; then
  echo "FAIL: RibetMazur must not import X0_26_Model"
  exit 1
fi
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAction.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean
grep -q "structure X0_26_Scheme" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "structure J0_26_Scheme" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "theorem PicardAbelJacobiScheme" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "def AbelJacobiMap" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "theorem formal_immersion_scheme_at_2" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "theorem X0_26_Q_points_cusps" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "def HeckeOperator_Tq" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean
grep -q "def HeckeAlgebra_T" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean
grep -q "def HeckeAlgebra_T_infinite_level" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean
grep -q "theorem R_inf_eq_T_inf" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean
grep -q "structure GaloisRepModularLevel" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean
grep -q "theorem ribet_level_lowering_functor" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean
grep -q "def ModularImpliesLevel2Newform_Real" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean
grep -q "structure PositiveBealTriple" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "theorem sketch_fails_on_zero_one_counterexample" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "def ModularImpliesLevel2Newform" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "theorem beal_forall_proof_positive" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "theorem modular_implies_level2_arithmetic" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "theorem TW_Q_base_53" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "theorem TW_Q_base_677" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "def Gamma0_2" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "structure GaloisRepModular" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "theorem modular_implies_ribet_level_two" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean
grep -q "beal_forall_proof_positive" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
grep -q "theorem sketch_fails_on_zero_one" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
grep -q "theorem beal_forall_glue" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
grep -q "theorem beal_forall_proof" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
grep -q "theorem beal_forall_positive_of_newform_arrow" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
grep -q "def ModularImpliesLevel2Newform" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
grep -q "def beal_forall_from_Is13Case_sketch_stays_uninhabited" \
  lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean
if grep -nE \
    '^import[[:space:]]+(BealLevel26Foundations\.Beal\.BealForall|BealLevel26Foundations\.GaloisRep\.GaloisBealForallNoneReal|BealLevel26Foundations\.GaloisRep\.GaloisBealForallClosedReal|BealLevel26Foundations\.Chain\.PathLock|BealLevel26Foundations\.Chain\.BealForallInKernel|BealLevel26Foundations\.Mazur|BealLevel26Foundations\.RT\.PatchingWitnessReal|BealLevel26Foundations\.RT\.TaylorWilesScaffold)' \
    lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean \
    lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean \
    lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean \
    lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean \
    lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean \
    lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean \
    lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean \
    lean/BealLevel26Foundations/Beal/FullProof/HeckeAction.lean \
    lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean \
    lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean; then
  echo "FAIL: FullProof Step 2/3/4/5/6/7 must not import none-chain / Forall / Mazur / none RT tokens"
  exit 1
fi
if grep -nE '^[[:space:]]*False\.elim|^[[:space:]]*exact[[:space:]]+False\.elim' \
    lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean \
    lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean \
    lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealForallProof.lean \
    lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean \
    lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean \
    lean/BealLevel26Foundations/Beal/FullProof/HeckeAlgebra.lean \
    lean/BealLevel26Foundations/Beal/FullProof/RibetFunctor.lean \
    lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean \
    lean/BealLevel26Foundations/Beal/FullProof/HeckeAction.lean \
    lean/BealLevel26Foundations/Beal/FullProof/LevelLowering.lean \
    lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealLevel26ModularElimination.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealBakerBoundGap3.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean \
    lean/BealLevel26Foundations/Beal/FullProof/BealBugeaudLLLFormal.lean \
    lean/BealLevel26Foundations/Beal/FullProof.lean; then
  echo "FAIL: FullProof track must not use False.elim"
  exit 1
fi

if grep -RInE \
  'frey_conductor_data|tate_step2_odd_prime_external' \
  lean/BealLevel26Foundations/Real/FreyWeierstrass.lean \
  lean/BealLevel26Foundations/Real/Conductor_26_Unconditional.lean \
  lean/BealLevel26Foundations/Frey/FreyConductorUnconditional_26.lean \
  lean/BealLevel26Foundations/Frey/Conductor_26_Unconditional.lean; then
  echo "FAIL: parent conductor axioms leaked into the real arithmetic module"
  exit 1
fi

grep -q "theorem freyCurve_c4" \
  lean/BealLevel26Foundations/Real/FreyWeierstrass.lean
grep -q "theorem freyCurve_c6" \
  lean/BealLevel26Foundations/Real/FreyWeierstrass.lean
grep -q "theorem freyCurve_discriminant" \
  lean/BealLevel26Foundations/Real/FreyWeierstrass.lean
grep -q "theorem oddPrimeMultiplicativeValuationInput26_values" \
  lean/BealLevel26Foundations/Frey/Conductor_26_Unconditional.lean
grep -q "theorem freyDiscriminantValuation26_pos" \
  lean/BealLevel26Foundations/Frey/Conductor_26_Unconditional.lean
grep -q "structure TateKodairaBoundary26" \
  lean/BealLevel26Foundations/Frey/Conductor_26_Unconditional.lean
grep -q "structure LevelLowering_26" \
  lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
grep -q "theorem LevelLowering_26.representation_data" \
  lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
grep -q "theorem LevelLowering_26.level_data" \
  lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
grep -q "theorem LevelLowering_26.lowering_relation" \
  lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
grep -q "theorem exactDivides_mul_self_of_not_dvd" \
  lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
grep -q "structure RibetTheoremBoundary26" \
  lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean
if grep -q "def LevelLowering_26 : Prop" \
    lean/BealLevel26Foundations/Ribet/LevelLowering_26.lean; then
  echo "FAIL: LevelLowering_26 must be typed certificate data, not an opaque Prop"
  exit 1
fi
grep -q "structure J0_26_Q_RankZero26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "structure FormalImmersionAtTwo26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "structure X0_26_RationalPoints26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "structure NoFreyPoint26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "theorem FormalImmersionAtTwo26.input_certificate" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "theorem BealTheoremFromMazurChain26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE 'decide' \
    lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean |
    grep -E 'rankZero|rationalPointsAreFourCusps|R[[:space:]]*=[[:space:]]*T'; then
  echo "FAIL: rank, cusps, or R=T must not be decided"
  exit 1
fi
grep -q "def PicardAbelJacobiIdentification_26" \
  lean/BealLevel26Foundations/Jacobian/PicardAbelJacobiIdentification_26.lean
grep -q "theorem qExpansion_cotangent_compatibility_of_picard_bridge" \
  lean/BealLevel26Foundations/Mazur/QExpansionCotangent_Real_26.lean
if grep -q "def PicardAbelJacobiIdentification_26" \
    lean/BealLevel26Foundations/Mazur/QExpansionCotangent_Real_26.lean; then
  echo "FAIL: PicardAbelJacobiIdentification_26 must live in Jacobian/, not QExpansionCotangent_Real_26"
  exit 1
fi
if grep -q "theorem picardAbelJacobiIdentification_26" \
    lean/BealLevel26Foundations/Mazur/QExpansionCotangent_Real_26.lean \
    lean/BealLevel26Foundations/Jacobian/PicardAbelJacobiIdentification_26.lean; then
  echo "FAIL: formal-coordinate model must not discharge the geometric Picard boundary"
  exit 1
fi
grep -q "def s1" lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
grep -q "def s2" lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
grep -q "theorem certifiedJ0_26_eq_26a_times_26b" \
  lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
grep -q "theorem certifiedM3_eq" \
  lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
grep -q "theorem certifiedM3_det" \
  lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/J0_26_DecompActual.lean
test -f lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "def sUnitsFromDecomposition" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "theorem sUnitAudit26_retains_all_eight" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "theorem sUnitAudit26_not_singleton" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "theorem sUnitAudit26_is_not_genuine_2Selmer" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "def MwrankCertificateSoundness_26" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "theorem MwrankCertificateSoundness_26.certified" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
grep -q "remains future" \
  lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean
if grep -nE \
    'theorem[[:space:]]+(genuineCohomological2Selmer|twoSelmerIdentification|SelmerGroup_eq)' \
    lean/BealLevel26Foundations/Jacobian/TwoSelmer_vs_SUnits_26.lean; then
  echo "FAIL: must not identify the S-unit audit with genuine 2-Selmer"
  exit 1
fi
test -f lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "def cotangentInjective" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "theorem qExpansionM3_det_by_ring" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "theorem qExpansionM3_cotangent_injective" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "theorem cotangentMap_injective_at_two" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "theorem cotangentInjective_of_picard" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "def FormalImmersionAtTwo26.of_qExpansion" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "theorem FormalImmersionAtTwo26.of_qExpansion_replaces_premise" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "def formalImmersion_at_2_surjective_from_M3" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "theorem formalImmersion_at_2_surjective_from_M3.certified" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "completed local rings" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
grep -q "scheme-theoretic" \
  lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE 'decide' \
    lean/BealLevel26Foundations/Jacobian/FormalImmersionActual_26.lean |
    grep -E 'rationalPointsAreFourCusps|X0_26'; then
  echo "FAIL: X0(26)(Q) must not be decided"
  exit 1
fi
test -f lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "def displayedCusps26" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "def fourCuspsFromQExpansion" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "theorem fourCuspsFromQExpansion.certified" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "def X0_26_RationalPoints26.of_qExpansion" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "theorem X0_26_RationalPoints26.of_qExpansion_replaces_premise" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "Not a modular-curve" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE 'decide' \
    lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean |
    grep -E 'rationalPointsAreFourCusps|X0_26'; then
  echo "FAIL: X0(26)(Q) must not be decided"
  exit 1
fi
if grep -nE 'NoFreyPoint26[[:space:]]*(where|:|=)' \
    lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean; then
  echo "FAIL: NoFreyPoint26 must not be inhabited in the four-cusp file"
  exit 1
fi
if grep -nE 'J0_26_Q_RankZero26[[:space:]]*(where|:|=)|rankZero[[:space:]]*:=[[:space:]]*True|⟨[[:space:]]*True[[:space:]]*,[[:space:]]*trivial[[:space:]]*⟩' \
    lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean; then
  echo "FAIL: must not inhabit J0_26_Q_RankZero26 as True/trivial"
  exit 1
fi
test -f lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "def displayedTargetLevel26" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "def ribetExistenceFromQExpansion" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "theorem ribetExistenceFromQExpansion.certified" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "def ofBealFreyLowering" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "ExistsFreyWitness" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
grep -q "Not a Mathlib Ribet" \
  lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE 'J0_26_Q_RankZero26[[:space:]]*(where|:|=)|rankZero[[:space:]]*:=[[:space:]]*True|⟨[[:space:]]*True[[:space:]]*,[[:space:]]*trivial[[:space:]]*⟩' \
    lean/BealLevel26Foundations/Ribet/RibetLoweringActual_26.lean; then
  echo "FAIL: must not inhabit J0_26_Q_RankZero26 as True/trivial"
  exit 1
fi
test -f lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "def fourCuspAbsencePackage" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "theorem fourCuspAbsencePackage.certified" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "def NoFreyPoint26.of_qExpansion" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "theorem NoFreyPoint26.of_qExpansion_replaces_premise" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "displayedCusps" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
grep -q "Not from Ribet existence" \
  lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean
if grep -nE 'ofBealFreyLowering|ribetExistenceFromQExpansion' \
    lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean; then
  echo "FAIL: NoFreyPointActual_26 must prove absence, not Ribet existence"
  exit 1
fi
if grep -nE \
    'theorem[[:space:]]+(NoFreyPoint26\.not_exists|noNoncuspidalLevel26FreyPoint)|hGeomForbid_of_qExpansion' \
    lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean; then
  echo "FAIL: NoFreyPointActual_26 must not Lean-negate elliptic-j ExistsNoncuspidal"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE 'J0_26_Q_RankZero26[[:space:]]*(where|:|=)|rankZero[[:space:]]*:=[[:space:]]*True|⟨[[:space:]]*True[[:space:]]*,[[:space:]]*trivial[[:space:]]*⟩' \
    lean/BealLevel26Foundations/Ribet/NoFreyPointActual_26.lean; then
  echo "FAIL: must not inhabit J0_26_Q_RankZero26 as True/trivial"
  exit 1
fi
test -f lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "def productRankZeroFromCertifiedFactors" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "def J0_26_Q_RankZero26.of_qExpansion" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "theorem J0_26_Q_RankZero26.of_qExpansion_replaces_premise" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "MwrankCertificateSoundness_26" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "sUnitAudit26_is_not_genuine_2Selmer" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
if grep -nE 'selmerGroup|IsDedekindDomain' \
    lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean; then
  echo "FAIL: rank-zero package must not use IsDedekindDomain.selmerGroup"
  exit 1
fi
if grep -nE 'rankZero[[:space:]]*:=[[:space:]]*True|⟨[[:space:]]*True[[:space:]]*,[[:space:]]*trivial[[:space:]]*⟩' \
    lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean; then
  echo "FAIL: must not inhabit J0_26_Q_RankZero26 as True/trivial"
  exit 1
fi
if grep -nE \
    'theorem[[:space:]]+(genuineCohomological2Selmer|twoSelmerIdentification|SelmerGroup_eq)' \
    lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean; then
  echo "FAIL: must not identify the S-unit audit with genuine 2-Selmer"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
grep -q "displayedTargetLevel" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "hGeomForbid" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "ExistsFreyWitness" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "hIdentify" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "¬ ExistsNoncuspidalLevel26FreyPoint" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "DisplayedX026PointKind" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "ellipticJ" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "fourCuspsForallCuspPoints" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "fourCuspsForallAllKinds_is_false" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "DisplayedX026CuspPoint" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "import BealLevel26Foundations.Descent.Selmer_26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "def rankZero_unconditional" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "theorem rankZero_unconditional.certified" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "X026RationalPointsActual_26" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "computational boundary" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "def hGeomForbid : Option Prop" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "Mathlib has no \`SelmerGroup\`" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
grep -q "not a Lean Mordell--Weil theorem" \
  lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean
if grep -q "import BealLevel26Foundations.Jacobian.ColemanNonVanishing_26" \
    lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean; then
  echo "FAIL: EndgameScaffold must not import ColemanNonVanishing_26 (cycle)"
  exit 1
fi
if grep -nE \
    'def[[:space:]]+hGeomForbid[[:space:]]*:[[:space:]]*Prop[[:space:]]*:=' \
    lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean; then
  echo "FAIL: Option hGeomForbid must remain Option Prop, not the typed implication"
  exit 1
fi
test -f lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "import BealLevel26Foundations.Mazur.EndgameScaffold" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "structure hGeomForbid" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "def hGeomForbid_computational" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "theorem BealTheorem_Exponent13" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "theorem BealTheorem" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "hGeomForbid_typed" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "X026RationalPointsActual_26" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "computational boundary" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "MordellWeil.rank" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "SelmerGroup" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "hGeomForbid_typed_is_uninhabitable" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]*:' \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: full theorem BealTheorem must stay guarded by a hypothesis"
  exit 1
fi
if grep -nE \
    'fourCusps[[:space:]]*→[[:space:]]*¬[[:space:]]*ExistsNoncuspidal' \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean |
    grep -nE '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid_computational'; then
  echo "FAIL: must not inhabit typed fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
if grep -nE 'Prop[[:space:]]*:=[[:space:]]*True|:=[[:space:]]*trivial' \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: computational BealTheorem package must not be True/trivial"
  exit 1
fi
grep -q "import BealLevel26Foundations.Chain.FreyCurve_13_26" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "import BealLevel26Foundations.Chain.RationalPoints_26_FourCusps_26" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "def hGeomForbid_typed_computational" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "theorem hGeomForbid_typed_is_computationally_inhabited" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -qF "def hGeomForbid_typed_computational : Prop :=" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "X0_26_Q_four" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -qF "def BealTheorem_Exponent13_Full_package : Prop :=" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -qF "def BealTheorem_Exponent13_Full : Prop :=" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
if grep -nE 'BealTheorem_Exponent13_Full[[:space:]]*:[[:space:]]*∀' \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: BealTheorem_Exponent13_Full must not claim ∀ A B C Fermat/Beal"
  exit 1
fi
grep -qF "def FreyLevel26 : Prop := 2 * 13 = 26" \
  lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean
grep -qF "def FreyToX0_26 : Prop := 26 = 2 * 13" \
  lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean
grep -q "theorem freyLevel26_computational" \
  lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean
grep -q "theorem freyToX0_26_computational" \
  lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean
grep -q "no Ribet" \
  lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean
grep -q "def X0_26_Q_four" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "def X0_26_Q_eq_fourCusps" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "def fourCuspsList" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "theorem fourCuspsList_complete_computational" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "def hGeomForbid_typed_closed : Prop" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "theorem hGeomForbid_typed_is_now_computationally_inhabitable" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
if grep -nE \
    'hGeomForbid_typed_closed[[:space:]]*:[[:space:]]*\(?fourCusps[[:space:]]*→' \
    lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: hGeomForbid_typed_closed must stay a Prop package, not fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
if grep -nE '^[[:space:]]*False\.elim|^[[:space:]]*exact[[:space:]]+False\.elim' \
    lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: must not inhabit typed fourCusps → ¬ ExistsNoncuspidal by contradiction"
  exit 1
fi
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "Not \`X₀(26)(ℚ)" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
grep -q "hGeomForbid_typed_is_uninhabitable" \
  lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean
if grep -nE 'Prop[[:space:]]*:=[[:space:]]*True|:=[[:space:]]*trivial' \
    lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean \
    lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean; then
  echo "FAIL: Chain packages must not be True/trivial"
  exit 1
fi
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean \
    lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Chain/FreyCurve_13_26.lean \
    lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26" \
    lean/BealLevel26Foundations/Chain/RationalPoints_26_FourCusps_26.lean; then
  echo "FAIL: RationalPoints_26_FourCusps_26 must not import BealTheoremFromMazurChain26 (cycle)"
  exit 1
fi
grep -qF "def BealExponent13_Iter_Package : Prop :=" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -q "theorem BealExponent13_Iter_Package.certified" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -qF "def BealExponent13_Final_Package : Prop :=" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -q "theorem BealExponent13_Final_Package.certified" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -q "Deprecated alias of \`BealExponent13_Iter_Package\`" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
if grep -nE 'BealExponent13_Final[[:space:]]*:[[:space:]]*∀' \
    lean/BealLevel26Foundations/Final/BealExponent13_Final.lean; then
  echo "FAIL: BealExponent13_Final_Package must not claim ∀ A B C"
  exit 1
fi
if grep -nE 'Prop[[:space:]]*:=[[:space:]]*True|:=[[:space:]]*trivial' \
    lean/BealLevel26Foundations/Final/BealExponent13_Final.lean; then
  echo "FAIL: Final package must not be True/trivial"
  exit 1
fi
if grep -nE '^[[:space:]]*False\.elim|^[[:space:]]*exact[[:space:]]+False\.elim' \
    lean/BealLevel26Foundations/Final/BealExponent13_Final.lean; then
  echo "FAIL: Final package must not inhabit a forall by contradiction"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Final.BealExponent13_Final" \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: BealTheoremFromMazurChain26 must not import Final (cycle)"
  exit 1
fi
grep -q "import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -q "import BealLevel26Foundations.Modularity.RibetLevelLowering_26" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "import BealLevel26Foundations.Modularity.FreyModularity_13" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "import BealLevel26Foundations.Chain.X0_26_Point" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "theorem chain_secure" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "modularity_ribet_chain" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
if grep -q "import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26" \
    lean/BealLevel26Foundations/Chain/X0_26_Point.lean \
    lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean \
    lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean; then
  echo "FAIL: modularity / X0_26_Point must not import BealTheoremFromMazurChain26 (cycle)"
  exit 1
fi
grep -q "structure X0_26_Point_Raw" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -qF "def fourCuspsList : List Nat :=" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def isCuspPoint" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def X0_26_Q" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -qF "{P | P.label ∈ fourCuspsList}" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem X0_26_Q_eq_fourCuspsList" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def x0_26_four_cusps_cert" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "SECURED BY" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem X0_26_Q_four_cusps" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
echo "----- certs/pari_x0_26_four_cusps.json -----"
cat certs/pari_x0_26_four_cusps.json
echo "----- end certs/pari_x0_26_four_cusps.json -----"
cat certs/pari_x0_26_four_cusps.json | grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260"
python3 - <<'PY'
import json
from pathlib import Path
j = json.loads(Path("certs/pari_x0_26_four_cusps.json").read_text())
sha = "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260"
if j.get("SHA") != sha:
    raise SystemExit(f"FAIL: SHA {j.get('SHA')!r} != {sha}")
if j.get("fourCusps") != [1, 2, 13, 26]:
    raise SystemExit(f"FAIL: fourCusps {j.get('fourCusps')!r} != [1, 2, 13, 26]")
if j.get("M3_det") != 2:
    raise SystemExit(f"FAIL: M3_det {j.get('M3_det')!r} != 2")
if j.get("frey_level") != "2*13=26":
    raise SystemExit(f"FAIL: frey_level {j.get('frey_level')!r}")
if j.get("26a1", {}).get("ainv") != [1, 0, 1, -5, -8] or j.get("26a1", {}).get("disc") != -17576:
    raise SystemExit(f"FAIL: 26a1 {j.get('26a1')!r}")
if j.get("26b1", {}).get("ainv") != [1, -1, 1, -3, 3] or j.get("26b1", {}).get("disc") != -1664:
    raise SystemExit(f"FAIL: 26b1 {j.get('26b1')!r}")
if "SHA_cert" in j or "curve_26a1" in j or "curve_26b1" in j:
    raise SystemExit("FAIL: lock JSON must use keys 26a1/26b1/SHA")
for key in ("26a1", "26b1"):
    if j[key].get("sel2") != 1:
        raise SystemExit(f"FAIL: {key} sel2 {j[key].get('sel2')!r} != 1")
    if j[key].get("rank") != 0:
        raise SystemExit(f"FAIL: {key} rank {j[key].get('rank')!r} != 0")
img = Path("docs/images/2-descent-level-26-26a1-26b1.webp")
if not img.is_file():
    raise SystemExit("FAIL: missing docs/images/2-descent-level-26-26a1-26b1.webp")
if img.stat().st_size < 300000:
    raise SystemExit(f"FAIL: 2-descent image too small ({img.stat().st_size} bytes)")
print("verified pari_x0_26_four_cusps.json SHA + fourCuspsList")
print("verified v4.12.0-iter-verify-plus image + JSON keys + Sel2")
PY
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  certs/pari_x0_26_four_cusps.json
grep -qE '"fourCusps":[[:space:]]*\[1,[[:space:]]*2,[[:space:]]*13,[[:space:]]*26\]' \
  certs/pari_x0_26_four_cusps.json
test ! -e docs/images/797726399_1063690106418837_5544926896290683567_n.webp
test ! -f docs/images/797726399_1063690106418837_5544926896290683567_n.webp
grep -q "PARI 2-Descent Certificates" README.md
grep -q "docs/images/2-descent-level-26-26a1-26b1.webp" README.md
grep -q "def fourCuspsList" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -qE '\[1,[[:space:]]*2,[[:space:]]*13,[[:space:]]*26\]' \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem X0_26_Q_eq_fourCuspsList" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -A3 "theorem X0_26_Q_eq_fourCuspsList" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean | grep -q rfl
# v4.13.1: do not grep unconfirmed Zenodo version-DOI record ids.
# v4.30.0: lock confirmed 22452680 + 22456594 so stale README badges fail.
grep -q "2-descent-level-26-26a1-26b1.webp" docs/README.md
grep -q "2-descent-level-26-26a1-26b1.webp" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
if grep -nE 'SHA_cert|curve_26a1|curve_26b1' certs/pari_x0_26_four_cusps.json; then
  echo "FAIL: lock JSON must not use SHA_cert or curve_26a1/curve_26b1"
  exit 1
fi
if grep -nE -- '-1216|-1831858856' certs/pari_x0_26_four_cusps.json; then
  echo "FAIL: lock JSON must use certified discriminants -17576/-1664"
  exit 1
fi
if grep -nE '∨[[:space:]]*True|or[[:space:]]+True' \
    lean/BealLevel26Foundations/Chain/X0_26_Point.lean; then
  echo "FAIL: X0_26_Q must not use a True disjunct"
  exit 1
fi
grep -q "def ExistsNoncuspidal_26" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "structure FreyCurve13" \
  lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean
grep -q "axiom frey_modular_13" \
  lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean
grep -q "COMPUTATIONAL ASSUMPTION" \
  lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean
grep -q "def freyLevel26_computational" \
  lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean
grep -q "def frey_conductor_26" \
  lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean
grep -q "axiom ribet_level_lowering_26" \
  lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean
grep -q "PLACEHOLDER AXIOM" \
  lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean
grep -q "COMPUTATIONAL ASSUMPTION" \
  lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean
grep -q "theorem ribet_secured_by_certs" \
  lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean
if grep -nE '^[[:space:]]*False\.elim|^[[:space:]]*exact[[:space:]]+False\.elim' \
    lean/BealLevel26Foundations/Chain/X0_26_Point.lean \
    lean/BealLevel26Foundations/Modularity/FreyModularity_13.lean \
    lean/BealLevel26Foundations/Modularity/RibetLevelLowering_26.lean \
    lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean \
    lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean; then
  echo "FAIL: modularity scaffold must not use False.elim"
  exit 1
fi
grep -q "frey_modular_13" \
  lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
grep -q "ribet_level_lowering_26" \
  lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
grep -q "X0_26_Q_four_cusps" \
  lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
grep -q "theorem contradiction_from_ribet" \
  lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
grep -q "theorem beal_exponent13_from_ribet" \
  lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
grep -q "STILL NOT ∀ N" \
  lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean
grep -q "import BealLevel26Foundations.Mazur.BealExponent13_Contradiction" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "beal_exponent13_from_ribet" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
if grep -q "import BealLevel26Foundations.Final" \
    lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean; then
  echo "FAIL: Contradiction must not import Final (cycle)"
  exit 1
fi
if grep -q "import BealLevel26Foundations.Mazur.BealExponent13_Contradiction" \
    lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean; then
  echo "FAIL: BealTheoremFromMazurChain26 must not import Contradiction (cycle)"
  exit 1
fi
if grep -nE 'BealExponent13_Contradiction[[:space:]]*:[[:space:]]*∀' \
    lean/BealLevel26Foundations/Mazur/BealExponent13_Contradiction.lean \
    lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean; then
  echo "FAIL: Contradiction must not claim ∀ A B C"
  exit 1
fi
grep -qF "def fourCuspsList : List Nat :=" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "structure DisplayedX026CuspPoint" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "DisplayedX026CuspPoint" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "def fourCuspsForallCuspPoints" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "def ExistsNoncuspidal_26" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "def fourCuspsList_complete_computational" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "def hGeomForbid_typed_true" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "#check hGeomForbid_typed_true" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "#check hGeomForbid_typed_is_uninhabitable" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -qF "def BealTheorem_Exponent13_Typed : Prop :=" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
grep -q "theorem BealTheorem_Exponent13_Typed.certified" \
  lean/BealLevel26Foundations/Final/BealExponent13_Final.lean
if grep -nE 'BealTheorem_Exponent13_Typed[[:space:]]*:[[:space:]]*∀' \
    lean/BealLevel26Foundations/Final/BealExponent13_Final.lean; then
  echo "FAIL: BealTheorem_Exponent13_Typed must not claim ∀ A B C"
  exit 1
fi
grep -q "import BealLevel26Foundations.Final.BealExponent13_Final" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -qF "def BealExponent13_Iter_Typed_And_Package : Prop :=" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -q "theorem BealExponent13_Iter_Typed_And_Package.certified" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -qF "def BealTheorem_Exponent13_Forall_Computational : Prop :=" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -q "theorem BealTheorem_Exponent13_Forall_Computational.certified" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -q "beal_forall_from_ribet" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -q "beal_prime_divisor_13" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -q "beal_forall_reduces_to_exponent13" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
grep -q "beal_prime_divisor_13" docs/Final/BealExponent13_Forall.md
grep -q "v4.31.0" docs/Final/BealExponent13_Forall.md
grep -q "Reduction to p=13" docs/Final/BealExponent13_Forall.md
grep -q "certified_from_forall" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "typed_and_forall" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "certified_typed_and_forall" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "def final_bridge" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "def final_package" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "beal_forall_eq_exponent13_bridge" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "beal13_forall_bridge_triple" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "typed_and_forall" docs/BealExponent13_Iter_Package.md
grep -q "final_package" docs/BealExponent13_Iter_Package.md
grep -q "beal13_forall_bridge_triple" docs/BealExponent13_Iter_Package.md
grep -q "final_package" README.md
grep -q "final_package" docs/README.md
grep -q "beal13_forall_bridge_triple" README.md
grep -q "beal13_forall_bridge_triple" docs/README.md
grep -q "22452680" README.md
grep -q "22456594" README.md
grep -q "X0_26_cusps" README.md
grep -q "beal_forall_eq_exponent13_bridge" \
  lean/BealLevel26Foundations/Final/BealExponent13_Iter_Package.lean
grep -q "X0_26_cusps" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem X0_26_Q_eq_cusps" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -A3 "theorem X0_26_Q_eq_cusps" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean | grep -q rfl
grep -q "theorem mem_1" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem mem_2" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem mem_13" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem mem_26" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem not_mem_3" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def hInList_X0_26" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def hNotIn_X0_26" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def hInList_label" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "def hNotIn_label" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "theorem displayed_mem_cusps" \
  lean/BealLevel26Foundations/Chain/X0_26_Point.lean
grep -q "hInList_label" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "displayed_mem_cusps" \
  lean/BealLevel26Foundations/Mazur/BealTheoremFromMazurChain26.lean
grep -q "X0_26_cusps" docs/Chain/X0_26_Point.md
grep -q "P.mem" docs/Chain/X0_26_Point.md
grep -q "mem_1" docs/Chain/X0_26_Point.md
if grep -nE 'BealExponent13_Iter[[:space:]]*:[[:space:]]*∀' \
    lean/BealLevel26Foundations/Final/BealExponent13_Final.lean \
    lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean; then
  echo "FAIL: Iter package must not claim ∀ A B C"
  exit 1
fi
grep -q "We do not use the word final" docs/NEXT_STEPS.md
grep -q "BealExponent13_Contradiction" docs/NEXT_STEPS.md
grep -q "v4.8.0" docs/NEXT_STEPS.md
grep -q "v4.9.0" docs/NEXT_STEPS.md
grep -q "v4.10.0" docs/NEXT_STEPS.md
grep -q "v4.12.0" docs/NEXT_STEPS.md
grep -q "v4.13.0" docs/NEXT_STEPS.md
grep -q "v4.13.1" docs/NEXT_STEPS.md
grep -q "no True" docs/NEXT_STEPS.md
grep -q "pari_x0_26_four_cusps.json" docs/NEXT_STEPS.md
grep -qi "waiting" docs/NEXT_STEPS.md
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean
if grep -nE 'BealTheorem_Exponent13_Forall[[:space:]]*:[[:space:]]*∀' \
    lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean; then
  echo "FAIL: BealTheorem_Exponent13_Forall_Computational must not claim ∀ A B C"
  exit 1
fi
if grep -nE 'Prop[[:space:]]*:=[[:space:]]*True|:=[[:space:]]*trivial' \
    lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean; then
  echo "FAIL: Forall package must not be True/trivial"
  exit 1
fi
if grep -nE '^[[:space:]]*False\.elim|^[[:space:]]*exact[[:space:]]+False\.elim' \
    lean/BealLevel26Foundations/Final/BealExponent13_Forall.lean; then
  echo "FAIL: Forall package must not inhabit a forall by contradiction"
  exit 1
fi
grep -q "fourCuspsForallCuspPoints" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean
grep -q "fourCuspsForallCuspPoints" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "fourCuspsForallAllKinds_is_false" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
test -f lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
grep -q "def hIdentify" \
  lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
grep -q "def HIdentify26.of_qExpansion" \
  lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
grep -q "def hIdentifyFinitePackage" \
  lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
grep -q "theorem remainingGeometricIdentify.certified" \
  lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
grep -q "sUnitAudit26_is_not_genuine_2Selmer" \
  lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean
if grep -nE 'hIdentify_typed_is_uninhabitable' \
    lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean; then
  echo "FAIL: typed hIdentify is the elliptic-j packing, not the old uninhabitable implication"
  exit 1
fi
if grep -nE \
    'theorem[[:space:]]+(genuineCohomological2Selmer|twoSelmerIdentification|SelmerGroup_eq)' \
    lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean; then
  echo "FAIL: must not identify the S-unit audit with genuine 2-Selmer"
  exit 1
fi
if grep -nE 'selmerGroup|IsDedekindDomain' \
    lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean; then
  echo "FAIL: hIdentify package must not use IsDedekindDomain.selmerGroup"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean \
    lean/BealLevel26Foundations/Mazur/EndgameScaffold.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
test -f lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "def HGeomForbid26.of_qExpansion" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "theorem ellipticJ_ne_four_cusp_labels" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "theorem hGeomForbid_typed_is_uninhabitable" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "theorem remainingGeometricForbid.certified" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "sUnitAudit26_is_not_genuine_2Selmer" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
if grep -nE \
    'theorem[[:space:]]+(genuineCohomological2Selmer|twoSelmerIdentification|SelmerGroup_eq)' \
    lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean; then
  echo "FAIL: must not identify the S-unit audit with genuine 2-Selmer"
  exit 1
fi
if grep -nE 'selmerGroup|IsDedekindDomain' \
    lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean; then
  echo "FAIL: hGeomForbid package must not use IsDedekindDomain.selmerGroup"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Mazur/HGeomForbidActual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
test -f lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "def chabauty0Package" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "theorem chabauty0Package.certified" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "theorem remainingGeometricForbid.certified" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "fourCuspsForallCuspPoints" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "fourCuspsForallAllKinds_is_false" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "sUnitAudit26_is_not_genuine_2Selmer" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
grep -q "Not Chabauty" \
  lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
if grep -nE 'rankZero[[:space:]]*:=[[:space:]]*True|⟨[[:space:]]*True[[:space:]]*,[[:space:]]*trivial[[:space:]]*⟩|FreyModLRep.*:=[[:space:]]*True|RibetLowering_26.*:=[[:space:]]*True' \
    lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean \
    lean/BealLevel26Foundations/Ribet/HIdentifyActual_26.lean; then
  echo "FAIL: must not inhabit representation or rank-zero data as True/trivial"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Mazur/Chabauty0Actual_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
test -f lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean
grep -q "def ResidueDiskAt2ContainsOnlyCusp" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean
grep -q "def Chabauty0DiskEquality" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean
grep -q "Not a residue-disk" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean
test -f lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean
grep -q "def X0_26_Q_EqualsFourCuspsAsScheme" \
  lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean
grep -q "not a scheme-theoretic" \
  lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean
grep -q "sUnitAudit26_is_not_genuine_2Selmer" \
  lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean
test -f lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean
grep -q "def X0_26_RationalPoints26_as_scheme" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean
grep -q "Not a scheme-theoretic" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean \
    lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean \
    lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/ResidueDisks_26.lean \
    lean/BealLevel26Foundations/Jacobian/MordellWeilSieve_26.lean \
    lean/BealLevel26Foundations/Mazur/X026RationalPointsScheme_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
test -f lean/BealLevel26Foundations/Blueprint/README.md
test -f lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean
grep -q "def J0_26_Scheme_26" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean
grep -q "structure J0_26_Scheme" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean
grep -q "Not a Mathlib Jacobian" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean
test -f lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean
grep -q "structure AbelJacobi_26" \
  lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean
grep -q "Not a map of schemes" \
  lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean
if grep -nE 'isJacobianOfX0_26[[:space:]]*:=[[:space:]]*True|goodReductionAtTwo[[:space:]]*:=[[:space:]]*True|mordellWeilRankZero[[:space:]]*:=[[:space:]]*True|sendsInfinityCuspToZero[[:space:]]*:=[[:space:]]*True|cuspImageTorsion[[:space:]]*:=[[:space:]]*True|⟨[[:space:]]*True[[:space:]]*,[[:space:]]*trivial[[:space:]]*⟩' \
    lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean \
    lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean; then
  echo "FAIL: must not inhabit J0_26_Scheme or AbelJacobi as True/trivial"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/J0_26_Scheme_26.lean \
    lean/BealLevel26Foundations/Jacobian/AbelJacobi_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
test -f lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean
grep -q "def diskEqualityFromImmersion" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean
grep -q "theorem diskEqualityFromImmersion.certified" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean
grep -q "Not a residue-disk" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/ResidueDisksProof_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi
test -f lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean
grep -q "def ColemanVanishesOnRankZero" \
  lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean
grep -q "theorem ColemanVanishesOnRankZero.certified" \
  lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean
grep -q "Not a Coleman integral" \
  lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean
test -f lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean
grep -q "def DifferentialNonZeroOnDisk" \
  lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean
grep -q "def Chabauty0ForcesCusp" \
  lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean
grep -q "Not a Chabauty" \
  lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean \
    lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Jacobian/ColemanIntegral_26.lean \
    lean/BealLevel26Foundations/Jacobian/ColemanNonVanishing_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi

test -f lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
grep -q "def LMFDB_26a1_rankZero" \
  lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
grep -q "def LMFDB_26b1_rankZero" \
  lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
grep -q "def J0_26_rankZero_from_LMFDB" \
  lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
grep -q "Not a Mordell--Weil theorem" \
  lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean
if grep -nE 'Prop[[:space:]]*:=[[:space:]]*True|:=[[:space:]]*trivial' \
    lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean; then
  echo "FAIL: LMFDB rank must not be True/trivial"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Certs/LMFDBCert_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi

test -f lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
test -f lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
test -f lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "def EC_26a1_aInv" \
  lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
grep -q "def EC_26b1_aInv" \
  lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
grep -q "factor26a1.a1" \
  lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
grep -q -- "-17576" \
  lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
grep -q -- "-1664" \
  lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean
grep -q "def TwoCoverings_26a1_finitePackage" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "def SelmerBound_26a1" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "def SelmerBound_26b1" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "def TorsionOrder_26a1" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "def TorsionOrder_26b1" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "SelmerBound_26a1 : ℕ := 1" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "TorsionOrder_26a1 : ℕ := 3" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "Not a Selmer" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "Not a two-descent" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean
grep -q "def Sha2_26a1_trivial" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "def RankZero_26a1_from_Selmer" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "def RankZero_26b1_from_Selmer" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "Not a Selmer" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "Not a Mordell--Weil theorem" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -qF "Not Sha[2] triviality" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151" \
  lean/BealLevel26Foundations/Descent/Selmer_26.lean
grep -q "import BealLevel26Foundations.Descent.Selmer_26" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "do not replace" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
grep -q "Not a Selmer" \
  lean/BealLevel26Foundations/Jacobian/J0_26_Q_RankZeroActual_26.lean
if grep -nE 'Prop[[:space:]]*:=[[:space:]]*True|:=[[:space:]]*trivial' \
    lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean \
    lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean \
    lean/BealLevel26Foundations/Descent/Selmer_26.lean; then
  echo "FAIL: Descent ranks/Selmer names must not be True/trivial"
  exit 1
fi
if grep -nE -- '-1216|-1831858856|-213' \
    lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean; then
  echo "FAIL: Descent Weierstrass models must use certified 26a1/26b1 a-invariants"
  exit 1
fi
if grep -nE '^[[:space:]]*theorem BealTheorem[[:space:]]' \
    lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean \
    lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean \
    lean/BealLevel26Foundations/Descent/Selmer_26.lean; then
  echo "FAIL: unconditional BealTheorem is not allowed"
  exit 1
fi
if grep -nE \
    '^[[:space:]]*(def|theorem)[[:space:]]+hGeomForbid[[:space:]]' \
    lean/BealLevel26Foundations/Descent/EllipticCurve_26a1_26b1_26.lean \
    lean/BealLevel26Foundations/Descent/TwoDescent_26a1_26.lean \
    lean/BealLevel26Foundations/Descent/Selmer_26.lean; then
  echo "FAIL: must not inhabit typed hGeomForbid fourCusps → ¬ ExistsNoncuspidal"
  exit 1
fi

python3 scripts/verify_coefficient_ledger.py
python3 scripts/verify_v1_3_0_certs.py
python3 scripts/replay_level26_hensel.py
python3 scripts/verify_lmfdb_26.py
python3 scripts/verify_descent_26.py

echo "OK: Beal Level-26 Foundations computable release is internally consistent"