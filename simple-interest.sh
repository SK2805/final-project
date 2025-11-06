#!/usr/bin/env bash
# simple-interest.sh
# Usage: ./simple-interest.sh principal rate(%) years
P=$1
R=$2
T=$3

if [ -z "$P" ] || [ -z "$R" ] || [ -z "$T" ]; then
  echo "Usage: $0 principal rate(%) years"
  exit 1
fi

# compute simple interest: (P * R * T) / 100
SI=$(awk "BEGIN {printf \"%.2f\", ($P * $R * $T) / 100}")
echo "Simple Interest: $SI"
