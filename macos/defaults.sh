#!/usr/bin/env bash

set -euo pipefail

main() {
    "$(dirname "$0")/finder.sh"
    "$(dirname "$0")/dock.sh"
    "$(dirname "$0")/trackpad.sh"
}

main