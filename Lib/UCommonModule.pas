unit UCommonModule;

interface

uses
  SysUtils, Classes,ADODB,ActiveX,DB;

const
  FTPRETRYCOUNT = 3;

type
  TCommonModule = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckDepartName(aCompanyCode,aJijumCode,aDepartName:string; var aDepartCode:string):Boolean;
    function CheckJijumName(aCompanyCode,aJijumName:string;var aJijumCode:string):Boolean;
    function CheckPosiName(aCompanyCode,aPosiName:string;var aPosiCode:string):Boolean;
    function CheckTB_CARD(aCardNo:string):Boolean;
    function CheckTB_EMPLOYEE(aCompanyCode,aEmCode:string):Boolean;

    Function  GetAlarmAreaGrade(aAlarm,aAlarm0,aAlarm1,aAlarm2,aAlarm3,aAlarm4,aAlarm5,aAlarm6,aAlarm7,aAlarm8,aMaster:string):string;
    Function  GetDoorAreaGrade(aAccess,aDoor1,aDoor2,aDoor3,aDoor4,aDoor5,aDoor6,aDoor7,aDoor8:string):string;
    function  GetModeChangeAlarmStatusCode(aAN_CODE:string;var aAlarmStateCode,aDisAlarmStateCode:string):Boolean;
    Function  GetNextCardPositionNumber:string;
    Function  GetNextDepartCode(aCompanyCode,aJijumCode:string):string;
    Function  GetNextFdmsID:string;
    Function  GetNextJijumCode(aCompanyCode:string):string;
    Function  GetNextPosiCode(aCompanyCode:string):string;

    procedure LoadAlarmModeNotCard(var aStringList:TStringList);
    procedure LoadZoneDetectList(var aStringList:TStringList);
    Function InsertIntoTB_EMPHIS(aCompanyCode,aEmCode,afdmsID,aMode,aCardNo,aCardType,aEmName,aHandPhone,aCompanyName,aJijumName,aDepartName,aPosiName:string):Boolean;
  end;

  TAlarmStatusCode = Class(TComponent)
  private
    FALARMDATA: string;
    FDISALARMSTATUSCODE: string;
    FALARMSTATUSCODE: string;
    procedure SetALARMDATA(const Value: string);
    procedure SetALARMSTATUSCODE(const Value: string);
    procedure SetDISALARMSTATUSCODE(const Value: string);
    { Private declarations }
  public
    { Public declarations }
  published
    Property ALARMDATA:string Read FALARMDATA write SetALARMDATA;
    Property ALARMSTATUSCODE:string Read FALARMSTATUSCODE write SetALARMSTATUSCODE;
    Property DISALARMSTATUSCODE:string Read FDISALARMSTATUSCODE write SetDISALARMSTATUSCODE;
  end;


var
  CommonModule: TCommonModule;
  //************Alarm Data Process Change
  AlarmModeNotCardList : TStringList;  //카드데이터 아닌 리스트
  ZoneDetectList : TStringList;        //존감지 상태 코드

implementation
uses
  uDataModule1,
  uLomosUtil;

{$R *.dfm}


{ TAlarmStatusCode }

procedure TAlarmStatusCode.SetALARMDATA(const Value: string);
begin
  FALARMDATA := Value;
end;

procedure TAlarmStatusCode.SetALARMSTATUSCODE(const Value: string);
begin
  FALARMSTATUSCODE := Value;
end;

procedure TAlarmStatusCode.SetDISALARMSTATUSCODE(const Value: string);
begin
  FDISALARMSTATUSCODE := Value;
end;

{ TCommonModule }

