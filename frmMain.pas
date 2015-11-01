unit frmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, uPhotoServiceInterface,
  FMX.Edit;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FPhotoService: IPhotoService;
    procedure ImagePicked(aPicture: TBitmap);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uPhotoService;

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FPhotoService.TakePhoto;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   FPhotoService.PickPhoto;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FPhotoService := TPhotoService.Create;
  FPhotoService.OnPhotoTakenOrPicked := ImagePicked;
end;

procedure TForm1.ImagePicked(aPicture: TBitmap);
begin
 Image1.Bitmap.Assign(aPicture);
end;

end.
