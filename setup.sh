#!/usr/bin/env bash

set -e

function install_vimrc {
    pushd $HOME
    git clone ssh://git@github.com/jtaugherty/vimrc.git
    ln -s vimrc/vimrc ~/.vimrc
    pushd vimrc && bash setup.sh && popd
    popd
}

function install_tmux_config {
    pushd $HOME
    git clone ssh://git@github.com/jtaugherty/tmux-config.git
    ln -s tmux-config/tmux.conf ~/.tmux.conf
    popd
}

function install_tmux_status {
    pushd $HOME
    git clone ssh://git@github.com/jtaugherty/tmux-status.git
    popd
}

install_vimrc
install_tmux_config
install_tmux_status
