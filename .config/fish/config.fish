if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a e hx
abbr -a o xdg-open
abbr -a de distrobox-enter
abbr -a der "distrobox-enter rust"
abbr -a dea "distrobox-enter arch"
abbr -a pkg "sudo transactional-update pkg"
abbr -a exp "export (cat .env |xargs -L 1)"
abbr -a gcm "git commit -m"

setenv EDITOR hx

fish_add_path -aP ~/.local/bin

fish_ssh_agent

if type -q starship
    starship init fish | source
end
