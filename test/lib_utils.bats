#!/usr/bin/env bats

@test "assert plugin name" {
	run foo nonexistent_filename
	[ "$status" -eq 1 ]
}
