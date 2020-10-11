unit umain;

{ Formulario Principal }

{$mode objfpc}{$H+}

interface

uses
  Classes, Forms, Controls, Graphics, StdCtrls, SysUtils, ustrings,
  uwindsproapps, LCLType, Menus, Dialogs, ExtCtrls, StrUtils, types, uskin,
  usettings, ubidimodetools, uapps, LazFileUtils, fphttpclient, LCLIntF,
  BCBrightAndContrast, BCMaterialDesignButton;

type

  { TLainzSplitter }

  TLainzSplitter = class(TSplitter)
  protected
    procedure Paint; override;
  end;

  { TDownload }

  TDownload = class(TThread)
  private
    FDownloadedFile: TStringList;
    procedure SetFDownloadedFile(AValue: TStringList);
  public
    destructor Destroy; override;
    procedure Execute; override;
    property DownloadedFile: TStringList read FDownloadedFile write SetFDownloadedFile;
  end;

  { Tfrmwindspro }

  Tfrmwindspro = class(TForm)
    AppsListBox: TListBox;
    AppsPopup: TPopupMenu;
    BCMaterialButton1: TBCMaterialDesignButton;
    BCMaterialButton2: TBCMaterialDesignButton;
    BCMaterialButton3: TBCMaterialDesignButton;
    BCMaterialButton4: TBCMaterialDesignButton;
    BCMaterialButton5: TBCMaterialDesignButton;
    BCMaterialButton6: TBCMaterialDesignButton;
    HeaderPopup: TPopupMenu;
    FilterEdit: TEdit;
    HeaderImage: TImage;
    miOpenROMGlobal: TMenuItem;
    miSeparator0: TMenuItem;
    miConfiguration1: TMenuItem;
    miFullScreen1: TMenuItem;
    miSavedGames: TMenuItem;
    miByName: TMenuItem;
    miByTags: TMenuItem;
    miSortBy: TMenuItem;
    miFullScreen: TMenuItem;
    miOpenROM: TMenuItem;
    miSeparator2: TMenuItem;
    miConfiguration: TMenuItem;
    miInternetSearch: TMenuItem;
    miSeparator1: TMenuItem;
    miSendToDesktop: TMenuItem;
    miOpenFileLocation: TMenuItem;
    miOpen: TMenuItem;
    OpenROMDialog: TOpenDialog;
    HeaderSplitter: TSplitter;
    Panel1: TPanel;
    TagsListBox: TListBox;
    procedure AppsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState);
    procedure AppsListBoxKeyDown(Sender: TObject; var Key: word; {%H-}Shift: TShiftState);
    procedure AppsListBoxMouseDown(Sender: TObject; Button: TMouseButton; {%H-}Shift: TShiftState; X, Y: integer);
    procedure AppsListBoxMouseLeave(Sender: TObject);
    procedure AppsListBoxMouseMove(Sender: TObject; {%H-}Shift: TShiftState; X, Y: integer);
    procedure AppsPopupPopup(Sender: TObject);
    procedure BCMaterialDesignButton1Click(Sender: TObject);
    procedure BCMaterialDesignButton2Click(Sender: TObject);
    procedure BCMaterialDesignButton3Click(Sender: TObject);
    procedure BCMaterialDesignButton4Click(Sender: TObject);
    procedure BCMaterialDesignButton5Click(Sender: TObject);
    procedure BCMaterialDesignButton6Click(Sender: TObject);
    procedure FilterEditChange(Sender: TObject);
    procedure FilterEditKeyDown(Sender: TObject; var Key: word; {%H-}Shift: TShiftState);
    procedure FormClose(Sender: TObject; var {%H-}CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure AppsListBoxDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    procedure FormKeyDown(Sender: TObject; var Key: word; {%H-}Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure miByNameClick(Sender: TObject);
    procedure miByTagsClick(Sender: TObject);
    procedure miConfigurationClick(Sender: TObject);
    procedure miFullScreenClick(Sender: TObject);
    procedure miInternetSearchClick(Sender: TObject);
    procedure miOpenFileLocationClick(Sender: TObject);
    procedure miOpenClick(Sender: TObject);
    procedure miOpenROMClick(Sender: TObject);
    procedure miOpenROMGlobalClick(Sender: TObject);
    procedure miSavedGamesClick(Sender: TObject);
    procedure miSendToDesktopClick(Sender: TObject);
    procedure OnChangeTheme(Sender: TObject);
    procedure OnTerminateDownload(Sender: TObject);
    procedure TagsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState);
    procedure TagsListBoxKeyDown(Sender: TObject; var Key: word; {%H-}Shift: TShiftState);
    procedure TagsListBoxMouseLeave(Sender: TObject);
    procedure TagsListBoxMouseMove(Sender: TObject; {%H-}Shift: TShiftState; X, Y: integer);
    procedure TagsListBoxSelectionChange(Sender: TObject; {%H-}User: boolean);
  private
    FApps: TWinDSPROApps;
    FSettings: TSettings;
    FHoveredTag: integer;
    FHoveredApps: integer;
    FGoFullScreen: boolean;
    FUpdatingAppsListBox: boolean;
    FUpdates: TDownload;
    FCheckUpdates: boolean;
    FUpdatesChecked: boolean;
    FCheckFileName: boolean;
  public
    procedure Translate;
    procedure Theme;
    procedure FullScreen;
  public
    procedure FillAppsListBox;
    procedure FillTagsListBox;
    procedure FocusFirstItemAppsListBox;
    procedure FocusAndClearFilterEdit;
    procedure ExecuteApp(FileName: string = '');
    property Apps: TWinDSPROApps read FApps write FApps;
    property Settings: TSettings read FSettings write FSettings;
  end;

var
  frmwindspro: Tfrmwindspro;

implementation

uses
  uconfig;

{$R *.lfm}

procedure PatchInstanceClass(Instance: TObject; NewClass: TClass);
type
  PClass = ^TClass;
begin
  if Assigned(Instance) and Assigned(NewClass) and NewClass.InheritsFrom(Instance.ClassType) and (NewClass.InstanceSize = Instance.InstanceSize) then

  begin
    PClass(Instance)^ := NewClass;
  end;
end;

{ TLainzSplitter }

procedure TLainzSplitter.Paint;
begin
  Self.Canvas.Brush.Color := Self.Parent.Color;
  Self.Canvas.FillRect(Self.ClientRect);
end;

{ TDownload }

procedure TDownload.SetFDownloadedFile(AValue: TStringList);
begin
  if FDownloadedFile = AValue then
    Exit;
  FDownloadedFile := AValue;
end;

destructor TDownload.Destroy;
begin
  FreeAndNil(FDownloadedFile);
  inherited Destroy;
end;

procedure TDownload.Execute;
begin
  try
    FDownloadedFile := TStringList.Create;
    TFPHTTPClient.SimpleGet(UpdatesURL,
      FDownloadedFile);
  finally
  end;
end;

{ Tfrmwindspro }

procedure Tfrmwindspro.FormCreate(Sender: TObject);
begin
  FCheckUpdates := True;
  FUpdatesChecked := False;
  FCheckFileName := True;

  Apps := TWinDSPROApps.Create(Self);
  Settings := TSettings.Create(Self);
  Settings.LoadFromFile(Apps.ConfigFileName);

  HeaderImage.Picture.LoadFromResourceName(HInstance, 'DRAGONGALAXIAHD');
  PatchInstanceClass(HeaderSplitter, TLainzSplitter);

  Translate;
  Skin.OnChangeTheme := @OnChangeTheme;
  Theme;

  FillAppsListBox;
  FillTagsListBox;
  FGoFullScreen := True;
  FUpdatingAppsListBox := True;

  BCMaterialButton1.NormalColorEffect := Bright(BCMaterialButton1.NormalColor, 90);
  BCMaterialButton2.NormalColorEffect := Bright(BCMaterialButton2.NormalColor, 90);
  BCMaterialButton3.NormalColorEffect := Bright(BCMaterialButton3.NormalColor, 90);
  BCMaterialButton4.NormalColorEffect := Bright(BCMaterialButton4.NormalColor, 90);
  BCMaterialButton5.NormalColorEffect := Bright(BCMaterialButton5.NormalColor, 90);
  BCMaterialButton6.NormalColorEffect := Bright(BCMaterialButton6.NormalColor, 90);
end;

procedure Tfrmwindspro.AppsListBoxKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ExecuteApp;
  if (Key = VK_BACK) or (Key = VK_F3) then
    FocusAndClearFilterEdit;
  if (Key = VK_F11) or ((Key = VK_ESCAPE) and (not FGoFullScreen)) then
    FullScreen;
end;

procedure Tfrmwindspro.AppsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState);
begin
  if FUpdatingAppsListBox then
  begin
    AppsListBox.Canvas.Brush.Color := AppsListBox.Color;
    AppsListBox.Canvas.FillRect(ARect);
    exit;
  end;
  uskin.AppsListBoxDrawItem(Control, Index, ARect, State, Index = FHoveredApps, True);
