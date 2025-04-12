#!/bin/bash

run_or_fail() {
  echo "▶ Running $1..."
  python "$1"
  status=$?
  if [ $status -ne 0 ]; then
    echo "❌ $1 failed with exit code $status"
    exit $status
  fi
  echo "✅ $1 completed successfully"
}

run_or_fail main.py
run_or_fail main2.py
