program DelphiLib;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmMain in 'frmMain.pas' {Form1},
  uPhotoServiceInterface in 'ImageService\uPhotoServiceInterface.pas',
  uPhotoService in 'ImageService\uPhotoService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
