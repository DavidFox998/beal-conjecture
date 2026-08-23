import Family.Brothers1419

namespace Eutheos
namespace BrothersAnalysis

theorem brothers_35_Nodup : brothers_35.Nodup := by native_decide

theorem brothers_all_153_mod_211 :
    brothers_35.all (fun b => b % 211 = 153) = true := by native_decide

theorem brothers_all_popcount_6 :
    brothers_35.all (fun b => (Nat.bits b).count true = 6) = true := by native_decide

theorem leader_1419 : brothers_35.min? = some 1419 := by native_decide

end BrothersAnalysis
end Eutheos