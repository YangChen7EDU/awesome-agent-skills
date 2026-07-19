#!/usr/bin/env bash
#
# roll.sh - Roll one or more dice with a given number of sides.
#
# Usage:
#   ./roll.sh [sides] [count]
#
# Arguments:
#   sides   Number of sides on each die (default: 6)
#   count   Number of dice to roll (default: 1)
#
# Examples:
#   ./roll.sh          # roll one d6
#   ./roll.sh 20       # roll one d20
#   ./roll.sh 6 3      # roll three d6 and show the total

set -euo pipefail

sides="${1:-6}"
count="${2:-1}"

# Validate inputs are positive integers.
if ! [[ "$sides" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: sides must be a positive integer (got '$sides')." >&2
  exit 1
fi
if ! [[ "$count" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: count must be a positive integer (got '$count')." >&2
  exit 1
fi

total=0
rolls=()

for ((i = 0; i < count; i++)); do
  roll=$(( RANDOM % sides + 1 ))
  rolls+=("$roll")
  total=$(( total + roll ))
done

if (( count == 1 )); then
  echo "Rolled 1d${sides}: ${rolls[0]}"
else
  echo "Rolled ${count}d${sides}: ${rolls[*]} (total: ${total})"
fi
