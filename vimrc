syntax on

let mapleader = " "

set termguicolors
set relativenumber
set linebreak
set showbreak=+++
set textwidth=100
set showmatch	
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start


" HEXOKINASE

let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

""" All possible values
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

" Filetype specific patterns to match
" entry value must be comma seperated list
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }


" Schemes

colorscheme molokai

" REMAPS

nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F2> :HexokinaseToggle<CR>
nnoremap <F4> :PreviewMarkdown right<CR>

" PLUGINS

call plug#begin('~/.vim/plugged')
    
    " Goyo
    Plug 'junegunn/goyo.vim'
    
    " NERDTree
    Plug 'preservim/nerdtree'
    
    " Powerline
    Plug 'bling/vim-airline'

    " Markdown
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'skanehira/preview-markdown.vim'
    
    "Hexo
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase'}

call plug#end()

" AUTOCMDs

""" Treat all .md files as markdown

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown Goyo

