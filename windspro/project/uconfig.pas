unit uconfig;

{ Formulario para editar las configuraciones }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ustrings, uskin, types, LCLType, ExtCtrls, ubidimodetools;

type

  { Tfrmconfig }

  Tfrmconfig = class(TForm)
    ColorsListBox: TListBox;
    GB: TComboBox;
    GBC: TComboBox;
    GBA: TComboBox;
    NDS: TComboBox;
    N3DS: TComboBox;
    DarkSkinComboBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    procedure ColorsListBoxDrawItem(Control: TWinControl; Index: integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure ColorsListBoxSelectionChange(Sender: TObject; {%H-}User: boolean);
    procedure DarkSkinComboBoxSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    procedure Translate;
    procedure UpdateTheme;
  end;

var
  frmconfig: Tfrmconfig;

implementation

uses
  umain;

{$R *.lfm}

{ Tfrmconfig }

procedure Tfrmconfig.FormCreate(Sender: TObject);
var
  i: integer;
begin
  Translate;

  ColorsListBox.ItemHeight := ScaleY(48, 96);
  DarkSkinComboBox.BorderSpacing.Around := ScaleY(8, 96);

  for i := 0 to 48 do
  begin
    ColorsListBox.Items.Add('');
  end;
end;

procedure Tfrmconfig.FormShow(Sender: TObject);
begin
  DarkSkinComboBox.ItemIndex := integer(Skin.SkinType);
  ColorsListBox.ItemIndex := Skin.UserColor + 1;
  GB.Caption := frmwindspro.Settings.GameBoy;
  GBC.Caption := frmwindspro.Settings.GameBoyColor;
  GBA.Caption := frmwindspro.Settings.GameBoyAdvance;
  NDS.Caption := frmwindspro.Settings.NintendoDS;
  N3DS.Caption := frmwindspro.Settings.Nintendo3DS;
end;

procedure Tfrmconfig.ColorsListBoxDrawItem(Control: TWinControl;
  Index: integer; ARect: TRect; State: TOwnerDrawState);
var
  lbcontrol: TListBox;
  margin, doublemargin: integer;
begin
  lbcontrol := TListBox(Control);
  lbcontrol.Canvas.Brush.Color := clWhite;
  lbcontrol.Canvas.FillRect(ARect);

  margin := ScaleY(2, 96);
  doublemargin := margin shl 1;

  if odSelected in State then
  begin
    lbcontrol.Canvas.Brush.Color := RGBToColor(95, 55, 190);
    lbcontrol.Canvas.FillRect(ARect.Left + margin, ARect.Top + margin,
      ARect.Right - margin,
      ARect.Bottom - margin);
  end;
  if Index <> 0 then
  begin
    lbcontrol.Canvas.Brush.Style := bsSolid;
    lbcontrol.Canvas.Brush.Color := W10Color[Index - 1];
  end
  else
  begin
    lbcontrol.Canvas.Brush.Style := bsDiagCross;
    lbcontrol.Canvas.Brush.Color := clSilver;
  end;

  lbcontrol.Canvas.FillRect(ARect.Left + doublemargin, ARect.Top +
    doublemargin, ARect.Right - doublemargin,
    ARect.Bottom - doublemargin);
end;

procedure Tfrmconfig.ColorsListBoxSelectionChange(Sender: TObject; User: boolean);
begin
  Skin.UserColor := ColorsListBox.ItemIndex - 1;
  UpdateTheme;
end;

procedure Tfrmconfig.DarkSkinComboBoxSelect(Sender: TObject);
begin
  Skin.SkinType := TSkinType(DarkSkinComboBox.ItemIndex);
  UpdateTheme;
end;

procedure Tfrmconfig.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  frmwindspro.Settings.GameBoy := GB.Caption;
  frmwindspro.Settings.GameBoyColor := GBC.Caption;
  frmwindspro.Settings.GameBoyAdvance := GBA.Caption;
  frmwindspro.Settings.NintendoDS := NDS.Caption;
  frmwindspro.Settings.Nintendo3DS := N3DS.Caption;
end;

procedure Tfrmconfig.Translate;
begin
  BiDiMode := GetBiDiMode;
  Self.Caption := ustrings.rs_configuration;
end;

procedure Tfrmconfig.UpdateTheme;
begin
  Skin.UpdateSkin;
end;

end.