end;

procedure Tfrmwindspro.AppsListBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  if Button = mbRight then
    AppsListBox.ItemIndex := AppsListBox.ItemAtPos(Point(x, y), True);
end;

procedure Tfrmwindspro.AppsListBoxMouseLeave(Sender: TObject);
begin
  FHoveredApps := -1;
  AppsListBox.Repaint;
end;

procedure Tfrmwindspro.AppsListBoxMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
begin
  FHoveredApps := AppsListBox.ItemAtPos(Point(x, y), True);
  AppsListBox.Repaint;
end;

procedure Tfrmwindspro.AppsPopupPopup(Sender: TObject);
var
  miEnabled: boolean;
begin
  miEnabled := AppsListBox.ItemIndex >= 0;
  miOpen.Visible := miEnabled;
  miOpenROM.Visible := miEnabled;
  miOpenFileLocation.Visible := miEnabled;
  miSavedGames.Visible := miEnabled;
  miInternetSearch.Visible := miEnabled;
  miSeparator1.Visible := miEnabled;
  miSendToDesktop.Visible := miEnabled;
  miSeparator2.Visible := miEnabled;

  if miOpenROM.Visible then
    miOpenROM.Visible := TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]).ParametersForFiles <> '';

  if miSavedGames.Visible then
    miSavedGames.Visible := TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]).SavedGames <> '';
