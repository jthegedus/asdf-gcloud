#!/usr/bin/env bash

set -euo pipefail

os_support_error="🚨  Script only supports macOS and Ubuntu"

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
        printf "%s\\n" "${os_support_error}"
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
