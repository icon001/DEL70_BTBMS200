unit uFTPDownLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, BaseGrid, AdvGrid, Buttons, uSubForm,
  CommandArray, DB, ADODB,ActiveX, AdvObj;

type
  TfmFTPDownLoad = class(TfmASubForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cmb_Mcu: TComboBox;
    sg_Device: TAdvStringGrid;
    Panel1: TPanel;
    btn_DeviceFtpGrade: TSpeedButton;
    btn_Close: TSpeedButton;
    AdoQuery: TADOQuery;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sg_DeviceCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btn_DeviceFtpGradeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmb_McuChange(Sender: TObject);
  private
    CheckCount : integer;
    { Private declarations }
    procedure AdvStrinGridSetAllCheck(Sender: TObject;bchkState:Boolean);
    procedure ShowECUList;
    function SaveTB_FTPLISTState(aNodeNo,aEcuID,aState:string):Boolean;
    function CheckTB_FTPLIST(aNodeNo, aEcuID:string):Boolean;
    function InsertIntoTB_FTPLIST(aNodeNo, aEcuID,aFileName,aProgress,aState:string):Boolean;
    function UpdateTB_FTPLIST(aNodeNo, aEcuID,aFileName,aProgress,aState:string):Boolean;
    function DisplayProgress(aNodeNo,aECUID,aPer:string):Boolean;
    procedure LoadMainControl;
  public
    { Public declarations }
    procedure ShowMessage(aMessage:string);
    procedure FTPFirmWareDownLoad(aNodeNo,aEcuID,aPer:string);
  end;

var
  fmFTPDownLoad: TfmFTPDownLoad;

implementation

uses
  uDataModule1,
  uLomosUtil,
  uServerDaemon;
{$R *.dfm}

procedure TfmFTPDownLoad.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmFTPDownLoad.FormShow(Sender: TObject);
begin
  LoadMainControl;
  ShowECUList;

end;

procedure TfmFTPDownLoad.ShowECUList;
var
  stSql : string;
  nRow : integer;
  stDownLoadProgress : string;
begin
  GridInit(sg_Device,4,2,True);

  stSql := 'Select b.AC_MCUIP,a.AC_NODENO,a.AC_ECUID,a.AC_COMPORT,a.AC_DEVICENAME,c.FL_SENDPROGRASS,c.FL_SENDSTATE ';
  stSql := stSql + ' from ';
  stSql := stSql + ' ( ';
  stSql := stSql + ' ( ';
  stSql := stSql + ' TB_ACCESSDEVICE a ';
  stSql := stSql + ' INNER JOIN ( select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' Where AC_GUBUN = ''0'' ) b ';
  stSql := stSql + ' ON(a.GROUP_CODE = b.GROUP_CODE) ';
  stSql := stSql + ' AND (a.AC_NODENO = b.AC_NODENO ) ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left Join TB_FTPLIST c ';
  stSql := stSql + ' ON  (a.GROUP_CODE = c.GROUP_CODE) ';
  stSql := stSql + ' AND (a.AC_NODENO = c.AC_NODENO) ';
  stSql := stSql + ' AND (a.AC_ECUID = c.AC_ECUID ) ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
(*
  stSql := 'Select b.AC_MCUIP,a.AC_NODENO,a.AC_ECUID,a.AC_DEVICENAME,FL_SENDPROGRASS,FL_SENDSTATE ';
  stSql := stSql + ' from TB_ACCESSDEVICE a ';
  stSql := stSql + ' INNER JOIN ( select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' Where AC_GUBUN = ''0'' ) b ';
  stSql := stSql + ' ON(a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ) ';
  stSql := stSql + ' Left Join TB_FTPLIST c ';
  stSql := stSql + ' ON(a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
