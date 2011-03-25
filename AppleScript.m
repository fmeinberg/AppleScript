BeginPackage["AppleScript`"]

AppleScript::usage="":

Begin["Private`"]

AppleScript["RunFile",file_]:=
	Run["osascript "<> file]

AppleScript["RunScript", script_]:=
	Block[{file = ToFileName[$TemporaryDirectory, "script.txt"]},
		Export[file, script, "String"];
		AppleScript["RunFile", file]
	]

End[]
EndPackage[]



