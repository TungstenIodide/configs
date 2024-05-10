# .bashrc

# Make sure XDG dirs are set
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Cleanup homedir dotfiles
set -a && source $HOME/.config/xdg_basedir_fix.env && set +a

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin" ]]; then
    PATH="$PATH:$HOME/.local/bin:$HOME/bin"
fi
export PATH

# Launch Fish if interactive and Fish is not a parent process
if [[ $- == *i* && -f /usr/bin/fish && $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish $LOGIN_OPTION
fi
