
###予測系
autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache true
autoload predict-on
setopt nolistbeep

###プロンプト
PROMPT="[%F{yellow} %/%  %f] "

###動作系
setopt AUTO_MENU
setopt AUTO_CD
function chpwd() { ls -G }
setopt correct
setopt nobeep

###Alias系
alias ls="ls -G -a"
alias task="terminal-notifier -title 'ukkatask' -message"


# Source Prezto.

# pyenv
PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi



