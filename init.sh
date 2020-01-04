#/bin/bash

set -ue -o pipefail

SCRIPT_DIR=$(cd $(dirname ${0}); pwd)

cd "${SCRIPT_DIR}"

git clone https://github.com/vbaidiot/Ariawase

mv "${SCRIPT_DIR}/Ariawase/vbac.wsf" ./vbac.wsf
rm "${SCRIPT_DIR}/Ariawase" -rf

mkdir "${SCRIPT_DIR}/../bin"
mkdir "${SCRIPT_DIR}/../src"

cd ..
mv ./easy_excel_git/import.bat ./
mv ./easy_excel_git/export.bat ./
mv ./easy_excel_git/open_linux.bat ./

git init

echo "*.xlsm" > .gitignore
echo "!/src/*" >> .gitignore
echo "*.frx" >> .gitignore
echo "*.frm" >> .gitignore
echo "/easy_excel_git" >> .gitignore
echo "export.bat" >> .gitignore
echo "import.bat" >> .gitignore
echo "open_linux.bat" >> .gitignore
echo "vbac.wsf" >> .gitignore

echo "* text=auto" > .gitattributes
echo "* diff=cp932" >> .gitattributes

git config core.pager "LC_ALL=ja_JP.UTF-8 less -Sx4"
git config core.quotepath "false"
git config diff.cp932.textconv "iconv -f cp932 -t utf-8"
git config diff.sjis.textconv "iconv -f sjis -t utf-8"

git add .
git commit -v -m "initial commit"

exit 0
