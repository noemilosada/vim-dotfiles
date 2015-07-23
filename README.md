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
* Molokai theme
* NerdTree
* NerdTreeTabs
* NerdCommenter
* Syntastic
* Vim abolish
* Vim surround
* Vim haml
* Vim jdaddy
* Vim fugitive
* Vim gitgutter
* Vim css color
* Vim mustache handlebars
* DelimitMate
* Vim airline
* IndentLine
* YouCompleteMe
* Bufexplorer
* Vim multiple cursors
* Vim move
* ctrlp
* Vim devicons

## Notes
If you want to use the plugin [YouCompleteMe], you'll need to follow the instructions from their site in order to make it work.

To display correct symbols with vim airline plugin you'll need to install [Powerline fonts].

To display file icons you'll need to install [Nerd fonts]. I'm using `Meslo LG S DZ Regular for Powerline Plus Nerd File Types.otf`

[Vundle]:http://github.com/gmarik/vundle
[YouCompleteMe]:http://github.com/Valloric/YouCompleteMe
[Powerline fonts]:https://github.com/powerline/fonts
[Nerd fonts]:https://github.com/ryanoasis/nerd-fonts
