set -g fish_greeting
set -U EDITOR nvim

starship init fish | source

source ~/.config/fish/paths.fish

if status is-interactive
end

function fish_user_key_bindings
  bind -M insert \cf tmux-sessionizer
end

function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function vim
  nvim $argv
end

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
