import Mathlib

namespace IT25KnowledgeEconomy

/- A discrete specialization of Proposition 6's output comparison.
   The hypotheses encode 2/5 < q < 4/5. -/
def discreteOutputStrictlyHigher (q : ℝ) : Prop :=
  (4 / 5 : ℝ) + 2 * q < (8 / 5 : ℝ) + q

theorem discreteOutputStrictlyHigher_proof (q : ℝ)
    (hlo : (2 / 5 : ℝ) < q) (hhi : q < (4 / 5 : ℝ)) :
    discreteOutputStrictlyHigher q := by
  dsimp [discreteOutputStrictlyHigher]
  linarith

end IT25KnowledgeEconomy
