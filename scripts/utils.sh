#!/usr/bin/env bash

run_step() {
    local icon="$1"
    local name="$2"
    local script="$3"

    log_step "$icon" "$name"

    "$script"
}

log_step() {
    printf "\n%s %s...\n" "$1" "$2"
}

log_success() {
    printf "✅ %s\n" "$1"
}

log_error() {
    printf "❌ %s\n" "$1"
}

log_warning() {
    printf "⚠️  %s\n" "$1"
}