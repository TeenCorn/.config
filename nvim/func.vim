"""""""""""""""""""""
" FUNCTIONS
"
" Functions for my convenience
"""""""""""""""""""""

" TERMINAL """""""""""""""""""""
let s:term_buf = 0
let s:term_win = 0

function! TermToggle(height)
    if win_gotoid(s:term_win)
        hide
    else
        new terminal
        exec "vertical botright split"
        exec "vertical resize ".a:height
        try
            exec "buffer ".s:term_buf
            exec "bd terminal"
        catch
            call termopen($SHELL, {"detach": 0})
            let s:term_buf = bufnr("")
            setlocal nonu nornu scl=no nocul
        endtry
        startinsert!
        let s:term_win = win_getid()
    endif
  endfunction

" BACKGROUND """""""""""""""""""""
function! ChangeBackground()
	if g:colors_name == "codedark"
		colorscheme solarized8_light_high
	else
		colorscheme codedark
	endif
endfunction
nnoremap <leader>bc :call ChangeBackground()<CR>
