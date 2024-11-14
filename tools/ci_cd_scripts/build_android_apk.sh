#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the project root directory
cd ../..

# Build the Android QA version
fvm flutter build apk


