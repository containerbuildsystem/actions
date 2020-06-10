#!/usr/bin/env bash

cd "$GITHUB_WORKSPACE" || exit 1

declare exitstatus
declare -a filepaths

exitstatus=0

excludes+=( ! -path *./.git* )

readarray filepaths < <( find . -type f "${excludes[@]}" -exec file '{}' + \
                         | grep "shell script" \
                         | cut -d : -f 1 )

for file in "${filepaths[@]}"; do
    file_="${file//[$'\t\r\n ']}"
    printf "\n:: shellchecking %s ::" "$file_"
    shellcheck -Calways $file_ || exitstatus=$?
done

exit "$exitstatus"
