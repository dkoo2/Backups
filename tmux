set -g prefix C-s
unbind C-b
bind C-s send-prefix

set -g mouse on

bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

bind _ split-window -h
bind - split-window -v

bind-key & kill-window
bind-key x kill-pane

set-option -g history-limit 10000
unbind '"'
unbind %

#set-option destroy-unattached

set-option -g default-command "reattach-to-user-namespace -l bash"
bind-key -T copy-mode 'Enter' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"


set -g status-position bottom
set -g status-bg colour234
set -g status-fg colour137
set -g status-attr dim
set -g status-left ''
set -g status-right '#[fg=colour233,bg=colour245,bold] %m/%d/%y #[fg=colour233,bg=colour245,bold] %H:%M:%S '
set -g status-right-length 50
set -g status-left-length 20

setw -g window-status-current-fg colour232
setw -g window-status-current-bg colour245
setw -g window-status-current-attr bold
setw -g window-status-current-format ' #I#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '
#set -g window-status-separator ""

set -g window-status-activity-bg colour245
set -g window-status-activity-fg colour233

setw -g window-status-fg colour138
setw -g window-status-bg colour235
setw -g window-status-attr none
setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-attr bold
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
