# IT25KnowledgeEconomy — AppliedModelingLib run

Source pinned to arXiv v11 (2025-02-25). The authoring attempt used the
course paper id `IT25KnowledgeEconomy` and the required statement specification.
The repository-wide library build was intentionally stopped; this public
artifact is the small paper-scoped specialization that was obtained.

`DiscreteOutput.lean` records the intended paper-scoped statement and proof of
the following discrete consequence of
Proposition 6: for `2/5 < q < 4/5`, autonomous output `8/5 + q` is strictly
larger than non-autonomous output `4/5 + 2q`. Lean proves the arithmetic
inequality with `linarith` when the Mathlib environment is available. In this
run the fast paper check could not execute: the authoring scaffold was not
created because the permitted library build was stopped before producing the
required `.olean` files. This is not a formalization of the full continuum
equilibrium or of Proposition 5/6 as stated in the paper.

The source PDF, caches, credentials, and AppliedModelingLib checkout remain
outside this public repository.
