" ############################  Abbreviations  ############################

" Insert current date.
iab <expr> ddate strftime("%m/%d/%Y")
iab <expr> sdate strftime("*%m/%d/%Y*")
" Mark as done/skip and move to bottom of block.
iab d: Done: <Esc>ddk}P{jj
iab s: Skip: <Esc>ddk}P{jj
