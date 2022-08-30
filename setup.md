# Developing and building Bracelet Maker app

Bracelet Maker app depends on three other projects:

1. `openblock-gui`: playground i.e. what you see when you open the app
2. `openblock-blocks`: the UI library for the blocks
3. `openblock-vm`: responsible for pairing blocks with code that's sent to Arduino e.g. "wait 2 seconds" block in the app is sent as `delay(2000)` to Arduino

Think of this repo as a set of instructions that package `openblock-gui` playground into `.exe` for Windows and `.app` for Mac. Instructions on how to setup development of Bracelet Maker app and generate the executables are linked to below.

## [Windows](./windows.md)

## [Mac](./mac.md)
