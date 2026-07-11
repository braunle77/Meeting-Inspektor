# Das Tool diagnostiziert, es repariert nicht

Die Urliste ist die einzige Datenquelle (Single Source of Truth); sie gehört dem Nutzer
und wird ausschließlich dort gepflegt. Das Tool leitet ab und visualisiert – es korrigiert
keine Datenfehler, ergänzt keine fehlenden Werte und bietet keine Bearbeitung an
(„Alle Meetings" ist read-only). Stattdessen zeigt es Lücken als Impulse, damit der Nutzer
die Urliste selbst verbessert. Alternative wäre gewesen, Korrekturen im Tool zu erlauben –
dann drifteten Tool-Zustand und Urliste auseinander, und die Datenhoheit läge faktisch
beim Tool statt beim Nutzer.

## Konsequenzen

- Jedes Feature, das Daten „heilen" würde, widerspricht diesem ADR – bei Feature-Wünschen
  zuerst prüfen, ob stattdessen ein Diagnose-Hinweis (Impuls) die Antwort ist.
- Konfiguration (Abteilungszuordnung, Abteilungstypen, FK-Markierung) ist erlaubt: sie
  interpretiert die Daten, verändert sie aber nicht.
