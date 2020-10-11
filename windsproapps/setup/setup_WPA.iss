;#define TestCompile

#define MyAppName "WinDS PRO Apps"
#define MyAppVerName "WinDS PRO Apps 2017.02.16"
#define MyAppVersion "2017.02.16"
#define MyAppPublisher "WinDS PRO Central"
#define MyAppPublisherCopyright "WinDS PRO Apps © 2017 WinDS PRO Central"
#define MyAppURL "http://windsprocentral.blogspot.com/"
#define MyAppExeName "windsproapps.exe"

[Setup]
; app
AppID={{92C4C953-5CE1-4DC3-97D5-BBD1A63EF706}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppVersion={#MyAppVersion}
AppCopyright={#MyAppPublisherCopyright}
; version
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription={#MyAppName}
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCopyright={#MyAppPublisherCopyright}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
; system
ArchitecturesInstallIn64BitMode=x64
;ChangesEnvironment=yes
;ChangesAssociations=yes
;AlwaysRestart=yes
; compression
#ifdef TestCompile
Compression=none
SolidCompression=false
InternalCompressLevel=none
#else
Compression=lzma2/Ultra64
SolidCompression=true
InternalCompressLevel=Ultra64
#endif
; output
#ifdef TestCompile
  OutputBaseFilename={#MyAppVerName}_test
#else
  OutputBaseFilename={#MyAppVerName}
#endif
; folders
DirExistsWarning=no
UsePreviousAppDir=yes
DefaultDirName={commondocs}\{#MyAppName}
; group
UsePreviousGroup=no
DefaultGroupName={#MyAppName}
; language
ShowLanguageDialog=yes
UsePreviousLanguage=yes
; uninstall
UninstallDisplayName={#MyAppVerName}
UninstallFilesDir={app}\uninstall
UninstallDisplayIcon={app}\{#MyAppExeName}
; style
SetupIconFile=windsproapps.ico
WizardImageFile=barra.bmp
WizardSmallImageFile=icono.bmp
WizardImageStretch=false
WizardImageBackColor=clWhite
; pages
;DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes
DisableFinishedPage=yes
; privileges
;PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"
Name: chinesesimp; MessagesFile: ChineseSimplified.isl
Name: chinesetrad; MessagesFile: ChineseTraditional.isl
Name: korean; MessagesFile: Korean.isl
Name: arabic; MessagesFile: Arabic.isl
Name: hindi; MessagesFile: Hindi.islu

[Files]
;Source: "windsproapps.exe"; DestDir: "{app}"; DestName: "windsproapps.exe"; Flags: ignoreversion;
Source: electron\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: windsproapps\*; DestDir: {app}\windsproapps\; Flags: ignoreversion recursesubdirs createallsubdirs;
;Check: Not Is64BitInstallMode
;Source: "windsproapps_x64.exe"; DestDir: "{app}"; DestName: "windsproapps.exe"; Flags: ignoreversion; Check: Is64BitInstallMode
;Source: "windsproapps\applist\*"; DestDir: "{app}\windsproapps\applist\"; Flags: ignoreversion
;Source: "windsproapps\sys\*"; DestDir: "{app}\windsproapps\sys\"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "windsproapps\syslist\*"; DestDir: "{app}\windsproapps\syslist"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: {commonprograms}\{groupname}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0
Name: {commonprograms}\{groupname}\{#MyAppPublisher}; Filename: {#MyAppURL}; Comment: {#MyAppPublisher}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0

[Run]
;Filename: "{app}\{#MyAppExeName}"; Parameters: "-RegisterFileAssociation"; WorkingDir: {app}; StatusMsg: "-RegisterFileAssociation"
;Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Flags: postinstall nowait; Description: {#MyAppName}; StatusMsg: {#MyAppName}...
Filename:"http://windsprocentral.blogspot.com/"; Flags: postinstall nowait shellexec

[UninstallRun]
;Filename: "{app}\{#MyAppExeName}"; Parameters: "-UnRegisterFileAssociation"; WorkingDir: {app}; StatusMsg: "-UnRegisterFileAssociation"
Filename:"http://windsprocentral.blogspot.com/"; Flags: nowait shellexec

[Registry]    
; Listar en Abrir con...
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\shell\open\command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

; listar en App Paths (ShellExecuteEx)
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueName: Path; ValueData: """{app}"""; Flags: uninsdeletekey