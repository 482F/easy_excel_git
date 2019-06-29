#/bin/bash

set -ue -o pipefail

find ../src/ -type f | while read file; do
    tr -d '\r' < "${file}" > "${file}_lf"
    rm "${file}"
    mv "${file}_lf" "${file}"
done

exit 0
