# Claude Session Context – Organisations-Meeting-Informationsfluss

**Für neue Claude-Sessions:** Diese Datei ist der vollständige Einstiegs-Kontext.
Lies sie komplett bevor du anfängst.

---

## Projekt auf einen Blick

**Zweck:** Interaktives Analyse-Dashboard für Meeting-Strukturen einer Organisation.
Wird als Gesprächsgrundlage in Management-Reviews eingesetzt – kein statischer Bericht,
sondern ein explodierbares, interaktives Tool.

**Repository:** https://github.com/braunle77/Organisations-Meeting-Informationsfluss  
**Lokaler Pfad:** `/Users/leivbraun/Documents/Claude Code/Organisations-Meeting-Informationsfluss/`

**Nutzer:** Leiv Braun, arbeitet bei Colenet. Rollen: Projektleiter, BizDev, KI-Enablement.
Arbeitet auf Deutsch. Will präzise Ergebnisse ohne Rückfragen – lieber entscheiden und
nachkorrigieren als auf Anweisungen warten. Er verwendet das Tool in echten Management-Meetings.

---

## Datei-Übersicht

| Datei | Beschreibung |
|-------|-------------|
| `meeting_strukturanalyse_standalone.html` | **Haupt-Entwicklungsdatei** – Standalone-Dashboard, läuft komplett im Browser |
| `dashboard_erstellen.py` | Python-Pipeline: erzeugt HTML aus `meetings_bereinigt.json` |
| `daten_bereinigen.py` | Python: normalisiert Excel/CSV → `meetings_bereinigt.json` |
| `start.sh` | Shell-Wrapper: Abhängigkeiten prüfen + Pipeline starten |
| `meetings_bereinigt.json` | Bereinigte Daten (Zwischenschritt Python-Pipeline) |
| `meeting_strukturanalyse.html` | Fertiges Pipeline-Dashboard (generiert, nicht manuell bearbeiten) |
| `confluence_tabelle.csv` | Export für Confluence |
| `LeitMet.csv` / `meetingstruk.csv` | Rohdaten – **lokal, nie ins Repo!** |

**Primäre Entwicklungsdatei: `meeting_strukturanalyse_standalone.html`**
Der Python-Modus (`dashboard_erstellen.py`) spiegelt die Standalone-Features mit Verzögerung.
Neue Features immer zuerst im Standalone implementieren.

---

## Eingabe-Datenformat

Tabelle mit 12 Spalten (Reihenfolge zählt, Namen egal):

| # | Spalte | Beschreibung |
|---|--------|-------------|
| 1 | Abt. | Abteilungskürzel (PC, PCT, PCO, PCC, PCS, PCP …) |
| 2 | Meeting-Name | Bezeichnung |
| 3 | Kategorie | Jour Fixe / Teammeeting / Regeltermin / Einzelgespräch / Sprint Review / Workshop / Sonstiges |
| 4 | Zweck | Freitext |
| 5 | Kopf | Kürzel der verantwortlichen Person |
| 6 | Teilnehmer | Komma- oder semikolon-getrennte Kürzel |
| 7 | Rhythmus | Freitext (wird normalisiert) |
| 8 | Informations-Fluss | Freitext (rein/raus) |
| 9 | Status | „Aktiv" oder „Geplant" |
| 10 | Abt.übergreifend | „Ja" / „Nein" |
| 11 | Platzhalter | „Ja" wenn Teilnehmerkreis vage/variabel |
| 12 | Learnings | Optionale Notizen |

**Rhythmus-Normalisierung** (Regex-basiert, in `RHYTHMUS_MAP`):
täglich / wöchentlich / dreiwöchentlich / zweiwöchentlich / monatlich / quartalsweise / variabel

---

## Dashboard-Tabs (Standalone)

8 Tabs, Reihenfolge ist fest:

