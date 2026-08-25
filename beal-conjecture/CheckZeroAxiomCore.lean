import Beal.B01_Def_Core
import Beal.B10_RibetReal_Core
import Beal.B14_FreyConductor_Core
import Beal.KillshotSearch

#print axioms DividesCore
#print axioms PrimitiveTripleCore
#print axioms IsBealSolutionCore
#print axioms IsPrime10Core
#print axioms Divides14Core
#print axioms Prime14Core
#print axioms RadCertificate
#print axioms RadPrimePowerCertificate14Core
#print axioms FreyConductorRealCertificate
#print axioms RadPrimeCase14Core
#print axioms killshot_rad_prime_branch
#print axioms killshot_rad_prime_power_contradiction

def main : IO Unit :=
  IO.println "B14 Core and prime-radical contradiction compiled; inspect the axiom report above."