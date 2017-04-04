# Binlib

## Testing
Binlib uses [Lilac](https://github.com/chesko256/Lilac) for testing. To run the test suites just add BinlibTest.esp to your load order, enable papyrus logging, start the game, and then type `startquest BinlibTests` in the console. The results of the tests will be located in the papyrus log.

## Profiling
Binlib can be profiled by (with profiling enabled) running `cgf "Binlib_Profile.Profile` in the console. This calls everything in Binlib a bunch of times and produces a file named `Script_binlib.*.log` which you can open with PapyrusProfileAnalyzer.exe