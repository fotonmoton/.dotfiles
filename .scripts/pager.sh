#!/bin/bash
set -eu

INPUT_LINE_NUMBER=${1:-0}
CURSOR_LINE=${2:-1}
CURSOR_COLUMN=${3:-1}

nvim -u NORC \
  -c "map q :qa!<CR>" \
  -c "terminal cat "<(cat)" - " \
  -c "map i <Nop>" \
  -c "set clipboard+=unnamedplus nonumber nolist showtabline=0 foldcolumn=0 laststatus=0" \
  -c "call cursor($CURSOR_LINE, $CURSOR_COLUMN)"

