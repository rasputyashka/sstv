#!/bin/bash
set -e

YELLOW='\033[1;33m'
NC='\033[0m'

find_python() {
  if command -v python3 &>/dev/null; then
    echo "python3"
  elif command -v python &>/dev/null; then
    echo "python"
  else
    echo ""
  fi
}

if command -v uv &>/dev/null; then
  echo "Using 'uv' to create and sync virtual environment..."
  uv venv && uv sync
  echo -e "${YELLOW}You may use 'uv run sstv' to run the script.${NC}"
else
  echo "'uv' not found. Falling back to python virtual environment setup..."
  PYTHON_EXEC=$(find_python)
  if [ -z "$PYTHON_EXEC" ]; then
    echo "Error: Python executable not found. Please install Python."
    exit 1
  fi

  $PYTHON_EXEC -m venv .venv
  . .venv/bin/activate
  pip install .
  echo -e "${YELLOW}You may use .venv/bin/sstv to run the script.${NC}"
  echo -e "${YELLOW}You may also call 'source .venv/bin/activate' to activate the virtual environment and then run 'sstv' directly.${NC}"
fi

echo "Installation successful."
