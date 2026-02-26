#!/usr/bin/env bash
set -euo pipefail

errors=0

for file in src/data/charts/*.md; do
  img=$(grep '^img:' "$file" | sed 's/^img: *//; s/^"//; s/"$//')
  if [ -z "$img" ]; then
    echo "WARN: no img field in $file"
    continue
  fi
  # img paths start with /, map to public/
  local_path="public${img}"
  if [ ! -f "$local_path" ]; then
    echo "ERROR: $file references $img but $local_path does not exist"
    errors=$((errors + 1))
  fi
done

if [ "$errors" -gt 0 ]; then
  echo "Found $errors missing image(s)"
  exit 1
fi

echo "All chart images exist"
