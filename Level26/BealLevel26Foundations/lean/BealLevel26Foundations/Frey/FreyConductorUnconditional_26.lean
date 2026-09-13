import BealLevel26Foundations.Real.FreyWeierstrass

namespace BealLevel26Foundations.Frey.FreyConductorUnconditional26

/-!
Compatibility wrapper.  The v2.0.0 home of the integral Frey model is
`BealLevel26Foundations.Real.FreyWeierstrass`.
-/

abbrev freyCurve :=
  BealLevel26Foundations.Real.FreyWeierstrass.freyCurve

theorem freyCurve_equation_coefficients (A B : Int) (x y : Nat) :
    (freyCurve A B x y).a₂ = B ^ y - A ^ x ∧
      (freyCurve A B x y).a₄ = -(A ^ x * B ^ y) :=
  ⟨rfl, rfl⟩

theorem freyCurve_c4 (A B : Int) (x y : Nat) :
    (freyCurve A B x y).c₄ =
      16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) :=
  BealLevel26Foundations.Real.FreyWeierstrass.freyCurve_c4 A B x y

theorem freyCurve_c6 (A B : Int) (x y : Nat) :
    (freyCurve A B x y).c₆ =
      -32 * (B ^ y - A ^ x) *
        (2 * (B ^ y - A ^ x) ^ 2 + 9 * (A ^ x * B ^ y)) :=
  BealLevel26Foundations.Real.FreyWeierstrass.freyCurve_c6 A B x y

theorem freyCurve_discriminant (A B : Int) (x y : Nat) :
    (freyCurve A B x y).Δ =
      16 * (A ^ x) ^ 2 * (B ^ y) ^ 2 * (A ^ x + B ^ y) ^ 2 :=
  BealLevel26Foundations.Real.FreyWeierstrass.freyCurve_discriminant A B x y

theorem freyCurve_discriminant_of_equation
    {A B C : Int} {x y z : Nat}
    (hEquation : A ^ x + B ^ y = C ^ z) :
    (freyCurve A B x y).Δ =
      16 * (A ^ x) ^ 2 * (B ^ y) ^ 2 * (C ^ z) ^ 2 :=
  BealLevel26Foundations.Real.FreyWeierstrass.freyCurve_discriminant_of_equation
    hEquation

#print axioms freyCurve_c4
#print axioms freyCurve_c6
#print axioms freyCurve_discriminant
#print axioms freyCurve_discriminant_of_equation

end BealLevel26Foundations.Frey.FreyConductorUnconditional26
