set number
set shell=/usr/bin/zsh
syntax on

highlight Visual guibg=grey guifg=black
highlight Visual ctermbg=grey ctermfg=black
highlight Cursor guibg=grey guifg=black
highlight Cursor ctermbg=grey ctermfg=black

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

set hlsearch
set incsearch
set autochdir

nnoremap <F3> :set hlsearch!<CR>
tnoremap <C-x> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" handle tab
set tabstop=2 " tab width
set shiftwidth=2 " indent size
set expandtab " use space to instead the tab character
set smarttab

call plug#begin()
Plug 'lambdalisue/suda.vim'
call plug#end()
