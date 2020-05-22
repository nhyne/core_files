# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(
  bazel
  git
  kubectl
  man
  minikube
  screen
  docker
  osx

#  postgres
#  rsync
#  go
#  golang
#  docker-compose
#  pip
#  helm
#  kops
#  rbenv
#  repo
#  ruby
#  sudo
#  virtualenvwrapper
#  vundle
)

#sources
source $ZSH/oh-my-zsh.sh
source ~/.keys/github_api_token.bash

# exports
export VIRTUAL_ENV_DISABLE_PROMPT=0
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xmx2G" #-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"
export EDITOR='vim'
#export RUSTC_WRAPPER=sccache
#export SCCACHE_BUCKET=nhyne-build-cache
#export PS1="\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \W $ "

# PATH
export GOPATH=$HOME/developer/go
export PATH=$GOPATH/bin:$PATH
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	export PATH=/opt/firefox:$PATH
fi

# User configuration
zstyle ':completion:*:*:git:*' source /usr/local/share/zsh/site-functions/_git
HISTTIMEFORMAT="%d/%m/%y %T "
setopt no_share_history
setopt HIST_IGNORE_SPACE

# evals
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/sbin/vault vault

# Aliases
alias kubeami="kubectl config current-context"
alias ecrlogin="eval $(aws ecr get-login --no-include-email)"
alias terrami="terraform workspace show"
alias ll="ls -lah"
alias ghpr="hub pull-request -p"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	alias pbcopy='xclip -selection clipboard'
	alias pbpaste='xclip -selection clipboard -o'
fi

# Completions
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
source <(kubectl completion zsh)

# opam configuration
test -r $HOME/.opam/opam-init/init.zsh && . $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
