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
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/bling/vim-airline.git'
Plugin 'git://github.com/nielsmadan/harlequin.git'
Plugin 'git://github.com/editorconfig/editorconfig-vim.git'
Plugin 'https://github.com/vim-scripts/cream-showinvisibles' " Uses F4 to toggle invisible characters
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'https://github.com/preservim/tagbar'
Plugin 'vimwiki/vimwiki'
Plugin 'https://github.com/freitass/todo.txt-vim'
Plugin 'https://github.com/lifepillar/vim-mucomplete.git'
Plugin 'https://github.com/mechatroner/rainbow_csv'
Plugin 'https://github.com/tpope/vim-sensible'
" Plugin 'https://github.com/ajh17/VimCompletesMe' " disabled in favor of mucompleteme
Plugin 'sheerun/vim-polyglot'
Plugin 'https://github.com/ledger/vim-ledger'
Plugin 'https://github.com/jkramer/vim-checkbox'
Plugin 'https://github.com/lifepillar/vim-gruvbox8.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" theme

" harlequin
" silent! colorscheme harlequin

" gruvbox
silent! colorscheme gruvbox8
set background=dark    " Setting dark mode

" open ctrlp with .. Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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
