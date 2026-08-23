# Towers/RH/Chain — P5 Keystone Chain — CLOSED

This is the keystone that ties BSD and RH.

- `P5_BSD_RH_Link.lean` — NEW v2.0.0 — defines:
    - `P5_BSD_constants_agree` `143*13=1859`
    - `P5_BSD_BostBound_link` `C_S4=11.422148...>2√13` from **[bost-connes](https://github.com/DavidFox998/bost-connes)** `C_S4_gt_two_sqrt_13_CLOSED`
    - `P5_BSD_classNumber_link` `h=10` both routes from `bost-connes` + **[birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1)**
    - `P5_BSD_S14_link` `|S14|=14, cf_bound=82829, q5=226, q6=165849` from **[opera-sieve](https://github.com/DavidFox998/opera-sieve)**
    - `P5_BSD_to_RH_clean : BSD_143_PROVED → GRH_for_L`
    - `P5_BSD_RH_closure_CLOSED : BSD_143_PROVED → RiemannHypothesis` via `grh_to_rh_descent + LanglandsTransfer_14_CLOSED`

Former `P5_LanglandsDescent_2pi7_OPEN.lean` is now `P5_LanglandsDescent_14_CLOSED.lean`.
