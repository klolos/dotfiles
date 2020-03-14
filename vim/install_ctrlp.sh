#!/bin/bash

set -e

mkdir -p ~/.vim
pushd ~/.vim > /dev/null
[ ! -d bundle/ctrlp.vim ] && git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
popd > /dev/null

if ! grep -q ctrlp.vim ~/.vimrc
then
    cat >> ~/.vimrc <<EOF

" Configure ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '.pyc$'
EOF
fi

echo
echo "Run the following at vim's command line:"
echo
echo "  :helptags ~/.vim/bundle/ctrlp.vim/doc"
