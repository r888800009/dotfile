# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'


autoload -Uz compinit promptinit vcs_info
compinit
promptinit
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
setopt menu_complete
# End of lines added by compinstall

#zsh histoty
SAVEHIST=2000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
#zsh
setopt HIST_IGNORE_DUPS
setopt autocd correct
bindkey -e
#git
zstyle ':vcs_info:*' enable git
precmd() {
    vcs_info
}
setopt prompt_subst


#display
export PS1="%F{6}%n%f%F{3}>%f"

gitPrefix="%F{1}%r/%S%f %F{4}%b%f"

zstyle ':vcs_info:git*' formats "$gitPrefix"
zstyle ':vcs_info:git*' actionformats "$gitPrefix (%a)"
zstyle ':vcs_info:*' nvcsformats "%F{2}%~%f"

RPROMPT='${vcs_info_msg_0_}'
#vim
export EDITOR=vim
alias vim="stty stop '' -ixoff; vim"


#antigen
source ~/.antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

#color
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==01=02}:${(s.:.)LS_COLORS}")'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#mingw
alias mingw-gcc=i686-w64-mingw32-gcc

#keybinds
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

#unix tools
alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias dmesg='dmesg --color=always'

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

#task reminder
printf "you have %d tasks\n" $(task count status:pending)

# home bin
export PATH=~/bin:$PATH

# git-summary
alias git-summary='~/.git-summary/git-summary'
