unit uskin;

{ Unidad para dar estilo a la aplicación }

{
  Remover esta linea en customlistbox.inc
if odFocused in ItemState then
  DrawFocusRect(DC, Area);
}

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, Graphics, GraphUtil, LCLType, StdCtrls, uapps, LResources;

type

  TSkinType = (stLight, stDark, stApps);

  { TSkin }

  TSkin = class(TComponent)
  private
    FAppsBackgroundColor: TColor;
    FListItemEven: TColor;
    FListItemHovered: TColor;
    FListItemHoveredAndSelected: TColor;
    FListItemOdd: TColor;
    FListItemSelected: TColor;
    FMainBackgroundColor: TColor;
    FOnChangeTheme: TNotifyEvent;
    FPrimaryFontColor: TColor;
    FSecondaryFontColor: TColor;
    FSkinType: TSkinType;
    FTagsBackgroundColor: TColor;
    FUserColor: integer;
    procedure SetFAppsBackgroundColor(AValue: TColor);
    procedure SetFBackgroundColor(AValue: TColor);
    procedure SetFListItemEven(AValue: TColor);
    procedure SetFListItemHovered(AValue: TColor);
    procedure SetFListItemHoveredAndSelected(AValue: TColor);
    procedure SetFListItemOdd(AValue: TColor);
    procedure SetFListItemSelected(AValue: TColor);
    procedure SetFPrimaryFontColor(AValue: TColor);
    procedure SetFSecondaryFontColor(AValue: TColor);
    procedure SetFSkinType(AValue: TSkinType);
    procedure SetFTagsBackgroundColor(AValue: TColor);
    procedure SetFUserColor(AValue: integer);
  public
    constructor Create(AOwner: TComponent); override;
    procedure SaveToFile(AFileName: string);
    procedure LoadFromFile(AFileName: string);
    procedure OnFindClass(Reader: TReader; const AClassName: string; var ComponentClass: TComponentClass);
  public
    procedure UpdateSkin;
    procedure LightSkin;
    procedure DarkSkin;
    procedure AppsSkin;
  published
    property SkinType: TSkinType read FSkinType write SetFSkinType;
    property OnChangeTheme: TNotifyEvent read FOnChangeTheme write FOnChangeTheme;
    { Colorize }
    property UserColor: integer read FUserColor write SetFUserColor;
    { Main }
    property MainBackgroundColor: TColor read FMainBackgroundColor write SetFBackgroundColor;
    property PrimaryFontColor: TColor read FPrimaryFontColor write SetFPrimaryFontColor;
    property SecondaryFontColor: TColor read FSecondaryFontColor write SetFSecondaryFontColor;
    { ListBox }
    property TagsBackgroundColor: TColor read FTagsBackgroundColor write SetFTagsBackgroundColor;
    property AppsBackgroundColor: TColor read FAppsBackgroundColor write SetFAppsBackgroundColor;
    { ListItem }
    property ListItemHovered: TColor read FListItemHovered write SetFListItemHovered;
    property ListItemSelected: TColor read FListItemSelected write SetFListItemSelected;
    property ListItemHoveredAndSelected: TColor read FListItemHoveredAndSelected write SetFListItemHoveredAndSelected;
    property ListItemOdd: TColor read FListItemOdd write SetFListItemOdd;
    property ListItemEven: TColor read FListItemEven write SetFListItemEven;
  end;

procedure AppsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState; Hovered: boolean; DoRowColoring: boolean; DrawDescription: boolean = True);

procedure TagsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState; Hovered: boolean);

var
  Skin: TSkin;
  W10Color: array [0..47] of TColor;

implementation

function InvertColor(AColor: TColor): TColor;
var
  r, g, b: byte;
begin
  RedGreenBlue(ColorToRGB(AColor), r, g, b);
  r := not r;
  g := not g;
  b := not b;
  Result := RGBToColor(r, g, b);
end;

procedure AppsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState; Hovered: boolean; DoRowColoring: boolean; DrawDescription: boolean = True);
var
  bitmap: TBitmap;
  Selected: boolean;
  lbctrl: TListBox;
  text_height: integer;
  text_width: integer;
  text_margin: integer;
  Text, description: string;
  text_invert: boolean = False;
  row_coloring: boolean = False;