*)
  if cmb_Mcu.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + copy(cmb_Mcu.Items.Strings[cmb_Mcu.ItemIndex],1,3);
  end;

  with AdoQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    except
      Exit;
    End;
    nRow := 1;
    with sg_Device do
    begin
      RowCount := RecordCount + 1;

      While Not Eof do
      begin
        cells[0,nRow] := FindField('AC_MCUIP').AsString;
        cells[1,nRow] := FindField('AC_ECUID').AsString;
        cells[2,nRow] := FindField('AC_DEVICENAME').AsString;
        stDownLoadProgress := '';
        if FindField('FL_SENDSTATE').AsString = 'Y' then stDownLoadProgress := '전송완료'
        else if FindField('FL_SENDSTATE').AsString = 'N' then
        begin
          stDownLoadProgress := '전송대기';
          if isDigit(FindField('FL_SENDPROGRASS').AsString) then
          begin
            if FindField('FL_SENDPROGRASS').AsString <> '100' then
              stDownLoadProgress := FindField('FL_SENDPROGRASS').AsString + ' %';
          end;
        end;
        cells[3,nRow] := stDownLoadProgress;
        cells[4,nRow] := inttostr(FindField('AC_NODENO').AsInteger);
        cells[5,nRow] := FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString;
        AddCheckBox(0,nRow,False,False);
        
        inc(nRow);
        Next;
      end;
    end;

  end;


end;

procedure TfmFTPDownLoad.sg_DeviceCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if ARow = 0 then //전체선택 또는 해제
  begin
    if State then CheckCount := (Sender as TAdvStringGrid).RowCount - 1
    else CheckCount := 0;
    AdvStrinGridSetAllCheck(Sender,State);
  end else
  begin
    if State then CheckCount := CheckCount + 1
    else CheckCount := CheckCount - 1 ;
  end;

end;

procedure TfmFTPDownLoad.AdvStrinGridSetAllCheck(Sender: TObject;
  bchkState: Boolean);
var
  i : integer;
begin
    for i:= 1 to (Sender as TAdvStringGrid).RowCount - 1  do
    begin
      (Sender as TAdvStringGrid).SetCheckBoxState(0,i,bchkState);
    end;

end;

procedure TfmFTPDownLoad.FormCreate(Sender: TObject);
begin
  CheckCount := 0;

end;

procedure TfmFTPDownLoad.btn_DeviceFtpGradeClick(Sender: TObject);
var
  DeviceLoop : integer;
  bchkState : Boolean;
begin
  if CheckCount < 1 then
  begin
    showmessage('컨트롤러를 선택하여 주세요.');
    Exit;
  end;
  if (Application.MessageBox(PChar('전체권한 전송시 현재 기기의 권한이 모두 삭제 됩니다. 전체권한 전송하시겠습니까?'),'전송',MB_OKCANCEL) = ID_CANCEL)  then Exit;
  with sg_Device do
  begin
    for DeviceLoop := 1 to RowCount - 1 do   //체크되어 있는 사용자 모두를 인서트 시킴
    begin
      GetCheckBoxState(0,DeviceLoop, bchkState);
      if bchkState then  //체크 되어 있으면 권한 재전송
      begin
        if SaveTB_FTPLISTState(cells[4,DeviceLoop],cells[1,DeviceLoop],'N') then
        begin
          cells[3,DeviceLoop] := '전송대기';
        end;
        DataModule1.TB_SYSTEMLOGInsert('0','00','0','0',cells[4,DeviceLoop]+ cells[1,DeviceLoop], '권한재전송');

      end;
    end;
  end;
  fmMain.FTPDOWNLOADStart;
  //self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'FTPDOWNLOAD'+ DATADELIMITER + '000000000' + DATADELIMITER + 'Y' + DATADELIMITER;
  //self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

function TfmFTPDownLoad.SaveTB_FTPLISTState(aNodeNo, aEcuID,
  aState: string): Boolean;
var
  stFileName : string;
begin
  stFileName := FillzeroNumber(strtoint(aNodeNo),3) + aEcuID;

  if Not CheckTB_FTPLIST(aNodeNo, aEcuID) then
  begin
    result := InsertIntoTB_FTPLIST(aNodeNo, aEcuID,stFileName,'',aState);
  end else
  begin
    result := UpdateTB_FTPLIST(aNodeNo, aEcuID,stFileName,'',aState);
  end;
end;

function TfmFTPDownLoad.CheckTB_FTPLIST(aNodeNo, aEcuID: string): Boolean;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  result := False;

  stSql := 'select * from TB_FTPLIST ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ' ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;

    with TempAdoQuery do
    begin
      Close;
      Sql.Text := stSql;
      Try
        Open;
      Except
        Exit;
      End;
      if recordCount < 1 then Exit;
      result := True;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

