ok brew

destination push $HOME/code/mattly
  # github mattly/dotfiles
  # symlink --tmpl=".\$f" dotfiles/configs/*
destination pop

# basics
ok brew readline
ok brew bcrypt
ok brew openssl

# git tools
ok brew git
ok brew hub
ok brew tig

# environment
ok brew fish
  # on_install "set_shell fish"

include tmux.sh
include vim.sh

# etc tools
ok brew the_silver_searcher
ok brew par
ok brew curl
ok brew jq
ok brew nmap
ok brew dnsmasq
ok brew mtr
ok brew graphviz
ok pip httpie

ok brew apple-gcc42

ok brew ansible

# include osx.sh

include sketch.sh
