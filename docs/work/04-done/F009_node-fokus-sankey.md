# F009 – Node-Fokus im Sankey (Klick auf Balken/Label blendet unverbundene Flüsse aus)

**Status:** Backlog
**Quelle:** [GitHub Issue #3](https://github.com/braunle77/Meeting-Inspektor/issues/3) (public Mirror, 15.07.2026 – ohne cape-Harness erfasst)

## Worum es geht

Im Sankey-Diagramm (Tab „Kommunikation") soll ein Klick auf einen Knoten (Abteilungsbalken
oder -beschriftung) alle nicht verbundenen Flüsse stark ausblenden, während die direkt
verbundenen Flüsse hervorgehoben werden – ähnlich Highlighting-Funktionen in Gephi/Kibana.
Ein zweiter Klick auf denselben Knoten oder auf freie Fläche hebt die Selektion wieder auf.

Bei größeren Datensätzen erzeugt das Sankey viel visuelles Rauschen; die Interaktion soll
erlauben, eine Abteilung in den Fokus zu rücken.

**Ist-Zustand:** Es existiert bereits Hover-Highlighting auf Links, aber kein Node-Click-
Handler (Stand 16.07.2026, zu verifizieren): `renderSankey` in `meeting-inspektor.html:2348`,
`Plotly.newPlot` für `chart-sankey` in Zeile 2422, bestehender `plotly_hover`-Handler in
Zeile 2430.

## Gewünschtes Verhalten

| Aktion | Ergebnis |
|--------|----------|
| Klick auf Balken oder Label einer Abteilung | Verbundene Flüsse → hohe Deckkraft (~0,85); nicht verbundene → stark ausgeblendet (~0,04) |
| Erneuter Klick auf denselben Knoten | Selektion aufheben, Flüsse zurück auf Standardfarbe |
| Klick auf freie Fläche (kein Node, kein Link) | Selektion aufheben |
| Hover auf Link | Bleibt erhalten, hat aber **nicht** Vorrang vor einer aktiven Node-Selektion |

## Technischer Ansatz (aus dem Issue übernommen)

Plotly unterscheidet in `plotly_click` zwischen Link- und Node-Klick: Node-Klick hat kein
`source`-Attribut am Event-Point, aber ein `index`. `srcs`/`tgts` (Source-/Target-Indizes
aller Links) müssen zum Zeitpunkt der Handler-Registrierung im Closure verfügbar sein, um
verbundene vs. unverbundene Links zu bestimmen. Der bestehende `plotly_hover`-Handler
bekommt einen frühen Return, wenn ein Node aktuell selektiert ist.

## Akzeptanzkriterien

- [ ] Klick auf Abteilungsbalken hebt verbundene Flüsse hervor, blendet restliche aus
- [ ] Klick auf Abteilungs-Label löst dieselbe Aktion aus
- [ ] Zweiter Klick auf denselben Knoten setzt Zustand zurück
- [ ] Hover-Highlight funktioniert weiterhin, wenn kein Node selektiert ist
- [ ] Getestet in Safari (macOS, Apple Silicon)
