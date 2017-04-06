# Binlib

## Distribution
All you really need in order to use Binlib in your mod is `Binlib.psc`. Feel free to include it in your releases.

## Quick Reference
### Bitwise Operations
No real explaination needed. They do what you'd expect
```papyrus
int Function BitwiseAND(int A, int B)
int Function BitwiseNAND(int A, int B)
int Function BitwiseOR(int A, int B)
int Function BitwiseNOR(int A, int B)
int Function BitwiseXOR(int A, int B)
int Function BitwiseXNOR(int A, int B)
int Function BitwiseNOT(int A)
```
### ABitwise Operations
Like the above, but operate on boolean arrays instead of ints
```papyrus
bool[] Function ABitwiseAND(bool[] A, bool[] B)
bool[] Function ABitwiseNAND(bool[] A, bool[] B)
bool[] Function ABitwiseOR(bool[] A, bool[] B)
bool[] Function ABitwiseNOR(bool[] A, bool[] B)
bool[] Function ABitwiseXOR(bool[] A, bool[] B)
bool[] Function ABitwiseXNOR(bool[] A, bool[] B)
bool[] Function ABitwiseNOT(bool[] A)
```
### Integer-Array conversion
```papyrus
int Function ArrayToInt(bool[] val)
bool[] Function IntToArray(int val)
```
### Single Bit Operations
```papyrus
int Function GetBit(int Val, int Bit)
int Function SetBit(int Val, int Bit, int BitState)
```
### Shifts
```papyrus
int Function RightShift(int Val, int Amt)
int Function LeftShift(int Val, int Amt)
```

## Testing
Binlib uses [Lilac](https://github.com/chesko256/Lilac) for testing. To run the test suites just add BinlibTest.esp to your load order, enable papyrus logging, start the game, and then type `startquest BinlibTests` in the console. The results of the tests will be located in the papyrus log.

## Profiling
Binlib can be profiled by (with profiling enabled) running `cgf "Binlib_Profile.Profile` in the console. This calls everything in Binlib a bunch of times and produces a file named `Script_binlib.*.log` which you can open with PapyrusProfileAnalyzer.exe