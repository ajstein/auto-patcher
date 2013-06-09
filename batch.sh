#!/bin/bash

AUTOPATCHER=./auto_patcher

if [ -e "$AUTOPATCHER" ]; then
    source $AUTOPATCHER
else
    echo "Cannot complete batch operations, cannot find file "$AUTOPATCHER"."
    exit 1
fi

prep_patches
