ScriptName Binlib_test extends Lilac
import Binlib

Function TestSuites()
	describe("Boolean Functions", BooleanTestSuite())
	describe("Bitwise Functions", BitwiseTestSuite())
	describe("Shift Functions", ShiftTestSuite())
	describe("Conversion Functions", ConversionTestSuite())
EndFunction

bool Function BooleanTestSuite()
	it("LogicalAND", LogicalANDTestCases())
	it("LogicalNAND", LogicalNANDTestCases())
	it("LogicalOR", LogicalORTestCases())
	it("LogicalNOR", LogicalNORTestCases())
	it("LogicalXOR", LogicalXORTestCases())
	it("LogicalXNOR", LogicalXNORTestCases())
	it("LogicalNOT", LogicalNOTTestCases())
	Return True
EndFunction

bool Function LogicalANDTestCases()
	expect(Binlib.LogicalAND(False, False), to, beEqualTo, False)
	expect(Binlib.LogicalAND(False, True), to, beEqualTo, False)
	expect(Binlib.LogicalAND(True, False), to, beEqualTo, False)
	expect(Binlib.LogicalAND(True, True), to, beEqualTo, True)
	Return True
EndFunction

bool Function LogicalNANDTestCases()
	expect(Binlib.LogicalNAND(False, False), to, beEqualTo, True)
	expect(Binlib.LogicalNAND(False, True), to, beEqualTo, True)
	expect(Binlib.LogicalNAND(True, False), to, beEqualTo, True)
	expect(Binlib.LogicalNAND(True, True), to, beEqualTo, False)
	Return True
EndFunction

bool Function LogicalORTestCases()
	expect(Binlib.LogicalOR(False, False), to, beEqualTo, False)
	expect(Binlib.LogicalOR(False, True), to, beEqualTo, True)
	expect(Binlib.LogicalOR(True, False), to, beEqualTo, True)
	expect(Binlib.LogicalOR(True, True), to, beEqualTo, True)
	Return True
EndFunction

bool Function LogicalNORTestCases()
	expect(Binlib.LogicalNOR(False, False), to, beEqualTo, True)
	expect(Binlib.LogicalNOR(False, True), to, beEqualTo, False)
	expect(Binlib.LogicalNOR(True, False), to, beEqualTo, False)
	expect(Binlib.LogicalNOR(True, True), to, beEqualTo, False)
	Return True
EndFunction

bool Function LogicalXORTestCases()
	expect(Binlib.LogicalXOR(False, False), to, beEqualTo, False)
	expect(Binlib.LogicalXOR(False, True), to, beEqualTo, True)
	expect(Binlib.LogicalXOR(True, False), to, beEqualTo, True)
	expect(Binlib.LogicalXOR(True, True), to, beEqualTo, False)
	Return True
EndFunction

bool Function LogicalXNORTestCases()
	expect(Binlib.LogicalXNOR(False, False), to, beEqualTo, True)
	expect(Binlib.LogicalXNOR(False, True), to, beEqualTo, False)
	expect(Binlib.LogicalXNOR(True, False), to, beEqualTo, False)
	expect(Binlib.LogicalXNOR(True, True), to, beEqualTo, True)
	Return True
EndFunction

bool Function LogicalNOTTestCases()
	expect(Binlib.LogicalNOT(False), to, beEqualTo, True)
	expect(Binlib.LogicalNOT(True), to, beEqualTo, False)
	Return True
EndFunction

bool Function BitwiseTestSuite()
	it("BitwiseAND", BitwiseANDTestCases())
	it("BitwiseNAND", BitwiseNANDTestCases())
	it("BitwiseOR", BitwiseORTestCases())
	it("BitwiseNOR", BitwiseNORTestCases())
	it("BitwiseXOR", BitwiseXORTestCases())
	it("BitwiseXNOR", BitwiseXNORTestCases())
	it("BitwiseNOT", BitwiseNOTTestCases())
	Return True
EndFunction

bool Function BitwiseANDTestCases()
	expect(Binlib.BitwiseAND(255, 15), to, beEqualTo, 15)
	Return True
EndFunction

bool Function BitwiseNANDTestCases()
	expect(Binlib.BitwiseNAND(255, 15), to, beEqualTo, -16)
	Return True
EndFunction

bool Function BitwiseORTestCases()
	expect(Binlib.BitwiseOR(255, 15), to, beEqualTo, 255)
	Return True
EndFunction

bool Function BitwiseNORTestCases()
	expect(Binlib.BitwiseNOR(255, 15), to, beEqualTo, -256)
	Return True
EndFunction

bool Function BitwiseXORTestCases()
	expect(Binlib.BitwiseXOR(255, 15), to, beEqualTo, 240)
	Return True
EndFunction

bool Function BitwiseXNORTestCases()
	expect(Binlib.BitwiseXNOR(255, 15), to, beEqualTo, -241)
	Return True
EndFunction

bool Function BitwiseNotTestCases()
	expect(Binlib.BitwiseNOT(0), to, beEqualTo, -1)
	Return True
EndFunction

bool Function ShiftTestSuite()
	it("RightShift", RightShiftTestCases())
	it("LeftShift", LeftShiftTestCases())
	Return True
EndFunction

bool Function RightShiftTestCases()
	expect(Binlib.RightShift(0, 1), to, beEqualTo, 0)
	expect(Binlib.RightShift(1, 0), to, beEqualTo, 1)
	expect(Binlib.RightShift(1, 1), to, beEqualTo, 0)
	expect(Binlib.RightShift(2, 1), to, beEqualTo, 1)

	Return True
EndFunction

bool Function LeftShiftTestCases()
	expect(Binlib.LeftShift(0, 0), to, beEqualTo, 0)
	expect(Binlib.LeftShift(1, 0), to, beEqualTo, 1)
	expect(Binlib.LeftShift(1, 1), to, beEqualTo, 2)
	expect(Binlib.LeftShift(2, 1), to, beEqualTo, 4)
	expect(Binlib.LeftShift(-1, 1), to, beEqualTo, -2)
	Return True
EndFunction

bool Function ConversionTestSuite()
	it("Conversion", ConversionTestCases())
	Return True
EndFunction

bool Function ConversionTestCases()
	expect(Binlib.ArrayToInt(Binlib.IntToArray(1)), to, beEqualTo, 1)
	expect(Binlib.ArrayToInt(Binlib.IntToArray(2)), to, beEqualTo, 2)
	expect(Binlib.ArrayToInt(Binlib.IntToArray(3)), to, beEqualTo, 3)
	
	expect(Binlib.ArrayToInt(Binlib.IntToArray(2147483646)), to, beEqualTo, 2147483646)
	expect(Binlib.ArrayToInt(Binlib.IntToArray(2147483647)), to, beEqualTo, 2147483647)

	expect(Binlib.ArrayToInt(Binlib.IntToArray(-1)), to, beEqualTo, -1)
	expect(Binlib.ArrayToInt(Binlib.IntToArray(-2)), to, beEqualTo, -2)
	expect(Binlib.ArrayToInt(Binlib.IntToArray(-3)), to, beEqualTo, -3)
	
	expect(Binlib.ArrayToInt(Binlib.IntToArray(-2147483647)), to, beEqualTo, -2147483647)
	expect(Binlib.ArrayToInt(Binlib.IntToArray(-2147483646)), to, beEqualTo, -2147483646)
	Return True
EndFunction