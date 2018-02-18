Inspired by https://github.com/amix/vimrc but done in a way I see it should be done.
# How to install
I've tested it only on mac and linux

    git clone https://github.com/sabaka/vimrc.git
    cd ~/vimrc && ./install_vimrc.sh
    cd && rm -rf vimrc

# Mappings
Mappings are avaliable at vimrc/mappings.vim

# Included stuff
## Plugins

* [ack](https://github.com/mileszs/ack.vim.git): Run your favorite search tool from Vim, with an enhanced results list.
* [airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
* [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip.git): With bufexplorer, you can quickly and easily switch between buffers.
* [commentary](https://github.com/tpope/vim-commentary.git): Comment stuff out.
* [ctrlp](https://github.com/kien/ctrlp.vim.git): Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
* [expand-region](https://github.com/terryma/vim-expand-region.git): allows you to visually select increasingly larger regions of text using the same key combination
* [goyo](https://github.com/junegunn/goyo.vim.git): Distraction-free writing in Vim.
* [MRU](https://github.com/vim-scripts/mru.vim.git): The Most Recently Used (MRU) plugin provides an easy access to a list of recently opened/edited files in Vim.
* [multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git): Multiple selection
* [NerdTree](https://github.com/scrooloose/nerdtree.git): A tree explorer plugin for vim
* [open_file_under_cursor](https://github.com/amix/open_file_under_cursor.vim.git): Open file under cursor when pressing gf
* [pathogen](https://github.com/tpope/vim-pathogen): Manage your vim runtimepath
* [tabline](https://github.com/mkitt/tabline.vim.git): Configure tab labels within Terminal Vim with a very succinct output.
* [taglist](https://github.com/vim-scripts/taglist.vim.git): The "Tag List" plugin is a source code browser for the Vim editor
* [vim-go](https://github.com/fatih/vim-go.git): This plugin adds Go language support for Vim
* [yankring](https://github.com/vim-scripts/YankRing.vim.git): It allows you to yank and delete things without worrying about losing the text that you yanked previously
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter): Shows which lines have been added, modified, or removed

## Color scheme
* [solirized](https://github.com/altercation/vim-colors-solarized)

## How to include more plugins
I use pathogen (https://github.com/tpope/vim-pathogen) to install plugins.
To add new plugins just copy to git repo into the plugins.lst
