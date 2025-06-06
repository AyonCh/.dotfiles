set -g fish_greeting
set -U EDITOR nvim

if status is-interactive
end

function fish_user_key_bindings
  bind -M insert \cf tmux-sessionizer
end

function vim
  nvim $argv
end

eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
