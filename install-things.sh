#!/bin/bash

set -xeuo pipefail

if [ -d "install_scripts" ]; then
    for f in $(pwd)/install_scripts/*; do
        source "${f}"
    done;
fi;