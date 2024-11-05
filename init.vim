augroup MyAutoCommands
    autocmd!
    autocmd BufLeave * if &modified | :w | endif
augroup END
" This starts a new autocommand group named MyAutoCommands.
