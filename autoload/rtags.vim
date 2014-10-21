function! rtags#expr(opts, arg)
  let ret = split(system(printf('rc --current-file="%s" %s "%s"', expand('%:p'), a:opts, a:arg)), "\n")
  if v:shell_error
    return []
  endif
  return ret
endfunction

function! rtags#run(opts, ...)
  let arg = join(a:000, ' ')
  if len(a:000) == 0
    let arg = input("RTags: ")
    if len(arg) == 0
      exit
    endif
  endif
  cexpr rtags#expr(opts, arg)
endfunction
