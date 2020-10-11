unit uwindsproapps;

{ Unidad que inicializa las apps y provee metodos para manejarlas }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LazFileUtils, uapps, UTF8Process, {$IFDEF WINDOWS}ushortcuts, Windows,{$ENDIF} ustrings,
  lclintf, Dialogs, usettings;

const
  Version = 20161111;
  VersionStr = '2016.11.11';
  UpdatesURL = 'http://lainz.github.io/windspro/version/windspro14.txt';
  rs_application_title = 'WinDS PRO';

type

  { TWinDSPROApps }

  TWinDSPROApps = class(TAppComponent)
  private
    FAppsDirectory: string;
    FConfigFileName: string;
    FGlobalFilter: string;
    FMainDirectory: string;
    procedure LoadApps;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Execute(App: TAppItem; FileName: string = '');
    procedure ExecuteEx(AppName: string; FileName: string = '');
    procedure OpenFile(FileName: string; Settings: TSettings);
    procedure OpenDirectory(App: TAppItem);
    procedure SavedGames(App: TAppItem);
    procedure CreateDesktopShortCut(App: TAppItem);
    procedure GoogleSearch(App: TAppItem);
    procedure Sort(ByName: boolean = True);
    procedure TagsListBox(AList: TStrings);
  public
    property GlobalFilter: string read FGlobalFilter;
    property ConfigFileName: string read FConfigFileName;
    property AppsDirectory: string read FAppsDirectory;
    property MainDirectory: string read FMainDirectory;
  end;

implementation

{ TWinDSPROApps }

function SortByName(Item1, Item2: TCollectionItem): integer;
begin
  if lowercase(TAppItem(Item1).Name) < lowercase(TAppItem(Item2).Name) then
    Result := -1
  else if lowercase(TAppItem(Item1).Name) = lowercase(TAppItem(Item2).Name) then
    Result := 0
  else
    Result := 1;
end;

function SortByTags(Item1, Item2: TCollectionItem): integer;
begin
  if TAppItem(Item1).Description < TAppItem(Item2).Description then
    Result := -1
  else if TAppItem(Item1).Description = TAppItem(Item2).Description then
    Result := 0
  else
    Result := 1;
end;

constructor TWinDSPROApps.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMainDirectory := ExtractFilePath(ParamStr(0));
  FAppsDirectory := FMainDirectory + 'emu' + PathDelim;
  FConfigFileName := FMainDirectory + 'windspro.cfg';
  FGlobalFilter := '3DS/NDS/GBA/GBC/GB|*.3ds;*.cci;*.csu;*.dsi;*nds;*pme;*.srl;*.agb;*.bin;*.elf;*.gba;*.mb;*.cgb;*.gbc;*.gb;*.gmb;*.sgb;';
  LoadApps;
end;

procedure TWinDSPROApps.Execute(App: TAppItem; FileName: string);
var
  process: TProcessUTF8;
begin
  process := TProcessUTF8.Create(nil);
  process.CurrentDirectory := AppsDirectory + App.Directory + PathDelim;
  process.Executable := process.CurrentDirectory + App.Executable;

  process.Parameters.Delimiter := ',';
  process.Parameters.StrictDelimiter := True;

  if FileName = '' then
  begin
    if App.Parameters <> '' then
      process.Parameters.DelimitedText := (format(App.Parameters,
        [AppsDirectory + App.Directory + PathDelim, FileName, ExtractShortPathName(FileName)]));
  end
  else
  begin
    process.Parameters.DelimitedText := (format(App.ParametersForFiles,
      [AppsDirectory + App.Directory + PathDelim, FileName, ExtractShortPathName(FileName)]));
  end;

  try
    process.Execute;
  except
    {$IFDEF WINDOWS}
    case GetLastError of
      740: ShowMessage(rs_error_admin);
      193, 216: ShowMessage(rs_error_64bit);
    end;
    {$ELSE}
    ShowMessage('Error executing application.');
    {$ENDIF}
  end;
  process.Free;
end;

procedure TWinDSPROApps.ExecuteEx(AppName: string; FileName: string);
var
  i: integer;
begin
  for i := 0 to List.Count - 1 do
  begin
    if LowerCase(List[i].Name) = LowerCase(AppName) then
    begin
      Execute(List[i], FileName);
      exit;
    end;
  end;
end;

procedure TWinDSPROApps.OpenFile(FileName: string; Settings: TSettings);
begin
  {$IFDEF WINDOWS}
  case LowerCase(ExtractFileExt(FileName)) of
    // NDS
    '.dsi', '.nds', '.pme', '.srl': ExecuteEx(Settings.NintendoDS, FileName);
    // 3DS
    '.3ds', '.3dsx', '.cci', '.cxi', '.csu': ExecuteEx(Settings.Nintendo3DS, FileName);
    // GBA
    '.agb', '.bin', '.elf', '.gba', '.mb': ExecuteEx(Settings.GameBoyAdvance, FileName);
    // GBC
    '.cgb', '.gbc': ExecuteEx(Settings.GameBoyColor, FileName);
    // GB
    '.gb', '.gmb', '.sgb': ExecuteEx(Settings.GameBoy, FileName);
  end;
  {$ENDIF}
end;

