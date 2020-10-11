program windspro;

{ Programa }

{$mode objfpc}{$H+}

{$ifdef Linux}
{$DEFINE USeCThreads}
  {$ifdef FPC_CROSSCOMPILING}
    {$ifdef CPUARM}
      //if GUI, then uncomment
      //{$linklib GLESv2}
    {$endif}
    {$linklib libc_nonshared.a}
  {$endif}
{$endif}

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
  uniqueinstanceraw
  {$IFDEF WINDOWS},Windows{$ENDIF};

{$IFDEF WINDOWS}
{ $R manifest.rc}
{$ENDIF}
{$R *.res}

begin
  if not InstanceRunning(rs_application_title) then
  begin
    {$IFDEF WINDOWS}
    CreateMutex(nil, False, PChar(rs_application_title));
    {$ENDIF}
    RequireDerivedFormResource := True;
  Application.Scaled:=True;
  Application.Title:='WinDS PRO';
    Application.Initialize;
    Application.CreateForm(Tfrmwindspro, frmwindspro);
    Application.CreateForm(Tfrmconfig, frmconfig);
    //HighDPI(96);
    Application.Run;
  end
  else
    Application.Terminate;
end.
