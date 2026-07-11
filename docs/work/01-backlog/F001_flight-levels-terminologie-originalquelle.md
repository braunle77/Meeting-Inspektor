# F001 – Flight-Levels-Tab quellentreu nach Klaus Leopold neu aufbauen

**Status:** Backlog – gegrillt und spezifiziert, bereit für Review
**Quelle:** Leiv, 10./11.07.2026 · Entscheidung: quellentreuer Neuaufbau (nicht minimale Reparatur)
**Referenz:** `docs/research/flight-levels-originalquelle.md` (verbindlich) · Glossar

## Worum es geht

Der Flight-Levels-Tab entstand aus einer KI-Recherche ohne Quellentreue. Er wird um die
Original-Diagnostik des Modells herum neu aufgebaut: Konzepte, Schule und Methodik 1:1
nach Leopold/Kaltenecker. Tool-eigene Auswertungen sind zulässig, wenn ehrlich als solche
gekennzeichnet („Tool-Beobachtung, keine Flight-Levels-Aussage").

## Ziel-Struktur des Tabs

Rahmen: die drei Levels mit ihrer **offiziellen Leitfrage** (FL1 "Are you working
effectively on the right things?" · FL2 "How do teams work together toward common
goals?" · FL3 "Are you turning strategy into real-world results?").

| Alt (F1–F5, Kacheln, Q1–Q3) | Neu |
|---|---|
| F1 Pyramide + Norm „FL1 > FL2 > FL3 optimal" | Verteilung je Level bleibt als Visualisierung; **Norm-Wertung entfällt** (Modell ist explizit kein Mengen-/Hierarchie-Modell). Klickbare Meeting-Liste je Level bleibt. |
| F2 FL2-Verbindungsmatrix („Koordinations-Silos") | Bleibt, umbenannt: zeigt, welche Abteilungspaare über FL2-Interaktionen verbunden sind – Anker: FL2 visualisiert den Wertstrom. Kennzeichnung: Tool-Beobachtung. |
| F3 Wirkungsgrad je Ebene + „Koordinationstheater" | Bleibt, neuer Anker: **„result-neutral" meetings** (Originalbegriff). „Koordinationstheater" entfällt ersatzlos. |
| F4 Brückenkopf-Heatmap + Kachel „Brückenkopf-Personen" | Reframing als **People-as-Routers-Diagnose** (Original-Anti-Pattern: „Stop using people as routers – information flows through the boards"): zeigt Personen, über die viel ebenenübergreifender Informationsfluss läuft, als Hinweis auf Board-/Systemlücken. Funktionsname `_renderFLBrueckenkoepfe` wird umbenannt. |
| F5 Frequenz-Level-Matrix + „Frequenz-Mismatches" | **Entfällt als Mismatch-Wertung** (Modell verweigert Rhythmus-Vorgaben). Ersatz: neutrale Rhythmus-Übersicht je Level als gekennzeichnete Tool-Beobachtung, ohne „passt/passt nicht". `FL_MISMATCH`-Konstante entfällt. |
| Kachel 2 „Rollentrennung" (Person auf allen 3 Ebenen) | Bleibt inhaltlich (modellnah zum Router-Anti-Pattern), Formulierung ohne erfundenes Vokabular. |
| Q3 „keine Brückenkopf-Personen = Fragmentierung" | **Entfällt** – widerspricht dem Modell (Ebenen verbindet die Systemarchitektur: Boards, Flight Items, Flight Routes – nicht Personen). |
| Tab-Briefing (was/achten/folgefragen) | Neu geschrieben aus dem Recherche-Report: fünf Kernaktivitäten, vier Schlüsselfragen, Leitfragen je Level. |
| Auto-Klassifikation über Abteilungstypen | Bleibt als Heuristik, wird in UI-Text als tool-eigene Zuordnungshilfe gekennzeichnet. |

## Leitplanken

- Referenz-Report ist bindend; bei Konflikt gewinnt die Originalquelle
- Glossar aktualisieren, wo neue Begriffe entstehen (z.B. result-neutral)
- ADR 0002 (Safari-Regeln, Block-Struktur), ADR 0003 (diagnostizieren, nicht reparieren)
- Status- vs. Identitätsfarben strikt trennen (FL-Farben sind Identität)
- Branch-Workflow: feat-Branch + PR, kein Direkt-Commit auf main

## Akzeptanzkriterien

- [ ] Kein „Brückenkopf", kein „Koordinationstheater", keine Rhythmus-Mismatch-Wertung,
      keine Pyramiden-Norm mehr – weder in UI-Texten noch in Bezeichnern
- [ ] Jede fachliche Aussage im Tab ist quellenbelegt (Report) oder sichtbar als
      Tool-Beobachtung gekennzeichnet
- [ ] Leitfragen je Level und „result-neutral" stammen wörtlich/sinngetreu aus der Quelle
- [ ] Q3 entfernt; Widerspruch Kachel 2 vs. Q3 damit aufgelöst
- [ ] Glossar und Report bleiben konsistent zum Tab
