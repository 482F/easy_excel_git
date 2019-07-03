#/bin/bash

set -ue -o pipefail

SCRIPT_DIR=$(cd $(dirname "${0}"); pwd)
cd "${SCRIPT_DIR}"
cd ../src/

find . -type f | while read file; do
    tr -d '\r' < "${file}" > "${file}_lf"
    rm "${file}"
    mv "${file}_lf" "${file}"
done

exit 0
