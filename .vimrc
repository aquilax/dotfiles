set nocompatible
filetype off

" Enable syntax highlight
syntax on

" 256 Colors
set t_Co=256

" theme
try
  colorscheme harlequin
catch
  colorscheme torte 
endtry

" some cyrillic mappings
set langmap =ъy,оo,пp,дd,гg,ГG,аa,АA,мm,уu,иi


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" enable modeline
set modeline

" Highlight col 80+
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" set whitespace chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/bling/vim-airline.git'
Plugin 'git://github.com/nielsmadan/harlequin.git'
Plugin 'git://github.com/editorconfig/editorconfig-vim.git'
Plugin 'git://github.com/vim-scripts/ledger.vim.git'
Plugin 'https://github.com/vim-scripts/cream-showinvisibles'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" open Nerd Tree with F2
map <F2> :NERDTreeToggle<CR>

