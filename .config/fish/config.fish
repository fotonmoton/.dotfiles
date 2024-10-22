set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim

fx --comp fish | source

zoxide init fish | source

fzf --fish | source
