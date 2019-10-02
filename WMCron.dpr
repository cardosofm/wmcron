program WMCron;





uses
  System.StartUpCopy,
  FMX.Forms,
  untMain in 'untMain.pas' {frmMain},
  FMX.FontGlyphs.Android in 'FMX.FontGlyphs.Android.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
