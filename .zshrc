# starship
eval "$(starship init zsh)"

# Java
export JAVA_HOME="/opt/homebrew/opt/openjdk@24"
export PATH=$JAVA_HOME/bin:$PATH

# Haskell
[ -f "/Users/nakayaryo/.ghcup/env" ] && . "/Users/nakayaryo/.ghcup/env" # ghcup-env
export PATH="$HOME/.local/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"
