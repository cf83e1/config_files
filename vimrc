" preliminary
    set nocompatible
    set modelines=0
" filetype and syntax
    filetype plugin indent on
    syntax on
" show invisible characters
    set list listchars=eol:$,nbsp:_,tab:>\ ,trail:@
" searching options
    set hlsearch ignorecase incsearch showmatch smartcase
" movement and scrolling
    nnoremap j gj
    nnoremap k gk
    set scrolloff=3
    noremap <Space> <C-f>
    noremap b <C-b>
" indenting options
    set autoindent smartindent
    set expandtab shiftwidth=4 softtabstop=4 tabstop=4
" custom mappings
    let mapleader = ","
        nnoremap <silent> <leader>l :set list!<CR>
        nnoremap <silent> <leader>s :set spell!<CR>
        nnoremap <silent> <leader>t :tabnew<CR>
        nnoremap <silent> <leader><space> :nohlsearch<CR>
    nnoremap ; :
    nnoremap <silent> <Tab> :tabn<CR>
" miscellaneous settings
    set autoread cmdheight=2 encoding=utf-8 number ruler showcmd showmode spell spellfile=~/.spell.en.add ttyfast wildmenu wrap
" unused settings
    "set linebreak
