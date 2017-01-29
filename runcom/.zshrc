# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Specific z plugin not supported by prezto
. ~/.zprezto/modules/z/z.sh

export PATH="/Users/jakerenzella/.splashkit/skm-darwin-x64/skm.app/Contents/MacOS:/Users/jakerenzella/.splashkit/skm-darwin-x64/skm.app/Contents/MacOS:/Users/jakerenzella/.rbenv/shims:/usr/local/bin:/usr/local/share/npm/bin:/Library/TeX/texbin:/usr/bin:/Applications/MAMP/Library/bin/mysql:/Users/jakerenzella/Library/Android/sdk/platform-tools:/bin:/usr/sbin:/sbin:/Users/jakerenzella/.local/bin:/Users/jakerenzella/.npm-packages/bin"
export PGHOST="/var/pgsql_socket"

for DOTFILE in `find /Users/jakerenzella/Repos/.dotfiles`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done

eval "$(rbenv init -)"
/Users/jakerenzella/.dstil/update #DOTHOOKS_MANAGED
source /Users/jakerenzella/.dstil/current/zsh_suffix #DOTHOOKS_MANAGED
