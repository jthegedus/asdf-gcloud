#!/usr/bin/env bash

set -euo pipefail

function construct_gcs_object() {
    local install_version="${1}"
    local os_name="${2}"
    local os_architecture="${3}"

    echo "google-cloud-sdk-${install_version}-${os_name}-${os_architecture}.tar.gz"
}
