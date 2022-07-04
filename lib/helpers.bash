#!/usr/bin/env bash

set -euo pipefail

function default_cloud_sdk_config() {
	printf "%s\\n" "${CLOUDSDK_CONFIG:-"$HOME/.config/gcloud"}"
}

function construct_gcs_object() {
	local install_version="${1}"
	local os_name="${2}"
	local os_architecture="${3}"

	printf "%s\\n" "google-cloud-sdk-${install_version}-${os_name}-${os_architecture}.tar.gz"
}
