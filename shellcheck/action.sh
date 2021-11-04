#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "Path to check is *REQUIRED*"
    exit 1
fi

cd "$GITHUB_WORKSPACE" || exit 1

declare exitstatus
exitstatus=0
path=$1

# Check all shell scripts
declare -a filepaths
excludes+=( ! -path *./.git* )
readarray filepaths < <( find "$path" -type f "${excludes[@]}" -exec file '{}' + \
                         | grep "shell script" \
                         | cut -d : -f 1 )
for file in "${filepaths[@]}"; do
   file_="${file//[$'\t\r\n ']}"
    printf "\n:: shellchecking '%s' ::" "$file_"
    shellcheck -Calways "$file_" || exitstatus=$?
done

exit "$exitstatus"