end;

procedure Tfrmwindspro.BCMaterialDesignButton1Click(Sender: TObject);
begin
  OpenURL('https://facebook.com/windsprocentral');
end;

procedure Tfrmwindspro.BCMaterialDesignButton2Click(Sender: TObject);
begin
  OpenURL('https://twitter.com/windspro');
end;

procedure Tfrmwindspro.BCMaterialDesignButton3Click(Sender: TObject);
begin
  OpenURL('https://plus.google.com/+WindsprocentralBlogspot');
end;

procedure Tfrmwindspro.BCMaterialDesignButton4Click(Sender: TObject);
begin
  OpenURL('https://www.youtube.com/user/windspro');
end;

procedure Tfrmwindspro.BCMaterialDesignButton5Click(Sender: TObject);
begin
  OpenURL('https://windsprocentral.blogspot.com/');
end;

procedure Tfrmwindspro.BCMaterialDesignButton6Click(Sender: TObject);
begin
  OpenURL('http://windspro.activo.in/');
end;

procedure Tfrmwindspro.FilterEditChange(Sender: TObject);
begin
  FillAppsListBox;
end;

procedure Tfrmwindspro.FilterEditKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusFirstItemAppsListBox;
  if (Key = VK_F11) or ((Key = VK_ESCAPE) and (not FGoFullScreen)) then
    FullScreen;
end;

procedure Tfrmwindspro.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Settings.SkinType := Skin.SkinType;
  Settings.UserColor := Skin.UserColor;
  Settings.SaveToFile(Apps.ConfigFileName);
end;

procedure Tfrmwindspro.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  CanClose := FUpdatesChecked;
end;

procedure Tfrmwindspro.AppsListBoxDblClick(Sender: TObject);
begin
  ExecuteApp;
end;

procedure Tfrmwindspro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FUpdates);
end;

procedure Tfrmwindspro.FormDropFiles(Sender: TObject; const FileNames: array of string);
begin
  if FileExistsUTF8(FileNames[0]) then
    Apps.OpenFile(FileNames[0], Settings);
end;

procedure Tfrmwindspro.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_F3 then
    FocusAndClearFilterEdit;
  if (Key = VK_F11) or ((Key = VK_ESCAPE) and (not FGoFullScreen)) then
    FullScreen;
end;

procedure Tfrmwindspro.FormShow(Sender: TObject);
begin
  if (FCheckUpdates) then
  begin
    FCheckUpdates := False;
    FUpdates := TDownload.Create(False);
    FUpdates.OnTerminate := @OnTerminateDownload;
  end;

  FUpdatingAppsListBox := False;

  if (ParamStr(1) <> '') and (FCheckFileName) then
  begin
    FCheckFileName := False;
    if FileExistsUTF8(ParamStr(1)) then
      Apps.OpenFile(ParamStr(1), Settings);
  end;