| Index | Tab-Label | Funktion |
|-------|-----------|---------|
| 0 | Netzwerk | d3-force + Plotly Netzwerkgraph – Personen als Knoten, Meetings als Kanten |
| 1 | Kalender | Bubble-Chart: Wochentag × Rhythmus |
| 2 | Überschneidungen | Jaccard-Heatmap der Teilnehmergruppen |
| 3 | Abteilungen | Gestapeltes Balkendiagramm Meeting-Anzahl × Rhythmus pro Abteilung |
| 4 | Kommunikation | Sankey-Diagramm – Kommunikationsintensität zwischen Abteilungen |
| 5 | Alle Meetings | Filterbare Tabelle |
| 6 | KI Analyse | Placeholder für kommentierte Beobachtungen |
| 7 | Personen | **Org-Spalten-Ansicht** – Person→Abteilung-Zuweisung & FK-Verwaltung |

Nach dem Datenladen öffnet das Dashboard **automatisch Tab 7 (Personen)**, damit der Nutzer
die Zuordnungen reviewt bevor er die Charts sieht.

---

## Personen-Tab (Tab 7) – Kernfeature

### Zweck
Der Auto-Algorithmus (`autoDerivePERSON_ABT`) ordnet Personen nach häufigster Abteilung zu.
Das versagt bei:
- **Führungskräften** (z.B. Ktz ist PCP-Leiter, taucht aber 4× in PC-Meetings auf → wird fälschlicherweise PC)
- **GF-Ebene** (Sez, DrS berichten an sie, sind aber nicht Teil der PC-Organisation)
- **Externen** (Schäflein = Logistikpartner, Enasys = Lieferant)

Der Personen-Tab gibt dem Nutzer die Kontrolle, das zu korrigieren.

### Layout
Spalten-Org-Ansicht: eine Spalte pro Abteilung (aus Daten abgeleitet) + feste Sonder-Spalten rechts.

```
PC        PCO       PCT       ...     │  Management   Extern   Kunden
────────  ────────  ────────          │  ──────────   ──────   ──────
★ Jco     ★ Beb     ★ Kip     ...     │  DrS ●        Schäfl.
  MiG       Fln       Kis             │  Sez
  ...       ...       ...             │
```

- **★** = Führungskraft (FK) – wird im Netzwerk als Stern-Symbol angezeigt
- **●** = oranger Dot = Konfidenz < 70% (Algorithmus unsicher)
- Hover auf Chip zeigt leeren Stern ☆ als Affordanz (FK-Status setzbar)

### Interaktion
**Klick auf Chip → Popover:**
- Liste aller regulären Abteilungen (mit Farbdot)
- Trennlinie
- Sonder-Kategorien: Management / Extern / Kunden
- Trennlinie
- FK-Toggle: „Als Führungskraft markieren" / „Führungskraft entfernen"

Nach Auswahl springt der Chip sofort in die neue Spalte (DOM-Update ohne Re-Render).

### Sonder-Kategorien (`SPECIAL_DEPTS`)

```javascript
const SPECIAL_DEPTS = [
  { key: "Management", label: "Management",  title: "Intern – übergeordnet (berichtet an sie)",  cssClass: "special-mgmt",   color: "#7c6bab" },
  { key: "Extern",     label: "Extern",       title: "Externe Partner / Unternehmen",             cssClass: "special-extern",  color: "#6b7280" },
  { key: "Kunden",     label: "Kunden",       title: "Kunden / Endabnehmer",                      cssClass: "special-kunden",  color: "#c2607a" },
];
```

Sonder-Spalten erscheinen **immer** (auch leer), getrennt vom regulären Raster durch
`.personen-grid-sep` (1px vertikale Linie).

### Aktions-Leiste (fixed bottom)
- **„Alle Charts aktualisieren"** – re-rendert Netzwerk, Sankey, Abteilungen mit aktuellen Zuordnungen
- **„Zuordnungen zurücksetzen"** – löscht localStorage und leitet neu ab

### localStorage-Persistenz

**Key:** `"meeting-strukturanalyse-config"`  
**Format:** `{ personAbt: { "Ktz": "PCP", "DrS": "Management" }, fkList: ["Jco", "Kip", ...] }`

