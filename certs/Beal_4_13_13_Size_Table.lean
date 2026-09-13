-- Compiled proofs live in
-- lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Size_Table.lean
-- This certificate is the B=1..100 C=B+1 table.

-- BealLevel26Foundations/Beal_4_13_13_Size_Table.lean
-- Auto-generated B=1..100 C=B+1 table A^4 = (B+1)^13 - B^13 ≥13·B^12 by decide
-- Extends v8.19.0-ExistsNewformLevel2 genus_X0_2_rat=0 μ=3 ν2=1 ν3=0 ν∞=2
-- Prior lake facts: of5_26_gt 31/101 of7_26_gt 29/197 of13_26_gt 53/677
-- TWAuxEllFixedExists_26_all _10000_all _all_N_le_10000 Qi>N Qi∤N
-- 56 witnesses 919→59119271%844561=1 166-row Q1 table Q2≤1e8 Pratt
-- Every Q2-1 factors through primes ≤997 honest window N+21000 ℓ=941→30113
-- collision ℓ=29 N=1000 10151≠10093 seven Q2≤10000→>10000 5→10151 7→10193 11→10891 13→10141 17→13873 37→13691 47→22091
-- primes_le_1000 right-associated Finset union fin_cases InTWEll1000_complete only [5,100] via Icc.filter
-- RibetMazur still does not import X0_26_Model 24-module none chain does not import RibetMazur TWPrimes TWAuxEllFixed X0_2_Genus
-- Both lake targets green twice verify-scaffold.sh OK About Track A mint 10.5281/zenodo.22635221 No new Beal ∀ Zenodo

def beal_4_13_13_C_eq_B_plus_1_diff (B : ℕ) : ℕ := (B+1)^13 - B^13

