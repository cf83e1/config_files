set nocompatible
set modelines=0
" filetype and syntax
    filetype plugin indent on
    syntax on
" show invisible characters
    set list listchars=eol:$,nbsp:_,tab:>\ ,trail:@
" searching options
    set hlsearch ignorecase incsearch showmatch smartcase
" movement
    nnoremap j gj
    nnoremap k gk
" indenting
    set autoindent smartindent
    set expandtab shiftwidth=4 softtabstop=4 tabstop=4
" custom mappings
    let mapleader=","
        nnoremap <silent> <leader><space> :nohlsearch<CR>
        nnoremap <silent> K <C-^>
        nnoremap <silent> <leader>l :set list!<CR>
        nnoremap <silent> <leader>p :set paste!<CR>
        nnoremap <silent> <leader>s :set spell!<CR>
        nnoremap <silent> <leader>t :tabnew<CR>
        nnoremap <silent> <leader>w :set wrap!<CR>
    nnoremap ; :
    nnoremap <silent> <tab> :tabn<CR>
" custom commands
    :command WQ wq
    :command Wq wq
    :command W w
    :command Q q
" other options
    set autoread cmdheight=2 encoding=utf-8 number ruler showcmd showmode nospell spellfile=~/.spell.en.add ttyfast wildmenu wrap
