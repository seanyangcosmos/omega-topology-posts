#!/bin/bash
set -e

SRC="$HOME/.openclaw/workspace/omega_infinity/posts"
DST="$HOME/omega-topology-posts"
TODAY=$(date +%F)

cd "$DST"

cp "$SRC/bluesky_today.txt" .
cp "$SRC/x_today.txt" .
cp "$SRC/medium_today.md" .
cp "$SRC/substack_today.md" .

cp "$SRC/bluesky_today.txt" "bluesky_$TODAY.txt"
cp "$SRC/x_today.txt" "x_$TODAY.txt"
cp "$SRC/medium_today.md" "medium_$TODAY.md"
cp "$SRC/substack_today.md" "substack_$TODAY.md"

git add .

if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

git commit -m "Update topology posts $TODAY"
git push
