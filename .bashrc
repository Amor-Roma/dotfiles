
export PATH=$PATH:/Users/chrisroma/wa-devenv/deploy/
export PATH=$PATH:/Users/chrisroma/wa-devenv/deploy/deploy/
export C_INCLUDE_PATH=/usr/local/Cellar/unixodbc/2.3.4/include

# extract files eg: ex tarball.tar#
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1    ;;
      *.tar.gz)    tar xzf $1    ;;
      *.bz2)       bunzip2 $1    ;;
      *.rar)       rar x $1      ;;
      *.gz)        gunzip $1     ;;
      *.tar)       tar xf $1     ;;
      *.tbz2)      tar xjf $1    ;;
      *.tgz)       tar xzf $1    ;;
      *.zip)       unzip $1      ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7z x $1       ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# alias's
alias ls='ls -lahFG' # print a more detailed list
alias cd..='cd ..' # eliminate cd typo error
alias dt='date "+%F %T"' #print date and time in 12 hour format
alias rabbit='rabbitmq-server -detached' # start the rabbit mq server in the background
alias dcsh='docker-compose exec app bash' # Docker bash shell
alias dc='docker-compose'

# record command history with date and time
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo `dt` `pwd` $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
