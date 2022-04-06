# dotfiles

## Dependencies

### Packages

* [`ag`](https://github.com/ggreer/the_silver_searcher)
* [`fd`](https://github.com/sharkdp/fd)
* [`nvm`](https://github.com/nvm-sh/nvm)
* [`zgenom`](https://github.com/jandamm/zgenom)
* [`tpm`](https://github.com/tmux-plugins/tpm)
* [`fzf`](https://github.com/junegunn/fzf)

### NodeJS packages

* [`diagnostic-languageserver`](https://github.com/iamcco/diagnostic-languageserver)
* [`diff-so-fancy`](https://github.com/so-fancy/diff-so-fancy)

Set the default for `nvm` using `nvm alias default <version>` e.g. `nvm alias default 13` and install the packages globally using `npm`.

### Composer packages

* [`drupal/coder`](https://www.drupal.org/project/coder)
* [`mglaman/drupal-check`](https://github.com/mglaman/drupal-check)

Install `drupal/coder` using [this](https://www.drupal.org/docs/8/modules/code-review-module/installing-coder-sniffer).

## Installation

```
$ git clone https://github.com/puresyntax71/dotfiles.git ~/.dotfiles
$ stow -t $HOME <package>
```
