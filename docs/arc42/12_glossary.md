# Glossary

The project's ubiquitous language — one entry per term. Seeded and sharpened during
`/grill-with-docs` and `/architect` domain modelling.

## Datenbasis

**Urliste**:
Die vom Nutzer gepflegte Quelltabelle aller Meetings – die einzige Datenquelle (Single Source of Truth). Das Tool leitet ab und visualisiert; es pflegt und repariert keine Daten.
_Avoid_: Confluence, Quelltabelle, CSV-Tabelle

**Meeting**:
Ein wiederkehrender Termin der Organisation – eine Zeile der Urliste. Hat den Status „Aktiv" oder „Geplant"; Analysen werten in der Regel nur aktive Meetings aus.

**Meeting-Landschaft**:
Die Gesamtheit aller Meetings einer Organisation – das Analyseobjekt des Tools.

**Platzhalter-Meeting**:
Ein Meeting, dessen Teilnehmerkreis in der Urliste unvollständig oder variabel erfasst ist (Urliste-Spalte „Platzhalter / in real mehr"). Wird aus personenbezogenen Auswertungen teilweise ausgenommen.
_Avoid_: „Platzhalter" ohne Zusatz (mehrdeutig, siehe Gruppenplatzhalter)

**Gruppenplatzhalter**:
Ein Eintrag in einer Teilnehmerliste, der eine Gruppe statt einer Einzelperson bezeichnet und darum aus der Personenanalyse ausgeschlossen wird. Das Tool diagnostiziert Gruppenplatzhalter, löst sie aber bewusst nicht in Einzelpersonen auf.
_Avoid_: Kein Mensch, Nicht-Person, Gruppen-Teilnehmer

## Analyse & Kennzahlen

**Rhythmus-Klasse**:
Die normalisierte Frequenz eines Meetings – eine von sieben Klassen (täglich, wöchentlich, zweiwöchentlich, dreiwöchentlich, monatlich, quartalsweise, variabel). Basis für die Hochrechnung auf Stunden pro Monat.

**Wirkung**:
Der empfundene Wert eines Meetings auf einer Skala von 1–4, direkt in der Urliste gepflegt. Die Mehrwert-Syntax `Verantwortlicher/Teilnehmer1/Teilnehmer2/…` erfasst mehrere Bewertungen; der Gesamtwert ist der Durchschnitt aller Einzelwerte.

**Wirkungsabweichung**:
Eine Differenz von mehr als 2 zwischen der Bewertung des Verantwortlichen und dem Teilnehmer-Durchschnitt – Signal für unterschiedliche Wahrnehmung desselben Meetings.

**Engpass**:
Die Konzentration von Meeting-Last (Anzahl und Zeitaufwand) auf einzelne Personen.

**Überschneidung**:
Die Ähnlichkeit der Teilnehmerkreise zweier Meetings (Jaccard-Ähnlichkeit) – Indiz für redundante Meetings.

**Impulse**:
Personalisierte Hinweise auf Lücken in den eigenen Meetings der Urliste (fehlende Dauer, Wirkung, Infofluss, Wochentag). Sollen den Nutzer zur Pflege der Urliste anregen, nicht das Tool korrigieren lassen.
_Avoid_: Vollständigkeits-Impulse, Datenoptimierung

**Abteilungsübergreifend**:
Eigenschaft eines Meetings, dessen Teilnehmer aus mehr als einer Abteilung stammen – wird automatisch berechnet, nicht gepflegt.

## Flight Levels

**Flight Level (FL1/FL2/FL3)**:
Die Kommunikationsebene eines Meetings nach dem Flight-Levels-Modell: FL1 operativ (Einzelteam), FL2 koordinativ (teamübergreifende Abhängigkeiten), FL3 strategisch (Portfolio, OKRs). Wird automatisch klassifiziert, wenn in der Urliste nicht gepflegt.
_Avoid_: Flugebene (nur als Urliste-Spaltenname), Hierarchieebene

**Agile Interaktion**:
Eine der fünf Kernaktivitäten des Flight-Levels-Modells („establish agile interactions"): regelmäßige, ergebnisorientierte Kommunikation auf und zwischen den Ebenen. Die Ebenen selbst verbindet nicht die Interaktion, sondern die Systemarchitektur (Boards, Flight Items, Flight Routes). Im Meeting Inspektor entsprechen die Meetings der Urliste den Interaktionen.

**Result-neutral**:
Originalbegriff des Flight-Levels-Modells für Meetings ohne Substanz: Es wird nichts Wesentliches gesagt, nichts entschieden, und alle sind hinterher so schlau wie vorher. Anker der Wirkungsgrad-Diagnose im Tool.
_Avoid_: Koordinationstheater (erfundener Begriff, aus dem Tool entfernt)

**Ebenenübergreifende Präsenz**:
Eigenschaft einer Person, die auf mehreren Flight Levels in Meetings vertreten ist. Das Modell wertet Personen als Informations-Router zwischen Ebenen als Anti-Pattern („Stop using people as routers") – Informationen sollen über Boards fließen. Bewusst rein beschreibend benannt; das Modell kennt hierfür keine Personenrolle.
_Avoid_: Brückenkopf (kein Flight-Levels-Vokabular, wird aus dem Tool entfernt), Ebenen-Verbinder

## Organisation

**Abteilungstyp**:
Die Klassifikation einer Abteilung als strategisch, koordinierend, operativ, unterstützend oder extern. Bestimmt die Flight-Level-Tendenz ihrer Meetings.

**Zuarbeitend**:
Sammelkategorie für interne Abteilungen, die in der Urliste nicht als Meeting-Verantwortliche vorkommen, deren Personen aber in Meetings auftauchen. Aktueller Behelfsweg, solange Abteilungen nicht frei benennbar sind.

**Führungskraft (FK)**:
Eine als Führungskraft markierte Person – eigener Filter in der Engpass-Analyse.
