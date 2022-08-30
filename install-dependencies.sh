#!/bin/zsh

# clone dependency repos
echo "git clone https://github.com/openblockcc/openblock-l10n.git ~/Desktop/bracelet-maker"
git clone https://github.com/openblockcc/openblock-l10n.git ~/Desktop/bracelet-maker
echo "git clone https://github.com/openblockcc/openblock-blocks.git ~/Desktop/bracelet-maker"
git clone https://github.com/openblockcc/openblock-blocks.git ~/Desktop/bracelet-maker
# research proper branch to check out
echo "git clone https://github.com/openblockcc/openblock-vm.git ~/Desktop/bracelet-maker"
git clone https://github.com/openblockcc/openblock-vm.git ~/Desktop/bracelet-maker
# 0.1.0-prerelease.20211011093704 tag
echo "git clone https://github.com/openblockcc/openblock-gui.git ~/Desktop/bracelet-maker"
git clone https://github.com/openblockcc/openblock-gui.git ~/Desktop/bracelet-maker
# research proper branch to check out
echo "git clone https://github.com/LLK/scratch-paint.git ~/Desktop/bracelet-maker"
git clone https://github.com/LLK/scratch-paint.git ~/Desktop/bracelet-maker

# install yarn
echo "corepack enable"
corepack enable

echo "cd ~/Desktop/bracelet-maker/GitHub/openblock-l10n"
cd ~/Desktop/bracelet-maker/GitHub/openblock-l10n
echo "[openblock-l10n] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[openblock-l10n] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[openblock-l10n] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[openblock-l10n] npm install"
npm install
echo "[openblock-l10n] npm run build"
npm run build
echo "[openblock-l10n] yarn link"
yarn link

echo "cd ~/Desktop/bracelet-maker/GitHub/openblock-blocks"
cd ~/Desktop/bracelet-maker/GitHub/openblock-blocks
echo "[openblock-blocks] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[openblock-blocks] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[openblock-blocks] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[openblock-blocks] npm install"
npm install
echo "[openblock-blocks] yarn link openblock-l10n"
yarn link openblock-l10n
echo "[openblock-blocks] yarn link"
yarn link

echo "cd ~/Desktop/bracelet-maker/GitHub/openblock-vm"
cd ~/Desktop/bracelet-maker/GitHub/openblock-vm
echo "[openblock-vm] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[openblock-vm] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[openblock-vm] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[openblock-vm] npm install"
npm install
echo "[openblock-vm] yarn link openblock-l10n"
yarn link openblock-l10n
echo "[openblock-vm] yarn link"
yarn link

echo "cd ~/Desktop/bracelet-maker/GitHub/scratch-paint"
cd ~/Desktop/bracelet-maker/GitHub/scratch-paint
echo "[scratch-paint] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[scratch-paint] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[scratch-paint] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[scratch-paint] npm install"
npm install
echo "[scratch-paint] npm run build"
npm run build
echo "[scratch-paint] yarn link"
yarn link

echo "cd ~/Desktop/bracelet-maker/GitHub/openblock-gui"
cd ~/Desktop/bracelet-maker/GitHub/openblock-gui
echo "[openblock-gui] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[openblock-gui] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[openblock-gui] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[openblock-gui] npm install"
npm install
echo "[openblock-gui] yarn link openblock-l10n openblock-blocks openblock-vm scratch-paint"
yarn link openblock-l10n openblock-blocks openblock-vm scratch-paint
echo "[openblock-gui] yarn link"
yarn link

echo "cd ~/Desktop/bracelet-maker/GitHub/openblock-desktop"
cd ~/Desktop/bracelet-maker/GitHub/openblock-desktop
echo "[openblock-desktop] npm install electron-builder@23.0.2"
npm install electron-builder@23.0.2
echo "[openblock-desktop] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[openblock-desktop] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[openblock-desktop] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[openblock-desktop] npm install"
npm install
echo "[openblock-desktop] yarn link openblock-l10n openblock-gui"
yarn link openblock-l10n openblock-gui
