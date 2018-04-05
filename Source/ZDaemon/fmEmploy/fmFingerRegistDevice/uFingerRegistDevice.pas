unit uFingerRegistDevice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,FINGERAPI22, DB, ADODB;

const
  IMG_X=280;
  IMG_Y=320;

type
  TfmFingerRegistDevice = class(TForm)
    Label1: TLabel;
    cmb_FingerPort: TComboBox;
    btnRefresh: TButton;
    Panel2: TPanel;
    Image2: TImage;
    Panel1: TPanel;
    Image1: TImage;
    panMessage: TPanel;
    lb_Message: TLabel;
    btn_Save: TBitBtn;
    GetFingerTimer: TTimer;
    MessageTimer: TTimer;
    btn_Cancel: TBitBtn;
    TempADOQuery: TADOQuery;
    procedure GetFingerTimerTimer(Sender: TObject);
  private
    FSave: Boolean;
    FFingerCardNo: string;
    FFingerUserID: string;
    gFeature1  : TFeature;
    gFeature2  : TFeature;
    L_bGetFinger_1 : Boolean;
    L_bGetFinger_2 : Boolean;
    L_bDelay : Boolean;
    { Private declarations }
    Function GetFinger1:Boolean;
    Function GetFinger2:Boolean;
    function GetFdmsCardNo : string;
    function GetLastFdmsCardNo : int64;
    Function DupCheckCardNo(aCardNo:string):Boolean;
  public
    { Public declarations }
    property FingerUserID : string read FFingerUserID write FFingerUserID;
    property FingerCardNo : string read FFingerCardNo write FFingerCardNo;
    property Save : Boolean read FSave write FSave;
  end;

var
  fmFingerRegistDevice: TfmFingerRegistDevice;

implementation
uses
  uDataModule1,
  udmAdoQuery,
  uLomosUtil,
  uZTBMSFunction;
{$R *.dfm}

{ TfmFingerRegistDevice }

function TfmFingerRegistDevice.DupCheckCardNo(aCardNo: string): Boolean;
var
  stSql : string;
