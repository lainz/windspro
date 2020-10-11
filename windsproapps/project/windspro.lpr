program windspro;

{ Programa }

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  ustrings,
  uwindsproapps,
  uskin,
  usettings,
  uhighdpi,
  uconfig,
  umain,
  ubidimodetools,
  uniqueinstanceraw,
  Windows;

{ $R manifest.rc}
{$R *.res}

begin
  if not InstanceRunning(rs_application_title) then
  begin
    CreateMutex(nil, False, PChar(rs_application_title));
    RequireDerivedFormResource := True;
  Application.Scaled:=True;
  Application.Title:='WinDS PRO Apps';
    Application.Initialize;
    Application.CreateForm(Tfrmwindspro, frmwindspro);
    Application.CreateForm(Tfrmconfig, frmconfig);
    //HighDPI(96);
    Application.Run;
  end
  else
    Application.Terminate;
end.
