set number
set relativenumber
set hlsearch
set tabstop=4
set shiftwidth=4

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-g> :Files<CR>
nnoremap <C-t> :botright term<CR>
nnoremap <C-m> :let &conceallevel = &conceallevel == 0 ? 2 : 0<CR>

if (has("termguicolors"))
  set termguicolors
endif

syntax enable
set background=dark
colorscheme nord

let g:rainbow_active = 1

highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight FoldColumn guibg=NONE ctermbg=NONE
