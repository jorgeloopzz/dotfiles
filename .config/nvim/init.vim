"     _   ____________ _    ________  ___
"    / | / / ____/ __ \ |  / /  _/  |/  /
"   /  |/ / __/ / / / / | / // // /|_/ / 
"  / /|  / /___/ /_/ /| |/ // // /  / /  
" /_/ |_/_____/\____/ |___/___/_/  /_/   
"
" https://github.com/jorgeloopzz

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a	" enable mouse click
set cursorcolumn	" highlight current column
set cursorline	" highlight current line
set nocompatible	" disable compatibility to old-time vi
set nobackup	" backup file is immediately deleted upon writing the original file
set nowritebackup	" only in case you don't want a backup file while editing
set noswapfile	" no swap files
set number relativenumber " lines will show relative number except the current line wich will show it's absolute number
set clipboard=unnamedplus	" using system clipboard
set smartcase	" enable sensitive case depending on the situation

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
let g:airline_powerline_fonts=1
let g:rainbow_active = 1
let g:airline_theme='onedark'
colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-t> :NERDTreeToggle <CR>
nnoremap <C-h> :split <CR>
nnoremap <C-v> :vsplit <CR>
nnoremap <C-q> :q <CR>

