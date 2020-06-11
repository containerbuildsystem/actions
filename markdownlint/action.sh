#!/usr/bin/env bash

cd "$GITHUB_WORKSPACE" || exit 1

declare exitstatus

exitstatus=0

mdl -g . || exitstatus=$?

exit "$exitstatus"
