""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: .vimrc                                                         "
" Maintainer: Sam Shleifer  <sshleifer@gmail.com>                 "
"        URL: http://github.com/sshlefier/dotfiles                     "
"                                                                            "
"                                                                            "
" Sections:                                                                  "
"   01. Plugins ................. using vundle                               "
"   02. python .................. General autocmd events                     "
"   03. Vim options ............ Colors, fonts, etc.                         "
"   04. Vim mappings  .................. User interface behavior             "
"   05. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
set backspace=indent,eol,start
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'  " New line!!
"Plugin 'Valloric/YouCompleteMe'
" Above requires lots of work
" Plugin 'klen/python-mode'
Plugin 'tmhedberg/SimpylFold'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
" Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround.git'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. python                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre *.py :%s/\s\+$//e  " Delete trailing whitespace in python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 sts=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Vim Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set smartindent
set wrap

filetype plugin on
set ignorecase
set wildmenu
set number
set confirm
set noerrorbells
set tags=~/tags
"set visualbell
"FOLDING
set hidden
" set foldmethod=indent
set foldlevelstart=1
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 1
let g:SimpylFold_fold_docstring = 1


set history=64   " keep 64 lines of command line history
set ruler    " show the cursor position all the time
set showcmd  " display incomplete commands
"set incsearch   " do incremental searching

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
set noswapfile
set colorcolumn=100

set splitbelow
set splitright


set laststatus=2

"gitgutter compares current file to master
let g:gitgutter_diff_args = 'master'

let g:notes_directories = ['~/flow/notes'] 
let g:notes_suffix = '.txt'

"Allow solarized to function nicely
set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set noshowmode

" Airline
let g:airline_powerline_fonts = 1
command! -complete=shellcmd -nargs=* -bang Shell call s:ExecuteInShell(<q-args>, '<bang>')
cabbrev shell Shell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vnoremap <leader>p !sort -k2 <CR>
nmap t :tabnew  klearn/
let mapleader = ","
map <leader>d :r !date<ENTER><esc>
map <leader>i iimport ipdb; ipdb.set_trace()<ESC>
"map <leader>n :bnext<ENTER>
"map <leader>b :bprev<ENTER>
map <leader>r :set colorcolumn=100<ENTER>
map <leader>1 :set invnu<enter>
map <leader>c :bp <BAR> bd #<enter>
map <leader>m :noh <enter>
map <leader>a <plug>NERDTreeTabsToggle<CR>
map <leader>t :tabnew tests/test_
map <leader>f :NERDTreeToggle<ENTER>
"map <leader>a :git grep
map <leader>l :CtrlPBuffer<enter>
set pastetoggle=<leader>z

" Gary Bernhardt: https://www.destroyallsoftware.com/file-navigation-in-vim.html
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But
" if
" " we set winheight to be huge before winminheight, the winminheight set will
" " fail .

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>


set winheight=5
set winminheight=5
set winheight=999
"
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT %%<cr>

" Saving, escaping, quitting
inoremap jk <ESC>
nmap J 10j
nmap K 10k

nmap s :w <enter>
nmap Q :q <enter>
nmap Y y$
nmap D d$
noremap ! :mksession! s <CR> :qall!<enter>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
nnoremap <leader><leader> <c-^>

" auto-update vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05.  Custom Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":Diff")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
endif

au BufNewFile,BufRead *.c,*.cc,*.h,*.java,*.py match TooLong /\%<99v.\%>101v/
  hi link TooLong Warning
  hi Warning ctermbg=Grey ctermfg=DarkRed

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|data\|log\|tmp\|migrations\|node_modules\|bower_components$\|venv\|vendor',
  \ 'file': '\.pyc\|\.exe$\|\.so$\|\.dat$'
  \ }


function! Selecta(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

function! GitGrep()
  let takeFile = "\| cut -d: -f 1"
  let search = input("> ")
  call Selecta("git grep \"" . search . "\"", takeFile, ":tabnew")
endfunction

nnoremap <leader>s :call Selecta("git ls-files " . expand('%:h'), "", ":tabnew") <CR>
nnoremap <leader>g :call GitGrep() <CR>
