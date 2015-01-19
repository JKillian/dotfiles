
" Use 'jj' to go to command mode
  imap jj <ESC>
  nore ; :

" Coloring
  syntax on
  set background=dark
  colorscheme ron

" Tab settings
  set autoindent
  set expandtab
  set smarttab
  set smartindent
  set shiftwidth=3
  set softtabstop=3

  set backup
  set ruler
  
  set wildmenu
  set wildmode=longest:full,full
  
" Buffer tweaks
  set hidden
  nnoremap <silent> <right> :bnext<cr>
  nnoremap <silent> <left> :bprev<cr>