def beal_size_B_le_100_table : List (ℕ×ℕ×ℕ×ℕ) := [
  (1, 8191, 13, 9), -- B=1 C=2 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (2, 1586131, 53248, 35), -- B=2 C=3 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (3, 65514541, 6908733, 89), -- B=3 C=4 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (4, 1153594261, 218103808, 184), -- B=4 C=5 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (5, 11839990891, 3173828125, 329), -- B=5 C=6 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (6, 83828316391, 28298170368, 538), -- B=6 C=7 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (7, 452866803481, 179936733613, 820), -- B=7 C=8 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (8, 1992110014441, 893353197568, 1188), -- B=8 C=9 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (9, 7458134171671, 3671583974253, 1652), -- B=9 C=10 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (10, 24522712143931, 13000000000000, 2225), -- B=10 C=11 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (11, 72470493235141, 40799568897373, 2917), -- B=11 C=12 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (12, 195881901213181, 115909305827328, 3741), -- B=12 C=13 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (13, 490839666661891, 302875106592253, 4706), -- B=13 C=14 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (14, 1152480295105231, 737020860878848, 5826), -- B=14 C=15 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (15, 2557404559011121, 1686702392578125, 7111), -- B=15 C=16 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (16, 5400978405535441, 3659174697238528, 8572), -- B=16 C=17 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (17, 10918386832765231, 7574089083986893, 10222), -- B=17 C=18 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (18, 21230018596585891, 15038807958540288, 12070), -- B=18 C=19 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (19, 39867016537742941, 28773093947860093, 14130), -- B=19 C=20 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (20, 72552377739119461, 53248000000000000, 16412), -- B=20 C=21 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (21, 128337680143963291, 95625757648026333, 18927), -- B=21 C=22 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (22, 221226304053384631, 167115034203639808, 21687), -- B=22 C=23 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (23, 372451976528890441, 284890117616264173, 24704), -- B=23 C=24 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (24, 613627780919407801, 474764516668735488, 27988), -- B=24 C=25 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (25, 991036753818970951, 774860382080078125, 31551), -- B=25 C=26 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (26, 1571402279815239691, 1240576436601868288, 35405), -- B=26 C=27 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (27, 2449556269478971381, 1951230258860988573, 39561), -- B=27 C=28 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (28, 3758517290460654541, 3018837446159761408, 44030), -- B=28 C=29 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (29, 5682601287041397811, 4599592181671097533, 48824), -- B=29 C=30 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (30, 8474316297445042591, 6908733000000000000, 53954), -- B=30 C=31 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (31, 12475941849974060641, 10239616189251146893, 59431), -- B=31 C=32 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (32, 18146865846029400481, 14987979559889010688, 65268), -- B=32 C=33 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (33, 26097949252116932191, 21682563694388804493, 71474), -- B=33 C=34 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (34, 37134414536416985971, 31023468888010313728, 78062), -- B=34 C=35 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (35, 52309010397595786381, 43929866604736328125, 85044), -- B=35 C=36 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (36, 72987496036503097141, 61598957398181019648, 92429), -- B=36 C=37 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (37, 100928816306728521931, 85578376075920458653, 100231), -- B=37 C=38 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (38, 138382708044670752391, 117854592810434940928, 108460), -- B=38 C=39 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (39, 188207891432519420281, 160960249522493526573, 117127), -- B=39 C=40 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (40, 254014462315013629321, 218103808000000000000, 126245), -- B=40 C=41 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (41, 340334616123852995191, 293325373904760419053, 135824), -- B=41 C=42 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (42, 452826405843424160731, 391683103326315859968, 145875), -- B=42 C=43 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (43, 598515869895923119141, 519475200364413493213, 156411), -- B=43 C=44 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (44, 786083565793709923741, 684503180098108653568, 167443), -- B=44 C=45 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (45, 1026202317011616973411, 896382806214111328125, 178981), -- B=45 C=46 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (46, 1331933829137042375791, 1166909921756218052608, 191038), -- B=46 C=47 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (47, 1719192762587628116881, 1510489280416331517133, 203625), -- B=47 C=48 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (48, 2207287868939543011441, 1944635460275140558848, 216752), -- B=48 C=49 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (49, 2819550912352245694351, 2490556007947363387213, 230433), -- B=49 C=50 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (50, 3584065313156692195651, 3173828125000000000000, 244677), -- B=50 C=51 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (51, 4534507774128317834941, 4025181476883078402813, 259497), -- B=51 C=52 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (52, 5711117588321476165381, 5081401084321252507648, 274903), -- B=52 C=53 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (53, 7161809887924967383291, 6386365755337440010333, 290908), -- B=53 C=54 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (54, 8943450784040567905111, 7992239140294609195008, 307522), -- B=54 C=55 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (55, 11123314175531165648041, 9960832250335205078125, 324757), -- B=55 C=56 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (56, 13780741979392873943641, 12365158179470382727168, 342624), -- B=56 C=57 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (57, 17009031664060808056231, 15291201820744715684013, 361135), -- B=57 C=58 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (58, 20917577259575561163691, 18839929576124815495168, 380301), -- B=58 C=59 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (59, 25634292483867569704021, 23129566437113925319453, 400133), -- B=59 C=60 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (60, 31308347272152755657581, 28298170368000000000000, 420644), -- B=60 C=61 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (61, 38113251836517033247891, 34506536665868620058173, 441844), -- B=61 C=62 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (62, 46250325425496367514431, 41941467911172697673728, 463744), -- B=62 C=63 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (63, 55952590209491137256641, 50819448270224762435853, 486356), -- B=63 C=64 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (64, 67489134198214044214081, 61390764277305387778048, 509692), -- B=64 C=65 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (65, 81169990812458804526271, 73944117820374267578125, 533763), -- B=65 C=66 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (66, 97351586696071286268691, 88811780892216543203328, 558580), -- B=66 C=67 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (67, 116442813577270622239981, 106375345760227142879293, 584155), -- B=67 C=68 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (68, 138911784483962436541141, 127072128565290245029888, 610498), -- B=68 C=69 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (69, 165293339398365512533291, 151402288996105048363293, 637622), -- B=69 C=70 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (70, 196197370515497590531111, 179936733613000000000000, 665538), -- B=70 C=71 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (71, 232318042661607091502041, 213325875628330544745133, 694257), -- B=71 C=72 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (72, 274443990146684203907881, 252309329502949456478208, 723791), -- B=72 C=73 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (73, 323469577384349167871191, 297726624604373363249773, 754151), -- B=73 C=74 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (74, 380407317027739631734651, 350529028406970198642688, 785348), -- B=74 C=75 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (75, 446401546156980419924101, 411792576313018798828125, 817393), -- B=75 C=76 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (76, 522743468228337835418941, 482732412151541518041088, 850299), -- B=76 C=77 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (77, 610887676073604968168131, 564718550785526587422973, 884077), -- B=77 C=78 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (78, 712470279237457208075791, 659293182044133484843008, 918738), -- B=78 C=79 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (79, 829328767377741882866161, 768189643411763993958733, 954292), -- B=79 C=80 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (80, 963523750346673298932241, 893353197568000000000000, 990753), -- B=80 C=81 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (81, 1117362724937918352465391, 1036963759999342628223693, 1028131), -- B=81 C=82 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (82, 1293426028144281674645731, 1201460731513898676441088, 1066437), -- B=82 C=83 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (83, 1494595147142322061958941, 1389570100602594617332093, 1105683), -- B=83 C=84 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (84, 1724083567123434738950821, 1604333991224589762428928, 1145881), -- B=84 C=85 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (85, 1985470349545895985757531, 1849142842770237548828125, 1187041), -- B=85 C=86 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (86, 2282736645409771405062391, 2127770420692637668200448, 1229175), -- B=86 C=87 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (87, 2620305360777630786940681, 2444411868619469744035053, 1272295), -- B=87 C=88 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (88, 3003084205000402182299641, 2803725025681853045014528, 1316412), -- B=88 C=89 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (89, 3436512365981669512986631, 3210875246348407823945773, 1361537), -- B=89 C=90 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (90, 3926611071348035222576971, 3671583974253000000000000, 1407681), -- B=90 C=91 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (91, 4480038309611131023605941, 4192181336376862174653853, 1454857), -- B=91 C=92 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (92, 5104148001332306392627981, 4779663039513469143482368, 1503075), -- B=92 C=93 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (93, 5807053926958344749851891, 5441751867231818755962813, 1552347), -- B=93 C=94 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (94, 6597698735410694085946591, 6186964092585293894176768, 1602684), -- B=94 C=95 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (95, 7485928375707155447542561, 7024681139614280517578125, 1654098), -- B=95 C=96 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (96, 8482572312899819106467041, 7965226845286975729041408, 1706600), -- B=96 C=97 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (97, 9599529909452917243257631, 9019950692940694003835533, 1760201), -- B=97 C=98 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (98, 10849863373886395513344691, 10201317408552400434024448, 1814914), -- B=98 C=99 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (99, 12247897700103201214778701, 11523003332309680648564413, 1870748), -- B=99 C=100 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
  (100, 13809328043328941786781301, 13000000000000000000000000, 1927716), -- B=100 C=101 diff≥13B^12 by decide, floor A^4 ≤diff <(A+1)^4
]

