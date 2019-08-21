umask 077 # WSL: Default umask is not applied (github:Microsoft/WSL/issues/352)

set -x PATH $PATH ~/.bin
set -x SHELL (which fish)

# https://wiki.archlinux.org/index.php/Fish#Evaluate_ssh-agent
eval (ssh-agent -c)

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# THEME PURE #
set fish_function_path /home/nannangar/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /home/nannangar/.config/fish/functions/theme-pure/conf.d/pure.fish
