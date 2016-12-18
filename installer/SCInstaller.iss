[Setup]
AppName=acQuire TestComplete Style Checker
AppVersion=0.1
Compression=none
SolidCompression=true
DefaultDirName={localappdata}
DisableDirPage=true
CreateAppDir=false
DisableProgramGroupPage=true
Uninstallable=false
OutputBaseFilename=TCSyntaxChecker

[Files]
Source: C:\p4depot\acquire\users\gbonetti\StyleChecker\CheckStyle.tcx; DestDir: {pf32}\SmartBear\TestComplete 9\Bin\Extensions\ScriptExtensions\
Source: C:\p4depot\acquire\users\gbonetti\StyleChecker\src\config\config.json; DestDir: {localappdata}\SmartBear\TestComplete\9.0\StyleChecker\
Source: C:\p4depot\acquire\users\gbonetti\StyleChecker\src\config\reporter.js; DestDir: {localappdata}\SmartBear\TestComplete\9.0\StyleChecker\
Source: C:\p4depot\acquire\users\gbonetti\StyleChecker\installer\node-v0.10.22-x86.msi; DestDir: {tmp}; Flags: deleteafterinstall

[Run]
Filename: msiexec.exe; Parameters: "/i ""{tmp}\node-v0.10.22-x86.msi"" "; WorkingDir: {tmp}; StatusMsg: Installing NodeJS
Filename: C:\Program Files (x86)\nodejs\npm.cmd; Parameters: install -g jshint; Flags: shellexec
