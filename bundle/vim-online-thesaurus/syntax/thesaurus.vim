" Vim plugin for looking up words in an online thesaurus
" Author:       Anton Beloglazov <http://beloglazov.info/>
" Version:      0.1.7
" Original idea and code: Nick Coleman <http://www.nickcoleman.org/>

if exists("b:current_syntax")
    finish
endif

" Setup
syntax case match
setlocal iskeyword+=:

" Entry name rules
syntax match thesMainEntry /Main entry: */ contained
syntax keyword thesDefinition Definition:
syntax keyword thesSynonyms Synonyms:

" Entry contents rules
syntax region thesMainWord start=/Main entry:/  end=/$/ contains=CONTAINED keepend

" Highlighting
hi link thesMainEntry  Keyword
hi link thesDefinition Keyword
hi link thesSynonyms   Keyword
hi thesMainWord        term=bold cterm=bold gui=bold

let b:current_syntax = "thesaurus"
