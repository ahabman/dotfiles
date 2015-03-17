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
alias s="subl"
alias v="vim"

# SHELL LINE BREAK
# if [ -a ~/dotfiles/git-aware-prompt ]
# then
#   export GITAWAREPROMPT=~/dotfiles/git-aware-prompt
#   source $GITAWAREPROMPT/main.sh
#   export PS1="\n\u:\W\[$txtcyn\]\$git_branch\[$txtylw\]\$git_dirty\[$txtrst\]\$ "
# else
#   export PS1='\n\u:\W\$ '
# fi

alias gti="git"
alias gaa="git add -A"
alias gau="git add -u"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias gco="git checkout"
alias gb="git branch"
alias gd="git diff"
alias git-show-files="git show --pretty=\"format:\" --name-only "
alias gk="gitk --all"
alias gl="git log"
alias gm="git mergetool -t opendiff "
alias gp="git push origin master"
alias gr="git remote -v"
alias gs="git status"
alias gld="/usr/local/bin/git-log-date-commits.rb"
alias gitlogcolor="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glc="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph"
alias gls="git log --stat"


# FUNCTIONS
function mkcd(){ dir="$*"; mkdir -p "$dir" && cd "$dir";}
function psgrep(){ ps axu | grep -v grep | grep "$@" -i --color=auto; }
function fname(){ find . -iname "*$@*"; }


# RAILS
alias rdbm="rake db:migrate"
alias rdbr="rake db:rollback"
alias rr="bundle exec rake routes"
alias rrg="bundle exec rake routes | grep"


# source ~/.git-prompt.sh
source /usr/local/Cellar/z/1.8/etc/profile.d/z.sh

# OSX
# export EDITOR='subl -w'
alias clipboard="pbcopy"
alias s="subl"
alias sub="subl"
alias md="/usr/local/Markdown.pl"


# MACBOOK PRO
# source ~/git-completion.bash
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
