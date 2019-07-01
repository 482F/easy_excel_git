#/bin/bash

set -ue -o pipefail

SCRIPT_DIR=$(cd $(dirname ${0}); pwd)

git clone https://github.com/vbaidiot/Ariawase

mv "${SCRIPT_DIR}/Ariawase/vbac.wsf" ./vbac.wsf
rm "${SCRIPT_DIR}/Ariawase" -rf

exit 0
