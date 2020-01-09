" PLUGINS """""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Harenome/vim-mipssyntax'
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
Plug 'ryanoasis/vim-devicons'
Plug 'equalsraf/neovim-gui-shim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Colorschemes
Plug 'chase/focuspoint-vim'
Plug 'scolsen/hara'
Plug 'liuchengxu/space-vim-theme'
Plug 'lifepillar/vim-solarized8'
call plug#end()

" BUILT-IN OPTS """""""""""""""""""""
syntax on
set nu
set rnu
set incsearch
set cursorline
set ruler
set autoindent
set laststatus=2
set pastetoggle=<F2>
set hlsearch
set ignorecase
set smartcase
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set fillchars=vert:┃
set list lcs=tab:▏\ ,trail:•
set mouse=ni
set cmdheight=2
set termguicolors
set encoding=utf-8
 " Theme
set background=light
colorscheme solarized8

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

source ~/.config/nvim/keybinds.vim
source ~/.config/nvim/3rd_party_opts.vim
source ~/.config/nvim/filetypes.vim
source ~/.config/nvim/func.vim
