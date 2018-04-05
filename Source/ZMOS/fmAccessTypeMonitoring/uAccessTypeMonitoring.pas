unit uAccessTypeMonitoring;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, uSubForm, CommandArray, StdCtrls, ImgList,
  ToolPanels, Shader, ActnList, Menus, Grids, BaseGrid, AdvGrid,Clipbrd,
  Buttons,ADODB,ActiveX, DB,iniFiles, MPlayer,
  uDataModule1;

const
  LeftSpace = '__';

type
  TfmAccessTypeMonitoring = class(TfmASubForm)
    pan_device: TPanel;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    tbLOCATE: TTabSheet;
    tbDEVICE: TTabSheet;
    stateList: TImageList;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Shader2: TShader;
    Shader3: TShader;
    ActionList1: TActionList;
    devicelist: TImageList;
    Action_Reload: TAction;
    ADOAlarmQuery: TADOQuery;
    MediaPlayer1: TMediaPlayer;
    smallAlarmImageList1: TImageList;
    pan_Message: TPanel;
    st_Message: TStaticText;
    btn_AlarmConfirm: TSpeedButton;
    MessageTimer: TTimer;
    ImageList48: TImageList;
    sg_Main: TAdvStringGrid;
    sg_ECU: TAdvStringGrid;
    Panel5: TPanel;
    Panel15: TPanel;
    Splitter7: TSplitter;
    pan_monitor: TPanel;
    PageControl2: TPageControl;
    BuildingTab: TTabSheet;
    Panel12: TPanel;
    Panel14: TPanel;
    GroupBox6: TGroupBox;
    Shader6: TShader;
    DoorListView: TListView;
    Pan_Remark1: TPanel;
    sg_Access: TAdvStringGrid;
    pan_LargeIntro: TPanel;
    Image4: TImage;
    Image5: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    PopupMenu_Door: TPopupMenu;
    pm_modechange: TMenuItem;
    pm_OpenMode: TMenuItem;
    pm_OperateMode: TMenuItem;
    pm_CloseMode: TMenuItem;
    pm_StateCheck: TMenuItem;
    pm_DoorOpen: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N8: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu_Node: TPopupMenu;
    mn_pingTest: TMenuItem;
    N11: TMenuItem;
    mn_TimeSync: TMenuItem;
    PopupMenu_Device: TPopupMenu;
    mn_AllCardDownload: TMenuItem;
    MenuItem11: TMenuItem;
    mn_DeviceReset: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SocketWatchTimerTimer(Sender: TObject);
    procedure CommandArrayCommandsTCommand0Execute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandsTCommand1Execute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandsTCommand2Execute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandsTCommand3Execute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandsTCommand4Execute(Command: TCommand;
      Params: TStringList);
    procedure Action_ReloadExecute(Sender: TObject);
    procedure sg_AccessKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CommandArrayCommandsTCommand5Execute(Command: TCommand;
      Params: TStringList);
    procedure FormShow(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure pan_deviceResize(Sender: TObject);
    procedure Panel12Resize(Sender: TObject);
    procedure Panel15Resize(Sender: TObject);
    procedure Panel14Resize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sg_AccessColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure sg_AlarmColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure CommandArrayCommandsTFIRERECOVERExecute(Command: TCommand;
      Params: TStringList);
    procedure FormResize(Sender: TObject);
    procedure MessageTimerTimer(Sender: TObject);
    procedure btn_AlarmConfirmClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure sg_MainDblClick(Sender: TObject);
    procedure DoorListViewMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure mi_BuildingBigIconClick(Sender: TObject);
    procedure mi_BuildingSmallIconClick(Sender: TObject);
    procedure pm_OpenModeClick(Sender: TObject);
    procedure pm_OperateModeClick(Sender: TObject);
    procedure pm_CloseModeClick(Sender: TObject);
    procedure pm_StateCheckClick(Sender: TObject);
    procedure pm_DoorOpenClick(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure sg_MainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sg_ECUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mn_pingTestClick(Sender: TObject);
    procedure mn_TimeSyncClick(Sender: TObject);
    procedure mn_AllCardDownloadClick(Sender: TObject);
    procedure mn_DeviceResetClick(Sender: TObject);
    procedure DoorListViewDblClick(Sender: TObject);
  private
    L_bFirst : Boolean;
    L_bClose : Boolean;

    BuildingAlarmList : TStringList;     //빌딩코드 별 알람기기 목록
    AlarmBuildingcodeList : TStringList; //해당 알람기기가 어느 빌딩코드에 속하는지


    procedure CenterPanel;
  public
    DeviceCodeList : TStringList; // 기기코드를 가지고 있다. (N:노드(3자리),E:ECU(9자리))
    DeviceCaptionList : TStringList; //기기명을 가지고 있다.
    DeviceLastTimeList : TStringList; //마지막 접속시간을 가지고 있다.
    DoorCodeList : TStringList;   // Door코드를 가지고 있다
    intDoorCodeList : TStringList;   // Door코드를 가지고 있다
    DoorLocateList : TStringList; // Door의 위치정보를 가지고 있다. (000000000위치정보)
    AlarmCodeList : TStringList;  //방범 코드를 가지고 있다.
    intAlarmCodeList : TStringList;  //방범 코드를 가지고 있다.
    AlarmNoList : TStringList;
    SensorCodeList : TStringList;  //센서 코드를 가지고 있다.
    AlarmLocateList : TStringList; //방범기기의 위치정보를 가지고 있다. (000000000위치정보)
    FoodCodeList : TStringList;   //식수 코드를 가지고 있다.
    FoodCodeNameList : TStringList; //식수명을 가지고 있다.
    FoodLocateList : TStringList;  //식수기기의 위치정보를 가지고 있다.(000000000위치정보)
    CompanyCodeList : TStringList; //회사코드를 가지고 있다.
    CompanyNameList : TStringList; //회사명칭을 가지고 있다.
    JijumCodeList : TStringList; //지점코드를 가지고 있다.
    JijumNameList : TStringList; //지점명칭을 가지고 있다.
    DepartCodeList : TStringList; //부서코드를 가지고 있다.
    DepartNameList : TStringList; //부서명칭을 가지고 있다.
    LocationMapList : TStringList; //LocationMap을 가지고 있다.

    DoorIndexArray: Array of integer; //출입문 리스트 순서 배열
    relDoorIndexArray:Array of integer; //실제 위치
    IntDoorIndexArray:Array of integer; //통합 출입문 리스트 순서 배열
    relIntDoorIndexArray:Array of integer; //통합 출입문 실제 위치

    AlarmIndexArray: Array of integer; //알람 리스트 순서 배열
    relAlarmIndexArray:Array of integer; //실제 위치
    IntAlarmIndexArray:Array of integer; //통합 알람 리스트 순서 배열
    relIntAlarmIndexArray:Array of integer; //통합 알람 실제 위치
    
  private
    { Private declarations }

    procedure DisConnectAlarm(aAlarmID:string);
    procedure RcvCardReadData(aNodeNo,aReceiveData:string); //카드리딩 데이터 처리
    Function GetBuildingName(aBuildingCode:string):string;
    Function GetFloorName(aBuildingCode,aFloorCode:string):string;
    Function GetAreaName(aBuildingCode,aFloorCode,aAreaCode:string):string;
    Function GetPermitState(aPermit:string):string;
    Function GetUserInfo(aCardNo:string; var stUserName,stCompanyName,stJijumName,stDepartName,stEmID:string):Boolean;
    procedure LoadCompanyCode;
    procedure LoadJijumCode;
    procedure LoadDepartCode;
    procedure InsertDOORList(aPermitCode,aPermit,aTime,aLocationName,aDoorName,aCardNo,aUserName,
    aCompanyName,aJijumName,aDepartName,aEmID,aDoorID:string;List:TAdvStringGrid);
    procedure   InsertAlarmList(aTime, //시간
                  aLocateName, //위치정보
                  aAlarmName, //경계구역명칭
                  aDeviceID,  //주장치번호[메시지번호]
                  aDeviceType,         //발생기기[번호]
                  aStatusCode,  //이벤트코드
                  aStatusName,
                  aAlaramCode:string;
                  aAlarmSound:Boolean;
                  List:TAdvStringGrid);  //이벤트 내용
    procedure Insertsg_SensorList(aTime,aNodeNo,aECUID,aPortNo,aDeviceType,aStatusCode,aStatusName,aPortName:string;List:TAdvStringGrid);

    Function GetStatusCode(aStatusCode:string;var aStatusName :string;aAlarmSound:integer) : integer;
    procedure ClearEmpInfo;
    Function UPDATETB_USERCONFIG(aConfigGroup,aConfigID,aValue : string):Boolean;
    Function InsertTB_USERCONFIG(aConfigGroup,aConfigID,aValue : string):Boolean;
    procedure Form_Initialize;

    Function updateTB_ZONEDEVICEState(aAlarmNo,aZoneNum,aState:string):Boolean;
    procedure DisplaySensorState(aNodeNo,aECUID,aPortNo,aMode,aSubCLass,aStatusCode:string;bZoneSensor:Boolean);
    function CheckSchedule(aNodeNo, aECUID,aPortNo:string):Boolean;
    function GetPortName(aNodeNo,aECUID,aPortNo:string):String;

    procedure ACDataProcess(aNodeNo,aECUID,aData:string); //출입데이터
    procedure AlarmDataProcess(aNodeNo,aEcuID,aType,aACTION,aData:string);
    procedure SearchAlarmList;
    
  private
    procedure GridSetting;
    procedure ChangeDoorIndex(FromIndex,ToIndex:integer);
    procedure ChangeAlarmIndex(FromIndex,ToIndex:integer);

    procedure sg_AccessHeaderNameSet;
  private
    L_stSelectNodeNo : string;
    L_stSelectBuildingCode : string;
    procedure LoadingNode;
    procedure LoadingEcu(aNodeNo,aNodeName:string);
    procedure LoadingDoor;
  public
    { Public declarations }
    bLocationMapShow : Boolean;
    bDeviceMapShow : Boolean;
    procedure ShowMessage(aMessage:string);
    procedure NodeConnectState(NodeNo:integer;aConnectState:TNodeCurrentState);
    procedure DeviceConnected(NodeNo:integer;aEcuID:string;aConnected:Boolean);
    procedure AccessEventProcess(NodeNo:integer;
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton :string);
    procedure DoorFireStateChange(NodeNo:integer;
          aEcuID, aDoorNo:string; aFireState:Boolean);
    procedure DoorStateChange(NodeNo : integer;aEcuID,aDoorNo:string;
                                  aDoorManageType:TDoorManageMode;
                                  aDoorPNType:TDoorPNMode;
                                  aDoorStateType:TDoorState;
                                  aDoorLockType:TDoorLockState);
    procedure ExitButtonPress(NodeNo : integer;aEcuID,aDoorNo,aTime,aInputType,aUserName,aPermitCode,aPermit:string);
  end;

var
  fmAccessTypeMonitoring: TfmAccessTypeMonitoring;


implementation

uses
  uLomosUtil,
  uLocationMap,
  uDeviceMap,
  uDeviceInfo,
  uZonePosition, uMDBSql, uPostGreSql, uMssql, uAlarmSet, uAlarmHistory,
  uFireBird,
  UCommonModule,
  uMonitoringCommonVariable,
  uDeviceState,
  uAlarmConfirm;
{$R *.dfm}




procedure TfmAccessTypeMonitoring.FormCreate(Sender: TObject);
begin
  BuildingAlarmList := TStringList.Create;     //빌딩코드 별 알람기기 목록
  AlarmBuildingcodeList := TStringList.Create; //해당 알람기기가 어느 빌딩코드에 속하는지
  DeviceCodeList := TStringList.Create;
  DeviceCaptionList := TStringList.Create;
  DeviceLastTimeList := TStringList.Create;
  DoorCodeList := TStringList.Create;
  intDoorCodeList := TStringList.Create;
  DoorLocateList := TStringList.Create;
  AlarmCodeList := TStringList.Create;
  intAlarmCodeList := TStringList.Create;
  AlarmNoList := TStringList.Create;
  AlarmLocateList := TStringList.Create;
  SensorCodeList := TStringList.Create;
  FoodCodeList := TStringList.Create;
  FoodCodeNameList := TStringList.Create;
  FoodLocateList := TStringList.Create;
  CompanyCodeList := TStringList.Create;
  CompanyNameList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  JijumNameList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  DepartNameList := TStringList.Create;
  LocationMapList := TStringList.Create;
  LocationMapList.Clear;

  SetLength(DoorIndexArray,sg_Access.ColCount);
  SetLength(relDoorIndexArray,sg_Access.ColCount);

  L_bFirst := True;
  L_bClose := False;

  Action_ReLoadExecute(self);

  LoadCompanyCode;
  LoadJijumCode;
  LoadDepartCode;

  {
  sg_Main.AddImageIdx(0,1,1,haLeft,vaCenter);
  sg_Main.Cells[0,1] := LeftSpace + 'TEST';
  }
end;

procedure TfmAccessTypeMonitoring.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  ini_fun : TiniFile;
begin
  L_bClose := True;

  self.FindSubForm('Main').FindCommand('AccessTypeMonitor').Params.Values['VALUE'] := 'FALSE';
  self.FindSubForm('Main').FindCommand('AccessTypeMonitor').Execute;
  DeviceCodeList.Free;
  DeviceCaptionList.Free;
  DeviceLastTimeList.Free;
  DoorCodeList.Free;
  intDoorCodeList.Free;
  DoorLocateList.Free;
  AlarmCodeList.Free;
  intAlarmCodeList.Free;
  AlarmNoList.Free;
  AlarmLocateList.Free;
  SensorCodeList.Free;
  FoodCodeList.Free;
  FoodCodeNameList.Free;
  FoodLocateList.Free;
  CompanyCodeList.Free;
  CompanyNameList.Free;
  JijumCodeList.Free;
  JijumNameList.Free;
  DepartCodeList.Free;
  DepartNameList.Free;
  LocationMapList.Free;
  BuildingAlarmList.Free;
  AlarmBuildingcodeList.Free;

  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  ini_fun.WriteInteger('AccessTypeMonitoring','DeviceWidth',pan_device.Width);
  ini_fun.WriteInteger('AccessTypeMonitoring','monitorHeight',pan_monitor.Height);
  ini_fun.WriteInteger('AccessTypeMonitoring','AccessHeight',sg_Access.Height);
  if DoorListView.ViewStyle = vsIcon then ini_fun.WriteString('AccessTypeMonitoring','DoorListView','vsIcon')
  else ini_fun.WriteString('AccessTypeMonitoring','DoorListView','vsList');

  ini_fun.Free;


  Action := caFree;

end;


procedure TfmAccessTypeMonitoring.SocketWatchTimerTimer(Sender: TObject);
var
  i : integer;
  dtLastTime : TDatetime;
  dtTimeOut : TDatetime;
  stNodeNo : string;
begin
// 소켓의 마지막 접속시간을 계산하자.
  for i:= 1 to DeviceLastTimeList.Count - 1 do
  begin
    dtLastTime := strToDateTime(DeviceLastTimeList.Strings[i]);
    dtTimeOut:= IncTime(dtLastTime,0,0,15,0);
    if Now > dtTimeOut then
    begin
      // 여기에서 해당 노드의 이미지를 변경해 주자.
      stNodeNo := DeviceCodeList.Strings[i];
//      else if stNodeNo[1] = 'E' then
//        DisConnectECU(stNodeNo);
    end;
  end;

end;




procedure TfmAccessTypeMonitoring.CommandArrayCommandsTCommand0Execute(
  Command: TCommand; Params: TStringList);
var
  stReceiveData: string;
  stNodeNo,stECUID,stDoorNo,stReaderNo : string;
  aCommand : char;
  MSG_Code: Char;
  stDevice : string; //S:서버,E:ECU,D:Door,
  stTYPE : string;
  stACTION : string;
  nLength : integer;
  stData : string;
begin
  stReceiveData := Params.Values['Data'];
  ShowMessage(stReceiveData);

end;



procedure TfmAccessTypeMonitoring.CommandArrayCommandsTCommand1Execute(
  Command: TCommand; Params: TStringList);
var
  stCmd: string;
  i : integer;
begin
  stCmd := Params.Values['Data'];

  for i:=0 to DoorCodeList.Count - 1 do
  begin
    if stCmd = 'OPENMODE' then  //전체개방
    begin
      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPENMODE'+ DATADELIMITER + DoorCodeList.Strings[i] + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      Delay(100);
    end else if stCmd = 'OPERATEMODE' then  //전체운영
    begin
      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPERATEMODE'+ DATADELIMITER + DoorCodeList.Strings[i] + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      Delay(100);
    end;
  end;


end;


procedure TfmAccessTypeMonitoring.CommandArrayCommandsTCommand2Execute(
  Command: TCommand; Params: TStringList);
begin
  Close;
end;

procedure TfmAccessTypeMonitoring.CommandArrayCommandsTCommand3Execute(
  Command: TCommand; Params: TStringList);
var
  stCmd: string;
  i : integer;
begin
  stCmd := Params.Values['Data'];

  //경계는 사용 안함
end;

procedure TfmAccessTypeMonitoring.RcvCardReadData(aNodeNo, aReceiveData: string);
begin

end;


function TfmAccessTypeMonitoring.GetAreaName(aBuildingCode, aFloorCode,
  aAreaCode: string): string;
var
  stSql : string;
begin
  Result := '';

  stSql := ' select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''2'' ';

  with DataModule1.ADOTmpQuery do
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
    Result :=  FindField('LO_NAME').AsString;
  end;
end;

function TfmAccessTypeMonitoring.GetBuildingName(aBuildingCode: string): string;
var
  stSql : string;
begin
  Result := '';

  stSql := ' select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';

  with DataModule1.ADOTmpQuery do
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
    Result :=  FindField('LO_NAME').AsString;
  end;
end;

function TfmAccessTypeMonitoring.GetFloorName(aBuildingCode,
  aFloorCode: string): string;
var
  stSql : string;
begin
  Result := '';

  stSql := ' select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''1'' ';

  with DataModule1.ADOTmpQuery do
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
    Result :=  FindField('LO_NAME').AsString;
  end;
end;

function TfmAccessTypeMonitoring.GetPermitState(aPermit: string): string;
var
  stSql : string;
begin
  Result := '미등록코드';
  stSql := ' Select * from TB_PERMITCODE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND PE_PERMITCODE = ''' + aPermit + ''' ';

  with DataModule1.ADOTmpQuery do
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

    Result := FindField('PE_PERMITNAME').AsString;
  end;
end;

function TfmAccessTypeMonitoring.GetUserInfo(aCardNo: string; var stUserName,
  stCompanyName, stJijumName,stDepartName, stEmID: string): Boolean;
var
  stSql : string;
  nIndex : integer;
begin
  Result := False;
  stUserName := '';
  stCompanyName := '';
  stJijumName := '';
  stDepartName := '';
  stEmID := '';

  stSql := ' select b.EM_NAME,b.CO_COMPANYCODE,b.CO_JIJUMCODE,b.CO_DEPARTCODE,b.PO_POSICODE,b.EM_CODE from TB_CARD a ';
  stSql := stSql + ' Left Join TB_EMPLOYEE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE) ';
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.CA_CARDNO = ''' + aCardNo + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      Exit;
    End;

    if Recordcount < 1 then Exit;
    stUserName := FindField('EM_NAME').AsString ;
    nIndex := CompanyCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString);
    if nIndex > -1 then
      stCompanyName := CompanyNameList.Strings[nIndex] ;
    nIndex := JijumCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString);
    if nIndex > -1 then
      stJijumName := JijumNameList.Strings[nIndex] ;
    nIndex := DepartCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString + FindField('CO_DEPARTCODE').AsString);
    if nIndex > -1 then
      stDepartName := DepartNameList.Strings[nIndex] ;
    stEmID := FindField('EM_CODE').AsString ;
  end;

  Result := True;
