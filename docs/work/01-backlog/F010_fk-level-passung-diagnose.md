# F010 – FK-Level-Passung: Diagnose für Führungskräfte auf falscher Flight-Level-Ebene

**Status:** Backlog
**Quelle:** Leiv, 27.07.2026 – beim Testen von F001 (Flight-Levels-Quellentreue) mit
Echtdaten entdeckt: ein Manager ist stark in FL1-Meetings aktiv, ohne dass das Tool das
hinterfragt.

## Worum es geht

Die bestehende „Teilnahme in Flight Levels"-Diagnose (siehe F001) prüft nur, ob eine
Person auf **allen drei** Ebenen gleichzeitig aktiv ist (`_flOnAllLevels()`). Das erfasst
nicht den eigentlich interessanten Fall: eine Führungskraft, die überproportional viel
Zeit auf einer Ebene **unterhalb** oder **oberhalb** ihrer erwarteten Rolle verbringt.

Gewünschte Diagnostik (Zitat Leiv): „Wir haben eine ungefähre Einschätzung davon, ob die
Person FK ist und auf welchem Level sie FK ist. Folglich könnten wir daraus ableiten, wo
sie ihre Zeit verbringen sollte. Ist eine FK mehr im Operativen mit Kollegen aus dem
Operativen tätig, ist das ein Indiz für Micromanagement (Achtung: Mitarbeitergespräche
zählen hier nicht dazu). Ähnlich verhält es sich mit Geschäftsführung auf
Koordinationsebene oder gar Operationsebene. Der Impuls sollte sein: Du bist mehrheitlich
auf FL x aktiv, warum ist das so?"

**Wichtig – Quellentreue (siehe F001/`docs/research/flight-levels-buch-de-2022.md`):**
Diese Diagnose ist eine Tool-eigene Ableitung aus der Ebenen-Logik des Modells (FL1 =
Teamebene, FL2 = Koordination, FL3 = Strategie), **keine wörtliche Buch-Aussage**. Muss
im UI klar als Tool-Beobachtung gekennzeichnet bleiben, nicht als Modell-Zitat.

## Fachliche Bausteine

1. **Neues Datenfeld pro Führungskraft:** „erwartetes Flight Level" (FL1/FL2/FL3).
   Aktuell gibt es im Konfiguration-Tab nur einen Boolean (★ = Führungskraft,
   `fkSet`/`FK_LIST`, Zeile ~683/880), aber kein Level dazu. Muss ergänzt und
   persistiert werden (localStorage/Config-Export wie die übrige FK-Zuordnung).
2. **Mitarbeitergespräche ausklammern:** 1:1-Meetings zwischen FK und einzelnen
   Mitarbeitenden dürfen nicht in die FL1-Zeit der FK einfließen. Zu klären: lässt sich
   das zuverlässig aus der Urliste ableiten (z. B. über `kategorie` oder Teilnehmerzahl
   = 2), oder braucht es eine explizite Kennzeichnung?
3. **Diagnose-Logik:** Für jede FK mit erwartetem Level X: Anteil der Zeit auf Ebenen
   unterhalb X (Micromanagement-Signal) bzw. deutlich oberhalb/unterhalb generell
   hinterfragen. Schwelle noch offen (z. B. „FL1 ist stärkste Ebene trotz erwartetem
   FL2/FL3" wäre ein einfacher, robuster Startpunkt).
4. **UI:** Impuls-Formulierung „Du bist mehrheitlich auf FL x aktiv, warum ist das so?" –
   analog zu den bestehenden Impuls-Karten (Abteilungs-Scorecard, Cockpit „Mein Input").

## Leitplanken

- Flight-Levels-Terminologie strikt nach `docs/research/flight-levels-buch-de-2022.md`
  (deutsches Original, seit 27.07.2026 einzige Quelle – siehe F001-Nachfolge).
- Tool-eigene Diagnosen klar kennzeichnen, keine Modell-Zitate erfinden.
- Bestehende „Teilnahme in Flight Levels"-Diagnose (alle 3 Ebenen) bleibt zusätzlich
  bestehen – dieses Feature ergänzt, ersetzt sie nicht.
- Datenschutz: keine Echtdaten in Commits/Tests, nur `testdaten.tsv`.

## Offene Fragen (vor Umsetzung klären)

- Wie wird das „erwartete Level" pro FK erfasst – manuell im Konfiguration-Tab, oder aus
  Abteilungstyp abgeleitet?
- Wie werden Mitarbeitergespräche zuverlässig erkannt?
- Welche Schwelle löst den Impuls aus (siehe Baustein 3)?