end;

procedure Tfrmwindspro.miByNameClick(Sender: TObject);
begin
  AppsListBox.Clear;
  AppsListBox.ItemIndex := -1;
  Apps.Sort(True);
  FillAppsListBox;
end;

procedure Tfrmwindspro.miByTagsClick(Sender: TObject);
begin
  AppsListBox.ItemIndex := -1;
  AppsListBox.Clear;
  Apps.Sort(False);
  FillAppsListBox;
end;

procedure Tfrmwindspro.miConfigurationClick(Sender: TObject);
begin
  frmconfig.ShowModal;
end;

procedure Tfrmwindspro.miFullScreenClick(Sender: TObject);
begin
  FullScreen;
end;

procedure Tfrmwindspro.miInternetSearchClick(Sender: TObject);
begin
  Apps.GoogleSearch(TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]));
end;

procedure Tfrmwindspro.miOpenFileLocationClick(Sender: TObject);
begin
  Apps.OpenDirectory(TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]));
end;

procedure Tfrmwindspro.miOpenClick(Sender: TObject);
begin
  ExecuteApp;
end;

procedure Tfrmwindspro.miOpenROMClick(Sender: TObject);
begin
  OpenROMDialog.FileName := '';
  OpenROMDialog.Filter := TAppItem(
    AppsListBox.Items.Objects[AppsListBox.ItemIndex]).Filter;
  if OpenROMDialog.Execute then
  begin
    ExecuteApp(OpenROMDialog.FileName);
  end;
end;

procedure Tfrmwindspro.miOpenROMGlobalClick(Sender: TObject);
begin
  OpenROMDialog.FileName := '';
  OpenROMDialog.Filter := Apps.GlobalFilter;
  if OpenROMDialog.Execute then
  begin
    Apps.OpenFile(OpenROMDialog.FileName, Settings);
  end;
end;

procedure Tfrmwindspro.miSavedGamesClick(Sender: TObject);
begin
  Apps.SavedGames(
    TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]));
end;

procedure Tfrmwindspro.miSendToDesktopClick(Sender: TObject);
begin
  Apps.CreateDesktopShortCut(
    TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]));
end;

procedure Tfrmwindspro.OnChangeTheme(Sender: TObject);
begin
  FilterEdit.Color := clWhite;
  FilterEdit.Font.Color := clBlack;
  AppsListBox.Color := Skin.AppsBackgroundColor;
  TagsListBox.Color := Skin.TagsBackgroundColor;
  Self.Color := Skin.MainBackgroundColor;
  Invalidate;
end;

procedure Tfrmwindspro.OnTerminateDownload(Sender: TObject);
var
  webversion: integer;
begin
  if FUpdates.DownloadedFile.Text <> '' then
  begin
    TryStrToInt(FUpdates.DownloadedFile[1], webversion);
    if webversion > Version then
    begin
      if Application.MessageBox(PChar(FUpdates.DownloadedFile[0] +
        LineEnding + FUpdates.DownloadedFile[2]), PChar(ustrings.rs_updates),
        MB_ICONINFORMATION + MB_YESNO) = ID_YES then
        OpenURL(FUpdates.DownloadedFile[2]);
    end;
  end;
  FUpdatesChecked := True;
end;

procedure Tfrmwindspro.TagsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState);
begin
  uskin.TagsListBoxDrawItem(Control, Index, ARect, State, Index = FHoveredTag);
end;

procedure Tfrmwindspro.TagsListBoxKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusFirstItemAppsListBox;
  if (Key = VK_BACK) or (Key = VK_F3) then
    Self.FocusAndClearFilterEdit;
  if (Key = VK_F11) or ((Key = VK_ESCAPE) and (not FGoFullScreen)) then
    FullScreen;
end;

procedure Tfrmwindspro.TagsListBoxMouseLeave(Sender: TObject);
begin
  FHoveredTag := -1;
  TagsListBox.Repaint;
end;

procedure Tfrmwindspro.TagsListBoxMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
begin
  FHoveredTag := TagsListBox.ItemAtPos(Point(x, y), True);
  TagsListBox.Repaint;