end;

procedure TfmAccessTypeMonitoring.LoadCompanyCode;
var
  stSql : string;
begin
  if L_bClose then Exit;
  CompanyCodeList.Clear;
  CompanyNameList.Clear;

  stSql := ' select * from TB_COMPANY ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''1'' ';

  with DataModule1.ADOTmpQuery do
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
    First;
    While Not Eof do
    begin
      CompanyCodeList.Add(FindField('CO_COMPANYCODE').AsString);
      CompanyNameList.Add(FindField('CO_NAME').AsString);
      Next;
    end;

  end;
end;

procedure TfmAccessTypeMonitoring.LoadDepartCode;
var
  stSql : string;
begin
  if L_bClose then Exit;
  DepartCodeList.Clear;
  DepartNameList.Clear;

  stSql := ' select * from TB_COMPANY ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''3'' ';

  with DataModule1.ADOTmpQuery do
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
    First;
    While Not Eof do
    begin
      DepartCodeList.Add(FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString + FindField('CO_DEPARTCODE').AsString );
      DepartNameList.Add(FindField('CO_NAME').AsString);
      Next;
    end;

  end;
end;

procedure TfmAccessTypeMonitoring.CommandArrayCommandsTCommand4Execute(
  Command: TCommand; Params: TStringList);
