unit uCardGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, StdCtrls, RzLstBox, RzChkLst, ExtCtrls;

type
  TfmCardGroup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cmb_DoorGradeGroup: TComboBox;
    btn_Save: TSpeedButton;
    btn_Close: TSpeedButton;
    ADOQuery: TADOQuery;
    btn_Delete: TSpeedButton;
    ADOCheckQuery: TADOQuery;
    ed_GroupName: TEdit;
    Timer2: TTimer;
    Panel3: TPanel;
    Panel4: TPanel;
    StaticText1: TStaticText;
    clDoor: TRzCheckList;
    Splitter2: TSplitter;
    pan_Alarm: TPanel;
    StaticText2: TStaticText;
    clAlarm: TRzCheckList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CloseClick(Sender: TObject);
    procedure clDoorChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure btn_SaveClick(Sender: TObject);
    procedure cmb_DoorGradeGroupKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_DoorGradeGroupChange(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure clAlarmChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
  private
    DoorList: TStringList;
    ArmAreaList: TStringList;
    CurCheckedList: TStringList;
    CurArmAreaCheckedList: TStringList;
    { Private declarations }
    procedure LoadDoorInfo;
    procedure LoadAlarmInfo;
    procedure LoadCardGroup(cmb_Box:TComboBox);
    procedure DoorGroupSetting(stDoorGroup:string);
    Procedure CheckedList(aDoorNo:String);
    Procedure UnCheckedList(aDoorNo:String);
    Procedure CheckedAlarmList(aDeviceID:String);
    Procedure UnCheckedAlarmList(aDeviceID:String);
    procedure FormClear;

    Function  AppendDB(
              aCardGroup:String;      //그룹명
              aNodeNo:String;    //노드번호(9자리)
              aEcuID:string;     //ECUID
              aDoorNo:Char;        //기기내문번호(1 or 2)
              aPermitCode:Char     //승인여부(L:승인,N:불허)
             ):Boolean;
    Function  AppendAlarmDB(
              aCardGroup:String;      //그룹명
              aNodeNo:String;    //노드번호(9자리)
              aEcuID:string;     //ECUID
              aArmAreaNo:integer;        //기기내방범구역번호(1 or 2)
              aPermitCode:Char     //승인여부(L:승인,N:불허)
             ):Boolean;
    Function CheckCardGroup(aCardGroup,aNodeNo,aEcuID:string):Boolean;
    Function DeleteGroupName(aCardGroup:string):Boolean;
  public
    { Public declarations }
  end;

var
  fmCardGroup: TfmCardGroup;

implementation
uses
  uDataModule1,
  uLomosUtil, uGroupName;
{$R *.dfm}

{ TfmCardGroup }

procedure TfmCardGroup.LoadDoorInfo;
var
  st: string;
  stSql : string;
  Floor: String;
begin
  Screen.Cursor:= crHourGlass;
  DoorList.Clear;
  CurCheckedList.Clear;
  clDoor.Clear;
  clDoor.Items.Add('0.전체');
  DoorList.Add('0.전체');
  stSql := 'select * from TB_DOOR ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';

  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    Sql.text := stSql;
    Try
      OPen;
    Except
      Exit;
    End;

    First;
    while not eof do
    begin
      st:= FindField('DO_DOORNONAME').asString;
      clDoor.Items.Add(st);
      DoorList.Add(FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString + FindField('DO_DOORNO').asString);
      Next;
    end;
  end;
  Screen.Cursor:= crDefault;
end;

procedure TfmCardGroup.FormCreate(Sender: TObject);
begin
    DoorList:= TStringList.Create;
    ArmAreaList := TStringList.Create;
    CurCheckedList:= TStringList.Create;
    CurArmAreaCheckedList := TStringList.Create;
    LoadDoorInfo;
    LoadAlarmInfo;
    LoadCardGroup(cmb_DoorGradeGroup);
    FormClear;
end;

procedure TfmCardGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DoorList.Free;
    ArmAreaList.Free;
    CurCheckedList.Free;
    CurArmAreaCheckedList.Free;
end;

procedure TfmCardGroup.LoadCardGroup(cmb_Box:TComboBox);
var
  stSql : string;
begin
  cmb_Box.Clear;
  cmb_Box.Items.Add('');
  cmb_Box.ItemIndex := 0;
  cmb_Box.Items.Add('그룹추가');
  stSql := 'select CA_GROUP  from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' Group by CA_GROUP ';
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
    while Not Eof do
    begin
      cmb_Box.Items.Add(FindField('CA_GROUP').AsString);
      Next;
    end;
  end;
end;

procedure TfmCardGroup.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCardGroup.clDoorChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
var
  aIndex: Integer;
  Loop : Integer;
begin
  if Index = 0 then   //전체 클릭시
  begin
    if NewState = cbUnchecked then
    begin
      clDoor.UncheckAll;
      CurCheckedList.Clear;
    end
    else
    begin
      clDoor.CheckAll;
      CurCheckedList.Clear;
      For Loop:= 1 to DoorList.Count - 1 do
      begin
        CurCheckedList.Add(DoorList[Loop]);  //전체문을 다 체크함
      end;
    end;
    exit;
  end;

  if NewState = cbUnchecked then
  begin

    aIndex := CurCheckedList.IndexOf(DoorList[Index]);
    if aIndex > -1 then CurCheckedList.Delete(aIndex); //체크리스트에서 삭제
  end else
  begin
    aIndex := CurCheckedList.IndexOf(DoorList[Index]);
    if aIndex < 0 then CurCheckedList.Add(DoorList[Index]); //체크리스트에 삽입
  end;
end;

procedure TfmCardGroup.DoorGroupSetting(stDoorGroup: string);
var
  stSql : string;
  stDeviceID : string;
  i : integer;
begin
  stSql := 'select * from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_GROUP = ''' + stDoorGroup + ''' ';
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
    While Not Eof do
    begin
      stDeviceID := FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString;
      for i := 1 to 8 do
      begin
        if FindField('DE_DOOR' + inttostr(i)).AsString = 'Y' then
        begin
          CheckedList(stDeviceID + inttostr(i));
        end else
        begin
          UnCheckedList(stDeviceID + inttostr(i));
        end;
      end;
      for i := 0 to con_nFIXMAXAREANO do
      begin
        if FindField('DE_ALARM' + inttostr(i)).AsString = 'Y' then
        begin
          CheckedAlarmList(stDeviceID + inttostr(i));
        end else
        begin
          UnCheckedAlarmList(stDeviceID + inttostr(i));
        end;
      end;
      Next;
    end;
  end;
end;

procedure TfmCardGroup.CheckedList(aDoorNo: String);
var
  aIndex: Integer;
begin
  aIndex:= DoorList.Indexof(aDoorNo);

  if (aIndex > -1) and (aIndex < clDoor.Count) then
  begin
    clDoor.ItemChecked[aIndex]:= True;
    aIndex := CurCheckedList.IndexOf(aDoorNo);
    if aIndex < 0 then  CurCheckedList.Add(aDoorNo);
  end;
end;

procedure TfmCardGroup.UnCheckedList(aDoorNo: String);
var
  aIndex: Integer;
begin
  aIndex:= DoorList.Indexof(aDoorNo);

  if (aIndex > -1) and (aIndex < clDoor.Count) then
  begin
    clDoor.ItemChecked[aIndex]:= False;
    aIndex := CurCheckedList.IndexOf(aDoorNo);
    if aIndex > -1 then  CurCheckedList.Delete(aIndex);
  end;
end;

procedure TfmCardGroup.btn_SaveClick(Sender: TObject);
var
  Loop : Integer;
  aIndex : Integer;
  st : String;
  stNodeNo,stEcuID : String;
  stArmAreaNo : string;
  DoorNo : Char;
begin
  if Trim(cmb_DoorGradeGroup.Text) = '' then
  begin
    showmessage('그룹명을 넣어주세요.');
    Exit;
  end;
  //도어리스트를 전부다 돌면서 체크리스트와 비교
  //체크되어 있으면 Y 없으면 N
  For Loop := 1 to DoorList.Count -1 do
  Begin
    st:= DoorList[Loop];
    stNodeNo:= Copy(st,1,3);
    stEcuID := Copy(st,4,2);
    DoorNo:= st[6];
    aIndex := CurCheckedList.IndexOf(DoorList[Loop]);
    if aIndex > -1 then //체크 되어 있으면
      AppendDB(cmb_DoorGradeGroup.Text,stNodeNo,stEcuID,DoorNo,'Y')   //'Y'로 셋팅
    else
      AppendDB(cmb_DoorGradeGroup.Text,stNodeNo,stEcuID,DoorNo,'N');  //'N'으로 셋팅
  End;
  For Loop := 1 to ArmAreaList.Count -1 do
  Begin
    st:= ArmAreaList[Loop];
    stNodeNo:= Copy(st,1,3);
    stEcuID := Copy(st,4,2);
    stArmAreaNo := copy(st,6,1);
    if Not isDigit(stArmAreaNo) then stArmAreaNo := '0';
    aIndex := CurArmAreaCheckedList.IndexOf(ArmAreaList[Loop]);
    if aIndex > -1 then //체크 되어 있으면
      AppendAlarmDB(cmb_DoorGradeGroup.Text,stNodeNo,stEcuID,strtoint(stArmAreaNo),'Y')   //'Y'로 셋팅
    else
      AppendAlarmDB(cmb_DoorGradeGroup.Text,stNodeNo,stEcuID,strtoint(stArmAreaNo),'N');  //'N'으로 셋팅
  End;
  LoadCardGroup(cmb_DoorGradeGroup);
  FormClear;

end;

function TfmCardGroup.AppendDB(aCardGroup, aNodeNo, aEcuID: string;
  aDoorNo, aPermitCode: Char): Boolean;
var
  ChkPermit : Char;
  stSql : string;
  stDate : string;
  stTime : string;
begin
  Result:= False;

  ChkPermit := 'L';

  if Not CheckCardGroup(aCardGroup,aNodeNo,aEcuID) then
  begin
    //없어서 Insert 하는 경우
    stSql := ' Insert Into TB_DEVICECARDNOGROUP( ';
    stSql := stSql + 'GROUP_CODE,';
    stSql := stSql + 'CA_GROUP,';
    stSql := stSql + 'AC_NODENO,';
    stSql := stSql + 'AC_ECUID,';
    if aDoorNo = '1' then stSql := stSql + 'DE_DOOR1,'
    else if aDoorNo = '2' then stSql := stSql + 'DE_DOOR2,';
    stSql := stSql + 'DE_USEACCESS,';
    stSql := stSql + 'DE_PERMIT,';
    stSql := stSql + 'DE_RCVACK,';
    stSql := stSql + 'DE_UPDATETIME) ';
    stSql := stSql + 'Values(';
    stSql := stSql + '''' + GROUPCODE + ''',';
    stSql := stSql + '''' + aCardGroup + ''',';
    stSql := stSql + inttostr(strtoint(aNodeNo)) + ',';
    stSql := stSql + '''' + aEcuID + ''',';
    if aDoorNo = '1' then stSql := stSql + '''' + aPermitCode +''','
    else if aDoorNo = '2' then stSql := stSql + ''''+ aPermitCode +''',';
    stSql := stSql + '''Y'',';
    stSql := stSql + '''L'',';
    stSql := stSql + '''N'',';
    stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''') ';

  end else
  begin
    //없어서 Update 하는 경우
    stSql := ' Update TB_DEVICECARDNOGROUP set ';
    if aDoorNo = '1' then stSql := stSql + 'DE_DOOR1 = ''' + aPermitCode +''','
    else if aDoorNo = '2' then stSql := stSql + 'DE_DOOR2= ''' + aPermitCode +''',';
    stSql := stSql + 'DE_USEACCESS = ''Y'',';
    stSql := stSql + 'DE_PERMIT = ''L'',';
    stSql := stSql + 'DE_RCVACK = ''N'',';
    stSql := stSql + 'DE_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + '''  ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND CA_GROUP = ''' + aCardGroup + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
    stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  end;
  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmCardGroup.CheckCardGroup(aCardGroup, aNodeNo,
  aEcuID: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := ' select * from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_GROUP = ''' + aCardGroup + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  With AdoCheckQuery do
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