function TfmFTPDownLoad.InsertIntoTB_FTPLIST(aNodeNo, aEcuID, aFileName,
  aProgress, aState: string): Boolean;
var
  stSql : string;
begin
  stSql := ' Insert Into TB_FTPLIST( ';
  stSql := stSql + ' GROUP_CODE,' ;
  stSql := stSql + ' AC_NODENO,';
  stSql := stSql + ' AC_ECUID,';
  stSql := stSql + ' FL_FILENAME,';
  stSql := stSql + ' FL_SENDPROGRASS,';
  stSql := stSql + ' FL_SENDSTATE ) ';
  stSql := stSql + ' Values( ';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + '' + aNodeNo + ',';
  stSql := stSql + '''' + aEcuID + ''',';
  stSql := stSql + '''' + aFileName + ''',';
  stSql := stSql + '''' + aProgress + ''',';
  stSql := stSql + '''' + aState + ''') ';

  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmFTPDownLoad.UpdateTB_FTPLIST(aNodeNo, aEcuID, aFileName,
  aProgress, aState: string): Boolean;
var
  stSql : string;
begin
  stSql := ' Update TB_FTPLIST set ';
  stSql := stSql + ' FL_FILENAME = ''' + aFileName + ''',';
  stSql := stSql + ' FL_SENDPROGRASS = ''' + aProgress + ''',';
  stSql := stSql + ' FL_SENDSTATE = ''' + aState + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ' ;
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ';
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmFTPDownLoad.FormActivate(Sender: TObject);
begin
  fmMain.FTPDownLoadShow := True;

end;

procedure TfmFTPDownLoad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmMain.FTPDownLoadShow := False;

end;

procedure TfmFTPDownLoad.ShowMessage(aMessage: string);
var
  stReceiveData: string;
  stNodeNo : string;
  stECUID : string;
  stCmd : string;
  nLength : integer;
  stPer : string;
begin
  stReceiveData := aMessage;
  stNodeNo := copy(stReceiveData,3,3);
  stECUID := copy(stReceiveData,6,2);
  stCmd := stReceiveData[14];
  if Not Isdigit(stNodeNo) then Exit;
  if Not Isdigit(stEcuID) then Exit;
  if UpperCase(stCmd) <> 'F' then Exit;

  if Not isDigit(copy(stReceiveData,15,3)) then Exit;
  nLength := strtoint(copy(stReceiveData,15,3));
  stPer := copy(stReceiveData,18,nLength);
  if Not isDigit(stPer) then Exit;
  if stPer = '0' then Exit;  //0퍼센트는 표시하지 말자.

  DisplayProgress(stNodeNo,stECUID,stPer);

end;

function TfmFTPDownLoad.DisplayProgress(aNodeNo, aECUID,
  aPer: string): Boolean;
var
  nRow : integer;
  stID : string;
begin
  stID := aNodeNo + aECUID;
  with sg_Device do
  begin
    for nRow := 1 to RowCount - 1 do
    begin
      if cells[5,nRow] = stID then
      begin
        cells[3,nRow] := aPer + ' %';
        break;
      end;
    end;
  end;
end;

procedure TfmFTPDownLoad.LoadMainControl;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  cmb_Mcu.Items.Clear;
  cmb_Mcu.Items.Add('000:전체');
  cmb_Mcu.ItemIndex := 0;
  stSql := ' Select * from TB_ACCESSDEVICE ';
  stSql := stsql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_GUBUN = ''0'' ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;

    with TempAdoQuery do
    begin
      Close;
      Sql.Text := stSql;
      Try
        Open;
      Except
        Exit;
      End;
      while Not Eof do
      begin
        cmb_Mcu.Items.Add(FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + ':' + FindField('AC_MCUIP').AsString);
        Next;
      end;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

procedure TfmFTPDownLoad.cmb_McuChange(Sender: TObject);
begin
  ShowECUList;

end;

procedure TfmFTPDownLoad.FTPFirmWareDownLoad(aNodeNo, aEcuID,
  aPer: string);
begin
  if aPer = '0' then Exit;  //0퍼센트는 표시하지 말자.

  DisplayProgress(aNodeNo,aEcuID,aPer);

end;

end.
