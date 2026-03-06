#!/bin/bash

set -euo pipefail

GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'

# Get script directory (macOS compatible, resolves symlinks)
SCRIPT_PATH="${BASH_SOURCE[0]}"
while [ -L "$SCRIPT_PATH" ]; do
  SCRIPT_DIR="$(cd "$(dirname "$SCRIPT_PATH")" && pwd)"
  SCRIPT_PATH="$(readlink "$SCRIPT_PATH")"
  # If symlink target is relative, make it absolute
  [[ $SCRIPT_PATH != /* ]] && SCRIPT_PATH="$SCRIPT_DIR/$SCRIPT_PATH"
done
SCRIPT_DIR="$(cd "$(dirname "$SCRIPT_PATH")" && pwd)"
TEMPLATE_DIR="$SCRIPT_DIR/template"

if [ -z "${1:-}" ]; then
  NOTE_NAME="note"
  echo -e "${CYAN}No name provided. Using default: '${NOTE_NAME}'${NC}"
else
  NOTE_NAME="$1"
fi

if [ -d "$NOTE_NAME" ]; then
  echo -e "${RED}Error:${NC} Directory '${CYAN}$NOTE_NAME${NC}' already exists"
  exit 1
fi

if [ ! -d "$TEMPLATE_DIR" ]; then
  echo -e "${RED}Error:${NC} Template directory not found at ${CYAN}$TEMPLATE_DIR${NC}"
  exit 1
fi

if ! cp -r "$TEMPLATE_DIR" "$NOTE_NAME"; then
  echo -e "${RED}Error:${NC} Failed to copy template"
  exit 1
fi

# Replace note.md and note.pdf with the user-specified name in Makefile
if ! sed -i '' "s/note\.md/${NOTE_NAME}.md/g; s/note\.pdf/${NOTE_NAME}.pdf/g" "$NOTE_NAME/Makefile"; then
  echo -e "${RED}Error:${NC} Failed to update Makefile"
  exit 1
fi

# Rename the template files to match the user-specified name
if [ -f "$NOTE_NAME/note.md" ]; then
  if ! mv "$NOTE_NAME/note.md" "$NOTE_NAME/${NOTE_NAME}.md"; then
    echo -e "${RED}Error:${NC} Failed to rename note.md"
    exit 1
  fi
fi

if [ -f "$NOTE_NAME/note.pdf" ]; then
  if ! mv "$NOTE_NAME/note.pdf" "$NOTE_NAME/${NOTE_NAME}.pdf"; then
    echo -e "${RED}Error:${NC} Failed to rename note.pdf"
    exit 1
  fi
fi

echo ""
echo -e "${GREEN}✓ Successfully created${NC} ${CYAN}$NOTE_NAME${NC}"
echo ""
echo -e "Next steps:"
echo -e "  ${CYAN}cd $NOTE_NAME${NC}"
echo -e "  ${CYAN}make pdf${NC}"
