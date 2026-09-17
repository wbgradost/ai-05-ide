# Repository 5 setup note

This is an administrative working note, not the final project README.

## Delivery and branch policy

- Deadline: Thursday, September 17, 2026, at 22:00 (America/Lima).
- `main` is the untouched template baseline.
- Academic work starts on `analysis`; no pull request has been opened.
- The final repository must include a `lean/` directory produced by our own
  AppliedModelingLib run and at least one presentation slide about that
  formalization.

## Formalization run (not started)

- Required model: `gpt-5.6-sol`.
- Required reasoning effort: `xhigh`.
- Required source: arXiv v11 of Ide and Talamas,
  <https://arxiv.org/abs/2312.05481v11>.
- Follow the current AppliedModelingLib contributor workflow and
  `econcs-formalizer` skill at the time of the run.

No paper scaffold, statement specification, proof, or Lean artifact has been
generated yet.

## Source inventory

Paper bytes remain outside this public repository in the private WSL cache
`/home/william/econcslib-review/IT25KnowledgeEconomy/sources/`.

| Source | Role | Local/private status |
| --- | --- | --- |
| Course/issue PDF (`14-ide-talamas-2025-ai-knowledge-economy.pdf`) | Course reading | The course fetch script refers to an instructor-local cache file (`idetalamas2025.pdf`); those exact cached bytes are not published in the course repository. `course-issue-2025-05-20-39pp.pdf` is a provisional local proxy whose bytes equal arXiv v12, not an independently verified copy of the instructor cache. |
| JPE publication, DOI [10.1086/737233](https://doi.org/10.1086/737233) | Published edition and later reference | Official full text is available from the publisher. Automated retrieval of the publisher PDF currently receives HTTP 403, so no publisher PDF is being mislabeled as locally obtained. |
| `arxiv-v11-formalization.pdf` | Mandatory formalization source | Available; SHA-256 `0b3c727a204f7801a9598dacd7ca7fdb385e21ee6877992ea0eb13c0538d8ebf`. |
| `arxiv-v12-reference.pdf` | Later reference only | Available; SHA-256 `99e95b45b97bdf09b0cb78de13e9c39f43e80f283d3ca2a45fa070bc25fb2948`. |

## AppliedModelingLib checkout

- Fresh WSL checkout: `/home/william/AppliedModelingLib`.
- Upstream: <https://github.com/nikhgarg/AppliedModelingLib.git>.
- Prepared revision: `2db7d108cd3a2cb10148974bb2a77856e7d87428` on clean `main`.
- Protocol diagnostic: `OK formalization-audit-protocol-2026-09-01`.
- `paper_contribution.py doctor` passes required checks with Lean
  `4.30.0-rc2` / Lake `5.0.0`; optional `pdftotext` and `latexmk` are absent in
  WSL.

The older EconCSLib checkout is not used or modified for this project.
