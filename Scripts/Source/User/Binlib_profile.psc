ScriptName Binlib_Profile
import Binlib

Function CallTimes(string fname, int times) Global
	int i = 0
	var[] args = new var[0]
	
	While(i < times)
		Utility.CallGlobalFunction("Binlib_Profiling", fname, args)
		i += 1
	EndWhile
EndFunction

; call the logical functions with every input combination to test
; all code paths
Function ProfileLogicalAND() Global
	Binlib.LogicalAND(False, False)
	Binlib.LogicalAND(False, True)
	Binlib.LogicalAND(True, False)
	Binlib.LogicalAND(True, True)
EndFunction

Function ProfileLogicalNAND() Global
	Binlib.LogicalNAND(False, False)
	Binlib.LogicalNAND(False, True)
	Binlib.LogicalNAND(True, False)
	Binlib.LogicalNAND(True, True)
EndFunction

Function ProfileLogicalOR() Global
	Binlib.LogicalOR(False, False)
	Binlib.LogicalOR(False, True)
	Binlib.LogicalOR(True, False)
	Binlib.LogicalOR(True, True)
EndFunction

Function ProfileLogicalNOR() Global
	Binlib.LogicalNOR(False, False)
	Binlib.LogicalNOR(False, True)
	Binlib.LogicalNOR(True, False)
	Binlib.LogicalNOR(True, True)
EndFunction

Function ProfileLogicalXOR() Global
	Binlib.LogicalXOR(False, False)
	Binlib.LogicalXOR(False, True)
	Binlib.LogicalXOR(True, False)
	Binlib.LogicalXOR(True, True)
EndFunction

Function ProfileLogicalXNOR() Global
	Binlib.LogicalXNOR(False, False)
	Binlib.LogicalXNOR(False, True)
	Binlib.LogicalXNOR(True, False)
	Binlib.LogicalXNOR(True, True)
EndFunction

Function ProfileLogicalNOT() Global
	Binlib.LogicalNOT(False)
	Binlib.LogicalNOT(False)
EndFunction

Function ProfileLogicalFunctions(int times) Global
	CallTimes("ProfileLogicalAND", times)
	CallTimes("ProfileLogicalNAND", times)
	CallTimes("ProfileLogicalOR", times)
	CallTimes("ProfileLogicalNOR", times)
	CallTimes("ProfileLogicalXOR", times)
	CallTimes("ProfileLogicalXNOR", times)
	CallTimes("ProfileLogicalNOT", times)
EndFunction

Function ProfileRightShift() Global
	int i = 0
	While(i < 32)
		Binlib.RightShift(1, i)
		i += 1
	EndWhile
EndFunction

; should probably be shifting something other than 1 here,
; but the code will still take the same time to run
Function ProfileLeftShift() Global
	int i = 0
	While(i < 32)
		Binlib.LeftShift(1, i)
		i += 1
	EndWhile
EndFunction

Function ProfileMiscFunctions(int times) Global
	CallTimes("ProfileRightShift", times)
	CallTimes("ProfileLeftShift", times)
EndFunction

Function ProfileABitwiseFunctions(int times) Global
EndFunction

Function ProfileBitwiseAND() Global
	Binlib.BitwiseAND(0, 0)
	Binlib.BitwiseAND(-1, -1)
	Binlib.BitwiseAND(65535, -65536)
	Binlib.BitwiseAND(1431655765, -1431655766)
EndFunction

Function ProfileBitwiseNAND() Global
	Binlib.BitwiseNAND(0, 0)
	Binlib.BitwiseNAND(-1, -1)
	Binlib.BitwiseNAND(65535, -65536)
	Binlib.BitwiseNAND(1431655765, -1431655766)
EndFunction

Function ProfileBitwiseOR() Global
	Binlib.BitwiseOR(0, 0)
	Binlib.BitwiseOR(-1, -1)
	Binlib.BitwiseOR(65535, -65536)
	Binlib.BitwiseOR(1431655765, -1431655766)
EndFunction

Function ProfileBitwiseNOR() Global
	Binlib.BitwiseNOR(0, 0)
	Binlib.BitwiseNOR(-1, -1)
	Binlib.BitwiseNOR(65535, -65536)
	Binlib.BitwiseNOR(1431655765, -1431655766)
EndFunction

Function ProfileBitwiseFunctions(int times) Global
	CallTimes("ProfileBitwiseAND", times)
	CallTimes("ProfileBitwiseNAND", times)
	CallTimes("ProfileBitwiseOR", times)
	CallTimes("ProfileBitwiseNOR", times)
EndFunction

Function ProfileOptimized() Global
	Debug.StartScriptProfiling("Binlib")
	
	Binlib.BitwiseAND(0, 0)
	
	Debug.StopScriptProfiling("Binlib")
	Debug.MessageBox("profiling done")
EndFunction


Function ProfileSingle() Global
	Debug.StartScriptProfiling("Binlib")
	Binlib.BitwiseAND(0, 0)
	Debug.StopScriptProfiling("Binlib")
	Debug.MessageBox("profiling done")
EndFunction

Function Profile() Global
	Debug.StartScriptProfiling("Binlib")
	ProfileLogicalFunctions(100)
	Debug.Notification("logical functions done")
	ProfileMiscFunctions(25)
	Debug.Notification("misc functions done")
	ProfileABitwiseFunctions(10)
	Debug.Notification("abitwise functions done")
	ProfileBitwiseFunctions(25)
	Debug.Notification("bitwise functions done")
	Debug.StopScriptProfiling("Binlib")
	Debug.MessageBox("profiling done")
EndFunction