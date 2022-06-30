#!/usr/bin/env bats

@test "assert plugin name" {
	run get_plugin_name
	echo "$output"
	[ "$status" -eq 0 ]
}
