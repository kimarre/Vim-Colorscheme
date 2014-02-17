syntax on
filetype on
set nu
set synmaxcol=2048

" Show highlighting groups for the current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
   if !exists("*synstack")
      return
   endif
   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


set tabstop=3 
set shiftwidth=3 
set expandtab
set smarttab
set mouse=a

autocmd FileType make setlocal noexpandtab

set ai "auto indent
set si "smart indent
set wrap "wrap lines

set hlsearch "highlight search things
highlight COMMENT ctermfg=darkgrey


set nowrap
if exists('+colorcolumn')
   set cc=80
endif

inoremap jk     <ESC>

if &term =~ '256color'
    set t_ut=
endif

colorscheme C_Sublime