begin
  result := False;
  //지문 카드 중복유무
  stSql := ' Select * from TB_CARD where CA_CARDNO = ''' + aCardNo + ''' ';
  with TempADOQuery do
  begin
    close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordcount < 1 then Exit;
    result := True;
  end;
end;

function TfmFingerRegistDevice.GetFdmsCardNo: string;
var
  stSql : string;
  nFdms_CardNo : int64;
  nLastCardNo : int64;
  stCardNo : string;
  i : integer;
  bResult : Boolean;
begin
  //result := FillZeroNumber2(31,10);
  result := '';

  for i := 0 to 100000 do
  begin
    nLastCardNo := GetLastFdmsCardNo;
    stCardNo := FillCharString(inttostr(nLastCardNo),'2',10,True);
    if CARDLENGTHTYPE = 0 then  //고정길이 타입이면
    begin
      if Not IsNumericCardNo then  //숫자변환이 아니면 숫자 타입을 HEX타입으로 변환하자.
      begin
        stCardNo := Dec2Hex64(StrtoInt64(stCardNo),8);
      end
    end else if CARDLENGTHTYPE = 1 then
    begin
      if Not IsNumericCardNo then  //숫자변환이면
      begin
        stCardNo := Dec2Hex64(StrtoInt64(stCardNo),8);
      end
    end else Exit; //KT사옥용이면 그냥 빠져 나가자.
    stCardNo := GetFixedCardNoCheck(stCardNo,G_bCardFixedUse,G_stCardFixedFillChar,G_nCardFixedPosition,G_nCardFixedLength);

    bResult := DupCheckCardNo(stCardNo);
    if Not bResult  then break;
  end;
  if bResult then Exit; //카드번호를 찾지 못한 경우
  result := stCardNo;

  //FingerUserID := FillZeroStrNum(FingerUserID,4);
  //result := Ascii2Hex(FingerUserID,8) + '********';
end;

function TfmFingerRegistDevice.GetFinger1: Boolean;
var
  RawImage1 : TRawImage;
  DeviceNum,ret       : Integer;
begin
  Image1.Repaint;
  if cmb_FingerPort.Items.Count< 1 then
  begin
    exit;
  end;
  lb_Message.Caption := '첫번째 지문을 지문등록기에 찍어 주세요.';
  lb_Message.Visible := True;
  panMessage.Visible := True;
  MessageTimer.Enabled := True;
  DeviceNum:=strToint(cmb_FingerPort.Text);
  ret:=GetFinger(DeviceNum,RawImage1,gFeature1);
  if ret=FPAPIERR_OK then
  begin
    DisplayRawImage(Image1.Canvas,RawImage1,IMG_X,IMG_Y);
    Image1.Refresh;
    L_bGetFinger_1 := True;
    panMessage.Visible := False;
    MessageTimer.Enabled := False;
  end
  else
  begin
    //DisplayRawImage(Image1.Canvas,RawImage1,IMG_X,IMG_Y);
    //Image1.Refresh;
    //ShowErrorMSG(ret);
  end;
end;

function TfmFingerRegistDevice.GetFinger2: Boolean;
var
  RawImage2 : TRawImage;
  DeviceNum,i,ret       : Integer;
begin
  if cmb_FingerPort.Items.Count< 1 then
  begin
    exit;
  end;
  lb_Message.Caption := '두번째 지문을 지문등록기에 찍어 주세요.';
  lb_Message.Visible := True;
  panMessage.Visible := True;
  MessageTimer.Enabled := True;
  DeviceNum:=strToint(cmb_FingerPort.Text);
  ret:=GetFinger(DeviceNum,RawImage2,gFeature2);
  if ret=FPAPIERR_OK then
  begin
    DisplayRawImage(Image2.Canvas,RawImage2,IMG_X,IMG_Y);
    Image2.Refresh;
    L_bGetFinger_2 := True;
    panMessage.Visible := False;
    MessageTimer.Enabled := False;
  end
  else begin
    //DisplayRawImage(Image2.Canvas,RawImage2,IMG_X,IMG_Y);
    //Image2.Refresh;
    //ShowErrorMSG(ret);
  end;
end;

function TfmFingerRegistDevice.GetLastFdmsCardNo: int64;
var
  stSql : string;
begin
  result := 31;
  stSql := 'select * from TB_CURRENTDAEMON ';
  stSql := stSql + ' Where CU_STATECODE = ''FDMSCARD'' ';

  with TempADOQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordcount < 1 then Exit;
    if Not isDigit(FindField('CU_STATEVALUE').AsString) then Exit;
    result := strtoint(FindField('CU_STATEVALUE').AsString) + 1;
    stSql := ' Update TB_CURRENTDAEMON set CU_STATEVALUE = ''' + inttostr(result) + ''' ';
    stSql := stSql + ' Where CU_STATECODE = ''FDMSCARD'' ';
    DataModule1.ProcessExecSQL(stSql);
  end;
end;

procedure TfmFingerRegistDevice.GetFingerTimerTimer(Sender: TObject);
var
  L_bResult : Boolean;
  ret: integer;
begin
  L_bResult := False;
  Try
    GetFingerTimer.Enabled := False;
    if Not L_bGetFinger_1 then
    begin
      GetFinger1;
    end else if Not L_bDelay then
    begin
      L_bDelay := True;
      lb_Message.Caption := '지문 등록기에서 손가락을 떼어 주세요...';
      lb_Message.Visible := True;
      panMessage.Visible := True;
      MessageTimer.Enabled := True;
      Delay(3000);
    end else if Not L_bGetFinger_2 then
    begin
//      GetFinger2;
    end else
    begin
(*      ret := MatchFingerOneToOne(gFeature1,gFeature2,2);
      if ret = FPAPIERR_OK then
      begin
        L_bResult := True;
        btn_Save.enabled := True;
      end else
      begin
        Image1.Picture := nil;
        Image2.Picture := nil;
        L_bGetFinger_1 := False;
        L_bGetFinger_2 := False;
        L_bDelay := False;
        showmessage('2개의 지문 매칭에 실패 하였습니다. 처음부터 다시 시도 하여 주세요.');
      end; *) 
    end;
  Finally
    GetFingerTimer.Enabled := Not L_bResult;
  End;
end;

end.
