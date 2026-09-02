# `Beal/Mazur/Jacobian/`

This folder records the genus-two Jacobian side of the Level-26 argument. It
contains the two elliptic models, the finite `S₂(26)` decomposition evidence,
the formal-immersion data, and the interfaces needed to transport those
pieces toward a rational-point conclusion.

This is a central room in the *Opera Numerorum* story because finite
coefficient evidence must eventually meet global arithmetic geometry. The
current code keeps that meeting explicit: finite tables and determinants can
be checked, while the Jacobian isogeny, rank transport, and rational-point
exhaustiveness remain proof-relevant boundaries.

The companion gate `Gates/FormalImmersion_26_Cert.lean` now turns the Phase-C
matrix into an actual linear map on the two-dimensional mod-3 cotangent
model. Its checked matrix theorem connects the archived M3 rows to the
existing witness; it does not claim that Mathlib 4.12 has supplied the missing
scheme, Jacobian, or sheaf-differential construction.