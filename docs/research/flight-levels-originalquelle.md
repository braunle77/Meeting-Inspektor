# Flight Levels – Referenz aus Originalquellen

**Zweck:** Verbindliche Referenz für F001 (quellentreuer Neuaufbau des Flight-Levels-Tabs).
Jede fachliche Aussage im Tool muss sich hierauf zurückführen lassen oder als tool-eigene
Auswertung gekennzeichnet sein.

**Recherche:** 10./11.07.2026, Deep-Research (19 Quellen, 81 Aussagen) + direkte
Verifikation am Volltext von Leopold/Kaltenecker „Flight Levels – A Short Introduction"
(47 Seiten, engl. Ausgabe 2022). Wörtliche Zitate stammen aus diesem Buch, sofern nicht
anders angegeben.

## Quellen (primär)

- Leopold/Kaltenecker: *Flight Levels – A Short Introduction* (Booklet, 47 S.) – [PDF][pdf]
- [flightlevels.io/what-is-flight-levels][wiflv] (offizielle Modellseite)
- [Flight Levels Academy Blog: Establishing agile interactions – but how?][eai]
- LEANability (Leopolds eigener Blog): [Verbesserungsebenen 2017][lean17], [Es war einmal ein Flight Level 2019][lean19]

[pdf]: https://aqoba.fr/posts/20240909-donnez-de-limpact-%C3%A0-votre-transformation-en-vous-inspirant-de-lapproche-flight-levels/Flight-Levels-A-Short-Introduction.pdf
[wiflv]: https://www.flightlevels.io/what-is-flight-levels
[eai]: https://circle.flightlevels.io/c/blog/establishing-agile-interactions-but-how
[lean17]: https://www.leanability.com/de/blog/2017/04/flight-levels-die-verbesserungsebenen-der-organisation
[lean19]: https://www.leanability.com/de/blog/2019/03/es-war-einmal-ein-flight-level/

## Das authentische Modell

### Charakter

Ein **offenes Denk- und Kommunikationsmodell**, kein Framework: *„an open model of
thinking and communication"*. Und ausdrücklich: *„The Flight Levels model is neither an
organisational model nor a maturity model, nor is it a hierarchy – Flight Level 3 is
therefore not three times as important as Flight Level 1."*

### Die drei Levels (mit offizieller Leitfrage, flightlevels.io)

| Level | Name | Leitfrage |
|---|---|---|
| FL1 | Operational – Arbeit einzelner Teams/Abteilungen | "Are you working effectively on the right things?" |
| FL2 | Coordination – Workflows für teamübergreifende Themen; visualisiert den Wertstrom Ende-zu-Ende | "How do teams work together toward common goals?" |
| FL3 | Strategic (Portfolio Management) – Brücke zwischen Strategie und Umsetzung | "Are you turning strategy into real-world results?" |

Drei Varianten von FL2-Systemen im Buch: Koordination mehrerer Teams · Koordination
mehrerer Dienstleistungen/Produkte · Koordination durch das Management.

### Die fünf (Kern-)Aktivitäten

