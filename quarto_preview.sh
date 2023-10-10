#!/bin/bash

while true; do
    quarto preview --port 2345     # Replace with the actual command to run your program
    exit_code=$?

    if [ $exit_code -eq 0 ]; then
        echo "Program exited normally."
        break
    else
        echo "Program crashed with exit code $exit_code. Restarting..."
        sleep 1  # You can adjust the sleep time between restarts if needed
    fi
done
