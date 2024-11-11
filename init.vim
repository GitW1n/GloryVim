augroup MyAutoCommands
    autocmd!
    autocmd BufLeave * if &modified | :w | endif 
    " Highlight the current line when entering a buffer
    autocmd BufEnter * setlocal cursorline
augroup END

