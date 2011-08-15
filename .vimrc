set nocompatible
set modelines=0
" Filetype and syntax
    filetype plugin indent on
    syntax on
" Show invisible characters
    set list listchars=eol:$,nbsp:_,tab:>\ ,trail:@
" Searching options
    set hlsearch ignorecase incsearch showmatch smartcase
" Indenting
    set autoindent smartindent
    set expandtab shiftwidth=4 softtabstop=4 tabstop=4
" Custom mappings
    let mapleader=','
        nnoremap <silent> <leader><space> :nohlsearch<CR>
        nnoremap <silent> <leader>l :set list!<CR>
        nnoremap <silent> <leader>p :set paste!<CR>
        nnoremap <silent> <leader>s :set spell!<CR>
        nnoremap <silent> <leader>t :tabnew<CR>
        nnoremap <silent> <leader>w :set wrap!<CR>
    nnoremap ; :
    inoremap jj <ESC>
    inoremap kk <ESC>
    nnoremap j gj
    nnoremap k gk
    nnoremap <silent> <tab> :tabn<CR>
    nnoremap <silent> <s-tab> :tabp<CR>
    nmap <space>j <C-f>
    nmap <space>k <C-b>
    nnoremap <silent> K <C-^>

" Commands and abbreviations to allow things like :WQ!<CR> and :Wq
" file.txt<CR>. Using commands alone is not enough when files are
" specified because of 'E488: Trailing characters'. However, using
" abbreviations alone does not cover all cases either because they do
" not convert words unless there is a trailing space or bang. (So
" :WQ<CR> would not work with just abbreviations.) Using both commands
" and abbreviations solves the problem for all cases.

    " Commands
    " These allow for things like :WQ<CR> and :Q!<CR>
        :command -bang Q q<bang>
        :command -bang W w<bang>
        :command -bang Wq wq<bang>
        :command -bang WQ wq<bang>
    " Abbreviations
    " These allow for things like :W file.txt<CR> and
    " :WQ! file.txt<CR>
        cnoreabbrev q1 q!
        cnoreabbrev Q1 q!
        cnoreabbrev Q q
        cnoreabbrev W w
        cnoreabbrev Wq wq
        cnoreabbrev WQ wq
        cnoreabbrev wQ wq
" Other options
    set autoread cmdheight=2 encoding=utf-8 number ruler showcmd
    set showmode nospell spellfile=~/.spell.en.add ttyfast wildmenu wrap
    set hidden title backspace=indent,eol,start
