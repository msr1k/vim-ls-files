"=============================================================================
"    Description: Provides a very simple file selection interface
"         Author: msr1k
"                 https://github.com/msr1k
"=============================================================================
scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

nnoremap <buffer> <cr> $v0gf

let &cpo = s:save_cpo
unlet s:save_cpo

