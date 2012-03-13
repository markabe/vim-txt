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
syn match txtProject /[_a-zA-Z]*=/
syn match txtComment /#[^#]\+#\?/
syn match txtH1 /#\s.*\s#/
syn match txtH2 /##\s.*\s##/
syn match txtH3 /###\s.*\s###/
syn match txtQuestion /?.*/
syn match txtDependency /\[.*]\s\?/
syn match txtPositive /+\w.*/
syn match txtNegative /$.*/
syn match txtTodo /^.[T|t]odo./
syn match txtCommand /$\s.*/
syn match txtDone /-Done:.*/
syn match txtSkip /-Skip:.*/
syn match txtMiss /-Miss:.*/

hi def link txtTitle Type
hi def link txtSection1 Identifier
hi def link txtSection2 Identifier
hi def link txtSubsection Underlined
hi def link txtProject Underlined
hi def link txtComment Comment
hi def link txtH1 Type
hi def link txtH2 Identifier
hi def link txtH3 Constant
hi def link txtQuestion Constant
hi def link txtDependency Include
hi def link txtPositive Keyword
hi def link txtTodo Todo
hi def link txtNegative Special
hi def link txtCommand Comment
hi def link txtDone Comment
hi def link txtSkip Comment
hi def link txtMiss Comment

let b:current_syntax="txt"
