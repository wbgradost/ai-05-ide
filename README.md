# Repository 5 — Ide & Talamàs

**Paper.** Enrique Ide and Eduard Talamàs, “Artificial Intelligence in the
Knowledge Economy,” *Journal of Political Economy* 133(12), 3762–3800 (2025).
This repository reads **arXiv v11 (February 25, 2025)**, the version pinned for
the Lean work: <https://arxiv.org/abs/2312.05481v11>.

## Question and model

When does AI reorganize knowledge work, and who gains from that reorganization?
There is a unit mass of humans with knowledge `z ∈ [0,1]`, one unit of time, and
production problems with difficulty uniformly distributed on `[0,1]`. A human
with knowledge `z` solves a fraction `z` of problems alone. In a two-layer firm,
workers handle routine problems and a more knowledgeable solver handles the
exceptions. A request for help costs the solver `h ∈ (0,1)` units of time, so a
worker of type `z` is paired with

`n(z) = 1 / (h(1-z))`

workers. Pre-AI equilibrium is efficient, stratified (`W ≼ I ≼ S`), and
positively assortatively matched. The paper focuses on `h < h₀`, where there
are no independent human producers (`I = ∅`) and `w(z) > z`.

AI converts compute into agents with fixed capability `z_AI < 1`.

- **Autonomous AI** can be an independent producer, a worker/co-worker, or a
  solver/co-pilot. Compute has opportunity cost `r = z_AI` because some agents
  produce independently.
- **Non-autonomous AI** can only provide advice as a solver/co-pilot. It cannot
  produce output, so abundant compute has `r = 0` and some compute is idle.

Capability (`z_AI`) is the AI’s knowledge level. Autonomy is the set of roles it
can perform. They are separate dimensions.

## Propositions 5 and 6

Write `wᴬ` for autonomous-AI wages, `wᴺ` for non-autonomous-AI wages, and `w`
for pre-AI wages.

**Proposition 5 (autonomous AI, v11 p. 24; proof in the official Online
Appendix, §2.5, pp. 18–21).** Define

`B = {z ≤ z_AI : wᴬ(z) > w(z)}` and
`T = {z ≥ z_AI : wᴬ(z) > w(z)}`.

The individual at exactly `z_AI` loses. A single-crossing lemma implies
`B = [0,z_b)` and `T = (z_t,1]`. There is a threshold
`z̄_AI ∈ int(W)` such that:

- bottom winners exist iff `z_AI > z̄_AI`;
- top winners always exist for every `z_AI ∈ [0,1)`.

The bottom condition is therefore capability-dependent. The “always at the top”
result uses the paper’s maintained `h < h₀` and `z_AI < 1`; the paper notes that
top winners can fail when `h ≥ h₀`, and that `z_AI = 1` makes the most skilled
human lose. For basic AI (`z_AI ∈ int(W)`), the bottom match effect is negative
and the positive share effect must dominate. For advanced AI
(`z_AI ∈ int(S)`), both effects favor the least knowledgeable.

**Proposition 6 (non-autonomous AI, v11 p. 27; proof in Online Appendix §2.6,
pp. 21–27).** If `z_AI ≤ w(0)`, AI is not used and occupations and wages equal
the pre-AI equilibrium. If `z_AI > w(0)`, only the least knowledgeable humans
use AI as a solver, with a cutoff structure; the equilibrium is unique and
efficient. In every case:

- autonomous-AI total output is strictly higher than non-autonomous-AI output;
- when non-autonomous AI is adopted, at least one human loses relative to
  pre-AI;
- a neighborhood of the bottom does at least as well under non-autonomous AI
  as under pre-AI or autonomous AI (strictly better when adopted);
- a neighborhood of the top does weakly worse under non-autonomous than under
  autonomous AI (strictly worse below the endpoint in the Type-2 case).

The output comparison is not a claim that capability is irrelevant: capability
sets the adoption threshold and determines autonomous basic/advanced cases.
Autonomy determines whether compute can compete in production and whether its
opportunity cost is positive.

## Where I did not believe the AI

The tempting gloss “distributional effects depend on autonomy, not capability”
collapses two dimensions. The paper’s exact conditions show why that is wrong:
`z_AI > z̄_AI` governs bottom winners under autonomous AI, while
`z_AI > w(0)` governs whether non-autonomous AI is used at all. The careful
verdict is that autonomy changes the regime and capability changes thresholds
within and across regimes.

The author's real handwritten derivation is included at
`hand/derivation.jpg` and displayed in the presentation. No synthetic
handwriting is used.

## Lean status

The public `lean/` folder contains the complete paper scaffold from our own
AppliedModelingLib run. It is an explicitly **partial discrete specialization**
of the Proposition 6 output mechanism, not a verification of the full
continuum equilibrium or of Proposition 5/6 in their entirety. The theorem
`discreteOutputStrictlyHigher` proves that, for `2/5 < q < 4/5`,
`4/5 + 2q < 8/5 + q`. The paper-scoped target compiled and
`paper_contribution.py check IT25KnowledgeEconomy --fast` passed.