end;

procedure Tfrmwindspro.TagsListBoxSelectionChange(Sender: TObject; User: boolean);
begin
  FillAppsListBox;
end;

procedure Tfrmwindspro.Translate;
begin
  BiDiMode := GetBiDiMode;
  Caption := rs_application_title + ' ' + VersionStr;
  miOpen.Caption := ustrings.rs_open;
  miOpenROM.Caption := ustrings.rs_open_rom;
  miOpenFileLocation.Caption := ustrings.rs_open_file_location;
  miInternetSearch.Caption := ustrings.rs_search_with_google;
  miSendToDesktop.Caption := ustrings.rs_send_to_desktop;
  miSortBy.Caption := ustrings.rs_sortby;
  miByName.Caption := ustrings.rs_name;
  miByTags.Caption := ustrings.rs_tags;
  miFullScreen.Caption := ustrings.rs_fullscreen;
  miConfiguration.Caption := ustrings.rs_configuration;
  miOpenROMGlobal.Caption := ustrings.rs_open_rom;
  miFullScreen1.Caption := ustrings.rs_fullscreen;
  miConfiguration1.Caption := ustrings.rs_configuration;
  FilterEdit.Hint := ustrings.rs_search;
  TagsListBox.Hint := ustrings.rs_categories;
  AppsListBox.Hint := ustrings.rs_applications;
end;

procedure Tfrmwindspro.Theme;
begin
  Skin.UserColor := Settings.UserColor;
  Skin.SkinType := Settings.SkinType;
  Skin.UpdateSkin;
  FHoveredTag := -1;
  FHoveredApps := -1;
  FilterEdit.Font.Size := 11;
  FilterEdit.Font.Color := clBlack;
  HeaderSplitter.Height := ScaleY(8, 96);
  FilterEdit.BorderSpacing.Bottom := ScaleY(8, 96);
  FilterEdit.BorderSpacing.Left := ScaleY(8, 96);
  FilterEdit.BorderSpacing.Right := ScaleY(8, 96);
  AppsListBox.ItemHeight := ScaleY(48, 96);
  TagsListBox.ItemHeight := ScaleY(48, 96);
end;

procedure Tfrmwindspro.FullScreen;
begin
  if FGoFullScreen then
  begin
    Self.BorderStyle := bsNone;
    Self.WindowState := wsFullScreen;
  end
  else
  begin
    Self.BorderStyle := bsSizeable;
    Self.WindowState := wsMaximized;
  end;

  FGoFullScreen := not FGoFullScreen;
end;

procedure Tfrmwindspro.FillAppsListBox;
var
  i: integer;
  search, tags: string;
  has_search, has_tags: boolean;
begin
  FUpdatingAppsListBox := True;

  AppsListBox.ItemIndex := -1;
  AppsListBox.Clear;

  search := FilterEdit.Text;
  if search = '' then
    search := ' ';

  tags := TagsListBox.GetSelectedText;
  if tags = '' then
    tags := ustrings.rs_everything;

  for i := 0 to Apps.List.Count - 1 do
  begin
    has_search := AnsiContainsText(Apps.List[i].Name + ' ' +
      Apps.List[i].Version + ' #' + Apps.List[i].Description
      {+ ' ' + Apps.List[i].Tags}, search);
    has_tags := AnsiContainsText(Apps.List[i].Tags + ' ' + ustrings.rs_everything, tags);

    if has_tags and has_search then
      AppsListBox.AddItem(Apps.List[i].Name + ' ' + Apps.List[i].Version, Apps.List[i]);
  end;

  FUpdatingAppsListBox := False;
end;

procedure Tfrmwindspro.FillTagsListBox;
begin
  Apps.TagsListBox(TagsListBox.Items);
end;

procedure Tfrmwindspro.FocusFirstItemAppsListBox;
begin
  if AppsListBox.Count > 0 then
  begin
    AppsListBox.SetFocus;
    AppsListBox.ItemIndex := 0;
  end;
end;

procedure Tfrmwindspro.FocusAndClearFilterEdit;
begin
  FilterEdit.SetFocus;
  FilterEdit.Clear;
end;

procedure Tfrmwindspro.ExecuteApp(FileName: string);
begin
  Apps.Execute(TAppItem(AppsListBox.Items.Objects[AppsListBox.ItemIndex]), FileName);
end;

end.
