set -g prefix `
unbind C-b
bind ` send-prefix

set -g mouse on

bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

bind _ split-window -h
bind - split-window -v

bind-key & kill-window
bind-key x kill-pane

set-option -g history-limit 20000
unbind '"'
unbind %

set-option -g default-command "reattach-to-user-namespace -l bash"
bind-key -T copy-mode 'Enter' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

set -g status-position bottom
set -g status-bg colour8
set -g status-fg colour137
set -g status-attr dim
set -g status-left ''
set -g status-right '#[fg=colour233,bg=colour15,bold] %m/%d/%y #[fg=colour233,bg=colour245,bold] %H:%M:%S '
set -g status-right-length 50
set -g status-left-length 20

setw -g window-status-current-fg colour232
setw -g window-status-current-bg colour245
setw -g window-status-current-attr bold
setw -g window-status-current-format ' #I#[fg=colour233]:#[fg=colour233]#W#[fg=colour50]#F '

setw -g window-status-activity-bg colour245
setw -g window-status-activity-fg colour248
#set -g window-status-activity-fg colour233

#setw -g window-status-fg colour138
setw -g window-status-fg colour250
setw -g window-status-bg colour238
setw -g window-status-attr none
setw -g window-status-format ' #I#[fg=colour250]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-attr bold
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
