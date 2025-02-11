#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Run tests, output results to a file and the console, and capture errors
{ fvm flutter test 2>&1 | tee flutter_test_report.txt; } 2>&1
if [ "${PIPESTATUS[0]}" -ne 0 ]; then
  echo "Произошла ошибка в тестах"
  exit 1
fi
