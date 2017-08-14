# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Specific z plugin not supported by prezto
. ~/.zprezto/modules/z/z.sh

for DOTFILE in `find /Users/jakerenzella/Repos/dotfiles`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done

eval "$(rbenv init -)"
/Users/jakerenzella/.dstil/update #DOTHOOKS_MANAGED
source /Users/jakerenzella/.dstil/current/zsh_suffix #DOTHOOKS_MANAGED
