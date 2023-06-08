""Plugins section

" Plugins will be downloaded under the specified directory.

" set the runtime path to include Vundle and initialize
"
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" easymotion lets me move faster in vim
Plugin 'easymotion/vim-easymotion'

Plugin 'junegunn/vim-easy-align'



Plugin 'jamespeapen/Nvim-R'

" Snippets are separated from the engine. Add this if you want them:
" " For vsnip users.
Plugin 'hrsh7th/cmp-vsnip'
Plugin 'hrsh7th/vim-vsnip'

" Snippets that help me complete.
Plugin 'rafamadriz/friendly-snippets'

" For luasnip users.
"Plugin 'L3MON4D3/LuaSnip'
"Plugin 'saadparwaiz1/cmp_luasnip'


Plugin 'vim-airline/vim-airline'

"" vimtex
Plugin 'lervag/vimtex'

"" lsp
Plugin 'neovim/nvim-lspconfig'

"" vim-gui-zoom
Plugin 'drzel/vim-gui-zoom'


"" telescope
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-treesitter/nvim-treesitter'

"" completion
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/nvim-cmp'

"" nerdtree
Plugin 'preservim/nerdtree'

""linter
Plugin 'dense-analysis/ale'
"Plugin 'rhysd/vim-grammarous'


" Theme                 
Plugin 'haishanh/night-owl.vim'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'projekt0n/github-nvim-theme'
Plugin 'folke/tokyonight.nvim'

"Plugin 'glacambre/firenvim'

" vim on overleaf
Plugin 'da-h/AirLatex.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" Defining LEADER key
nnoremap <space> <Nop>
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

inoremap <F3> <C-x><C-o>

set background=dark
set spell
"colorscheme tokyonight
colorscheme gruvbox8
"colorscheme github_dark
"colorscheme night-owl
hi Normal ctermbg=NONE guibg=NONE


"' type dts for timestamp
iab <expr> dts strftime("%Y-%m-%d")

"" set up vim-gui-zoom
set guifont=Hack:h12
nmap <c-+> :ZoomIn<CR>
nmap <c-=> :ZoomOut<CR>


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>

inoremap <expr> lll "\\left"
inoremap <expr> rrr "\\right"

inoremap <expr> <CR>
    \ getline('.')[col('.')-1]=='}'
    \ ? "\<CR>\<C-d>\<C-o>O" : "\<CR>"



"" neovide
let g:neovide_transparency=0.8

"" set title
" enable setting title
set title
" configure title to look like: Vim /path/to/file
set titlestring=SV:\ %-25.55F\ %a%r%m titlelen=70


" Bookdown rendering
map <silent> <LocalLeader>kb :call g:SendCmdToR("bookdown::render_book('.')")<CR>

let g:grammarous#languagetool_cmd = 'languagetool'
nmap <leader>x <Plug>(grammarous-close-info-window)
nmap <c-p> <Plug>(grammarous-move-to-previous-error)
let g:grammarous#disabled_rules = {
    \ '*' : ['WHITESPACE_RULE', 'EN_QUOTES', 'ARROWS', 'SENTENCE_WHITESPACE',
    \        'WORD_CONTAINS_UNDERSCORE', 'COMMA_PARENTHESIS_WHITESPACE',
    \        'EN_UNPAIRED_BRACKETS', 'UPPERCASE_SENTENCE_START',
    \        'ENGLISH_WORD_REPEAT_BEGINNING_RULE', 'DASH_RULE', 'PLUS_MINUS',
    \        'PUNCTUATION_PARAGRAPH_END', 'MULTIPLICATION_SIGN', 'PRP_CHECKOUT',
    \        'CAN_CHECKOUT', 'SOME_OF_THE', 'DOUBLE_PUNCTUATION', 'HELL',
    \        'CURRENCY', 'POSSESSIVE_APOSTROPHE', 'ENGLISH_WORD_REPEAT_RULE',
    \        'NON_STANDARD_WORD'],
    \ }