begin
  case Skin.SkinType of
    stApps:
    begin
      text_invert := True;
      row_coloring := True;
    end;
  end;

  lbctrl := TListBox(Control);
  Selected := odSelected in State;

  bitmap := TBitmap.Create;
  bitmap.Width := ARect.Right;
  bitmap.Height := lbctrl.ItemHeight;

  { Background }
  bitmap.Canvas.Brush.Color := lbctrl.Color;

  if DoRowColoring and row_coloring then
  begin
    if Odd(Index) then
      bitmap.Canvas.Brush.Color := Skin.ListItemOdd
    else
      bitmap.Canvas.Brush.Color := Skin.ListItemEven;
  end;

  if hovered then
    bitmap.Canvas.Brush.Color := Skin.ListItemHovered;
  if selected then
    bitmap.Canvas.Brush.Color := Skin.ListItemSelected;
  if hovered and selected then
    bitmap.Canvas.Brush.Color := Skin.ListItemHoveredAndSelected;

  bitmap.Canvas.FillRect(0, 0, bitmap.Width, bitmap.Height);

  { Text }
  bitmap.Canvas.Font.Size := 11;
  bitmap.Canvas.Font.Color := Skin.PrimaryFontColor;

  if selected and text_invert then
    bitmap.Canvas.Font.Color := InvertColor(Skin.PrimaryFontColor);

  Text := lbctrl.Items[Index];
  text_height := bitmap.Canvas.GetTextHeight(Text);
  text_width := bitmap.Canvas.GetTextWidth(Text);
  text_margin := ScaleX(12, 96);

  if lbctrl.BiDiMode = bdLeftToRight then
  begin
    bitmap.Canvas.TextOut(text_margin, ((lbctrl.ItemHeight - text_height) shr 1), Text);

    if DrawDescription then
    begin
      description := ' #' + TAppItem(lbctrl.Items.Objects[Index]).Description;
      bitmap.Canvas.Font.Color := Skin.SecondaryFontColor;

      //if selected and text_invert then
      //  bitmap.Canvas.Font.Color := InvertColor(Skin.SecondaryFontColor);

      bitmap.Canvas.TextOut(text_margin + text_width + 1,
        ((lbctrl.ItemHeight - text_height) shr 1), description);
    end;
  end
  else
  begin
    bitmap.Canvas.TextOut(ARect.Right - text_margin - text_width,
      ((lbctrl.ItemHeight - text_height) shr 1), Text);

    if DrawDescription then
    begin
      description := '#' + TAppItem(lbctrl.Items.Objects[Index]).Description + ' ';
      bitmap.Canvas.Font.Color := Skin.SecondaryFontColor;

      //if selected and text_invert then
      //  bitmap.Canvas.Font.Color := InvertColor(Skin.SecondaryFontColor);

      bitmap.Canvas.TextOut(ARect.Right - text_margin - text_width -
        bitmap.Canvas.GetTextWidth(description) - 1,
        ((lbctrl.ItemHeight - text_height) shr 1), description);
    end;
  end;

  { Draw }
  lbctrl.Canvas.Draw(ARect.Left, ARect.Top, bitmap);
  bitmap.Free;
end;

procedure TagsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState; Hovered: boolean);
begin
  AppsListBoxDrawItem(Control, Index, ARect, State, Hovered, False, False);
end;

{ TSkin }

procedure TSkin.SetFAppsBackgroundColor(AValue: TColor);
begin
  if FAppsBackgroundColor = AValue then
    Exit;
  FAppsBackgroundColor := AValue;
end;

procedure TSkin.SetFBackgroundColor(AValue: TColor);
begin
  if FMainBackgroundColor = AValue then
    Exit;
  FMainBackgroundColor := AValue;
end;

procedure TSkin.SetFListItemEven(AValue: TColor);
begin
  if FListItemEven = AValue then
    Exit;
  FListItemEven := AValue;
end;

procedure TSkin.SetFListItemHovered(AValue: TColor);
begin
  if FListItemHovered = AValue then
    Exit;
  FListItemHovered := AValue;
end;

procedure TSkin.SetFListItemHoveredAndSelected(AValue: TColor);
begin
  if FListItemHoveredAndSelected = AValue then
    Exit;
  FListItemHoveredAndSelected := AValue;
