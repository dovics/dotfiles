set -x PATH $PATH /opt/homebrew/bin/
set -x PATH $PATH /opt/homebrew/opt/llvm@12/bin
set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/miniconda3/bin
set -x PATH $PATH /usr/local/cuda-12.9/bin
set -x PATH $PATH $HOME/.cargo/bin/
set -x EDITOR nvim
set -x TERMINFO /usr/share/terminfo

set -x PATH $PATH $HOME/.local/bin

# Golang
set -x GOPROXY https://proxy.golang.com.cn,direct
set -x PATH $PATH $HOME/go/bin
set -x PATH $PATH /usr/local/go/bin/
set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here 
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/dovics/miniconda3/bin/conda
    eval /home/dovics/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/dovics/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/dovics/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/dovics/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<

# pnpm
set -gx PNPM_HOME "/home/dovics/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/dovics/.ghcup/bin # ghcup-env

string match -q "$TERM_PROGRAM" vscode
and . (code --locate-shell-integration-path fish)
