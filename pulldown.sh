#!/bin/bash

brew_get() {
brew list --full-name | sort > brew_files
}
files_get() {
    cp "$HOME/.vimrc" .
    cp "$HOME/.zshrc" .
}
{
brew_get
files_get
}
