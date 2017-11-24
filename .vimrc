set modeline            " Execute Ex, Vi and Vim modelines
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set hlsearch            " highlight all matches of the previous search pattern
set number              " show line numbers
set visualbell t_vb=    " disable terminal beep/bell
set tabstop=4
set shiftwidth=4
set expandtab
set cindent


" Suffixes that get lower priority when doing tab completion for filenames.
"These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.obj,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
"Plugin 'jdkanani/vim-material-theme'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'altercation/vim-colors-solarized'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'

call vundle#end()

" Use ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Auto reload vim on vimrc changes
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $VIMRC | endif
augroup END

map <F2> :NERDTreeToggle<CR>
map <F12> :YcmCompleter GoTo<CR>

map <F3> :FSHere<CR>
syntax enable
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
colorscheme solarized
