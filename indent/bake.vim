" Vim indent file
" Language:     Bake
" Maintainer:   Felix Obenhuber <felix@obenhuber.de>
" Last Change:  19-Nov-2016
" Version:      0.1

if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal indentexpr=GetBakeIndent()

function! GetBakeIndent(...) abort
    setlocal indentkeys=o,O,<CR>,<:>,}

    if exists("*GetBakeIndent")
        finish
    endif
endfunction

let s:incIndent = '^.*{\s*$'
let s:decIndent = '^.*}\s*$'

function! GetBakeIndent(...) abort
    let clnum = a:0 ? a:1 : v:lnum
    let pnum = prevnonblank(clnum-1)
    let pindent = indent(pnum)
    let pline = getline(pnum)
    let cline = getline(clnum)

    if cline =~ s:decIndent
        if pline =~ s:incIndent
            return pindent
        else
            return pindent - shiftwidth()
        endif
    elseif pline =~ s:incIndent
        return pindent + shiftwidth()
    endif
    return pindent
endfunction
