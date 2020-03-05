#!/usr/bin/env bash

set -euo pipefail

get_os_name() {
    local os_name
    case $(uname -s) in
    Linux*)
        os_name="linux"
        ;;
    Darwin*)
        os_name="darwin"
        ;;
    *)
        printf "🚨  Script only supports macOS and Ubuntu\\n"
        exit 1
        ;;
    esac
    echo "${os_name}"
}

get_os_architecture() {
    local arch
    if [[ $(getconf LONG_BIT) == "64" ]]; then
        arch="x86_64"
    else
        arch="x86"
    fi
    echo "${arch}"
}
