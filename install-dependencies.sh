#!/bin/zsh

# clone dependency repos
echo "git clone https://github.com/HapticSynaptic/braceletmaker-l10n.git ~/Desktop/HapticSynaptic"
git clone https://github.com/HapticSynaptic/braceletmaker-l10n.git ~/Desktop/HapticSynaptic
echo "git clone https://github.com/HapticSynaptic/braceletmaker-blocks.git ~/Desktop/HapticSynaptic"
git clone https://github.com/HapticSynaptic/braceletmaker-blocks.git ~/Desktop/HapticSynaptic
echo "git clone https://github.com/HapticSynaptic/braceletmaker-vm.git ~/Desktop/HapticSynaptic"
git clone https://github.com/HapticSynaptic/braceletmaker-vm.git ~/Desktop/HapticSynaptic
echo "git clone https://github.com/HapticSynaptic/braceletmaker-gui.git ~/Desktop/HapticSynaptic"
git clone https://github.com/HapticSynaptic/braceletmaker-gui.git ~/Desktop/HapticSynaptic
echo "git clone https://github.com/HapticSynaptic/braceletmaker-paint.git ~/Desktop/HapticSynaptic"
git clone https://github.com/HapticSynaptic/braceletmaker-paint.git ~/Desktop/HapticSynaptic

# install yarn
echo "corepack enable"
corepack enable

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-l10n"
cd ~/Desktop/HapticSynaptic/braceletmaker-l10n
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

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-blocks"
cd ~/Desktop/HapticSynaptic/braceletmaker-blocks
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

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-vm"
cd ~/Desktop/HapticSynaptic/braceletmaker-vm
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

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-paint"
cd ~/Desktop/HapticSynaptic/braceletmaker-paint
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

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-gui"
cd ~/Desktop/HapticSynaptic/braceletmaker-gui
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

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-desktop"
cd ~/Desktop/HapticSynaptic/braceletmaker-desktop
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
