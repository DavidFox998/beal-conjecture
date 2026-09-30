> **Root v33 (separate from this nested dependency):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# Local Lake vendor

`BealLevel26Foundations/` is the Lake package formerly required
from `github.com/DavidFox998/beal-conjecture` @ `main` /
`Level26/BealLevel26Foundations` (`fea0c393`).

This repository stays **foundations-level-26**. Monorepo
beal-conjecture stays beal-conjecture. Root
`TwoDescent_26a1_26.lean` (`7c19ad0`) and `BSD_MordellWeil.lean`
(`8994d38`) remain the source of truth on
`BealMatveevBealV25B0Search`. The four without-Wiles skeletons
stay at the repo root.

See `BealLevel26Foundations/VENDOR.md`.
