set backupskip=/tmp/*,/private/tmp/*"
" set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'  " New line!!
"Plugin 'Valloric/YouCompleteMe'
" Above requires lots of work
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'hynek/vim-python-pep9-indent'
Plugin 'https://github.com/tpope/vim-surround.git'
call vundle#end()            " required
filetype plugin indent on    " required

autocmd BufWritePre * :%s/\s\+$//e
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype plugin on
set tabstop=4
set shiftwidth=4
set ignorecase
set expandtab
set wildmenu
set number
set tw=100
set confirm
set visualbell
set cinoptions=t0,+2,(2,u2,w1
set softtabstop=4
set hidden
set foldmethod=indent
" autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2 sts=2
nmap s :w <enter>
nmap Q :q <enter>
nmap <space> i_<esc>r
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50	 " keep 50 lines of command line history
set ruler	 " show the cursor position all the time
set showcmd	 " display incomplete commands
set incsearch	 " do incremental searching

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

set backupdir=~/.backup
set directory=~/.backup
set noswapfile
let mapleader = ","
map <leader>o :enew<enter>
map <leader>n :bnext<ENTER>
map <leader>b :bprev<ENTER>
map <leader>r :set colorcolumn=100<enter>
map <leader>l :set colorcolumn=0<enter>
map <leader>1 :set invnu<enter>
map <leader>c :bp <BAR> bd #<enter>
map <leader>m :noh <enter>
map <leader>t :TagbarOpenAutoClose<enter>
map <leader>a :Ack
map <leader>l :CtrlPBuffer<enter>
noremap ! :mksession! s <CR> :qall!<enter>
noremap ~ :qall<enter>
inoremap jk <ESC>
vnoremap . :norm.<CR>
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
execute pathogen#infect()
filetype plugin indent on
syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

colorscheme solarized
set background=dark
" auto-update vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set noshowmode

" Airline
" let g:airline_powerline_fonts = 1

" set encryption method to blowfish
set cryptmethod=blowfish

function! s:ExecuteInShell(command, bang)
    let _ = a:bang != '' ? s:_ : a:command == '' ? '' : join(map(split(a:command), 'expand(v:val)'))

    if (_ != '')
        let s:_ = _
        let bufnr = bufnr('%')
        let winnr = bufwinnr('^' . _ . '$')
        silent! execute  winnr < 0 ? 'new ' . fnameescape(_) : winnr . 'wincmd w'
        setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap
        silent! :%d
        let message = 'Execute ' . _ . '...'
        call append(0, message)
        echo message
        silent! 2d | resize 1 | redraw
        silent! execute 'silent! %!'. _
        silent! execute 'resize ' . line('$')
        silent! execute 'autocmd BufUnload <buffer> execute bufwinnr(' . bufnr . ') . ''wincmd w'''
        silent! execute 'autocmd BufEnter <buffer> execute ''resize '' .  line(''$'')'
        silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
        silent! execute 'nnoremap <silent> <buffer> <LocalLeader>g :execute bufwinnr(' . bufnr . ') . ''wincmd w''<CR>'
    endif
endfunction

command! -complete=shellcmd -nargs=* -bang Shell call s:ExecuteInShell(<q-args>, '<bang>')
cabbrev shell Shell

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
endif