procedure TWinDSPROApps.OpenDirectory(App: TAppItem);
{$IFDEF WINDOWS}
var
  process: TProcessUTF8;
{$ENDIF}
begin
  {$IFDEF WINDOWS}
  process := TProcessUTF8.Create(nil);
  process.Executable := 'explorer.exe';
  process.Parameters.Add('/select,"' + AppsDirectory + App.Directory +
    PathDelim + App.Executable + '"');

  process.Execute;
  process.Free;
  {$ELSE}
  OpenDocument(AppsDirectory + App.Directory + PathDelim);
  {$ENDIF}
end;

procedure TWinDSPROApps.SavedGames(App: TAppItem);
begin
  OpenDocument(AppsDirectory + App.Directory + PathDelim + App.SavedGames + PathDelim);
end;

procedure TWinDSPROApps.CreateDesktopShortCut(App: TAppItem);
begin
  {$IFDEF WINDOWS}
  ushortcuts.CreateDesktopShortcut(AppsDirectory + App.Directory +
    PathDelim + App.Executable,
    '', App.Name + ' (' + rs_application_title + ')');
  {$ENDIF}
  {$IFDEF LINUX}
  ShowMessage('Function not available on Linux.');
  {$ENDIF}
end;

procedure TWinDSPROApps.GoogleSearch(App: TAppItem);
begin
  OpenURL('https://google.com/search?q=' + App.Name);
end;

procedure TWinDSPROApps.Sort(ByName: boolean = True);
begin
  if ByName then
    List.Sort(@SortByName)
  else
    List.Sort(@SortByTags);
end;

procedure TWinDSPROApps.TagsListBox(AList: TStrings);
begin
  AList.Add(ustrings.rs_everything);
  {$IFDEF WINDOWS}
  AList.Add('Citra');
  AList.Add('DeSmuME');
  AList.Add('No$gba');
  AList.Add('VBA');
  {$ENDIF}
end;

procedure TWinDSPROApps.LoadApps;
var
  i: integer;
begin
  {$IFDEF WINDOWS}
  { citra }
  List.AddEx('Citra', '2016.11.11', 'citra', 'citra-qt.exe', '', '%1:s', '3DS', '', 'citra', 'user', '3DS|*.3ds;*.3dsx;*.cci;*.cxi;*.csu;');
  List.AddEx('Citra (32 bit)', '2016.10.17', 'citra32', 'citra_x86.exe', '', '%1:s', '3DS', '', 'citra', 'user', '3DS|*.3ds;*.3dsx;*.cci;*.cxi;*.csu;');
  { no$gba }
  List.AddEx('No$gba', '2.6a', 'no$gba', 'no$gba.exe', '', '%1:s', 'GBA/NDS', '', 'no$gba', 'battery', 'GBA/NDS|*.agb;*.bin;*.elf;*.gba;*.mb;*.dsi;*nds;*pme;*.srl;');
  List.AddEx('No$gba_', '2.8d', 'no$gba_', 'no$gba.exe', '', '%1:s', 'GBA/NDS', '', 'no$gba', 'battery', 'GBA/NDS|*.agb;*.bin;*.elf;*.gba;*.mb;*.dsi;*nds;*pme;*.srl;');
  List.AddEx('No$Zoomer', '2.3.0.2', 'no$gba', 'no$zoomer.exe', '', '%1:s', 'GBA/NDS', '', 'no$gba', 'battery', 'GBA/NDS|*.agb;*.bin;*.elf;*.gba;*.mb;*.dsi;*nds;*pme;*.srl;');
  List.AddEx('No$Mooz', '1.0', 'no$gba', 'no$mooz.exe', '', '', 'NDS', '', 'no$gba', 'battery', '');
  List.AddEx('NOZ', '2.3', 'no$gba', 'noz.exe', '', '', 'NDS', '', 'no$gba', 'battery', '');
  List.AddEx('MyZoom', '1.8.36', 'no$gba', 'myzoom.exe', '', '', 'NDS', '', 'no$gba', 'battery', '');
  List.AddEx('NGZoom', '1.0', 'no$gba', 'ngzoom.exe', '', '', 'NDS', '', 'no$gba', 'battery', '');
  List.AddEx('No$gba2X', '1.0', 'no$gba', 'no$gba2x.exe', '', '', 'NDS', '', 'no$gba', 'battery', '');
  { desmume }
  List.AddEx('DeSmuME', 'r5575', 'desmume', 'desmume.exe', '', '%1:s', 'NDS', '', 'desmume', 'archivo', 'NDS|*.dsi;*nds;*pme;*.srl;');
  { vba }
  List.AddEx('VBA-M', '2.0 (2015.11.19)', 'vbam', 'vbam.exe', '', '%1:s', 'GB/GBC/GBA', '', 'vba', 'archivo', 'GB/GBC/GBA|*.gb;*.gmb;*.sgb;*.cgb;*.gbc;*.agb;*.bin;*.elf;*.gba;*.mb;');
  List.AddEx('VBA Link', '1.8.0', 'vbalink', 'vbalink.exe', '', '%1:s', 'GB/GBC/GBA', '', 'vba', 'archivo', 'GB/GBC/GBA|*.gb;*.gmb;*.sgb;*.cgb;*.gbc;*.agb;*.bin;*.elf;*.gba;*.mb;');
  {$ENDIF}

  for i := List.Count - 1 downto 0 do
    if not FileExistsUTF8(AppsDirectory + List[i].Directory + PathDelim + List[i].Executable) then
      List.Delete(i);

  Sort;
end;

end.
