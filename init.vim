source /etc/vimrc

"autocmd BufReadPost *
"  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"  \   exe "normal! g'\"" |
"  \ endif

set modeline
set nowrap
set sidescroll=1
set scrolloff=3
set nobackup
set mouse=
set completeopt-=preview
set nofoldenable
set spellcapcheck=0
set sw=2
set ts=2
set et

set smartcase
"set smarttab
set nohlsearch

if has('nvim')
  exec 'source' expand('~/.config/nvim/nvim.vim')
  "source nvim.vim
endif
