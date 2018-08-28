if exists('g:GtkGuiLoaded')
	call rpcnotify(1, 'Gui', 'Font', 'Fira Code 12')
	call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 0)
	call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
"	nnoremap <silent> <leader>n :call rpcnotify(1, 'Gui', 'Command', 'ToggleSidebar')<CR>
endif
