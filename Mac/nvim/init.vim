""Plugins section

" Plugins will be downloaded under the specified directory.

" set the runtime path to include Vundle and initialize
"
call plug#begin()

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

" easymotion lets me move faster in vim
Plug 'easymotion/vim-easymotion'


" Snippets are separated from the engine. Add this if you want them:
" " For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Snippets that help me complete.
Plug 'rafamadriz/friendly-snippets'

" For luasnip users.
"Plug 'L3MON4D3/LuaSnip'
"Plug 'saadparwaiz1/cmp_luasnip'


Plug 'vim-airline/vim-airline'

"" vimtex
Plug 'lervag/vimtex'

"" lsp
Plug 'neovim/nvim-lspconfig'

"" vim-gui-zoom
Plug 'drzel/vim-gui-zoom'


"" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

"" completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"" nerdtree
Plug 'preservim/nerdtree'

""linter
Plug 'dense-analysis/ale'

" Theme                 
Plug 'haishanh/night-owl.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'projekt0n/github-nvim-theme'
Plug 'folke/tokyonight.nvim'

"Plug 'glacambre/firenvim'

" vim on overleaf
Plug 'da-h/AirLatex.vim'



" All of your Plugins must be added before the following line
call plug#end()            " required
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



nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>

inoremap <expr> lll "\\left"
inoremap <expr> rrr "\\right"

inoremap <expr> <CR>
    \ getline('.')[col('.')-1]=='}'
    \ ? "\<CR>\<C-d>\<C-o>O" : "\<CR>"


"" Overleaf username
let g:AirLatexUsername="cookies:overleaf_session2=s%3A_5uJQCTlhxpSR84cVtqwE97EQ4Z4am8z.WqxEhKVMWkgu6jXTlNo8cc8DB4X2i%2B%2Br2ActouNDqYg"
"let g:AirLatexUsername="tsvan@upenn.edu"
let g:AirLatexLogLevel="DEBUG"
nmap <leader>a :AirLatex<CR>

"" neovide
let g:neovide_transparency=0.8

"" set title
" enable setting title
set title
" configure title to look like: Vim /path/to/file
set titlestring=SV:\ %-25.55F\ %a%r%m titlelen=70

