scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

let s:filename = ".ls-files.lff"

function! s:Create()
  if !filereadable( s:filename )
    call ls_files#Update()
  endif
endfunction

function! ls_files#Open()
  call s:Create()
  let cmd = ":e " . s:filename
  execute cmd
endfunction

function! ls_files#Update()
  let cmd = ""
  let cmdline = ""
  if executable('git')
    silent execute "!git rev-parse --git-dir"
    if v:shell_error == 0
      let cmd = "git"
      let cmdline = "git ls-files"
    endif
  endif
  " if cmd == "" && executable('svn')
  "   let cmd = "svn"
  "   let cmdline = "svn list -R"
  " endif
  if cmd == "" && executable('dir')
    let cmd = "dir"
    let cmdline = "dir /s /b /a-d"
  endif
  if cmd == "" && executable('find')
    let cmd = "find"
    let cmdline = "find **/* -type f"
  endif
  if cmd != ""
    let cmd = ":!echo [listed by " . cmd . "] > " . s:filename
    let cmdline = ":!" . cmdline . " >> " . s:filename
    silent execute cmd
    silent execute cmdline
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
