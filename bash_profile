if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
source /Users/Andy/sdk/~/sdk/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
source /Users/Andy/sdk/~/sdk/google-cloud-sdk/completion.bash.inc
