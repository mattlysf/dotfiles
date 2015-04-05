#!/usr/bin/env bash
ok brew neovim --HEAD

[ -z $code ] && code=$HOME/code/mattly
vimplugins=$code/dotfiles/configs/nvim/bundle
ok directory $vimplugins
destination $vimplugins

#group start --dir=$vimplugins

# plugin helpers
  ok github tpope/vim-pathogen
  ok github tpope/vim-repeat

# file helpers
  ok github tpope/vim-eunuch

# insert-mode helpers
  ok github tpope/vim-endwise
  ok github tpope/vim-surround
  ok github raimondi/delimitMate
  ok github Valloric/YouCompleteMe
  if did_update; then
    cd YouCompleteMe
    git submodule update --init --recursive
    ./install.sh
  fi

# text manipulation
  ok github tpope/vim-commentary
  ok github junegunn/vim-easy-align
  ok github tpope/vim-abolish
  ok github tpope/vim-characterize

# text-objects
  ok github michaeljsmith/vim-indent-object
  ok github gcmt/wildfire.vim
  ok github wellle/targets.vim

# writing tools
  ok github reedes/vim-pencil
  ok github reedes/vim-lexical
  ok github reedes/vim-wordy
  ok github nelstrom/vim-markdown-folding

# outlining
  ok github vimwiki/vimwiki

# navigation
  ok github tpope/vim-vinegar
  ok github haya14busa/incsearch.vim
  ok github ctrlpvim/ctrlp.vim
  ok github tpope/vim-dispatch

# UI and colors
  ok github reedes/vim-colors-pencil
  ok github kien/rainbow_parentheses.vim

# git & scm
  ok github tpope/vim-git                   # .gitcommit
  ok github tpope/vim-fugitive
  ok github mhinz/vim-signify
  ok github idanarye/vim-merginal

# Language/Environment-Specific

# Clojure
  ok github guns/vim-clojure-static       # .clj        clojure syntax
  ok github guns/vim-sexp
  ok github tpope/vim-sexp-mappings-for-regular-people
  ok github tpope/vim-fireplace
  ok github vim-scripts/paredit.vim
  ok github venantius/vim-cljfmt
  ok github tpope/vim-leiningen

# CSS
  ok github cakebaker/scss-syntax.vim     # .scss       -> .css
  ok github groenewege/vim-less           # .less       -> .css
  ok github wavded/vim-stylus             # .styl       -> .css

# Javascript
  ok github pangloss/vim-javascript       # .js         better indenting
  ok github tpope/vim-jdaddy              # .json       niceties, text objects
  ok github kchmck/vim-coffee-script      # .coffee     -> .js
  ok github mintplant/vim-literate-coffeescript
                                          # .litcoffee  -> .js
  ok github lambdatoast/elm.vim           # .elm
  ok github mxw/vim-jsx                   # React's JSX, uses .js with a pragma
  ok github mtscout6/vim-cjsx             # JSX embedded in CoffeeScript.  Don't ask why this is a thing, you don't want to know.
  ok github raichoo/purescript-vim        # .purs       Because I'm apparently not enough of a masochist.

# Markup / Templates
  ok github tpope/vim-ragtag              # .html       formatting tools
  ok github juvenn/mustache               # .mustache   :{
  ok github Glench/Vim-Jinja2-Syntax      # .html       jinja/nunjukcs/swig
  ok github digitaltoad/vim-jade          # .jade       -> .html

# Shell
  ok github rosstimson/bats.vim           # .bats       bash unit testing
  ok github aliva/vim-fish                # .fish

# Viml
  ok github tpope/vim-scriptease
  ok github dbakker/vim-lint

# Miscellaneous
  ok github vim-scripts/csv.vim           # .csv
  ok github ekalinin/Dockerfile.vim       # Dockerfile
  ok github elixir-lang/vim-elixir        # .ex
  ok github jimenezrick/vimerl            # .erl
  ok github jnwhiteh/vim-golang           # .go
  ok github wannesm/wmgraphviz.vim        # .gv         graphviz
  ok github travitch/hasksyn              # .hs
  ok github JuliaLang/julia-vim           # .jl
  ok github wting/rust.vim                # .rust
  ok github derekwyatt/vim-scala
  ok github toyamarinyon/vim-swift
  ok github exu/pgsql.vim                 # .sql        postgresql 4 life
  ok github sheerun/vim-yardoc            # yard inside .rb

if any_updated; then
  vim -c ':Helptags' -c ':q'
fi
