# Developing and building Bracelet Maker app for **Mac**

Read the entire guide before taking any steps. Your questions will probably be answered by the end. If not, the best way to get help is to open a GitHub issue with your question.

## Setup

Before running or building the app you need to install the necessary software. The easiest setup consists of the following:

1. `brew` aka Homebrew
2. `git`
3. `nvm` + `node`
4. `python` aka Python 2 (removed by default from macOS 12.3 and above)

Installation of each is explained in detail below.

### Installing `brew` aka Homebrew

Homebrew is a command line tool that simplifies installation of terminal tools (e.g. `git`) and everyday apps (`Chrome`). Use Homebrew to install all other software you need for building the Bracelet Maker app.

Install Homebrew by executing the following command in the Terminal:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

You will be asked to confirm installation and around a minute later you will be asked for your password. Installation lasts around 20 mins.

It seems you first need to install Xcode command line tools **BEFORE** installing Homebrew!
~~The command above will also install Xcode command line tools that are needed later in the setup process.~~

### Installing `git`

To install Git run the following in the Terminal:

```
brew install git
```

### Installing `nvm` + `node`

Bracelet Maker app uses `node` version 16.16.0. In order to avoid issues when using the "wrong" `node` version you should install install `nvm`, which allows you to quickly and easily switch `node` versions. To install `nvm`, run the following in the Terminal:

```
brew install nvm
```

<!-- TODO -->
Default shell blah blah blah
If you're on macOS Catalina (version 10.15) or higher
Now that you've installed `nvm` take these steps to enable it in the Terminal:

1. create `nvm`'s working directory:

```
mkdir ~/.nvm
```

2. create `.zshrc`:

```
touch ~/.zshrc
```

3. paste the following in the `.zshrc`:

```
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
```

4. restart the Terminal

The easiest way to open `.zshrc` in order to paste the snippet above is to:

1. open Finder
2. press the following keyboard shortcut to go to folder: Command + Shift + G
3. paste `~` and press Enter
4. press the following keyboard shortcut to show hidden files: Shift + Command + . (period)
5. right click on `.zshrc` and select Open with >> TextEdit

Finally, to install the correct `node` version run the following command:

```
nvm install 16.16.0
```

If you've installed multiple `node` versions via `nvm` you need to tell `nvm` to use the correct version of `node`. To do this run `nvm use 16.16.0`. You will need to re-run this command every time you restart the Terminal.

### Installing `python` aka Python 2 (necessary only if on macOS 12.3 and above)

To install Python 2 run the following in the Terminal:

```
brew install pyenv && pyenv install 2.7.18 && pyenv global 2.7.18
```

Now that you've installed `python` take these steps to enable it in the Terminal

1. paste the following in `.zshrc`. Look for "The easiest way to open `.zshrc`" under [Installing `nvm` + `node`](#installing-nvm--node) on how to do it.

```
eval "$(pyenv init --path)"
```

2. restart terminal

### Installing app dependencies

1. Create a new folder on Desktop for the app source code:

```
mkdir ~/Desktop/HapticSynaptic
```

2. Clone the repo in the newly created folder:

```
cd ~/Desktop/HapticSynaptic && git clone https://github.com/HapticSynaptic/braceletmaker-desktop.git
```

3. Switch to the latest version tag. At the time of writing the latest version is 2.3.1. To do that run:

```
git checkout tags/v2.3.1
```

4. Version 2.3.1 has a bug. On line 568 in file `src/main/index.js` replace `detail: e` with `detail: e.message`.
5. Run the following command to install app dependencies:

```
npm install && npm run fetch:all
```

6. Move the `external-resources`, `firmwares`, and `tools` folders from within the repo folder one level up i.e. `~/Desktop/HapticSynaptic`.
7. Create "Data" folder in `/Users/temp/Library/Application Support/Electron`. Copy the `external-resources` folder inside it.

## Running the development version of the app

To make changes to `braceletmaker-gui`, `braceletmaker-blocks`, and `braceletmaker-vm` while working on `braceletmaker-desktop` you need to override `package.json` versions of these packages with local repos. These are the steps:

1. Run `install-dependencies.sh` shell file in the Terminal. Feel free to open the file to see what it does.

```
zsh ~/Desktop/HapticSynaptic/braceletmaker-desktop/install-dependencies.sh
```

2. Run `npm run build` to prep the `dist` folder for development. You will need to re-run this command after every production build in order to return `dist` folder to development state.

3. Run `npm start` to start the development environment. If the app fails to run with "Initialize resources failed" error modal and terminal output contains `WARN: Check resources failed, try to initialize resources:` then you need to redo steps 5, 6, and 7 from [Installing app dependencies](#installing-app-dependencies).

# Building the app

1. Upgrade electron-builder to a version that knows how to deal with child dependencies.

```
npm install electron-builder@23.0.2
```

2. Generate `.dmg` at `~/Desktop/HapticSynaptic/braceletmaker-desktop/dist`.

```
npm run dist
```
