filetype plugin on

let g:mapleader = ","           "set leader key to comma

set number                      "line numbers
set hlsearch                    "highlight searching result
set ignorecase                  "ignore Case sensitive when searching
set showmatch                   "highlight matched bracket ()

"================================= Optional setting =================================
                                "Highly recommended
set history=1000                "store :cmd history
set title                       "change the terminal title
set cursorline                  "highlight cursor line
set mouse=h                     "Enable mouse in help mode
                               "'a' to all mode, n, v, i, c to Normal, Visual, Insert, Command mode
set wrap

syntax sync minlines=200        "For speed up vim
set clipboard=unnamed           "yank, paste to system clipboard

" Turn of Swap
set noswapfile
set nobackup
set nowb

" Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"================================= Tap & Space ======================================
nmap <leader>l <Esc>:set list!<CR>
highlight SpecialKey cterm=None ctermfg=grey
map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>
set listchars=tab:>·
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
set fillchars+=vert:\│          "Make vertical split separator full line
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set title
set wrap
set linebreak
set showmatch                            
set mouse=r
set laststatus=2
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'       
let g:coc_snippet_next = '<tab>'
let g:rehash256 = 1

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" ================================ Persistent Undo ===================================
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" ================================ Auto command ===================================

autocmd InsertEnter * :set nocul                  "Remove cursorline highlight
autocmd InsertLeave * :set cul                    "Add cursorline highlight in normal mode
autocmd FileType html setlocal sw=2 ts=2 "Set indentation to 4 for html, css, scss, js
autocmd FileType css setlocal sw=2 ts=2
autocmd FileType scss setlocal sw=2 ts=2
autocmd FileType js setlocal sw=2 ts=2
autocmd FileType py setlocal sw=4 ts=4
"----------------------------------------------------------------------------------
"-- plugins
"----------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvie/vim-flake8'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
 
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
 
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }
" Plug 'Valloric/YouCompleteMe'
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*'  }
"
"" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
 
" Unmanaged plugin (manually installed and updated)
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter' "추가,삭제,변경내역
Plug 'tpope/vim-fugitive' "깃 연동
 
"Plug 'scrooloose/syntastic' "문법 체크
 
Plug 'scrooloose/nerdcommenter' "주석
Plug 'edkolev/promptline.vim' "쉘프롬프트
 
Plug 'vim-scripts/vcscommand.vim' "소스 버전 컨트롤
 
Plug 'Yggdroot/indentLine' "들여쓰기 세로줄 라인
Plug 'mhinz/vim-signify' "버전 관리 파일 상태표시
Plug 'jiangmiao/auto-pairs'
Plug 'peterrincker/vim-argumentative' "함수 인자 위치변경
 
Plug 'tommcdo/vim-lion' "라인정렬
Plug 'dyng/ctrlsf.vim' "여러 파일 동시에 수정

Plug 'schickling/vim-bufonly' "현재 버퍼뺴고 모든 버퍼 삭제
Plug 'sjl/gundo.vim' "수정 되돌리기 트리

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

" Plugins setting
nmap <F3> :NERDTreeToggle<CR>

"change parameter position
nnoremap <c-a> :SidewaysLeft<cr>
nnoremap <c-s> :SidewaysRight<cr>
 
nmap<F10> :SingleCompileRun<cr>
nmap<F9> :SingleCompile<cr>
 
let g:Tlist_Use_Right_Window = 1
nnoremap <silent> <F4> :TlistToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"ycm
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"coc nvim
let g:python3_host_prog="/Users/dongmyeong/opt/miniconda3/bin/python"

"let g:coc_global_extensions = ['coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-emmet', 'coc-pyright', 'coc-phpls', 'coc-angular', 'coc-git']
"let g:coc_global_extensions += ['https://github.com/andys8/vscode-jest-snippets']

" vim-airline
""""""""""""""""""""""""""""""""""
let g:airline_theme = 'onedark'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>>>'
let g:airline#extensions#default#layout = [['a','b'],['c']]

" Theme
let g:onedark_termcolors=256
colorscheme onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
