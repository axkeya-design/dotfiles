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
Plug 'Yggdroot/indentLine'
Plug 'nordtheme/vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-g> :Files<CR>
nnoremap <C-t> :botright split +terminal<CR>
nnoremap <C-m> :let &conceallevel = &conceallevel == 0 ? 2 : 0<CR>

tnoremap <Esc> <C-\><C-n><C-w>k

autocmd TermOpen * startinsert
autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif

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

if (has("termguicolors"))
  set termguicolors
endif

syntax enable
set background=dark
colorscheme nord

highlight Normal           ctermfg=Cyan       ctermbg=0     guifg=#38b6ff  guibg=#06090f
highlight NonText          ctermfg=DarkCyan   ctermbg=0     guifg=#1a73e8  guibg=#06090f
highlight SpecialKey       ctermfg=DarkCyan   ctermbg=0     guifg=#1a73e8  guibg=#06090f
highlight LineNr           ctermfg=DarkCyan   ctermbg=0     guifg=#5c7e8c  guibg=#06090f
highlight CursorLine       ctermfg=NONE       ctermbg=8     guifg=NONE     guibg=#0c1524
highlight CursorLineNr     ctermfg=Cyan       ctermbg=8     guifg=#00f0ff  guibg=#0c1524  gui=bold
highlight SignColumn       ctermfg=Cyan       ctermbg=0     guifg=#38b6ff  guibg=#06090f
highlight FoldColumn       ctermfg=DarkCyan   ctermbg=0     guifg=#5c7e8c  guibg=#06090f
highlight VertSplit        ctermfg=DarkCyan   ctermbg=0     guifg=#00d8ff  guibg=#06090f
highlight WinSeparator     ctermfg=DarkCyan   ctermbg=0     guifg=#00d8ff  guibg=#06090f

highlight Visual           ctermfg=NONE       ctermbg=4     guifg=NONE     guibg=#1a73e8
highlight Search           ctermfg=Black      ctermbg=Cyan  guifg=#06090f  guibg=#00f0ff  gui=bold
highlight IncSearch        ctermfg=Black      ctermbg=Cyan  guifg=#06090f  guibg=#38b6ff  gui=bold
highlight MatchParen       ctermfg=Cyan       ctermbg=8     guifg=#00f0ff  guibg=#0c1524  gui=bold,underline
highlight Pmenu            ctermfg=Cyan       ctermbg=0     guifg=#38b6ff  guibg=#06090f
highlight PmenuSel         ctermfg=Black      ctermbg=Cyan  guifg=#06090f  guibg=#00f0ff  gui=bold

highlight Statement        ctermfg=Cyan       ctermbg=0     guifg=#00f0ff  guibg=#06090f  gui=bold
highlight Keyword          ctermfg=Cyan       ctermbg=0     guifg=#00f0ff  guibg=#06090f
highlight Function         ctermfg=LightCyan  ctermbg=0     guifg=#3b82f6  guibg=#06090f  gui=bold
highlight Identifier       ctermfg=Cyan       ctermbg=0     guifg=#38b6ff  guibg=#06090f
highlight String           ctermfg=LightCyan  ctermbg=0     guifg=#00d8ff  guibg=#06090f
highlight Constant         ctermfg=Cyan       ctermbg=0     guifg=#7dd3fc  guibg=#06090f
highlight Type             ctermfg=LightBlue  ctermbg=0     guifg=#3b82f6  guibg=#06090f
highlight Special          ctermfg=Cyan       ctermbg=0     guifg=#00f0ff  guibg=#06090f
highlight Comment          ctermfg=DarkCyan   ctermbg=0     guifg=#5c7e8c  guibg=#06090f  gui=italic
highlight Underlined       ctermfg=Cyan       ctermbg=0     guifg=#00d8ff  guibg=#06090f

highlight Todo             ctermfg=Black      ctermbg=3     guifg=#06090f  guibg=#ffb703  gui=bold
highlight WarningMsg       ctermfg=Yellow     ctermbg=0     guifg=#ffb703  guibg=#06090f  gui=bold
highlight Error            ctermfg=White      ctermbg=1     guifg=#ff0055  guibg=#14050a  gui=bold
highlight ErrorMsg         ctermfg=Red        ctermbg=0     guifg=#ff0055  guibg=#06090f  gui=bold

highlight Directory        ctermfg=Blue       ctermbg=0     guifg=#38b6ff  guibg=#06090f  gui=bold
highlight NERDTreeDir      ctermfg=Blue       ctermbg=0     guifg=#38b6ff  guibg=#06090f  gui=bold
highlight NERDTreeDirSlash ctermfg=DarkBlue   ctermbg=0     guifg=#1a73e8  guibg=#06090f
highlight NERDTreeOpenDirSymbol ctermfg=Blue  ctermbg=0     guifg=#3b82f6  guibg=#06090f
highlight NERDTreeClosedDirSymbol ctermfg=Blue ctermbg=0    guifg=#3b82f6  guibg=#06090f
highlight NERDTreeFile     ctermfg=LightCyan  ctermbg=0     guifg=#7dd3fc  guibg=#06090f
highlight NERDTreeExecFile ctermfg=LightCyan  ctermbg=0     guifg=#00d8ff  guibg=#06090f
highlight GitGutterAdd     ctermfg=Cyan       ctermbg=0     guifg=#00f0ff  guibg=#06090f  gui=bold
highlight GitGutterChange  ctermfg=Yellow     ctermbg=0     guifg=#ffb703  guibg=#06090f  gui=bold
highlight GitGutterDelete  ctermfg=Red        ctermbg=0     guifg=#ff0055  guibg=#06090f  gui=bold
highlight IndentGuidesOdd  ctermfg=DarkCyan   ctermbg=0     guifg=#1a73e8  guibg=#06090f
highlight IndentGuidesEven ctermfg=DarkCyan   ctermbg=0     guifg=#5c7e8c  guibg=#06090f
