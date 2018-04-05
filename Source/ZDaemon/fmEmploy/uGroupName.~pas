unit uGroupName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DB, ADODB;

type
  TfmGroupName = class(TForm)
    Label1: TLabel;
    ed_GroupName: TEdit;
    btn_Apply: TSpeedButton;
    btn_Cancel: TSpeedButton;
    ADOQuery: TADOQuery;
    procedure btn_ApplyClick(Sender: TObject);
    procedure ed_GroupNameKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    function CheckGroupName(aGroupName:string):Boolean;
  public
    { Public declarations }
  end;

var
  fmGroupName: TfmGroupName;

implementation
uses
  uCardGroup,
  uDataModule1;
{$R *.dfm}

procedure TfmGroupName.btn_ApplyClick(Sender: TObject);
begin
  if CheckGroupName(ed_GroupName.Text) then
  begin
    showmessage('이미 등록되어 있는 그룹명입니다.');
    ed_GroupName.SetFocus;
    Exit;
  end;
  fmCardGroup.ed_GroupName.Text := ed_GroupName.Text;
  Close;
end;

procedure TfmGroupName.ed_GroupNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then btn_ApplyClick(Self);
end;

procedure TfmGroupName.btn_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmGroupName.FormActivate(Sender: TObject);
begin
  ed_GroupName.SetFocus;  
end;

function TfmGroupName.CheckGroupName(aGroupName: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_GROUP = ''' + aGroupName + ''' ';
  with AdoQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if RecordCount < 1 then Exit;
    result := True;
  end;
end;

end.
