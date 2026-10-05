# Named modularity and level-lowering interfaces

`Axioms.lean` records the modularity-side interfaces for the even-branch program.
Read its declarations and statements directly: the filename alone does not
establish that a particular result is proved or that it introduces a logical
axiom.

Its elementary checked lemmas relate the displayed Frey cubic and parity facts.
The modularity and level-lowering interfaces include the named propositions
`frey_two_adic_input`, `frey_semistable`, `wilesBCDT_modularity`, and
`ribet_level_lowering`. A named proposition is not its proof.

The directory interacts with the general/even geometric program and the
vendored Level26 foundations. Any use in a submission must identify the exact
proposition, whether it has an inhabitant, and the axiom dependencies of that
inhabitant. Chart packaging is not a substitute for the full modular
contradiction.
