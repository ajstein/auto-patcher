#!/bin/bash

AUTOPATCHER=./auto_patcher

if [ -e "$AUTOPATCHER" ]; then
    source $AUTOPATCHER
else
    echo "Cannot complete batch operations, cannot find file "$AUTOPATCHER"."
fi

cd "$ROOT/patch_tools"
tar cvzf ../patch_tools.tgz *.jar updatecert.pem updatekey.pk8 boot cygwin mac linux

cd "$ROOT"
tar cvzf patch_patches.tgz patches
zip autopatcher.zip auto_patcher patch_tools.tgz patch_patches.tgz
