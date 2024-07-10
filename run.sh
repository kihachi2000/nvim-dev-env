#!/bin/bash

VOLUMES=(
    "-v" "$HOME/git/yash:/root/yash"
    "-v" "$HOME/git/honori:/root/honori"
)

docker run -it --rm "${VOLUMES[@]}" nvim-dev-env
