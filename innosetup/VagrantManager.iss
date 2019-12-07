; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Vagrant Manager"
#define MyAppVersion GetFileVersion('..\Lanayo.VagrantManager\bin\Release\VagrantManager.exe')
#define MyAppPublisher "Lanayo, LLC"
#define MyAppURL "http://www.vagrantmanager.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{34208B5B-8321-4C00-892C-FDB5C1FC918F}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppMutex=8112b028-3778-4dc7-b5c7-e864b2849c96
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
CreateAppDir=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=VagrantManager-{#MyAppVersion}-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Icons]
Name: "{group}\Vagrant Manager"; Filename: "{app}\VagrantManager.exe"; WorkingDir: "{app}"

[InstallDelete]
Type: files; Name: {app}\Lanayo.VagrantManager.exe
Type: files; Name: {app}\Lanayo.VagrantManager.exe.config

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\Lanayo.VagrantManager\bin\Release\*"; DestDir: "{app}"; Excludes: "*.pdb"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{app}\VagrantManager.exe"; Description: "Start Vagrant Manager"; Flags: postinstall runasoriginaluser nowait

