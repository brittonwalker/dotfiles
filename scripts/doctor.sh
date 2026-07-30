#!/usr/bin/env bash

check_command() {
	local label="$1"
	local command_name="$2"
	local version_command="$3"

	local version

	if command -v "$command_name" >/dev/null 2>&1; then
		version=$(eval "$version_command")
		printf "✅ %-20s %s\n" "$label" "$version"
	else
		printf "❌ %-20s %s\n" "$label" "not found"
	fi
}

main() {
  check_command "Git" git "git --version | cut -d' ' -f3"
	check_command "Homebrew" brew "brew --version | head -n1 | cut -d' ' -f2"
	check_command "Node.js" node "node --version"
	check_command "PHP" php "php --version | head -n1 | cut -d' ' -f2"
	check_command "tktk" tktk "tktk --version"
}

main
