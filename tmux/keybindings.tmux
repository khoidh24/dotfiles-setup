# action key
unbind C-b
set-option -g prefix C-t
set-option -g repeat-time 0
set-option -g focus-events on

#### Key bindings

set-window-option -g mode-keys vi

#bind t send-key C-t
# Reload settings
bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded!"
# Open current directory
bind o run-shell "open #{pane_current_path}"
bind -r e kill-pane -a

# vim-like pane switching
bind -r k select-pane -U 
bind -r j select-pane -D 
bind -r h select-pane -L 
bind -r l select-pane -R 

# Moving window
bind-key -n C-S-Left previous-window
bind-key -n C-S-Right next-window

# Resizing pane
bind -r C-k resize-pane -U 5
bind -r C-j resize-pane -D 5
bind -r C-h resize-pane -L 5
bind -r C-l resize-pane -R 5
