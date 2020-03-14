#!/bin/bash

set -e

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

if ! grep -q pathogen ~/.vimrc
then
    cat >> ~/.vimrc <<EOF

" Autoload pathogen plugins
execute pathogen#infect()
EOF
fi
