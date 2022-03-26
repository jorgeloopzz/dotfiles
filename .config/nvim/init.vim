"  __   __   __     __    __    
" /\ \ / /  /\ \   /\ "-./  \   
" \ \ \'/   \ \ \  \ \ \-./\ \  
"  \ \__|    \ \_\  \ \_\ \ \_\ 
"   \/_/      \/_/   \/_/  \/_/ 
"
" https://github.com/jorgeloopzz                              

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

	" Colorscheme
	Plug 'morhetz/gruvbox'
	" File manager
	Plug 'scrooloose/nerdtree'
	" Rainbow parentheses
	Plug 'frazrepo/vim-rainbow'
	" Status bar
	Plug 'vim-airline/vim-airline'
	" Icons
	Plug 'ryanoasis/vim-devicons'
	" Preview CSS colors
	Plug 'ap/vim-css-color'
	" Multiple cursor
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a
set cursorline
set cursorcolumn
set number relativenumber
syntax on
colorscheme gruvbox
let g:airline_powerline_fonts=1
let g:rainbow_active = 1
hi Normal guibg=NONE ctermbg=NONE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-t> :NERDTreeToggle <CR>
nnoremap <C-s> :w <CR>
nnoremap <C-q> :wq <CR>


