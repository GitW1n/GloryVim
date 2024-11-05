augroup MyAutoCommands
    autocmd!
    autocmd BufLeave * if &modified | :w | endif
augroup END

