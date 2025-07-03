#!/bin/bash

REPO_URL="https://github.com/meain/evil-textobj-tree-sitter.git"
LOCAL_DIR="./treesit-queries"
TEMP_DIR=$(mktemp -d)

git clone --depth 1 "$REPO_URL" "$TEMP_DIR"

mkdir -p "$LOCAL_DIR"

cp -r "$TEMP_DIR/treesit-queries/"* "$LOCAL_DIR/"

rm -rf "$TEMP_DIR"

echo "Folders copied to $LOCAL_DIR"
