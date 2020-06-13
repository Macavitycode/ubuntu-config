"#############################################################################
"
" My rather basic
" __      ___                    
" \ \    / (_)                   
"  \ \  / / _ _ __ ___  _ __ ___ 
"   \ \/ / | | '_ ` _ \| '__/ __|
"    \  /  | | | | | | | | | (__ 
"     \/   |_|_| |_| |_|_|  \___|
"
"#############################################################################


" Plugins (Call PlugInstall after making changes here)
"-----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'               " Shows project structure
Plug 'tpope/vim-fugitive'               " Git integration
Plug 'mbbill/undotree'                  " Gives a file changes tree
Plug 'itchyny/lightline.vim'            " Status line plugin
Plug 'valloric/youcompleteme'           " Look below
call plug#end()

" To enable YouCompleteMe go to .vim/plugged/YouCompleteMe 
" and do ./install.py


" Vim settings
"-----------------------------------------------------------------------------

syntax on                               " For syntax highlighting

" Copy the monokai.vim file from https://github.com/crusoexia/vim-monokai
" into ~/.vim/colors/monokai.vim
colorscheme monokai                     " Set colorscheme from here
set t_Co=256                            " Support 256 colours in terminal.

                                        " No comment in the following line (?)
hi Normal guibg=NONE ctermbg=NONE       
                                        " Makes background same as terminal
set noerrorbells                        " No sounds on errors
set tabstop=4 softtabstop=4 expandtab   " Sets tabs's width
set shiftwidth=4                        " Shifts 4 spaces (Indenting)(V + >)
set smartindent                         " Auto indents from indented line
set nu                                  " Shows line numbers
set number relativenumber               " Gives linenumbers relatively
set nowrap                              " Doesn't wrap text
set ignorecase                          " Disables case sensitive search
set smartcase                           " Enables case sensitive search on caps
set noswapfile                          " Disables swapfiles
set nobackup                            " Disables backups (undodir is set)
set undodir=~/.vim/undodir              " Sets undodir (make this dir)
set undofile                            " Sets undofiles for every file
set incsearch                           " Enables incremental search
set hlsearch                            " Enables highlights for searches
set path+=**                            " Allows vim to look through files


" Plugin settings
"-----------------------------------------------------------------------------

" Both of these seem to not be working
let g:NERDTree_banner=0                 " Disables NERDTree banner
let g:NERDTree_WinSize=1                " Sets NERDTree window size as %


" Status line
"-----------------------------------------------------------------------------

set laststatus=2                        " Enables statusline
set noshowmode                          " Disables mode show in command line
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" Remaps
"-----------------------------------------------------------------------------

let mapleader = " "                     " Sets <leader> key

" Jump between splits with Ctrl+(hjkl)
nnoremap <C-h> <C-w>h<CR>               
nnoremap <C-j> <C-w>j<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-l> <C-w>l<CR>

" Jump between tabs with <leader>+(np)
nnoremap <leader>n :tabn<CR> 
nnoremap <leader>p :tabp<CR>

" Toggles NERDTree with <leader>+t (adding vertical resize here)
nnoremap <leader>t :NERDTreeToggle .<CR> :vertical res -10<CR>

" Toggles Undotree with Ctrl+z
nnoremap <C-z> :UndotreeToggle<CR>

" Open vertical split with Ctrl+c
nnoremap <C-c> <C-w>v<CR>

" Close current buffer with Ctrl+x
nnoremap <C-x> :q<CR>

" Save file with Ctrl+s
nnoremap <C-s> :retab<CR>:w<CR>
imap <C-s> <Esc>:retab<CR>:w<CR>

" Removes all highlights with <esc><esc>
nnoremap <esc><esc> :let @/=""<CR>
