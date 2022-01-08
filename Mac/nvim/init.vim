""Plugins section

" Plugins will be downloaded under the specified directory.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" easymotion lets me move faster in vim
Plugin 'easymotion/vim-easymotion'




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

" Theme                 
"Plugin 'haishanh/night-owl.vim'
Plugin 'lifepillar/vim-gruvbox8'

"Plugin 'glacambre/firenvim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" Defining LEADER key
nnoremap <space> <Nop>
let mapleader = "\<Space>"

inoremap <F3> <C-x><C-o>

set background=dark
colorscheme gruvbox8


"" F5 for date 
nnoremap <F5> "=strftime("%Y-%m-%d")<CR>P
inoremap <F5> <C-R>=strftime("%Y-%m-%d")<CR>

nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>
