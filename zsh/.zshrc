source "${HOME}/.zgenom/zgenom.zsh"

zgenom autoupdate

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LC_ALL="en_US.UTF-8"

# zstyle ':prezto:module:editor' dot-expansion 'yes'
# zstyle ':prezto:*:*' color 'yes'
# zstyle ':prezto:module:git:status:ignore' submodules 'all'
# # zstyle ':prezto:module:prompt' theme 'pure'
# zstyle ':prezto:module:ruby:chruby' auto-switch 'yes'
# zstyle ':prezto:module:ssh:load' identities 'id_rsa'

export NVM_DIR="$HOME/.nvm"
export BROWSER='google-chrome'
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

typeset -gU cdpath fpath mailpath path

cdpath=(
  $HOME/Devel
  $cdpath
)

path=(
  $HOME/bin
  $(brew --prefix php@7.4)/bin
  PhpStorm/bin
  /usr/local/opt/gnu-tar/libexec/gnubin
  $HOME/Library/Haskell/bin
  /usr/local/mysql/bin
  $HOME/.composer/vendor/bin
  $HOME/.config/composer/vendor/bin
  /usr/local/{bin,sbin}
  $HOME/.cargo/bin
  $path
)

if ! zgenom saved; then
  zgenom prezto editor dot-expansion 'yes'
  zgenom prezto '*:*' color 'yes'
  zgenom prezto 'git:status:ignore' submodules 'all'
  zgenom prezto 'ruby:chruby' auto-switch 'yes'
  zgenom prezto 'ssh:load' identities 'id_rsa'

  zgenom prezto

  # Load prezto plugins.
  zgenom prezto environment
  zgenom prezto terminal
  zgenom prezto editor
  zgenom prezto terminal
  zgenom prezto editor
  zgenom prezto history
  zgenom prezto directory
  zgenom prezto spectrum
  zgenom prezto utility
  zgenom prezto completion
  zgenom prezto prompt
  zgenom prezto git
  zgenom prezto archive
  zgenom prezto syntax-highlighting
  zgenom prezto rsync
  zgenom prezto history-substring-search
  zgenom prezto python
  zgenom prezto ruby
  zgenom prezto fasd
  zgenom prezto ssh
  zgenom prezto node
  zgenom prezto gpg

  zgenom bin tj/git-extras
  zgenom load romkatv/powerlevel10k powerlevel10k

  zgenom prezto completion loaded 'yes'

  # Save to init script.
  zgenom save

  # Compile zsh files.
  zgenom compile "$HOME/.zshrc"
  zgenom compile $ZDOTDIR
fi

# Prezto modules. {{{

# zplug romkatv/powerlevel10k, as:theme, depth:1

# zstyle ":prezto:module:completion" loaded 'yes'

# Prezto settings. {{{

export BROWSER='google-chrome'
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

export TMPDIR="/tmp/$USER"
mkdir -p -m 700 "$TMPDIR"
TMPPREFIX="${TMPDIR%/}/zsh"
mkdir -p "$TMPPREFIX"

# }}}

# }}}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh

nvm use default

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
(( ! ${+functions[p10k]} )) || p10k finalize
