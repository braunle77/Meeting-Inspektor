# Eine einzige HTML-Datei, kein Build, kein Server

Das Tool dient als Gesprächsgrundlage für Management-Reviews beim Kunden; Nutzer sind
Nicht-Techniker ohne Installationsrechte, und die Quelldaten (echte Org-Struktur) dürfen
das Gerät nicht verlassen. Deshalb ist der Meeting-Inspektor eine einzige HTML-Datei
(`meeting-inspektor.html`, Vanilla JS): Download per Browser, Doppelklick, fertig – kein
Build-Prozess, kein Server, keine Datenübertragung. Der Preis ist eine große Einzeldatei
(~5300 Zeilen) ohne Modul- und Testinfrastruktur; Struktur entsteht stattdessen durch
disziplinierte Helfer-Funktionen und die dokumentierte Block-Struktur (ADR 0002).

## Konsequenzen

- Plotly und D3 werden per CDN geladen – beim ersten Öffnen ist Internet nötig, danach
  greift der Browser-Cache. „Vollständig offline-fähig" (README/CLAUDE.md) stimmt daher
  nur eingeschränkt; Einbetten der Bibliotheken würde die Datei um mehrere MB vergrößern.
- Konfiguration lebt im `localStorage` des Browsers, nicht in Dateien.
- Verteilung neuer Versionen = neue Datei herunterladen (Prüfanker: `APP_VERSION`).
