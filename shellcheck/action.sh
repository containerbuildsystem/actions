#!/usr/bin/env bash

cd "$GITHUB_WORKSPACE" || exit 1

declare exitstatus
exitstatus=0

# Uncomment everything below to check all shell scripts

# declare -a filepaths
# excludes+=( ! -path *./.git* )

# readarray filepaths < <( find . -type f "${excludes[@]}" -exec file '{}' + \
#                          | grep "shell script" \
#                          | cut -d : -f 1 )

# for file in "${filepaths[@]}"; do
#    file_="${file//[$'\t\r\n ']}"
    printf "\n:: shellchecking 'test.sh' ::"
    shellcheck -Calways ./test.sh || exitstatus=$?
# done

exit "$exitstatus"
