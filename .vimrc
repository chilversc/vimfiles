set nocompatible
set encoding=utf-8

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
set list

if exists("+relativenumber")
	set relativenumber
else 
	set number
end

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
autocmd BufNewFile,BufRead *.ps1 set ft=ps1
autocmd BufNewFile,BufRead *.psm1 set ft=ps1
autocmd BufNewFile,BufRead *.*proj set ft=xml
autocmd FileType HTML set indentexpr= foldmethod=indent
autocmd FileType JAVASCRIPT set indentexpr= nocindent foldmethod=indent

command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

inoremap hh <ESC>
nnoremap <ESC><ESC> :noh<CR>
nnoremap <silent> ,cd :cd %:p:h<CR>

" Recursively collapse all folds with in the current fold
nnoremap zh [zV]zzC``zv
