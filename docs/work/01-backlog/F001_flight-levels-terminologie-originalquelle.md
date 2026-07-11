# F001 – Flight-Levels-Diagnostik quellentreu nach Klaus Leopold neu aufbauen

**Status:** Backlog – in Klärung (Recherchephase läuft)
**Quelle:** Leiv, 10./11.07.2026 – siehe auch Glossar-Eintrag „Ebenenübergreifende Präsenz"

## Worum es geht

Der gesamte Flight-Levels-Tab entstand aus einer KI-Recherche und -Implementierung ohne
Treue zur Originalquelle. Ziel: Konzepte, Schule und Methodik **1:1 aus Flight Levels von
Klaus Leopold** übernehmen (flightlevels.io, Leopold/Kaltenecker „Flight Levels – A Short
Introduction", „Agilität neu denken / Rethinking Agile"). Entweder ein Konzept existiert
in der Originalquelle – dann wird es originalgetreu verwendet – oder es wird rein
beschreibend formuliert und klar als tool-eigene Auswertung gekennzeichnet.

## Unverifizierte Aussagen im heutigen Tab (zu prüfen)

Alle in `meeting-inspektor.html`, Flight-Levels-Tab (F1–F5 + Kacheln + Q1–Q3):

- „Brückenkopf" als Personenrolle (bereits widerlegt: kein FL-Vokabular; Code nutzt
  zudem zwei Definitionen: Heatmap = Präsenz auf ≥ 2 Ebenen, Kachel 2/Q3 = alle 3 Ebenen)
- Widersprüchliche Wertung: Kachel 2 warnt vor Personen auf allen 3 Ebenen
  („Informations-Flaschenhals", 0 = „Rollentrennung" ✓), Q3 wertet ihre Abwesenheit als
  Problem („Informationsfluss potenziell fragmentiert")
- Erwartete Rhythmen je Ebene (FL1 täglich/wöchentlich, FL2 zwei-/dreiwöchentlich,
  FL3 monatlich/quartalsweise) und darauf gebaute „Frequenz-Mismatches"
- „Fehlende FL2-Meetings sind das häufigste Dysfunktionssignal"
- Pyramiden-Norm „optimal ist FL1 > FL2 > FL3"
- „Koordinationstheater" (FL2/FL3-Meetings mit Wirkung ≤ 2)
- Auto-Klassifikation von Meetings über Abteilungstypen
- Diagnose-Fragen F1–F5 insgesamt: Sind das Fragen, die das Modell selbst stellt?

## Vorgehen

1. **Recherche:** Flight Levels akribisch aus Originalquellen erheben (Ebenen, agile
   Interaktionen, Aktivitäten, Aussagen zu Meetings/Kadenzen/Rollen, legitime Diagnostik)
2. **Audit:** Jede Aussage des Tabs gegen den Recherche-Report mappen
   (belegt / widerlegt / tool-eigene Auswertung)
3. **Umsetzung:** Tab entsprechend umbauen; tool-eigene Auswertungen ehrlich kennzeichnen

## Akzeptanzkriterien

- [ ] Recherche-Report mit Quellenangaben liegt in `docs/` und ist die Referenz
- [ ] Jede fachliche Aussage im FL-Tab ist entweder quellenbelegt oder als tool-eigene
      Auswertung gekennzeichnet; widerlegte Aussagen sind entfernt
- [ ] Kein „Brückenkopf" mehr in UI-Texten und Bezeichnern
- [ ] Glossar und `feedback-ux`-Regeln (Status- vs. Identitätsfarben) eingehalten
- [ ] Widerspruch Kachel 2 vs. Q3 aufgelöst
