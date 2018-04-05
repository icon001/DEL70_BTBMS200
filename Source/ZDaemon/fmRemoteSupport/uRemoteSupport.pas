unit uRemoteSupport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TfmRemoteSupport = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRemoteSupport: TfmRemoteSupport;

implementation

{$R *.dfm}

procedure TfmRemoteSupport.FormActivate(Sender: TObject);
begin
  WebBrowser1.Navigate('http://zeron.co.kr/help');  
end;

procedure TfmRemoteSupport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization
  RegisterClass(TfmRemoteSupport);
Finalization
  UnRegisterClass(TfmRemoteSupport);

end.
