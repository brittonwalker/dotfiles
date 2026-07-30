# Britton's Dotfiles

My personal development environment for macOS.

The goal is to keep my machine reproducible, understandable, and easy to evolve over time.

## Philosophy

- Keep the shell minimal.
- One responsibility per file.
- Prefer native tooling over heavy frameworks.
- Symlink configuration instead of copying files.
- Every installed tool should have a purpose.
- Automate repetitive setup, not everyday work.

## Getting Started

Clone the repository:

```sh
git clone git@github.com:brittonhayes/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

Install Homebrew packages:

```sh
brew bundle
```

Run the bootstrap script:

```sh
./install.sh
```

## Repository Structure

```
dotfiles/
├── shell/        # Shell configuration (zsh, aliases, functions, exports)
├── git/          # Git configuration
├── config/       # Application configs
├── bin/          # Personal CLI commands
├── Brewfile      # Homebrew packages
└── install.sh    # Bootstrap script
```

## Homebrew

This repository uses a `Brewfile` to declare installed packages.

To regenerate it after intentionally adding or removing software:

```sh
brew bundle dump --file="$HOME/dotfiles/Brewfile" --force
```

Review the changes before committing.

## Core Tools

These are the tools I use most often:

- Homebrew
- Git
- Starship
- zoxide
- fzf
- eza
- bat
- fd
- ripgrep
- Docker
- Laravel Valet
- Mailpit
- Node.js (NVM for now, `mise` planned)

## Future Ideas

- `dotfiles doctor`
- `dotfiles update`
- Migrate Node.js management from NVM to `mise`
