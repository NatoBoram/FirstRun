#!/bin/sh

export EDITOR=nano

# Android
PATH="$HOME/Android/Sdk/platform-tools:$PATH"
PATH="$HOME/Android/Sdk/tools/bin:$PATH"

# Dart
PATH="$PATH:$HOME/.pub-cache/bin"

# Elixir
PATH="$HOME/.mix/escripts:$PATH"
PATH="$HOME/Applications/elixir/bin:$PATH"

# Flutter
PATH="$HOME/Applications/flutter/bin:$PATH"

# Go
PATH="$HOME/Applications/go/bin:$PATH"
PATH="$HOME/go/bin:$PATH"

# IPFS
export IPFS_PATH="/media/nato/HDD/IPFS"

# Java
PATH="$HOME/Applications/gradle/bin:$PATH"

# PNPM
export PNPM_HOME="/home/nato/.local/share/pnpm"
PATH="$PNPM_HOME:$PATH"

# Rust
#. "$HOME/.cargo/env"
PATH="$HOME/.cargo/bin:$PATH"
