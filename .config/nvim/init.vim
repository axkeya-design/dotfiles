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
let g:indentLine_color_gui = '#1d4ed8'
let g:indentLine_color_term = 26
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

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "deep_blue_void"

highlight Normal           ctermfg=Cyan       ctermbg=17    guifg=#7dd3fc  guibg=#0b192c
highlight NonText          ctermfg=DarkCyan   ctermbg=17    guifg=#1e3a8a  guibg=#0b192c
highlight SpecialKey       ctermfg=DarkCyan   ctermbg=17    guifg=#1e3a8a  guibg=#0b192c
highlight EndOfBuffer      ctermfg=DarkBlue   ctermbg=17    guifg=#10243e  guibg=#0b192c
highlight LineNr           ctermfg=DarkCyan   ctermbg=17    guifg=#4b79a1  guibg=#0b192c
highlight CursorLine       ctermfg=NONE       ctermbg=18    guifg=NONE     guibg=#112847
highlight CursorLineNr     ctermfg=Cyan       ctermbg=18    guifg=#00f5d4  guibg=#112847  gui=bold
highlight SignColumn       ctermfg=Cyan       ctermbg=17    guifg=#38bdf8  guibg=#0b192c
highlight FoldColumn       ctermfg=DarkCyan   ctermbg=17    guifg=#4b79a1  guibg=#0b192c
highlight VertSplit        ctermfg=DarkCyan   ctermbg=17    guifg=#1d4ed8  guibg=#0b192c
highlight WinSeparator     ctermfg=DarkCyan   ctermbg=17    guifg=#1d4ed8  guibg=#0b192c

highlight StatusLine       ctermfg=White      ctermbg=26    guifg=#e0f2fe  guibg=#1d4ed8  gui=bold
highlight StatusLineNC     ctermfg=Cyan       ctermbg=18    guifg=#bae6fd  guibg=#1e3a8a
highlight WildMenu         ctermfg=White      ctermbg=33    guifg=#ffffff  guibg=#2563eb  gui=bold

highlight Visual           ctermfg=NONE       ctermbg=25    guifg=NONE     guibg=#1d4ed8
highlight Search           ctermfg=Black      ctermbg=Cyan  guifg=#081322  guibg=#00f5d4  gui=bold
highlight IncSearch        ctermfg=Black      ctermbg=Cyan  guifg=#081322  guibg=#38bdf8  gui=bold
highlight MatchParen       ctermfg=Cyan       ctermbg=18    guifg=#00f5d4  guibg=#153259  gui=bold,underline
highlight Pmenu            ctermfg=Cyan       ctermbg=17    guifg=#bae6fd  guibg=#0e213b
highlight PmenuSel         ctermfg=Black      ctermbg=Cyan  guifg=#081322  guibg=#38bdf8  gui=bold

highlight Statement        ctermfg=Magenta    ctermbg=17    guifg=#c084fc  guibg=#0b192c  gui=bold
highlight Keyword          ctermfg=Magenta    ctermbg=17    guifg=#a855f7  guibg=#0b192c  gui=bold
highlight Function         ctermfg=Cyan       ctermbg=17    guifg=#00f5d4  guibg=#0b192c  gui=bold
highlight Identifier       ctermfg=LightCyan  ctermbg=17    guifg=#38bdf8  guibg=#0b192c
highlight String           ctermfg=LightCyan  ctermbg=17    guifg=#67e8f9  guibg=#0b192c
highlight Constant         ctermfg=LightBlue  ctermbg=17    guifg=#93c5fd  guibg=#0b192c
highlight Type             ctermfg=Cyan       ctermbg=17    guifg=#22d3ee  guibg=#0b192c
highlight Special          ctermfg=LightBlue  ctermbg=17    guifg=#818cf8  guibg=#0b192c
highlight Comment          ctermfg=DarkCyan   ctermbg=17    guifg=#5c85ad  guibg=#0b192c  gui=italic
highlight Underlined       ctermfg=Cyan       ctermbg=17    guifg=#38bdf8  guibg=#0b192c  gui=underline

highlight Todo             ctermfg=Black      ctermbg=135   guifg=#081322  guibg=#c084fc  gui=bold
highlight WarningMsg       ctermfg=Yellow     ctermbg=17    guifg=#fbbf24  guibg=#0b192c  gui=bold
highlight Error            ctermfg=White      ctermbg=1     guifg=#ffffff  guibg=#7f1d1d  gui=bold
highlight ErrorMsg         ctermfg=Red        ctermbg=17    guifg=#f87171  guibg=#0b192c  gui=bold

highlight Directory        ctermfg=Blue       ctermbg=17    guifg=#38bdf8  guibg=#0b192c  gui=bold
highlight NERDTreeDir      ctermfg=Blue       ctermbg=17    guifg=#38bdf8  guibg=#0b192c  gui=bold
highlight NERDTreeDirSlash ctermfg=DarkBlue   ctermbg=17    guifg=#1d4ed8  guibg=#0b192c
highlight NERDTreeOpenDirSymbol ctermfg=Blue  ctermbg=17    guifg=#60a5fa  guibg=#0b192c
highlight NERDTreeClosedDirSymbol ctermfg=Blue ctermbg=17    guifg=#60a5fa  guibg=#0b192c
highlight NERDTreeFile     ctermfg=LightCyan  ctermbg=17    guifg=#bae6fd  guibg=#0b192c
highlight NERDTreeExecFile ctermfg=LightCyan  ctermbg=17    guifg=#00f5d4  guibg=#0b192c
highlight GitGutterAdd     ctermfg=Cyan       ctermbg=17    guifg=#00f5d4  guibg=#0b192c  gui=bold
highlight GitGutterChange  ctermfg=LightBlue  ctermbg=17    guifg=#38bdf8  guibg=#0b192c  gui=bold
highlight GitGutterDelete  ctermfg=Magenta    ctermbg=17    guifg=#c084fc  guibg=#0b192c  gui=bold
highlight IndentGuidesOdd  ctermfg=DarkCyan   ctermbg=17    guifg=#1e3a8a  guibg=#0b192c
highlight IndentGuidesEven ctermfg=DarkCyan   ctermbg=17    guifg=#2b547e  guibg=#0b192c

let g:airline_theme = 'cool'

function! ForceBlueAirline() abort
  if !exists('g:airline#themes#cool#palette')
    return
  endif

  let l:blue_main = ['#e0f2fe', '#1d4ed8', 195, 26]
  let l:blue_mid  = ['#bae6fd', '#1e3a8a', 153, 18]
  let l:blue_dark = ['#7dd3fc', '#172554', 117, 17]

  for l:mode in ['normal', 'insert', 'visual', 'replace', 'commandline', 'inactive', 'terminal']
    if has_key(g:airline#themes#cool#palette, l:mode)
      let g:airline#themes#cool#palette[l:mode].airline_a = l:blue_main
      let g:airline#themes#cool#palette[l:mode].airline_b = l:blue_mid
      let g:airline#themes#cool#palette[l:mode].airline_c = l:blue_dark
      let g:airline#themes#cool#palette[l:mode].airline_x = l:blue_dark
      let g:airline#themes#cool#palette[l:mode].airline_y = l:blue_mid
      let g:airline#themes#cool#palette[l:mode].airline_z = l:blue_main
    endif
  endfor

  call airline#update_statusline()
endfunction

autocmd User AirlineAfterInit call ForceBlueAirline()
