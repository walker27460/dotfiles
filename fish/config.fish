if status is-interactive
    # Commands to run in interactive sessions can go here
end

if ! functions -q fisher
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
end

function setup
    xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
end

fish_add_path /opt/homebrew/bin

function ide
    tmux split-window -v -l 30%
    tmux split-window -h -l 66%
    tmux split-window -h -l 50%
end

set -x SSH_AUTH_SOCK /Users/walker27460/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
alias md="mkdir -p"
