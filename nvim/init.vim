set nocompatible              " be iMproved, required
set number
set smartindent
set tabstop=4 shiftwidth=4
set expandtab
set iskeyword+=:
set wrap linebreak nolist
set tw=79


" Indentation
set softtabstop=-1
set shiftwidth=2
set expandtab
set copyindent
set preserveindent
silent! set breakindent
" Presentation
set list
set listchars=tab:▸\ ,nbsp:%,trail:\ ,extends:…,precedes:…
set fillchars=vert:│,fold:\ ,diff:⣿
set matchtime=2
set matchpairs+=<:>
set cursorline
set scrolloff=5
set splitbelow
set splitright
set previewheight=20
set noshowmode
" Completion
set wildmode=longest:full,full
set wildcharm=<c-z>
set complete+=U,s,k,kspell,d,]
set completeopt=noinsert,menuone,noselect

" Searching and movement
set nostartofline
set ignorecase
set smartcase
set infercase
set showmatch

syntax on
filetype off " required
"filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')
" Plugins
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
Plug 'matze/vim-tex-fold'

" Theme
Plug 'morhetz/gruvbox'

" Plugin: Completion and snippets

"Plug 'jiangmiao/auto-pairs'
"Plug 'ervandew/supertab'
"Plug 'Valloric/YouCompleteMe'

"Plug 'roxma/vim-hug-neovim-rpc', has('nvim') ? { 'on' : [] } : {}
Plug 'roxma/nvim-yarp'
"Plug 'Shougo/neoinclude.vim'
"Plug 'Shougo/neco-vim'
"Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-vim'
"Plug 'ncm2/ncm2-neoinclude'
"Plug 'ncm2/ncm2-rst-subscope'
"Plug 'ncm2/ncm2-markdown-subscope'
"Plug 'ncm2/ncm2-html-subscope'
"Plug 'ncm2/ncm2-vim-lsp'
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


" Formater
Plug 'Chiel92/vim-autoformat'

call plug#end()

colorscheme gruvbox

" vim-autoformat
noremap <F3> :Autoformat<CR>

"  Latex
let g:tex_flavor='latex' "Use vim-latex even when *.tex file is newcreated)
let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'nvim',
            \ 'background' : 1,
            \ 'build_dir' : '',
            \ 'callback' : 1,
            \ 'continuous' : 0,
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}
let g:tex_conceal = ''
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:polyglot_disabled = ['latex']

" Snippets
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snips"]

"if !exists('g:ycm_semantic_triggers')
"  let g:ycm_semantic_triggers = {}
"endif
"let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

noremap <c-c> <ESC>
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
"" line.
 inoremap <expr><cr> (pumvisible() ? "\<c-y>" : "\<cr>")

" Use <TAB> to select the popup menu:
"inoremap <expr><tab>   pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <expr><c-k> pumvisible() ? "\<c-p>" : "\<c-k>"

au BufEnter * call ncm2#enable_for_buffer()
au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'vimtex',
            \ 'priority': 1,
            \ 'subscope_enable': 1,
            \ 'complete_length': 1,
            \ 'scope': ['tex'],
            \ 'matcher': {'name': 'combine',
            \           'matchers': [
           \               {'name': 'abbrfuzzy', 'key': 'menu'},
            \               {'name': 'prefix', 'key': 'word'},
            \           ]},
           \ 'mark': 'tex',
            \ 'word_pattern': '\w+',
            \ 'complete_pattern': g:vimtex#re#ncm,
           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
            \ })


"" Setup deoplete

