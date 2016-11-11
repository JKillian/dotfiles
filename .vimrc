call plug#begin('~/.vim/plugged')

  Plug 'Shougo/vimproc.vim', {'do' : 'make'}

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-abolish'
  Plug 'vim-scripts/camelcasemotion'

  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'JazzCore/ctrlp-cmatcher', {'do' : './install.sh'}

  Plug 'leafgarland/typescript-vim'

  Plug 'scrooloose/nerdtree'

  if has("gui_running")
    Plug 'Quramy/tsuquyomi'
  endif

call plug#end()

if has("gui_running")
  set guifont=Source\ Code\ Pro:h14

  " NERDTree
  autocmd vimenter * NERDTree

  " TypeScript
  autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
endif

if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" Use 'jj' to go to command mode
  imap jj <ESC>
  map ; :
  noremap ;; ;

" Coloring
  syntax on
  set background=dark
  colorscheme monokai

" Tab settings
  set autoindent
  set expandtab
  set smarttab
  set autoindent
  filetype plugin indent on
  set shiftwidth=4
  set softtabstop=4

  autocmd FileType scss setlocal sw=2 ts=2 sts=2 expandtab
  autocmd FileType pug setlocal sw=2 ts=2 sts=2 expandtab

  set ruler

  set smartcase
  
  set wildmenu
  set wildmode=longest:full,full
  
" Buffer tweaks
  set hidden
  nnoremap <silent> <right> :bnext<cr>
  nnoremap <silent> <left> :bprev<cr>

" Backups in the current directory are annoying, make them go somewhere else
  set backup
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set backupskip=/tmp/*,/private/tmp/*
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set writebackup

" Handy macro for converting functions to arrow functions in JS/TS
let @f = '$^f(i = jjf{i=> jjl%A;jj'

" Quick way to find and replace current word
" See http://vim.wikia.com/wiki/Search_and_replace_the_word_under_the_cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left>
