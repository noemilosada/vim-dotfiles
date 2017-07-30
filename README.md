## About
This is my vim configuration. It uses [Vundle] as a plugin manager.
Please, feel free to download, modify and suggest.
*Thank you!*

## Usage
1. Clone [Vundle] in the .vim folder:

    `$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Clone this repo into your home folder:

    `$ git clone git@github.com:noemilosada/vim-dotfiles.git`

3. Create a symlink to use the .vimrc file (if you already have one, save a copy to avoid any lost):

    `$ ln -s vim-dotfiles/.vimrc .vimrc`

4. Now install all the plugins running this command:

    `$ vim +PluginInstall +qall`

## Used plugins
* Ack
* Ale
* Bufexplorer
* CtrlP
* DelimitMate
* IndentLine
* Molokai theme
* NerdCommenter
* NerdTree
* NerdTreeTabs
* Vim NerdTree syntax highlight
* Vim abolish
* Vim airline
* Vim css color
* Vim devicons
* Vim fugitive
* Vim gitgutter
* Vim gotofile
* Vim haml
* Vim javascript
* Vim javascript libraries syntax
* Vim json
* Vim jsx
* Vim move
* Vim multiple cursors
* Vim surround
* YouCompleteMe

## Notes
To use the plugin [YouCompleteMe], you'll need to follow the instructions from their site in order to make it work.

To display correct symbols with vim airline plugin you'll need to install [Powerline fonts].

To display file icons you'll need to install [Nerd fonts]. I'm using `Meslo LG S DZ Regular for Powerline Plus Nerd File Types.otf`

To use [Ack] you'll need to install it in your system.

[Vundle]:http://github.com/gmarik/vundle
[YouCompleteMe]:http://github.com/Valloric/YouCompleteMe
[Powerline fonts]:https://github.com/powerline/fonts
[Nerd fonts]:https://github.com/ryanoasis/nerd-fonts
[Ack]:http://beyondgrep.com/install/
