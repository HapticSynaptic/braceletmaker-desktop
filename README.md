# braceletmaker-desktop

## Developing and building Bracelet Maker app

Bracelet Maker app depends on three other projects:

1. `braceletmaker-gui`: playground i.e. what you see when you open the app
2. `braceletmaker-blocks`: the UI library for the blocks
3. `braceletmaker-vm`: responsible for pairing blocks with code that's sent to Arduino e.g. "wait 2 seconds" block in the app is sent as `delay(2000)` to Arduino

Think of this repo as a set of instructions that packages `braceletmaker-gui` playground into `.exe` for Windows and `.app` for Mac.

## [Windows](./windows.md)

## [Mac](./mac.md)
