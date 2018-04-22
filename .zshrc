# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'


autoload -Uz compinit promptinit vcs_info
compinit
promptinit
# This will set the default prompt to the walters theme
prompt walters
#zstyle ":completion:*:commands" rehash 1
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
setopt menu_complete
# End of lines added by compinstall

SAVEHIST=100
HISTFILE=~/.zsh_history


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
zstyle ':vcs_info:*' nvcsformats "$RPROMPT"
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
  bindkey "^[[H" beginning-of-line
  bindkey "^[[F" end-of-line
fi


