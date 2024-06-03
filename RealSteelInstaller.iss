#define MyAppName "Real Steel"
#define MyAppVersion "1.0"
#define MyAppPublisher "Yukes"
#define MyAppURL "http://realsteel.rf.gd"
#define MyAppSetupIcon "C:\Users\epice\OneDrive\Desktop\Real Steel\RealSteelIcon.ico"

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppSupportURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=.
OutputBaseFilename=Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
SetupIconFile={#MyAppSetupIcon}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoProductName={#MyAppName}
DiskSpanning=yes
DiskSliceSize=max

[Types]
Name: "full"; Description: "Full installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "xenia_canary"; Description: "Xenia Canary Emulator"; Types: full custom
Name: "xenia_stfs"; Description: "Xenia STFS Emulator"; Types: full custom

[Files]
Source: "C:\Users\epice\OneDrive\Desktop\Real Steel\Xenia Canary\*"; DestDir: "{app}\XeniaCanary"; Components: xenia_canary; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\epice\OneDrive\Desktop\Real Steel\Xenia STFS\*"; DestDir: "{app}\XeniaSTFS"; Components: xenia_stfs; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\epice\OneDrive\Desktop\Real Steel\62939F79719792E4C7A3023F3C63E17428928B4D58"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\epice\OneDrive\Desktop\Real Steel\RealSteelIcon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\epice\OneDrive\Desktop\Real Steel\run_xenia_canary.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\epice\OneDrive\Desktop\Real Steel\run_xenia_stfs.bat"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName} (Xenia Canary)"; Filename: "{app}\run_xenia_canary.bat"; Components: xenia_canary; IconFilename: "{app}\RealSteelIcon.ico"; Parameters: ""; WorkingDir: "{app}"
Name: "{group}\{#MyAppName} (STFS)"; Filename: "{app}\run_xenia_stfs.bat"; Components: xenia_stfs; IconFilename: "{app}\RealSteelIcon.ico"; Parameters: ""; WorkingDir: "{app}"

[Run]
Filename: "{app}\run_xenia_canary.bat"; Description: "Launch Real Steel with Xenia Canary"; Components: xenia_canary; Flags: nowait postinstall skipifsilent
Filename: "{app}\run_xenia_stfs.bat"; Description: "Launch Real Steel with Xenia STFS"; Components: xenia_stfs; Flags: nowait postinstall skipifsilent
