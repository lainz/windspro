unit uapps;

{ Objetos base para la lista de aplicaciones }

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources;

type

  { TAppItem }

  TAppItem = class(TCollectionItem)
  private
    FDescription: string;
    FDirectory: string;
    FExecutable: string;
    FFilter: string;
    FIcon: string;
    FName: string;
    FParameters1: string;
    FParameters2: string;
    FSavedGames: string;
    FTags: string;
    FVersion: string;
    procedure SetFDescription(AValue: string);
    procedure SetFDirectory(AValue: string);
    procedure SetFExecutable(AValue: string);
    procedure SetFFilter(AValue: string);
    procedure SetFIcon(AValue: string);
    procedure SetFName(AValue: string);
    procedure SetFParameters1(AValue: string);
    procedure SetFParameters2(AValue: string);
    procedure SetFSavedGames(AValue: string);
    procedure SetFTags(AValue: string);
    procedure SetFVersion(AValue: string);
  public
    constructor Create(ACollection: TCollection); override;
  published
    { Nombre }
    property Name: string read FName write SetFName;
    { Versión }
    property Version: string read FVersion write SetFVersion;
    { Directorio }
    property Directory: string read FDirectory write SetFDirectory;
    { Ejecutable }
    property Executable: string read FExecutable write SetFExecutable;
    { Parámetros }
    property Parameters: string read FParameters1 write SetFParameters1;
    { Parámetros para archivos }
    property ParametersForFiles: string read FParameters2 write SetFParameters2;
    { Descripción (hash tags) }
    property Description: string read FDescription write SetFDescription;
    { Icono }
    property Icon: string read FIcon write SetFIcon;
    { Etiquetas (categorías) }
    property Tags: string read FTags write SetFTags;
    { Partidas guardadas }
    property SavedGames: string read FSavedGames write SetFSavedGames;
    { Filtro de Abrir ROM }
    property Filter: string read FFilter write SetFFilter;
  end;

  { TAppList }

  TAppList = class(TCollection)
  private
    function GetItems(Index: integer): TAppItem;
    procedure SetItems(Index: integer; AValue: TAppItem);
  public
    constructor Create;
  public
    function Add: TAppItem;
    function AddEx(aName, aVersion, aDirectory, aExecutable, aParameters, aParametersForFiles, aDescription, aIcon, aTags, aSavedGames, aFilter: string): TAppItem;
    property Items[Index: integer]: TAppItem read GetItems write SetItems; default;
  end;

  { TAppComponent }

  TAppComponent = class(TComponent)
  private
    FList: TAppList;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    procedure SaveToFile(AFileName: string);
    procedure LoadFromFile(AFileName: string);
    procedure OnFindClass(Reader: TReader; const AClassName: string; var ComponentClass: TComponentClass);
  published
    property List: TAppList read FList write FList;
  end;

implementation

{ TAppComponent }

constructor TAppComponent.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FList := TAppList.Create;
end;

destructor TAppComponent.Destroy;
begin
  FList.Free;
  inherited Destroy;
end;

procedure TAppComponent.SaveToFile(AFileName: string);
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

procedure TAppComponent.LoadFromFile(AFileName: string);
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

procedure TAppComponent.OnFindClass(Reader: TReader; const AClassName: string; var ComponentClass: TComponentClass);
begin
  if CompareText(AClassName, 'TAppComponent') = 0 then
    ComponentClass := TAppComponent;
end;

{ TAppList }

function TAppList.GetItems(Index: integer): TAppItem;
begin
  Result := TAppItem(inherited Items[Index]);
end;

procedure TAppList.SetItems(Index: integer; AValue: TAppItem);
begin
  Items[Index].Assign(AValue);
end;

constructor TAppList.Create;
begin
  inherited Create(TAppItem);
end;

function TAppList.Add: TAppItem;
begin
  Result := inherited Add as TAppItem;
end;

function TAppList.AddEx(aName, aVersion, aDirectory, aExecutable, aParameters, aParametersForFiles, aDescription, aIcon, aTags, aSavedGames, aFilter: string): TAppItem;
begin
  Result := inherited Add as TAppItem;
  Result.Name := aName;
  Result.Version := aVersion;
  Result.Directory := aDirectory;
  Result.Executable := aExecutable;
  Result.Parameters := aParameters;
  Result.ParametersForFiles := aParametersForFiles;
  Result.Description := aDescription;
  Result.Icon := aIcon;
  Result.Tags := aTags;
  Result.SavedGames := aSavedGames;
  Result.Filter := aFilter;
end;

{ TAppItem }

procedure TAppItem.SetFDirectory(AValue: string);
begin
  if FDirectory = AValue then
    Exit;
  FDirectory := AValue;
end;

procedure TAppItem.SetFDescription(AValue: string);
begin
  if FDescription = AValue then
    Exit;
  FDescription := AValue;
end;

procedure TAppItem.SetFExecutable(AValue: string);
begin
  if FExecutable = AValue then
    Exit;
  FExecutable := AValue;
end;

procedure TAppItem.SetFFilter(AValue: string);
begin
  if FFilter = AValue then
    Exit;
  FFilter := AValue;
end;

procedure TAppItem.SetFIcon(AValue: string);
begin
  if FIcon = AValue then
    Exit;
  FIcon := AValue;
end;

procedure TAppItem.SetFName(AValue: string);
begin
  if FName = AValue then
    Exit;
  FName := AValue;
end;

procedure TAppItem.SetFParameters1(AValue: string);
begin
  if FParameters1 = AValue then
    Exit;
  FParameters1 := AValue;
end;

procedure TAppItem.SetFParameters2(AValue: string);
begin
  if FParameters2 = AValue then
    Exit;
  FParameters2 := AValue;
end;

procedure TAppItem.SetFSavedGames(AValue: string);
begin
  if FSavedGames = AValue then
    Exit;
  FSavedGames := AValue;
end;

procedure TAppItem.SetFTags(AValue: string);
begin
  if FTags = AValue then
    Exit;
  FTags := AValue;
end;

procedure TAppItem.SetFVersion(AValue: string);
begin
  if FVersion = AValue then
    Exit;
  FVersion := AValue;
end;

constructor TAppItem.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);
end;

end.
