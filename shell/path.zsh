# Make PATH unique.
typeset -U path PATH

path=(
  "$HOME/dotfiles/bin"
  "$HOME/.composer/vendor/bin"
  $path
)

export PATH