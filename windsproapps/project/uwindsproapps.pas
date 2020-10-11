unit uwindsproapps;

{ Unidad que inicializa las apps y provee metodos para manejarlas }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StrUtils, FileUtil, uapps, UTF8Process, ushortcuts, ustrings,
  lclintf, Dialogs, Windows;

const
  Version = 20151216;
  UpdatesURL = 'http://lainz.github.io/windspro/version/windsproapps.txt';
  rs_application_title = 'WinDS PRO Apps';

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
    procedure OpenFile(FileName: string);
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
  FAppsDirectory := FMainDirectory + 'windsproapps' + PathDelim + 'app' + PathDelim;
  FConfigFileName := FMainDirectory + 'windsproapps.cfg';
  FGlobalFilter := '*.*|*.*';
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
    case GetLastError of
      740: ShowMessage(rs_error_admin);
      193, 216: ShowMessage(rs_error_64bit);
    end;
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

procedure TWinDSPROApps.OpenFile(FileName: string);
begin
  {case LowerCase(ExtractFileExt(FileName)) of
    // NDS
    '.dsi', '.nds', '.pme', '.srl': ExecuteEx('no$zoomer', FileName);
    // 3DS
    '.3ds', '.cci', '.csu': ExecuteEx('citra', FileName);
    // GBA
    '.agb', '.bin', '.elf', '.gba', '.mb': ExecuteEx('vba-m', FileName);
    // GBC
    '.cgb', '.gbc': ExecuteEx('vba-m', FileName);
    // GB
    '.gb', '.gmb', '.sgb': ExecuteEx('vba-m', FileName);
  end;}
end;

procedure TWinDSPROApps.OpenDirectory(App: TAppItem);
var
  process: TProcessUTF8;
begin
  process := TProcessUTF8.Create(nil);
  process.Executable := 'explorer.exe';
  process.Parameters.Add('/select,"' + AppsDirectory + App.Directory +
    PathDelim + App.Executable + '"');

  process.Execute;
  process.Free;
end;

procedure TWinDSPROApps.SavedGames(App: TAppItem);
begin
  OpenDocument(AppsDirectory + App.Directory + PathDelim + App.SavedGames + PathDelim);
end;

procedure TWinDSPROApps.CreateDesktopShortCut(App: TAppItem);
begin
  ushortcuts.CreateDesktopShortcut(AppsDirectory + App.Directory +
    PathDelim + App.Executable,
    '', App.Name + ' (' + rs_application_title + ')');
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
  AList.Add('Atari');
  AList.Add('Commodore');
  AList.Add('Microsoft');
  AList.Add('Nintendo');
  AList.Add('Sega');
  AList.Add('Sony');
  AList.Add(ustrings.rs_multi);
  AList.Add(ustrings.rs_other);
end;

procedure TWinDSPROApps.LoadApps;
var
  i: integer;
