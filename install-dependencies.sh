#!/bin/zsh

# clone dependency repos
echo "git clone https://github.com/HapticSynaptic/braceletmaker-l10n.git ~/Desktop/braceletmaker"
git clone https://github.com/HapticSynaptic/braceletmaker-l10n.git ~/Desktop/braceletmaker
echo "git clone https://github.com/HapticSynaptic/braceletmaker-blocks.git ~/Desktop/braceletmaker"
git clone https://github.com/HapticSynaptic/braceletmaker-blocks.git ~/Desktop/braceletmaker
# research proper branch to check out
echo "git clone https://github.com/HapticSynaptic/braceletmaker-vm.git ~/Desktop/braceletmaker"
git clone https://github.com/HapticSynaptic/braceletmaker-vm.git ~/Desktop/braceletmaker
# 0.1.0-prerelease.20211011093704 tag
echo "git clone https://github.com/HapticSynaptic/braceletmaker-gui.git ~/Desktop/braceletmaker"
git clone https://github.com/HapticSynaptic/braceletmaker-gui.git ~/Desktop/braceletmaker
# research proper branch to check out
echo "git clone https://github.com/HapticSynaptic/braceletmaker-paint.git ~/Desktop/braceletmaker"
git clone https://github.com/HapticSynaptic/braceletmaker-paint.git ~/Desktop/braceletmaker

# install yarn
echo "corepack enable"
corepack enable

echo "cd ~/Desktop/braceletmaker/braceletmaker-l10n"
cd ~/Desktop/braceletmaker/braceletmaker-l10n
echo "[braceletmaker-l10n] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[braceletmaker-l10n] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[braceletmaker-l10n] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[braceletmaker-l10n] npm install"
npm install
echo "[braceletmaker-l10n] npm run build"
npm run build
echo "[braceletmaker-l10n] yarn link"
yarn link

echo "cd ~/Desktop/braceletmaker/braceletmaker-blocks"
cd ~/Desktop/braceletmaker/braceletmaker-blocks
echo "[braceletmaker-blocks] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[braceletmaker-blocks] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[braceletmaker-blocks] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[braceletmaker-blocks] npm install"
npm install
echo "[braceletmaker-blocks] yarn link braceletmaker-l10n"
yarn link braceletmaker-l10n
echo "[braceletmaker-blocks] yarn link"
yarn link

echo "cd ~/Desktop/braceletmaker/braceletmaker-vm"
cd ~/Desktop/braceletmaker/braceletmaker-vm
echo "[braceletmaker-vm] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[braceletmaker-vm] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[braceletmaker-vm] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[braceletmaker-vm] npm install"
npm install
echo "[braceletmaker-vm] yarn link braceletmaker-l10n"
yarn link braceletmaker-l10n
echo "[braceletmaker-vm] yarn link"
yarn link

echo "cd ~/Desktop/braceletmaker/braceletmaker-paint"
cd ~/Desktop/braceletmaker/braceletmaker-paint
echo "[braceletmaker-paint] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[braceletmaker-paint] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[braceletmaker-paint] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[braceletmaker-paint] npm install"
npm install
echo "[braceletmaker-paint] npm run build"
npm run build
echo "[braceletmaker-paint] yarn link"
yarn link

echo "cd ~/Desktop/braceletmaker/braceletmaker-gui"
cd ~/Desktop/braceletmaker/braceletmaker-gui
echo "[braceletmaker-gui] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[braceletmaker-gui] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[braceletmaker-gui] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[braceletmaker-gui] npm install"
npm install
echo "[braceletmaker-gui] yarn link braceletmaker-l10n braceletmaker-blocks braceletmaker-vm braceletmaker-paint"
yarn link braceletmaker-l10n braceletmaker-blocks braceletmaker-vm braceletmaker-paint
echo "[braceletmaker-gui] yarn link"
yarn link

echo "cd ~/Desktop/braceletmaker/braceletmaker-desktop"
cd ~/Desktop/braceletmaker/braceletmaker-desktop
echo "[braceletmaker-desktop] npm install electron-builder@23.0.2"
npm install electron-builder@23.0.2
echo "[braceletmaker-desktop] rm -rf node_modules"
rm -rf node_modules
# unstage package-lock.json
echo "[braceletmaker-desktop] git reset -q HEAD -- package-lock.json"
git reset -q HEAD -- package-lock.json
# revert package-lock.json
echo "[braceletmaker-desktop] git checkout -q -- package-lock.json"
git checkout -q -- package-lock.json
echo "[braceletmaker-desktop] npm install"
npm install
echo "[braceletmaker-desktop] yarn link braceletmaker-l10n braceletmaker-gui"
yarn link braceletmaker-l10n braceletmaker-gui