Wichtig:
- Nur **Abweichungen** vom Auto-Algorithmus werden gespeichert
- Beim Laden werden Overrides nur für Personen angewendet, die in den aktuellen Daten vorkommen
- Meeting-Inhalte werden **nie** im localStorage gespeichert (jede Session beginnt mit leerer Seite)

---

## Schlüssel-Funktionen im Standalone

```javascript
// Haupt-Algorithmus: ordnet Personen ihrer häufigsten Abteilung zu
// Gibt { map, confidence } zurück
// confidence[p] = { autoDept, score (0-1), alternatives: [[dept, count],...] }
function autoDerivePERSON_ABT(meetings) { ... }

// Wird nach dem Datenladen aufgerufen
// Reihenfolge: Auto-Ableitung → PERSON_ABT (HTML-Config) → localStorage-Overrides
function showDashboard() { ... }

// Baut Abteilungs-Farbmap; weist SPECIAL_DEPTS feste Farben zu
function buildAbtFarben(depts) { ... }

// Erzeugt das Personen-Tab-Layout
function renderPersonenTab() { ... }

// Hilfsfunktion: baut eine einzelne Abteilungs-Spalte (regulär oder Sonder)
function _buildDeptCol(dept, color, persons, specialClass) { ... }

// Baut einen Person-Chip (mit FK-Stern und Ambiguity-Dot)
function buildPersonChip(person, currentDept) { ... }

// Öffnet Popover mit Abteilungs-Optionen + FK-Toggle
function openPersonPopover(person, anchorEl, event) { ... }

// Ändert Person→Abteilung, speichert, aktualisiert DOM sofort
function assignPerson(person, newDept) { ... }

// FK-Status togglen + speichern
function toggleFK(person) { ... }

// Re-rendert alle Charts mit aktuellen effectivePersonAbt-Werten
function refreshAllCharts() { ... }

// localStorage lesen und auf effectivePersonAbt / fkSet anwenden
function applyStoredConfig() { ... }

// Nur Abweichungen vom Auto-Wert in localStorage speichern
function saveConfig() { ... }

// Parst HTML-Clipboard von Confluence-Paste (<table> → Tab-Text)
function parseHtmlTable(html) { ... }
```

### Globale Laufzeit-Variablen

```javascript
let MEETINGS = [];              // geladene Meetings (nach parseData)
let allDepts = [];              // unique Abteilungen aus Daten (sorted)
let effectivePersonAbt = {};    // { person: abteilung } – aktuelle Zuordnung
let effectiveAbtFarben = {};    // { abteilung: "#hex" }
let personConfidence = {};      // { person: { autoDept, score, alternatives } }
let fkSet = new Set();          // Führungskräfte
let netCache = null;            // d3-force-Layout-Cache (teuer, einmalig berechnet)
let sankeyRendered = false;     // ob Sankey-Tab schon gerendert wurde
let abtRendered = false;        // ob Abteilungen-Tab schon gerendert wurde
const renderedTabs = new Set(); // welche Tabs bereits gerendert wurden
```

---

## Sankey (Tab 4: Kommunikation)

**Wichtig:** Das Sankey ist **nicht gerichtet**. Es zeigt Kommunikationsintensität –
wie häufig zwei Abteilungen gemeinsam in Meetings sitzen – nicht den Informationsfluss.
Tab und Titel wurden deshalb umbenannt von „Informationsfluss" zu „Kommunikation".

**Gewichtung (`FREQ_W`):**
```javascript
{ "täglich":5, "wöchentlich":4, "dreiwöchentlich":3,
  "zweiwöchentlich":2, "monatlich":1, "quartalsweise":0.5, "variabel":0.5 }
```

**Sonder-Kategorien im Sankey:** Wenn Personen Management/Extern/Kunden zugewiesen sind,
erscheinen diese als eigene Sankey-Knoten (über `usedSpecialDepts` dynamisch hinzugefügt).

---

