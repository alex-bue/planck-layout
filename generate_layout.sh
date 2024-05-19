#!/bin/bash

# Define variables
KEYBOARD="planck/ez/glow"
KEYMAP="alex-bue"
KEYMAP_C="keymap/keymap.c"

CONFIG_FILE="keymap_drawer.config.yaml"
LAYERS="BASE RAISE LOWER NAV ADJUST"
OUTPUT_FILE="assets/layout.svg"

# Convert keymap.c to JSON and pipe it directly to the next command
./qmk.sh c2json "$KEYMAP_C" -kb "$KEYBOARD" -km "$KEYMAP" | \
poetry run keymap -c "$CONFIG_FILE" parse -l $LAYERS -c 12 -q - | \
poetry run keymap -c "$CONFIG_FILE" draw -o "$OUTPUT_FILE" /dev/stdin
