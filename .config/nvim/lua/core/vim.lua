vim.cmd([[
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>
    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>
    vnoremap <C-c> "*y :let @+=@*<CR>
    map <C-p> "+P
    let g:coq_settings = { 'display.icons.mode': 'none' }
]])
