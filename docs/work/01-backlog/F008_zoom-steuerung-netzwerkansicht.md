# F008 – Zoom-Steuerung für die Netzwerkansicht

**Status:** Backlog
**Quelle:** [GitHub Issue #2](https://github.com/braunle77/Meeting-Inspektor/issues/2) (public Mirror, 15.07.2026 – ohne cape-Harness erfasst)

## Worum es geht

Die Netzwerkansicht (Tab „Netzwerk") bietet aktuell keine Möglichkeit, den Ausschnitt zu
vergrößern oder zu verkleinern. Bei dichten Graphen (viele Personen/Abteilungen) ist das
Lesen von Knotenbeschriftungen und Verbindungen schwierig.

**Betroffene Stelle (Stand 16.07.2026, zu verifizieren):** `_plotNetzwerk` in
`meeting-inspektor.html:1757`.

## Gewünschte Lösung (aus dem Issue übernommen)

Drei kompakte Floating-Buttons oben rechts über dem Chart-Container (Muster aus Google
Maps/Neo4j Browser/Gephi statt Slider, da Netzwerke kein lineares „Prozentwert"-Konzept
haben):

| Button | Aktion |
|--------|--------|
| `+` | Zoom In (Faktor ×1,3) |
| `−` | Zoom Out (Faktor ×0,77) |
| `⊙` | Reset auf ursprünglichen Ausschnitt |

Zusätzlich `scrollZoom: true` in der Plotly-Config aktivieren, damit Mausrad/Trackpad-Pinch
direkt funktionieren, ohne die Buttons zu benötigen.

Technischer Ansatz laut Issue: `Plotly.relayout('chart-netzwerk', { 'xaxis.range': [...],
'yaxis.range': [...] })` für Zoom In/Out, `{ 'xaxis.autorange': true, 'yaxis.autorange':
true }` für Reset.

## Leitplanken

- Buttons nur auf dem Netzwerk-Tab sichtbar, auf anderen Tabs nicht
- Muss ohne Regressionen in Safari (macOS) funktionieren

## Akzeptanzkriterien

- [ ] `+`-Button vergrößert den sichtbaren Ausschnitt stufenweise
- [ ] `−`-Button verkleinert ihn stufenweise
- [ ] `⊙`-Button stellt den ursprünglichen Ausschnitt wieder her
- [ ] Scroll-Zoom (Mausrad/Trackpad) funktioniert
- [ ] Getestet in Safari (macOS) ohne Regressionen
