#!/bin/bash
PROJECT_NAME=tictactoe
VALAC_PARAMS="$* --enable-checking --enable-experimental-non-null --thread"

echo "valac $VALAC_PARAMS -o build/$PROJECT_NAME *.vala"
valac --version

mkdir -p build/
valac $VALAC_PARAMS -o build/$PROJECT_NAME *.vala
