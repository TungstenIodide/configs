# .bashrc

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