function TCommonModule.CheckDepartName(aCompanyCode, aJijumCode,
  aDepartName: string; var aDepartCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_COMPANY ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''3'' ';
  stSql := stSql + ' AND CO_NAME = ''' + aDepartName + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    aDepartCode := FindField('CO_DEPARTCODE').AsString;
  end;
  result := True;
end;

function TCommonModule.CheckJijumName(aCompanyCode, aJijumName: string;
  var aJijumCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_COMPANY ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''2'' ';
  stSql := stSql + ' AND CO_NAME = ''' + aJijumName + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    aJijumCode := FindField('CO_JIJUMCODE').AsString;
  end;
  result := True;
end;

function TCommonModule.CheckPosiName(aCompanyCode, aPosiName: string;
  var aPosiCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_POSI ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND PO_NAME = ''' + aPosiName + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    aPosiCode := FindField('PO_POSICODE').AsString;
  end;
  result := True;
end;

function TCommonModule.CheckTB_CARD(aCardNo: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_CARD ';
  stSql := stSql + ' where CA_CARDNO = ''' + aCardNo + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
  end;
  result := True;
end;

function TCommonModule.CheckTB_EMPLOYEE(aCompanyCode,
  aEmCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_EMPLOYEE ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmCode + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
  end;
  result := True;
end;

function TCommonModule.GetAlarmAreaGrade(aAlarm, aAlarm0, aAlarm1, aAlarm2,
  aAlarm3, aAlarm4, aAlarm5, aAlarm6, aAlarm7, aAlarm8,
  aMaster: string): string;
var
  i : integer;
  stData : string;
  stData1,stData2 : string;
begin
  stData := '';
  for i := 0 to 7 do
  begin
    stData := stData + '0';
  end;
  if aAlarm = 'Y' then stData[8] := '1'; 
  if aAlarm0 = 'Y' then stData[8] := '1'; 
  if aAlarm1 = 'Y' then stData[8] := '1';
  if aAlarm2 = 'Y' then stData[7] := '1';
  if aAlarm3 = 'Y' then stData[6] := '1';
  if aAlarm4 = 'Y' then stData[5] := '1';
  if aAlarm5 = 'Y' then stData[4] := '1';
  if aAlarm6 = 'Y' then stData[3] := '1';
  if aAlarm7 = 'Y' then stData[2] := '1';
  if aAlarm8 = 'Y' then stData[1] := '1';
  stData1 := '0100' + copy(stData,1,4);
  stData2 := '0100' + copy(stData,5,4);
  if aMaster = 'Y' then stData1[3] := '1';

  result := Hex2ASCII(BinaryToHex(stData1) + BinaryToHex(stData2));

end;

function TCommonModule.GetDoorAreaGrade(aAccess, aDoor1, aDoor2, aDoor3,
  aDoor4, aDoor5, aDoor6, aDoor7, aDoor8: string): string;
var
  i : integer;
  stData : string;
  stData1,stData2 : string;
begin
  stData := '';
  for i := 0 to 7 do
  begin
    stData := stData + '0';
  end;
  if aDoor1 = 'Y' then stData[8] := '1';
  if aDoor2 = 'Y' then stData[7] := '1';
  if aDoor3 = 'Y' then stData[6] := '1';
  if aDoor4 = 'Y' then stData[5] := '1';
  if aDoor5 = 'Y' then stData[4] := '1';
  if aDoor6 = 'Y' then stData[3] := '1';
  if aDoor7 = 'Y' then stData[2] := '1';
  if aDoor8 = 'Y' then stData[1] := '1';

  stData1 := '0100' + copy(stData,1,4);
  stData2 := '0100' + copy(stData,5,4);

  result := Hex2ASCII(BinaryToHex(stData1) + BinaryToHex(stData2));

end;

function TCommonModule.GetModeChangeAlarmStatusCode(aAN_CODE: string;
  var aAlarmStateCode, aDisAlarmStateCode: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  result := False;
  aAlarmStateCode := '';
  aDisAlarmStateCode := '';
  
  stSql := ' SELECT * from TB_NOTCARDALARMCODE ';
  stSql := stSql + ' where AN_CODE = ''' + aAN_CODE + ''' ';
  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;
    with TempAdoQuery  do
    begin
      Close;
      //SQL.Clear;
      SQL.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;

      While Not Eof do
      begin
        if Trim(FindField('AN_MODE').AsString) = 'a' then aAlarmStateCode := FindField('AL_STATUSCODE2').AsString
        else if Trim(FindField('AN_MODE').AsString) = 'd' then aDisAlarmStateCode := FindField('AL_STATUSCODE2').AsString;
        Next;
      end;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
  result := True;
end;

function TCommonModule.GetNextCardPositionNumber: string;
var
  stSql : string;
begin
  result := '1';

  stSql := 'select MAX(POSITIONNUM) as POSITIONNUM from TB_CARD ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    result := inttostr(FindField('POSITIONNUM').AsInteger + 1);
  end;
end;

function TCommonModule.GetNextDepartCode(aCompanyCode,
  aJijumCode: string): string;
var
  stSql : string;
begin
  result := '001';
  stSql := 'select MAX(CO_DEPARTCODE) as CO_DEPARTCODE from TB_COMPANY ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''3'' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    if Not isDigit(FindField('CO_DEPARTCODE').AsString) then Exit;
    result := FillZeroNumber(strtoint(FindField('CO_DEPARTCODE').AsString) + 1,3);
  end;
end;

function TCommonModule.GetNextFdmsID: string;
var
  stSql : string;
begin
  result := '31';

  stSql := 'select MAX(FDMS_ID) as FDMS_ID from TB_EMPLOYEE ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    result := inttostr(FindField('FDMS_ID').AsInteger + 1);
  end;
end;

function TCommonModule.GetNextJijumCode(aCompanyCode: string): string;
var
  stSql : string;
begin
  result := '001';
  stSql := 'select MAX(CO_JIJUMCODE) as CO_JIJUMCODE from TB_COMPANY ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''2'' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    if Not isDigit(FindField('CO_JIJUMCODE').AsString) then Exit;
    result := FillZeroNumber(strtoint(FindField('CO_JIJUMCODE').AsString) + 1,3);
  end;
end;

function TCommonModule.GetNextPosiCode(aCompanyCode: string): string;
var
  stSql : string;
begin
  result := '001';
  stSql := 'select MAX(PO_POSICODE) as PO_POSICODE from TB_POSI ';
  stSql := stSql + ' where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text :=  stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    if Not isDigit(FindField('PO_POSICODE').AsString) then Exit;
    result := FillZeroNumber(strtoint(FindField('PO_POSICODE').AsString) + 1,3);
  end;
end;

function TCommonModule.InsertIntoTB_EMPHIS(aCompanyCode, aEmCode, afdmsID,
  aMode, aCardNo, aCardType, aEmName, aHandPhone, aCompanyName, aJijumName,
  aDepartName, aPosiName: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Insert Into TB_EMPHIS(';
  stSql := stSql + ' GROUP_CODE,';
  stSql := stSql + ' CO_COMPANYCODE,';
  stSql := stSql + ' EM_CODE,';
  if afdmsID <> '' then
    stSql := stSql + ' FDMS_ID,';
  stSql := stSql + ' MODE, ';
  stSql := stSql + ' SEND_STATUS, ';
  stSql := stSql + ' CA_CARDNO, ';
  stSql := stSql + ' CA_CARDTYPE, ';
  stSql := stSql + ' SEND_STATUS2,';
  stSql := stSql + ' EH_INSERTTIME, ';
  stSql := stSql + ' EM_NAME, ';
  stSql := stSql + ' EM_HANDPHONE, ';
  stSql := stSql + ' COMPANY_NAME, ';
  stSql := stSql + ' JIJUM_NAME, ';
  stSql := stSql + ' DEPART_NAME, ';
  stSql := stSql + ' PO_NAME) ';
  stSql := stSql + ' Values( ';
  stSql := stSql + '''1234567890'',';
  stSql := stSql + '''' + aCompanyCode + ''',';
  stSql := stSql + '''' + aEmCode + ''',';
  if afdmsID <> '' then
    stSql := stSql + afdmsID + ',';
  stSql := stSql + '''' + aMode + ''',';
  stSql := stSql + '''N'',';
  stSql := stSql + '''' + aCardNo + ''',';
  stSql := stSql + '''' + aCardType + ''',';
  stSql := stSql + '''N'',';
  stSql := stSql + '''' + FormatDateTime('yyyymmddhhnnss',Now) + ''',';
  stSql := stSql + '''' + aEmName + ''',';
  stSql := stSql + '''' + aHandPhone + ''',';
  stSql := stSql + '''' + aCompanyName + ''',';
  stSql := stSql + '''' + aJijumName + ''',';
  stSql := stSql + '''' + aDepartName + ''',';
  stSql := stSql + '''' + aPosiName + ''') ';

  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TCommonModule.LoadAlarmModeNotCard(var aStringList: TStringList);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
  AlarmStatusCode : TAlarmStatusCode;
  stAlarmStateCode : string;
  stDisAlarmStateCode : string;
begin
  aStringList.Clear;

  stSql := ' SELECT * from TB_ALARMMODENOTCARD ';
  stSql := stSql + ' order by AN_CODE ';
  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;
    with TempAdoQuery  do
    begin
      Close;
      //SQL.Clear;
      SQL.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;

      While Not Eof do
      begin
        AlarmStatusCode:= TAlarmStatusCode.Create(Self);
        AlarmStatusCode.ALARMDATA := FindField('AN_NOTDATA').AsString;
        GetModeChangeAlarmStatusCode(FindField('AN_CODE').AsString,stAlarmStateCode,stDisAlarmStateCode);
        AlarmStatusCode.ALARMSTATUSCODE := stAlarmStateCode;
        AlarmStatusCode.DISALARMSTATUSCODE := stDisAlarmStateCode;
        aStringList.AddObject(FindField('AN_NOTDATA').AsString,AlarmStatusCode);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TCommonModule.LoadZoneDetectList(var aStringList: TStringList);
begin
  aStringList.Clear;
  aStringList.Add('FI'); //화재알람
  aStringList.Add('F1'); //화재알람
  aStringList.Add('E1'); //비상알람
  aStringList.Add('G1'); //가스알람
  aStringList.Add('Q1'); //설비알람
end;

end.
