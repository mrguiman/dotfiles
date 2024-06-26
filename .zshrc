# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# Git and Autocomplete
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%b'
setopt prompt_subst

# Prompt and fetch on new shell
PROMPT=' '%5~%F{172}' %B❖%b  '%f
RPROMPT='${vcs_info_msg_0_}'
fastfetch

# Aliases
alias gpf='git push --force-with-lease'
alias glo='git log --pretty="oneline"'
alias vim='nvim'
alias cat='bat'


# Asdf post-install
. "$HOME/.asdf/asdf.sh"


# Golang setup with ASDF
GOLANG_SET_ENV=~/.asdf/plugins/golang/set-env.zsh
if [ -f $GOLANG_SET_ENV ]; then
	. ~/.asdf/plugins/golang/set-env.zsh
fi
export GOPATH=$HOME/go
export ASDF_GOLANG_MOD_VERSION_ENABLED=false
export PATH=$HOME/.local/bin:/usr/local/opt/llvm/bin:$PATH:$GOROOT/bin:$GOPATH/bin
export _JAVA_AWT_WM_NONREPARENTING=1
