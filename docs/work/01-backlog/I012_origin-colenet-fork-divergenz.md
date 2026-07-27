---
id: I012
type: chore
title: origin und colenet-fork sind auseinandergelaufen, Auto-Mirror fehlt
status: backlog
---

## Problem

Entdeckt am 27.07.2026 beim Mergen von PR #1 (F001-Nachfolge) auf `colenet-gmbh/Meeting-Inspektor`:

- `origin` (braunle77) und `colenet-fork` (colenet-gmbh) sind divergiert: `origin/main` hat
  einen Commit, den `colenet-fork/main` nicht hat (`f59e289 chore: origin moves to
  braunle77, add LICENSE (#30)`). Ein einfaches `git push origin main` schlägt deshalb fehl
  bzw. würde einen Force-Push erfordern.
- Die GitHub Action `.github/workflows/mirror-public.yml`, die laut `CLAUDE_CONTEXT.md`
  `main` bei jedem Push automatisch nach braunle77 spiegeln soll, existiert nicht mehr
  (wurde im Zuge der „origin moves to braunle77"-Umstellung entfernt). Der commit-message
  dieser Änderung zufolge war das absichtlich: „braunle77/Meeting-Inspektor is now the
  canonical origin; colenet-gmbh is a real GitHub fork instead of a loosely mirrored copy,
  so the auto-mirror workflow is no longer needed." Das widerspricht aber der noch
  aktuellen Beschreibung in `CLAUDE_CONTEXT.md` (Spiegel-Regel, `git push public <branch>`)
  und dem Workflow, den Leiv zum Testen von Branches nutzt (Datei von braunle77 laden).

## Zu klären

- Ist braunle77 jetzt tatsächlich der kanonische Origin (dann müsste `colenet-fork` künftig
  von dort aktualisiert werden, nicht umgekehrt) – oder soll die alte Spiegel-Logik
  (colenet-gmbh kanonisch, braunle77 automatischer Read-only-Spiegel) wiederhergestellt
  werden?
- `CLAUDE_CONTEXT.md` entsprechend nachziehen (Spiegel-Regel ist aktuell veraltet).
- Divergenz zwischen den beiden Remotes einmalig auflösen (welche Seite gewinnt bei
  Konflikten, sauberer Merge oder gezielter Force-Push nach Absprache).

## Leitplanken

- Keine destruktiven Git-Operationen (Force-Push, History-Rewrite) ohne Rücksprache mit
  Leiv – beide Remotes enthalten unabhängig entstandene Commits.