begin
  Action_ReloadExecute(Self);
end;

procedure TfmAccessTypeMonitoring.InsertDOORList(aPermitCode,aPermit, aTime, aLocationName,
  aDoorName, aCardNo, aUserName, aCompanyName, aJijumName,aDepartName, aEmID,aDoorID: string;List:TAdvStringGrid);
var
  nCol: integer;
begin

  with List do
  begin
    //ColWidths[10] := 0;  //상태코드
    if List.Name = 'sg_Access' then
      if Cells[DoorIndexArray[5],1] <> '' then   InsertRows(1,1);

    if List.RowCount >= MAX_LISTCOUNT then
    begin
      List.RemoveRows(List.RowCount-1,1);
    end;
    List.SelectedCells[1,1];
    if Not Isdigit(aPermitCode) then
    begin
      RowColor[1] := clFuchsia;
    end;
    Cells[DoorIndexArray[0],1] := MakeDatetimeStr(aTime);   //발생시간
    Cells[DoorIndexArray[1],1] := aLocationName; // copy(aLocationName,10,length(aLocationName)-9); //위치
    Cells[DoorIndexArray[2],1] := aDoorName; //출입문
    Cells[DoorIndexArray[3],1] := aPermitCode; //승인상태 코드
    Cells[DoorIndexArray[4],1] := aPermit; //승인상태
    Cells[DoorIndexArray[5],1] := aCardNo; //카드번호
    Cells[DoorIndexArray[6],1] := aUserName; //이름
    Cells[DoorIndexArray[7],1] := aCompanyName ; //회사명
    Cells[DoorIndexArray[8],1] := aJijumName ; //부서명
    Cells[DoorIndexArray[9],1] := aDepartName ; //부서명
    Cells[DoorIndexArray[10],1] := aEmID; //사번
    Cells[DoorIndexArray[11],1] := aDoorID; //사번
  end;

end;

function TfmAccessTypeMonitoring.GetStatusCode(aStatusCode: string;
  var aStatusName: string;aAlarmSound:integer): integer;
var
  stSql : string;
