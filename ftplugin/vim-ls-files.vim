"=============================================================================
"    Description: Provides a very simple file selection interface
"         Author: msr1k
"                 https://github.com/msr1k
"=============================================================================
scriptencoding utf-8

let s:save_cpo = &cpoptions
set cpoptions&vim

nnoremap <buffer> <cr> Vgf

let &cpoptions = s:save_cpo
unlet s:save_cpo

