set nocompatible              " be iMproved, required
set number
set smarttab
set smartindent
set tabstop=4 shiftwidth=4
set expandtab
set iskeyword+=:
set wrap linebreak nolist
set tw=79

syntax on    
filetype off " required

call plug#begin('~/.vim/plugged')
" Plugins
Plug 'lervag/vimtex'
" Snippet engine
Plug 'SirVer/ultisnips'
" Snippets
Plug 'honza/vim-snippets'

call plug#end()

"  Latex
let g:tex_flavor='latex' "Use vim-latex even when *.tex file is newcreated)
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" Snippets
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snips"]
