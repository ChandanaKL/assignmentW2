#!/usr/bin/env bash

# Input paths
a="
C:\Test Path One
/test path two
/test_path_three
/tmp/testpath4
/private/tmp/test path 5
G:\test\path\six
"

windowsPaths=""
unixPaths=""

IFS=$'\n' # This ensures that we split the string by lines properly

for i in $a; do
    if [[ $i =~ ^[A-Za-z]:\\ ]]; then
        windowsPaths="$windowsPaths\n$i"
    else
        unixPaths="$unixPaths\n$i"
    fi
done

# Display Windows paths
echo -e "Windows Paths:"
echo -e "$windowsPaths" | while read line; do
    echo "This is a windows path: $line"
done

# Display Unix paths
echo -e "Unix Paths:"
echo -e "$unixPaths" | while read line; do
    echo "This is a unix path: $line"
done

