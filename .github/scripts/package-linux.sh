#!/bin/sh

if ! type zsh > /dev/null 2>&1; then
    echo ' => Installing script dependency Zsh.'

    sudo pacman -Syu 
    sudo pamac install zsh
fi

SCRIPT=$(readlink -f "${0}")
SCRIPT_DIR=$(dirname "${SCRIPT}")

zsh ${SCRIPT_DIR}/package-linux.zsh "${@}"
