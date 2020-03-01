#!/usr/bin/env bash

set -euo pipefail

bucket_name=cloud-sdk-release
prefix=google-cloud-sdk
declare -a page_tokens=("" "Cihnb29nbGUtY2xvdWQtc2RrLTIwNy4wLjAtd2luZG93cy14ODYuemlw")

function fetch() {
    curl --silent GET "https://storage.googleapis.com/storage/v1/b/${bucket_name}/o?pageToken=${1}&prefix=${prefix}" |
        grep -Eo "id.*google-cloud-sdk-[0-9]+\.[0-9]+\.[0-9]+-(linux)-x86_64" |
        grep -Eo "[0-9]+\.[0-9]+\.[0-9]+"
}

function list_all() {
    for i in "${page_tokens[@]}"; do
        fetch "$i"
    done
}

list_all | sort -V
