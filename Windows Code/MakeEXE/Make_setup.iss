; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Keypad"
#define TextFiles "TextFiles"
#define MyAppVersion "2.0"
#define MyAppPublisher "Jelle Bakker"
#define MyAppURL "https://github.com/jellebakker96/Keypad-V2"
#define MyAppExeName "Keypad.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{AFF371C8-3889-430C-98A3-9A7E6F7C1BC5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile=C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\Hallo.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
PrivilegesRequired=admin
OutputDir=C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist
OutputBaseFilename=Keypad_setup
SetupIconFile=C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\ggzvs.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "StartMenuEntry"; Description: "{cm:AutoStartProgram,Keypad}"; GroupDescription: "{cm:AutoStartProgramGroupDescription}"; Flags: unchecked

[Files]
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\Keypad.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\{#TextFiles}\config.txt"; DestDir: "{app}\{#TextFiles}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\debugging.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\{#TextFiles}\debugging.txt"; DestDir: "{app}\{#TextFiles}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\documentation.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\ggzvs.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\Keypad_Documentatie.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\log.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\{#TextFiles}\log.txt"; DestDir: "{app}\{#TextFiles}"; Flags: ignoreversion
Source: "C:\Gedeeld\Private Projects\Keypad-V2\Windows Code\MakeEXE\dist\settings.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Dirs]
Name: {app}\{#TextFiles}; Permissions:everyone-modify

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{autostartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: StartMenuEntry

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: runascurrentuser nowait postinstall skipifsilent

