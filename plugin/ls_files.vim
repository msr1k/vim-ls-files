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

let s:save_cpo = &cpoptions
set cpoptions&vim


augroup vim-ls-files
  autocmd!
  autocmd BufRead,BufNewFile .ls-files.lff setfiletype vim-ls-files
augroup END

command! LsFilesOpen   call ls_files#Open()
command! LsFilesUpdate call ls_files#Update()


let &cpoptions = s:save_cpo
unlet s:save_cpo

