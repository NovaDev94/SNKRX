#!/bin/sh
# NB. Requires libsteam_api.dylib on the LD_LIBRARY_PATH
#     or within ./engine/love/osx/

set -e

UTILS_PATH="/usr/local/bin"
GAME_PATH="$(dirname "$0" | xargs $UTILS_PATH/realpath)"
EXEC_PATH="$GAME_PATH/engine/love"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$EXEC_PATH/osx"
export LUA_CPATH="$EXEC_PATH/osx/?.so"

# NB. We have to be in EXEC_PATH, so Steam finds the steam_appid.txt
cd "$EXEC_PATH"
$UTILS_PATH/love "$GAME_PATH"

