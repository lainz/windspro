unit usettings;

{ Unidad que guarda todas las configuraciones }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LazFileUtils, Dialogs, LResources, uskin, Forms;

type

  { TSettings }

  TSettings = class(TComponent)
  private
    FGameBoy: string;
    FGameBoyAdvance: string;
    FGameBoyColor: string;
    FNintendo3DS: string;
    FNintendoDS: string;
    FSkinType: TSkinType;
    FUserColor: integer;
    procedure SetFGameBoy(AValue: string);
    procedure SetFGameBoyAdvance(AValue: string);
    procedure SetFGameBoyColor(AValue: string);
    procedure SetFNintendo3DS(AValue: string);
    procedure SetFNintendoDS(AValue: string);
    procedure SetFSkinType(AValue: TSkinType);
    procedure SetFUserColor(AValue: integer);
  public
    constructor Create(AOwner: TComponent); override;
  public
    procedure SaveToFile(AFileName: string);
    procedure LoadFromFile(AFileName: string);
    procedure OnFindClass({%H-}Reader: TReader; const AClassName: string;
      var ComponentClass: TComponentClass);
  published
    property UserColor: integer read FUserColor write SetFUserColor;
    property SkinType: TSkinType read FSkinType write SetFSkinType;
    property GameBoy: string read FGameBoy write SetFGameBoy;
    property GameBoyColor: string read FGameBoyColor write SetFGameBoyColor;
    property GameBoyAdvance: string read FGameBoyAdvance write SetFGameBoyAdvance;
    property NintendoDS: string read FNintendoDS write SetFNintendoDS;
    property Nintendo3DS: string read FNintendo3DS write SetFNintendo3DS;
  end;

implementation

{ TSettings }

procedure TSettings.SetFUserColor(AValue: integer);
begin
  if FUserColor = AValue then
    Exit;
  FUserColor := AValue;
end;

procedure TSettings.SetFSkinType(AValue: TSkinType);
begin
  if FSkinType = AValue then
    Exit;
  FSkinType := AValue;
end;

procedure TSettings.SetFGameBoy(AValue: string);
begin
  if FGameBoy = AValue then
    Exit;
  FGameBoy := AValue;
end;

procedure TSettings.SetFGameBoyAdvance(AValue: string);
begin
  if FGameBoyAdvance = AValue then
    Exit;
  FGameBoyAdvance := AValue;
end;

procedure TSettings.SetFGameBoyColor(AValue: string);
begin
  if FGameBoyColor = AValue then
    Exit;
  FGameBoyColor := AValue;
end;

procedure TSettings.SetFNintendo3DS(AValue: string);
begin
  if FNintendo3DS = AValue then
    Exit;
  FNintendo3DS := AValue;
end;

procedure TSettings.SetFNintendoDS(AValue: string);
begin
  if FNintendoDS = AValue then
    Exit;
  FNintendoDS := AValue;
end;

constructor TSettings.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FUserColor := -1;
  FSkinType := stLight;
  FGameBoy := 'VBA-M';
  FGameBoyColor := 'VBA-M';
  FGameBoyAdvance := 'VBA-M';
  FNintendoDS := 'No$Zoomer';
  FNintendo3DS := 'Citra';
end;

procedure TSettings.SaveToFile(AFileName: string);
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

procedure TSettings.LoadFromFile(AFileName: string);
var
  AStream: TMemoryStream;
begin
  if not FileExistsUTF8(AFileName) then
    Exit;
  AStream := TMemoryStream.Create;
  try
    AStream.LoadFromFile(AFileName);
    ReadComponentFromTextStream(AStream, TComponent(Self), @OnFindClass);
  except
    { TODO -olainz -cbugs : al fallar la carga de los datos iniciar de todas formas }
    ShowMessage('Error loading settings from: "' + AFileName + '". Try again.');
    DeleteFileUTF8(AFileName);
    Application.ShowMainForm := False;
    Application.Terminate;
  end;
  AStream.Free;
end;

procedure TSettings.OnFindClass(Reader: TReader; const AClassName: string;
  var ComponentClass: TComponentClass);
begin
  if CompareText(AClassName, 'TSettings') = 0 then
    ComponentClass := TSettings;
end;

end.