procedure TfmCardGroup.cmb_DoorGradeGroupKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TfmCardGroup.cmb_DoorGradeGroupChange(Sender: TObject);
begin
  if cmb_DoorGradeGroup.ItemIndex = 0 then
  begin
    FormClear;
    Exit;
  end else if cmb_DoorGradeGroup.ItemIndex = 1 then
  begin
    clDoor.UncheckAll;
    CurCheckedList.Clear;
    fmGroupName:= TfmGroupName.Create(Self);
    fmGroupName.Showmodal;
    fmGroupName.Free;
    if ed_GroupName.Text = '' then
    begin
      cmb_DoorGradeGroup.ItemIndex := 0;
      FormClear;
      Exit;
    end;
    Timer2.Enabled := True;
  end else
  begin
    clDoor.UncheckAll;
    CurCheckedList.Clear;
    DoorGroupSetting(cmb_DoorGradeGroup.Text);
  end;
  clDoor.Enabled := True;
  clAlarm.Enabled := True;
  btn_Save.Enabled := True;
  btn_Delete.Enabled := True;
end;

procedure TfmCardGroup.FormClear;
begin
  clDoor.UncheckAll;
  CurCheckedList.Clear;
  clDoor.Enabled := False;
  clAlarm.UncheckAll;
  CurArmAreaCheckedList.Clear;
  clAlarm.Enabled := False;
  
  btn_Save.Enabled := False;
  btn_Delete.Enabled := False;
  ed_GroupName.Text := '';