begin
  Result:= -1;
  aStatusName := '';
  aAlarmSound := 0;

  stSql := 'select * from TB_ALARMSTATUSCODE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND  AL_ALARMSTATUSCODE = ''' + aStatusCode + ''' ';

  with DataModule1.ADOTmpQuery do
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
    aStatusName := FindField('AL_ALARMNAME').AsString ;
    if FindField('AL_ALARMVIEW').AsInteger > 0 then Result := 1
    else Result := 0;
    if FindField('AL_ALARMSOUND').AsInteger > 0 then aAlarmSound := 1
    else aAlarmSound := 0;
  end;

end;

procedure TfmAccessTypeMonitoring.InsertAlarmList(aTime, aLocateName, aAlarmName,
  aDeviceID, aDeviceType, aStatusCode, aStatusName,aAlaramCode: string;aAlarmSound:Boolean;
  List: TAdvStringGrid);
begin

  with List do
  begin
    //if Cells[0,1] <> '' then   InsertRows(1,1);

    if List.Name = 'sg_Alarm' then
      if Cells[AlarmIndexArray[0],1] <> '' then   InsertRows(1,1);

    if List.RowCount >= MAX_LISTCOUNT then
    begin
      List.RemoveRows(List.RowCount-1,1);
    end;
    List.SelectedCells[1,1];
    if aAlarmSound  then
    begin
      RowColor[1] := clRed;
    end;
    if List.Name = 'sg_Alarm' then
    begin
      Cells[AlarmIndexArray[0],1] := aTime;   //발생시간
      Cells[AlarmIndexArray[1],1] := aLocateName; // copy(aLocateName,10,length(aLocateName)-9); //위치
      Cells[AlarmIndexArray[2],1] := aAlarmName; //경계구역
      Cells[AlarmIndexArray[3],1] := aDeviceID; //주장치번호
      Cells[AlarmIndexArray[4],1] := aDeviceType; //기기번호
      Cells[AlarmIndexArray[5],1] := aStatusCode; //발생코드
      Cells[AlarmIndexArray[6],1] := aStatusName; //이벤트내용
      Cells[AlarmIndexArray[7],1] := aAlaramCode; //AlarmCode
    end;
  end;

end;

procedure TfmAccessTypeMonitoring.Action_ReloadExecute(Sender: TObject);
begin
  LoadingNode;
  LoadingEcu('000','전체');
  LoadingDoor;

  if L_bClose then Exit;
//  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'DEVICEALLSTATE_II'+ DATADELIMITER + '0000000000000' + DATADELIMITER;
//  self.FindSubForm('Main').FindCommand('SendData').Execute;

//  SocketWatchTimer.Enabled := True;
end;


procedure TfmAccessTypeMonitoring.ClearEmpInfo;
begin
end;


procedure TfmAccessTypeMonitoring.sg_AccessKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  st: string;
begin
  if key = 17 then Exit;
  if (Key = 67) and (Shift = [ssCtrl]) 	then
  begin
    with Sender as TAdvStringGrid do
    begin
      if Name = 'sg_Access' then st:= Cells[DoorIndexArray[5],Row];

//      st:= Cells[5,Row];
      if st <> '' then ClipBoard.SetTextBuf(PChar(st));
    end;
  end;

end;

procedure TfmAccessTypeMonitoring.DisConnectAlarm(aAlarmID: string);
begin

end;


procedure TfmAccessTypeMonitoring.CommandArrayCommandsTCommand5Execute(
  Command: TCommand; Params: TStringList);
var
  stValue : string;
  stCmd : string;
  stID : string;
begin
  stCmd := Params.Values['COMMAND'];
  stValue := Params.Values['VALUE'];

  if stCmd = 'LocationMap' then
  begin
    if stValue = 'TRUE' Then
      bLocationMapShow := True
    else
    begin
      bLocationMapShow := False;
      stID := Params.Values['ID'];
      if LocationMapList.IndexOf(stID) > -1 then LocationMapList.Delete(LocationMapList.IndexOf(stID));
    end;
  end
  else if stCmd = 'DeviceMap' then
  begin
    if stValue = 'TRUE' Then
      bDeviceMapShow := True
    else bDeviceMapShow := False;
  end;

//
end;

procedure TfmAccessTypeMonitoring.FormShow(Sender: TObject);
var
  ini_fun : TiniFile;
  stValue : string;
begin
  if UseStateShow then
  begin
  //  IntDoorListView.LargeImages := stateShowImageList;
  end;


  bLocationMapShow := False;
  bDeviceMapShow := False;

  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');

  pan_device.Width := ini_fun.ReadInteger('AccessTypeMonitoring','DeviceWidth',217);
  PageControl2.ActivePage := BuildingTab;
  pan_monitor.Height := ini_fun.ReadInteger('AccessTypeMonitoring','monitorHeight',273);
  sg_Access.Height := ini_fun.ReadInteger('AccessTypeMonitoring','AccessHeight',144);

  stValue := ini_fun.ReadString('AccessTypeMonitoring','DoorListView','vsIcon');
  if UpperCase(stValue) = 'VSICON' then
  begin
    DoorListView.ViewStyle := vsIcon ;
  end else
  begin
    DoorListView.ViewStyle := vsIcon;
    DoorListView.Refresh;
    DoorListView.ViewStyle := vsList;
  end;


  ini_fun.Free;

  sg_AccessHeaderNameSet;

  sg_Access.ColWidths[3] := 0;
  sg_Access.ColWidths[11] := 0;

  Form_Initialize;
  GridSetting; //그리드를 사용자 환경에 맞게 셋팅함

  Application.ProcessMessages;

end;

procedure TfmAccessTypeMonitoring.N12Click(Sender: TObject);
var
  stAlarmID : string;
  stAlarmName : string;
  stLocateName : string;
begin
{  if IntAlarmListView.SelCount < 1 then Exit;
  stAlarmID := AlarmCodeList[IntAlarmListView.ItemIndex];
  stAlarmName := IntAlarmListView.Items[IntAlarmListView.ItemIndex].Caption;
  stLocateName := AlarmLocateList.Strings[IntAlarmListView.ItemIndex];

  fmDeviceInfo:= TfmDeviceInfo.Create(Self);
  fmDeviceInfo.DeviceID := stAlarmID;
  fmDeviceInfo.DeviceName := stAlarmName;
  fmDeviceInfo.DeviceType := '4';
  fmDeviceInfo.LocateName := copy(stLocateName,10,length(stLocateName) - 9);
  fmDeviceInfo.SHowmodal;
  fmDeviceInfo.Free;
 }
end;

procedure TfmAccessTypeMonitoring.PageControl1Change(Sender: TObject);
begin
  //showmessage(PageControl1.ActivePage.Name);
  UPDATETB_USERCONFIG('KTMONITOR','DEVICETAB',PageControl1.ActivePage.Name)
end;

function TfmAccessTypeMonitoring.UPDATETB_USERCONFIG(aConfigGroup,aConfigID,
  aValue: string): Boolean;
var
  stSql : string;
  nCount : integer;
begin
  result := False;
  stSql := 'Update TB_USERCONFIG Set';
  stSql := stSql + ' US_VALUE =  ''' + aValue + ''' ';
  stSql := stSql + 'Where ';
  stSql := stSql + ' GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AD_USERID = ''' + Master_ID + ''' ';
  stSql := stSql + ' AND US_CONFIGID = ''' + aConfigID + ''' ';
  stSql := stSql + ' AND US_CONFGROUP = ''' + aConfigGroup + ''' ';

  With DataModule1.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      nCount := ExecSql;
    Except
      result := InsertTB_USERCONFIG(aConfigGroup,aConfigID,aValue);
      Exit;
    End;
    if nCount = 0 then
    begin
      result := InsertTB_USERCONFIG(aConfigGroup,aConfigID,aValue);
    end;
    result := True;
  end;

end;

function TfmAccessTypeMonitoring.InsertTB_USERCONFIG(aConfigGroup,aConfigID,
  aValue: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Insert Into TB_USERCONFIG(';
  stSql := stSql + ' GROUP_CODE,AD_USERID,US_CONFGROUP,US_CONFIGID,US_VALUE ';
  stSql := stSql + ') Values ( ';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + '''' + Master_ID + ''',';
  stSql := stSql + '''' + aConfigGroup + ''',';
  stSql := stSql + '''' + aConfigID + ''',';
  stSql := stSql + '''' + aValue + ''' ';
  stSql := stSql + ')';

  With DataModule1.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      ExecSql;
    Except
      Exit;
    End;
    result := True;
  end;
end;

procedure TfmAccessTypeMonitoring.PageControl2Change(Sender: TObject);
begin
  UPDATETB_USERCONFIG('KTMONITOR','WATCHTAB',PageControl2.ActivePage.Name)
end;

procedure TfmAccessTypeMonitoring.pan_deviceResize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('KTMONITOR','DEVICEW',inttostr(pan_device.Width))
end;

procedure TfmAccessTypeMonitoring.Panel12Resize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('KTMONITOR','INTEGH',inttostr(Panel12.Height))
end;

procedure TfmAccessTypeMonitoring.Panel15Resize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('KTMONITOR','INTATH',inttostr(Panel15.Height))
end;

procedure TfmAccessTypeMonitoring.Panel14Resize(Sender: TObject);
begin
  if DoorListView.ViewStyle = vsIcon then
  begin
    DoorListView.ViewStyle := vsList;
    DoorListView.Refresh;
    DoorListView.ViewStyle := vsIcon;
  end else if DoorListView.ViewStyle = vsList then
  begin
    DoorListView.ViewStyle := vsIcon;
    DoorListView.Refresh;
    DoorListView.ViewStyle := vsList;
  end;
end;

procedure TfmAccessTypeMonitoring.Form_Initialize;
var
  stSql : string;
  DeviceTabList : TStringList;
  WacthTabList : TStringList;
  i: integer;
  nIndex : integer;
begin

  stSql := ' select * from TB_USERCONFIG ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AD_USERID = ''' + Master_ID + '''';
  stSql := stSql + ' AND US_CONFGROUP = ''KTMONITOR''';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;

    DeviceTabList := TStringList.Create;
    DeviceTabList.Clear;
    for i:= 0 to PageControl1.PageCount-1 do
    begin
      DeviceTabList.AddObject(PageControl1.Pages[i].Name,
        PageControl1.Pages[i]);
    end;
    WacthTabList := TStringList.Create;
    WacthTabList.Clear;
    for i:= 0 to PageControl2.PageCount-1 do
    begin
      WacthTabList.AddObject(PageControl2.Pages[i].Name,
        PageControl2.Pages[i]);
    end;
    
    First;
    While Not Eof do
    begin
      if FindField('US_CONFIGID').AsString = 'DEVICETAB' then
      begin
        nIndex :=  DeviceTabList.IndexOf(FindField('US_VALUE').AsString);
        if nIndex > -1 then
          PageControl1.ActivePage := TTabSheet(DeviceTabList.Objects[nIndex]) ;
      end else if FindField('US_CONFIGID').AsString = 'WATCHTAB' then
      begin
        nIndex :=  WacthTabList.IndexOf(FindField('US_VALUE').AsString);
        if nIndex > -1 then
          PageControl2.ActivePage := TTabSheet(WacthTabList.Objects[nIndex]) ;
      end else if FindField('US_CONFIGID').AsString = 'DEVICEW' then
      begin
        pan_device.Width := FindField('US_VALUE').AsInteger;
      end else if FindField('US_CONFIGID').AsString = 'INTEGH' then
      begin
        Panel12.Height := FindField('US_VALUE').AsInteger;
      end else if FindField('US_CONFIGID').AsString = 'INTATH' then
      begin
        Panel15.Height := FindField('US_VALUE').AsInteger;
      end else if FindField('US_CONFIGID').AsString = 'INTPTW' then
      begin
        Panel14.Width := FindField('US_VALUE').AsInteger;
      end;
      Next;
    end;
  end;
  DeviceTabList.Free;
  WacthTabList.Free;
end;

function TfmAccessTypeMonitoring.updateTB_ZONEDEVICEState(aAlarmNo, aZoneNum,
  aState: string): Boolean;
var
  stSql : string;
begin
  stSql := ' Update TB_ZONEDEVICE set AL_ZONESTOP = ''' + aState + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(copy(aAlarmNo,1,3))) ;
  stSql := stSql + ' AND AC_ECUID = ''' + copy(aAlarmNo,4,2) + ''' ';
  stSql := stSql + ' AND AL_ZONENUM = ''' + aZoneNum + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmAccessTypeMonitoring.DisplaySensorState(aNodeNo, aECUID,aPortNo, aMode,aSubCLass,
  aStatusCode: string;bZoneSensor:Boolean);
begin


end;