end;

procedure TSkin.SetFListItemOdd(AValue: TColor);
begin
  if FListItemOdd = AValue then
    Exit;
  FListItemOdd := AValue;
end;

procedure TSkin.SetFListItemSelected(AValue: TColor);
begin
  if FListItemSelected = AValue then
    Exit;
  FListItemSelected := AValue;
end;

procedure TSkin.SetFPrimaryFontColor(AValue: TColor);
begin
  if FPrimaryFontColor = AValue then
    Exit;
  FPrimaryFontColor := AValue;
end;

procedure TSkin.SetFSecondaryFontColor(AValue: TColor);
begin
  if FSecondaryFontColor = AValue then
    Exit;
  FSecondaryFontColor := AValue;
end;

procedure TSkin.SetFSkinType(AValue: TSkinType);
begin
  if FSkinType = AValue then
    Exit;
  FSkinType := AValue;
end;

procedure TSkin.SetFTagsBackgroundColor(AValue: TColor);
begin
  if FTagsBackgroundColor = AValue then
    Exit;
  FTagsBackgroundColor := AValue;
end;

procedure TSkin.SetFUserColor(AValue: integer);
begin
  if FUserColor = AValue then
    Exit;

  if (AValue >= -1) and (AValue <= High(W10Color)) then
    FUserColor := AValue
  else
    FUserColor := -1;
end;

constructor TSkin.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TSkin.SaveToFile(AFileName: string);
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  try
    WriteComponentAsTextToStream(AStream, Self);
    AStream.SaveToFile(AFileName);
  finally
    AStream.Free;
  end;
end;

procedure TSkin.LoadFromFile(AFileName: string);
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  try
    AStream.LoadFromFile(AFileName);
    ReadComponentFromTextStream(AStream, TComponent(Self), @OnFindClass);
  finally
    AStream.Free;
  end;
end;

procedure TSkin.OnFindClass(Reader: TReader; const AClassName: string; var ComponentClass: TComponentClass);
begin
  if CompareText(AClassName, 'TSkin') = 0 then
    ComponentClass := TSkin;
end;

procedure TSkin.UpdateSkin;
begin
  case SkinType of
    stDark: DarkSkin;
    stLight: LightSkin;
    stApps: AppsSkin;
    else
    begin
      FSkinType := stLight;
      LightSkin;
    end;
  end;
end;

procedure TSkin.LightSkin;
begin
  { Main }
  FPrimaryFontColor := clBlack;
  FSecondaryFontColor := RGBToColor(72, 82, 90);
  FMainBackgroundColor := RGBToColor(230, 230, 230);
  { ListBox }
  FAppsBackgroundColor := clWhite;
  FTagsBackgroundColor := RGBToColor(242, 242, 242);
  { ListItem }
  FListItemHovered := RGBToColor(218, 218, 218);
  FListItemSelected := RGBToColor(161, 194, 227);
  FListItemHoveredAndSelected := RGBToColor(122, 170, 219);
  { Colorize }
  if FUserColor >= 0 then
  begin
    FListItemSelected := GetHighLightColor(W10Color[FUserColor], 25);
    FListItemHoveredAndSelected := W10Color[FUserColor];
  end;
  if Assigned(FOnChangeTheme) then
    FOnChangeTheme(Self);
end;

procedure TSkin.DarkSkin;
begin
  { Main }
  FPrimaryFontColor := clWhite;
  FSecondaryFontColor := RGBToColor(162, 162, 162);
  FMainBackgroundColor := RGBToColor(162, 162, 162);
  { ListBox }
  FAppsBackgroundColor := RGBToColor(23, 23, 23);
  FTagsBackgroundColor := RGBToColor(16, 16, 16);
  { ListItem }
  FListItemHovered := RGBToColor(39, 39, 39);
  FListItemSelected := RGBToColor(6, 78, 135);
  FListItemHoveredAndSelected := RGBToColor(3, 99, 175);
  { Colorize }
  if FUserColor >= 0 then
  begin
    FListItemSelected := GetShadowColor(W10Color[FUserColor], -25);
    FListItemHoveredAndSelected := W10Color[FUserColor];
  end;
  if Assigned(FOnChangeTheme) then
    FOnChangeTheme(Self);
