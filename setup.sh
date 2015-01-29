#!/usr/bin/env bash

set -e

function install_vimrc {
    if [ ! -e $HOME/.vimrc ]
    then
        pushd $HOME
        git clone ssh://git@github.com/jtaugherty/vimrc.git
        ln -s vimrc/vimrc ~/.vimrc
        pushd vimrc && bash setup.sh && popd
        popd
    fi
}

function install_tmux_config {
    if [ ! -e $HOME/.tmux.conf ]
    then
        pushd $HOME
        git clone ssh://git@github.com/jtaugherty/tmux-config.git
        ln -s tmux-config/tmux.conf ~/.tmux.conf
        popd
    fi
}

function install_tmux_status {
    if [ ! -e $HOME/tmux-status ]
    then
        pushd $HOME
        git clone ssh://git@github.com/jtdaugherty/tmux-status.git
        popd
    fi
}

install_vimrc
install_tmux_config
install_tmux_status
