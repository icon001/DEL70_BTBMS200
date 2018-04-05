unit uMonitoring;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, uSubForm, CommandArray, StdCtrls, ImgList,
  ToolPanels, Shader, ActnList, Menus, Grids, BaseGrid, AdvGrid,Clipbrd,
  Buttons,ADODB,ActiveX, DB,iniFiles, MPlayer,uDataModule1, AdvObj;


type
  TfmMonitoring = class(TfmASubForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    PageControl1: TPageControl;
    tbDEVICE: TTabSheet;
    PageControl2: TPageControl;
    IntegrationTab: TTabSheet;
    SmallDoorList: TImageList;
    LageDoorList: TImageList;
    GroupBox3: TGroupBox;
    TreeView_Device: TTreeView;
    Shader3: TShader;
    ActionList1: TActionList;
    Action_LoctionLoad: TAction;
    Action_DeviceLoad: TAction;
    Action_DoorLoad: TAction;
    Action_AlarmLoad: TAction;
    Action_FoodLoad: TAction;
    toolslist: TImageList;
    Panel11: TPanel;
    Panel12: TPanel;
    Splitter5: TSplitter;
    Panel13: TPanel;
    GroupBox5: TGroupBox;
    IntDoorListView: TListView;
    Shader5: TShader;
    Panel14: TPanel;
    Splitter6: TSplitter;
    GroupBox6: TGroupBox;
    Shader6: TShader;
    Panel15: TPanel;
    Splitter7: TSplitter;
    Panel16: TPanel;
    Action_RecvData: TAction;
    PopupMenu_IntiDoor: TPopupMenu;
    pm_intiModeChange: TMenuItem;
    pm_intiOperateMode: TMenuItem;
    pm_intiOpenMode: TMenuItem;
    pm_intiStateCheck: TMenuItem;
    pm_intiDoorOpen: TMenuItem;
    Popup_Device: TPopupMenu;
    MenuItem7: TMenuItem;
    Menu_DeviceAllCardDown: TMenuItem;
    Menu_DeviceCardDown: TMenuItem;
    Menu_DeviceTimeSync: TMenuItem;
    Menu_DeviceReboot: TMenuItem;
    PopupMenu_AlarmSetting: TPopupMenu;
    menu_Alarm: TMenuItem;
    menu_AlarmDisable: TMenuItem;
    PopupMenu_IntAlarm: TPopupMenu;
    Menu_IntAlarmSetting: TMenuItem;
    Menu_IntAlarmDisable: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    sg_IntAccess: TAdvStringGrid;
    sg_IntAlarm: TAdvStringGrid;
    Action_Reload: TAction;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    PopupMenu_intZone: TPopupMenu;
    MenuItem6: TMenuItem;
    Action_SensorLoad: TAction;
    ADOAlarmQuery: TADOQuery;
    IntAlarmListView: TListView;
    N21: TMenuItem;
    Action_intAlarmHistory: TAction;
    Action_AlarmHistory: TAction;
    AlarmSmallList: TImageList;
    pm_IntiCloseMode: TMenuItem;
    pan_Message: TPanel;
    btn_AlarmConfirm: TSpeedButton;
    st_Message: TStaticText;
    stateList: TImageList;
    LargeAlarmList: TImageList;
    MessageTimer: TTimer;
    pan_ACIntro: TPanel;
    pan_LargeIntro: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    pan_SmallIntro: TPanel;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    Panel4: TPanel;
    Image1: TImage;
    Image14: TImage;
    StaticText1: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    Image15: TImage;
    StaticText16: TStaticText;
    Image16: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_DeviceLoadExecute(Sender: TObject);
    procedure Action_DoorLoadExecute(Sender: TObject);
    procedure Action_AlarmLoadExecute(Sender: TObject);
    procedure pm_intiStateCheckClick(Sender: TObject);
    procedure pm_intiDoorOpenClick(Sender: TObject);
    procedure pm_intiOpenModeClick(Sender: TObject);
    procedure pm_intiOperateModeClick(Sender: TObject);
    procedure TreeView_DeviceClick(Sender: TObject);
    procedure Menu_DeviceTimeSyncClick(Sender: TObject);
    procedure Menu_DeviceRebootClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand2Execute(Command: TCommand;
      Params: TStringList);
    procedure Menu_IntAlarmSettingClick(Sender: TObject);
    procedure Menu_IntAlarmDisableClick(Sender: TObject);
    procedure Menu_DeviceAllCardDownClick(Sender: TObject);
    procedure Menu_DeviceCardDownClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand4Execute(Command: TCommand;
      Params: TStringList);
    procedure Action_ReloadExecute(Sender: TObject);
    procedure sg_IntAccessKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure CommandArrayCommandsTCommand5Execute(Command: TCommand;
      Params: TStringList);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure Panel12Resize(Sender: TObject);
    procedure Panel15Resize(Sender: TObject);
    procedure Panel14Resize(Sender: TObject);
    procedure IntAlarmListViewDblClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sg_IntAlarmDblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure sg_AccessColumnMove(Sender: TObject; ACol: Integer;
      var Allow: Boolean);
    procedure sg_AccessColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure sg_IntAccessColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure sg_IntAlarmColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure sg_AlarmColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure IntDoorListViewDblClick(Sender: TObject);
    procedure Action_intAlarmHistoryExecute(Sender: TObject);
    procedure sg_IntAccessDblClick(Sender: TObject);
    procedure Panel13Resize(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure pm_IntiCloseModeClick(Sender: TObject);
    procedure sg_alarmAccessColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure MessageTimerTimer(Sender: TObject);
    procedure btn_AlarmConfirmClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    L_bFirst : Boolean;
    L_bClose : Boolean;
    FLogin: Boolean;
    procedure SetLogin(const Value: Boolean);

  public
    DeviceCodeList : TStringList; // 기기코드를 가지고 있다. (N:노드(3자리),E:ECU(9자리))
    DeviceCaptionList : TStringList; //기기명을 가지고 있다.
    DeviceLastTimeList : TStringList; //마지막 접속시간을 가지고 있다.
    DoorCodeList : TStringList;   // Door코드를 가지고 있다
    intDoorCodeList : TStringList;   // Door코드를 가지고 있다
    DoorLocateList : TStringList; // Door의 위치정보를 가지고 있다. (000000000위치정보)
    intAlarmCodeList : TStringList;  //방범 코드를 가지고 있다.
    AlarmNoList : TStringList;
    SensorCodeList : TStringList;  //센서 코드를 가지고 있다.
    AlarmLocateList : TStringList; //방범기기의 위치정보를 가지고 있다. (000000000위치정보)
    ArmAreaCodeList : TStringList;  //방범구역 코드를 가지고 있다.
    ArmAreaLocateList : TStringList; //방범구역의 위치정보를 가지고 있다. (000000000위치정보)

    FoodCodeList : TStringList;   //식수 코드를 가지고 있다.
    FoodCodeNameList : TStringList; //식수명을 가지고 있다.
    FoodLocateList : TStringList;  //식수기기의 위치정보를 가지고 있다.(000000000위치정보)
    CompanyCodeList : TStringList; //회사코드를 가지고 있다.
    CompanyNameList : TStringList; //회사명칭을 가지고 있다.
    JijumCodeList : TStringList; //지점코드를 가지고 있다.
    JijumNameList : TStringList; //지점명칭을 가지고 있다.
    DepartCodeList : TStringList; //부서코드를 가지고 있다.
    DepartNameList : TStringList; //부서명칭을 가지고 있다.

    DoorIndexArray: Array of integer; //출입문 리스트 순서 배열
    relDoorIndexArray:Array of integer; //실제 위치
    IntDoorIndexArray:Array of integer; //통합 출입문 리스트 순서 배열
    relIntDoorIndexArray:Array of integer; //통합 출입문 실제 위치
    AlarmDoorIndexArray:Array of integer; //방범 출입문 리스트 순서 배열
    relAlarmDoorIndexArray:Array of integer; //방범 출입문 실제 위치

    AlarmIndexArray: Array of integer; //알람 리스트 순서 배열
    relAlarmIndexArray:Array of integer; //실제 위치
    IntAlarmIndexArray:Array of integer; //통합 알람 리스트 순서 배열
    relIntAlarmIndexArray:Array of integer; //통합 알람 실제 위치
    
  private
    { Private declarations }

    procedure DoorLoad(DoorList:TListView);
    procedure ArmAreaLoad(AlarmList:TListView);
  private
    procedure DisConnectServer;
    procedure ConnectServer;
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
                  aStatusPosi,
                  aStatusName,
                  aAlaramCode:string;
                  aAlarmSound:integer;
                  List:TAdvStringGrid);  //이벤트 내용
    procedure Insertsg_SensorList(aTime,aNodeNo,aECUID,aPortNo,aDeviceType,aStatusCode,aStatusName,aPortName:string;List:TAdvStringGrid);

    Function GetStatusCode(aStatusCode,aNewStatusCode:string;var aStatusName :string;aAlarmSound:integer) : integer;
    Function UPDATETB_USERCONFIG(aConfigGroup,aConfigID,aValue : string):Boolean;
    Function InsertTB_USERCONFIG(aConfigGroup,aConfigID,aValue : string):Boolean;
    procedure Form_Initialize;

    Function updateTB_ZONEDEVICEState(aAlarmNo,aZoneNum,aState:string):Boolean;
    function CheckSchedule(aNodeNo, aECUID,aPortNo:string):Boolean;
    function GetPortName(aNodeNo,aECUID,aPortNo:string):String;
    function GetDeviceTypeName(aSubCLass:string):string;
    
  private
    procedure GridSetting;
    procedure ChangeDoorIndex(FromIndex,ToIndex:integer);
    procedure ChangeIntDoorIndex(FromIndex,ToIndex:integer);
    procedure ChangeAlarmDoorIndex(FromIndex,ToIndex:integer);
    procedure ChangeAlarmIndex(FromIndex,ToIndex:integer);
    procedure ChangeIntAlarmIndex(FromIndex,ToIndex:integer);

    procedure sg_AccessHeaderNameSet;
    procedure CenterPanel;
  public
    { Public declarations }
    bLocationMapShow : Boolean;
    bDeviceMapShow : Boolean;
    property LOGIN : Boolean read FLogin write SetLogin;
  public
//    procedure ShowMessage(aMessage:string);
    procedure DoorFireStateChange(NodeNo:integer;aEcuID, aDoorNo:string; aFireState:Boolean);
    procedure DoorStateChange(NodeNo : integer;aEcuID,aDoorNo:string;
                                  aDoorManageType:TDoorManageMode;
                                  aDoorPNType:TDoorPNMode;
                                  aDoorStateType:TDoorState;
                                  aDoorLockType:TDoorLockState);
    procedure DeviceConnected(NodeNo:integer;aEcuID:string;aConnected:Boolean);
    procedure AlarmModeChanged(NodeNo:integer;aEcuID,aArmAreaNo:string;aWachMode:TWatchMode);
    procedure DeviceAlarmEventProcess(NodeNo:integer;ECUID:string;aArmAreaNo:integer;aAlaramState:TAlarmEventState);
    procedure AlarmEventProcess(NodeNo:integer;
        ECUID, aCmd, aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode,
        aStatusCode, aPortNo, aState, aOperator, aNewStateCode:string;
        aAlarmView, aAlarmSound:Boolean);
    procedure ExitButtonPress(NodeNo : integer;aEcuID,aDoorNo,aTime,aInputType,aUserName,aPermitCode,aPermit:string);
    procedure AccessEventProcess(NodeNo:integer;
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton,aArmAreaNo :string);
    procedure NodeConnectState(NodeNo:integer;aConnectState:TNodeCurrentState);
    procedure DeviceReLoad;
    procedure Form_UserClose;
    procedure MonitorRefresh;

  end;

var
  fmMonitoring: TfmMonitoring;


implementation

uses
  uLomosUtil,
  uDeviceMap,
  uDeviceInfo,
  uZonePosition, uMDBSql, uPostGreSql, uMssql, uAlarmHistory,
  uFireBird,UCommonModule,uMonitoringCommonVariable,
  uDevicemodule,
  uServerDaemon;
{$R *.dfm}




procedure TfmMonitoring.FormCreate(Sender: TObject);
begin
  L_bFirst := True;
  L_bClose := False;

  LOGIN := fmMain.Logined;
end;

procedure TfmMonitoring.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  ini_fun : TiniFile;
begin
  L_bClose := True;

  self.FindSubForm('Main').FindCommand('FormView').Params.Values['FORMNAME'] := 'MONITOR';
  self.FindSubForm('Main').FindCommand('FormView').Params.Values['VALUE'] := 'FALSE';
  self.FindSubForm('Main').FindCommand('FormView').Execute;
  //self.FindSubForm('Main').FindCommand('MONITOR').Params.Values['VALUE'] := 'FALSE';
  //self.FindSubForm('Main').FindCommand('MONITOR').Execute;
  DeviceCodeList.Free;
//  DeviceStateList.Free;
  DeviceCaptionList.Free;
  DeviceLastTimeList.Free;
  DoorCodeList.Free;
  intDoorCodeList.Free;
  DoorLocateList.Free;
  intAlarmCodeList.Free;
  AlarmNoList.Free;
  AlarmLocateList.Free;
  ArmAreaCodeList.Free;//방범구역 코드를 가지고 있다.
  ArmAreaLocateList.Free; //방범구역의 위치정보를 가지고 있다. (000000000위치정보)

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

  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  ini_fun.WriteString('Monitoring','DeviceTab',PageControl1.ActivePage.Name);
  ini_fun.WriteInteger('Monitoring','DeviceWidth',Panel1.Width);
  if PageControl2.ActivePage <> nil then
    ini_fun.WriteString('Monitoring','MonitorTab',PageControl2.ActivePage.Name);
  ini_fun.WriteInteger('Monitoring','InitHeight',Panel12.Height);
  ini_fun.WriteInteger('Monitoring','Alarm2Width',Panel14.Width);
  ini_fun.WriteInteger('Monitoring','Access2Height',Panel15.Height);
  if IntDoorListView.ViewStyle = vsIcon then ini_fun.WriteString('Monitoring','IntDoorListView','vsIcon')
  else ini_fun.WriteString('Monitoring','IntDoorListView','vsList');

  ini_fun.Free;


  Action := caFree;

end;

procedure TfmMonitoring.Action_DeviceLoadExecute(Sender: TObject);
var
  aTreeView   : TTreeview;
  vTreeView : TTreeview;
  aNode,bNode,cNode,dNode   : TTreeNode;
  stParentCode : string;
  stLocationCaption : string;
  nIndex : integer;
  stDeviceID : string;
  stNodeNo : string;
  nNodeIndex : integer;
  nDeviceIndex :integer;
  i,j : integer;
  stDoorName : string;
  stAlarmName : string;
begin
  aTreeView := TreeView_Device;
  aTreeView.ReadOnly:= True;
  aTreeView.Items.Clear;
  DeviceCodeList.Clear;
  DeviceCaptionList.Clear;
  DeviceLastTimeList.Clear;

  for i := 0 to ComNodeList.Count - 1 do
  begin
    stNodeNo := FillZeroNumber(TCommNode(ComNodeList.Objects[i]).No,3);
    stLocationCaption := TCommNode(ComNodeList.Objects[i]).NodeNoStr;
    DeviceCodeList.Add('N' + stNodeNo);
    DeviceCaptionList.Add(stLocationCaption);
    DeviceLastTimeList.Add(FormatDateTime('yyyy-mm-dd HH:MM:SS',Now));
    aNode:= aTreeView.Items.Add(nil,stLocationCaption);
    if TCommNode(ComNodeList.Objects[i]).SocketConnected then
    begin
      aNode.ImageIndex:=NodeConnectImageIndex;
      aNode.SelectedIndex:=NodeConnectImageIndex;
    end else
    begin
      aNode.ImageIndex:=NodeDisConnectImageIndex;
      aNode.SelectedIndex:=NodeDisConnectImageIndex;
    end;
    aNode.StateIndex:= NothingStateIndex;
    Application.ProcessMessages;
  end;

  for i := 0 to DeviceList.Count - 1 do
  begin
    bNode := nil;
    stNodeNo := FillZeroNumber(TDevice(DeviceList.Objects[i]).NodeNo,3);
    stDeviceID := stNodeNo + TDevice(DeviceList.Objects[i]).ECUID;
    stLocationCaption :=  TDevice(DeviceList.Objects[i]).DeviceName;
    DeviceCodeList.Add('E' + stDeviceID);
    DeviceCaptionList.Add(stLocationCaption);
    DeviceLastTimeList.Add(FormatDateTime('yyyy-mm-dd HH:MM:SS',Now));   //ECU의 접속시간 체크하자...
    nIndex := DeviceCodeList.IndexOf('N' + stNodeNo);
    stParentCode := DeviceCaptionList.Strings[nIndex] ;
    aNode:= GetNodeByText(aTreeView,stParentCode,True);
    if aNode <> nil then
    begin
      bNode:= aTreeView.Items.AddChild(aNode,stLocationCaption);
      if TDevice(DeviceList.Objects[i]).Connected then
      begin
        bNode.ImageIndex:=DeviceConnectImageIndex;
        bNode.SelectedIndex:=DeviceConnectImageIndex;
      end else
      begin
        bNode.ImageIndex:=DeviceDisConnectImageIndex;
        bNode.SelectedIndex:=DeviceDisConnectImageIndex;
      end;
      bNode.StateIndex:= NothingStateIndex;
      aNode.Expanded := True;
    end;
    {
    if bNode <> nil then
    begin
      for j := 1 to DOORCOUNT do
      begin
        if TDevice(DeviceList.Objects[i]).GetDoorUse(j) then
        begin
          cNode := aTreeView.Items.AddChild(bNode,TDevice(DeviceList.Objects[i]).GetDoorName(j));
          cNode.ImageIndex := 12;
          cNode.SelectedIndex := 12;
          cNode.StateIndex := NothingStateIndex;
        end;
      end;
      if TDevice(DeviceList.Objects[i]).AlarmUse then
      begin
        cNode := aTreeView.Items.AddChild(bNode,TDevice(DeviceList.Objects[i]).AlarmName);
        cNode.ImageIndex := 13;
        cNode.SelectedIndex := 13;
        cNode.StateIndex := NothingStateIndex;
      end;
      bNode.MakeVisible;
    end;  }
    Application.ProcessMessages;
  end;

end;

procedure TfmMonitoring.Action_DoorLoadExecute(Sender: TObject);
begin
  DoorLoad(IntdoorListView);
end;

// 문정보를 로드  하여 해당 리스트에 조회 하자
procedure TfmMonitoring.DoorLoad(DoorList: TListView);
var
  i,j,k : integer;
  stNodeNo : string;
  stDeviceID : string;
  stDoorID : string;
  stCode : string;
begin
  if L_bClose then Exit;
  DoorCodeList.Clear;
  DoorLocateList.Clear;
  DoorList.Clear;

  j := 0;
  for i := 0 to DeviceList.Count - 1 do
  begin
    stNodeNo := FillZeroNumber(TDevice(DeviceList.Objects[i]).NodeNo,3);
    stDeviceID := stNodeNo + TDevice(DeviceList.Objects[i]).ECUID;
    for k := 1 to DOORCOUNT do
    begin
      if TDevice(DeviceList.Objects[i]).GetDoorUse(k) then
      begin
        DoorList.Items.Add.Caption:= TDevice(DeviceList.Objects[i]).GetDoorName(k);
        stDoorID:= stDeviceID + inttostr(k) ;
        DoorList.Items[j].SubItems.Add(stDoorID);     // 문 ID
        DoorList.Items[j].SubItems.Add(stNodeNo); //노드번호
        DoorList.Items[j].SubItems.Add('0000000'); //MCUID
        DoorList.Items[j].SubItems.Add(TDevice(DeviceList.Objects[i]).ECUID); //ECUID
        DoorList.Items[j].SubItems.Add(inttostr(k)); //문번호
        DoorList.Items[j].SubItems.Add(''); //이벤트타입 'F : 화재,C:카드,B:버튼
        DoorList.Items[j].SubItems.Add(''); //카드번호
        DoorList.Items[j].SubItems.Add(''); //이름
        if TDevice(DeviceList.Objects[i]).GetDoorPNMode(k) = pnPositive then
        begin
          if TDevice(DeviceList.Objects[i]).GetDoorManageMode(k) = dmManager then
          begin
            DoorList.Items[j].StateIndex:= DoorPosiManageStateIndex;
          end else if TDevice(DeviceList.Objects[i]).GetDoorManageMode(k) = dmOpen then
          begin
            DoorList.Items[j].StateIndex:= DoorOpenModeStateIndex;
          end else if TDevice(DeviceList.Objects[i]).GetDoorManageMode(k) = dmLock then
          begin
            DoorList.Items[j].StateIndex:= DoorCloseModeStateIndex;
          end else
          begin
            DoorList.Items[j].StateIndex:=DoorOpenModeStateIndex;
          end;
        end else if TDevice(DeviceList.Objects[i]).GetDoorPNMode(k) = pnNegative then
        begin
          if TDevice(DeviceList.Objects[i]).GetDoorManageMode(k) = dmManager then
          begin
            DoorList.Items[j].StateIndex:= DoorNegaManageStateIndex;
          end else if TDevice(DeviceList.Objects[i]).GetDoorManageMode(k) = dmOpen then
          begin
            DoorList.Items[j].StateIndex:= DoorOpenModeStateIndex;
          end else if TDevice(DeviceList.Objects[i]).GetDoorManageMode(k) = dmLock then
          begin
            DoorList.Items[j].StateIndex:= DoorCloseModeStateIndex;
          end else
          begin
            DoorList.Items[j].StateIndex:=DoorOpenModeStateIndex;
          end;
        end else
        begin
          DoorList.Items[j].StateIndex:=DoorOpenModeStateIndex;
        end;
        if TDevice(DeviceList.Objects[i]).GetDoorFire(k) then
        begin
          DoorList.Items[j].ImageIndex := DoorFireStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetDoorState(k) = dsClose then
        begin
          DoorList.Items[j].ImageIndex := DoorCloseStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetDoorState(k) = dsOpen then
        begin
          DoorList.Items[j].ImageIndex := DoorOpenStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetDoorState(k) = dsLongTime then
        begin
          DoorList.Items[j].ImageIndex := DoorLongTimeStateImageIndex;
        end else
        begin
          DoorList.Items[j].ImageIndex := DoorNothingStateImageIndex;
        end;
        inc(j);
      end;
    end;
  end;

  DoorCodeList.Clear;
  for i:=0 to DoorList.Items.Count - 1 do
  begin
    stCode := DoorList.Items[I].SubItems.Strings[0];
    DoorCodeList.Add(stCode);  //문의 코드를 등록하자
  end;

  if DoorList.ViewStyle = vsList then
  begin
    DoorList.ViewStyle := vsIcon;
    DoorList.Refresh;
    DoorList.ViewStyle := vsList;
  end;

end;


procedure TfmMonitoring.Action_AlarmLoadExecute(Sender: TObject);
begin
  //AlarmLoad(IntAlarmListView);
  ArmAreaLoad(IntAlarmListView);
end;

procedure TfmMonitoring.pm_intiStateCheckClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  for i := 0 to IntdoorListView.Items.Count - 1 do
  begin
    if IntdoorListView.Items[i].Selected then
    begin
      stDoorID:= DoorCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'STATECHECK'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
    end;
  end;

end;

procedure TfmMonitoring.pm_intiDoorOpenClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  for i := 0 to IntdoorListView.Items.Count - 1 do
  begin
    if IntdoorListView.Items[i].Selected then
    begin
      stDoorID:= DoorCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'DOOROPEN'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','출입승인')
    end;
  end;

end;

procedure TfmMonitoring.pm_intiOpenModeClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  for i := 0 to IntdoorListView.Items.Count - 1 do
  begin
    if IntdoorListView.Items[i].Selected then
    begin
      stDoorID:= DoorCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPENMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','개방모드');
      Delay(200);
    end;
  end;

end;

procedure TfmMonitoring.pm_intiOperateModeClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  if DataModule1.CheckFireOrgin then
  begin
    Application.MessageBox(PChar('화재발생시에는 화재 복구 완료 후에 운영모드 가능합니다.'),'정보',MB_OK);
    Exit;
  end;
  for i := 0 to IntdoorListView.Items.Count - 1 do
  begin
    if IntdoorListView.Items[i].Selected then
    begin
      stDoorID:= DoorCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPERATEMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','운영모드');
      Delay(200);
    end;
  end;


end;

procedure TfmMonitoring.TreeView_DeviceClick(Sender: TObject);
var
  stDeviceID: string;
  stCaption : string;
  nIndex : integer;
begin
  if TreeView_Device.Selected = nil then Exit;
  
  stCaption := TreeView_Device.Selected.Text;
  nIndex := DeviceCaptionList.IndexOf(stCaption);
  if nIndex < 0 then Exit;
  stDeviceID := DeviceCodeList.Strings[nIndex];
  if stDeviceID[1] = 'E' then
  begin
    TreeView_Device.PopupMenu:= Popup_Device;
  end
  else TreeView_Device.PopupMenu:= nil;

end;

procedure TfmMonitoring.Menu_DeviceTimeSyncClick(Sender: TObject);
var
  stDeviceID: string;
  stCaption : string;
begin
  stCaption := TreeView_Device.Selected.Text;
  stDeviceID := DeviceCodeList.Strings[ DeviceCaptionList.IndexOf(stCaption)];
  Delete(stDeviceID,1,1);

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'TIMESYNC'+ DATADELIMITER + stDeviceID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmMonitoring.Menu_DeviceRebootClick(Sender: TObject);
var
  stDeviceID: string;
  stCaption : string;
begin
  stCaption := TreeView_Device.Selected.Text;
  stDeviceID := DeviceCodeList.Strings[ DeviceCaptionList.IndexOf(stCaption)];
  Delete(stDeviceID,1,1);

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'REBOOT'+ DATADELIMITER + stDeviceID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmMonitoring.CommandArrayCommandsTCommand2Execute(
  Command: TCommand; Params: TStringList);
begin
  Close;
end;

procedure TfmMonitoring.Menu_IntAlarmSettingClick(Sender: TObject);
var
  stAlarmID : string;
  i : integer;
begin
  if IntAlarmListView.SelCount < 1 then Exit;
  for i := 0 to IntAlarmListView.Items.Count - 1 do
  begin
    if IntAlarmListView.Items[i].Selected then
    begin
      stAlarmID:= ArmAreaCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'ARMAREASETTING'+ DATADELIMITER + stAlarmID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stAlarmID,1,3),copy(stAlarmID,4,2),ALARMTYPE,copy(stAlarmID,6,1),'0000000000','경계모드');
      Delay(200);
    end;
  end;

