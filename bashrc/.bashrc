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

rubydir="/home/e/.local/share/gem/ruby/3.3.0/bin"

export PATH="$rubydir:$PATH"

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'


PS1='[\u@\h \W]\$ '

export PATH="$PATH:/home/e/.dotnet/tools"
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
