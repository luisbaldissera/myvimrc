# myvimrc

This project contains my vim setup and its goal is simply make easier to reconfigure vim. But you opensourcer are free to use it as you wish 😊.

## Pre-Requisites

* Fuzzy Finder
* FIGlet

```sh
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install \
    fzf \
    figlet
```

## Instalation

If you have a fresh vim instalation:

* Clone recursively this repo to your `.vim` folder:

```
cd $HOME
git clone --recurse-submodules \
    https://github.com/luisbaldissera/myvimrc .vim
```

If you have other previous configuration files and may want to keep them, then fork this project to somewhere else, make the changes to merge the configurations as you wish, and save it into your `$HOME/.vim/` folder.
