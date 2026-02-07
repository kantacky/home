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

# Auto Suggestion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# My Binaries
export PATH="$HOME/.local/bin:$PATH"

# mise
eval "$(mise activate zsh)"

# PostgreSQL
export PATH="$(brew --prefix)/opt/postgresql@18/bin:$PATH"

# Google Cloud SDK
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# nest
export PATH="$HOME/.nest/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# This Device Only
. $HOME/.zshrc.local

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/kantacky/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
