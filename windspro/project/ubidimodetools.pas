unit ubidimodetools;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function GetLang: string;
function GetBiDiMode: TBiDiMode;

implementation

uses
  FileUtil, LCLProc, LazUTF8;

function GetLang: string;
var
  T: string; // unused FallBackLang
  i: integer;
begin
  Result := '';
  { We use the same method that is used in LCLTranslator unit }

  for i := 1 to Paramcount - 1 do
    if (ParamStrUTF8(i) = '--LANG') or (ParamStrUTF8(i) = '-l') or
      (ParamStrUTF8(i) = '--lang') then
      Result := ParamStrUTF8(i + 1);

  //Win32 user may decide to override locale with LANG variable.
  if Result = '' then
    Result := GetEnvironmentVariableUTF8('LANG');

  if Result = '' then
    LazGetLanguageIDs(Result, {%H-}T);
end;

function GetBiDiMode: TBiDiMode;
begin
  case GetLang of
    // Arabic
    'ar': Result := bdRightToLeft;
    else
      Result := bdLeftToRight;
  end;
end;

end.

