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

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "cyber_blue"

highlight Normal       guifg=#DCEBFF guibg=NONE ctermfg=189 ctermbg=NONE
highlight NonText      guifg=#2B3B55 guibg=NONE ctermfg=237 ctermbg=NONE
highlight EndOfBuffer  guifg=#1E293B guibg=NONE ctermfg=235 ctermbg=NONE
highlight LineNr       guifg=#4E6B99 guibg=NONE ctermfg=60  ctermbg=NONE
highlight CursorLineNr guifg=#00F5D4 guibg=NONE gui=bold ctermfg=50 cterm=bold ctermbg=NONE
highlight CursorLine   guibg=#111C33 ctermbg=234
highlight SignColumn   guibg=NONE ctermbg=NONE
highlight FoldColumn   guifg=#4E6B99 guibg=NONE ctermfg=60  ctermbg=NONE
highlight VertSplit    guifg=#1E3A5F guibg=NONE ctermfg=24  ctermbg=NONE
highlight StatusLine   guifg=#E0F2FE guibg=#1D4ED8 gui=bold ctermfg=195 ctermbg=26 cterm=bold
highlight StatusLineNC guifg=#BAE6FD guibg=#1E3A8A gui=NONE ctermfg=153 ctermbg=18 cterm=NONE
highlight WildMenu     guifg=#FFFFFF guibg=#2563EB gui=bold ctermfg=231 ctermbg=33 cterm=bold
highlight Visual       guibg=#1E3F66 ctermbg=24
highlight Search       guifg=#09111E guibg=#38BDF8 ctermfg=16  ctermbg=39
highlight IncSearch    guifg=#09111E guibg=#00F5D4 ctermfg=16  ctermbg=50
highlight Pmenu        guifg=#DCEBFF guibg=#0F1A2E ctermfg=189 ctermbg=233
highlight PmenuSel     guifg=#09111E guibg=#38BDF8 ctermfg=16  ctermbg=39

highlight Comment      guifg=#526D96 gui=italic ctermfg=60  cterm=italic
highlight Constant     guifg=#38BDF8 ctermfg=39
highlight String       guifg=#67E8F9 ctermfg=87
highlight Identifier   guifg=#60A5FA ctermfg=75
highlight Function     guifg=#00F5D4 gui=bold ctermfg=50 cterm=bold
highlight Statement    guifg=#C084FC ctermfg=177
highlight Keyword      guifg=#A855F7 gui=bold ctermfg=135 cterm=bold
highlight PreProc      guifg=#E879F9 ctermfg=213
highlight Type         guifg=#22D3EE ctermfg=45
highlight Special      guifg=#818CF8 ctermfg=105
highlight Underlined   guifg=#38BDF8 gui=underline ctermfg=39 cterm=underline
highlight Todo         guifg=#09111E guibg=#C084FC gui=bold ctermfg=16 ctermbg=177 cterm=bold

let g:indentLine_color_gui = '#1E3A5F'
let g:indentLine_color_term = 24
highlight GitGutterAdd    guifg=#00F5D4 guibg=NONE ctermfg=50  ctermbg=NONE
highlight GitGutterChange guifg=#38BDF8 guibg=NONE ctermfg=39  ctermbg=NONE
highlight GitGutterDelete guifg=#C084FC guibg=NONE ctermfg=177 ctermbg=NONE

let g:airline_theme = 'cool'

function! ForceBlueAirline() abort
  if !exists('g:airline#themes#cool#palette')
    return
  endif

  let l:blue_main = ['#E0F2FE', '#1D4ED8', 195, 26]
  let l:blue_mid  = ['#BAE6FD', '#1E3A8A', 153, 18]
  let l:blue_dark = ['#7DD3FC', '#172554', 117, 17]

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
