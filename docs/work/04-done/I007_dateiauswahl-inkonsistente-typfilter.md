# I007 – Bug: Dateiauswahl – inkonsistente Dateityp-Filter

**Status:** Backlog
**Quelle:** [GitHub Issue #1](https://github.com/braunle77/Meeting-Inspektor/issues/1) (public Mirror, 15.07.2026 – ohne cape-Harness erfasst)
**Parent:** –

## Worum es geht

Zwei Wege öffnen denselben nativen Datei-Dialog:

1. Button „Datei auswählen" – `document.getElementById('file-input').click()`
2. Klick auf den Upload-Bereich – `<label for="file-input">`

Beide bedienen dasselbe `<input type="file" id="file-input">`, der native Datei-Dialog auf
macOS verhält sich laut Meldung je nach Auslöser aber unterschiedlich: `*.csv`-Dateien
erscheinen in einem Fall ausgegraut.

Zusätzlich prüft der Drag-and-Drop-Handler `handleFileDrop` (`meeting-inspektor.html:1298`)
den Dateityp gar nicht – er akzeptiert jede Datei, unabhängig vom `accept`-Attribut des
Inputs. Inkonsistent zu den beiden anderen Wegen.

**Betroffene Stellen (Stand 16.07.2026, zu verifizieren):**
- `meeting-inspektor.html:404–405` – Button + `<input accept=".csv,.tsv,.txt">`
- `meeting-inspektor.html:392` – Label/Upload-Bereich
- `meeting-inspektor.html:1298–1307` – `handleFileDrop` (kein Typ-Check)

## Gewünschtes Verhalten

In beiden File-Handlern (Input-Dialog und Drag & Drop) sollen `.txt`, `.csv`, `.tsv`
konsistent erlaubt sein.

## Vorgeschlagene Lösung (aus dem Issue übernommen)

1. `accept`-Attribut am `<input>` gegen tatsächliches macOS-Verhalten testen (Button- vs.
   Label-Auslöser)
2. In `handleFileDrop` einen expliziten Typ-Check gegen die Dateiendungen `.csv`, `.tsv`,
   `.txt` (bzw. MIME-Types `text/csv`, `text/tab-separated-values`, `text/plain`) ergänzen

## Akzeptanzkriterien

- [ ] Button und Klick auf Upload-Bereich zeigen identisches Dateityp-Filterverhalten
- [ ] Drag & Drop akzeptiert nur `.csv`/`.tsv`/`.txt`, lehnt andere Typen sichtbar ab
- [ ] Getestet in Safari und Chrome (macOS, Apple Silicon)
