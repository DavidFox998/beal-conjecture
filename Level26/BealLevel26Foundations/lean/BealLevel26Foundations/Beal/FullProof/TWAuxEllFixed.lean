/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.18.0 — `TWAuxEllFixed` for every
`N ≤ 10000` on `InTWEll1000`, by transporting
the `N = 10000` witnesses (`Qᵢ > 10000 ≥ N`).
Not `Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000` (that stays
`InTWEll1000_complete`).  Not a 1.66M-row
`decide` / `fin_cases` expansion.  Not
`Q₁ ≤ N + 21000` for small `N` (the reused
`ℓ = 941` witness is `30113`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimes
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_5_100
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_101_200
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_201_300
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_301_400
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_401_500
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_501_600
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_601_700
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_701_800
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_801_900
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_901_1000

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_5_100
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_101_200
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_201_300
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_301_400
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_401_500
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_501_600
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_601_700
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_701_800
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_801_900
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_901_1000

/-!
Full `next_Q1_gt_N` / next-`Q₂` table.

`ell  Q1@26  Q1@10000  Q2@26  Q2@10000`
--    5      31   10061        101      10151
--    7      29   10039        197      10193
--   11      67   10099        727      10891
--   13      53   10037        677      10141
--   17     103   10099       3469      13873
--   19     191   10223      10831      10831
--   23      47   10259      12697      12697
--   29      59   10151      10093      10093
--   31     311   10169      15377      15377
--   37     149   10139       5477      13691
--   41      83   10169      16811      16811
--   43     173   10321      22189      22189
--   47     283   10247       8837      22091
--   53     107   10177      78653      78653
--   59     709   10267      20887      20887
--   61     367   10859     171167     171167
--   67     269   10453      17957      17957
--   71     569   10651      50411      50411
--   73     293   10513      21317      21317
--   79     317   10271      37447      37447
--   83     167   10459      68891      68891
--   89     179   10859      47527      47527
--   97     389   10477     112909     112909
--  101     607   10303     224423     224423
--  103     619   10301      42437      42437
--  107     643   10273     206083     206083
--  109    1091   10247      71287      71287
--  113     227   11527     127691     127691
--  127     509   11177     193549     193549
--  131     263   12577     102967     102967
--  137     823   10139     525533     525533
--  139     557   10009     309137     309137
--  149    1193   10133     222011     222011
--  151     907   11779     273613     273613
--  157    1571   11933      98597      98597
--  163     653   10433     106277     106277
--  167    2339   14029     278891     278891
--  173     347   12457     538723     538723
--  179     359   12889     512657     512657
--  181    1087   10499     720743     720743
--  191     383   16427     218887     218887
--  193     773   10037     148997     148997
--  197    3547   10639     853799     853799
--  199     797   11941     237607     237607
--  211    2111   10973     534253     534253
--  223    2677   10259     497291     497291
--  227    5449   11351     618349     618349
--  229    2749   10993     524411     524411
--  233     467   10253     217157     217157
--  239     479   10039     571211     571211
--  241    1447   11087     348487     348487
--  251     503   12049    1008017    1008017
--  257    1543   13879    1981471    1981471
--  263    1579   11047    1936733    1936733
--  269    2153   10223     434167     434167
--  271    1627   11383     734411     734411
--  277    1109   12743    3069161    3069161
--  281     563   14051     789611     789611
--  283    1699   11321     961069     961069
--  293     587   12893    2403773    2403773
--  307    1229   12281    2638973    2638973
--  311    1867   11197    1547537    1547537
--  313    1879   13147     979691     979691
--  317    8243   15217     401957     401957
--  331    1987   13241    1752977    1752977
--  337    3371   10111     454277     454277
--  347    2083   13187    1444909    1444909
--  349    3491   11867    4384837    4384837
--  353    4943   14827    3489053    3489053
--  359     719   10771     773287     773287
--  367    2203   12479    1616269    1616269
--  373    1493   15667    2504323    2504323
--  379    4549   10613    1436411    1436411
--  383    4597   11491    3520537    3520537
--  389    9337   14783     907927     907927
--  397    2383   11117    2836963    2836963
--  401    3209   10427    4824031    4824031
--  409    1637   13907    6022117    6022117
--  419     839   15923    2106733    2106733
--  421    4211   11789    2126893    2126893
--  431     863   24137    1114567    1114567
--  433    1733   14723    3374803    3374803
--  439    4391   13171    1156327    1156327
--  443     887   11519    3532483    3532483
--  449    3593   14369    3628819    3628819
--  457   13711   13711    5012377    5012377
--  461    2767   11987    2550253    2550253
--  463    5557   11113   17578259   17578259
--  467    2803   12143    4797959    4797959
--  479    3833   11497    5047703    5047703
--  487    1949   11689    9486761    9486761
--  491     983   14731    2892973    2892973
--  499    1997   10979    6972029    6972029
--  503    3019   10061    2530091    2530091
--  509    1019   10181    2590811    2590811
--  521   16673   16673    4343057    4343057
--  523    5231   12553    6017639    6017639
--  541    9739   11903    6438983    6438983
--  547    5471   16411    1196837    1196837
--  557    3343   24509   18614941   18614941
--  563    7883   11261    6973319    6973319
--  569    6829   10243    7122743    7122743
--  571    5711   26267    9129149    9129149
--  577    2309   20773    7324439    7324439
--  587    8219   10567    1378277    1378277
--  593    1187   17791    6329683    6329683
--  599    4793   11981   15069643   15069643
--  601    3607   16829    5779217    5779217
--  607    3643   18211   10316573   10316573
--  613    6131   13487   12776147   12776147
--  617    4937   23447    4568269    4568269
--  619    2477   13619    4597933    4597933
--  631    6311   13883    4777933    4777933
--  641    1283   12821    7395859    7395859
--  643    7717   10289    4961389    4961389
--  647    9059   12941    1674437    1674437
--  653    1307   16979    1705637    1705637
--  659    1319   11863    5211373    5211373
--  661    3967   14543    2621527    2621527
--  673    2693   24229    9964439    9964439
--  677    5417   16249    1833317    1833317
--  683    1367   28687    1865957    1865957
--  691    6911   11057    2864887    2864887
--  701   12619   12619    7862417    7862417
--  709    2837   12763    8042897    8042897
--  719    1439   10067    8271377    8271377
--  727    2909   11633   21141161   21141161
--  733    7331   16127   18267827   18267827
--  739    2957   17737    6553453    6553453
--  743    1487   19319    6624589    6624589
--  751    4507   22531   10152019   10152019
--  757   12113   12113   13753177   13753177
--  761    1523   27397    5791211    5791211
--  769    7691   18457   13009943   13009943
--  773    4639   15461    2390117    2390117
--  787    4723   22037   17342333   17342333
--  797    4783   11159    6352091    6352091
--  809    1619   14563    7853773    7853773
--  811    8111   22709   11838979   11838979
--  821    6569   14779   12132739   12132739
--  823    8231   19753   28447819   28447819
--  827   11579   11579    2735717    2735717
--  829    8291   14923    4123447    4123447
--  839   10069   10069    7039211    7039211
--  853    3413   13649    8731309    8731309
--  857    6857   15427   13220083   13220083
--  859   18899   18899    4427287    4427287
--  863    5179   10357   16384919   16384919
--  877   14033   14033   23073871   23073871
--  881   15859   15859   23284831   23284831
--  883    3533   10597    3118757    3118757
--  887    5323   23063    3147077    3147077
--  907    5443   27211    9871789    9871789
--  911    1823   23687   13278737   13278737
--  919    3677   20219   59119271   59119271
--  929    7433   11149   13808657   13808657
--  937    5623   26237   15803443   15803443
--  941    5647   30113   14167697   14167697
--  947    5683   13259    3587237    3587237
--  953    1907   11437    9082091    9082091
--  967   15473   15473   11221069   11221069
--  971    5827   19421    9428411    9428411
--  977    7817   13679   17181523   17181523
--  983   13763   13763    3865157    3865157
--  991   17839   17839   47139889   47139889
--  997    3989   23929   47712433   47712433
-/

theorem TWAuxEllFixedExists_26_all {ℓ : Nat}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 26 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
  · exact TWAuxEllFixedExists_26_5_100 h
  · exact TWAuxEllFixedExists_26_101_200 h
  · exact TWAuxEllFixedExists_26_201_300 h
  · exact TWAuxEllFixedExists_26_301_400 h
  · exact TWAuxEllFixedExists_26_401_500 h
  · exact TWAuxEllFixedExists_26_501_600 h
  · exact TWAuxEllFixedExists_26_601_700 h
  · exact TWAuxEllFixedExists_26_701_800 h
  · exact TWAuxEllFixedExists_26_801_900 h
  · exact TWAuxEllFixedExists_26_901_1000 h

theorem TWAuxEllFixedExists_10000_all {ℓ : Nat}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 10000 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
  · exact TWAuxEllFixedExists_10000_5_100 h
  · exact TWAuxEllFixedExists_10000_101_200 h
  · exact TWAuxEllFixedExists_10000_201_300 h
  · exact TWAuxEllFixedExists_10000_301_400 h
  · exact TWAuxEllFixedExists_10000_401_500 h
  · exact TWAuxEllFixedExists_10000_501_600 h
  · exact TWAuxEllFixedExists_10000_601_700 h
  · exact TWAuxEllFixedExists_10000_701_800 h
  · exact TWAuxEllFixedExists_10000_801_900 h
  · exact TWAuxEllFixedExists_10000_901_1000 h

/-- Reuse the `N = 10000` table for every smaller
conductor.  `166 × 10001` pairs, stored as a
function, not a materialised `Finset.product`. -/
noncomputable def of_ℓ_N_product {ℓ N : Nat}
    (hℓ : InTWEll1000 ℓ) (hN : N ≤ 10000) :
    TWAuxEllFixed ℓ N :=
  TWAuxEllFixed.of_N_le
    (Classical.choice (TWAuxEllFixedExists_10000_all hℓ)) hN

theorem TWAuxEllFixedExists_all_N_le_10000 {ℓ N : Nat}
    (hℓ : InTWEll1000 ℓ) (hN : N ≤ 10000) :
    TWAuxEllFixedExists ℓ N :=
  ⟨of_ℓ_N_product hℓ hN⟩

theorem mem_Icc_0_10000 {N : Nat} :
    N ∈ Finset.Icc 0 10000 ↔ N ≤ 10000 := by
  simp [Finset.mem_Icc]

/-- Pair predicate for the product.  Not a
1.66M-element Finset: materialising
`primes_le_1000.product (Icc 0 10000)` hits
max recursion. -/
def product_all_mem (ℓ N : Nat) : Prop :=
  ℓ ∈ primes_le_1000 ∧ N ∈ Finset.Icc 0 10000

theorem TWAuxEllFixedExists_all_N_le_10000_mem {ℓ N : Nat}
    (hℓ : ℓ ∈ primes_le_1000) (hN : N ∈ Finset.Icc 0 10000) :
    TWAuxEllFixedExists ℓ N :=
  TWAuxEllFixedExists_all_N_le_10000 (InTWEll1000_iff_mem.mpr hℓ)
    (mem_Icc_0_10000.mp hN)

/-- Table-membership product.  Not
`Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`; that stays
`InTWEll1000_complete` / the Prime-quantified
`TWAuxEllFixed_inhabited_for_every_ell_le_1000`. -/
theorem TWAuxEllFixed_inhabited_for_every_ell_le_1000_product :
    ∀ ℓ ∈ primes_le_1000, ∀ N ∈ Finset.Icc 0 10000,
      TWAuxEllFixedExists ℓ N :=
  fun _ hℓ _ hN => TWAuxEllFixedExists_all_N_le_10000_mem hℓ hN

theorem TWAuxEllFixedExists_of_mem_product {ℓ N : Nat}
    (h : product_all_mem ℓ N) : TWAuxEllFixedExists ℓ N :=
  TWAuxEllFixedExists_all_N_le_10000_mem h.1 h.2

/-- A prime `≡ 1 [MOD ℓ]` above `N`, reused from
the `N = 10000` row.  The bound is `30113` at
`ℓ = 941`, which is not `≤ N + 21000` for
small `N`. -/
theorem find_next_prime_one_mod_gt_exists_product {ℓ N : Nat}
    (hℓ : InTWEll1000 ℓ) (hN : N ≤ 10000) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ N < Q1 := by
  rcases TWAuxEllFixedExists_all_N_le_10000 hℓ hN with ⟨tw⟩
  exact ⟨tw.Q1ell, tw.Q1_prime, tw.Q1_mod, tw.Q1_gt_N⟩

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed
