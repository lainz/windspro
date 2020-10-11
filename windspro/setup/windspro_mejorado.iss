;#define TestCompile
#define Library

#define MyAppName "WinDS PRO"
#define MyAppRegName "windspro"

#define MyAppVerName "WinDS PRO 2020.06.03"
#define MyAppVersion "2020.06.03"
#define MyAppPublisher "WinDS PRO Central"
#define MyAppPublisherCopyright "WinDS PRO © 2020 WinDS PRO Central"
#define MyAppURL "https://windsprocentral.blogspot.com/"
#define MyAppExeName "windspro.exe"

#define ExtraLanguages "arabic hindi catalan corsican czech danish dutch finnish hebrew norwegian polish russian slovenian turkish ukrainian"

[Setup]
; app
AppMutex=WinDS PRO
AppID={{4237FF56-4BD0-481E-BD44-C1A8DDA9C753}
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
ChangesEnvironment=yes
ChangesAssociations=yes
;PrivilegesRequiredOverridesAllowed=dialog
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
OutputBaseFilename={#MyAppVerName}
; folders
DirExistsWarning=no
UsePreviousAppDir=yes
DefaultDirName={commondocs}\{#MyAppName}
; group
UsePreviousGroup=yes
DefaultGroupName={#MyAppName}
; language
ShowLanguageDialog=yes
UsePreviousLanguage=yes
; uninstall
UninstallDisplayName={#MyAppVerName}
UninstallFilesDir={app}\uninstall
UninstallDisplayIcon={app}\{#MyAppExeName}
; style
WizardStyle=modern
SetupIconFile=windsproapps.ico
WizardImageFile=barra.bmp
WizardSmallImageFile=icono.bmp
WizardImageStretch=false
WizardImageBackColor=clWhite

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: french; MessagesFile: compiler:Languages\French.isl
Name: german; MessagesFile: compiler:Languages\German.isl
Name: italian; MessagesFile: compiler:Languages\Italian.isl
Name: japanese; MessagesFile: compiler:Languages\Japanese.isl
Name: spanish; MessagesFile: compiler:Languages\Spanish.isl
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
Name: chinesesimp; MessagesFile: ChineseSimplified.isl
Name: chinesetrad; MessagesFile: ChineseTraditional.isl
Name: korean; MessagesFile: Korean.isl
; Extra
Name: arabic; MessagesFile: Arabic.isl
Name: hindi; MessagesFile: Hindi.islu
; Extra
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
;Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
;Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
;Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
;Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
;Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
;Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[CustomMessages]
english.applications=Applications
english.savedgames=Saved games
english.searchwithgoogle=Search with Google
english.rominfo=ROM Info
english.trimrom=Trim ROM

chinesesimp.applications=应用
chinesesimp.savedgames=保存的游戏
chinesesimp.searchwithgoogle=搜索与谷歌

chinesetrad.applications=应用
chinesetrad.savedgames=保存的游戏
chinesetrad.searchwithgoogle=搜索与谷歌

brazilianportuguese.applications=Aplicações
brazilianportuguese.savedgames=Jogos salvos
brazilianportuguese.searchwithgoogle=Pesquisa com Google

portuguese.applications=Aplicações
portuguese.savedgames=Jogos salvos
portuguese.searchwithgoogle=Pesquisa com Google

italian.applications=Applicazioni
italian.savedgames=Gioco salvato
italian.searchwithgoogle=Riserca con Google

hindi.applications=आवेदन
hindi.savedgames=सहेजे गए गेम
hindi.searchwithgoogle=गूगल के साथ खोज

french.applications=Applications
french.savedgames=Parties sauvegardées
french.searchwithgoogle=Recherche Google

spanish.applications=Aplicaciones
spanish.savedgames=Partidas guardadas
spanish.searchwithgoogle=Buscar en Google

german.applications=Anwendungen
german.savedgames=Gespeicherte spiele
german.searchwithgoogle=Suche mit Google

arabic.applications=تطبيقات
arabic.savedgames=الألعاب التي تم حفظها
arabic.searchwithgoogle=البحث مع جوجل

[Code]
//var
//  WelcomePageID: Integer;
//  BitmapImage: TBitmapImage;

//procedure CurPageChanged(CurPageID: Integer);
//begin
//  if CurPageID = wpSelectComponents then
//    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
//  else if CurPageID = wpFinished then
//    WizardForm.NextButton.Caption := SetupMessage(msgButtonFinish)
//  else
//    WizardForm.NextButton.Caption := SetupMessage(msgButtonNext);

//  BitmapImage.Visible := CurPageID = WelcomePageID;
//  WizardForm.Bevel1.Visible := CurPageID <> WelcomePageID;
//  WizardForm.MainPanel.Visible := CurPageID <> WelcomePageID;
//  WizardForm.InnerNotebook.Visible := CurPageID <> WelcomePageID;
//end;

//function InitializeSetup: boolean;
//begin
//  ExtractTemporaryFile('background.bmp');
//
//  Result := True;
//end;

//procedure InitializeWizard;
//var
//  WelcomePage: TWizardPage;  
//begin
//  WelcomePage := CreateCustomPage(wpWelcome, '', '');
//  WelcomePageID := WelcomePage.ID;
//  BitmapImage := TBitmapImage.Create(WizardForm);
// BitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\background.bmp'));
//  BitmapImage.Top := 0;
//  BitmapImage.Left := 0;
// BitmapImage.Stretch := True;
//  BitmapImage.Align := alClient;
//  BitmapImage.Cursor := crHand;
//  BitmapImage.Visible := False;
//  BitmapImage.Parent := WizardForm.InnerPage;
//  BitmapImage.Cursor := crDefault;
//end;

[Components]
;Name: "WP"; Description: "WinDS PRO"; Types: full compact custom; Flags: fixed;
#ifdef Library
Name: "OpenAL"; Description: "OpenAL (Audio)"; Types: full;
Name: "VCRedist2010"; Description: "Microsoft Visual C++ 2010"; Types: full;
Name: "VCRedist2012"; Description: "Microsoft Visual C++ 2012"; Types: full;
Name: "VCRedist2013"; Description: "Microsoft Visual C++ 2013"; Types: full;
Name: "VCRedist2015"; Description: "Microsoft Visual C++ 2015 / 2017 / 2019"; Types: full compact custom; Flags: fixed;
Name: "DirectX9"; Description: "DirectX 9.0c"; Types: full compact custom; Flags: fixed;
#endif

[Files]
;Source: background.bmp; Flags: dontcopy
Source: windsproinfo.exe; DestDir: {app}; Flags: ignoreversion; 
Source: sgsearch.exe; DestDir: {app}; Flags: ignoreversion; 
Source: gsearch.exe; DestDir: {app}; Flags: ignoreversion; 
Source: trimmer.exe; DestDir: {app}; Flags: ignoreversion; 
;Source: windspro.url; DestDir: {app}; Flags: ignoreversion; 
;Source: lua51.dll; DestDir: {app}; Flags: ignoreversion; 
;Source: lua5.1.dll; DestDir: {app}; Flags: ignoreversion; 
;Source: windspro.ico; DestDir: {app}; Flags: ignoreversion; 
;Source: {#MyAppExeName}; DestDir: {app}; Flags: ignoreversion; 
;Source: windspro.cdd; DestDir: {app}; Flags: ignoreversion; 
Source: windspro.dll; DestDir: {app}; Flags: ignoreversion; 
Source: emu\*; DestDir: {app}\emu; Flags: ignoreversion recursesubdirs createallsubdirs; 
;Source: locale\*; DestDir: {app}\locale; Excludes: "*.po"; Flags: ignoreversion recursesubdirs createallsubdirs; 
Source: 3dsexplorer\*; DestDir: {app}\3dsexplorer; Flags: ignoreversion recursesubdirs createallsubdirs; 
Source: electron\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs; 
; desmume x86
Source: desmume_\x86\desmume.exe; DestDir: {app}\emu\desmume\; Flags: ignoreversion; Check: Not Is64BitInstallMode; 
; desmume x64
Source: desmume_\x64\desmume.exe; DestDir: {app}\emu\desmume\; Flags: ignoreversion; Check: Is64BitInstallMode; 

Source: language\ch.js; DestDir: {app}\resources\app; DestName: language.js; Languages: chinesesimp chinesetrad; Flags: ignoreversion; 
Source: language\de.js; DestDir: {app}\resources\app; DestName: language.js; Languages: german; Flags: ignoreversion; 
Source: language\en.js; DestDir: {app}\resources\app; DestName: language.js; Languages: english korean {#ExtraLanguages}; Flags: ignoreversion; 
Source: language\es.js; DestDir: {app}\resources\app; DestName: language.js; Languages: spanish; Flags: ignoreversion; 
Source: language\fr.js; DestDir: {app}\resources\app; DestName: language.js; Languages: french; Flags: ignoreversion; 
Source: language\it.js; DestDir: {app}\resources\app; DestName: language.js; Languages: italian; Flags: ignoreversion; 
Source: language\jp.js; DestDir: {app}\resources\app; DestName: language.js; Languages: japanese; Flags: ignoreversion; 
Source: language\pt.js; DestDir: {app}\resources\app; DestName: language.js; Languages: brazilianportuguese portuguese; Flags: ignoreversion; 

; library
#ifdef Library
Source: library\oalinst.exe; DestDir: {tmp}; Flags: ignoreversion; Components: OpenAL
Source: library\vcredist_2008_x86.exe; DestDir: {tmp}; Flags: ignoreversion
Source: library\vcredist_2008_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode
Source: library\vcredist_2010_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2010
Source: library\vcredist_2010_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2010
Source: library\vcredist_2012_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2012
Source: library\vcredist_2012_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2012
Source: library\vcredist_2013_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2013
Source: library\vcredist_2013_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2013
Source: library\vcredist_2015_2017_2019_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2015
Source: library\vcredist_2015_2017_2019_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2015
;Source: library\WinPcap_4_1_2.exe; DestDir: {tmp}; Flags: ignoreversion;
Source: library\dxwebsetup.exe; DestDir: {tmp}; Flags: ignoreversion; Components: DirectX9
#endif

[Run]
#ifdef Library
Filename: {tmp}\oalinst.exe; Parameters: "/silent"; WorkingDir: {tmp}; StatusMsg: "OpenAL Setup..."; Components: OpenAL
Filename: {tmp}\vcredist_2008_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2008 x86 Setup..."
Filename: {tmp}\vcredist_2008_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2008 x64 Setup..."; Check: Is64BitInstallMode
Filename: {tmp}\vcredist_2010_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2010 x86 Setup..."; Components: VCRedist2010
Filename: {tmp}\vcredist_2010_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2010 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2010
Filename: {tmp}\vcredist_2012_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2012 x86 Setup..."; Components: VCRedist2012
Filename: {tmp}\vcredist_2012_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2012 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2012
Filename: {tmp}\vcredist_2013_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2013 x86 Setup..."; Components: VCRedist2013
Filename: {tmp}\vcredist_2013_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2013 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2013
Filename: {tmp}\vcredist_2015_2017_2019_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2015 / 2017 / 2019 x86 Setup..."; Components: VCRedist2015
Filename: {tmp}\vcredist_2015_2017_2019_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2015 / 2017 / 2019 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2015
;Filename: {tmp}\WinPcap_4_1_2.exe; WorkingDir: {tmp};
Filename: {tmp}\dxwebsetup.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "DirectX 9.0 Web Setup..."; Components: DirectX9
#endif

[INI]
; no$zoomer nombre de idioma
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Chinese Simplified (Money114); Languages: chinesesimp
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Chinese Traditional (Lo585983); Languages: chinesetrad
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: German (Shona); Languages: german
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: English (Squall Leonhart); Languages: english brazilianportuguese french korean portuguese {#ExtraLanguages}
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Español (WinDS PRO); Languages: spanish
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Italian (Gheporait); Languages: italian
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Japanese; Languages: japanese

; desmume firmware idioma
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 1; Languages: chinesesimp
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 1; Languages: chinesetrad
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 3; Languages: german
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 1; Languages: english brazilianportuguese korean portuguese {#ExtraLanguages}
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 5; Languages: spanish
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 2; Languages: french
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 4; Languages: italian
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 0; Languages: japanese

; desmume nombre de idioma
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 0; Languages: english german {#ExtraLanguages}
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 1; Languages: french
;Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 2; Languages: ?
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 3; Languages: chinesesimp chinesetrad 
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 4; Languages: italian
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 5; Languages: japanese
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 6; Languages: spanish
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 7; Languages: korean
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 8; Languages: brazilianportuguese portuguese

; configuracion vbalink
Filename: {app}\emu\vbalink\vba1.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba2.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba3.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba4.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba1.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba2.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba3.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba4.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba1.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas
Filename: {app}\emu\vbalink\vba2.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas
Filename: {app}\emu\vbalink\vba3.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas
Filename: {app}\emu\vbalink\vba4.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas

[Icons]
Name: "{autoprograms}\{groupname}\{#MyAppName}"; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0
Name: "{autoprograms}\{groupname}\{#MyAppPublisher}"; Filename: {#MyAppURL}; Comment: {#MyAppPublisher}
Name: "{autodesktop}\{#MyAppName}"; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0

[Run]
Filename:"https://windsprocentral.blogspot.com/"; Flags: postinstall nowait shellexec; Description: {#MyAppPublisher}

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari5200"; ValueType: String; ValueData: "Atari 5200"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari5200\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari5200\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari5200\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari7800"; ValueType: String; ValueData: "Atari 7800"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari7800\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari7800\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Atari7800\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariJaguar"; ValueType: String; ValueData: "Atari Jaguar"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariJaguar\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariJaguar\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariJaguar\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariLynx"; ValueType: String; ValueData: "Atari Lynx"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariLynx\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariLynx\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.AtariLynx\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwanColor"; ValueType: String; ValueData: "Bandai Wonder Swan Color"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwanColor\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwanColor\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwanColor\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwan"; ValueType: String; ValueData: "Bandai Wonder Swan"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwan\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwan\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BandaiWonderSwan\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ColecoVision"; ValueType: String; ValueData: "Coleco Vision"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ColecoVision\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ColecoVision\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ColecoVision\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64PP"; ValueType: String; ValueData: "Commodore 64 PP"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64PP\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64PP\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64PP\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64Tapes"; ValueType: String; ValueData: "Commodore 64 Tapes"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64Tapes\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64Tapes\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64Tapes\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64"; ValueType: String; ValueData: "Commodore 64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Commodore64\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodorePlus4"; ValueType: String; ValueData: "Commodore Plus 4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodorePlus4\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodorePlus4\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodorePlus4\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodoreVIC20"; ValueType: String; ValueData: "Commodore VIC 20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodoreVIC20\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodoreVIC20\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.CommodoreVIC20\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECPCEngine"; ValueType: String; ValueData: "NEC PC Engine"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECPCEngine\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECPCEngine\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECPCEngine\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECSuperGrafx"; ValueType: String; ValueData: "NEC Super Grafx"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECSuperGrafx\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECSuperGrafx\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NECSuperGrafx\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoFDS"; ValueType: String; ValueData: "Nintendo FDS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoFDS\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoFDS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoFDS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBA"; ValueType: String; ValueData: "Nintendo GBA"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBA\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBA\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBA\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBC"; ValueType: String; ValueData: "Nintendo GBC"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBC\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBC\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGBC\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGB"; ValueType: String; ValueData: "Nintendo GB"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGB\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGB\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoGB\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS"; ValueType: String; ValueData: "Nintendo 3DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo64"; ValueType: String; ValueData: "Nintendo 64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo64\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo64\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo64\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS"; ValueType: String; ValueData: "Nintendo DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoNES"; ValueType: String; ValueData: "Nintendo NES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoNES\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoNES\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoNES\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoPokemonMini"; ValueType: String; ValueData: "Nintendo Pokemon Mini"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoPokemonMini\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoPokemonMini\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoPokemonMini\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoSNES"; ValueType: String; ValueData: "Nintendo SNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoSNES\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoSNES\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoSNES\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoVirtualBoy"; ValueType: String; ValueData: "Nintendo Virtual Boy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoVirtualBoy\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoVirtualBoy\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoVirtualBoy\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Sega32x"; ValueType: String; ValueData: "Sega 32x"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Sega32x\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Sega32x\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Sega32x\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaGameGear"; ValueType: String; ValueData: "Sega Game Gear"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaGameGear\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaGameGear\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaGameGear\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMasterSystem"; ValueType: String; ValueData: "Sega Master System"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMasterSystem\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMasterSystem\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMasterSystem\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMegaDrive"; ValueType: String; ValueData: "Sega Mega Drive"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMegaDrive\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMegaDrive\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaMegaDrive\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaSG1000"; ValueType: String; ValueData: "Sega SG 1000"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaSG1000\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaSG1000\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.SegaSG1000\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocketColor"; ValueType: String; ValueData: "Neo Geo Pocket Color"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocketColor\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocketColor\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocketColor\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocket"; ValueType: String; ValueData: "Neo Geo Pocket"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocket\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocket\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NeoGeoPocket\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ISO"; ValueType: String; ValueData: "ISO"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ISO\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ISO\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ISO\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ROM"; ValueType: String; ValueData: "ROM"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ROM\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ROM\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.ROM\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BIN"; ValueType: String; ValueData: "BIN"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BIN\DefaultIcon"; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BIN\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.BIN\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\Classes\.a52"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Atari5200"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.a78"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Atari7800"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.j64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.AtariJaguar"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.lnx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.AtariLynx"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.wsc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.BandaiWonderSwanColor"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ws"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.BandaiWonderSwan"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.col"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.ColecoVision"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.g64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64PP"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.nib"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64PP"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.tap"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64Tapes"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.102"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.crt"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.u2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.u3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.u4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.u5"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ua2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ub3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.u24"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodorePlus4"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.u25"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodorePlus4"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.20"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.40"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.60"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.70"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.80"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.a0"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.b0"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ub3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ud7"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ue1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.pce"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NECPCEngine"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sgx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NECSuperGrafx"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.fds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoFDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.agb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBA"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.gba"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBA"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.mb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBA"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.cgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBC"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.gbc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBC"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.gb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGB"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.cmb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGB"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.sgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGB"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.3ds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.3dsx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.cci"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.cxi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.csu"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.n64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.v64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.z64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.jap"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.pal"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.usa"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.dsi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.nds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.pme"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
//Root: HKA; Subkey: "Software\Classes\.srl"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.nes"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.nsf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.unf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.min"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoPokemonMini"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.smc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.fig"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sfc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.swc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.vb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoVirtualBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.vboy"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoVirtualBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.gg"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaGameGear"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sms"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sg"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.mv"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.md"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMegaDrive"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.smd"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMegaDrive"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.gen"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMegaDrive"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ngc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NeoGeoPocketColor"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ngp"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NeoGeoPocket"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.iso"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.ISO"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.rom"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.ROM"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.bin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.BIN"; Flags: uninsdeletevalue uninsdeletekeyifempty

Root: HKA; Subkey: "Software\{#MyAppRegName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities"; ValueType: String; ValueName: "ApplicationName"; ValueData: {#MyAppName}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities"; ValueType: String; ValueName: "ApplicationDescription"; ValueData: "WinDS PRO Apps by WinDS PRO Central"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".a52"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Atari5200"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".a78"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Atari7800"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".j64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.AtariJaguar"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".lnx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.AtariLynx"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".wsc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.BandaiWonderSwanColor"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ws"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.BandaiWonderSwan"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".col"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.ColecoVision"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".g64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64PP"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nib"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64PP"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".tap"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64Tapes"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".102"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".crt"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".u2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".u3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".u4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".u5"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ua2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ub3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Commodore64"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".u24"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodorePlus4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".u25"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodorePlus4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".20"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".40"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".60"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".70"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".80"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".a0"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".b0"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ub3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ud7"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ue1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.CommodoreVIC20"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".pce"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NECPCEngine"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sgx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NECSuperGrafx"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".fds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoFDS"; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".agb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBA"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gba"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBA"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".mb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBA"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBC"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gbc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGBC"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGB"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cmb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGB"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoGB"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".3ds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".3dsx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cci"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cxi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".csu"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".n64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".v64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".z64"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".jap"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".pal"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".usa"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo64"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".dsi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".pme"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".srl"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nes"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nsf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".unf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".min"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoPokemonMini"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".smc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".fig"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sfc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".swc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoSNES"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".vb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoVirtualBoy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".vboy"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoVirtualBoy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gg"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaGameGear"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sms"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sg"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".mv"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMasterSystem"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".md"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMegaDrive"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".smd"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMegaDrive"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gen"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.SegaMegaDrive"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ngc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NeoGeoPocketColor"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".ngp"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NeoGeoPocket"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".iso"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.ISO"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".rom"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.ROM"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".bin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.BIN"; Flags: uninsdeletekey

//Root: HKA; Subkey: "Software\RegisteredApplications"; ValueType: String; ValueName: "WinDSPROApps"; ValueData: "Software\{#MyAppRegName}\Capabilities"; Flags: uninsdeletevalue uninsdeletekeyifempty

//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\shell\open\command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .a52; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .a78; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .j64; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .lnx; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .wsc; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ws; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .col; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .g64; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .nib; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .tap; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .102; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .crt; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .u2; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .u3; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .u4; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .u5; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ua2; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ub3; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .u24; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .u25; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .20; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .40; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .60; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .70; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .80; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .a0; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .b0; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ub3; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ud7; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ue1; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .pce; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .sgx; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .fds; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .agb; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .gba; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .mb; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .cgb; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .gbc; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .gb; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .cmb; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .sgb; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .3ds; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .3dsx; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .cci; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .cxi; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .csu; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .n64; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .v64; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .z64; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .jap; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .pal; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .usa; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .dsi; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .nds; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .pme; ValueType: String; Flags: uninsdeletekey
//Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .srl; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .nes; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .nsf; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .unf; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .min; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .smc; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .fig; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .sfc; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .swc; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .vb; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .vboy; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .gg; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .sms; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .sg; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .sc; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .mv; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .md; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .smd; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .gen; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ngc; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .ngp; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .iso; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .rom; ValueType: String; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes";ValueName: .bin; ValueType: String; Flags: uninsdeletekey

; roms gameboy (gb gmb sgb)
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy"; ValueType: String; ValueData: "Game Boy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,0"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms gameboy color (cgb gbc)
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor"; ValueType: String; ValueData: "Game Boy Color"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,2"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms gameboy advance (agb gba elf mb bin)
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance"; ValueType: String; ValueData: "Game Boy Advance"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,1"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms nintendo ds (nds dsi srl pme ds.gba sc.nds)
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS"; ValueType: String; ValueData: "Nintendo DS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,3"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\TrimROM"; ValueType: String; ValueData: {cm:trimrom}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\TrimROM"; ValueName: Icon; ValueType: String; ValueData: "{app}\trimmer.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\TrimROM\Command"; ValueType: String; ValueData: """{app}\trimmer.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms nintendo 3ds (3ds)
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS"; ValueType: String; ValueData: "Nintendo 3DS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,7"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\3DSExplorer"; ValueType: String; ValueData: "3DS Explorer"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\3DSExplorer"; ValueName: Icon; ValueType: String; ValueData: "{app}\3dsexplorer\3DSExplorer.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\3DSExplorer\Command"; ValueType: String; ValueData: """{app}\3dsexplorer\3DSExplorer.exe"" ""%1"""; Flags: uninsdeletekey

; datos guardados (clt sav sna sgm sgs sps dct dst dsv dsm ds1~ds10 sa1~sa4 sg1~sg4)
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey

;Root: HKA; Subkey: "Software\Classes\.windsproskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.WinDSPROSKIN"; Flags: uninsdeletevalue uninsdeletekeyifempty
;Root: HKA; Subkey: "Software\Classes\.nozskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NOZSKIN"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.gb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.gmb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.cgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.gbc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.agb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.gba"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.elf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.mb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.bin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty   
Root: HKA; Subkey: "Software\Classes\.nds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty   
Root: HKA; Subkey: "Software\Classes\.dsi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.srl"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.pme"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.3ds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.3dsx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.cci"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.cxi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.csu"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.clt"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty   
Root: HKA; Subkey: "Software\Classes\.sav"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sna"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sgm"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sgs"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sps"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.dct"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.dst"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.dsv"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.dsm"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds5"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds6"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds7"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds8"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds9"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.ds10"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sa1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sa2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sa3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sa4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sg1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sg2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sg3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Classes\.sg4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty

Root: HKA; Subkey: "Software\{#MyAppRegName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities"; ValueType: String; ValueName: "ApplicationName"; ValueData: {#MyAppName}; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities"; ValueType: String; ValueName: "ApplicationDescription"; ValueData: "Game Boy, Game Boy Color, Game Boy Advance, Nintendo DS & Nintendo 3DS."; Flags: uninsdeletekey
;Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".windsproskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.WinDSPROSKIN"; Flags: uninsdeletekey
;Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nozskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NOZSKIN"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gmb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gbc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".agb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gba"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".elf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".mb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".bin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".dsi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".srl"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".pme"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".3ds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".3dsx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cci"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cxi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".csu"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey

Root: HKA; Subkey: "Software\RegisteredApplications"; ValueType: String; ValueName: "WinDSPRO"; ValueData: "Software\{#MyAppRegName}\Capabilities"; Flags: uninsdeletevalue uninsdeletekeyifempty

; Listar en Abrir con...
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\shell\open\command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
;Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .windsproskin; Flags: uninsdeletekey
;Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .nozskin; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gb; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gmb; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .sgb; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .cgb; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gbc; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .agb; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gba; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .elf; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .mb; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .bin; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .nds; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .dsi; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .srl; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .pme; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .3ds; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .3dsx; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .cci; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .cxi; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .csu; Flags: uninsdeletekey

; listar en App Paths (ShellExecuteEx)
Root: HKA; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKA; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueName: Path; ValueData: """{app}"""; Flags: uninsdeletekey

[UninstallDelete]
Name: {app}\emu\no$gba\no$gba.inp; Type: files
Name: {userappdata}\windspro\*; Type: filesandordirs

[UninstallRun]
Filename:"https://windsprocentral.blogspot.com/"; Flags: nowait shellexec