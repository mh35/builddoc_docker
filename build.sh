#!/bin/bash

if [ -z "$CIRCLE_WORKING_DIRECTORY" ]; then
    WK_DIR=/work
else
    WK_DIR=$CIRCLE_WORKING_DIRECTORY
fi

if [ ! -e $WK_DIR ]; then
    echo 'Work directory does not exist' >&2
    exit 1
fi

set -eu

cd $WK_DIR
ls -l .
