set -g default-terminal 'screen-256color'

set -s escape-time 0

set -g prefix2 C-s
bind-key C-b send-prefix
bind-key C-s send-prefix -2

set -g base-index 1
set-window-option -g pane-base-index 1
set -g renumber-windows on

setw -g mode-keys vi
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

set -g status-bg '#666666'
set -g status-fg '#aaaaaa'

set -g mouse on