end;

procedure TfmMonitoring.Menu_IntAlarmDisableClick(Sender: TObject);
var
  stAlarmID : string;
  i : integer;
begin
  if IntAlarmListView.SelCount < 1 then Exit;
  for i := 0 to IntAlarmListView.Items.Count - 1 do
  begin
    if IntAlarmListView.Items[i].Selected then
    begin
      stAlarmID:= ArmAreaCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'DISARMAREASETTING'+ DATADELIMITER + stAlarmID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stAlarmID,1,3),copy(stAlarmID,4,2),ALARMTYPE,copy(stAlarmID,6,1),'0000000000','해제모드');
      Delay(200);
    end;
  end;

end;

procedure TfmMonitoring.Menu_DeviceAllCardDownClick(Sender: TObject);
var
  stDeviceID: string;
  stCaption : string;
begin
  stCaption := TreeView_Device.Selected.Text;
  stDeviceID := DeviceCodeList.Strings[ DeviceCaptionList.IndexOf(stCaption)];
  Delete(stDeviceID,1,1);

  if (Application.MessageBox(PChar('전체권한 전송시 현재 기기의 권한이 모두 삭제 됩니다. 전체권한 전송하시겠습니까?'),'전송',MB_OKCANCEL) = ID_CANCEL)  then Exit;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'CARDDOWNLOAD'+ DATADELIMITER + stDeviceID + DATADELIMITER + 'Y' + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;
  DataModule1.TB_SYSTEMLOGInsert('0','00','0','0',stDeviceID , '권한재전송');

