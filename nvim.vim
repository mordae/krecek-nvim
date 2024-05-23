execute pathogen#infect()

colorscheme vim

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/

au FileType python setlocal ts=4 sw=4 et
au FileType c setlocal ts=8 sw=8 noet
au FileType asciidoctor setlocal wrap lbr iskeyword+=-

au BufRead,BufNewFile */templates/*.html set filetype=htmldjango

autocmd BufNewFile *.h       0r ~/.vim/template/h
autocmd BufNewFile *.html    0r ~/.vim/template/html5
autocmd BufNewFile *.mk      0r ~/.vim/template/make
autocmd BufNewFile Makefile  0r ~/.vim/template/make
autocmd BufNewFile *.hs      0r ~/.vim/template/hs
autocmd BufNewFile *.adoc    0r ~/.vim/template/adoc

autocmd BufNewFile,BufRead *.pio setfiletype pioasm

highlight Pmenu ctermbg=235 guibg=black
highlight Pmenu ctermfg=white guifg=white
highlight PmenuSel ctermbg=235 guibg=black
highlight PmenuSel ctermfg=yellow guifg=yellow

" For Pandoc
let g:pandoc#spell#enabled=0
let g:pandoc#modules#disabled=["bibliographies"]
let g:jsx_ext_required = 0

" How many files / lines to remember.
set viminfo='20,<1000,s100

lua require("init")

" EOF
