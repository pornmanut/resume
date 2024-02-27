#!/bin/bash

# Function to check if a command exists
command_exists () {
    command -v $1 &> /dev/null
}

# Function to install a package using brew
install_package () {
    if command_exists brew; then
        brew install $1 || { echo "Failed to install $1"; exit 1; }
    else
        echo "'brew' command not found. Please install Homebrew first."
        exit 1
    fi
}

# Check if 'typst' command exists
if ! command_exists typst; then
    echo "'typst' command not found. Attempting to install..."
    install_package typst
else
    echo "'typst' is already installed."
fi
