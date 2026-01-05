# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Backup
cp ~/.zshrc ~/.zshrc.backup

# Alias
alias v=nvim
alias vi=nvim
alias vim=nvim

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Completion
fpath=($HOME/.docker/completions $fpath)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz compinit
compinit

# My Binaries
export PATH="$HOME/.local/bin:$PATH"

# Ruby
eval "$(rbenv init -)"

# Python
eval "$(pyenv init -)"

# Go
eval "$(goenv init -)"
export GOPRIVATE=''

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"  # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="$HOME/Library/pnpm:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Java
#export JAVA_HOME="$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
export JAVA_HOME=`/usr/libexec/java_home -v 17`
export PATH="$JAVA_HOME/bin:$PATH"

# Flutter
export PATH="$HOME/fvm/default/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
[[ -f $HOME/.dart-cli-completion/zsh-config.zsh ]] && . $HOME/.dart-cli-completion/zsh-config.zsh || true

# PostgreSQL
export PATH="$(brew --prefix)/opt/postgresql@18/bin:$PATH"

# Google Cloud SDK
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# mise
eval "$(mise activate zsh)"

# nest
export PATH="$HOME/.nest/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# This Device Only
. $HOME/.zshrc.local

