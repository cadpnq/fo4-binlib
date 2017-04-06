# Binlib

## Quick Reference
### Bitwise Operations
No real explaination needed. They do what you'd expect
```papyrus
int BitwiseAND(int A, int B)
int BitwiseNAND(int A, int B)
int BitwiseOR(int A, int B)
int BitwiseNOR(int A, int B)
int BitwiseXOR(int A, int B)
int BitwiseXNOR(int A, int B)
int Bitwise NOT(int A)
```
### ABitwise Operations
Like the above, but operate on boolean arrays instead of ints
```papyrus
bool[] ABitwiseAND(bool[] A, bool[] B)
bool[] ABitwiseNAND(bool[] A, bool[] B)
bool[] ABitwiseOR(bool[] A, bool[] B)
bool[] ABitwiseNOR(bool[] A, bool[] B)
bool[] ABitwiseXOR(bool[] A, bool[] B)
bool[] ABitwiseXNOR(bool[] A, bool[] B)
bool[] ABitwise NOT(bool[] A)
```
### Integer-Array conversion
```papyrus
int ArrayToInt(bool[] val)
bool[] IntToArray(int val)
```
### Single Bit Operations
```papyrus
int GetBit(int Val, int Bit)
int SetBit(int Val, int Bit, int BitState)
```
### Shifts
```papyrus
int RightShift(int Val, int Amt)
int LeftShift(int Val, int Amt)
```

## Testing
Binlib uses [Lilac](https://github.com/chesko256/Lilac) for testing. To run the test suites just add BinlibTest.esp to your load order, enable papyrus logging, start the game, and then type `startquest BinlibTests` in the console. The results of the tests will be located in the papyrus log.

## Profiling
Binlib can be profiled by (with profiling enabled) running `cgf "Binlib_Profile.Profile` in the console. This calls everything in Binlib a bunch of times and produces a file named `Script_binlib.*.log` which you can open with PapyrusProfileAnalyzer.exe