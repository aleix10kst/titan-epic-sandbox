# Epic ledger: greeting

authorization: Start (local merges, no push) — human:aleix-canet at 2026-10-22T18:07:46Z

## Plan order

1. 01-say-hello — /stories/greeting/01-say-hello.md
2. 02-say-goodbye — /stories/greeting/02-say-goodbye.md

lookahead: 02-say-goodbye collected (red committed a2dff1e, worktree removed)

## Stories

### 01-say-hello
- state: in-review
- branch: feat/01-say-hello; merge commit 236ffa7
- ACs: 2/2 ✅, deferred: none; last review: .flow/runs/01-say-hello/review-1.md
- tests added: tests/hello.test.sh
- gate: skipped, identical to cfeb6f7 (tests: 2); last green gate: cfeb6f7
- review rounds: 1 (no findings); implementer model: opus
- MAJOR open: none; noticed out of scope: check.sh exits 0 on an empty greetings/ (check.sh:4)
- blocked: no

### 02-say-goodbye
- state: in-review
- branch: feat/02-say-goodbye (red via lookahead); merge commit 43453cd
- ACs: 2/2 ✅, deferred: none; last review: .flow/runs/02-say-goodbye/review-1.md
- tests added: tests/goodbye.test.sh
- gate: skipped, identical to 0930678 (tests: 4); last green gate: 0930678
- earlier stories' tests: tests/hello.test.sh present; count 4 >= 2
- review rounds: 1 (2 MINOR, not fixed); implementer model: opus
- MAJOR open: none; noticed out of scope: check.sh exits 0 when greetings/ has no .txt files (check.sh:4); lint/typecheck/test are one command
- blocked: no

## Phase B summary

- built: 01-say-hello, 02-say-goodbye
- blocked: none
- waiting: none
- deferred ACs: none

## Reconciliation

1. Stories: both in-review (flow-epic.sh); blocked/waiting: none
2. ACs: 4/4 ticked; deferred: none
3. Requirements: none (the epic's Outcome has no R-n ids)
4. Spec test plans: none (both stories XS, no specs)
5. Spec change lists: none (no specs). Non-test, non-bundle files in the diff: greetings/hello.txt, greetings/goodbye.txt (named by the story ACs); .flow/.gitignore (flow tooling)
6. Leftovers: none (grep over added lines; no smell matches in the build reports)
7. Seam reviews: overlap files none; integration commits none (only docs(flow) commits); contracts none. Acceptance (seam): PASS, no findings. Security (seam): PASS, no findings. Fix rounds used: 0/2
8. Gate: identical to 0930678, green (re-ran `sh check.sh` exit 0, tests/*.test.sh 4 ok). Tree: only untracked `.claude/agent-memory/` (codebase-explorer memory from flow-memory.sh, left uncommitted; it is not part of the epic)
9. Bundle: epic in-review, index regenerated, lint below
