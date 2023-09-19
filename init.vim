let mapleader=','

let g:python3_host_prog = "/home/dongmyeong/miniconda3/bin/python3"
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py"

syntax on

set number
set hlsearch
set ignorecase

" ================ TextWidth & Column Ruler ============================
set textwidth=0
set colorcolumn=80
:hi ColorColumn ctermbg=235 guibg=lightgrey

set wrap
set linebreak

" ================ Tab & Space =========================================
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" ================ Plug-In =============================================
call plug#begin('~/.config/nvim/plugged')
" vimtex
Plug 'lervag/vimtex'
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
" Autocompletion coc-nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Initialize plugin system
call plug#end()

" ================ Plug-In Key Map =============================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"colorscheme tokyonight-night
colorscheme gruvbox-material


" ================ VimTex ======================================================
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'general'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

let g:vimtex_syntax_conceal_disable = 1
