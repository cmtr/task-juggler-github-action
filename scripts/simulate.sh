#!/bin/bash

# Correcting the definition of ROOT_PATH to accurately reflect the description
# Finds the current script's directory, moves one level up to its parent, then goes one more level up
ROOT_PATH="$(dirname "$(dirname "$(realpath "$0")")")/"
FILE_PATH="${ROOT_PATH}project.tjp"  # Fixed the variable reference

OUTPUT_DIRECTORY="${ROOT_PATH}reports"  # Closed the quotation mark

LOG_DIRECTORY="${ROOT_PATH}logs/log.log"  # Assuming 'logs' is the correct folder name

# Run tj3 with FILE_PATH and specify the OUTPUT_DIRECTORY, appending output to LOG_DIRECTORY
tj3 "${FILE_PATH}" --output-dir "${OUTPUT_DIRECTORY}" >> "${LOG_DIRECTORY}"
