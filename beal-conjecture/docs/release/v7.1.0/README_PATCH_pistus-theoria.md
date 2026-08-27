# *pistus-theoria* paper patch — Beal certification abstract

Insert the following paragraph into the abstract of the Beal certification
paper before the existing contribution or methodology summary. This is a
LaTeX snippet, not a replacement for the complete PDF source.

```latex
\paragraph{Version 7.1.0 status.}
In commit \texttt{76d1dec} (CI build \#230), the Beal development completes
its project-level de-axiomatization.  The former opaque global assumptions
\texttt{ribet\_single\_step}, \texttt{q\_expansion\_principle}, and
\texttt{old\_new\_decomp\_hyp} are replaced by typed provider data and
explicit fields in \texttt{GaloisEdgeWitness}.  The final theorem is
conditional: an inhabited witness carrying the
\texttt{QExpansionPrincipleOnV}, \texttt{OldNewDecompHyp}, and
\texttt{LocalizedRankOne} interfaces implies Beal's Conjecture.  The release
contains zero named project-level axioms and zero \texttt{sorry} or
\texttt{admit}; its Lean audit reports the foundational footprint
\(\{\texttt{propext},\texttt{Quot.sound}\}\).  These results do not claim that
the Shimura, degeneracy-map, old/new-complement, or Hecke-localized
rank-one constructors have already been formalized in Mathlib 4.12.0.

\paragraph{Release record.}
The v7.1.0 release DOI is
\url{https://doi.org/10.5281/zenodo.XXXXXXX}; the concept DOI is
\url{https://doi.org/10.5281/zenodo.YYYYYYY}.
```

Replace `XXXXXXX` and `YYYYYYY` after Zenodo mints the release record. If the
paper’s abstract does not use `hyperref`, replace `\url{...}` with plain text
URLs or add the package in the paper’s existing preamble.