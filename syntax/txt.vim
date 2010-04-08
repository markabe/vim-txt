" Vim syntax file
" Language: Txt
" Author:   Mark Bennett
" Filenames: *.txt

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match txtTitle /^++.*/
syn match txtSection1 /^\*.*\*/
syn match txtSection2 /\[.*]\n/
syn match txtSubsection /^=.*/
syn match txtComment /#.*/
syn match txtQuestion /?.*/
syn match txtDependency /\[.*]\(\s\)/
syn match txtPositive /+\w.*/
syn match txtNegative /$.*/
syn match txtDone /-Done:.*/
syn match txtSkip /-Skip:.*/
syn match txtBookmark /^\s*\*[^\*]*$/

hi def link txtTitle Identifier
hi def link txtSection1 String
hi def link txtSection2 String
hi def link txtSubsection Constant
hi def link txtComment Comment
hi def link txtQuestion Preproc
hi def link txtDependency Keyword
hi def link txtPositive Special
hi def link txtNegative Exception
hi def link txtDone Type
hi def link txtSkip Type
hi def link txtBookmark Error

let b:current_syntax="txt"
