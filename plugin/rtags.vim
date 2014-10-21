command! -nargs=* RTagsFindSymbol call rtags#run('-F', <f-args>)
command! -nargs=* RTagsFindFile call rtags#run('-K -A -P', <f-args>)

map <plug>(rtags-cursor-info) :<c-u>echo rtags#expr('-U', expand('<cword>'))<cr>
