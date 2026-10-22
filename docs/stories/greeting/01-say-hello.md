---
type: User Story
title: Say hello
description: A hello file greets the reader.
tags: [qa, fixture]
status: stable
generated: { by: flow/0.22.0, at: 2026-10-22T00:00:00Z }
epic: /epics/greeting.md
priority: should
size: XS
state: todo
depends_on: []
---

# Story

As a reader, I want a hello file, so that the repository feels friendly.

# Acceptance criteria

- [ ] **AC-1** Given the repository, when a reader opens `greetings/hello.txt`, then it contains exactly one line: `Hello from Titan`.
- [ ] **AC-2** Given the repository, when `sh check.sh` runs, then it exits 0.
