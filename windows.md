git from git-scm.com
    use visual studio code as git's default editor
    checkout as-is, commit unix-style line endings
    use windows' default console window
python 2.7.18 from https://www.python.org/downloads/windows/
    add python.exe to PATH
nvm 1.1.10 from https://github.com/coreybutler/nvm-windows/releases/tag/1.1.10
java jdk 19 from https://www.oracle.com/java/technologies/downloads/#jdk19-windows
    direct link: https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.exe
Build Tools for Visual Studio 2022 from https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022
    desktop development with C++
    uncheck windows 11 SDK and check windows 10 SDK
run git bash as an administrator
    `git clone https://github.com/HapticSynaptic/braceletmaker-desktop.git`
    `nvm install 16.16.0`
    `nvm use 16.16.0`
    `cd Desktop`
    `mkdir HapticSynaptic`
    `cd HapticSynaptic`
    `npm install`
    `npm run start`
    webpack doesn't know how to deal with codicon.ttf, so remove @font-face from
        `node_modules\monaco-editor\esm\vs\base\browser\ui\codiconLabel\codicon\codicon.css`
        `node_modules\monaco-editor\dev\vs\editor\editor.main.css`
        `node_modules\monaco-editor\min\vs\editor\editor.main.css`
    `npm run dist`