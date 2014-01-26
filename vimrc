set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" General
" =============================================================================
  filetype plugin indent on
  syntax on
  set hidden                            " use buffers, not windows
  set fileformats=unix,dos,mac          " line endings are still a thing?
  set modelines=0                       " avoid spell files vulnerability
  set autoread                          " auto-reload files from local changes
  set shell=/bin/sh                     " so that our ENV is available to vim
  set encoding=utf-8 nobomb             " People still use latin1?
  set exrc                              " use per-project .virmc
  set secure                            " but disallow autocmd, shell and write
  set nobackup                          " do not keep backups after close
  set nowritebackup                     " do not keep backups while working
  set noswapfile                        " don't keep swap files either
  set spelllang=en_us                   " When you need it, you need it.
  set thesaurus='~/.vim/thesaurus/mthesaur.txt'
  set tags+=../tags,../../tags,../../../tags,../../../../tags,tmp/tags


" UI Chrome
" =============================================================================
  set ruler                             " show the cursor position
  set showcmd                           " show incomplete commands
  set lazyredraw                        " speeds up certain macros and such
  set shortmess=aot                     " abbreviate the messages
  set report=0                          " always notify us about changes
  set nostartofline                     " don't jump to line start on scroll
  set ttyfast                           " we're local 99% of the time
  set scrolloff=5                       " minimum lines to show around cursor
  set sidescrolloff=3                   " min characters to show sideways
  " set nocursorline                      " turn this on manually if you wan it
  set nocursorcolumn

  " Alerts
    set noerrorbells                      " shut up already
    set visualbell                        " SHUT UP ALREADY

  " Splits
    set splitbelow                        " open new horiz splits below current
    set splitright                        " open new vert splits to the right

    set fillchars=vert:\│,stl:\ 

  " Keyboarding
    set backspace=indent,eol,start        " backspace over anything
    set esckeys                           " we like our arrow keys?
    set ttimeoutlen=10                    " but we also hate timeouts on <Esc>

  " Folding
    set foldmethod=indent                 " really the only way that makes sense
    set foldlevelstart=99                 " open all folds by default
    set foldignore=                       " don't try to be clever

  " Wildmenu
    set wildmenu                          " wildmenu is awesome
    set wildmode=list:longest,full
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

  " Searching
    set grepprg=ag\ --nogroup\ --nocolor
    set hlsearch                          " because awesome
    set ignorecase                        " ignore case in searches
    set smartcase                         " unless there is a capital letter
    set wrapscan                          " searches wrap EOF
    set incsearch                         " show incremental seraches

  " Net-RW
    let g:netrw_liststyle=4

  " Mouse
    if has("mouse")
      set mouse=a
    endif

" Text Formatting
" =============================================================================
  set autoindent                        " auto-indent new lines
  set smartindent                       " but not blindly
  set softtabstop=2                     " because fuck you, 8-space tabs
  set shiftwidth=2
  set tabstop=4
  set expandtab                         " turns lead to gold. Er, tabs to spaces
  set smarttab                          " go away, tabs. don't come back
  set shiftround                        " round shifts to multiple of indent
                                        " Whitespace Highlighting
  set list listchars=tab:»\ ,trail:·,precedes:<,extends:>

  set nowrap                            " Text wrapping should be done manually
  set linebreak                         " break on words

  set cpoptions+=J                      " help cpoptions
                                        " defaults: aABceFs
                                        " a/A: read/write sets window fn
                                        " B: backslash isn't special in mapping
                                        " c: searching continues at the end of
                                        "    the match, not start of it
                                        " e: append <CR> to register execution
                                        " F: write sets fn for buffer
                                        " s: sets buffer options when entering
                                        "    buffer for the first time
                                        " ==========
                                        " J: sentences are two-spaced

  set formatoptions=cqn1                " help fo-table
                                        " defaults: tcq
                                        " t: auto-wrap text using text-width
                                        " c: auto-wrap comments
                                        " q: auto-format comments with 'gq'
                                        " n: recognize numbered lists
                                        " 1: don't break after 1-char word

for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor


