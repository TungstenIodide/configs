if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a hx "helix"
abbr -a enter "distrobox-enter"
abbr -a pkg "sudo transactional-update pkg"
abbr -a exp "export (cat .env |xargs -L 1)"

fish_ssh_agent
