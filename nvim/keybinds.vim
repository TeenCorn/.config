"======================
" KEYBINDS
"======================

" Global <leader> remap to space
let mapleader = " "

" Useful <leader> remaps
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

" SCREEN MANIPULATION
nnoremap <leader>st zt
nnoremap <leader>sm z.
nnoremap <leader>sb zb
nnoremap <silent> <leader>sh :noh<CR>
nnoremap <leader> <leader>so :on<CR>

" BUFFERS
nnoremap <silent> <A-,> :bn<CR>
nnoremap <silent> <A-.> :bp<CR>

" OPEN
nnoremap <silent> <leader>ot :sp \| :terminal<CR>
nnoremap <leader>oh :sp<Space>
nnoremap <leader>ov :vsp<Space>

" LEADERF
nnoremap <silent> <leader>ff :FZF<CR>
nnoremap <silent> <leader>fh :FZF ~<CR>
nnoremap <silent> <leader>fb :Buffers<CR>

" NERD TREE
map <silent> <leader>n :NERDTreeToggle<CR>

" WINDOW MOVEMENT
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <leader>\|\| <C-W>\|\|
nnoremap <leader>== <C-W>==