begin
  List.AddEx('3dmoo', '2015.02.24', '3dmoo', '3dmoo.exe ', '', '%1:s', '3DS', '', 'nintendo', '', '');
  List.AddEx('Atari800Win PLus', '4.1', 'Atari800Win_PLus_41', 'Atari800Win.exe ', '', '%1:s', 'A5200', '', 'atari', '', '');
  List.AddEx('BizHawk', '2015.12.16', 'BizHawk_153', 'EmuHawk.exe ', '', '%1:s', rs_multi, '', rs_multi, '', '');
  List.AddEx('blueMSX', '2.8.3', 'blueMSX_282', 'blueMSX.exe', '', '%1:s', rs_multi, '', rs_multi, '', '');
  List.AddEx('CCS64', '3.9.1', 'CCS64_39', 'CCS64.exe ', '', '%2:s,-fastload,-autorun', 'C64', '', 'commodore', '', '');
  List.AddEx('Citra', '2015.12.16', 'Citra_3DS_Emulator', 'citra-qt.exe ', '', '%1:s', '3DS', '', 'nintendo', '', '');
  List.AddEx('Cxbx', '2015.10.30', 'Cxbx', 'cxbx.exe ', '', '%1:s', 'XBOX', '', 'microsoft', '', '');
  List.AddEx('Demul', '0.7a', 'Demul_0582', 'demul.exe', '', '%1:s', 'DC', '', 'sega', '', '');
  List.AddEx('DeSmuME X432R 32-bit', '2015.04.19', 'DeSmuME_X432R', 'DeSmuME_X432R_x86.exe', '', '%1:s', 'NDS', '', 'nintendo', '', '');
  List.AddEx('DeSmuME X432R 64-bit', '2015.08.19', 'DeSmuME_X432R', 'DeSmuME_X432R_x64.exe', '', '%1:s', 'NDS', '', 'nintendo', '', '');
  List.AddEx('Dolphin 32-bit', '4.0.2', 'Dolphin_402_32-bit', 'Dolphin.exe', '', '/e,%1:s', 'GC/Wii', '', 'nintendo', '', '');
  List.AddEx('Dolphin 64-bit', '4.0.8373', 'Dolphin_402_64-bit', 'Dolphin.exe ', '', '/e,%1:s', 'GC/Wii', '', 'nintendo', '', '');
  List.AddEx('ePSXe', '1.9.25', 'ePSXe_190', 'ePSXe.exe ', '', '%1:s', 'PSX', '', 'sony', '', '');
  List.AddEx('FCEUX', 'r3187', 'FCEUX', 'fceux.exe', '', '%1:s', 'NES/FDS', '', 'nintendo', '', '');
  List.AddEx('Final Burn Alpha rr', '0.0.7', 'Final_Burn_Alpha_rr_007', 'fba.exe', '', '%1:s', rs_multi, '', rs_multi, '', '');
  List.AddEx('Gens GS', 'r7', 'Gens_gs_r7', 'gens.exe ', '', '%1:s', 'SMD/32X', '', 'sega', '', '');
  List.AddEx('Gens-rr', '11 r352', 'Gens_rr_11_r341', 'Gens.exe ', '', '%1:s', 'SMD/32X', '', 'sega', '', '');
  List.AddEx('GlovePIE', '0.45', 'GlovePIE_045', 'PIEFree.exe ', '', '%1:s,/run,/tray', 'Joystick/Input', '', rs_other, '', '');
  List.AddEx('Handy', '0.95', 'Handy_095', 'handy.exe ', '', '%1:s', 'Lynx', '', 'atari', '', '');
  List.AddEx('Hourglass', 'r81', 'Hourglass_r81', 'hourglass.exe', '', '%1:s', 'Win32', '', 'microsoft', '', '');
  List.AddEx('Dolphin (Ishiiruka) 64-bit', '420', 'IshiirukaDolphin64', 'Dolphin.exe', '', '/e,%1:s', 'GC/Wii', '', 'nintendo', '', '');
  List.AddEx('Dolphin (Ishiiruka) 32-bit', '2014.07.07', 'IshiirukaDolphin', 'Dolphin.exe', '', '/e,%1:s', 'GC/Wii', '', 'nintendo', '', '');
  List.AddEx('JPC-rr', 'r11.7', 'JPC_rr_r117', 'start-jpcrr.bat ', '', '%1:s', 'DOS', '', 'microsoft', '', '');
  List.AddEx('Kega Fusion', '3.64', 'Kega_Fusion_364', 'Fusion.exe', '', '%1:s', 'SC1000/SC3000/GG/SMS/SMD/32X/PICO', '', 'sega', '', '');
  List.AddEx('lsnes', 'rr2 beta 21', 'lsnes_rr2_beta15', 'lsnes-bsnes.exe ', '', '%1:s', 'SNES', '', 'nintendo', '', '');
  List.AddEx('mednafen MedGui', '0.9.36.5', 'mednafen_09321_wip', 'MedGui.exe ', '', '%1:s', rs_multi, '', rs_multi, '', '');
  List.AddEx('Mednafen-rr', '1.1', 'Mednafen_rr_11', 'Mednafen-Front.exe', '', '%1:s', rs_multi, '', rs_multi, '', '');
  List.AddEx('Mupen64-rr', '4.6.2', 'Mupen64_rr_462', 'mupen64.exe', '', '%1:s', 'N64', '', 'nintendo', '', '');
  List.AddEx('Mupen64Plus', '2.5', 'Mupen64Plus_20', 'mupen64plus-qt.exe', '', '%1:s', 'N64', '', 'nintendo', '', '');
  List.AddEx('no$2k6', '1.1', 'no$2k6_11', 'NO$2K6.EXE', '', '%1:s', 'A2600', '', 'atari', '', '');
  List.AddEx('no$c64', '1.1', 'no$c64_11', 'NO$C64.EXE', '', '%1:s', 'C64', '', 'commodore', '', '');
  List.AddEx('no$msx', '1.5', 'no$msx_15', 'NO$MSX.EXE', '', '%1:s', 'MSX', '', 'microsoft', '', '');
  List.AddEx('no$nes', '1.1', 'no$nes_11', 'NO$NES.EXE', '', '%1:s', 'NES', '', 'nintendo', '', '');
  List.AddEx('no$psx', '1.9', 'no$psx_18', 'NO$PSX.EXE', '', '%1:s', 'PSX', '', 'sony', '', '');
  List.AddEx('no$sns', '1.5', 'no$sns_15', 'NO$SNS.EXE', '', '%1:s', 'SNES', '', 'nintendo', '', '');
  List.AddEx('nullDC', 'r150', 'nullDC_150', 'nullDC_Win32_Release.exe', '', '%1:s', 'DC', '', 'sega', '', '');
  List.AddEx('Ootake', '2.7.5', 'Ootake_275', 'Ootake.exe ', '', '%1:s', 'NEC', '', rs_other, '', '');
  List.AddEx('Open MSX 32-bit', '0.10.1', 'Open_MSX_0100_32-bit', 'openmsx.exe', '', '%1:s', 'MSX', '', 'microsoft', '', '');
  List.AddEx('Open MSX 64-bit', '0.10.1', 'Open_MSX_0100_64-bit', 'openmsx.exe', '', '%1:s', 'MSX', '', 'microsoft', '', '');
  List.AddEx('Oswan', '1.7.3', 'Oswan_173', 'Oswan.exe', '', '%1:s', 'Bandai', '', rs_other, '', '');
  List.AddEx('PCSX-R', 'r97809', 'PCSXR_1993', 'pcsxr.exe ', '', '%1:s', 'PSX', '', 'sony', '', '');
  List.AddEx('PCSX2', '2015.12.14', 'PCSX2_121', 'pcsx2.exe ', '', '%1:s', 'PS2', '', 'sony', '', '');
  List.AddEx('Play!', '0.30', 'Play_32', 'play.exe ', '', '%1:s', 'PS2', '', 'sony', '', '');
  List.AddEx('PokeMini', '0.60', 'PokeMini_054', 'PokeMini.exe', '', '%1:s', 'Pokémon', '', 'nintendo', '', '');
  List.AddEx('PPSSPP 32-bit', '1.1.1-360', 'PPSSPP', 'PPSSPPWindows.exe ', '', '%1:s', 'PSP', '', 'sony', '', '');
  List.AddEx('PPSSPP 64-bit', '1.1.1-360', 'PPSSPP', 'PPSSPPWindows64.exe ', '', '%1:s', 'PSP', '', 'sony', '', '');
  List.AddEx('Project64', '2.1', 'Project64_21', 'Project64.exe ', '', '%1:s', 'N64', '', 'nintendo', '', '');
  List.AddEx('Project64K7E', '1.3.1', 'Project64K7E_131', 'Project64K7E.exe ', '', '%2:s', 'N64', '', 'nintendo', '', '');
  List.AddEx('ProSystem', '1.3', 'ProSystem_13', 'ProSystem.exe ', '', '%1:s', 'A7800', '', 'atari', '', '');
  List.AddEx('pSX fin', '1.13', 'pSX_1_13', 'psxfin.exe ', '', '%1:s', 'PSX', '', 'sony', '', '');
  List.AddEx('PSXjin', '2.0.2', 'PSXjin_202', 'psxjin.exe ', '', '%1:s', 'PSX', '', 'sony', '', '');
  List.AddEx('Red Dragon', '0.38', 'Red_Dragon_038', 'rdragon.exe ', '', '%1:s', 'VB', '', 'nintendo', '', '');
  List.AddEx('rpcs3', '2015.12.15', 'rpcs3', 'rpcs3.exe ', '', '%1:s', 'PS3', '', 'sony', '', '');
  List.AddEx('Snes9x 64-bit', '1.53', 'Snes9x_153_(64-bit)', 'snes9x-x64.exe', '', '%1:s', 'SNES', '', 'nintendo', '', '');
  List.AddEx('Snes9x 32-bit', '1.53', 'Snes9x_153', 'snes9x.exe ', '', '%1:s', 'SNES', '', 'nintendo', '', '');
  List.AddEx('SSF', '0.12 beta r4', 'SSF_012_beta_R4', 'SSF.exe ', '', '%1:s', 'Saturn', '', 'sega', '', '');
  List.AddEx('TronDS', '1.0.0.5', 'TronDS', 'TronDS.exe ', '', '%1:s', '3DS', '', 'nintendo', '', '');
  List.AddEx('VBA-rr', 'v24m r480', 'VBA-rr_v24m_r480', 'vba-v24m-svn480.exe', '', '%1:s', 'GB/GBC/GBA', '', 'nintendo', '', '');
  List.AddEx('VBjin', 'r61', 'VBjin_r61', 'vbjin.exe', '', '%1:s', 'VB', '', 'nintendo', '', '');
  List.AddEx('Virtual Jaguar', '2.1.2', 'Virtual_Jaguar_210', 'virtualjaguar.exe', '', '%1:s', 'Jaguar', '', 'atari', '', '');
  List.AddEx('VirtuaNES', '0.9.7e', 'VirtuaNES_097e', 'VirtuaNES.exe', '', '%1:s', 'NES', '', 'nintendo', '', '');
  List.AddEx('WinVICE C128', '2.4.21', 'WinVICE_22', 'x128.exe', '', '%2:s', 'C128', '', 'commodore', '', '');
  List.AddEx('WinVICE C64 Direct-to-TV', '2.4.21', 'WinVICE_22', 'x64dtv.exe', '', '%2:s', 'C64', '', 'commodore', '', '');
  List.AddEx('WinVICE C64', '2.4.21', 'WinVICE_22', 'x64.exe', '', '%2:s', 'C64', '', 'commodore', '', '');
  List.AddEx('WinVICE CBM-II', '2.4.21', 'WinVICE_22', 'xcbm2.exe ', '', '%2:s', 'CBM-II', '', 'commodore', '', '');
  List.AddEx('WinVICE PET', '2.4.21', 'WinVICE_22', 'xpet.exe ', '', '%2:s', 'PET', '', 'commodore', '', '');
  List.AddEx('WinVICE PLUS4', '2.4.21', 'WinVICE_22', 'xplus4.exe ', '', '%2:s', 'PLUS4', '', 'commodore', '', '');
  List.AddEx('WinVICE VIC20', '2.4.21', 'WinVICE_22', 'xvic.exe ', '', '%2:s', 'VIC20', '', 'commodore', '', '');
  List.AddEx('ZSNES', '1.5.1', 'ZSNES_151', 'zsnesw.exe ', '', '%1:s', 'SNES', '', 'nintendo', '', '');

  for i := List.Count - 1 downto 0 do
    if not FileExists(AppsDirectory + List[i].Directory + PathDelim + List[i].Executable) then
      List.Delete(i);

  Sort;
end;

end.