end;

procedure TfmCardGroup.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  if cmb_DoorGradeGroup.ItemIndex = 1 then  cmb_DoorGradeGroup.Text := ed_GroupName.Text;
end;

procedure TfmCardGroup.btn_DeleteClick(Sender: TObject);
var
  Loop : Integer;
  aIndex : Integer;
  st : String;
  stNodeNo,stEcuID : String;
  DoorNo : Char;
begin
  if Trim(cmb_DoorGradeGroup.Text) = '' then
  begin
    showmessage('그룹명을 넣어주세요.');
    Exit;
  end;
  if (Application.MessageBox(PChar(cmb_DoorGradeGroup.text + ' 그룹을 삭제하시겠습니까?'),'삭제',MB_OKCANCEL) = ID_CANCEL)  then Exit;

  DeleteGroupName(Trim(cmb_DoorGradeGroup.Text));
  LoadCardGroup(cmb_DoorGradeGroup);
  FormClear;
end;

function TfmCardGroup.DeleteGroupName(aCardGroup: string): Boolean;
var
  stSql : string;
begin
  stSql := ' Delete from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_GROUP = ''' + aCardGroup + ''' ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmCardGroup.LoadAlarmInfo;
var
  st: string;
  stSql : string;
  Floor: String;
  stArmAreaNo : string;
begin
  Screen.Cursor:= crHourGlass;
  ArmAreaList.Clear;
  CurArmAreaCheckedList.Clear;
  clAlarm.Clear;
  clAlarm.Items.Add('0.전체');
  ArmAreaList.Add('0.전체');
  stSql := 'select * from TB_ARMAREA ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AR_USE = ''Y'' ';
  stSql := stSql + ' order by AR_VIEWSEQ,AC_NodeNo,AC_ECUID,AR_AREANO ';

  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    Sql.text := stSql;
    Try
      OPen;
    Except
      Exit;
    End;

    First;
    while not eof do
    begin
      st:= FindField('AR_NAME').asString;
      clAlarm.Items.Add(st);
      if isDigit(FindField('AR_AREANO').AsString) then stArmAreaNo := inttostr(strtoint(FindField('AR_AREANO').AsString))
      else stArmAreaNo := '0';
      ArmAreaList.Add(FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString + stArmAreaNo);
      Next;
    end;
  end;
  Screen.Cursor:= crDefault;
end;

procedure TfmCardGroup.clAlarmChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
var
  aIndex: Integer;
  Loop : Integer;
begin
  if Index = 0 then   //전체 클릭시
  begin
    if NewState = cbUnchecked then
    begin
      clAlarm.UncheckAll;
      CurArmAreaCheckedList.Clear;
    end
    else
    begin
      clAlarm.CheckAll;
      CurArmAreaCheckedList.Clear;
      For Loop:= 1 to ArmAreaList.Count - 1 do
      begin
        CurArmAreaCheckedList.Add(ArmAreaList[Loop]);  //전체방범구역을 다 체크함
      end;
    end;
    exit;
  end;

  if NewState = cbUnchecked then
  begin

    aIndex := CurArmAreaCheckedList.IndexOf(ArmAreaList[Index]);
    if aIndex > -1 then CurArmAreaCheckedList.Delete(aIndex); //체크리스트에서 삭제
  end else
  begin
    aIndex := CurArmAreaCheckedList.IndexOf(ArmAreaList[Index]);
    if aIndex < 0 then CurArmAreaCheckedList.Add(ArmAreaList[Index]); //체크리스트에 삽입
  end;
end;

procedure TfmCardGroup.CheckedAlarmList(aDeviceID: String);
var
  aIndex: Integer;
begin
  aIndex:= ArmAreaList.Indexof(aDeviceID);

  if (aIndex > -1) and (aIndex < clAlarm.Count) then
  begin
    clAlarm.ItemChecked[aIndex]:= True;
    aIndex := CurArmAreaCheckedList.IndexOf(aDeviceID);
    if aIndex < 0 then  CurArmAreaCheckedList.Add(aDeviceID);
  end;

end;

procedure TfmCardGroup.UnCheckedAlarmList(aDeviceID: String);
var
  aIndex: Integer;
begin
  aIndex:= ArmAreaList.Indexof(aDeviceID);

  if (aIndex > -1) and (aIndex < clAlarm.Count) then
  begin
    clAlarm.ItemChecked[aIndex]:= False;
    aIndex := CurArmAreaCheckedList.IndexOf(aDeviceID);
    if aIndex > -1 then  CurArmAreaCheckedList.Delete(aIndex);
  end;

end;

function TfmCardGroup.AppendAlarmDB(aCardGroup, aNodeNo, aEcuID: string;aArmAreaNo:integer;
  aPermitCode: Char): Boolean;
var
  ChkPermit : Char;
  stSql : string;
  stDate : string;
  stTime : string;
begin
  Result:= False;

  ChkPermit := 'L';

  if Not CheckCardGroup(aCardGroup,aNodeNo,aEcuID) then
  begin
    //없어서 Insert 하는 경우
    stSql := ' Insert Into TB_DEVICECARDNOGROUP( ';
    stSql := stSql + 'GROUP_CODE,';
    stSql := stSql + 'CA_GROUP,';
    stSql := stSql + 'AC_NODENO,';
    stSql := stSql + 'AC_ECUID,';
    stSql := stSql + 'DE_ALARM' + inttostr(aArmAreaNo) + ',';
    stSql := stSql + 'DE_PERMIT,';
    stSql := stSql + 'DE_RCVACK,';
    stSql := stSql + 'DE_UPDATETIME) ';
    stSql := stSql + 'Values(';
    stSql := stSql + '''' + GROUPCODE + ''',';
    stSql := stSql + '''' + aCardGroup + ''',';
    stSql := stSql + inttostr(strtoint(aNodeNo)) + ',';
    stSql := stSql + '''' + aEcuID + ''',';
    stSql := stSql + '''' + aPermitCode + ''',';
    stSql := stSql + '''L'',';
    stSql := stSql + '''N'',';
    stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''') ';

  end else
  begin
    //없어서 Update 하는 경우
    stSql := ' Update TB_DEVICECARDNOGROUP set ';
    stSql := stSql + 'DE_ALARM' + inttostr(aArmAreaNo) + ' = ''' + aPermitCode +''',';
    stSql := stSql + 'DE_PERMIT = ''L'',';
    stSql := stSql + 'DE_RCVACK = ''N'',';
    stSql := stSql + 'DE_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + '''  ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND CA_GROUP = ''' + aCardGroup + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
    stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  end;
  result := DataModule1.ProcessExecSQL(stSql);
end;

end.
