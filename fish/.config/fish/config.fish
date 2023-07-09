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

alias fcd "cd ~ && cd (find * -type d ! -path '*/\.git/*' ! -path '*/node_modules/*' ! -path '*/\.github/*' ! -path '*/\.next/*' ! -path '*/__pycache__/*' | fzf --border rounded --margin 5% --padding 5% --color=fg:#c0caf5,bg:-1,hl:#bb9af7 \
	--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff \
	--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
	--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a,gutter:-1)"
