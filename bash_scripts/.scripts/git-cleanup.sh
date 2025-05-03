#!/bin/bash

PROTECTED_BRANCH="main"

echo "Switching to $PROTECTED_BRANCH..."
git checkout "$PROTECTED_BRANCH" >/dev/null 2>&1 || exit 1

git pull --ff-only 2>/dev/null
echo

echo "Fetching and pruning remotes..."
git fetch --all --prune
echo

echo "Finding all local branches except '$PROTECTED_BRANCH'..."
BRANCHES=$(git for-each-ref --format='%(refname:short)' refs/heads/ | grep -v "^$PROTECTED_BRANCH$")

if [ -z "$BRANCHES" ]; then
  echo "✅ No branches to delete."
  exit 0
fi

echo
echo "WARNING: This will delete the following local branches whether or not they are merged:"
echo "$BRANCHES" | sed 's/^/  /'
echo

read -p "Delete these branches? (y/N): " CONFIRM
if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
  echo
  echo "$BRANCHES" | while read BRANCH; do
    echo "🗑 Deleting '$BRANCH'..."
    git branch -D "$BRANCH"
  done
  echo
  echo "🔥 Cleanup complete."
else
  echo "❌ No branches deleted."
fi
