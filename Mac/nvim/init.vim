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

" Snippets that help me complete.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'vim-airline/vim-airline'

"" vimtex
Plugin 'lervag/vimtex'

"" lsp
Plugin 'neovim/nvim-lspconfig'

"" completion
Plugin 'nvim-lua/completion-nvim'


" Theme                 
"Plugin 'morhetz/gruvbox'    
Plugin 'haishanh/night-owl.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" Defining LEADER key
nnoremap <space> <Nop>
let mapleader = "\<Space>"

inoremap <F3> <C-x><C-o>

colorscheme night-owl

lua require'lspconfig'.texlab.setup{on_attach=require'completion'.on_attach}


