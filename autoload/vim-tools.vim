
if exists("g:loaded_vim_tools") || &cp
    finish
endif
let g:loaded_vim_tools = 1

scriptencoding utf-8

"debug
let g:vim_debug_file = '/tmp/vim_debug'
function! g:VimDebug(msg)
    if exists("g:vim_debug_enable") && g:vim_debug_enable == 1
        execute 'redir >> ' . g:vim_debug_file
        silent echon a:msg . "\n"
        redir END
    endif
endfunction

"string 
function! g:StringTrim(string)
    let newVal = substitute(a:string, '^\s*\(.\{-}\)\s*$', '\1', '')
	return newVal
endfunction

