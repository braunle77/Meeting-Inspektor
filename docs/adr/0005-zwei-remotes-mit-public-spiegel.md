# Zwei Remotes: origin (colenet-gmbh) und public-Spiegel (braunle77)

Entwicklung läuft über `origin` (github.com/colenet-gmbh/Meeting-Inspektor, PRs und
Merges). Zusätzlich existiert `public` (github.com/braunle77/Meeting-Inspektor, trotz des
Namens ein privates Repo) als Spiegel: Der Kunde lädt die HTML-Datei per Browser von dort
herunter, ohne Zugriff auf die Colenet-Organisation zu benötigen. `main` wird bei jedem
Push automatisch gespiegelt (GitHub Action `mirror-public.yml`, Force-Push); Branches, die
der Kunde testen soll, werden manuell auf `public` gepusht und nach dem Merge dort
gelöscht. Prüfanker für die richtige Version ist der `APP_VERSION`-Zeitstempel im
Tool-Kopf (Pre-Commit-Hook).

## Konsequenzen

- Direkte Pushes auf `public/main` sind wirkungslos – der nächste Mirror-Lauf
  überschreibt sie per Force-Push.
- Test-Branches auf `public` sind Handarbeit (pushen und aufräumen) – siehe
  Spiegel-Regel in `CLAUDE_CONTEXT.md`.
