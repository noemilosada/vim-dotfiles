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

## Notes
If you want to use the plugin [YouCompleteMe], you'll need to follow their instruccions from their site in order to make it work.

[Vundle]:http://github.com/gmarik/vundle
[YouCompleteMe]:http://github.com/Valloric/YouCompleteMe

To display correct symbols with vim airline plugin you'll need to install [Powerline fonts].
[Powerline fonts]:https://github.com/powerline/fonts
