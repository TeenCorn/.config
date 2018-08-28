"Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Harenome/vim-mipssyntax'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'sts10/vim-pink-moon'
Plug 'tomasiser/vim-code-dark'
Plug 'lifepillar/vim-solarized8'
Plug 'nightsense/strawberry'
Plug 'soft-aesthetic/soft-era-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ryanoasis/vim-devicons'
Plug 'equalsraf/neovim-gui-shim'
" Initialize plugin system
call plug#end()

""" Mundane
set termguicolors
set encoding=utf-8

""" Theme
colorscheme orange-moon
let g:materialmonokai_suble_spell=1
let g:monochrome_italic_comments = 1
let g:airline_theme = 'deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

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
set noshowmode
set fillchars=vert:┃

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Global <leader> remap to space
" Useful <leader> remaps
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><leader>q :q!<CR>
nnoremap <silent> <leader>ss :so %<CR>
nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>dd :tabn<CR>
nnoremap <silent> <leader>aa :tabp<CR>
nnoremap <leader>t :tabe<Space>
nnoremap <silent> <leader>bd :bdelete<CR>
" Screen Manipulation
nnoremap <leader>st zt
nnoremap <leader>sm z.
nnoremap <leader>sb zb
nnoremap <silent> <leader>sh :noh<CR>
nnoremap <leader> <leader>so :on<CR>
" Open
nnoremap <silent> <leader>ot :sp \| :terminal<CR>
nnoremap <leader>oh :sp<Space>
nnoremap <leader>ov :vsp<Space>
"LeaderF
nnoremap <silent> <leader>ff :FZF<CR>
" Nerd Tree
map <silent> <leader>n :NERDTreeToggle<CR>
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
nnoremap <leader>hh <C-W><C-H>
nnoremap <leader>ll <C-W><C-L>
nnoremap <leader>jj <C-W><C-J>
nnoremap <leader>kk <C-W><C-K>
nnoremap <leader>\|\| <C-W>\|\|
nnoremap <leader>== <C-W>==

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Play nicely please, YCM and Ultisnips
let g:ycm_key_list_select_completion = ['<C-J>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-K>', '<Up>']
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '*'
"let g:ycm_global_ycm_extra_conf = '/home/teencorn/.local/share/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_max_diagnostics_to_display = 50
let g:ycm_confirm_extra_conf = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
" YCM shortcuts
nnoremap <leader>yf :YcmCompleter FixIt<CR>
nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yt :YcmCompleter GetType<CR>
nnoremap <leader>yd :YcmDebugInfo<CR>
nnoremap <leader>yr :YcmRestart<CR>

" LSP mappings
nnoremap <silent> <leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <leader>ld :sp \| :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>lr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <leader>ln :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <leader>la :call LanguageClient#textDocument_codeAction()<CR>

" ALE symbols
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '∙'

" Move to nvim conf
map cfg :vsp ~/.config/nvim/init.vim<CR>

" Different build process for different filetypes
autocmd Filetype markdown nnoremap <buffer> <F5> :! ~/scripts/./vimpdf.sh %<CR>
autocmd Filetype html nnoremap <buffer> <F5> :! ~/scripts/./mview.sh %<CR>

call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)
if executable('cquery')
	let g:LanguageClient_serverCommands = {
		\ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
		\ 'c': ['cquery', '--log-file=/tmp/cq.log'],
		\ }
	let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
	let g:LanguageClient_settingsPath = '/home/teencorn/.config/nvim/settings.json'
	set formatexpr=LanguageClient_textDocument_rangeFormatting()
	autocmd Filetype cpp nnoremap <buffer> <silent> <F5> :! cd build && cmake .. \| make && nemiver bin/a.out<CR>
	autocmd Filetype cpp :let g:ale_enabled = 0
	autocmd Filetype cpp setlocal completefunc=LanguageClient#complete
endif

" Option for specific files
autocmd Filetype asm <buffer> :let g:ale_enabled = 0