Kontinuierlich **auf allen Levels** anzuwenden; sie sind der eigentliche Motor
(*„the air traffic control"*), nicht die Levels selbst:

1. Visualise the situation
2. Create focus
3. Establish agile interactions
4. Measuring progress
5. Implement improvements

### Agile Interaktionen (Aktivität 3) – was das Modell über Meetings sagt

- Das Modell **schreibt keine Meetings, Zeitpunkte oder Dauern vor**: *„we now refuse to
  tell people which meetings they have to hold, when and for how long, in order to be
  agile."*
- Das Problem ist **nicht die Anzahl** der Meetings: *„Most of the time, the problem in
  companies is not that there are too few meetings. The problem is rather that either
  nothing of substance is said in these meetings, no decisions are made or after the
  meeting, all participants are just as smart as they were before (this is then called
  ‚result-neutral')."* Entscheidend: *„the content and outcome of interactions, not their
  quantity or title."*
- Zwei Kommunikations-**Prinzipien** (keine Kadenz-Normen): *„Let's make it short, but
  more often"* und *„Communicate with foresight"*.
- **Vier Schlüsselfragen** helfen, passende Kommunikationsformate zu finden (ausdrücklich
  nicht dogmatisch): Wie koordinieren wir in kurzen Schleifen? Wie entscheiden wir, was
  zu tun ist? Wie entscheiden wir, wie etwas zu tun ist? Wie verbessern wir uns?
- Empfehlung: Kommunikationsformate gemeinsam in einem **Canvas** definieren (Zweck,
  Entscheidungen).
- Informationsfluss läuft über **Boards, nicht über Personen**: *„Stop using people as
  routers. Flight Levels creates a system where information flows through the boards"*
  (flightlevels.io, 3-0 verifiziert).
- Messungen: *„the Flight Level Model does not specify specific measurements."*

### Verbindung zwischen den Levels

Nicht über Personenrollen, sondern über Systemarchitektur: **Work System Topology**,
**Flight Items** (Arbeitsgegenstände, die zwischen Systemen fließen) und **Flight Routes**
(deren Wege). Kapitel „Interactions between the Flight Levels".

## Audit der bisherigen Tab-Aussagen

| Aussage im Tab | Befund | Beleg |
|---|---|---|
| „Brückenkopf" als Personenrolle | **Widerlegt** – 0 Treffer im Buchvolltext; Gegenkonzept „Stop using people as routers" | Volltextsuche 11.07.2026 |
| Erwartete Rhythmen je Ebene (FL1 täglich/wöchentlich …) | **Widerlegt als Modellvorgabe** – Modell verweigert Meeting-Vorgaben explizit; nur Prinzip „short, but more often" | Buch, Kap. 2.3 |
| „Fehlende FL2-Meetings sind das häufigste Dysfunktionssignal" | **Nicht belegt**; Buch sagt sogar: Problem ist nicht zu wenige Meetings, sondern ergebnisneutrale | Buch, Kap. 2.3 |
| Pyramiden-Norm „optimal FL1 > FL2 > FL3" | **Nicht belegt** – Modell ist explizit keine Hierarchie/kein Mengen-Modell | Buch, Kap. 1 |
| „Koordinationstheater" | **Nicht belegt** (erfundener Begriff); verwandtes Originalkonzept: „result-neutral" meetings | Buch, Kap. 2.3 |
| Kachel 2: Person auf allen 3 Ebenen = Flaschenhals-Risiko | **Kein FL-Vokabular**, aber Richtung modellnah („people as routers" = Anti-Pattern) | flightlevels.io |
| Q3: Abwesenheit solcher Personen = „Fragmentierung" | **Widerspricht dem Modell** – Ebenen verbindet die Systemarchitektur (Boards/Flight Routes), nicht Personen | Buch, Kap. 4 |
| Auto-Klassifikation Meetings→Level über Abteilungstypen | **Tool-eigene Heuristik** – zulässig, aber als solche zu kennzeichnen; Spannung zu „kein Organisationsmodell" | Buch, Kap. 1 |
| Diagnose-Fragen F1–F5 | **Tool-eigene Diagnostik** – Original-Diagnostik: eine Leitfrage je Level + vier Schlüsselfragen + Flight Routes | flightlevels.io, Buch |

## Konsequenz für den Umbau (F001)

Legitim laut Quelle: die drei Levels mit Leitfragen; Meetings je Level sichtbar machen
(Visualisierung ist Aktivität 1); Wirkungs-/Ergebnisorientierung von Interaktionen
(„result-neutral" als Original-Anker); Frage nach ebenen-verbindendem Informationsfluss –
aber als System-, nicht als Personenfrage. Nicht länger als Modell-Aussage ausgeben:
Rhythmus-Normen je Level, Mengen-Pyramide, Personenrollen zwischen Ebenen. Tool-eigene
Auswertungen sind erlaubt, wenn sie ehrlich als solche gekennzeichnet sind.
