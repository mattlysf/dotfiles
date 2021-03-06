set -g theme_display_ruby no
set -g theme_display_virtualenv no
set -g theme_display_rust no
set -g theme_display_nvm no


set -g fish_color_command magenta --bold
set -g fish_color_quote yellow
set -g fish_color_redirection green
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_param cyan
set -g fish_color_comment yellow
set -g fish_color_match normal --background yellow
set -g fish_color_search_match normal --background yellow
set -g fish_color_operator bryellow
set -g fish_color_escape bryellow
set -g fish_color_cwd green
set -g fish_color_cwd_root brgreen
set -g fish_color_autosuggestion brgreen
set -g fish_color_user brgreen
set -g fish_color_host normal
set -g fish_color_cancel normal --bold
set -g fish_color_valid_path normal --underline

test -e {$HOME}/.iterm2_shell_integration.fish
and source {$HOME}/.iterm2_shell_integration.fish

test -e {$HOME}/.local.fish
and source {$HOME}/.local.fish

which most > /dev/null
if test $status -eq 0
    set -x PAGER most
end

alias ping='prettyping --nolegend'
set -x PATH ~/projects/dotfiles/bin $PATH

set -x HOMEBREW_NO_AUTO_UPDATE no

# garbage variables for garbage languages
# =========================================================
set -x GOPATH ~/projects
set -x PATH $GOPATH/bin $PATH

if test -e /usr/local/opt/ruby/bin
    set -x PATH /usr/local/opt/ruby/bin $PATH
end
if test -e /usr/local/lib/ruby/gems/2.6.0/bin
    set -x PATH /usr/local/lib/ruby/gems/2.6.0/bin $PATH
end
# =========================================================

test -e /usr/local/opt/terraform@0.11/bin
and set -x PATH /usr/local/opt/terraform@0.11/bin $PATH

# worky work
# =========================================================
set -x PCS_DEV_TOOLS_DIRECTORY "$HOME/projects/pcs-dev-tools"
set -x PATH $PATH "$PCS_DEV_TOOLS_DIRECTORY/bin"

eval (starship init fish)

if which exa >/dev/null
   set -l long "--long --header --classify --modified --time-style long-iso --git --color-scale"
   alias l="exa --classify --git-ignore"
   alias ll="exa $long --git-ignore"
   alias la="exa $long --all "
   alias lna="exa $long --all --sort=newest"
   alias ls="exa"
end

if which bat >/dev/null
   alias cat="bat"
end

if test -d $HOME/.bin
  set PATH $HOME/.bin $PATH
end
set PATH /usr/local/sbin $PATH
