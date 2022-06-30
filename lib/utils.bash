#!/usr/bin/env bash

set -euo pipefail

# START Logging
function log_failure_and_exit() {
	printf "🚨  %s\\n" "${@}"
	exit 1
}

function log_failure() {
	printf "🚨  %s\\n" "${@}"
}

function log_info() {
	printf "%s\\n" "${@}"
}

function log_success() {
	printf "✅  %s\\n" "${@}"
}

function log_warning() {
	printf "⚠️  %s\\n" "${@}"
}
# END Logging

function default_cloud_sdk_config() {
	printf "%s\\n" "${CLOUDSDK_CONFIG:-"$HOME/.config/gcloud"}"
}

function check_dependencies() {
	local dependencies_file="${1}"
	local failure_type="${2}" # should be "warning" or "failure"
	declare -a missing_dependencies=()

	# loop over file of line separated list of dependencies required by this tool
	while IFS="" read -r p || [ -n "${p}" ]; do
		if [ ! "$(command -v "${p}")" ]; then
			missing_dependencies+=("${p}")
		fi
	done <"${dependencies_file}"

	if [ "${#missing_dependencies[@]}" -ne 0 ]; then
		if [ "${failure_type}" == "warning" ]; then
			log_warning "Missing dependencies! These are hard requirements to install $(get_plugin_name)."
			log_warning "${missing_dependencies[@]}"
			log_info "You should install the listed dependencies before continuing."
		else
			log_failure "Missing dependencies! These are hard requirements to install $(get_plugin_name)."
			log_failure_and_exit "${missing_dependencies[@]}"
		fi
	else
		log_success "All dependencies found on system!"
	fi
}

function get_os_architecture() {
	local architecture

	case "$(uname -m)" in
	x86_64 | amd64)
		architecture="x86_64"
		;;
	i686 | i386)
		architecture="x86"
		;;
	aarch64 | arm64)
		architecture="arm"
		;;
	*)
		log_failure_and_exit "Architecture $(uname -m) not supported!"
		;;
	esac

	echo "${architecture}"
}

function get_os_name() {
	local os_name
	case $(uname -s) in
	Linux*)
		os_name="linux"
		;;
	Darwin*)
		os_name="darwin"
		;;
	*)
		log_failure_and_exit "Script only supports macOS and Ubuntu"
		;;
	esac
	echo "${os_name}"
}

function get_plugin_name() {
	basename "$(dirname "$(dirname "$0")")"
}

function sort_versions() {
	sed 'h; s/[-]/./g; s/.p\([[:digit:]]\)/.z.\1/; s/$/.z/; G; s/\n/ /' |
		LC_ALL=C sort -t. -k 1,1n -k 2,2n -k 3,3n |
		awk '{print $2}'
}
