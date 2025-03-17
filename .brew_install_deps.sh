#!/bin/bash

if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Please install Homebrew first."
    echo "Visit https://brew.sh for installation instructions."
    exit 1
fi

FORMULAE=(
    "bat"
    "difftastic"
    "fd"
    "fzf"
    "neovim"
    "oh-my-posh"
    "ripgrep"
)

CASKS=(
    "ghostty"
)

echo "Updating Homebrew..."
brew update

for formula in "${FORMULAE[@]}"; do
    echo "Installing $formula..."
    brew install "$formula"
done

for cask in "${CASKS[@]}"; do
    echo "Installing $cask..."
    brew install --cask "$cask"
done

echo "All packages and casks installed successfully!"
