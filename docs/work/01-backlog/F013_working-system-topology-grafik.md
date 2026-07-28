# F013 – Working System Topology (Arbeitssystem-Topologie) im Flight-Levels-Tab grafisch erfassen

**Status:** Backlog – noch keine Umsetzung, erst Planung/Untersuchung
**Quelle:** Leiv, 28.07.2026

## Worum es geht (Wunsch, Zitat sinngemäß)

Leiv möchte im Flight-Levels-Tab eine grafische „Working System Topology" planen und
untersuchen. Motivation (context-first-Nachfrage): ein visuelles Mapping, mit dem besser
zu verstehen ist, **wie die Organisation operational strukturiert ist** und **wie
cross-funktionale Systeme, Produkte und Teams verbunden sind und Werte liefern**.

## Einordnung an der Originalquelle

**Wichtig – Quellentreue** (siehe F001, `docs/research/flight-levels-buch-de-2022.md`,
Kap. 4.1, Zeilen ~419–510): Der korrekte deutsche Originalbegriff ist
**„Arbeitssystem-Topologie"** (im Buch einmal auch als „Work Systems Topology" in Klammern
erwähnt, Zeile 679). Zentrale Punkte aus dem Buch:

- Eine **Arbeitssystem-Topologie** ist „eine Visualisierung, die abbildet, welche
  Flight-Levels-Systeme in einer Organisation für die Erledigung von Arbeit gebraucht
  werden und wie diese miteinander verbunden sind."
- Ein **Arbeitssystem** ist ein Ausschnitt der Organisation, in dem die fünf
  Flight-Levels-Aktivitäten angewendet werden – in der Topologie-Abbildung ein Kästchen.
- Topologie + **Flight Items** (welche Arbeit wird wo erledigt) + **Flight Routes** (wie
  bewegt sich Arbeit zwischen den Systemen) zusammen = **Flight-Levels-Systemarchitektur**.
- Ausdrücklich **kein idealtypisches Organigramm** – die Topologie bildet die tatsächlich
  vorgefundene Ablauforganisation ab, nicht die Soll-Struktur.
- Die größte Herausforderung ist laut Buch die Identifikation der FL2-Systeme (die
  „Drehscheiben der Koordination").
- Buch-Beispiel „Webplattform für Automobil-Inserate" (S. 20) zeigt: FL1-Teams koordinieren
  sich vor einem gemeinsamen FL2-Board; unterstützende Services (Sales, Marketing, Recht)
  sind eigene FL2-Systeme; alle Systeme sind zusätzlich mit einer strategischen „Company
  Wall" (FL2/FL3-Mischung) verbunden.

Jede Umsetzung muss diese Begriffe sauber verwenden und darf sie nicht mit bereits im Tool
etablierten, aber anders gelagerten Begriffen vermischen (z. B. „Abteilung" ≠
„Arbeitssystem" – ein Arbeitssystem kann mehrere Abteilungen umfassen oder quer zu ihnen
liegen, siehe Buchbeispiel „Business Intelligence").

## Bereits vorhandene, verwandte Bausteine im Tool (Ausgangspunkt für die Untersuchung)

- **„Koordinations-Lücken zwischen Abteilungen"** (`chart-fl-matrix`,
  `meeting-inspektor.html` ~Zeile 573/4868): FL2-Verbindungsmatrix zwischen Abteilungen –
  zeigt Verbindungen, aber als Heatmap-Matrix, nicht als Topologie-Grafik, und auf
  Abteilungsebene statt auf Arbeitssystem-Ebene.
- **Netzwerk-Briefing** (`_renderNetzwerkBriefing()`, ~Zeile 1729): personenbezogenes
  Netzwerk (meistvernetzte Person, Brückenpersonen) – andere Flughöhe (Personen statt
  Arbeitssysteme).
- **Organigramm-Renderer** (`renderOrganigramm()`, ~Zeile 5541): existiert im Code,
  wurde aber laut früherer Tab-Konsolidierung aus der Navigation entfernt (bewusst, weil
  Flight Levels explizit **kein** Organigramm ist – siehe Quellentreue oben). Vor
  Wiederverwendung prüfen, ob/wie das mit dieser Abgrenzung vereinbar ist.

Diese drei sind fachlich benachbart, aber keiner bildet die Arbeitssystem-Topologie im
Sinn des Buchs ab (Systeme als Knoten, Abhängigkeiten/Flight Routes als Kanten, FL1–FL3
als Ebene der Knoten). Die Untersuchung sollte klären, ob eine neue Visualisierung nötig
ist oder ob sich die FL2-Matrix zu einer echten Topologie-Grafik ausbauen lässt.

## Offene Fragen (vor Umsetzung klären)

1. **Was ist ein „Arbeitssystem" im Datenmodell dieses Tools?** Die Urliste kennt
   Abteilungen und einzelne Meetings, aber kein explizites Konzept „Arbeitssystem"
   (das laut Buch auch abteilungsübergreifend sein oder mehrere Meetings/Boards
   umfassen kann). Leitet sich ein Arbeitssystem 1:1 aus einer Abteilung ab, oder braucht
   es eine eigene, manuell pflegbare Zuordnung (ähnlich Abteilungstyp/FK-Liste im
   Konfiguration-Tab)?
2. **Wie werden Flight Routes/Abhängigkeiten zwischen Systemen erfasst?** Aktuell gibt es
   nur die FL2-Meeting-Kopplung als Signal (siehe Koordinations-Lücken-Matrix) – reicht
   das als Näherung für „Abhängigkeit zwischen Arbeitssystemen", oder braucht es weitere
   Datenquellen/-felder?
3. **Visualisierungsform:** Netzwerkgraph (Knoten = Systeme, Kanten = Abhängigkeiten,
   ggf. mit D3, das im Stack bereits vorhanden ist), Sankey (Flight Routes als Fluss),
   oder geschichtete Kästchen-Darstellung wie im Buch (S. 20)? Trade-offs prüfen.
4. **Abgrenzung zum entfernten Organigramm:** Wie wird in der UI unmissverständlich klar,
   dass dies eine Ist-Ablauforganisation ist und kein Hierarchie-/Organigramm-Ersatz
   (Rückfall in alte Verwechslung vermeiden)?
5. **Umfang für einen ersten Wurf:** Reicht eine Ableitung aus vorhandenen Daten
   (Abteilungen + FL2-Kopplung), oder ist eine neue manuelle Datenpflege (Konfiguration-Tab)
   nötig, bevor eine sinnvolle Topologie entsteht?

## Nächster Schritt

Reine Planungs-/Untersuchungsphase (noch keine Implementierung): Antworten auf die
offenen Fragen erarbeiten, ggf. mit `cape:prototype` einen Wegwerf-Prototyp zur
Visualisierungsform bauen, bevor ein konkreter Umsetzungs-Issue daraus geschnitten wird.
