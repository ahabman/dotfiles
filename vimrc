" based on http://github.com/jferris/config_files/blob/master/vimrc
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set dir=~/.vimswap//,/var/tmp//,/tmp//,.  " Store swap files in fixed location, not current directory.
set expandtab
set history=50		" keep 50 lines of command line history
set ignorecase
set incsearch		" do incremental searching
set laststatus=2 " Always display the status line
set linebreak
set nobackup
set nowritebackup
set number
set numberwidth=5
set ruler		" show the cursor position all the time
set shiftwidth=2
set showcmd		" display incomplete commands
set smartcase
set tabstop=2 " Softtabs, 2 spaces
set wrap

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

let mapleader = ","

" Hide search highlighting
noremap <Leader>h :set invhls <CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" normal mode alternates
inoremap jj <Esc>
inoremap jk <Esc>

" Duplicate a selection
" Visual mode: D
vmap D y'>p

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Color scheme
silent! colorscheme inori

" toggle between number and relativenumber
nnoremap <Leader>rn :call ToggleNumber()<CR>
function! ToggleNumber()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set hlsearch
endif


" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Set File type to 'text' for files ending in .txt
  autocmd BufNewFile,BufRead *.txt setfiletype text

  " Enable soft-wrapping for text files
  autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    " autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif

    " Automatically load .vimrc source when saved
    autocmd BufWritePost .vimrc source $MYVIMRC

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
endif

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"
