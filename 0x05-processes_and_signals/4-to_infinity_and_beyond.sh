#!/usr/bin/env bash
# Display "To infinity and beyond" indefinitely with a 2-second delay
trap 'echo "Terminated"; exit' INT

while true; do
    echo "To infinity and beyond"
    sleep 2
done
