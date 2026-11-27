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

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let g:indentLine_color_gui = '#1a73e8'
let g:indentLine_color_term = 24
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Conditional'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'VertSplit'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment']
  \ }

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-g> :Files<CR>
nnoremap <C-t> :botright term<CR>
nnoremap <C-m> :let &conceallevel = &conceallevel == 0 ? 2 : 0<CR>

if has("termguicolors")
  set termguicolors
endif

syntax on
set background=dark
highlight clear

highlight Normal       ctermfg=Cyan       ctermbg=NONE  guifg=#38b6ff  guibg=NONE
highlight NonText      ctermfg=DarkCyan   ctermbg=NONE  guifg=#1a73e8  guibg=NONE
highlight SpecialKey   ctermfg=DarkCyan   ctermbg=NONE  guifg=#1a73e8  guibg=NONE
highlight LineNr       ctermfg=DarkCyan   ctermbg=NONE  guifg=#5c7e8c  guibg=NONE
highlight CursorLine   ctermfg=NONE       ctermbg=NONE  guifg=NONE     guibg=#0a0e14
highlight CursorLineNr ctermfg=Cyan       ctermbg=NONE  guifg=#00f0ff  guibg=NONE  gui=bold
highlight SignColumn   ctermfg=Cyan       ctermbg=NONE  guifg=#38b6ff  guibg=NONE
highlight FoldColumn   ctermfg=DarkCyan   ctermbg=NONE  guifg=#5c7e8c  guibg=NONE
highlight VertSplit    ctermfg=DarkCyan   ctermbg=NONE  guifg=#00d8ff  guibg=NONE

highlight Visual       ctermfg=NONE       ctermbg=NONE  guifg=NONE     guibg=#1a73e8
highlight Search       ctermfg=Black      ctermbg=Cyan  guifg=#0a0e14  guibg=#00f0ff  gui=bold
highlight IncSearch    ctermfg=Black      ctermbg=Cyan  guifg=#0a0e14  guibg=#38b6ff  gui=bold
highlight MatchParen   ctermfg=Cyan       ctermbg=NONE  guifg=#00f0ff  guibg=#0a0e14  gui=bold,underline
highlight Pmenu        ctermfg=Cyan       ctermbg=NONE  guifg=#38b6ff  guibg=#0a0e14
highlight PmenuSel     ctermfg=Black      ctermbg=Cyan  guifg=#0a0e14  guibg=#00f0ff  gui=bold

highlight Statement    ctermfg=Cyan       ctermbg=NONE  guifg=#00f0ff  guibg=NONE  gui=bold
highlight Keyword      ctermfg=Cyan       ctermbg=NONE  guifg=#00f0ff  guibg=NONE
highlight Function     ctermfg=LightCyan  ctermbg=NONE  guifg=#3b82f6  guibg=NONE  gui=bold
highlight Identifier   ctermfg=Cyan       ctermbg=NONE  guifg=#38b6ff  guibg=NONE
highlight String       ctermfg=LightCyan  ctermbg=NONE  guifg=#00d8ff  guibg=NONE
highlight Constant     ctermfg=Cyan       ctermbg=NONE  guifg=#7dd3fc  guibg=NONE
highlight Type         ctermfg=LightBlue  ctermbg=NONE  guifg=#3b82f6  guibg=NONE
highlight Special      ctermfg=Cyan       ctermbg=NONE  guifg=#00f0ff  guibg=NONE
highlight Comment      ctermfg=DarkCyan   ctermbg=NONE  guifg=#5c7e8c  guibg=NONE  gui=italic
highlight Underlined   ctermfg=Cyan       ctermbg=NONE  guifg=#00d8ff  guibg=NONE  gui=underline

highlight Todo         ctermfg=Black      ctermbg=NONE  guifg=#0a0e14  guibg=#ffb703  gui=bold
highlight WarningMsg   ctermfg=Yellow     ctermbg=NONE  guifg=#ffb703  guibg=NONE  gui=bold
highlight Error        ctermfg=White      ctermbg=NONE  guifg=#ff0055  guibg=#0a0e14  gui=bold
highlight ErrorMsg     ctermfg=Red        ctermbg=NONE  guifg=#ff0055  guibg=NONE  gui=bold

highlight Directory        ctermfg=Cyan      ctermbg=NONE  guifg=#00f0ff  guibg=NONE  gui=bold
highlight NERDTreeDirSlash ctermfg=DarkCyan  ctermbg=NONE  guifg=#38b6ff  guibg=NONE
highlight NERDTreeExecFile ctermfg=LightCyan ctermbg=NONE  guifg=#00d8ff  guibg=NONE
highlight GitGutterAdd     ctermfg=Cyan      ctermbg=NONE  guifg=#00f0ff  guibg=NONE  gui=bold
highlight GitGutterChange  ctermfg=Yellow    ctermbg=NONE  guifg=#ffb703  guibg=NONE  gui=bold
highlight GitGutterDelete  ctermfg=Red       ctermbg=NONE  guifg=#ff0055  guibg=NONE  gui=bold
highlight IndentGuidesOdd  ctermfg=DarkCyan  ctermbg=NONE  guifg=#1a73e8  guibg=NONE
highlight IndentGuidesEven ctermfg=DarkCyan  ctermbg=NONE  guifg=#5c7e8c  guibg=NONE
