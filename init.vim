"My sample .vmrc file
"-------- Configure syntax highlighting
"possible cterm colours:
"black, blue, cyan, gray, green, magenta, red, white, yellow
"
"possible cterm gui and terminal settings
"bold, underline, reverse, italic, none
"
" <leader> = \
"
" <leader> c = toggle line highlighting
"
"
color elflord
set t_Co=256
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
"set tabstop=4

"autoindent
"set autoindent

" setup python_pep8
let g:loaded_python_provider = 0       " Disable python2"
let g:python3_host_prog = '/usr/bin/python3.8'
let g:python_pep8_indent_hang_closing = 1
"let g:python_pep8_indent_multiline_string = 0

"Set red line at right edge of text area
" set colorcolumn=80

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

" Setup wildmenu - use in command mode (:)
" <tab> to show menu of options
" left, right arrow to navigate ,enu
set wildmenu
set wildmode=longest:full,full

" Added to try and get colour of lightline to colour correct in tmux
"set term=screen-256color

" Added to use Nerdtree with <C-n> for open and close tree
" Move Nerdtree to the right
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle ~/<CR>

" added to enable line highlighting

set cursorline
:hi CursorLine   cterm=NONE ctermbg=8 ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline!<CR>

"
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
   Plug 'https://github.com/xolox/vim-misc'
   Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
   Plug 'https://github.com/Vimjas/vim-python-pep8-indent'
call plug#end()

