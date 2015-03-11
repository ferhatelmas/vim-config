#!/bin/sh
CURRENT_DIR=`pwd`

mv ~/.vim ~/.vim.old
mkdir -p ~/.vim
mkdir -p ~/.vimbackup
mkdir -p ${CURRENT_DIR}/bundle

ln -sf ${CURRENT_DIR}/* ~/.vim

if [ ! -d "${CURREND_DIR}/Vundle.vim" ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

# Install YouCompleteMe Clang
mkdir -p ~/.ycm_build; cd ~/.ycm_build;
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
cd ${CURRENT_DIR}

