umask 077 # WSL: Default umask is not applied (github:Microsoft/WSL/issues/352)

set -x PATH $PATH ~/bin
set -x SHELL (which fish)

# github:danhper/fish-ssh-agent
if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    __ssh_agent_start
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# THEME PURE #
set fish_function_path /home/nannangar/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /home/nannangar/.config/fish/functions/theme-pure/conf.d/pure.fish
