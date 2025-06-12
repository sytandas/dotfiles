# Set default editor
export EDITOR='vim'

# Prompt style
export PS1="\u@\h:\e[m\e[0;32m\w\e[m$ "

# PATH updates
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Locale settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Clean base prompt if Conda was active before
PS1="$(echo "$PS1" | sed 's/(base) //')"

# Shell history search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ----------------
# Aliases
# ----------------
alias ls='ls --color'
alias ll='ls -la'
alias sshr='ssh dl'
alias sshj='ssh -L 8888:localhost:8888 es@192.168.0.117'

# ----------------
# pyenv setup
# ----------------
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# [Conda disabled]
# To re-enable conda, uncomment the block below
# >>> conda initialize >>>
# __conda_setup="$('/Users/sayantandas/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/sayantandas/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/sayantandas/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/sayantandas/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

