export EDITOR='vim'
export PS1="\u@\h:\e[m\e[0;32m\w\e[m$ "

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export PATH=$PATH:$HOME/bin
eval "$(/opt/homebrew/bin/brew shellenv)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)";
fi

if which rbenv > /dev/null; then 
  eval "$(rbenv init -)"; 
fi

# -------
# Aliases
# -------
alias ls='ls --color'
alias ll='ls -la'

#export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"