" File: commaobject.vim
" Author: Austin Taylor
" Version: 0.1
" License: Distributable under the same terms as Vim itself (see :help license)
" Description: 
"   This text object supports manipulating comma-delimited lists, such as
"   argument lists, array literals, and hash literals.

if (exists("g:loaded_commaobject" && g:loaded_commaobject)
  finish
endif
let g:loaded_commaobject = 1

onoremap <silent>a, :<C-u>call CommaTextObject(0)<CR>
onoremap <silent>i, :<C-u>call CommaTextObject(1)<CR>
vnoremap <silent>a, :<C-u>call CommaTextObject(0)<CR><Esc>gv
vnoremap <silent>i, :<C-u>call CommaTextObject(1)<CR><Esc>gv

function! CommaTextObject(inner)
  let found = search(",", "bc", line("."))
  if !found
    let found = search("(", "bc", line("."))
    if !found
      let found = search("[", "bc", line("."))
    endif
    if found
      normal! lv
      if a:inner
        let found = search(",", "", line("."))
        normal! h
      else
        let found = search(", ", "e", line("."))
        if !found
          let found = search(",", "", line("."))
        endif
      endif
    endif
  else
    if a:inner
      normal! w
    endif
    normal! v
    let found = search(",", "", line("."))
    if !found
      let found = search(")", "", line("."))
    endif
    if !found
      let found = search("]", "", line("."))
    endif
    if !found
      let found = search(" do", "", line("."))
    endif
    normal! h
  endif
endfunction


