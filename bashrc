# SHELL
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias d="docker"
alias gti="git"
alias l="ls -alp"
alias l1="ls -1p"
alias ll="ls -lp"
alias lal="ls -alp"
alias myip="ifconfig | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"
alias p="pwd"
alias v="vim"

# SHELL LINE BREAK
# export PS1='\n\u:\W\$ '
export PS1='\n\u:\W$(__git_ps1 " (%s)")\$ '

# GIT
=======
source ~/.git-completion.bash
alias gaa="git add -A"
alias gau="git add -u"
alias gb="git branch"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gfa="git fetch --all"
alias git-show-files="git show --pretty=\"format:\" --name-only "
alias gitlogcolor="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gk="gitk --all"
alias gl="git log"
alias glc="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gld="/usr/local/bin/git-log-date-commits.rb"
alias glg="git log --graph"
alias gls="git log --stat"
alias gm="git mergetool -t opendiff "
alias gp="git push origin master"
alias gr="git remote -v"
alias grom="git rebase origin/master"
alias gs="git status"
alias gld="/usr/local/bin/git-log-date-commits.rb"
alias gitlogcolor="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glc="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph"
alias gls="git log --stat"
alias gld="git log --pretty=format:\"%h%x09%an%x09%ad%x09%s\""

# FUNCTIONS
function mkcd(){ dir="$*"; mkdir -p "$dir" && cd "$dir";}
function psgrep(){ ps axu | grep -v grep | grep "$@" -i --color=auto; }
function fname(){ find . -iname "*$@*"; }


# RAILS
alias rdbm="rake db:migrate"
alias rdbr="rake db:rollback"
alias rr="bundle exec rake routes"
alias rrg="bundle exec rake routes | grep"

source ~/.git-prompt.sh
source ~/z/z.sh

