unit uconfig;

{ Formulario para editar las configuraciones }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ustrings, uskin, types, LCLType, ubidimodetools;

type

  { Tfrmconfig }

  Tfrmconfig = class(TForm)
    ColorsListBox: TListBox;
    DarkSkinComboBox: TComboBox;
    procedure ColorsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState);
    procedure ColorsListBoxSelectionChange(Sender: TObject; User: boolean);
    procedure DarkSkinComboBoxSelect(Sender: TObject);
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
end;

procedure Tfrmconfig.ColorsListBoxDrawItem(Control: TWinControl; Index: integer; ARect: TRect; State: TOwnerDrawState);
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
