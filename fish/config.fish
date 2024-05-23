if status is-interactive
    # Commands to run in interactive sessions can go here
end

if ! functions -q fisher
  curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
end

fish_add_path /opt/homebrew/bin

