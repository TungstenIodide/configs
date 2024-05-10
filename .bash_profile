# Launch Fish if interactive and Fish is not a parent process
if [[ $- == *i* && -f /usr/bin/fish && $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
  shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
  exec fish # $LOGIN_OPTION
fi

