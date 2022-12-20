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

# remove yarn link'd packages
echo "rm -rf ~/.config/yarn/link/*"
rm -rf ~/.config/yarn/link/*

# remove uplifted folders
echo "rm -rf ~/Desktop/HapticSynaptic/external-resources"
rm -rf ~/Desktop/HapticSynaptic/external-resources
echo "rm -rf ~/Desktop/HapticSynaptic/firmwares"
rm -rf ~/Desktop/HapticSynaptic/firmwares
echo "rm -rf ~/Desktop/HapticSynaptic/tools"
rm -rf ~/Desktop/HapticSynaptic/tools

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-l10n"
cd ~/Desktop/HapticSynaptic/braceletmaker-l10n
echo "[braceletmaker-l10n] rm -rf node_modules"
rm -rf node_modules
echo "[braceletmaker-l10n] rm package-lock-json"
rm package-lock.json
echo "[braceletmaker-l10n] npm install --legacy-peer-deps"
npm install --legacy-peer-deps
echo "[braceletmaker-l10n] npm run build"
npm run build
echo "[braceletmaker-l10n] yarn link"
yarn link

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-blocks"
cd ~/Desktop/HapticSynaptic/braceletmaker-blocks
echo "[braceletmaker-blocks] rm -rf node_modules"
rm -rf node_modules
echo "[braceletmaker-blocks] rm package-lock-json"
rm package-lock.json
echo "[braceletmaker-blocks] npm install --legacy-peer-deps"
npm install --legacy-peer-deps
echo "[braceletmaker-blocks] yarn link @hapticsynaptic/braceletmaker-l10n"
yarn link @hapticsynaptic/braceletmaker-l10n
echo "[braceletmaker-blocks] yarn link"
yarn link

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-vm"
cd ~/Desktop/HapticSynaptic/braceletmaker-vm
echo "[braceletmaker-vm] rm -rf node_modules"
rm -rf node_modules
echo "[braceletmaker-vm] rm package-lock-json"
rm package-lock.json
echo "[braceletmaker-vm] npm install --legacy-peer-deps"
npm install --legacy-peer-deps
echo "[braceletmaker-vm] yarn link @hapticsynaptic/braceletmaker-l10n"
yarn link @hapticsynaptic/braceletmaker-l10n
echo "[braceletmaker-vm] yarn link"
yarn link

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-paint"
cd ~/Desktop/HapticSynaptic/braceletmaker-paint
echo "[braceletmaker-paint] rm -rf node_modules"
rm -rf node_modules
echo "[braceletmaker-paint] rm package-lock-json"
rm package-lock.json
echo "[braceletmaker-paint] npm install --legacy-peer-deps"
npm install --legacy-peer-deps
echo "[braceletmaker-paint] npm run build"
npm run build
echo "[braceletmaker-paint] yarn link"
yarn link

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-gui"
cd ~/Desktop/HapticSynaptic/braceletmaker-gui
echo "[braceletmaker-gui] rm -rf node_modules"
rm -rf node_modules
echo "[braceletmaker-gui] rm package-lock-json"
rm package-lock.json
echo "[braceletmaker-gui] npm install --legacy-peer-deps"
npm install --legacy-peer-deps
echo "[braceletmaker-gui] yarn link @hapticsynaptic/braceletmaker-l10n @hapticsynaptic/braceletmaker-blocks @hapticsynaptic/braceletmaker-vm @hapticsynaptic/braceletmaker-paint"
yarn link @hapticsynaptic/braceletmaker-l10n @hapticsynaptic/braceletmaker-blocks @hapticsynaptic/braceletmaker-vm @hapticsynaptic/braceletmaker-paint
echo "[braceletmaker-gui] yarn link"
yarn link

echo "cd ~/Desktop/HapticSynaptic/braceletmaker-desktop"
cd ~/Desktop/HapticSynaptic/braceletmaker-desktop
echo "[braceletmaker-desktop] npm install --legacy-peer-deps electron-builder@23.0.2"
npm install --legacy-peer-deps electron-builder@23.0.2
echo "[braceletmaker-desktop] rm -rf node_modules"
rm -rf node_modules
echo "[braceletmaker-desktop] rm package-lock-json"
rm package-lock.json
echo "[braceletmaker-desktop] npm install --legacy-peer-deps"
npm install --legacy-peer-deps
echo "[braceletmaker-desktop] yarn link @hapticsynaptic/braceletmaker-l10n @hapticsynaptic/braceletmaker-gui"
yarn link @hapticsynaptic/braceletmaker-l10n @hapticsynaptic/braceletmaker-gui

echo "npm run fetch:all"
npm run fetch:all
echo "mv external-resources ~/Desktop/HapticSynaptic/"
mv external-resources ~/Desktop/HapticSynaptic/
echo "mv firmwares ~/Desktop/HapticSynaptic/"
mv firmwares ~/Desktop/HapticSynaptic/
echo "mv tools ~/Desktop/HapticSynaptic/"
mv tools ~/Desktop/HapticSynaptic/
echo "cd ~/Library/Application\ Support/Electron"
cd ~/Library/Application\ Support/Electron
echo "rm -rf Data"
rm -rf Data
echo "mkdir Data"
mkdir Data
echo "cp -r ~/Desktop/HapticSynaptic/external-resources ~/Library/Application\ Support/Electron/Data"
cp -r ~/Desktop/HapticSynaptic/external-resources ~/Library/Application\ Support/Electron/Data
