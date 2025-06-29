#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

for dir in "$HOME/.scripts" "$HOME/.bin"; do
    if [ -d "$dir" ] ; then
        export PATH="$dir":$PATH
    fi
done

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_ed25519"
