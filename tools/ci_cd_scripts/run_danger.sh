#!/bin/bash

# Перемещение в корневую директорию проекта
cd ../..

# Install FVM (correct URL)
curl -fsSL https://raw.githubusercontent.com/leoafarias/fvm/main/install.sh | bash
echo "$HOME/.pub-cache/bin" >> $GITHUB_PATH  # Add FVM to the PATH

fvm flutter analyze --write flutter_analyze_report.txt --no-fatal-infos

# Install dependencies
echo "Installing dependencies..."
bundle install

# Run Danger
echo "Running Danger..."
bundle exec danger

