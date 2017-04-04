ScriptName Binlib_test extends Lilac
import Binlib

Function TestSuites()
	describe("Boolean Functions", BooleanTestSuite())
	describe("Bitwise Functions", BitwiseTestSuite())
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
	Return True
EndFunction

bool Function BitwiseANDTestCases()
	expect(Binlib.BitwiseAND(255, 15), to, beEqualTo, 15)
	Return True
EndFunction