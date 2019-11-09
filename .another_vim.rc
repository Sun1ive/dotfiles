call plug#begin('~/.vim/plugged')

"folder tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
"color schemas
Plug 'tomasiser/vim-code-dark'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'Quramy/tsuquyomi'

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
set cursorline
set number
set textwidth=120

" coc install
set cmdheight=2
set updatetime=100
set nobackup
set nowritebackup


nmap gt :YcmCompleter GoTo <CR>
nmap gtr :YcmCompleter GoToReferences <CR>
nmap <C-b> :NERDTreeToggle <CR>

"mappings
nmap <C-s> :Prettier<CR> :w<CR>
map <S-tab> :tabn <CR>

"MY CUSTOM MAPPINGS
"NERD comments
map <C-l> <Plug>NERDCommenterToggle <CR>
map <C-k> Sfconsole.log<CR>

"Не в список плагинов
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode