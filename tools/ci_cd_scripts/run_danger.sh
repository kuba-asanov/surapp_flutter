#!/bin/bash
set -e

# Вывод текущей директории
echo "Текущая директория: $(pwd)"

fvm flutter analyze --write flutter_analyze_report.txt --no-fatal-infos

# Run Danger
echo "Running Danger..."
bundle exec danger --fail-on-errors=true