## Netzwerk (Tab 0)

- **Knotengröße** = Anzahl Meetings (degree)
- **Kantendicke** = Frequenz-Gewicht (FREQ_W)
- **Knotenfarbe** = Abteilungsfarbe aus `effectiveAbtFarben`
- **★-Symbol** = Führungskraft (aus `fkSet`)
- **Einfacher Klick** = Verbindungen der Person hervorheben (Nachbarn hell, Rest ausblenden)
- **Doppelklick** = FK-Status togglen (direkt im Netzwerk)
- Personen aus Platzhalter-Meetings werden gefiltert (`!m.ist_platzhalter`)
- Generische Teilnehmer werden gefiltert (enthält Leerzeichen → kein echter Name)

---

## Confluence-Paste

Beim Paste aus Confluence (`⌘A → ⌘C → ⌘V` in der Textarea) wird automatisch das
`text/html`-Format aus der Zwischenablage gelesen. `parseHtmlTable()` extrahiert die
`<table>` aus dem HTML und konvertiert sie zu Tab-getrenntem Text – bevor der normale
CSV-Parser ansetzt. So werden Trennzeichen-Probleme und Confluence-Navigations-Zeilen
zuverlässig vermieden.

**Häufige Fehlerquellen (bereits gefixt):**
- Confluence-Navigationszeilen enthalten manchmal „Abt." und „Meeting" → fälschlich als Header erkannt. Fix: Header muss ≥5 Spalten haben.
- Section-Header-Zeilen in Confluence (z.B. „PCTAC/DC" als Trennzeile mit merged cells) erzeugen Meetings mit `name=""`. Fix: `if (!name) continue;`

---

## Farbschema (Teal-Palette)

Orientiert sich an `arbeitszeit-budget-check` (Leivs anderes Claude-Projekt).

| Element | Farbe |
|---------|-------|
| Primärfarbe / Akzent | `#59B2A5` |
| Primär dunkel | `#246b61` |
| Header-Hintergrund | `#59B2A5` (solid, + Glassmorphism-Kreise via `::before/::after`) |
| Page-Background | `#f8faf9` |
| Body-Text | `#1a2e2c` |
| Sekundärtext / Labels | `#4a6b67` |
| Hint-Text | `#7a9e9a` |
| Warn-Farbe | `#b83232` |
| Warn-Border | `#fcd34d` |
| Warn-Background | `#fffbeb` |

**Fonts:** DM Sans (Text), DM Mono (Zahlen in Stats)

---

## Konfiguration im HTML-Kopf

Am Anfang der `<script>`-Sektion befinden sich optionale Overrides:

```javascript
const ALIAS_MAP    = { /* "max": "Max" */ };
const PERSON_ABT   = { /* "Ktz": "PCP" – statische Overrides (localStorage schlägt das vor) */ };
const PERSON_SUBTEAM = { /* "Max": "Innendienst" */ };
const FK_LIST      = [];          // Führungskräfte (können auch per UI gesetzt werden)
const ABT_FARBEN   = {};          // Farb-Overrides
```

Diese sind für den **statischen Fall** gedacht (einmalig eintragen, HTML teilen).
Für dynamische Änderungen nutzt der Nutzer den Personen-Tab (localStorage).

---

## Sicherheits- und Datenschutz-Constraints

- **Rohdaten (`.xlsx`, `.csv`)** werden nie ins Repository eingecheckt (`.gitignore`)
- **localStorage** speichert nur Config (Zuordnungen, FK-Liste), **niemals Meeting-Inhalte**
- Jede neue Session beginnt mit einer leeren Seite; Daten müssen neu eingefügt werden
- **GitHub-Repos** immer privat, es sei denn explizit anders gewünscht

---

## Offene Punkte / mögliche nächste Schritte

- **README aktualisieren:** Noch veraltet – Tab „Informationsfluss" müsste zu „Kommunikation"
  geändert werden, Personen-Tab fehlt, Sonder-Kategorien fehlen
- **KI Analyse Tab (Tab 6):** Aktuell ein leerer Placeholder. Langfristig für kommentierte,
  KI-generierte Beobachtungen gedacht (Redundanzen, Kommunikationslücken, hohe Meeting-Last)
- **Python-Pipeline nachziehen:** `dashboard_erstellen.py` kennt noch keine SPECIAL_DEPTS
  und keinen Personen-Tab – für den Pipeline-Modus irrelevant, aber der Tab fehlt dort
- **Doppelklick-FK-Toggle im Netzwerk** setzt FK nicht im Personen-Tab zurück
  (fkSet wird geupdated, aber renderPersonenTab wird nicht aufgerufen)

---

## Wie eine typische Entwicklungs-Session aussieht

1. Datei lesen: `Read /Users/leivbraun/Documents/Claude Code/Organisations-Meeting-Informationsfluss/meeting_strukturanalyse_standalone.html`
2. Änderung implementieren (Edit)
3. Commit + Push:
   ```bash
   cd "/Users/leivbraun/Documents/Claude Code/Organisations-Meeting-Informationsfluss"
   git add meeting_strukturanalyse_standalone.html
   git commit -m "..."
   git push
   ```
4. Nie Branches – direkt auf `main`
5. Nie `--no-verify` oder force-push

---

## Zusammenfassung der bisherigen Sessions

### Session 1–3 (Grundaufbau)
- Python-Pipeline: `daten_bereinigen.py` + `dashboard_erstellen.py`
- Standalone-HTML als browserbasierter Ersatz
- Netzwerk (d3-force + Plotly), Kalender, Überschneidungs-Heatmap, Abteilungen-Balken, Sankey

### Session 4 (UX/UI-Überarbeitung)
- Plotly ModeBar auf allen Charts ausgeblendet (`displayModeBar: false`)
- Teal-Farbschema (von Blau zu `#59B2A5`)
- DM Sans + DM Mono Fonts
- Glassmorphism-Header
- Collapsible Warning-Box
- Stat-Karte „Ohne Infofluss-Doku" statt „Wöchentlich"
- Platzhalter-Stat als Warn-Karte (gelber Rand)
- Netzwerk: Platzhalter-Knoten herausgefiltert
- KI Analyse Tab: alte Hardcoded-Findings durch neutralen Placeholder ersetzt
- Footer vereinfacht

### Session 5 (Confluence-Paste + Personen-Tab)
- **Sankey umbenannt:** Tab „Informationsfluss" → „Kommunikation", Titel erklärt Nicht-Direktionalität
- **Confluence-Paste:** HTML-Clipboard-Parser (`parseHtmlTable`), Header-Erkennung robuster (≥5 Cols), PCTAC/DC-Ghost-Department-Fix
- **Personen-Tab (Tab 7):** Komplette Implementierung:
  - Org-Spalten-Ansicht mit Dept-Chips
  - Ambiguity-Dot (orange, Konfidenz < 70%)
  - FK-Stern nur bei echten FKs; Hover-Affordanz via CSS `::before`
  - Popover: Abteilungs-Auswahl + FK-Toggle
  - Chip springt sofort in neue Spalte nach Auswahl
  - Generische Teilnehmer gefiltert (`!p.includes(" ")`)
  - `assignPerson()`, `toggleFK()`, `refreshAllCharts()`
  - **localStorage-Persistenz** (statt JSON-Export): `saveConfig()`, `applyStoredConfig()`, `resetConfig()`
  - Aktions-Leiste (fixed bottom): Aktualisieren + Zurücksetzen
  - Daten-Load öffnet automatisch Tab 7
- **SPECIAL_DEPTS:** Management (lila), Extern (grau), Kunden (rosa) als feste Sonder-Spalten
  - Eigene Spalten rechts vom regulären Raster, getrennt durch vertikale Linie
  - Im Popover als wählbare Optionen
  - Im Sankey als Knoten wenn Personen dort zugewiesen
  - `buildAbtFarben()` weist ihnen feste Farben zu
