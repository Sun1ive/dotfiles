call plug#begin('~/.vim/plugged')

"folder tree
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'airblade/vim-gitgutter'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-devicons'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
"color schemas
Plug 'tomasiser/vim-code-dark'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', { 'do': 'npm install' }
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-surround'



call plug#end()

set encoding=utf-8

colorscheme codedark
filetype off
syntax on

set t_Co=256
set t_ut=
set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
set wildignore+=*/node_modules/*,*/dist/*,*/__pycache__/*,*/distribution/*
set nocompatible
set wildmenu
set background=dark
set tabstop=2
set hlsearch
set incsearch
set wrap linebreak nolist
set cursorline
set textwidth=120
set number

" coc install
set cmdheight=3
set updatetime=100
set nobackup
set nowritebackup
set hidden
set showcmd
set signcolumn=yes

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
		\ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
		\ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')


"mappings
nmap <C-s> :Prettier<CR> :w<CR>
map <S-tab> :tabn <CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd CursorHold * silent call CocActionAsync('highlight')

"inoremap <expr> <Tab>  pumvisible() ? "\<C-n>" : "\<Tab>"

"MY CUSTOM MAPPINGS
"NERD comments
map <C-l> <Plug>NERDCommenterToggle <CR>
map <C-k> Sfconsole.log<CR>

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-vetur', 'coc-css', 'coc-emmet', 'coc-eslint']

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode