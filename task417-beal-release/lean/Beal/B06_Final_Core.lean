-- B06_Final_Core — zero-import bridge shape.
def BealHasseBridge06Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C →
    2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z → False

def BealTrioBridge06Core : Prop :=
  BealHasseBridge06Core → BealHasseBridge06Core

#print axioms BealHasseBridge06Core
#print axioms BealTrioBridge06Core