set -g fish_greeting
starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
	bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
