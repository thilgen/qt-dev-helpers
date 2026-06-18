#!/bin/bash

quickture_dirs=(
  "image_builds"
  "Quickture"
  "quickture_account_service"
  "quickture_admin"
  "quickture_diarization_service"
  "quickture_knowledge"
  "quickture_pyannote"
  "quickture_terraform"
  "quickture_web"
  "table_read"
)

echo
for quickture_dir in "${quickture_dirs[@]}"; do
    echo "Updating main: $quickture_dir"
    cd "$quickture_dir"
    git checkout main
    git fetch origin
    git pull
    echo
    cd ..
done
