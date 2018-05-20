"Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'skielbasa/vim-material-monokai'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/space-vim-dark'
Plug 'Valloric/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Harenome/vim-mipssyntax'
Plug 'tomasiser/vim-code-dark'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'lifepillar/vim-solarized8'
Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'
" Initialize plugin system
call plug#end()

""" Mundane
" set background=light
set termguicolors
set encoding=utf-8

""" Theme
colorscheme codedark
let g:materialmonokai_suble_spell=1
let g:airline_theme = 'deus'
let g:airline#extensions#tabline#enabled = 1


""" Basic airline stuff

""" BASIC
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
set tabstop=4
set shiftwidth=4

" Global <leader> remap to space
" Useful <leader> remaps
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><leader>q :q!<CR>
nnoremap <leader>ss :so %<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>d :tabn<CR>
nnoremap <leader>a :tabp<CR>
nnoremap <leader>t :tabe<Space>
nnoremap <leader>bd :bdelete<CR>
" Screen Manipulation
nnoremap <leader>st zt
nnoremap <leader>sm z.
nnoremap <leader>sb zb
nnoremap <leader>sh :noh<CR>
nnoremap <leader>so :on<CR>
" Open
nnoremap <leader>ot :sp \| :terminal<CR>
nnoremap <leader>oh :sp<Space>
nnoremap <leader>ov :vsp<Space>
" Nerd Tree
map <leader>n :NERDTreeToggle<CR>
" Background
function! ChangeBackground()
	if g:colors_name == "codedark"
		colorscheme solarized8_light_high
	else
		colorscheme codedark
	endif
endfunction
nnoremap <leader>bc :call ChangeBackground()<CR>

" Window Movement
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Play nicely please, YCM and Ultisnips
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '*'
"let g:ycm_global_ycm_extra_conf = '/home/teencorn/.local/share/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_max_diagnostics_to_display = 100
let g:ycm_autoclose_preview_window_after_completion = 1
" YCM shortcuts
nnoremap <leader>yf :YcmCompleter FixIt<CR>
nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yt :YcmCompleter GetType<CR>
nnoremap <leader>yd :YcmDebugInfo<CR>
nnoremap <leader>yr :YcmRestart<CR>

" ALE symbols
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '∙'

" Move to nvim conf
map cfg :vsp ~/.config/nvim/init.vim<CR>

" Different build process for different filetypes
autocmd Filetype markdown nnoremap <F5> :! ~/scripts/./vimpdf.sh %<CR>
autocmd Filetype html nnoremap <F5> :! ~/scripts/./mview.sh %<CR>
autocmd Filetype cpp nnoremap <F5> :! cd build && cmake .. \| make && .././gdbserver.sh<CR>
autocmd Filetype cpp :let g:ale_enabled = 0
autocmd Filetype asm :let g:ale_enabled = 0

set fillchars=vert:┃
