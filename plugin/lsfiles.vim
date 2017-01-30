"=============================================================================
"    Description: Provides a very simple file selection interface
"         Author: msr1k
"                 https://github.com/msr1k
"=============================================================================
scriptencoding utf-8

let s:filename = "ls-files.lff"

function! s:LsFilesCreate()
  if !filereadable( s:filename )
    call s:LsFilesUpdate()
  endif
endfunction

function! s:LsFilesOpen()
  call s:LsFilesCreate()
  let cmd = ":e " . s:filename
  execute cmd
endfunction

function! s:LsFilesUpdate()
  let cmd = ":!git ls-files > " . s:filename
  silent execute cmd
endfunction

command! LsFilesOpen   call s:LsFilesOpen()
command! LsFilesUpdate call s:LsFilesUpdate()
