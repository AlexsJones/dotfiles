#!/bin/bash

brew_get() {
brew leaves | sort > brew_files
}
files_get() {
    cp "$HOME/.vimrc" .
    cp "$HOME/.zshrc" .
    cp "$HOME/.config/starship.toml" .
}
{
brew_get
files_get
}