function TfmAccessTypeMonitoring.CheckSchedule(aNodeNo, aECUID,
  aPortNo: string): Boolean;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  result := False;

  stSql := ' select a.* from TB_ZONESCHEDULE a ';
  //stSql := stSql + ' Inner Join TB_ALARMDEVICE b ';
  //stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  //stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  //stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND a.AC_ECUID = ''' + aECUID + '''  ';
  stSql := stSql + ' AND a.AL_ZONENUM = ''' + inttostr(strtoint(aPortNo)) + ''' ';
  stSql := stSql + ' AND a.ZO_STARTTIME <= ''' + FormatDateTime('HHSS',Now) + ''' ';
  stSql := stSql + ' AND a.ZO_ENDTIME >= ''' + FormatDateTime('HHSS',Now) + ''' ';

  CoInitialize(nil);
  TempAdoQuery := TADOQuery.Create(nil);
  TempAdoQuery.Connection := DataModule1.ADOConnection;
  with TempAdoQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      TempAdoQuery.Free;
      CoUninitialize;
      Exit;
    End;
    if recordCount > 0  then result := True;

  end;
  TempAdoQuery.Free;
  CoUninitialize;

end;

function TfmAccessTypeMonitoring.GetPortName(aNodeNo, aECUID,
  aPortNo: string): String;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  result := '' ;

  stSql := 'select a.AL_ZONENAME from TB_ZONEDEVICE a ';
//  stSql := stSql + ' Inner Join TB_ALARMDEVICE b ';
//  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
//  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
//  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';
  stSql := stSql + ' WHERE a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND a.AC_ECUID = ''' + aECUID + '''  ';
  stSql := stSql + ' AND a.AL_ZONENUM = ''' + inttostr(strtoint(aPortNo)) + ''' ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;
    with TempAdoQuery do
    begin
      Close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        TempAdoQuery.Free;
        CoUninitialize;
        Exit;
      End;
      if recordCount > 0  then result := FindField('AL_ZONENAME').AsString;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

procedure TfmAccessTypeMonitoring.Insertsg_SensorList(aTime,aNodeNo, aECUID, aPortNo,
  aDeviceType,aStatusCode, aStatusName, aPortName: string; List: TAdvStringGrid);
var
  stLocateName : string;
begin

  with List do
  begin
    if Cells[0,1] <> '' then   InsertRows(1,1);

    if List.RowCount >= MAX_LISTCOUNT then
    begin
      List.RemoveRows(List.RowCount-1,1);
    end;
    Cells[0,1] := aTime;   //발생시간
    Cells[1,1] := stLocateName;
    Cells[2,1] := aPortName ; //센서명칭
    Cells[3,1] := aECUID; //주장치번호
    Cells[4,1] := aDeviceType; //
    Cells[5,1] := aStatusCode + '/' + aPortNo; //
    Cells[6,1] := aStatusName; //

  end;

end;




procedure TfmAccessTypeMonitoring.AlarmDataProcess(aNodeNo, aEcuID, aType, aACTION,
  aData: string);
begin

end;

procedure TfmAccessTypeMonitoring.ACDataProcess(aNodeNo, aECUID, aData: string);
begin
  RcvCardReadData(aNodeNo,aData);
end;

procedure TfmAccessTypeMonitoring.FormActivate(Sender: TObject);
begin
  if L_bFirst then
  begin
    L_bFirst := False;
    self.FindSubForm('Main').FindCommand('AccessTypeMonitor').Params.Values['VALUE'] := 'TRUE';
    self.FindSubForm('Main').FindCommand('AccessTypeMonitor').Execute;
    if ALARMVIEW = 'QUERY' then
    begin
      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'ALARMREFRESH'+ DATADELIMITER + '00000' + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      //SearchAlarmList;
    end;
  end;

  Pan_Remark1.Visible := G_bACIntroView;

  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;
end;

procedure TfmAccessTypeMonitoring.SearchAlarmList;

begin

end;

procedure TfmAccessTypeMonitoring.sg_AccessColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    ChangeDoorIndex(FromIndex,ToIndex);
end;

procedure TfmAccessTypeMonitoring.GridSetting;
var
  i : integer;
begin
  for i:=0 to sg_Access.ColCount - 1 do
  begin
    DoorIndexArray[i] := i;
    relDoorIndexArray[i] := i;
  end;


end;

procedure TfmAccessTypeMonitoring.ChangeDoorIndex(FromIndex, ToIndex: integer);
var
  i : integer;
  nChangData : integer;
begin
  nChangData := relDoorIndexArray[FromIndex];
  if FromIndex > ToIndex then   //뒤에 있는 놈이 앞으로 오는 경우
  begin
    for i := FromIndex downto ToIndex + 1 do
    begin
      relDoorIndexArray[i] := relDoorIndexArray[i - 1];
    end;
    relDoorIndexArray[ToIndex] := nChangData;
  end else   //앞에 있는 놈이 뒤로 가는 경우
  begin
    for i := FromIndex to ToIndex - 1 do
    begin
      relDoorIndexArray[i] := relDoorIndexArray[i + 1];
    end;
    relDoorIndexArray[ToIndex] := nChangData;
  end;

  for i := LOW(relDoorIndexArray) to HIGH(relDoorIndexArray) do
  begin
    DoorIndexArray[relDoorIndexArray[i]] := i;
  end;

end;

procedure TfmAccessTypeMonitoring.ChangeAlarmIndex(FromIndex, ToIndex: integer);
var
  i : integer;
  nChangData : integer;
begin
  nChangData := relAlarmIndexArray[FromIndex];
  if FromIndex > ToIndex then   //뒤에 있는 놈이 앞으로 오는 경우
  begin
    for i := FromIndex downto ToIndex + 1 do
    begin
      relAlarmIndexArray[i] := relAlarmIndexArray[i - 1];
    end;
    relAlarmIndexArray[ToIndex] := nChangData;
  end else   //앞에 있는 놈이 뒤로 가는 경우
  begin
    for i := FromIndex to ToIndex - 1 do
    begin
      relAlarmIndexArray[i] := relAlarmIndexArray[i + 1];
    end;
    relAlarmIndexArray[ToIndex] := nChangData;
  end;

  for i := LOW(relAlarmIndexArray) to HIGH(relAlarmIndexArray) do
  begin
    AlarmIndexArray[relAlarmIndexArray[i]] := i;
  end;

end;


procedure TfmAccessTypeMonitoring.sg_AlarmColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    ChangeAlarmIndex(FromIndex,ToIndex);

end;

procedure TfmAccessTypeMonitoring.sg_AccessHeaderNameSet;
begin
  with sg_Access do
  begin
    cells[0,0] := '발생일자';
    cells[1,0] := '위치';
    cells[2,0] := '출입문명';
    cells[3,0] := '승인코드';
    cells[4,0] := '승인상태';
    cells[5,0] := '카드번호';
    cells[6,0] := '출입자명';
    cells[7,0] := FM002;
    cells[8,0] := FM012;
    cells[9,0] := FM022;
    cells[10,0] := FM101;
  end;
end;

procedure TfmAccessTypeMonitoring.ShowMessage(aMessage: string);
begin

end;

procedure TfmAccessTypeMonitoring.LoadJijumCode;
var
  stSql : string;
begin
  if L_bClose then Exit;
  JijumCodeList.Clear;
  JijumNameList.Clear;

  stSql := ' select * from TB_COMPANY ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_GUBUN = ''2'' ';

  with DataModule1.ADOTmpQuery do
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
    First;
    While Not Eof do
    begin
      JijumCodeList.Add(FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString );
      JijumNameList.Add(FindField('CO_NAME').AsString);
      Next;
    end;

  end;
end;


procedure TfmAccessTypeMonitoring.CommandArrayCommandsTFIRERECOVERExecute(
  Command: TCommand; Params: TStringList);
var
  i : integer;
begin
  for i:=0 to DeviceCodeList.Count - 1 do
  begin
    if DeviceCodeList.Strings[i][1] = 'N' then
    begin
      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'FIRERECOVERY'+ DATADELIMITER + copy(DeviceCodeList.Strings[i],2,3) + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      Delay(100);
    end;
  end;
end;

procedure TfmAccessTypeMonitoring.CenterPanel;
var
  nTotW,nTotH,nPanW,nPanH:integer;
  nTop,nLeft : integer;
  nStartH,nStartW : integer;
begin
  nStartH := 0;
  nStartW := 0;
  nTotW := Width;
  nTotH := Height;
  nPanW := pan_Message.Width;
  nPanH := pan_Message.Height;
  nTop := nStartH + (nTotH div 2) - (nPanH div 2);
  nLeft := nStartW + (nTotW div 2) - (nPanW div 2);
  pan_Message.Top := nTop;
  pan_Message.Left := nLeft;

end;

procedure TfmAccessTypeMonitoring.FormResize(Sender: TObject);
begin
  CenterPanel;

end;

procedure TfmAccessTypeMonitoring.MessageTimerTimer(Sender: TObject);
begin
  pan_Message.Visible := Not pan_Message.Visible;
end;

procedure TfmAccessTypeMonitoring.btn_AlarmConfirmClick(Sender: TObject);
begin
  MessageTimer.Enabled := False;
  pan_Message.visible := False;

end;

procedure TfmAccessTypeMonitoring.N8Click(Sender: TObject);
begin
  DoorListView.ViewStyle := vsIcon;
  DoorListView.Refresh;
end;

procedure TfmAccessTypeMonitoring.N17Click(Sender: TObject);
begin
  DoorListView.ViewStyle := vsList;
  DoorListView.Refresh;

end;

procedure TfmAccessTypeMonitoring.LoadingEcu(aNodeNo,aNodeName: string);
var
  stSql : string;
  i : integer;
  nIndex : integer;
  nNodeIndex : integer;
  stNodeIP : string;
begin
  L_stSelectNodeNo := FillZeroNumber(strtoint(aNodeNo),3);
  tbDEVICE.Caption := aNodeName;
  with sg_ECU do
  begin
    if aNodeNo = '000' then //전체
    begin
      rowCount := DeviceStateList.count + 1;
      for i := 0 to DeviceStateList.count - 1 do
      begin
        if TDeviceState(DeviceStateList.Objects[i]).Connected then
        begin
          AddImageIdx(0,i + 1,DeviceConnectImageIndex,haLeft,vaCenter);
        end else
        begin
          AddImageIdx(0,i + 1,DeviceDisConnectImageIndex,haLeft,vaCenter);
        end;
        nNodeIndex := NodeList.IndexOf(FillZeroNumber(TDeviceState(DeviceStateList.Objects[i]).NodeNo,3));
        if nNodeIndex > -1 then
        begin
          Cells[0,i + 1] := LeftSpace + TNodeState(NodeList.Objects[nNodeIndex]).NodeIP;
        end;
        Cells[1,i + 1] := TDeviceState(DeviceStateList.Objects[i]).ECUID;
        Cells[2,i + 1] := TDeviceState(DeviceStateList.Objects[i]).DeviceName;
        Cells[3,i + 1] := inttostr(TDeviceState(DeviceStateList.Objects[i]).NodeNo);
      end;
    end else
    begin
      nNodeIndex := NodeList.IndexOf(FillZeroNumber(strtoint(aNodeNo),3));
      if nNodeIndex < 0 then Exit;
      rowCount := TNodeState(NodeList.Objects[nNodeIndex]).NodeDeviceList.Count + 1;
      stNodeIP := TNodeState(NodeList.Objects[nNodeIndex]).NodeIP;
      for i := 0 to TNodeState(NodeList.Objects[nNodeIndex]).NodeDeviceList.Count - 1 do
      begin
        nIndex := DeviceStateList.IndexOf(TNodeState(NodeList.Objects[nNodeIndex]).NodeDeviceList.Strings[i]);
        if nIndex < 0 then continue;
        if TDeviceState(DeviceStateList.Objects[nIndex]).Connected then
        begin
          AddImageIdx(0,i + 1,DeviceConnectImageIndex,haLeft,vaCenter);
        end else
        begin
          AddImageIdx(0,i + 1,DeviceDisConnectImageIndex,haLeft,vaCenter);
        end;
        Cells[0,i + 1] := LeftSpace + stNodeIP;
        Cells[1,i + 1] := TDeviceState(DeviceStateList.Objects[nIndex]).ECUID;
        Cells[2,i + 1] := TDeviceState(DeviceStateList.Objects[nIndex]).DeviceName;
        Cells[3,i + 1] := inttostr(TDeviceState(DeviceStateList.Objects[nIndex]).NodeNo);

      end;
    end;
    refresh;
  end;
end;

procedure TfmAccessTypeMonitoring.LoadingNode;
var
  i : integer;
begin
  with sg_Main do
  begin
    RowCount := NodeList.Count + 1;
    for i := 0 to NodeList.Count - 1 do
    begin
      if TNodeState(NodeList.Objects[i]).NodeCurrentState = nsDisConnected then
      begin
        AddImageIdx(0,i + 1,NodeDisConnectImageIndex,haLeft,vaCenter);
      end else if TNodeState(NodeList.Objects[i]).NodeCurrentState = nsFault then
      begin
        AddImageIdx(0,i + 1,NodeFaultConnectImageIndex,haLeft,vaCenter);
      end else if TNodeState(NodeList.Objects[i]).NodeCurrentState = nsConnected then
      begin
        AddImageIdx(0,i + 1,NodeConnectImageIndex,haLeft,vaCenter);
      end;
      Cells[0,i + 1] := LeftSpace + TNodeState(NodeList.Objects[i]).NodeName;
      Cells[1,i + 1] := TNodeState(NodeList.Objects[i]).NodeIP;
      Cells[2,i + 1] := inttostr(TNodeState(NodeList.Objects[i]).NODENO);
    end;
    Refresh;
  end;
end;

procedure TfmAccessTypeMonitoring.sg_MainDblClick(Sender: TObject);
var
  stMainName : string;
begin
  PageControl1.ActivePageIndex := 1;
  with sg_Main do
  begin
    stMainName := Cells[0,Row];
    delete(stMainName,1,length(LeftSpace));
    LoadingEcu(cells[2,Row],stMainName);
  end;
end;

procedure TfmAccessTypeMonitoring.DoorListViewMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DoorListView.Items[DoorListView.ItemIndex].Selected := True;

end;

procedure TfmAccessTypeMonitoring.mi_BuildingBigIconClick(Sender: TObject);
begin
  DoorListView.ViewStyle := vsIcon;
end;

procedure TfmAccessTypeMonitoring.mi_BuildingSmallIconClick(
  Sender: TObject);
begin
  DoorListView.ViewStyle := vsList;

end;

procedure TfmAccessTypeMonitoring.DeviceConnected(NodeNo: integer;
  aEcuID: string;aConnected:Boolean);
var
  nDeviceIndex : integer;
  nNodeIndex : integer;
  stDeviceID : string;
begin
  stDeviceID := FillZeroNumber(NodeNo,3) + aEcuID;
  with sg_Ecu do
  begin
    if L_stSelectNodeNo = '000' then
    begin
      nDeviceIndex :=DeviceStateList.IndexOf(stDeviceID);
      if nDeviceIndex > -1 then
      begin
        RemoveImageIdx(0,nDeviceIndex + 1);
        if aConnected then
          AddImageIdx(0,nDeviceIndex + 1,DeviceConnectImageIndex,haLeft,vaCenter)
        else AddImageIdx(0,nDeviceIndex + 1,DeviceDisConnectImageIndex,haLeft,vaCenter);
      end;
    end else
    begin
      if L_stSelectNodeNo <> FillZeroNumber(NodeNo,3) then Exit; //현재 선택된 노드가 아니면 필요 없음
      nNodeIndex := NodeList.IndexOf(FillZeroNumber(NodeNo,3));
      if nNodeIndex < 0 then Exit;
      nDeviceIndex := TNodeState(NodeList.Objects[nNodeIndex]).NodeDeviceList.IndexOf(stDeviceID);
      if nDeviceIndex > -1 then
      begin
        RemoveImageIdx(0,nDeviceIndex + 1);
        if aConnected then
          AddImageIdx(0,nDeviceIndex + 1,DeviceConnectImageIndex,haLeft,vaCenter)
        else AddImageIdx(0,nDeviceIndex + 1,DeviceDisConnectImageIndex,haLeft,vaCenter);
      end;
    end;
    refresh;
  end;
end;

procedure TfmAccessTypeMonitoring.NodeConnectState(NodeNo: integer;
  aConnectState: TNodeCurrentState);
var
  nNodeIndex : integer;
begin
  nNodeIndex := NodeList.IndexOf(FillZeroNumber(NodeNo,3));
  if nNodeIndex < 0 then Exit;

  with sg_Main do
  begin
    RemoveImageIdx(0,nNodeIndex + 1);
    if aConnectState = nsDisConnected then
      AddImageIdx(0,nNodeIndex + 1,NodeDisConnectImageIndex,haLeft,vaCenter)
    else if aConnectState = nsConnected then
      AddImageIdx(0,nNodeIndex + 1,NodeConnectImageIndex,haLeft,vaCenter)
    else AddImageIdx(0,nNodeIndex + 1,NodeFaultConnectImageIndex,haLeft,vaCenter);
    refresh;
  end;

end;


procedure TfmAccessTypeMonitoring.AccessEventProcess(NodeNo: integer;
  aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
  aButton: string);
var
  stDeviceID : string;
  stDoorID : string;
  stDoorName : string;
  nDeviceIndex : integer;
  nDoorIndex : integer;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stBuildingID : string;
  nBuildingIndex : integer;
  stBuildingName : string;
  stCompanyName : string;
  stJijumName : string;
  stDepartName : string;
  stEmCode : string;
  stEmName : string;
  stPermitName : string;
begin
  stDeviceID := FillZeroNumber(NodeNo,3) + aEcuID;
  nDeviceIndex := DeviceStateList.IndexOf(stDeviceID);
  if nDeviceIndex < 0 then
  begin
    //등록되지 않은 기기 데이터
    Exit;
  end;
  stDoorID := stDeviceID + aDoorNo;
  nDoorIndex := DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;
  stDoorName := DoorListView.Items[nDoorIndex].Caption;

  stBuildingCode := TDeviceState(DeviceStateList.Objects[nDeviceIndex]).BuildingCode;
  stFloorCode := TDeviceState(DeviceStateList.Objects[nDeviceIndex]).FloorCode;
  stAreaCode := TDeviceState(DeviceStateList.Objects[nDeviceIndex]).AreaCode;
  if BuildingStep = '0' then stBuildingID := stBuildingCode
  else if BuildingStep = '1' then stBuildingID := stBuildingCode + stFloorCode
  else if BuildingStep = '2' then stBuildingID := stBuildingCode + stFloorCode + stAreaCode;
  nBuildingIndex := BuildingList.IndexOf(stBuildingID);
  if nBuildingIndex > -1 then
    stBuildingName := BuildingNameList.Strings[nBuildingIndex];

  stPermitName := GetPermitState(aPermit);
  if ACAlarmUse then
  begin
    if Not Isdigit(aPermit) then
    begin
      self.FindSubForm('Main').FindCommand('AlarmSound').Params.Values['VALUE'] := ACAlaramFile;
      self.FindSubForm('Main').FindCommand('AlarmSound').Execute;
    end;
  end;
  GetUserInfo(aCardNo,stEmName,stCompanyName,stJijumName,stDepartName,stEmCode);

  InsertDOORList(aPermit,stPermitName,aTime,stBuildingName,stDoorName,aCardNo,stEmName,
    stCompanyName,stJijumName,stDepartName,stEmCode,stDoorID,sg_Access)
end;





procedure TfmAccessTypeMonitoring.LoadingDoor;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
  stDeviceID : string;
  nDeviceIndex : integer;
  stDoorID : string;
  stDoorName : string;
  I : integer;
begin
  DoorListView.Clear;
  stSql := 'Select * from TB_DOOR ';
  stSql := stSql + ' order by DO_VIEWSEQ,AC_NODENO,AC_ECUID ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;
    with TempAdoQuery do
    begin
      Close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        TempAdoQuery.Free;
        CoUninitialize;
        Exit;
      End;
      if recordCount < 1  then Exit;
      First;
      I := 0;
      While Not Eof do
      begin
        stDeviceID := FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString;
        nDeviceIndex := DeviceStateList.IndexOf(stDeviceID);
        stDoorID := stDeviceID + FindField('DO_DOORNO').AsString;
        DoorCodeList.Add(stDoorID);
        stDoorName := FindField('DO_DOORNONAME').AsString;
        DoorListView.Items.Add.Caption:= stDoorName;
        DoorListView.Items[I].SubItems.Add(stDoorID);     // 빌딩ID

        if nDeviceIndex > -1 then
        begin
          if FindField('DO_DOORNO').AsString = '1' then
          begin
            if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1State = dsClose then
            begin
              DoorListView.Items[I].ImageIndex:= DoorCloseStateImageIndex;
            end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1State = dsOpen then
            begin
              DoorListView.Items[I].ImageIndex:= DoorOpenStateImageIndex;
            end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1State = dsLongTime then
            begin
              DoorListView.Items[I].ImageIndex:= DoorLongTimeStateImageIndex;
            end else
            begin
              DoorListView.Items[I].ImageIndex:= DoorNothingStateImageIndex;
            end;
            if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1Fire then
            begin
              DoorListView.Items[I].ImageIndex:=DoorFireStateImageIndex;
            end;
            if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1CardMode = pnPositive then
            begin
              if  TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1ManageMode = dmManager then
              begin
                DoorListView.Items[I].StateIndex := DoorPosiManageStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1ManageMode = dmOpen then
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1ManageMode = dmLock then
              begin
                DoorListView.Items[I].StateIndex := DoorCloseModeStateIndex;
              end else
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end;
            end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1CardMode = pnNegative then
            begin
              if  TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1ManageMode = dmManager then
              begin
                DoorListView.Items[I].StateIndex := DoorNegaManageStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1ManageMode = dmOpen then
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door1ManageMode = dmLock then
              begin
                DoorListView.Items[I].StateIndex := DoorCloseModeStateIndex;
              end else
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end;
            end else
            begin
              DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
            end;
          end else if FindField('DO_DOORNO').AsString = '2' then
          begin
            if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2State = dsClose then
            begin
              DoorListView.Items[I].ImageIndex:= DoorCloseStateImageIndex;
            end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2State = dsOpen then
            begin
              DoorListView.Items[I].ImageIndex:= DoorOpenStateImageIndex;
            end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2State = dsLongTime then
            begin
              DoorListView.Items[I].ImageIndex:= DoorLongTimeStateImageIndex;
            end else
            begin
              DoorListView.Items[I].ImageIndex:=DoorNothingStateImageIndex;
            end;

            if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2Fire then
            begin
              DoorListView.Items[I].ImageIndex:=DoorFireStateImageIndex;
            end;

            if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2CardMode = pnPositive then
            begin
              if  TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2ManageMode = dmManager then
              begin
                DoorListView.Items[I].StateIndex := DoorPosiManageStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2ManageMode = dmOpen then
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2ManageMode = dmLock then
              begin
                DoorListView.Items[I].StateIndex := DoorCloseModeStateIndex;
              end else
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end;
            end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2CardMode = pnNegative then
            begin
              if  TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2ManageMode = dmManager then
              begin
                DoorListView.Items[I].StateIndex := DoorNegaManageStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2ManageMode = dmOpen then
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end else if TDeviceState(DeviceStateList.Objects[nDeviceIndex]).Door2ManageMode = dmLock then
              begin
                DoorListView.Items[I].StateIndex := DoorCloseModeStateIndex;
              end else
              begin
                DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
              end;
            end else
            begin
              DoorListView.Items[I].StateIndex := DoorOpenModeStateIndex;
            end;
          end;
        end;
        inc(I);
        Next;
      end;

    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

  if DoorListView.ViewStyle = vsList  then
  begin
    DoorListView.ViewStyle := vsIcon;
    DoorListView.Refresh;
    DoorListView.ViewStyle := vsList;
  end;



end;

procedure TfmAccessTypeMonitoring.DoorFireStateChange(NodeNo: integer;
  aEcuID, aDoorNo: string; aFireState: Boolean);
var
  stDoorID : string;
  nDoorIndex : integer;
begin
  if Not aFireState then Exit;
  stDoorID := FillZeroNumber(NodeNo,3) + aEcuID + aDoorNo;
  nDoorIndex := DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;
  if DoorListView.Items[nDoorIndex].ImageIndex <> DoorFireStateImageIndex then
  begin
    DoorListView.Items[nDoorIndex].ImageIndex := DoorFireStateImageIndex;
    DoorListView.Refresh;
  end;
end;

procedure TfmAccessTypeMonitoring.DoorStateChange(NodeNo: integer; aEcuID,
  aDoorNo: string; aDoorManageType: TDoorManageMode;
  aDoorPNType: TDoorPNMode; aDoorStateType: TDoorState;
  aDoorLockType: TDoorLockState);
var
  stDoorID : string;
  nDoorIndex : integer;
begin
  stDoorID := FillZeroNumber(NodeNo,3) + aEcuID + aDoorNo;
  nDoorIndex := DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;

  if aDoorStateType = dsClose then
  begin
    DoorListView.Items[nDoorIndex].ImageIndex:= DoorCloseStateImageIndex;
  end else if aDoorStateType = dsOpen then
  begin
    DoorListView.Items[nDoorIndex].ImageIndex:= DoorOpenStateImageIndex;
  end else if aDoorStateType = dsLongTime then
  begin
    DoorListView.Items[nDoorIndex].ImageIndex:= DoorLongTimeStateImageIndex;
  end else
  begin
    DoorListView.Items[nDoorIndex].ImageIndex:= DoorNothingStateImageIndex;
  end;

  if aDoorPNType = pnPositive then
  begin
    if  aDoorManageType = dmManager then
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorPosiManageStateIndex;
    end else if aDoorManageType = dmOpen then
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end else if aDoorManageType = dmLock then
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorCloseModeStateIndex;
    end else
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end;
  end else if aDoorPNType = pnNegative then
  begin
    if  aDoorManageType = dmManager then
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorNegaManageStateIndex;
    end else if aDoorManageType = dmOpen then
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end else if aDoorManageType = dmLock then
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorCloseModeStateIndex;
    end else
    begin
      DoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end;
  end else
  begin
    DoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
  end;
end;

procedure TfmAccessTypeMonitoring.pm_OpenModeClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if doorListView.SelCount < 1 then Exit;
  for i := 0 to doorListView.Items.Count - 1 do
  begin
    if doorListView.Items[i].Selected then
    begin
      stDoorID:= doorListView.Items[i].SubItems.Strings[0];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPENMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','개방모드')
    end;
  end;

end;

procedure TfmAccessTypeMonitoring.pm_OperateModeClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if doorListView.SelCount < 1 then Exit;
  if DataModule1.CheckFireOrgin then
  begin
    Application.MessageBox(PChar('화재발생시에는 화재 복구 완료 후에 운영모드 가능합니다.'),'정보',MB_OK);
    Exit;
  end;

  for i := 0 to doorListView.Items.Count - 1 do
  begin
    if doorListView.Items[i].Selected then
    begin
      stDoorID:= doorListView.Items[i].SubItems.Strings[0];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPERATEMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','운영모드')
    end;
  end;


end;

procedure TfmAccessTypeMonitoring.pm_CloseModeClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if doorListView.SelCount < 1 then Exit;
  if DataModule1.CheckFireOrgin then
  begin
    Application.MessageBox(PChar('화재발생시에는 화재 복구 완료 후에 폐쇄모드 가능합니다.'),'정보',MB_OK);
    Exit;
  end;
  
  for i := 0 to doorListView.Items.Count - 1 do
  begin
    if doorListView.Items[i].Selected then
    begin
      stDoorID:= doorListView.Items[i].SubItems.Strings[0];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'CLOSEMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','폐쇄모드')
    end;
  end;

end;

procedure TfmAccessTypeMonitoring.pm_StateCheckClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if doorListView.SelCount < 1 then Exit;

  for i := 0 to doorListView.Items.Count - 1 do
  begin
    if doorListView.Items[i].Selected then
    begin
      stDoorID:= doorListView.Items[i].SubItems.Strings[0];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'STATECHECK'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
    end;
  end;

end;

procedure TfmAccessTypeMonitoring.pm_DoorOpenClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if doorListView.SelCount < 1 then Exit;
  for i := 0 to doorListView.Items.Count - 1 do
  begin
    if doorListView.Items[i].Selected then
    begin
      stDoorID:= doorListView.Items[i].SubItems.Strings[0];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'DOOROPEN'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','출입승인')
    end;
  end;

end;

procedure TfmAccessTypeMonitoring.N19Click(Sender: TObject);
begin
  doorListView.ViewStyle := vsIcon;
end;

procedure TfmAccessTypeMonitoring.N20Click(Sender: TObject);
begin
  doorListView.ViewStyle := vsList;

end;

procedure TfmAccessTypeMonitoring.N3Click(Sender: TObject);
var
  stDoorID : string;
  stDoorName : string;
begin
  if doorListView.SelCount < 1 then Exit;
  if doorListView.ItemIndex < -1 then Exit;
  stDoorID:= DoorCodeList[doorListView.ItemIndex];
  stDoorName := doorListView.Items[doorListView.ItemIndex].Caption;
  
  if bDeviceMapShow then  fmDeviceMap.MapFree;

  if Not bDeviceMapShow then
  begin
    fmDeviceMap:= TfmDeviceMap.Create(Self);
    fmDeviceMap.DeviceID := stDoorID;
    fmDeviceMap.DeviceName := stDoorName;
    fmDeviceMap.DeviceType := '3';
    fmDeviceMap.L_stCreateForm := 'TfmAccessTypeMonitoring';
    bDeviceMapShow := True;

    fmDeviceMap.SHow;
    fmDeviceMap.bActive := True;
  end;

end;

procedure TfmAccessTypeMonitoring.N4Click(Sender: TObject);
var
  stDoorID : string;
  stDoorName : string;
  stLocateName : string;
begin
  if doorListView.SelCount < 1 then Exit;
  stDoorID := DoorCodeList[doorListView.ItemIndex];
  stDoorName := doorListView.Items[doorListView.ItemIndex].Caption;

  fmDeviceInfo:= TfmDeviceInfo.Create(Self);
  fmDeviceInfo.DeviceID := stDoorID;
  fmDeviceInfo.DeviceName := stDoorName;
  fmDeviceInfo.DeviceType := '3';
  fmDeviceInfo.LocateName := '';
  fmDeviceInfo.SHowmodal;
  fmDeviceInfo.Free;

end;

procedure TfmAccessTypeMonitoring.sg_MainMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sg_Main.SelectRows(sg_Main.Row,1);

end;

procedure TfmAccessTypeMonitoring.sg_ECUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sg_ECU.SelectRows(sg_ECU.Row,1);

end;

procedure TfmAccessTypeMonitoring.mn_pingTestClick(Sender: TObject);
var
  stIp: String;
begin

  stIp := sg_Main.Cells[0,sg_Main.row];
  stIp := StringReplace(stIP,'__','',[rfReplaceAll]);
  if stIp = '' then Exit;

  if HiWord(GetKeyState(VK_CONTROL)) <> 0 then
    ShellExecute_AndWait('ping',stIp + ' -t')
  else
    ShellExecute_AndWait('ping',stIp);

end;

procedure TfmAccessTypeMonitoring.mn_TimeSyncClick(Sender: TObject);
var
  stNodeNo: string;
  stDeviceID : string;
begin
  stNodeNo := sg_Main.Cells[2,sg_Main.row];
  if Not isDigit(stNodeNo) then Exit;
  stDeviceID := FillZeroNumber(strtoint(stNodeNo),3) + '00';

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'TIMESYNC'+ DATADELIMITER + stDeviceID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmAccessTypeMonitoring.mn_AllCardDownloadClick(Sender: TObject);
var
  stNodeNo : string;
  stEcuID : string;
  stDeviceID: string;
begin
  stNodeNo := sg_Ecu.Cells[3,sg_Ecu.Row];
  if Not isDigit(stNodeNo) then Exit;
  stEcuID := sg_Ecu.Cells[1,sg_Ecu.Row];
  stDeviceID := FillZeroNumber(strtoint(stNodeNo),3) + stEcuID;

  if (Application.MessageBox(PChar('전체권한 전송시 현재 기기의 권한이 모두 삭제 됩니다. 전체권한 전송하시겠습니까?'),'전송',MB_OKCANCEL) = ID_CANCEL)  then Exit;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'CARDDOWNLOAD'+ DATADELIMITER + stDeviceID + DATADELIMITER + 'Y' + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;
  DataModule1.TB_SYSTEMLOGInsert('0','00','0','0',stDeviceID , '권한재전송');

end;

procedure TfmAccessTypeMonitoring.mn_DeviceResetClick(Sender: TObject);
var
  stNodeNo : string;
  stEcuID : string;
  stDeviceID: string;
begin
  stNodeNo := sg_Ecu.Cells[3,sg_Ecu.Row];
  if Not isDigit(stNodeNo) then Exit;
  stEcuID := sg_Ecu.Cells[1,sg_Ecu.Row];
  stDeviceID := FillZeroNumber(strtoint(stNodeNo),3) + stEcuID;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'REBOOT'+ DATADELIMITER + stDeviceID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmAccessTypeMonitoring.ExitButtonPress(NodeNo: integer; aEcuID,
  aDoorNo, aTime, aInputType, aUserName, aPermitCode, aPermit: string);
var
  stDeviceID : string;
  stDoorID : string;
  stDoorName : string;
  nDeviceIndex : integer;
  nDoorIndex : integer;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stBuildingID : string;
  nBuildingIndex : integer;
  stBuildingName : string;
  stCompanyName : string;
  stJijumName : string;
  stDepartName : string;
  stEmCode : string;
  stEmName : string;
  stPermitName : string;
begin
  stDeviceID := FillZeroNumber(NodeNo,3) + aEcuID;
  nDeviceIndex := DeviceStateList.IndexOf(stDeviceID);
  if nDeviceIndex < 0 then
  begin
    //등록되지 않은 기기 데이터
    Exit;
  end;
  stDoorID := stDeviceID + aDoorNo;
  nDoorIndex := DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;
  stDoorName := DoorListView.Items[nDoorIndex].Caption;

  stBuildingCode := TDeviceState(DeviceStateList.Objects[nDeviceIndex]).BuildingCode;
  stFloorCode := TDeviceState(DeviceStateList.Objects[nDeviceIndex]).FloorCode;
  stAreaCode := TDeviceState(DeviceStateList.Objects[nDeviceIndex]).AreaCode;
  if BuildingStep = '0' then stBuildingID := stBuildingCode
  else if BuildingStep = '1' then stBuildingID := stBuildingCode + stFloorCode
  else if BuildingStep = '2' then stBuildingID := stBuildingCode + stFloorCode + stAreaCode;
  nBuildingIndex := BuildingList.IndexOf(stBuildingID);
  if nBuildingIndex > -1 then
    stBuildingName := BuildingNameList.Strings[nBuildingIndex];

  InsertDOORList(aPermitCode,aPermit,aTime,stBuildingName,stDoorName,aInputType,aUserName,
    '','','','',stDoorID,sg_Access);
end;

procedure TfmAccessTypeMonitoring.DoorListViewDblClick(Sender: TObject);
var
  stDoorID : string;
begin
  if doorListView.SelCount < 1 then Exit;
  stDoorID:= DoorCodeList[doorListView.ItemIndex];

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'STATECHECK'+ DATADELIMITER + stDoorID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

initialization
  RegisterClass(TfmAccessTypeMonitoring);
Finalization
  UnRegisterClass(TfmAccessTypeMonitoring);

end.
