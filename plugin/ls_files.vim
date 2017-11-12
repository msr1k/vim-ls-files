"=============================================================================
"    Description: Provides a very simple file selection interface
"         Author: msr1k
"                 https://github.com/msr1k
"=============================================================================
scriptencoding utf-8

if exists('g:loaded_vim_ls_files')
  finish
endif
let g:loaded_vim_ls_files = 1

let s:save_cpo = &cpo
set cpo&vim


autocmd BufRead,BufNewFile .ls-files.lff setfiletype vim-ls-files

command! LsFilesOpen   call ls_files#Open()
command! LsFilesUpdate call ls_files#Update()


let &cpo = s:save_cpo
unlet s:save_cpo
