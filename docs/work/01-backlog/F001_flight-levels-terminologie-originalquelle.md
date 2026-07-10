# F001 – Flight-Levels-Terminologie an Originalquelle ausrichten

**Status:** Backlog
**Quelle:** Leiv, 10.07.2026 – siehe auch Glossar-Eintrag „Ebenenübergreifende Präsenz"

## Worum es geht

Wir orientieren uns strikt an der Originalquelle von Klaus Leopold (flightlevels.io,
Leopold/Kaltenecker „Flight Levels – A Short Introduction"). „Brückenkopf" ist kein
offizielles Flight-Levels-Vokabular (verifiziert 10.07.2026) und soll nicht im Tool
verwendet werden. Entweder es gibt einen offiziellen Flight-Levels-Begriff – dann diesen
verwenden – oder das Konzept wird rein beschreibend formuliert.

## Betroffene Stellen (Stand 10.07.2026)

Alle in `meeting-inspektor.html`:

- FL-Sektionstitel: „Wer ist Brückenkopf zwischen den Ebenen?" (Zeile ~550)
- Tab-Beschreibung: „… Brückenkopf-Heatmap …" (Zeile ~1505)
- F4-Kachel „Brückenköpfe" und Insight-Label „Brückenkopf-Personen" (Zeilen ~4259–4326)
- Diagnose-Antwort Q3: „… keine formellen Brueckenkopf-Personen …" (Zeile ~4859)
- Funktionsname `_renderFLBrueckenkoepfe` (Zeilen ~4363, ~4554 ff.)

## Akzeptanzkriterien

- [ ] Kein „Brückenkopf" mehr in UI-Texten; ersetzt durch beschreibende Formulierung
      (Glossar: „Ebenenübergreifende Präsenz", getragen durch „agile Interaktionen")
- [ ] Alle FL-nahen Begriffe im Tool gegen die Originalquelle geprüft
- [ ] Interne Bezeichner (`_renderFLBrueckenkoepfe`) konsistent umbenannt
- [ ] Glossar bleibt die verbindliche Referenz für die Ersatzformulierung
