#!/bin/bash

# Your previous setup here
ROOT_PATH="$(dirname "$(dirname "$(realpath "$0")")")/"
FILE_PATH="${ROOT_PATH}project.tjp"
OUTPUT_DIRECTORY="${ROOT_PATH}reports"
LOG_DIRECTORY="${ROOT_PATH}logs/log.log"

# Execute tj3 and redirect both stdout and stderr to the log file
tj3 "${FILE_PATH}" --output-dir "${OUTPUT_DIRECTORY}" &>> "${LOG_DIRECTORY}"

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "Command executed successfully." >> "${LOG_DIRECTORY}"
else
    echo "Command failed with exit code $?" >> "${LOG_DIRECTORY}"
fi
