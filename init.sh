#/bin/bash

set -ue -o pipefail

SCRIPT_DIR=$(cd $(dirname ${0}); pwd)

cd "${SCRIPT_DIR}"

git clone https://github.com/vbaidiot/Ariawase

mv "${SCRIPT_DIR}/Ariawase/vbac.wsf" ./vbac.wsf
rm "${SCRIPT_DIR}/Ariawase" -rf

mkdir "${SCRIPT_DIR}/bin"
mkdir "${SCRIPT_DIR}/src"

cd ..
mv ./easy_excel_git/* ./
rm ./easy_excel_git -rf
rm ./init.sh

exit 0
