#!/bin/sh
# You need Homebrew installed first
brew install luajit love coreutils
curl -L -o ./engine/love/osx/luasteam.so --create-dirs https://github.com/uspgamedev/luasteam/releases/download/1.1.0/osx_luasteam.so
