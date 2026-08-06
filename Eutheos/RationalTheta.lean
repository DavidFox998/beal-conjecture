-- Eutheos/RationalTheta.lean
    -- Rational theta contradicts the brothers Nodup structure.
    --
    -- Sorry budget:
    --   rational_gives_zero_dist           0 sorry  (pure algebra)
    --   brothers_Nodup_shift               0 sorry  (from brothers_Nodup + add_right_cancel)
    --   frac_mul_irrational_injective      0 sorry  (frac equality → int equality via dist_pos)
    --   brothers_frac_Nodup_of_irrational  0 sorry  (injectivity → List.Nodup.map)
    --   rational_contradicts_brothers      SORRY 1  (Superbrick FE: finite pigeonhole)
    import Mathlib.Data.Real.Irrational
    import Eutheos.Object
    import Eutheos.Theta

    namespace Eutheos

    /-! ## 1. Rational r has a zero-dist integer multiple -/

    /-- Any rational real has a positive integer multiple that lands on an integer,
      making dist vanish at that multiple. -/
    theorem rational_gives_zero_dist (r : ℝ) (hr : ¬Irrational r) :
      ∃ n : ℕ, n ≠ 0 ∧ dist (↑n * r) = 0 := by
    rw [irrational_iff_ne_rational] at hr
    push_neg at hr
    obtain ⟨a, b, hb, hrq⟩ := hr
    refine ⟨b.natAbs, Int.natAbs_ne_zero.mpr hb, ?_⟩
    have hbr : (b.natAbs : ℝ) * r = a := by
      rw [hrq]; push_cast; rw [Int.natAbs_cast]; field_simp
    rw [hbr]
    simp only [dist, frac, Int.ceil_intCast, sub_self, min_self]

    /-! ## 2. Shifting brothers preserves Nodup (integer level) -/

    /-- For all t, the list (brothers shifted by t) is Nodup. -/
    theorem brothers_Nodup_shift (t : ℕ) :
      (brothers.map (· + t)).Nodup :=
    List.Nodup.map (fun _ _ h => Nat.add_right_cancel h) brothers_Nodup

    /-- For all t ≤ 1419 (in fact all t), shifted brothers are pairwise distinct. -/
    theorem brothers_Nodup_1419 : ∀ t : ℕ, t ≤ 1419 →
      (brothers.map (· + t)).Nodup :=
    fun t _ => brothers_Nodup_shift t

    /-! ## 3. Injectivity of b ↦ frac(b·θ) when θ is irrational -/

    /-- If θ is irrational and frac(m·θ) = frac(n·θ) as reals, then m = n.

      Proof: frac equality forces (m-n)·θ ≡ 0 (mod 1), i.e. dist((m-n)·θ) = 0.
      But dist_pos_of_irrational gives dist > 0 for any nonzero irrational multiple.
      Hence m - n = 0. -/
    theorem frac_mul_irrational_injective (θ : ℝ) (hθ : Irrational θ)
      (m n : ℤ) (heq : frac (↑m * θ) = frac (↑n * θ)) : m = n := by
    by_contra hne
    have hdiff : m - n ≠ 0 := sub_ne_zero.mpr hne
    -- frac(m·θ) = frac(n·θ) implies frac((m-n)·θ) = 0, giving dist = 0
    have hzero : dist (↑(m - n).natAbs * θ) = 0 := by
      have key : frac ((↑(m - n) : ℝ) * θ) = 0 := by
        unfold frac at heq ⊢
        have hm := Int.le_ceil (↑m * θ)
        have hn := Int.le_ceil (↑n * θ)
        push_cast
        linarith [heq, hm, hn,
                  Int.ceil_le.mpr (le_refl (⌈(↑m : ℝ) * θ⌉ : ℝ)),
                  Int.ceil_le.mpr (le_refl (⌈(↑n : ℝ) * θ⌉ : ℝ))]
      unfold dist
      have habs : (↑(m - n).natAbs : ℝ) = |(↑(m - n) : ℝ)| := by
        rw [Int.natCast_natAbs, Int.abs_cast]
      rw [habs, abs_mul_self_cast_le]
      simp [key, min_self]
    exact absurd hzero (ne_of_gt
      (dist_pos_of_irrational θ hθ (m - n).natAbs (Int.natAbs_ne_zero.mpr hdiff)))

    /-! ## 4. Nodup of the frac map when theta is irrational -/

    /-- When θ is irrational, b ↦ frac((b+t)·θ) is injective on brothers. -/
    theorem brothers_frac_Nodup_of_irrational (θ : ℝ) (hθ : Irrational θ) (t : ℕ) :
      (brothers.map (fun b => frac ((↑b + ↑t) * θ))).Nodup := by
    apply List.Nodup.map _ brothers_Nodup
    intro b1 b2 heq
    have hinj : (↑b1 : ℤ) + ↑t = (↑b2 : ℤ) + ↑t :=
      frac_mul_irrational_injective θ hθ (↑b1 + ↑t) (↑b2 + ↑t)
        (by push_cast at heq ⊢; exact heq)
    exact_mod_cast Int.add_right_cancel hinj

    /-! ## 5. Superbrick FE — the core contradiction (SORRY 1)

      Claim: for any T with zeta_half T ≠ 0, if theta(T) is rational, we derive False.

      Strategy when theta(T) = p/q (reduced fraction):
        ① Among the 35 brothers, the residues {b mod q} live in ℤ/qℤ.
          If q ≤ 35, pigeonhole gives b1 ≠ b2 with b1 ≡ b2 (mod q),
          so frac(b1·theta T) = frac(b2·theta T) — collision at t = 0.
        ② For q > 35, use shifts t ∈ {0,…,1419}: the 35 brothers span [1419,52481],
          range ≈ 51062 ≈ 1419·36, so some (b1+t) ≡ (b2+t) (mod q) is found,
          giving a collision at that t.
        ③ The collision contradicts brothers_frac_Nodup_of_irrational applied to
          the model alpha0 = pi/10 (via object_irrational), since the collision only
          depends on the denominator structure, not on which specific irrational theta is.

      SORRY 1 marks the gap until the explicit Lean decision procedure or
      interval-arithmetic certificate is formalised. -/
    theorem rational_contradicts_brothers (T : ℝ) (h_nz : zeta_half T ≠ 0)
      (h_rat : ¬Irrational (theta T)) : False := by
    sorry -- SORRY 1: Superbrick FE

    end Eutheos
    