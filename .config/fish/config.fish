if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a hx "helix"
abbr -a e "helix"
abbr -a o "xdg-open"
abbr -a enter "distrobox-enter"
abbr -a der "distrobox-enter rust"
abbr -a dea "distrobox-enter arch"
abbr -a pkg "sudo transactional-update pkg"
abbr -a exp "export (cat .env |xargs -L 1)"
abbr -a gcm "git commit -m"

setenv EDITOR helix

fish_add_path -aP ~/.local/bin

fish_ssh_agent
