" Insert current date.
iab <expr> ddate strftime("%m/%d/%Y")
iab <expr> ldate strftime("%m/%d")
iab <expr> sdate strftime("*%m/%d/%Y*")
iab <expr> mdate strftime("## %m/%d/%Y ##")
" Mark as done/skip and move to bottom of block.
iab d: Done: <Esc>ddk}P{jj
iab s: Skip: <Esc>ddk}P{jj

" Quick way to make a dash.
imap uu -

" Command to set syntax to txt manually.
command! Txt set syntax=txt
