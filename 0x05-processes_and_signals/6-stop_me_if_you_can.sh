#!/usr/bin/env bash
# Display "To infinity and beyond" indefinitely with a 2-second delay
trap 'echo "I am invincible!!!"; exit' TERM

while true; do
    echo "To infinity and beyond"
    sleep 2
done
