set nocompatible
filetype off

" 256 Colors
if !has('gui_running')
  set t_Co=256
endif

set termguicolors

" some cyrillic mappings
set langmap =ъy,оo,пp,дd,гg,ГG,аa,АA,мm,уu,иi,рr

set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " NerdTree - mapped to F2
Plug 'https://github.com/scrooloose/syntastic'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/nielsmadan/harlequin'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/vim-scripts/cream-showinvisibles' " Uses F4 to toggle invisible characters
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/vimwiki/vimwiki'
Plug 'https://github.com/freitass/todo.txt-vim'
Plug 'https://github.com/lifepillar/vim-mucomplete'
Plug 'https://github.com/mechatroner/rainbow_csv'
Plug 'https://github.com/tpope/vim-sensible'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/ledger/vim-ledger'
Plug 'https://github.com/jkramer/vim-checkbox'
Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
Plug 'https://github.com/luizribeiro/vim-cooklang', { 'for': 'cook' }
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-fugitive'

" Janet
"Plug 'https://github.com/janet-lang/janet.vim'

" nvim specific
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" All of your Plugins must be added before the following line
call plug#end()

" theme

" gruvbox
silent! colorscheme gruvbox8_hard
set background=dark    " Setting dark mode

" open ctrlp with .. Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Open FZF with Ctrl-F
nmap <C-F> :Files<CR>

" open Nerd Tree with F2
map <F2> :NERDTreeToggle<CR>

" open ctags with F8
nmap <F8> :TagbarToggle<CR>

" enable modeline
set modeline
set modelineexpr

" Highlight col 80+
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" set whitespace chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Always show airline
set laststatus=2

" Enable syntax highlight
syntax on

" Bubble single lines
nnoremap <silent> <C-Up>   :move-2<CR>==
nnoremap <silent> <C-Down> :move+<CR>==
" Bubble multiple lines
xnoremap <silent> <C-Up>   :move-2<CR>gv=gv
xnoremap <silent> <C-Down> :move'>+<CR>gv=gv

" Make it obvious where 80 characters is
set colorcolumn=+1
set textwidth=0 
set wrapmargin=0

" vimwiki home path
let g:vimwiki_list = [{'path': '~/ledger/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]

" add 5 rows margin when scrolling                                             
set scrolloff=5 

" Eneble wildmenu
set wildmenu
set wildmode=longest:full,full

" vim-mucomplete
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c 

" enforce ledger
let g:ledger_bin = 'ledger'

" Insert current timestamp (Ctrl-l)
nmap <C-l> i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
imap <C-l> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" Open popup with hranoprovod summary for today
map <C-h> :call popup_notification(systemlist('hranoprovod-cli --no-color summary today'), {'pos': 'center'})<CR>

