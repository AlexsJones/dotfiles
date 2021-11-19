#!/bin/bash

brew_set() {
    for i in $(cat brew_files); 
    do
        brew install "$i";
    done
}
files_set() {
    cp .vimrc "$HOME/.vimrc" 
    cp .zshrc "$HOME/.zshrc"
    mkdir -p "$HOME/.config"
    cp starship.toml "$HOME/.config/starship.toml"
}
verify() {
    
    if brew ls --versions > /dev/null; then
    echo "brew installed"
    else
    echo "brew not installed"
    exit 1
    fi
}

{
verify
brew_set
files_set
}
