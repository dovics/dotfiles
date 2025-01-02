set -x PATH $PATH /opt/homebrew/bin/
set -x PATH $PATH /opt/homebrew/opt/llvm@12/bin
set -x PATH $PATH $HOME/bin

set -x EDITOR nvim

# Golang
set -x GOPROXY https://proxy.golang.com.cn,direct
set -x PATH $PATH $HOME/go/bin
set -x PATH $PATH /usr/local/go/bin/
set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end
