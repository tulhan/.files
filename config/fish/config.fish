umask 077 # WSL: Default umask is not applied (github:Microsoft/WSL/issues/352)

set -x PATH $PATH ~/bin

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
