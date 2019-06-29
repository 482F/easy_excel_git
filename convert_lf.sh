#/bin/bash

set -ue -o pipefail

find ./src/ -type f | while read file; do
    tr -d '\r' < ${file} > ${file}
done

exit 0

