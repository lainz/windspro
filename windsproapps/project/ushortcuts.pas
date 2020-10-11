unit ushortcuts;

{ Crear accesos directos }

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Windows, shlobj, ActiveX, ComObj;

procedure CreateDesktopShortCut(Target, TargetArguments, ShortcutName: string);

implementation

procedure CreateDesktopShortCut(Target, TargetArguments, ShortcutName: string);
var
  IObject: IUnknown;
  ISLink: IShellLink;
  IPFile: IPersistFile;
  PIDL: PItemIDList;
  InFolder: array[0..MAX_PATH] of char;
  LinkName: WideString;
begin
  { Creates an instance of IShellLink }
  IObject := CreateComObject(CLSID_ShellLink);
  ISLink := IObject as IShellLink;
  IPFile := IObject as IPersistFile;

  ISLink.SetPath(PChar(Target));
  ISLink.SetArguments(PChar(TargetArguments));
  ISLink.SetWorkingDirectory(PChar(ExtractFilePath(Target)));

  { Get the desktop location }
  SHGetSpecialFolderLocation(0, CSIDL_DESKTOPDIRECTORY, PIDL);
  SHGetPathFromIDList(PIDL, InFolder);
  LinkName := InFolder + PathDelim + ShortcutName + '.lnk';

  { Create the link }
  IPFile.Save(PWChar(LinkName), False);
end;

end.

