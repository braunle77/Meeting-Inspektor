#!/bin/bash
# Meeting Strukturanalyse – Pipeline starten
# Aufruf: ./start.sh /pfad/zur/datei.xlsx
#         ./start.sh /pfad/zur/datei.csv --confluence

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INPUT="$1"

if [ -z "$INPUT" ]; then
    echo "❌  Eingabedatei fehlt."
    echo "    Aufruf: ./start.sh /pfad/zur/datei.xlsx"
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "❌  Datei nicht gefunden: $INPUT"
    exit 1
fi

echo "🔍  Prüfe Python-Abhängigkeiten..."
python3 -c "import pandas, openpyxl, networkx, plotly" 2>/dev/null || {
    echo "📦  Installiere fehlende Pakete..."
    python3 -m pip install pandas openpyxl networkx plotly --quiet
}

echo "🧹  Daten bereinigen..."
python3 "$SCRIPT_DIR/daten_bereinigen.py" --input "$INPUT" "${@:2}"

echo "📊  Dashboard erstellen..."
python3 "$SCRIPT_DIR/dashboard_erstellen.py"

echo "🌐  Dashboard öffnen..."
open "$SCRIPT_DIR/meeting_strukturanalyse.html"

echo "✅  Fertig."