{
  self.FindSubForm('Main').FindCommand('CARDDOWNLOAD').Params.Values['VALUE'] := stDeviceID + 'A';
  self.FindSubForm('Main').FindCommand('CARDDOWNLOAD').Execute;
}
end;

procedure TfmMonitoring.Menu_DeviceCardDownClick(Sender: TObject);
var
  stDeviceID: string;
  stCaption : string;
begin
  stCaption := TreeView_Device.Selected.Text;
  stDeviceID := DeviceCodeList.Strings[ DeviceCaptionList.IndexOf(stCaption)];
  Delete(stDeviceID,1,1);

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'CARDDOWNLOAD'+ DATADELIMITER + stDeviceID + DATADELIMITER + 'N' + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;



function TfmMonitoring.GetPermitState(aPermit: string): string;
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

function TfmMonitoring.GetUserInfo(aCardNo: string; var stUserName,
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

procedure TfmMonitoring.LoadCompanyCode;
var
  stSql : string;
begin
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

procedure TfmMonitoring.LoadDepartCode;
var
  stSql : string;
begin
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

procedure TfmMonitoring.CommandArrayCommandsTCommand4Execute(
  Command: TCommand; Params: TStringList);
begin
  Action_ReloadExecute(Self);
end;

procedure TfmMonitoring.InsertDOORList(aPermitCode,aPermit, aTime, aLocationName,
  aDoorName, aCardNo, aUserName, aCompanyName, aJijumName,aDepartName, aEmID,aDoorID: string;List:TAdvStringGrid);
var
  nCol: integer;

begin

  with List do
  begin
    //ColWidths[10] := 0;  //상태코드
    if List.Name = 'sg_Access' then
      if Cells[DoorIndexArray[5],1] <> '' then   InsertRows(1,1);
    if List.Name = 'sg_IntAccess' then
      if Cells[IntDoorIndexArray[5],1] <> '' then   InsertRows(1,1);
    if List.Name = 'sg_alarmAccess' then
      if Cells[AlarmDoorIndexArray[5],1] <> '' then   InsertRows(1,1);

    if List.RowCount >= MAX_LISTCOUNT then
    begin
      List.RemoveRows(List.RowCount-1,1);
    end;
    List.SelectedCells[1,1];
    if Not Isdigit(aPermitCode) then
    begin
      RowColor[1] := clFuchsia;
    end;

    if List.Name = 'sg_IntAccess' then
    begin
      Cells[IntDoorIndexArray[0],1] := MakeDatetimeStr(aTime);   //발생시간
      Cells[IntDoorIndexArray[1],1] := copy(aLocationName,10,length(aLocationName)-9); //위치
      Cells[IntDoorIndexArray[2],1] := aDoorName; //출입문
      Cells[IntDoorIndexArray[3],1] := aPermitCode; //승인상태 코드
      Cells[IntDoorIndexArray[4],1] := aPermit; //승인상태
      Cells[IntDoorIndexArray[5],1] := aCardNo; //카드번호
      Cells[IntDoorIndexArray[6],1] := aUserName; //이름
      Cells[IntDoorIndexArray[7],1] := aCompanyName ; //회사명
      Cells[IntDoorIndexArray[8],1] := aJijumName ; //부서명
      Cells[IntDoorIndexArray[9],1] := aDepartName ; //부서명
      Cells[IntDoorIndexArray[10],1] := aEmID; //사번
      Cells[IntDoorIndexArray[11],1] := aDoorID; //사번
    end else if List.Name = 'sg_alarmAccess' then
    begin
      Cells[AlarmDoorIndexArray[0],1] := MakeDatetimeStr(aTime);   //발생시간
      Cells[AlarmDoorIndexArray[1],1] := copy(aLocationName,10,length(aLocationName)-9); //위치
      Cells[AlarmDoorIndexArray[2],1] := aDoorName; //출입문
      Cells[AlarmDoorIndexArray[3],1] := aPermitCode; //승인상태 코드
      Cells[AlarmDoorIndexArray[4],1] := aPermit; //승인상태
      Cells[AlarmDoorIndexArray[5],1] := aCardNo; //카드번호
      Cells[AlarmDoorIndexArray[6],1] := aUserName; //이름
      Cells[AlarmDoorIndexArray[7],1] := aCompanyName ; //회사명
      Cells[AlarmDoorIndexArray[8],1] := aJijumName ; //부서명
      Cells[AlarmDoorIndexArray[9],1] := aDepartName ; //부서명
      Cells[AlarmDoorIndexArray[10],1] := aEmID; //사번
      Cells[AlarmDoorIndexArray[11],1] := aDoorID; //사번

    end;
  end;

end;


function TfmMonitoring.GetStatusCode(aStatusCode,aNewStatusCode: string;
  var aStatusName: string;aAlarmSound:integer): integer;
var
  stSql : string;
begin
  Result:= -1;
  aStatusName := '';
  aAlarmSound := 0;

  stSql := 'select * from TB_ALARMSTATUSCODE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND  ( AL_ALARMSTATUSCODE = ''' + aStatusCode + ''' ';
  stSql := stSql + ' OR  AL_ALARMSTATUSCODE = ''' + aNewStatusCode + ''') ';

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
    While Not Eof do
    begin
      if FindField('AL_ALARMSTATUSCODE').AsString = aStatusCode then
      begin
        if aStatusName = '' then aStatusName := FindField('AL_ALARMNAME').AsString ;
      end else
      begin
        aStatusName := FindField('AL_ALARMNAME').AsString ;
      end;
      if FindField('AL_ALARMVIEW').AsInteger > 0 then  Result := 1   //하나라도 보여 줘야 하면
      else begin
        if Result < 0 then Result := 0;
      end;
      if FindField('AL_ALARMSOUND').AsInteger > 0 then aAlarmSound := 1 ;
      Next;
    end;
  end;

end;

procedure TfmMonitoring.InsertAlarmList(aTime, aLocateName, aAlarmName,
  aDeviceID, aDeviceType, aStatusCode,aStatusPosi, aStatusName,aAlaramCode: string;aAlarmSound:integer;
  List: TAdvStringGrid);
begin

  with List do
  begin
    //if Cells[0,1] <> '' then   InsertRows(1,1);

    if List.Name = 'sg_Alarm' then
      if Cells[AlarmIndexArray[0],1] <> '' then   InsertRows(1,1);
    if List.Name = 'sg_IntAlarm' then
      if Cells[IntAlarmIndexArray[0],1] <> '' then   InsertRows(1,1);

    if List.RowCount >= MAX_LISTCOUNT then
    begin
      List.RemoveRows(List.RowCount-1,1);
    end;
    List.SelectedCells[1,1];
    if aAlarmSound > 0 then
    begin
      RowColor[1] := clRed;
    end;
    if List.Name = 'sg_Alarm' then
    begin
      Cells[AlarmIndexArray[0],1] := MakeDatetimeStr(aTime);   //발생시간
      Cells[AlarmIndexArray[1],1] := aLocateName;//,10,length(aLocateName)-9); //위치
      Cells[AlarmIndexArray[2],1] := aAlarmName; //경계구역
      Cells[AlarmIndexArray[3],1] := aDeviceID; //주장치번호
      Cells[AlarmIndexArray[4],1] := aDeviceType; //기기번호
      Cells[AlarmIndexArray[5],1] := aStatusCode; //발생코드
      Cells[AlarmIndexArray[6],1] := aStatusPosi; //발생위치
      Cells[AlarmIndexArray[7],1] := aStatusName; //이벤트내용
      Cells[AlarmIndexArray[8],1] := aAlaramCode; //AlarmCode
    end else if List.Name = 'sg_IntAlarm' then
    begin
      Cells[IntAlarmIndexArray[0],1] := MakeDatetimeStr(aTime);   //발생시간
      Cells[IntAlarmIndexArray[1],1] := copy(aLocateName,10,length(aLocateName)-9); //위치
      Cells[IntAlarmIndexArray[2],1] := aAlarmName; //경계구역
      Cells[IntAlarmIndexArray[3],1] := aDeviceID; //주장치번호
      Cells[IntAlarmIndexArray[4],1] := aDeviceType; //기기번호
      Cells[IntAlarmIndexArray[5],1] := aStatusCode; //발생코드
      Cells[IntAlarmIndexArray[6],1] := aStatusPosi; //발생위치
      Cells[IntAlarmIndexArray[7],1] := aStatusName; //이벤트내용
      Cells[IntAlarmIndexArray[8],1] := aAlaramCode; //AlarmCode
    end;
  end;

end;

procedure TfmMonitoring.Action_ReloadExecute(Sender: TObject);
begin

  Action_DeviceLoadExecute(Self);
  Action_DoorLoadExecute(Self);
  Action_AlarmLoadExecute(Self);

  LoadCompanyCode;
  LoadJijumCode;

  LoadDepartCode;

end;


procedure TfmMonitoring.sg_IntAccessKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  st: string;
begin
  if key = 17 then Exit;
  if (Key = 67) and (Shift = [ssCtrl]) 	then
  begin
    with Sender as TAdvStringGrid do
    begin
      if TAdvStringGrid(sender).Name = 'sg_Access' then st:= Cells[DoorIndexArray[5],Row]
      else if TAdvStringGrid(sender).Name = 'sg_IntAccess' then  st:= Cells[IntDoorIndexArray[5],Row]
      else if TAdvStringGrid(sender).Name = 'sg_alarmAccess' then
           st:= Cells[AlarmDoorIndexArray[5],Row];

//      st:= Cells[5,Row];
      if st <> '' then ClipBoard.SetTextBuf(PChar(st));
    end;
  end;

end;

procedure TfmMonitoring.N15Click(Sender: TObject);
begin
  IntDoorListView.ViewStyle := vsIcon;
  pan_LargeIntro.Visible := True;
  pan_LargeIntro.Align := alClient;
  pan_SmallIntro.Visible := False;

end;

procedure TfmMonitoring.N16Click(Sender: TObject);
begin
  IntDoorListView.ViewStyle := vsList;
  pan_LargeIntro.Visible := False;
  pan_SmallIntro.Visible := True;
  pan_SmallIntro.Align := alClient;

end;


procedure TfmMonitoring.CommandArrayCommandsTCommand5Execute(
  Command: TCommand; Params: TStringList);
var
  stValue : string;
  stCmd : string;
  stID : string;
begin
  stCmd := Params.Values['COMMAND'];
  stValue := Params.Values['VALUE'];

  if stCmd = 'DeviceMap' then
  begin
    if stValue = 'TRUE' Then
      bDeviceMapShow := True
    else bDeviceMapShow := False;
  end;

//
end;

procedure TfmMonitoring.FormShow(Sender: TObject);
var
  ini_fun : TiniFile;
  stValue : string;
begin

  DeviceCodeList := TStringList.Create;
//  DeviceStateList := TStringList.Create;
  DeviceCaptionList := TStringList.Create;
  DeviceLastTimeList := TStringList.Create;
  DoorCodeList := TStringList.Create;
  intDoorCodeList := TStringList.Create;
  DoorLocateList := TStringList.Create;
  intAlarmCodeList := TStringList.Create;
  AlarmNoList := TStringList.Create;
  AlarmLocateList := TStringList.Create;
  SensorCodeList := TStringList.Create;
  ArmAreaCodeList := TStringList.Create;//방범구역 코드를 가지고 있다.
  ArmAreaLocateList := TStringList.Create; //방범구역의 위치정보를 가지고 있다. (000000000위치정보)
  FoodCodeList := TStringList.Create;
  FoodCodeNameList := TStringList.Create;
  FoodLocateList := TStringList.Create;
  CompanyCodeList := TStringList.Create;
  CompanyNameList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  JijumNameList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  DepartNameList := TStringList.Create;

  SetLength(IntDoorIndexArray,sg_IntAccess.ColCount);
  SetLength(relIntDoorIndexArray,sg_IntAccess.ColCount);

  SetLength(IntAlarmIndexArray,sg_IntAlarm.ColCount);
  SetLength(relIntAlarmIndexArray,sg_IntAlarm.ColCount);

  bLocationMapShow := False;
  bDeviceMapShow := False;

  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  Panel1.Width := ini_fun.ReadInteger('Monitoring','DeviceWidth',217);

  stValue := ini_fun.ReadString('Monitoring','MonitorTab','AccessTab');

  Panel12.Height := ini_fun.ReadInteger('Monitoring','InitHeight',273);
  Panel14.Width := ini_fun.ReadInteger('Monitoring','Alarm2Width',378);
  Panel15.Height := ini_fun.ReadInteger('Monitoring','Access2Height',144);

  stValue := ini_fun.ReadString('Monitoring','IntDoorListView','vsIcon');
  if UpperCase(stValue) = 'VSICON' then
  begin
    IntDoorListView.ViewStyle := vsIcon;
    pan_LargeIntro.Visible := True;
    pan_LargeIntro.Align := alClient;
    pan_SmallIntro.Visible := False;
  end  else
  begin
    IntDoorListView.ViewStyle := vsIcon;
    IntDoorListView.Refresh;
    IntDoorListView.ViewStyle := vsList;
    pan_LargeIntro.Visible := False;
    pan_SmallIntro.Visible := True;
    pan_SmallIntro.Align := alClient;
  end;

  ini_fun.Free;

  sg_AccessHeaderNameSet;
  TreeView_Device.Items.Clear;
  IntDoorListView.Items.Clear;
  IntAlarmListView.Items.Clear;

  sg_IntAccess.ColWidths[1] := 0;
  sg_IntAccess.ColWidths[3] := 0;
  sg_IntAccess.ColWidths[11] := 0;

  Form_Initialize;
  GridSetting; //그리드를 사용자 환경에 맞게 셋팅함


  pm_IntiCloseMode.Visible := G_bColseModeView;

  self.FindSubForm('Main').FindCommand('FormView').Params.Values['FORMNAME'] := 'MONITOR';
  self.FindSubForm('Main').FindCommand('FormView').Params.Values['VALUE'] := 'TRUE';
  self.FindSubForm('Main').FindCommand('FormView').Execute;

  Action_ReloadExecute(self);

end;

procedure TfmMonitoring.N1Click(Sender: TObject);
var
  stDoorID : string;
  stDoorName : string;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  stDoorID := DoorCodeList[IntdoorListView.ItemIndex];
  stDoorName := IntdoorListView.Items[IntdoorListView.ItemIndex].Caption;

  
  if bDeviceMapShow then  fmDeviceMap.MapFree;

  if Not bDeviceMapShow then
  begin
    fmDeviceMap:= TfmDeviceMap.Create(Self);
    fmDeviceMap.DeviceID := stDoorID;
    fmDeviceMap.DeviceName := stDoorName;
    fmDeviceMap.DeviceType := '3';
    fmDeviceMap.L_stCreateForm := 'TfmDoorTypeMonitoring';
    bDeviceMapShow := True;

    fmDeviceMap.SHow;
    fmDeviceMap.bActive := True;
  end;

end;

procedure TfmMonitoring.N11Click(Sender: TObject);
var
  stAlarmID : string;
  stAlarmName : string;
begin
  if IntAlarmListView.SelCount < 1 then Exit;
  stAlarmID:= ArmAreaCodeList[IntAlarmListView.ItemIndex];
  stAlarmName := IntAlarmListView.Items[IntAlarmListView.ItemIndex].Caption;
  
  if bDeviceMapShow then  fmDeviceMap.MapFree;

  if Not bDeviceMapShow then
  begin
    fmDeviceMap:= TfmDeviceMap.Create(Self);
    fmDeviceMap.DeviceID := stAlarmID;
    fmDeviceMap.DeviceName := stAlarmName;
    fmDeviceMap.DeviceType := '4';
    fmDeviceMap.L_stCreateForm := 'TfmMonitoring';
    bDeviceMapShow := True;

    fmDeviceMap.SHow;
    fmDeviceMap.bActive := True;
  end;

end;

procedure TfmMonitoring.N2Click(Sender: TObject);
var
  stDoorID : string;
  stDoorName : string;
  stLocateName : string;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  stDoorID := DoorCodeList[IntdoorListView.ItemIndex];
  stDoorName := IntdoorListView.Items[IntdoorListView.ItemIndex].Caption;

  fmDeviceInfo:= TfmDeviceInfo.Create(Self);
  fmDeviceInfo.DeviceID := stDoorID;
  fmDeviceInfo.DeviceName := stDoorName;
  fmDeviceInfo.DeviceType := '3';
  fmDeviceInfo.SHowmodal;
  fmDeviceInfo.Free;

end;

procedure TfmMonitoring.N12Click(Sender: TObject);
var
  stAlarmID : string;
  stAlarmName : string;
begin
  if IntAlarmListView.SelCount < 1 then Exit;
  stAlarmID := ArmAreaCodeList[IntAlarmListView.ItemIndex];
  stAlarmName := IntAlarmListView.Items[IntAlarmListView.ItemIndex].Caption;

  fmDeviceInfo:= TfmDeviceInfo.Create(Self);
  fmDeviceInfo.DeviceID := stAlarmID;
  fmDeviceInfo.DeviceName := stAlarmName;
  fmDeviceInfo.DeviceType := '4';
  fmDeviceInfo.SHowmodal;
  fmDeviceInfo.Free;

end;

procedure TfmMonitoring.PageControl1Change(Sender: TObject);
begin
  //showmessage(PageControl1.ActivePage.Name);
  UPDATETB_USERCONFIG('MONITOR','DEVICETAB',PageControl1.ActivePage.Name)
end;

function TfmMonitoring.UPDATETB_USERCONFIG(aConfigGroup,aConfigID,
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

function TfmMonitoring.InsertTB_USERCONFIG(aConfigGroup,aConfigID,
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

procedure TfmMonitoring.PageControl2Change(Sender: TObject);
begin
  UPDATETB_USERCONFIG('MONITOR','WATCHTAB',PageControl2.ActivePage.Name)
end;

procedure TfmMonitoring.Panel1Resize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('MONITOR','DEVICEW',inttostr(Panel1.Width))
end;

procedure TfmMonitoring.Panel12Resize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('MONITOR','INTEGH',inttostr(Panel12.Height))
end;

procedure TfmMonitoring.Panel15Resize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('MONITOR','INTATH',inttostr(Panel15.Height))
end;

procedure TfmMonitoring.Panel14Resize(Sender: TObject);
begin
  UPDATETB_USERCONFIG('MONITOR','INTPTW',inttostr(Panel14.Width));
  if IntAlarmListView.ViewStyle = vsIcon then
  begin
    IntAlarmListView.ViewStyle := vsList;
    IntAlarmListView.ViewStyle := vsIcon;
    IntAlarmListView.Refresh;
  end else if IntAlarmListView.ViewStyle = vsList then
  begin
    IntAlarmListView.ViewStyle := vsIcon;
    IntAlarmListView.ViewStyle := vsList;
    IntAlarmListView.Refresh;
  end;
end;

procedure TfmMonitoring.Form_Initialize;
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
  stSql := stSql + ' AND US_CONFGROUP = ''MONITOR''';

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
        Panel1.Width := FindField('US_VALUE').AsInteger;
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

procedure TfmMonitoring.IntAlarmListViewDblClick(Sender: TObject);
var
  nIndex : integer;
  stAlarmID : string;
  nAlarmIndex : integer;
  stAlarmName : string;
  bAlarmConfirm : Boolean;
begin
  // 여기에서 해당하는 알람 경고창 없애자...
  if IntAlarmListView.Selected = nil then Exit;
  nIndex := IntAlarmListView.Selected.Index;
  if nIndex < 0 then Exit;
  stAlarmID:= IntAlarmListView.items[nIndex].SubItems.Strings[0];
  nAlarmIndex := DeviceList.IndexOf(copy(stAlarmID,1,5));
  if nAlarmIndex < 0 then Exit;
  TDevice(DeviceList.Objects[nAlarmIndex]).AlaramEventClear;
  MessageTimer.Enabled := False;
  pan_Message.Visible := False;

end;


procedure TfmMonitoring.ConnectServer;
var
  aTreeView   : TTreeview;
  aNode   : TTreeNode;
begin
  aTreeView := TreeView_Device;
  if aTreeView.Items.Count < 1 then Exit;
  aNode := aTreeView.Items[0];
  if aNode.ImageIndex <> ServerConnectImageIndex then
  begin
    aNode.ImageIndex:=ServerConnectImageIndex;
    aNode.StateIndex:=ServerConnectImageIndex;
  end;
  aTreeView.Refresh;

end;

procedure TfmMonitoring.DisConnectServer;
var
  aTreeView   : TTreeview;
  aNode   : TTreeNode;
  i : integer;
begin
  aTreeView := TreeView_Device;
  if aTreeView.Items.Count < 1 then Exit;
  aNode := aTreeView.Items[0];
  if aNode.ImageIndex <> ServerDisConnectImageIndex then
  begin
    aNode.ImageIndex:=ServerDisConnectImageIndex;
    aNode.SelectedIndex := ServerDisConnectImageIndex;
    aNode.StateIndex:=-1;
    //여기에서 모든 노드 DisConnect 로 표시하자.
{    for i :=0 to DeviceCodeList.Count - 1 do
    begin
      if copy(DeviceCodeList.Strings[i],1,1) = 'N' then
      begin
        DisConnectNode(DeviceCodeList.Strings[i]);
      end;
    end;   }
  end;
  aTreeView.Refresh;

end;



procedure TfmMonitoring.MenuItem6Click(Sender: TObject);
var
  stStatusCode : string;
  stPort : string;
  nPos : integer;
  stNodeNo : string;
  stEcuID : string;
  nAlarmNo : integer;
  stAlarmName : string;
begin
  stStatusCode := sg_IntAlarm.Cells[IntAlarmIndexArray[5],sg_IntAlarm.row];
  if stStatusCode = '' then Exit;
  nPos := Pos('/',stStatusCode);
  stPort := Trim(copy(stStatusCode,nPos + 1,Length(stStatusCode) - nPos));
  if Not IsDigit(stPort) then Exit;
  
  stNodeNo := copy(sg_IntAlarm.Cells[IntAlarmIndexArray[8],sg_IntAlarm.row],1,3);
  stEcuID := copy(sg_IntAlarm.Cells[IntAlarmIndexArray[8],sg_IntAlarm.row],4,2);
  //nAlarmNo := GetAlarmNO(stNodeNo,stEcuID);
  //if nAlarmNo = 0 then Exit;
  stAlarmName := sg_IntAlarm.Cells[IntAlarmIndexArray[2],sg_IntAlarm.row];

  fmZonePosition:= TfmZonePosition.Create(Self);
  //fmZonePosition.nAL_ALARMNO := nAlarmNo;
  fmZonePosition.stAC_NODENO := stNodeNo;
  fmZonePosition.stAC_ECUID := stEcuID;
  fmZonePosition.stPortNo := stPort;
  fmZonePosition.stDeviceName  := stAlarmName + ' ';

  fmZonePosition.ShowModal;
  fmZonePosition.Free;
end;


function TfmMonitoring.updateTB_ZONEDEVICEState(aAlarmNo, aZoneNum,
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


function TfmMonitoring.CheckSchedule(aNodeNo, aECUID,
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

function TfmMonitoring.GetPortName(aNodeNo, aECUID,
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

procedure TfmMonitoring.Insertsg_SensorList(aTime,aNodeNo, aECUID, aPortNo,
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



procedure TfmMonitoring.FormActivate(Sender: TObject);
begin
  if L_bFirst then
  begin
    L_bFirst := False;
    self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'STATECHECK'+ DATADELIMITER + '0000000000000' + DATADELIMITER;
    self.FindSubForm('Main').FindCommand('SendData').Execute;
    self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'ARMAREACHECK'+ DATADELIMITER + '0000000000000' + DATADELIMITER;
    self.FindSubForm('Main').FindCommand('SendData').Execute;
  end;
  sg_IntAlarm.ColWidths[IntAlarmIndexArray[1]] := 0;
  sg_IntAlarm.ColWidths[IntAlarmIndexArray[5]] := 0;
  sg_IntAlarm.ColWidths[IntAlarmIndexArray[8]] := 0;

end;

procedure TfmMonitoring.sg_IntAlarmDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  stNodeNo,stEcuId:string;
  stAlarmdevicetypecode, stSubaddr :string;
  stZonecode, stZoneno, stAlarmstatuscode :string;
begin
  Action_intAlarmHistoryExecute(Action_intAlarmHistory);

end;

procedure TfmMonitoring.sg_AccessColumnMove(Sender: TObject; ACol: Integer;
  var Allow: Boolean);
begin
//  if Allow then showmessage(inttostr(aCol));

end;

procedure TfmMonitoring.sg_AccessColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    ChangeDoorIndex(FromIndex,ToIndex);
end;

procedure TfmMonitoring.GridSetting;
var
  i : integer;
begin
  for i:=0 to sg_IntAccess.ColCount - 1 do
  begin
    IntDoorIndexArray[i] := i;
    relIntDoorIndexArray[i] := i;
  end;

  for i:=0 to sg_IntAlarm.ColCount - 1 do
  begin
    IntAlarmIndexArray[i] := i;
    relIntAlarmIndexArray[i] := i;
  end;

end;

procedure TfmMonitoring.ChangeDoorIndex(FromIndex, ToIndex: integer);
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

procedure TfmMonitoring.ChangeIntDoorIndex(FromIndex, ToIndex: integer);
var
  i : integer;
  nChangData : integer;
begin
  nChangData := relIntDoorIndexArray[FromIndex];
  if FromIndex > ToIndex then   //뒤에 있는 놈이 앞으로 오는 경우
  begin
    for i := FromIndex downto ToIndex + 1 do
    begin
      relIntDoorIndexArray[i] := relIntDoorIndexArray[i - 1];
    end;
    relIntDoorIndexArray[ToIndex] := nChangData;
  end else   //앞에 있는 놈이 뒤로 가는 경우
  begin
    for i := FromIndex to ToIndex - 1 do
    begin
      relIntDoorIndexArray[i] := relIntDoorIndexArray[i + 1];
    end;
    relIntDoorIndexArray[ToIndex] := nChangData;
  end;

  for i := LOW(relIntDoorIndexArray) to HIGH(relIntDoorIndexArray) do
  begin
    IntDoorIndexArray[relIntDoorIndexArray[i]] := i;
  end;

end;

procedure TfmMonitoring.sg_IntAccessColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    ChangeIntDoorIndex(FromIndex,ToIndex);
end;

procedure TfmMonitoring.ChangeAlarmIndex(FromIndex, ToIndex: integer);
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

procedure TfmMonitoring.ChangeIntAlarmIndex(FromIndex, ToIndex: integer);
var
  i : integer;
  nChangData : integer;
begin
  nChangData := relIntAlarmIndexArray[FromIndex];
  if FromIndex > ToIndex then   //뒤에 있는 놈이 앞으로 오는 경우
  begin
    for i := FromIndex downto ToIndex + 1 do
    begin
      relIntAlarmIndexArray[i] := relIntAlarmIndexArray[i - 1];
    end;
    relIntAlarmIndexArray[ToIndex] := nChangData;
  end else   //앞에 있는 놈이 뒤로 가는 경우
  begin
    for i := FromIndex to ToIndex - 1 do
    begin
      relIntAlarmIndexArray[i] := relIntAlarmIndexArray[i + 1];
    end;
    relIntAlarmIndexArray[ToIndex] := nChangData;
  end;

  for i := LOW(relIntAlarmIndexArray) to HIGH(relIntAlarmIndexArray) do
  begin
    IntAlarmIndexArray[relIntAlarmIndexArray[i]] := i;
  end;

end;

procedure TfmMonitoring.sg_IntAlarmColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    ChangeIntAlarmIndex(FromIndex,ToIndex);
end;

procedure TfmMonitoring.sg_AlarmColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    ChangeAlarmIndex(FromIndex,ToIndex);

end;

procedure TfmMonitoring.sg_AccessHeaderNameSet;
begin

  with sg_IntAccess do
  begin
    cells[0,0] := '발생일자';
    cells[1,0] := '위치';
    cells[2,0] := '출입문';
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

procedure TfmMonitoring.IntDoorListViewDblClick(Sender: TObject);
var
  stDoorID : string;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  stDoorID:= DoorCodeList[IntdoorListView.ItemIndex];

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'STATECHECK'+ DATADELIMITER + stDoorID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;
{
procedure TfmMonitoring.ShowMessage(aMessage: string);
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
  stReceiveData := aMessage;
  if stReceiveData = 'ALARMREFRESH' then
  begin
    SearchAlarmList;
    Exit;
  end;
  //Delete(stReceiveData,1,1); //처음 맨 앞자리는 R
  stDevice := stReceiveData[2];
  stNodeNo := copy(stReceiveData,3,3);
  stECUID := copy(stReceiveData,6,2);
  stDoorNo := copy(stReceiveData,8,2);
  stReaderNo := copy(stReceiveData,10,2);
  if Not Isdigit(stNodeNo) then Exit;
  if Not Isdigit(stEcuID) then Exit;
  if Not Isdigit(stDoorNo) then Exit;
  if Not Isdigit(stReaderNo) then Exit;
  if Not Isdigit(copy(stReceiveData,15,3)) then Exit;

  stTYPE := copy(stReceiveData,12,2);
  stACTION := copy(stReceiveData,14,1);
  nLength := strtoint(copy(stReceiveData,15,3));
  stData := copy(stReceiveData,18,nLength);

  if stDevice = 'S' then     //서버에서 주는 데이터 처리
  begin
    if UpperCase(stData) = 'RESTART' then
    begin
      Action_ReloadExecute(Self);
      Exit;
    end;
  end else if stDevice = 'N' then //노드 데이터 처리
  begin
    NODEDataProcess(stNodeNo,stTYPE,stACTION,stData);
  end else if stDevice = 'E' then //기기 데이터 처리
  begin
    ECUDataProcess(stNodeNo,stECUID,stTYPE,stACTION,stData);
  end else if stDevice = 'D' then //출입문 데이터 처리
  begin
    DoorDataProcess(stNodeNo,stEcuID,stDoorNo,stType,stACTION,stData);
  end else if stDevice = 'R' then //리더 데이터 처리
  begin
  end else if stDevice = 'A' then //알람 데이터 처리
  begin
    AlarmDataProcess(stNodeNo,stEcuID,stType,stACTION,stData);
  end;
end;
}
procedure TfmMonitoring.LoadJijumCode;
var
  stSql : string;
begin
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


procedure TfmMonitoring.Action_intAlarmHistoryExecute(Sender: TObject);
var
  stNodeNo : string;
  stEcuID : string;
  nAlarmNo : integer;
  stAlarmName : string;
begin

  stNodeNo := copy(sg_IntAlarm.Cells[IntAlarmIndexArray[8],sg_IntAlarm.row],1,3);
  stEcuID := copy(sg_IntAlarm.Cells[IntAlarmIndexArray[8],sg_IntAlarm.row],4,2);
  stAlarmName := sg_IntAlarm.Cells[IntAlarmIndexArray[2],sg_IntAlarm.row];
  if (stNodeNo = '') or (stEcuID = '') then Exit;

  Try
    Try
      fmAlarmHistory:= TfmAlarmHistory.Create(Self);
    Except
      Exit;
    End;
    fmAlarmHistory.stAC_NODENO := stNodeNo;
    fmAlarmHistory.stAC_ECUID := stEcuID;
    fmAlarmHistory.stDeviceName  := stAlarmName + ' ';

    fmAlarmHistory.ShowModal;
  Finally
    fmAlarmHistory.Free;
  End;
end;

procedure TfmMonitoring.sg_IntAccessDblClick(Sender: TObject);
var
  stDoorNo : string;
  nIndex : integer;
begin
  stDoorNo := sg_IntAccess.Cells[IntDoorIndexArray[11],sg_IntAccess.Row];
  if stDoorNo = '' then Exit;
  nIndex:= intDoorCodeList.IndexOf(stDoorNo);
  if nIndex > -1 then
  begin
    IntDoorListView.Items[nIndex].Selected := True;
    IntDoorListView.SetFocus;
  end;

end;

procedure TfmMonitoring.Panel13Resize(Sender: TObject);
begin
  if IntDoorListView.ViewStyle = vsIcon then
  begin
    IntDoorListView.ViewStyle := vsList;
    IntDoorListView.ViewStyle := vsIcon;
    IntDoorListView.Refresh;
  end else if IntDoorListView.ViewStyle = vsList then
  begin
    IntDoorListView.ViewStyle := vsIcon;
    IntDoorListView.ViewStyle := vsList;
    IntDoorListView.Refresh;
  end;
end;

procedure TfmMonitoring.N25Click(Sender: TObject);
begin
  IntAlarmListView.ViewStyle := vsIcon;
  IntAlarmListView.Refresh;

end;

procedure TfmMonitoring.N26Click(Sender: TObject);
begin
  IntAlarmListView.ViewStyle := vsList;
  IntAlarmListView.Refresh;

end;

procedure TfmMonitoring.pm_IntiCloseModeClick(Sender: TObject);
var
  stDoorID : string;
  i : integer;
begin
  if IntdoorListView.SelCount < 1 then Exit;
  if DataModule1.CheckFireOrgin then
  begin
    Application.MessageBox(PChar('화재발생시에는 화재 복구 완료 후에 폐쇄모드 가능합니다.'),'정보',MB_OK);
    Exit;
  end;
  for i := 0 to IntdoorListView.Items.Count - 1 do
  begin
    if IntdoorListView.Items[i].Selected then
    begin
      stDoorID:= DoorCodeList[i];

      self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'CLOSEMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
      self.FindSubForm('Main').FindCommand('SendData').Execute;
      DataModule1.TB_SYSTEMLOGInsert(copy(stDoorID,1,3),copy(stDoorID,4,2),DOORTYPE,copy(stDoorID,6,1),'0000000000','폐쇄모드');
      Delay(200);
    end;
  end;

end;

procedure TfmMonitoring.ChangeAlarmDoorIndex(FromIndex, ToIndex: integer);
var
  i : integer;
  nChangData : integer;
begin
  nChangData := relAlarmDoorIndexArray[FromIndex];
  if FromIndex > ToIndex then   //뒤에 있는 놈이 앞으로 오는 경우
  begin
    for i := FromIndex downto ToIndex + 1 do
    begin
      relAlarmDoorIndexArray[i] := relAlarmDoorIndexArray[i - 1];
    end;
    relAlarmDoorIndexArray[ToIndex] := nChangData;
  end else   //앞에 있는 놈이 뒤로 가는 경우
  begin
    for i := FromIndex to ToIndex - 1 do
    begin
      relAlarmDoorIndexArray[i] := relAlarmDoorIndexArray[i + 1];
    end;
    relAlarmDoorIndexArray[ToIndex] := nChangData;
  end;

  for i := LOW(relAlarmDoorIndexArray) to HIGH(relAlarmDoorIndexArray) do
  begin
    AlarmDoorIndexArray[relAlarmDoorIndexArray[i]] := i;
  end;

end;

procedure TfmMonitoring.sg_alarmAccessColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
begin
    ChangeAlarmDoorIndex(FromIndex,ToIndex);

end;

procedure TfmMonitoring.DoorFireStateChange(NodeNo:integer;
          aEcuID, aDoorNo:string; aFireState:Boolean);
var
  stDoorID : string;
  nDoorIndex : integer;
begin
  if Not aFireState then Exit;
  stDoorID := FillZeroNumber(NodeNo,3) + aEcuID + aDoorNo;
  nDoorIndex:= DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;

  if IntdoorListView.Items[nDoorIndex].ImageIndex <> DoorFireStateImageIndex then
  begin
    IntdoorListView.Items[nDoorIndex].ImageIndex := DoorFireStateImageIndex;
    IntdoorListView.Refresh;
  end;

end;

procedure TfmMonitoring.DoorStateChange(NodeNo: integer; aEcuID,
  aDoorNo: string; aDoorManageType: TDoorManageMode;
  aDoorPNType: TDoorPNMode; aDoorStateType: TDoorState;
  aDoorLockType: TDoorLockState);
var
  stDoorID : string;
  nDoorIndex : integer;
  nDeviceIndex : integer;
  bFire : Boolean;
begin
  bFire := False;
  nDeviceIndex := DeviceList.IndexOf(FillZeroNumber(NodeNo,3) + aEcuID);
  if nDeviceIndex > -1 then
  begin
    if isDigit(aDoorNo) then
      bFire := TDevice(DeviceList.Objects[nDeviceIndex]).GetDoorFire(strtoint(aDoorNo));
  end;
  stDoorID := FillZeroNumber(NodeNo,3) + aEcuID + aDoorNo;
  nDoorIndex:= DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;

  if bFire then
  begin
    IntdoorListView.Items[nDoorIndex].ImageIndex:= DoorFireStateImageIndex;
  end else
  begin
    if aDoorStateType = dsClose then
    begin
      IntdoorListView.Items[nDoorIndex].ImageIndex:= DoorCloseStateImageIndex;
    end else if aDoorStateType = dsOpen then
    begin
      IntdoorListView.Items[nDoorIndex].ImageIndex:= DoorOpenStateImageIndex;
    end else if aDoorStateType = dsLongTime then
    begin
      IntdoorListView.Items[nDoorIndex].ImageIndex:= DoorLongTimeStateImageIndex;
    end else
    begin
      IntdoorListView.Items[nDoorIndex].ImageIndex:= DoorNothingStateImageIndex;
    end;
  end;

  if aDoorPNType = pnPositive then
  begin
    if  aDoorManageType = dmManager then
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorPosiManageStateIndex;
    end else if aDoorManageType = dmOpen then
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end else if aDoorManageType = dmLock then
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorCloseModeStateIndex;
    end else
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end;
  end else if aDoorPNType = pnNegative then
  begin
    if  aDoorManageType = dmManager then
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorNegaManageStateIndex;
    end else if aDoorManageType = dmOpen then
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end else if aDoorManageType = dmLock then
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorCloseModeStateIndex;
    end else
    begin
      IntdoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
    end;
  end else
  begin
    IntdoorListView.Items[nDoorIndex].StateIndex := DoorOpenModeStateIndex;
  end;
  IntdoorListView.Refresh;

end;

procedure TfmMonitoring.DeviceConnected(NodeNo: integer; aEcuID: string;
  aConnected: Boolean);
var
  aTreeView   : TTreeview;
  aNode       : TTreeNode;
  nDeviceIndex : integer;
  nNodeIndex : integer;
  stDeviceID : string;
  stCaption : string;
begin
  stDeviceID := 'E' + FillZeroNumber(NodeNo,3) + aEcuID;
  nDeviceIndex := DeviceCodeList.IndexOf(stDeviceID);
  if nDeviceIndex < 0 then Exit;
  DeviceLastTimeList.Strings[nDeviceIndex] := FormatDateTime('yyyy-mm-dd HH:MM:SS',Now);
  stCaption := DeviceCaptionList.Strings[nDeviceIndex];

  aTreeView := TreeView_Device;
  if aTreeView.Items.Count < 1 then Exit;

  aNode:= GetNodeByText(aTreeView,stCaption,False);
  if aNode = Nil then Exit;
  if aConnected then
  begin
    if aNode.ImageIndex <> DeviceConnectImageIndex then aNode.ImageIndex:=DeviceConnectImageIndex;
    if aNode.SelectedIndex <> DeviceConnectImageIndex then aNode.SelectedIndex:=DeviceConnectImageIndex;
  end else
  begin
    if aNode.ImageIndex <> DeviceDisConnectImageIndex then aNode.ImageIndex:=DeviceDisConnectImageIndex;
    if aNode.SelectedIndex <> DeviceDisConnectImageIndex then aNode.SelectedIndex:=DeviceDisConnectImageIndex;
  end;

  aNode.StateIndex:= -1;
  aTreeView.Refresh;

end;

procedure TfmMonitoring.AlarmModeChanged(NodeNo: integer; aEcuID,aArmAreaNo: string;
  aWachMode: TWatchMode);
var
  nAlarmIndex : integer;
begin
  nAlarmIndex := ArmAreaCodeList.IndexOf(FillzeroNumber(NodeNo,3) + aEcuID + aArmAreaNo );
  if nAlarmIndex < 0 then Exit;// 관제 권한이 없음

  case aWachMode of
    cmNothing :
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= AlarmNothingStateImageIndex;
      end;
    cmArm :
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= AlarmModeStateImageIndex;
      end;
    cmDisarm :
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= DisAlarmModeStateImageIndex;
      end;
    cmPatrol :
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= AlarmPatrolStateImageIndex;
      end;
    cmInit :
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= AlarmInitStateImageIndex;
      end;
    cmTest :
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= AlarmTestStateImageIndex;
      end;
    else
      begin
        IntAlarmListView.Items[nAlarmIndex].ImageIndex:= AlarmNothingStateImageIndex;
      end;
  end;
  IntAlarmListView.Refresh;

end;

procedure TfmMonitoring.DeviceAlarmEventProcess(NodeNo: integer;
  ECUID: string;aArmAreaNo:integer; aAlaramState: TAlarmEventState);
var
  nAlarmIndex : integer;
begin
  nAlarmIndex := ArmAreaCodeList.IndexOf(FillzeroNumber(NodeNo,3) + ECUID + inttostr(aArmAreaNo) );
  if nAlarmIndex < 0 then Exit;

  case aAlaramState of
    aeNothing :
      begin
        IntAlarmListView.Items[nAlarmIndex].StateIndex:= NothingStateIndex;
      end;
    aeNormal :
      begin
        IntAlarmListView.Items[nAlarmIndex].StateIndex:= NothingStateIndex;
      end;
    aeNormalEvent :
      begin
        IntAlarmListView.Items[nAlarmIndex].StateIndex:= NormalEventStateIndex;
      end;
    aeAlarmEvent :
      begin
        IntAlarmListView.Items[nAlarmIndex].StateIndex:= AlarmEventStateIndex;
      end;
    else
      begin
      end;
  end;
  IntAlarmListView.Refresh;

end;

procedure TfmMonitoring.AlarmEventProcess(NodeNo: integer; ECUID, aCmd,
  aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode, aStatusCode,
  aPortNo, aState, aOperator, aNewStateCode: string; aAlarmView,
  aAlarmSound: Boolean);
var
  nAlarmIndex : integer;
  nDeviceIndex : integer;

  stAlarmID : string;
  stAlarmName : string;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stBuildingID : string;
  stBuildingName : string;
  nBuildingIndex : integer;
  nResult : integer;
  nAlarmSound : integer;

  stStatusName : string;
  stStatusPosi : string;
  stPortName : string;
  stModeStr : string;
  stSubClassName : string;
begin
  if Not isDigit(aZoneCode) then aZoneCode := '0';
  stStatusPosi := aSubAddr;

  stAlarmID := FillZeroNumber(NodeNo,3) + ECUID + inttostr(strtoint(aZoneCode));
  nAlarmIndex := ArmAreaCodeList.IndexOf(stAlarmID);

  if nAlarmIndex > -1 then
  begin
    stBuildingName := ''; //경계구역 위치
    stAlarmName:= IntAlarmListView.Items[nAlarmIndex].Caption; // 경계구역 명
  end else
  begin
    nDeviceIndex := DeviceList.IndexOf(FillZeroNumber(NodeNo,3) + ECUID);
    if nDeviceIndex < 0 then Exit; //등록되지 않은 기기
    stAlarmName := TDevice(DeviceList.Objects[nDeviceIndex]).DeviceName + '-' + inttostr(strtoint(aZoneCode));
  end;

  nResult:= GetStatusCode(aStatusCode,aNewStateCode,stStatusName,nAlarmSound);
  if aPortNo <> '**' then
  begin
    if aState <> 'N' then
    begin
      stPortName := GetPortName(FillZeroNumber(NodeNo,3),ECUID,aPortNo);
      if stStatusName = '' then
      begin
        stStatusName := '' + aPortNo + '번 침입' + '  ' + stPortName;// + stStatusName; //+ stPortNo +'번존 감지'; //stStatusName;    //어떤 조건으로 감지 되었는지 표시
      end else
      begin
        stStatusName := '' + stStatusName + '  ' + stPortName ;
      end;
    end else
    begin
      aAlarmSound := False;
      stStatusName := stStatusName +'[복구]' + stPortName ;
    end;
  end;
  case UpperCase(aMode)[1] of
   'A': begin stModeStr:= '경계모드[A]' end;
   'D': begin stModeStr:= '해제모드[D]' end;
   'T': begin stModeStr:= '시험모드[T]' end;
   'I': begin stModeStr:= '등록모드[I]' end;
   'P': begin stModeStr:= '순회모드[P]' end;
  else  begin stModeStr:= '미등록모드['+aMode[1]+']' end;
  end;
  stStatusName := stStatusName + '/' + stModeStr;

  nAlarmSound := 0;
  if aAlarmSound then
  begin
    nAlarmSound := 1;
    if PTAlarmUse then
    begin
      if aCmd = 'A' then
      begin
        self.FindSubForm('Main').FindCommand('AlarmSound').Params.Values['VALUE'] := PTAlaramFile;
        self.FindSubForm('Main').FindCommand('AlarmSound').Execute;
      end;
    end;
  end;
  if aAlarmView then
  begin
    stSubClassName := GetDeviceTypeName(aSubCLass);
    if aCmd = 'A' then
    begin
      InsertAlarmList(aTime, //시간
                    stBuildingName, //위치정보
                    stAlarmName, //경계구역명칭
                    ECUID ,//+'['+stMsgNo+']',  //기기번호[메시지번호]
                    stSubClassName,         //기기타입[번호]
                    aStatusCode + '/' + aPortNo,  //이벤트코드
                    stStatusPosi,
                    stStatusName,
                    FillZeroNumber(NodeNo,3) + ECUID,
                    nAlarmSound,
                    sg_IntAlarm);  //이벤트 내용
    end;
  end;

  if PTAlarmMessageUse then  //ZONE Sensing Message Use
  begin
    if aCmd = 'A' then
    begin
      st_Message.Caption := stStatusName;
      if isDigit(aPortNo) then
      begin
        st_Message.Caption := stAlarmName + ':' + aPortNo + '번 존 감지!!!';
      end;
      if aAlarmSound then
      begin
        Pan_Message.Visible := True;
        MessageTimer.Enabled := True;
      end;
    end;
  end;

end;

procedure TfmMonitoring.MessageTimerTimer(Sender: TObject);
begin
  st_Message.Visible := Not st_Message.Visible;

end;

procedure TfmMonitoring.btn_AlarmConfirmClick(Sender: TObject);
begin
  MessageTimer.Enabled := False;
  pan_Message.visible := False;

end;

procedure TfmMonitoring.CenterPanel;
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

procedure TfmMonitoring.FormResize(Sender: TObject);
begin
  CenterPanel;
end;

procedure TfmMonitoring.ExitButtonPress(NodeNo: integer; aEcuID, aDoorNo,
  aTime, aInputType,aUserName,aPermitCode,aPermit: string);
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
  nDeviceIndex := DeviceList.IndexOf(stDeviceID);
  if nDeviceIndex < 0 then
  begin
    //등록되지 않은 기기 데이터
    Exit;
  end;
  stDoorID := stDeviceID + aDoorNo;
  nDoorIndex := DoorCodeList.IndexOf(stDoorID);
  if nDoorIndex < 0 then Exit;
  stDoorName := IntDoorListView.Items[nDoorIndex].Caption;

  if ACAlarmUse then
  begin
    if Not Isdigit(aPermitCode) then
    begin
      self.FindSubForm('Main').FindCommand('AlarmSound').Params.Values['VALUE'] := ACAlaramFile;
      self.FindSubForm('Main').FindCommand('AlarmSound').Execute;
    end;
  end;

  InsertDOORList(aPermitCode,aPermit,aTime,stBuildingName,stDoorName,aInputType,aUserName,
  '','','','',stDoorID,sg_IntAccess);
end;

procedure TfmMonitoring.AccessEventProcess(NodeNo: integer; aEcuID,
  aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
  aButton,aArmAreaNo: string);
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
  nDeviceIndex := DeviceList.IndexOf(stDeviceID);
  if nDeviceIndex < 0 then
  begin
    //showmessage(stDeviceID);
    //등록되지 않은 기기 데이터
    Exit;
  end;
  if aDoorNo = '0' then
  begin
    if Not isDigit(aArmAreaNo) then aArmAreaNo := '0';
    aArmAreaNo := inttostr(strtoint(aArmAreaNo));
    nDoorIndex := ArmAreaCodeList.IndexOf(stDeviceID + aArmAreaNo);
    if nDoorIndex < 0 then //
    begin
      stDoorName:= TDevice(DeviceList.Objects[nDeviceIndex]).DeviceName + '_' + aReaderNo + '번 리더';
    end else
    begin
      stDoorName:= IntAlarmListView.Items[nDoorIndex].Caption; // 경계구역 명
    end;
  end else
  begin
    stDoorID := stDeviceID + aDoorNo;
    nDoorIndex := DoorCodeList.IndexOf(stDoorID);
    if nDoorIndex < 0 then
    begin
      nDoorIndex := ArmAreaCodeList.IndexOf(stDeviceID + '0');
      if nDoorIndex < 0 then //
      begin
        stDoorName:= TDevice(DeviceList.Objects[nDeviceIndex]).DeviceName + '_' + aReaderNo + '번 리더';
      end else
      begin
        stDoorName:= IntAlarmListView.Items[nDoorIndex].Caption; // 경계구역 명
      end;
    end else
    begin
      stDoorName := IntDoorListView.Items[nDoorIndex].Caption;
    end;
  end;

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

(*  if aDoorNo <> '0' then
  begin
    if nDoorIndex > -1 then
    begin
      if IntdoorListView.Items.Count > nDoorIndex - 1  then
      begin
        IntdoorListView.Items[nDoorIndex].SubItems.Strings[5] := aInputType[1];
        IntdoorListView.Items[nDoorIndex].SubItems.Strings[6] := aPermit[1];
        IntdoorListView.Items[nDoorIndex].SubItems.Strings[7] := stEmName;
      end;
    end;
  end;
*)

  InsertDOORList(aPermit,stPermitName,aTime,stBuildingName,stDoorName,aCardNo,stEmName,
    stCompanyName,stJijumName,stDepartName,stEmCode,stDoorID,sg_IntAccess);
end;

procedure TfmMonitoring.NodeConnectState(NodeNo: integer;
  aConnectState: TNodeCurrentState);
var
  aTreeView   : TTreeview;
  aNode       : TTreeNode;
  stCaption   : string;
  nIndex      : integer;
begin
  nIndex := DeviceCodeList.IndexOf('N'+FillZeroNumber(NodeNo,3));
  if nIndex < 0 then Exit;
  DeviceLastTimeList.Strings[nIndex] := FormatDateTime('yyyy-mm-dd HH:MM:SS',Now);
  stCaption := DeviceCaptionList.Strings[nIndex];

  aTreeView := TreeView_Device;
  if aTreeView.Items.Count < 1 then Exit;
  aNode:= GetNodeByText(aTreeView,stCaption,False);
  if aNode = Nil then Exit;

  case aConnectState of
    nsDisConnected :
      begin
        aNode.ImageIndex:=NodeDisConnectImageIndex;
        aNode.SelectedIndex:=NodeDisConnectImageIndex;
        aNode.StateIndex:= NothingStateIndex;
      end;
    nsConnected :
      begin
        aNode.ImageIndex:=NodeConnectImageIndex;
        aNode.SelectedIndex:=NodeConnectImageIndex;
        aNode.StateIndex:= NothingStateIndex;
      end;
    nsFault :
      begin
        aNode.ImageIndex:=NodeConnectImageIndex;
        aNode.SelectedIndex:=NodeConnectImageIndex;
        aNode.StateIndex:= NothingStateIndex;
      end;
    else
      begin
        aNode.ImageIndex:=NodeDisConnectImageIndex;
        aNode.SelectedIndex:=NodeDisConnectImageIndex;
        aNode.StateIndex:= NothingStateIndex;
      end;
  end;
  aTreeView.Refresh;
end;

procedure TfmMonitoring.SetLogin(const Value: Boolean);
begin
//  if FLogin = Value then Exit;
  FLogin := Value;

  TreeView_Device.Enabled := Value;
  IntDoorListView.Enabled := Value;
  IntAlarmListView.Enabled := Value;
  sg_IntAccess.Enabled := Value;
  sg_IntAlarm.Enabled := Value;
end;

procedure TfmMonitoring.DeviceReLoad;
begin
  Action_ReloadExecute(self);
end;

procedure TfmMonitoring.Form_UserClose;
begin
  Close;
end;

procedure TfmMonitoring.MonitorRefresh;
begin
  Action_ReloadExecute(self);
end;

function TfmMonitoring.GetDeviceTypeName(aSubCLass: string): string;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  result := aSubCLass ;

  stSql := 'select AL_ALARMDEVICETYPENAME from TB_ALARMDEVICETYPECODE  ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AL_ALARMDEVICETYPECODE = ''' + aSubCLass + ''' ' ;

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
      if recordCount > 0  then result := FindField('AL_ALARMDEVICETYPENAME').AsString;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmMonitoring.ArmAreaLoad(AlarmList: TListView);
var
  stAlarmID : string;
  i,j,k : integer;
  nAlarmIndex : integer;
  stNodeNo : string;
begin
  if L_bClose then Exit;
  ArmAreaCodeList.Clear;
  ArmAreaLocateList.Clear;
  AlarmList.Clear;

  j := 0;
  for i := 0 to DeviceList.Count - 1 do
  begin
    stNodeNo := FillZeroNumber(TDevice(DeviceList.Objects[i]).NodeNo,3);
    for k := 0 to con_nFIXMAXAREANO do
    begin
      if TDevice(DeviceList.Objects[i]).GetArmAreaUse(k) then //방범구역 사용 중이면
      begin
        AlarmList.Items.Add.Caption:= TDevice(DeviceList.Objects[i]).GetArmAreaName(k);
        stAlarmID:= stNodeNo + TDevice(DeviceList.Objects[i]).ECUID + inttostr(k);
        AlarmList.Items[j].SubItems.Add(stAlarmID);
        AlarmList.Items[j].SubItems.Add(stNodeNo); //노드번호
        AlarmList.Items[j].SubItems.Add('0000000'); //MCUID
        AlarmList.Items[j].SubItems.Add(TDevice(DeviceList.Objects[i]).ECUID); //ECUID
        if TDevice(DeviceList.Objects[i]).GetArmAreaState(k) = cmArm then
        begin
          AlarmList.Items[j].ImageIndex:=AlarmModeStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetArmAreaState(k) = cmDisarm then
        begin
          AlarmList.Items[j].ImageIndex:=DisAlarmModeStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetArmAreaState(k) = cmPatrol then
        begin
          AlarmList.Items[j].ImageIndex:= AlarmPatrolStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetArmAreaState(k) = cmInit then
        begin
          AlarmList.Items[j].ImageIndex:= AlarmInitStateImageIndex;
        end else if TDevice(DeviceList.Objects[i]).GetArmAreaState(k) = cmTest then
        begin
          AlarmList.Items[j].ImageIndex:= AlarmTestStateImageIndex;
        end else
        begin
          AlarmList.Items[j].ImageIndex:= AlarmNothingStateImageIndex;
        end;
        inc(j);
      end;
    end;
  end;

  ArmAreaCodeList.Clear;
  for i:=0 to AlarmList.Items.Count - 1 do
  begin
    ArmAreaCodeList.Add(AlarmList.Items[I].SubItems.Strings[0]);  //경비구역의 코드를 등록하자
  end;
  AlarmList.ViewStyle := vsIcon;
  AlarmList.Refresh;
  AlarmList.ViewStyle := vsList;

end;

initialization
  RegisterClass(TfmMonitoring);
Finalization
  UnRegisterClass(TfmMonitoring);

end.
