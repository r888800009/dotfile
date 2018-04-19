# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'


autoload -Uz compinit promptinit
compinit
promptinit
# This will set the default prompt to the walters theme
prompt walters
#zstyle ":completion:*:commands" rehash 1
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
setopt menu_complete
# End of lines added by compinstall
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

bindkey "${terminfo[kdch1]}" delete-char
SAVEHIST=100
HISTFILE=~/.zsh_history
export PS1="%F{6}%n%f%F{3}>%f"

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
  bindkey "^[[H" beginning-of-line
  bindkey "^[[F" end-of-line
fi

#vim
export EDITOR=vim
alias vim="stty stop '' -ixoff; vim"


zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==01=02}:${(s.:.)LS_COLORS}")'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
