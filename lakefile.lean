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
