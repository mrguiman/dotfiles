# Git
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%b'
setopt prompt_subst

PROMPT=' '%5~%F{172}' %B❖%b  '%f
RPROMPT='${vcs_info_msg_0_}'

neofetch

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gman/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gman/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gman/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gman/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# Aliases
alias gpf='git push --force-with-lease'
alias glo='git log --pretty="oneline"'
alias parrot='docker run -ti --platform linux/x86_64 --network host -v ~/parrot_work:/work parrotsec/security'
alias vim='nvim'
alias cat='bat'


# Asdf post-install
. /opt/asdf-vm/asdf.sh


# Golang setup with ASDF
GOLANG_SET_ENV=~/.asdf/plugins/golang/set-env.zsh
if [ -f $GOLANG_SET_ENV ]; then
	. ~/.asdf/plugins/golang/set-env.zsh
fi
export GOPATH=$HOME/go
export ASDF_GOLANG_MOD_VERSION_ENABLED=false
export PATH=/usr/local/opt/llvm/bin:$PATH:$GOROOT/bin:$GOPATH/bin

if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
    # https://github.com/swaywm/sway/issues/595
    export _JAVA_AWT_WM_NONREPARENTING=1
fi
