#.bashrc
#chsh -s /bin/bash

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# if type __git_ps1 > /dev/null 2>&1 ; then
#   PROMPT_COMMAND="__git_ps1 '\h:\W \u' '\\\$ '; $PROMPT_COMMAND"
#   GIT_PS1_SHOWDIRTYSTATE=true
#   GIT_PS1_SHOWSTASHSTATE=true
#   GIT_PS1_SHOWUNTRACKEDFILES=true
#   GIT_PS1_SHOWUPSTREAM="auto"
#   GIT_PS1_SHOWCOLORHINTS=true
# fi

# プロンプトの設定
if [ $UID = 0 ]; then
  PS1="\n\[\e[35;47m\][\#] \[\e[32;47m\] \D{%Y/%m/%d %H:%M:%S} \[\e[0m\]【\[\033[31m\]\u@\h\[\033[00m\]】\$(parse_git_branch)(bash)\n\[\033[01m\]\w\[\033[00m\]\[\033[31m\]\$\[\033[00m\] "
else
  PS1="\n\[\e[35;47m\][\#] \[\e[32;47m\] \D{%Y/%m/%d %H:%M:%S} \[\e[0m\]【\[\033[36m\]\u@\h\[\033[00m\]】\$(parse_git_branch)(bash)\n\[\033[01m\]\w\[\033[00m\]\[\033[36m\]\$\[\033[00m\] "
fi

# エイリアスの設定
alias ls='ls -F'
alias ll='ls -ailFG'
alias e='emacs &'
alias ee='emacs -nw'
alias s='source'
alias v='vim'
alias c='clear'
alias relogin='exec bash -l'
alias vs='code'
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"
# git系のエイリアス
alias gb="git branch"
alias gco='git checkout'
alias gcm='git checkout master'
alias gl='git pull'
alias gc='git commit'
alias gp='git push'
alias gst='git status'
alias ga='git add'
alias gpoh='git push origin HEAD'
# 頑張れるエイリアス
alias nemui="echo 'おきろ！！おきろ！！おきろ！！おきろ！！おきろ！！'"
alias tukareta="echo 'それな～～つかれた〜〜'"
alias tk="echo 'たこはちは天才'"
# eval "$(direnv hook bash)"

mkcd(){
  mkdir $1 && cd $1
}
#かっこ自動補完
#inoremap {<Enter> {}<Left><CR><ESC><S-o>
#inoremap [<Enter> []<Left><CR><ESC><S-o>
#inoremap (<Enter> ()<Left><CR><ESC><S-o>

HISTFILE=$HOME/.bash_history

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

