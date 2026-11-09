#!/usr/bin/env bash
set -euo pipefail

read -r -p "Principal amount: " principal
read -r -p "Annual interest rate (%): " rate
read -r -p "Time period (years): " years

if ! awk -v value="$principal" 'BEGIN { exit !(value ~ /^[0-9]+([.][0-9]+)?$/ && value > 0) }'; then
  echo "Error: principal must be a positive number." >&2
  exit 1
fi
if ! awk -v value="$rate" 'BEGIN { exit !(value ~ /^[0-9]+([.][0-9]+)?$/ && value >= 0 && value <= 100) }'; then
  echo "Error: rate must be a number from 0 to 100." >&2
  exit 1
fi
if ! awk -v value="$years" 'BEGIN { exit !(value ~ /^[0-9]+([.][0-9]+)?$/ && value > 0) }'; then
  echo "Error: time must be a positive number of years." >&2
  exit 1
fi

awk -v principal="$principal" -v rate="$rate" -v years="$years" 'BEGIN {
  interest = principal * rate * years / 100
  printf "Simple interest: %.2f\nTotal amount: %.2f\n", interest, principal + interest
}'
