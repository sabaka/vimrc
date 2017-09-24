""""""""""""""""""""""""""""""""""""""
""""" Keys Mappings"""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
" -> Leader 
" -> Misc
" -> Visual related
" -> Moving around
" -> Tabs anw Windows
" -> Buffers
" -> Spell Checking
" => Parenthesis/bracket

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""  LEADER   """"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Initialize leader key
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers
nmap <leader>ln :set invnumber<CR>

" Fast saving
nmap <leader>w :w!<cr>

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Disable highlight when <leader><cr> (,Enter in current config) is pressed
map <silent> <leader><cr> :noh<cr>

" Sort lines
map <leader>sl :sort<cr>

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them). Allows you to use
" defult keys to move inside multiline line like between separate lines
map j gj
map k gk

" Remap VIM 0 to first non-blank character in the line (like smart home button)
map 0 ^

" Move a line of text using ALT+[jk] or leader+m[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z

if has("mac") || has("macunix")
nmap <leader>mj <M-j>
nmap <leader>mk <M-k>
endif

" Bash like keys for the command line
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>
cnoremap <C-K>    <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""" Windows and tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows (Ctrl +)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Opens a new tab with the current buffer's path (opens folder in the new tab)
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer (command mode in files dir)
map <leader>cd :cd %:p:h<cr>:pwd<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""" Buffers 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>sc :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i
