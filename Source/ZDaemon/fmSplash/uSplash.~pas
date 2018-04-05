unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmSplash = class(TForm)
    SplashTimer: TTimer;
    Label1: TLabel;
    procedure SplashTimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSplash: TfmSplash;

implementation

{$R *.dfm}

procedure TfmSplash.SplashTimerTimer(Sender: TObject);
begin
  Label1.Visible := Not Label1.Visible ;
  //Label1.Caption := '프로그램을 로딩중입니다.';
end;

procedure TfmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
