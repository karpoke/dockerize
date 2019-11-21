#!/usr/bin/env sh

# https://github.com/romkatv/powerlevel10k

/usr/bin/docker run \
    -it \
    --rm \
    -e TERM \
    archlinux/base bash -uexc '
  pacman -Sy --noconfirm zsh git
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo "source ~/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
  cd ~/powerlevel10k
  exec zsh'
