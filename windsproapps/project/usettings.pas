unit usettings;

{ Unidad que guarda todas las configuraciones }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Dialogs, uwindsproapps, LResources, uskin, Forms;

type

  { TSettings }

  TSettings = class(TComponent)
  private
    FSkinType: TSkinType;
    FUserColor: integer;
    procedure SetFSkinType(AValue: TSkinType);
    procedure SetFUserColor(AValue: integer);
  public
    constructor Create(AOwner: TComponent); override;
  public
    procedure SaveToFile(AFileName: string);
    procedure LoadFromFile(AFileName: string);
    procedure OnFindClass(Reader: TReader; const AClassName: string; var ComponentClass: TComponentClass);
  published
    property UserColor: integer read FUserColor write SetFUserColor;
    property SkinType: TSkinType read FSkinType write SetFSkinType;
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

constructor TSettings.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FUserColor := -1;
  FSkinType := stApps;
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
  if not FileExists(AFileName) then
    Exit;
  AStream := TMemoryStream.Create;
  try
    AStream.LoadFromFile(AFileName);
    ReadComponentFromTextStream(AStream, TComponent(Self), @OnFindClass);
  except
    { TODO -olainz -cbugs : al fallar la carga de los datos iniciar de todas formas }
    ShowMessage('Error loading settings from: "' + AFileName + '". Try again.');
    DeleteFile(AFileName);
    Application.ShowMainForm := False;
    Application.Terminate;
  end;
  AStream.Free;
end;

procedure TSettings.OnFindClass(Reader: TReader; const AClassName: string; var ComponentClass: TComponentClass);
begin
  if CompareText(AClassName, 'TSettings') = 0 then
    ComponentClass := TSettings;
end;

end.
