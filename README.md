# myvimrc

This project contains my vim setup and its goal is simply make easier to
reconfigure vim. But you opensourcer are free to use it as you wish 😊.

## Pre-Requisites

* Fuzzy Finder (`fzf`)
* Development Tools (`build-essential`)
* GIT Version Control (`git`)
* Ruby (`rbenv`)
* Python (`pyenv`)
* NPM (`npm`)
* Node (`node`)
* Arduino Software. Visit [Arduino Webpage](https://www.arduino.cc/) (`arduino-cli`)

### NPM globals

* `eslint`
* `prettier`

### GEM globals

* `solargraph`

## Pre-configurations

Into your terminal`rc` file:

```sh
# Configure Fuzzy Finder to ignore gitignore files
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
```

## Instalation

If you have a fresh vim instalation:

* Clone recursively this repo to your `.vim` folder:

```sh
cd $HOME
git clone --recurse-submodules \
    https://github.com/luisbaldissera/myvimrc .vim
```

If you have other previous configuration files and may want to keep them, then
fork this project to somewhere else, make the changes to merge the
configurations as you wish, and save it into your `$HOME/.vim/` folder.

## Post-instalation

Into your terminal`rc` file:

```sh
function dirdiff()
{
    # Shell-escape each path:
    DIR1=$(printf '%q' "$1"); shift
    DIR2=$(printf '%q' "$1"); shift
    vim $@ -c "DirDiff $DIR1 $DIR2"
}

function calendar()
{
  vim -c "Calendar -month -task"
}
```
