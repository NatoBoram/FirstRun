#!/bin/zsh

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Flutter
PATH="$HOME/Library/flutter/bin:$PATH"

# Android
PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

# Go
PATH="$HOME/Library/go/bin:$PATH"
PATH="$HOME/go/bin:$PATH"

# PowerShell
PATH="/usr/local/microsoft/powershell/7-preview:$PATH"
