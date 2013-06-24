# SHELL
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias l="ls -al"
alias l1="ls -1"
alias ll="ls -l"
alias lal="ls -al"
alias myip="ifconfig | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"
alias v="vim"
if [ -a /Library/Python/2.7/site-packages/trash_cli* ]
then
	alias rm="trash-put"
	alias trash-restore="restore-trash"
fi

# SHELL LINE BREAK



if [ -a ~/dotfiles/git-aware-prompt ]
then
	export GITAWAREPROMPT=~/dotfiles/git-aware-prompt
	source $GITAWAREPROMPT/main.sh
	export PS1="\n\u:\W\[$txtcyn\]\$git_branch\[$txtylw\]\$git_dirty\[$txtrst\]\$ "
else
	export PS1='\n\u:\W\$ '
fi





# GIT
alias gaa="git add -A"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias gb="git branch"
alias gd="git diff"
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


# DRUPAL
alias d="drush -y "
alias ddth="drush -y dis devel_themer"
alias deth="drush -y en devel_themer"


# RVM
PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH



# MACBOOK BRANCH


# OSX
export EDITOR='subl -w'
alias clipboard="pbcopy"
alias s="subl"
alias sub="subl"


# MACBOOK PRO
. /Users/Andy/libs/z/z.sh
export PATH="/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php5.3/bin:$PATH"
export PATH="/Users/Andy/sdk/android-sdk/tools:$PATH"
export PATH="/Users/Andy/sdk/android-sdk/platform-tools:$PATH"
export PATH="/usr/local/sbin:$PATH"
alias ember-docs="cd /Users/Andy/sandbox/ember-docs/website && bundle exec middleman; /Applications/Firefox.pp/Contents/MacOS/firefox http://localhost:4567/"
alias htdocs="cd /Applications/MAMP/htdocs"
alias mysql-local="/usr/local/Cellar/mysql/5.5.25a/bin/mysql"
alias idev="rsync -rv /Users/Andy/Documents/Steelcase/idea-book/ideabook-html/wp-content/themes/ideabook/* voxvps:/srv/www/ideabook-dev/wp-content/themes/ideabook"


# DYI
export DYI_PARTNER_S3_KEY="AKIAJXYKW4OP5IHGBDPQ"
export DYI_PARTNER_S3_SECRET="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"
export DYI_PARTNER_S3_BUCKET_NAME="dyer-ives-partners"
