" hello front end masters
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

" Always display the statusline in all windows
set laststatus=2 

" Always display the tabline, even if there is only one tab
set showtabline=2 

"Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode 

" Numbers...love numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Sets tabstop to 2 for working with YAML
set ts=2

" “softtabstop” makes spaces feel like tabs
set sts=2

" Sets the shift width to 2, making shift operations (<< or >>)
set sw=2

" Expands tabs to spaces
set expandtab

" For certain filetypes, enable automatic indenting
filetype indent plugin on

" Show column and line number
set ruler

" who dosen't like a fat curser. better indicators for mode
set guicursor=

" the way I like search displayed
set nohlsearch
set incsearch

"  Urrgg! these things.  be gone
set noerrorbells

set smartindent

" If it 's long let it be long so I'm forced to fix it
set nowrap

" Give more space for displaying messages.
"set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

set nobackup
set undodir=~/.cache/nvim/undodir
set undofile

set showmode

" Yeah! Plugins for Power
" -- Start Plugins ------------------------------------------
call plug#begin()

" Useful lua functions used ny lots of plugins
Plug 'nvim-lua/plenary.nvim' 
" nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
Plug 'nvim-lua/popup.nvim'

" Colour Scheme. I like the subtle and mellowness of this theme
Plug 'arcticicestudio/nord-vim'

" Nerdtree and extensions
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" FZF stuff
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug  'hrsh7th/nvim-cmp'    " The completion plugin
Plug 'hrsh7th/cmp-buffer'   " buffer completions
Plug 'hrsh7th/cmp-path'     " path completions
Plug 'hrsh7th/cmp-cmdline'  " cmdline completions
Plug 'saadparwaiz1/cmp_luasnip' " snippet completions

call plug#end()
"-- End Plugins ----------------------------------------------

" -- Load in plugin specific configs -------------------------

" Nerdtree 
source ~/.config/nvim/user.conf/nerdtree.vim

" Nord colour theme
source ~/.config/nvim/user.conf/nord.vim
