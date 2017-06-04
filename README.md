vim-config
==========

My personal vim configuration. Oriented for Web developpement (mostly: Go, Python, JavaScript, CoffeeScript) with a lots of well known plugins like (CTRL+P, Gundo, Bookmarks, Ag, VIM-Snippets, VIM-Polygot, GoldenView...)

How to install
==========
- First of all: backup your own configuration file
- Install Vim Vundle (https://github.com/gmarik/Vundle.vim)
- Either use the INSTALL.sh script or copy the file into your **~/.vim** folder
- Open VIM and do `:PluginInstall`

For *YCM (YouCompleteMe plugin)* follow the instruction to build it : https://github.com/Valloric/YouCompleteMe or disable this plugin in the provided **~/.vim/vundle** file.

For *Airline* you should follow the "Integrating with powerline fonts" section in order to install the powerline fonts.

Convention
==========
- vimar: is a little script that I made in order to reload vim when you are changing your configuration files.
- vimrc: is your main configuration vim file.
- vimsc: is the file were you should define customized shortcuts.
- vundle: is the file regrouping all the plugins that vundle should install and their specific configuration options.
