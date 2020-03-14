#!/bin/bash

set -e

mkdir -p ~/.vim
pushd ~/.vim > /dev/null
[ ! -d bundle/vim-flake8 ] && git clone https://github.com/nvie/vim-flake8.git bundle/vim-flake8
popd > /dev/null
