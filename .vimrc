set nocompatible

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set showcmd
set showmode
set noerrorbells
set novisualbell

set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set listchars=tab:»\ ,eol:¤,trail:·,extends:…,precedes:…

set showmatch
set nohls
set incsearch
set smartcase
set ignorecase

set scrolloff=4
set sidescrolloff=8
set nowrap

filetype indent plugin on
syntax enable
autocmd BufNewFile,BufRead *.vb set ft=vbnet
autocmd BufNewFile,BufRead *.psm1 set ft=ps1

command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g