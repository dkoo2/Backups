
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH=$PATH:/Users/dhkoo/bin

source '/Users/dhkoo/lib/azure-cli/az.completion'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dhkoo/google-cloud-sdk/path.bash.inc' ]; then source '/Users/dhkoo/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dhkoo/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/dhkoo/google-cloud-sdk/completion.bash.inc'; fi

##
# Your previous /Users/dhkoo/.bash_profile file was backed up as /Users/dhkoo/.bash_profile.macports-saved_2018-01-23_at_09:48:15
##

# MacPorts Installer addition on 2018-01-23_at_09:48:15: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export TERM="xterm-color" 
export PS1='\[\e[1;32m\]\u\[\e[00m\]@\[\e[2;36m\]\h\[\e[0m\]:\[\e[0;33m\]\w\[\e[0m\]\$ '

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

alias ls="ls -G"

