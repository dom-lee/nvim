let mapleader=','

let g:python3_host_prog = "/home/dongmyeong/miniconda3/bin/python3"
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py"

syntax on

set number
set hlsearch
set ignorecase
set nowrap

" ================ TextWidth & Column Ruler ====================================
set textwidth=80
set colorcolumn=+1
:hi ColorColumn ctermbg=235 guibg=lightgrey

" ================ Tab & Space =================================================
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" ================ Plug-In =====================================================
call plug#begin('~/.config/nvim/plugged')
" airline
Plug 'vim-airline/vim-airline'
" easy alignment
Plug 'junegunn/vim-easy-align'
" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" theme
Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', {'branch': 'main'}
Plug 'sainnhe/gruvbox-material'
" nerd commenter
Plug 'scrooloose/nerdcommenter'
" nerd tree
Plug 'preservim/nerdtree'
" auto complete brackets
Plug 'jiangmiao/auto-pairs'
" highlights matching parenthesis with a rainbow of colors.
Plug 'junegunn/rainbow_parentheses.vim'
" vertical lines at indentation
Plug 'Yggdroot/indentLine'
" Auto Completion
Plug 'wbthomason/packer.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Initialize plugin system
call plug#end()

luafile ~/.config/nvim/lua/lsp.lua
luafile ~/.config/nvim/lua/nvim-cmp.lua

" ================ Plug-In Key Map =============================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"colorscheme tokyonight-night
colorscheme gruvbox-material
