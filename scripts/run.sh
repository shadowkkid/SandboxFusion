#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$DIR"/..

# Start e2b envd server in background
if [ -f /usr/bin/envd ]; then
    /usr/bin/envd -isnotfc &
fi

make run-online HOST="''" PORT=${_BYTEFAAS_RUNTIME_PORT:-8080}