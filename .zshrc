# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/neovim_install/bin:$PATH"

# install fzf oh-my-zsh
# Your fzf should be in /usr/bin/
export FZF_CTRL_T_OPTS="
--preview 'bat -n --color=always{}'
--bind 'ctrl-/:change-preview-window(down|hidden|)'"

export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboad'
"

export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

# THEME
ZSH_THEME="half-life"

# Plugins
plugins=(git aliases fzf)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vi='nvim'
alias vim='nvim'
