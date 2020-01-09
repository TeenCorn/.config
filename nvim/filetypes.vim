"""""""""""""""""""""
" FILETYPES
"
" Specific keybinds for build options
""""""""""""""""""""
map cfg :vsp ~/.config/nvim/init.vim<CR>
map <leader>do :vsp ~/TODO.md<CR>

" BUILDS FOR FILETYPES
autocmd Filetype markdown nnoremap <buffer> <F5> :! ~/git/Scripts/./vimpdf.sh %<CR>
autocmd Filetype html nnoremap <buffer> <F5> :! qutebrowser % &<CR>
autocmd Filetype css nnoremap <buffer> <F5> :! qutebrowser ./index.html &<CR>
autocmd Filetype asm <buffer> :let g:ale_enabled = 0
