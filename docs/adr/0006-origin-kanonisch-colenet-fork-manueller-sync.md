# Origin (braunle77) kanonisch, colenet-fork manuell nachgezogen

**Status:** aktuell (löst [0005](0005-zwei-remotes-mit-public-spiegel.md) ab)

Seit der Umstellung „origin moves to braunle77" (PR #30, 27.07.2026) ist
`origin` (github.com/braunle77/Meeting-Inspektor) der kanonische Remote: PRs
laufen dorthin, dort wird gesquasht/gemerged. `colenet-fork`
(github.com/colenet-gmbh/Meeting-Inspektor) ist ein echter GitHub-Fork mit
Org-Rechten, kein Spiegel mehr. Der automatische Mirror-Workflow
(`mirror-public.yml`, Force-Push von colenet-gmbh nach braunle77) wurde im
Zuge dieser Umstellung entfernt und nicht durch einen neuen automatischen
Mechanismus ersetzt.

Am 28.07.2026 wurde entdeckt, dass beide Remotes dadurch bereits divergiert
waren (I012: `origin/main` hatte einen Commit, den `colenet-fork/main` nicht
hatte, und umgekehrt). Die Divergenz wurde einmalig per Merge aufgelöst.

## Entscheidung

- `origin` (braunle77) ist kanonisch für Entwicklung: PRs, Merges, Force-Push-frei.
- Nach jedem Merge nach `origin/main` wird `colenet-fork/main` manuell per
  Fast-Forward nachgezogen: `git push colenet-fork main:main`.
- Kein automatischer Mirror-Workflow – bewusst manuell, um unbeabsichtigte
  Force-Pushes und stille Divergenz zu vermeiden.

## Konsequenzen

- Vor größeren Git-Operationen prüfen, ob beide Remotes synchron sind
  (`git diff origin/main colenet-fork/main --stat` – leer = ok).
- Der Sync-Schritt ist ein manueller Zusatzschritt nach jedem Merge – wird
  leicht vergessen, wenn er nicht Teil der Standard-Merge-Routine ist.
- Kunden-Download-Links (README) zeigen auf `braunle77`, nicht mehr auf
  `colenet-gmbh`.
