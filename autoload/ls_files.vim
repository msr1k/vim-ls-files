scriptencoding utf-8

let s:save_cpo = &cpoptions
set cpoptions&vim

let s:filename = '.ls-files.lff'

function! s:Create()
  if !filereadable( s:filename )
    call ls_files#Update()
  endif
endfunction

function! ls_files#Open()
  call s:Create()
  let cmd = ':e ' . s:filename
  execute cmd
endfunction

function! ls_files#Update()
  let cmd = ':!git ls-files > ' . s:filename
  silent execute cmd
endfunction


let &cpoptions = s:save_cpo
unlet s:save_cpo
