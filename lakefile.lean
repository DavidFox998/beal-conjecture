import Lake
open Lake DSL

package «beal-conjecture» where

@[default_target]
lean_lib DarmonMerel

/-- Builds `DarmonMerel.«1_FreyCurve4413»`.
The module name starts with a digit, so Lean quotes it, and
`lake build DarmonMerel.1_FreyCurve4413` is this alias. -/
target «DarmonMerel.1_FreyCurve4413» _pkg : Unit := do
  let some mod := (← getWorkspace).findModule? `DarmonMerel.«1_FreyCurve4413»
    | error "missing module DarmonMerel.1_FreyCurve4413"
  let job ← mod.leanArts.fetch
  return job.map (fun _ => ()) (sync := true)

/-- Builds `DarmonMerel.«2_Modularity4413»`.
`lake build DarmonMerel.2_Modularity4413` is this alias. -/
target «DarmonMerel.2_Modularity4413» _pkg : Unit := do
  let some mod := (← getWorkspace).findModule? `DarmonMerel.«2_Modularity4413»
    | error "missing module DarmonMerel.2_Modularity4413"
  let job ← mod.leanArts.fetch
  return job.map (fun _ => ()) (sync := true)

/-- Builds `DarmonMerel.«3_RibetLowering4413»`.
`lake build DarmonMerel.3_RibetLowering4413` is this alias. -/
target «DarmonMerel.3_RibetLowering4413» _pkg : Unit := do
  let some mod := (← getWorkspace).findModule? `DarmonMerel.«3_RibetLowering4413»
    | error "missing module DarmonMerel.3_RibetLowering4413"
  let job ← mod.leanArts.fetch
  return job.map (fun _ => ()) (sync := true)

/-- Builds `DarmonMerel.«4_MazurTrick4413»`.
`lake build DarmonMerel.4_MazurTrick4413` is this alias. -/
target «DarmonMerel.4_MazurTrick4413» _pkg : Unit := do
  let some mod := (← getWorkspace).findModule? `DarmonMerel.«4_MazurTrick4413»
    | error "missing module DarmonMerel.4_MazurTrick4413"
  let job ← mod.leanArts.fetch
  return job.map (fun _ => ()) (sync := true)

/-- Builds `DarmonMerel.«5_WindingQuotient4413»`.
`lake build DarmonMerel.5_WindingQuotient4413` is this alias. -/
target «DarmonMerel.5_WindingQuotient4413» _pkg : Unit := do
  let some mod := (← getWorkspace).findModule? `DarmonMerel.«5_WindingQuotient4413»
    | error "missing module DarmonMerel.5_WindingQuotient4413"
  let job ← mod.leanArts.fetch
  return job.map (fun _ => ()) (sync := true)

/-- Builds `DarmonMerel.«6_NoSolution4413»`.
`lake build DarmonMerel.6_NoSolution4413` is this alias. -/
target «DarmonMerel.6_NoSolution4413» _pkg : Unit := do
  let some mod := (← getWorkspace).findModule? `DarmonMerel.«6_NoSolution4413»
    | error "missing module DarmonMerel.6_NoSolution4413"
  let job ← mod.leanArts.fetch
  return job.map (fun _ => ()) (sync := true)
