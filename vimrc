"My sample .vmrc file
"-------- Configure syntax highlighting
"possible cterm colours:
"black, blue, cyan, gray, green, magenta, red, white, yellow
"
"possible cterm gui and terminal settings
"bold, underline, reverse, italic, none
"
colo elflord

" ----------- Other vim configuration commands -----------

" enable syntax highlighting
syntax on

"Show editing mode on the last line
set showmode

"Tell vim to keep a backup
set backup

"tell vim where to put its backup file
set backupdir=/home/pkershaw/Documents/vimstuff

"Tell vim where to put the swap files
set dir=/home/pkershaw/Documents/vimstuff

"-------------------- Emmet Config----------------
"--Redefine trigger key to make it easier to use Emmet
"
let g:user_emmet_leader_key=','

"-------------------- Common vim commands

"Set tab stops
set tabstop=4

"Set red line at right edge of text area
set colorcolumn=80

"autoindent
set autoindent

"Show line numbers
set number

"highlight matching search strings
set hlsearch

"make searches insensitive
set ignorecase

"show the editing mode on last line
set showmode

"Added to get lightline to work
set laststatus=2
set noshowmode

"Added to use Nerdtree with <C-n> for open and close tree
" Move Nerdtree to the right
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>

"----------------------------------------------------------
"Added to tell Vim-Notes where to save notes file
let g:notes_directories = ['~/Documents/notes']
"---------------------------------------------------------
"  Add plugins using vim-plug
" To install - type :PlugInstall
"Specify a directory for plugins

call plug#begin('~/.vim/plugged')
   Plug 'https://github.com/itchyny/lightline.vim'
   Plug 'https://github.com/jiangmiao/auto-pairs'
   Plug 'https://github.com/scrooloose/nerdtree'
   Plug 'mattn/emmet-vim'
   Plug 'https://github.com/xolox/vim-notes.git'
   Plug 'https://github.com/xolox/vim-misc.git'
call plug#end()

