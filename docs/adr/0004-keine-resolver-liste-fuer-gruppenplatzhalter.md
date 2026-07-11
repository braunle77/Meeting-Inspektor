# Keine Resolver-Liste für Gruppenplatzhalter

Gruppenplatzhalter (Teilnehmer-Einträge wie „alle Teamleiter", die keine Einzelperson
bezeichnen) werden diagnostiziert, aber bewusst nicht in Einzelpersonen aufgelöst. Eine
Resolver-Liste (Gruppe → Personen) existierte bereits und wurde wieder entfernt: die
Auflösungsdaten lebten nur in der Tool-Konfiguration statt in der Urliste (Verstoß gegen
ADR 0003), mussten parallel gepflegt werden und erzeugten Scheingenauigkeit in den
Personenanalysen. Einzige verbleibende Option ist der Toggle „Variable Rolle – aus
Personenanalyse ausschließen".

## Konsequenzen

- Wer echte Personen in den Analysen sehen will, trägt sie in der Urliste ein – der
  Gruppenplatzhalter-Hinweis (Impuls) fordert genau dazu auf.
- Vorschläge, die Auflösung „bequem im Tool" anzubieten, sind ein bekannter Irrweg –
  dieses ADR verhindert die zweite Runde.