end;

procedure TSkin.AppsSkin;
begin
  { Main }
  FPrimaryFontColor := clBlack;
  FSecondaryFontColor := RGBToColor(72, 82, 90);
  FMainBackgroundColor := clWhite;
  { ListBox }
  FAppsBackgroundColor := clWhite;
  FTagsBackgroundColor := RGBToColor(242, 242, 242);
  { ListItem }
  FListItemHovered := RGBToColor(218, 218, 218);
  FListItemSelected := GetHighLightColor(clGray, 25);
  FListItemHoveredAndSelected := clGray;
  { Colorize }
  if FUserColor >= 0 then
  begin
    FListItemSelected := GetHighLightColor(W10Color[FUserColor], 25);
    FListItemHoveredAndSelected := W10Color[FUserColor];
    FMainBackgroundColor := FListItemHoveredAndSelected;
  end;
  { OddEven }
  FListItemOdd := RGBToColor(250, 250, 250);
  FListItemEven := RGBToColor(240, 240, 240);
  if Assigned(FOnChangeTheme) then
    FOnChangeTheme(Self);
end;

initialization
  Skin := TSkin.Create(nil);
  { Windows 10 Colors }
  W10Color[0] := RGBToColor(255, 185, 0);
  W10Color[1] := RGBToColor(255, 140, 0);
  W10Color[2] := RGBToColor(247, 99, 12);
  W10Color[3] := RGBToColor(202, 80, 16);
  W10Color[4] := RGBToColor(218, 59, 1);
  W10Color[5] := RGBToColor(239, 105, 80);
  W10Color[6] := RGBToColor(209, 52, 56);
  W10Color[7] := RGBToColor(255, 67, 67);
  W10Color[8] := RGBToColor(231, 72, 86);
  W10Color[9] := RGBToColor(232, 17, 35);
  W10Color[10] := RGBToColor(234, 0, 94);
  W10Color[11] := RGBToColor(195, 0, 82);
  W10Color[12] := RGBToColor(227, 0, 140);
  W10Color[13] := RGBToColor(191, 0, 119);
  W10Color[14] := RGBToColor(194, 57, 179);
  W10Color[15] := RGBToColor(154, 0, 137);
  W10Color[16] := RGBToColor(0, 120, 215);
  W10Color[17] := RGBToColor(0, 99, 177);
  W10Color[18] := RGBToColor(142, 140, 216);
  W10Color[19] := RGBToColor(107, 105, 214);
  W10Color[20] := RGBToColor(135, 100, 184);
  W10Color[21] := RGBToColor(116, 77, 169);
  W10Color[22] := RGBToColor(177, 70, 194);
  W10Color[23] := RGBToColor(136, 23, 152);
  W10Color[24] := RGBToColor(0, 153, 188);
  W10Color[25] := RGBToColor(45, 125, 154);
  W10Color[26] := RGBToColor(0, 183, 195);
  W10Color[27] := RGBToColor(3, 131, 135);
  W10Color[28] := RGBToColor(0, 178, 148);
  W10Color[29] := RGBToColor(1, 133, 116);
  W10Color[30] := RGBToColor(0, 204, 106);
  W10Color[31] := RGBToColor(16, 137, 62);
  W10Color[32] := RGBToColor(122, 117, 116);
  W10Color[33] := RGBToColor(93, 90, 88);
  W10Color[34] := RGBToColor(104, 118, 138);
  W10Color[35] := RGBToColor(81, 92, 107);
  W10Color[36] := RGBToColor(86, 124, 115);
  W10Color[37] := RGBToColor(72, 104, 96);
  W10Color[38] := RGBToColor(73, 130, 5);
  W10Color[39] := RGBToColor(16, 124, 16);
  W10Color[40] := RGBToColor(118, 118, 118);
  W10Color[41] := RGBToColor(76, 74, 72);
  W10Color[42] := RGBToColor(105, 121, 126);
  W10Color[43] := RGBToColor(74, 84, 89);
  W10Color[44] := RGBToColor(100, 124, 100);
  W10Color[45] := RGBToColor(82, 94, 94);
  W10Color[46] := RGBToColor(132, 117, 69);
  W10Color[47] := RGBToColor(126, 115, 95);

finalization
  Skin.Free;

end.