theorem beal_4_13_13_diff_ge_13_mul_B12_B_le_100 (B : ℕ) (hB1 : B≥1) (hB100 : B≤100) :
  beal_4_13_13_C_eq_B_plus_1_diff B ≥ 13*B^12 := by
  unfold beal_4_13_13_C_eq_B_plus_1_diff
  interval_cases B <;> decide -- 100 cases, each by decide, no interval_cases max recursion on larger Icc

theorem beal_4_13_13_size_B_le_100_minimal_gap (A B C : ℕ) (h : A^4 + B^13 = C^13) (hB1 : B≥1) (hB100 : B≤100) (hCeq : C=B+1) :
  A^4 ≥ 13*B^12 := by
  have hDiff : C^13 - B^13 = A^4 := by omega
  rw [hCeq] at hDiff
  have hGe := beal_4_13_13_diff_ge_13_mul_B12_B_le_100 B hB1 hB100
  unfold beal_4_13_13_C_eq_B_plus_1_diff at hGe
  omega

-- Zsigmondy interval around 13^{1/4}B^3 wide missing in Mathlib 4.12
-- has_primitive_prime_divisor C B 13 still uninhabited for general B>100
-- beal_mixed_pow2_implies_level_2_newform needs Modular W→ExistsNewformLevel2 still 0≠0
-- beal_from_ribet_upside_down odd-A size gap needs zsigmondy_13
-- beal_4_13_13_mod8 opposite parity Not False beal_4_13_13_mod13 Not False
-- #print axioms [propext, Classical.choice, Quot.sound]