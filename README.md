# Organisations-Meeting-Informationsfluss

Interaktives Analyse-Dashboard für Meeting-Strukturen in Organisationen.  
Läuft vollständig im Browser – kein Python, kein Server, keine Installation.

---

## Wozu

- Meeting-Landschaft einer Organisation visualisieren
- Kommunikation und Informationsfluss zwischen Abteilungen sichtbar machen
- Redundante Meetings identifizieren (Teilnehmer-Überschneidungen)
- Kommunikationslücken aufdecken
- Personen Abteilungen zuordnen und Führungskräfte markieren

Das Dashboard ist als Gesprächsgrundlage für Management-Reviews gedacht, nicht als statischer Bericht.

---

## Schnellstart

1. `meeting-inspector.html` im Browser öffnen
2. Daten laden – zwei Wege:

**Option A – Paste aus Confluence:**

1. Confluence-Seite mit der Meeting-Tabelle öffnen
2. Alles markieren (`⌘A`) und kopieren (`⌘C`)
3. Im Dashboard einfügen (`⌘V`) → „Prüfen & Laden"

Der Header wird automatisch erkannt und Navigationszeilen übersprungen.

**Option B – CSV-Datei wählen:**

CSV, TSV oder TXT mit den [erwarteten Spalten](#eingabedatei) hochladen.  
Trennzeichen (Komma, Semikolon, Tab) und UTF-8-BOM (Excel/Numbers) werden automatisch erkannt.

3. Das Dashboard öffnet automatisch den **Personen-Tab** – dort die automatischen Abteilungs-Zuordnungen prüfen und ggf. korrigieren
4. „Alle Charts aktualisieren" – fertig

---

## Eingabedatei

Tabelle mit 12 Spalten. **Reihenfolge zählt, Spaltennamen spielen keine Rolle.**

| # | Spalte | Beschreibung |
|---|--------|-------------|
| 1 | Abt. | Kürzel der Organisationseinheit |
| 2 | Meeting-Name | Bezeichnung des Meetings |
| 3 | Kategorie | Jour Fixe / Teammeeting / Regeltermin / Einzelgespräch / Sprint Review / Workshop / Sonstiges |
| 4 | Zweck | Kurzbeschreibung des Meeting-Inhalts |
| 5 | Kopf | Kürzel der verantwortlichen Person |
| 6 | Teilnehmer | Komma- oder semikolon-getrennte Kürzel |
| 7 | Rhythmus | Freitext – wird normalisiert (täglich, wöchentlich, zweiwöchentlich …) |
| 8 | Informations-Fluss | Beschreibung des Informationsflusses |
| 9 | Status | „Aktiv" oder „Geplant" |
| 10 | Abt.übergreifend | „Ja" oder „Nein" |
| 11 | Platzhalter | „Ja" wenn Teilnehmerkreis vage oder variabel |
| 12 | Learnings | Optionale Notizen |

Quelldaten bleiben **lokal** und werden nicht ins Repository eingecheckt (`.gitignore`).

---

## Dashboard-Tabs

| Tab | Inhalt |
|-----|--------|
| Netzwerk | Wer kommuniziert mit wem? Zentralität und Brücken sichtbar machen |
| Kalender | Wann findet was statt? Rhythmus-Verteilung über die Woche |
| Überschneidungen | Jaccard-Ähnlichkeit der Teilnehmergruppen |
| Abteilungen | Meeting-Anzahl und -Frequenz pro Abteilung |
| Kommunikation | Sankey-Diagramm der Kommunikationsintensität zwischen Abteilungen |
| Alle Meetings | Filterbare Tabelle mit allen Daten |
| KI Analyse | Kommentierte Beobachtungen als Gesprächsgrundlage |
| Personen | Abteilungs-Zuordnung & Führungskräfte-Verwaltung |

---

## Personen-Tab

Der Algorithmus ordnet Personen automatisch ihrer häufigsten Abteilung zu.  
Im Personen-Tab können Zuordnungen korrigiert und Führungskräfte markiert werden.

Sonder-Kategorien für Personen, die nicht in eine reguläre Abteilung gehören:

| Kategorie | Wann |
|-----------|------|
| Management | GF-Ebene oder übergeordnet (berichten an sie, sind aber nicht Teil der Org-Einheit) |
| Extern | Partner, Lieferanten, externe Dienstleister |
| Kunden | Endabnehmer |

Änderungen werden im `localStorage` des Browsers gespeichert und bleiben beim nächsten Öffnen erhalten.

---

## Konfiguration (optional)

Am Anfang der `<script>`-Sektion in der HTML-Datei gibt es einen optionalen Config-Block.  
Alle Felder können leer bleiben – Abteilungen, Zuordnungen und Farben werden automatisch abgeleitet.

```javascript
const ALIAS_MAP   = { /* Kürzel-Normalisierung, z.B. "max": "Max" */  };
const PERSON_ABT  = { /* Override Person→Abteilung; leer = auto     */  };
const FK_LIST     = [ /* Führungskräfte (Stern im Netzwerk)          */ ];
const ABT_FARBEN  = { /* Override Abteilungsfarben; leer = auto      */  };
```

---

## Dateien

| Datei | Beschreibung |
|-------|-------------|
| `meeting-inspector.html` | Dashboard – die einzige Datei, die du brauchst |
| `CLAUDE_CONTEXT.md` | Entwicklungs-Kontext für Claude-Sessions |

Quelldaten (`*.xlsx`, `*.csv`) sind in `.gitignore` ausgeschlossen.
