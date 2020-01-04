#!/bin/bash

if [ ! -e /work ]; then
    echo 'Work directory does not exist' >&2
    exit 1
fi

set -eu

cd /work
