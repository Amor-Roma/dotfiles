
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/chrisroma/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/chrisroma/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/chrisroma/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/chrisroma/google-cloud-sdk/completion.bash.inc'
fi

# this will give a warning if the file doesn't exist
. ~/.bashrc

# terminal colors and apperance
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced

# write a function to compute the current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"
}

# set the PS1 variable
PS1="\u🐠 \h: \w\[\e[0;36;49m\]\$(parse_git_branch)\[\e[0;0m\]$ "

# Sublime Text stuff
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'
export PATH="/usr/local/bin:$PATH"
