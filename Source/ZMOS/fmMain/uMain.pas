unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ExtCtrls, Menus, jpeg, ActnList,
  uSubForm,  OoMisc, AdPort, AdWnPort, StdCtrls,iniFiles,
  vCal, PlannerCal, Planner, PlanSimpleEdit, Grids, CommandArray, Gauges,ADODB,
  DB,ActiveX, LMDCustomComponent, LMDIniCtrl,
  uServerConnectModule,systeminfos, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, MHttpWorker, OleCtrls, SHDocVw,
  SyncObjs,
  uDeviceState,uMonitoringCommonVariable,uMonitoringDataProcess,uDataModule1,
  MPlayer,mmSystem;

type
  TControlSendThread = class(TThread)
  private
  protected
    procedure Execute; override;
    procedure ControlDataSend(aData:string) ;
  public
  end;
  TReceiveMonitorThread = class(TThread)
  private
  protected
    procedure Execute; override;
    procedure MonitorProcess(aData:string) ;
  public
  end;


  TfmMain = class(TfmASubForm)
    MainMenu1: TMainMenu;
    mn_PG: TMenuItem;
    mn_Login: TMenuItem;
    Mn_LogOff: TMenuItem;
    N2: TMenuItem;
    mn_Close: TMenuItem;
    N3: TMenuItem;
    mn_PGInfo: TMenuItem;
    MN_BasicCode: TMenuItem;
    MN_CompanyCode: TMenuItem;
    mn_DepartCode: TMenuItem;
    mn_Posicode: TMenuItem;
    mn_Device: TMenuItem;
    mn_AccessCode: TMenuItem;
    mn_AlarmCode: TMenuItem;
    mn_DeviceConfig: TMenuItem;
    mn_Manager: TMenuItem;
    mn_Employee: TMenuItem;
    mn_AcceesGrade: TMenuItem;
    mn_PersonGradeSearch: TMenuItem;
    mn_DeviceGradeSearch: TMenuItem;
    mn_ProgramConfig: TMenuItem;
    mn_AttendConfigSetting: TMenuItem;
    mn_ZipCode: TMenuItem;
    N23: TMenuItem;
    mn_AccessDeviceTypeCode: TMenuItem;
    mn_AccessStateCode: TMenuItem;
    mn_AlarmStateCode: TMenuItem;
    mn_AlarmManageCode: TMenuItem;
    mn_AlarmDeviceTypeCode: TMenuItem;
    mn_AlarmModeCode: TMenuItem;
    mn_GradeDownload: TMenuItem;
    mn_FoodConfigSetting: TMenuItem;
    mn_InitConfigSetting: TMenuItem;
    mn_ProgramConfigSetting: TMenuItem;
    mn_DataBase: TMenuItem;
    mn_DBBackup: TMenuItem;
    mn_DataDelete: TMenuItem;
    mn_System: TMenuItem;
    mn_GradeAdmin: TMenuItem;
    mn_GradeProgramAdmin: TMenuItem;
    mn_SystemUserAdmin: TMenuItem;
    mn_Report: TMenuItem;
    mn_AccessReport: TMenuItem;
    mn_AlarmReport: TMenuItem;
    Image1: TImage;
    ToolBar1: TToolBar;
    btnDaemonConnect: TToolButton;
    btnEmploy: TToolButton;
    btnAccessAdmin: TToolButton;
    BtnDeviceAdmin: TToolButton;
    Menu_ImageList: TImageList;
    btnMonitor: TToolButton;
    ActionList1: TActionList;
    Action_Monitoring: TAction;
    Action_Login: TAction;
    StatusBar1: TStatusBar;
    mn_LocateAdmin: TMenuItem;
    mn_DeviceAdmin: TMenuItem;
    mn_Monitoring: TMenuItem;
    mn_CurrentState: TMenuItem;
    mn_DoorControl: TMenuItem;
    mn_TotClose: TMenuItem;
    mn_TotOpen: TMenuItem;
    mn_AlarmControl: TMenuItem;
    mn_TotAlarm: TMenuItem;
    mn_TotCancel: TMenuItem;
    Action_LogOut: TAction;
    Action_Employ: TAction;
    Action_CardAdmin: TAction;
    Action_DeviceGradeSearch: TAction;
    Action_TotClose: TAction;
    btn_CurrentState: TToolButton;
    Action_StateSearch: TAction;
    Action_TotOpen: TAction;
    Action_TotAlarm: TAction;
    Action_TotCancel: TAction;
    mn_DepartGradeAdmin: TMenuItem;
    WinsockPort: TApdWinsockPort;
    SendDaemonTimer: TTimer;
    Action_DeviceCard: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    Action_CardDownLoad: TAction;
    Action1: TAction;
    SaveDialog1: TSaveDialog;
    SimpleItemEditor1: TSimpleItemEditor;
    N7: TMenuItem;
    mn_ComState: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Pan_Gauge: TPanel;
    Gauge1: TGauge;
    StaticText1: TStaticText;
    N10: TMenuItem;
    ServerConnectTimer: TTimer;
    N11: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    mn_BatchEmployee: TMenuItem;
    ADOQuery: TADOQuery;
    mn_Sensor: TMenuItem;
    FTP1: TMenuItem;
    mn_JijumCode: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    mn_PerEmployee: TMenuItem;
    N24: TMenuItem;
    N1: TMenuItem;
    mn_cardDownLoad: TMenuItem;
    N25: TMenuItem;
    LiveTimer: TTimer;
    NowTimer: TTimer;
    mn_RelaySamyukEmploy: TMenuItem;
    StateCheckTimer: TTimer;
    mn_readerState: TMenuItem;
    mn_readerHistory: TMenuItem;
    N4: TMenuItem;
    N12: TMenuItem;
    LMDIniCtrl1: TLMDIniCtrl;
    PeronRelayTimer1: TTimer;
    mn_InOutReport: TMenuItem;
    mn_KTCardCreate: TMenuItem;
    mn_KTLine: TMenuItem;
    N19: TMenuItem;
    mn_EmpType: TMenuItem;
    N20: TMenuItem;
    Action_GroupMonitoring: TAction;
    pan_Message: TPanel;
    StaticText2: TStaticText;
    st_Message: TStaticText;
    MessageTimer: TTimer;
    N26: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    N27: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    mn_EmployeeBranch: TMenuItem;
    Action_DoorTypeMonitoring: TAction;
    Action_KTTypeMonitoring: TAction;
    mn_KHUEmployee: TMenuItem;
    mn_KHUEmpInitial: TMenuItem;
    test1: TMenuItem;
    mn_Fireline: TMenuItem;
    mn_FireRecover: TMenuItem;
    AdoConnectCheckTimer: TTimer;
    mn_LOMOSEmployee: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    IdFTP1: TIdFTP;
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    mn_KTIssusNReg: TMenuItem;
    mn_DeviceVerInfo: TMenuItem;
    N40: TMenuItem;
    N39: TMenuItem;
    N41: TMenuItem;
    N33: TMenuItem;
    N42: TMenuItem;
    mn_NotCardReport: TMenuItem;
    mn_TimeAccessReport: TMenuItem;
    N43: TMenuItem;
    mn_CardList: TMenuItem;
    mn_cardValidDate: TMenuItem;
    mn_lomosLine: TMenuItem;
    mn_LOMOSBackup: TMenuItem;
    Action_AlarmTypeMonitoring: TAction;
    ControlSocketPort: TApdWinsockPort;
    MediaPlayer1: TMediaPlayer;
    DaemonReceiveTimer: TTimer;
    AlarmSound: TTimer;
    Action_AccessTypeMonitoring: TAction;
    N44: TMenuItem;
    N45: TMenuItem;
    mn_empChangeReport: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mn_CloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action_LoginExecute(Sender: TObject);
    procedure Action_LogOutExecute(Sender: TObject);
    procedure Action_MonitoringExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CommandArrayCommandsTCommand0Execute(Command: TCommand;
      Params: TStringList);
    procedure Action_StateSearchExecute(Sender: TObject);
    procedure Action_TotCloseExecute(Sender: TObject);
    procedure Action_TotOpenExecute(Sender: TObject);
    procedure Action_TotAlarmExecute(Sender: TObject);
    procedure Action_TotCancelExecute(Sender: TObject);
    procedure MN_CompanyCodeClick(Sender: TObject);
    procedure mn_DepartCodeClick(Sender: TObject);
    procedure mn_PosicodeClick(Sender: TObject);
    procedure mn_ZipCodeClick(Sender: TObject);
    procedure mn_GradeAdminClick(Sender: TObject);
    procedure mn_GradeProgramAdminClick(Sender: TObject);
    procedure mn_SystemUserAdminClick(Sender: TObject);
    procedure mn_DepartGradeAdminClick(Sender: TObject);
    procedure mn_AccessStateCodeClick(Sender: TObject);
    procedure mn_AlarmStateCodeClick(Sender: TObject);
    procedure mn_AlarmManageCodeClick(Sender: TObject);
    procedure mn_AlarmDeviceTypeCodeClick(Sender: TObject);
    procedure mn_DeviceAdminClick(Sender: TObject);
    procedure mn_LocateAdminClick(Sender: TObject);
    procedure Action_EmployExecute(Sender: TObject);
    procedure WinsockPortTriggerAvail(CP: TObject; Count: Word);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure WinsockPortWsConnect(Sender: TObject);
    procedure WinsockPortWsError(Sender: TObject; ErrCode: Integer);
    procedure WinsockPortWsDisconnect(Sender: TObject);
    procedure btnDaemonConnectClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand1Execute(Command: TCommand;
      Params: TStringList);
    procedure SendDaemonTimerTimer(Sender: TObject);
    procedure Action_CardAdminExecute(Sender: TObject);
    procedure Action_CardDownLoadExecute(Sender: TObject);
    procedure CommandArrayCommandsTCommand2Execute(Command: TCommand;
      Params: TStringList);
    procedure Action_DeviceGradeSearchExecute(Sender: TObject);
    procedure mn_DBBackupClick(Sender: TObject);
    procedure mn_ProgramConfigSettingClick(Sender: TObject);
    procedure mn_AccessReportClick(Sender: TObject);
    procedure mn_AlarmReportClick(Sender: TObject);
    procedure mn_ComStateClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand3Execute(Command: TCommand;
      Params: TStringList);
    procedure N9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure CommandArrayCommandsTCommand4Execute(Command: TCommand;
      Params: TStringList);
    procedure ServerConnectTimerTimer(Sender: TObject);
    procedure Action_DeviceCardExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure mn_BatchEmployeeClick(Sender: TObject);
    procedure mn_SensorClick(Sender: TObject);
    procedure LiveTimerTimer(Sender: TObject);
    procedure mn_JijumCodeClick(Sender: TObject);
    procedure NowTimerTimer(Sender: TObject);
    procedure mn_RelaySamyukEmployClick(Sender: TObject);
    procedure StateCheckTimerTimer(Sender: TObject);
    procedure mn_readerHistoryClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure PeronRelayTimer1Timer(Sender: TObject);
    procedure mn_InOutReportClick(Sender: TObject);
    procedure mn_KTCardCreateClick(Sender: TObject);
    procedure mn_EmpTypeClick(Sender: TObject);
    procedure Action_GroupMonitoringExecute(Sender: TObject);
    procedure CommandArrayCommandsTGroupMonitoringExecute(
      Command: TCommand; Params: TStringList);
    procedure StaticText2Click(Sender: TObject);
    procedure MessageTimerTimer(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure btnMonitorClick(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure CommandArrayCommandsTMulitServerSendExecute(
      Command: TCommand; Params: TStringList);
    procedure CommandArrayCommandsTSERVERSTATEExecute(Command: TCommand;
      Params: TStringList);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure mn_EmployeeBranchClick(Sender: TObject);
    procedure Action_DoorTypeMonitoringExecute(Sender: TObject);
    procedure CommandArrayCommandsTDoorTypeMonitorExecute(
      Command: TCommand; Params: TStringList);
    procedure Action_KTTypeMonitoringExecute(Sender: TObject);
    procedure CommandArrayCommandsTKTTYPEMONITORExecute(Command: TCommand;
      Params: TStringList);
    procedure mn_KHUEmployeeClick(Sender: TObject);
    procedure mn_KHUEmpInitialClick(Sender: TObject);
    procedure test1Click(Sender: TObject);
    procedure mn_FireRecoverClick(Sender: TObject);
    procedure AdoConnectCheckTimerTimer(Sender: TObject);
    procedure mn_LOMOSEmployeeClick(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure mn_KTIssusNRegClick(Sender: TObject);
    procedure mn_DeviceVerInfoClick(Sender: TObject);
    procedure mn_TimeAccessReportClick(Sender: TObject);
    procedure mn_NotCardReportClick(Sender: TObject);
    procedure FTP1Click(Sender: TObject);
    procedure mn_CardListClick(Sender: TObject);
    procedure mn_cardValidDateClick(Sender: TObject);
    procedure mn_LOMOSBackupClick(Sender: TObject);
    procedure Action_AlarmTypeMonitoringExecute(Sender: TObject);
    procedure CommandArrayCommandsTAlarmTypeMonitorExecute(
      Command: TCommand; Params: TStringList);

    procedure ControlSocketPortWsConnect(Sender: TObject);
    procedure ControlSocketPortWsDisconnect(Sender: TObject);
    procedure ControlSocketPortWsError(Sender: TObject; ErrCode: Integer);
    procedure ControlSocketPortTriggerAvail(CP: TObject; Count: Word);
    procedure CommandArrayCommandsTAlarmSoundExecute(Command: TCommand;
      Params: TStringList);
    procedure DaemonReceiveTimerTimer(Sender: TObject);
    procedure AlarmSoundTimer(Sender: TObject);
    procedure Action_AccessTypeMonitoringExecute(Sender: TObject);
    procedure CommandArrayCommandsTAccessTypeMonitorExecute(
      Command: TCommand; Params: TStringList);
    procedure N45Click(Sender: TObject);
    procedure CommandArrayCommandsTAlarmReportExecute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandsTLOCATIONMAPExecute(Command: TCommand;
      Params: TStringList);
    procedure mn_empChangeReportClick(Sender: TObject);
  private
    FLogined: Boolean;
    FPrivileges: String;
    FMonitoring: Boolean;
    stPrivileges:String;
    ServerComBuff: String;
    ControlComBuff: String; //���� ��� ���ź�
    DaemonServerIP : string;
    DaemonServerPort : string;
    ControlPort : string;
    StatePort : string;
    EventPort : string;

    SendData : string;

    FailCount : integer; //�۽Ž��� Ƚ��
    IsFormShow : Boolean;
    FComMonitoring: Boolean;
    bSending : Boolean;    //������ ������
    L_bClose : Boolean;
    L_bSound : Boolean;
    FGroupMonitoring: Boolean; //���ݱ�
    bApplicationTerminate : Boolean;
    FDoorTypeMonitoring: Boolean;
    FKTTypeMonitoring: Boolean;
    L_bFireRecoverUse : Boolean;
    FFTPDownLoadShow: Boolean;
    FAlarmTypeMonitoring: Boolean;
    FDaemonServerConnected: Boolean;
    FControlSocketConnected: Boolean;
    FAccessTypeMonitoring: Boolean; //ȭ����ü���� �������

    { Private declarations }

    Function  MDIForm(FormName:string):TForm;
    Procedure MDIChildShow(FormName:String);
    Procedure MDIChildGradeShow(FormName:String;aInsertGrade,aUpdateGrade,aDeleteGrade:Boolean);
    procedure SetLogined(const Value: Boolean);
    procedure SetPrivileges(const Value: String);
    Procedure TravelMenuItem(MenuItem:TMenuItem;ProgIDs:String);
    Procedure TravelMenuView(MenuItem:TMenuItem;ProgIDs:String);
    Procedure TravelToolBar(ToolBar:TToolBar;ProgIDs:String);
    Procedure TravelToolButton(ToolButton:TToolButton;ProgIDs:String);
    procedure SetMonitoring(const Value: Boolean);
    procedure InitConfigSet;
    procedure RelayConfigSet;
    Procedure MenuViewSetting;
    procedure FormNameSet;
    procedure MenuNameSet;
    Procedure SendDaemon(aData:string);
    Function  DBBackup(aDBName,aBackupFile:string):Boolean;
    procedure SetComMonitoring(const Value: Boolean);
    procedure CenterPanel;
    procedure DeviceRcvRegCardData(aData:string);
    procedure GetProgramGrade(aProgID:string;var aInsertGrade,aUpdateGrade,aDeleteGrade:Boolean);
    procedure ClientConfigRead;
    procedure SetGroupMonitoring(const Value: Boolean);

    procedure MonitorStart;
    procedure DaemonRestart;
    procedure MonitoringDataProcess(aData:string;aDaemonNo:integer=0);
    procedure SetDoorTypeMonitoring(const Value: Boolean);
    procedure SetKTTypeMonitoring(const Value: Boolean);
    procedure SetFTPDownLoadShow(const Value: Boolean);
    procedure SetAlarmTypeMonitoring(const Value: Boolean);
    procedure SetFDaemonServerConnected(const Value: Boolean);
    procedure SetFControlSocketConnected(const Value: Boolean);
    procedure SetAccessTypeMonitoring(const Value: Boolean);
  private
    ServerList : TStringList;
    DeviceList : TStringList;
    Function LoadMultiServer :Boolean;  //��Ƽ������ �ε� �Ѵ�.
    Function LoadMultiDevice :Boolean;  //��Ƽ������ �ش��ϴ� ��⸦ �ε��Ѵ�.
    Procedure CommNodeReceve(Sender: TObject;  ReceiveData: string;DaemonNO : integer);  //�������� Recv �Ǵ� ������
    Procedure CommNodeSend(Sender: TObject;  SendData: string;DaemonNO : integer);  //MCU�� Send �Ǵ� ��� �����͸� �ǽð����� ��ȸ �� �� �ֵ��� ó��
    Procedure ServerConnected(Sender:TObject;  aConnected:Boolean;DaemonNO:integer);
    Function FindCommServer(aDaemonNo:Integer):TdServerConnectModule; // �����ȣ�� TdServerConnectModule�� ã�� function

    Procedure DataModuleAdoConnected(Sender: TObject;  DBConnected: Boolean); //AdoConnected
  private
    //�������б� ���� ���
    L_bPersonRelayCheck : boolean;
    procedure checkRelayPeronData; //�������� ���� ������ üũ
    procedure GetRelayConfig; //�������б� DB���� ���� ���� ȯ�� ����
    procedure ReleaySamyukCheck;
    procedure ReleayKyngHeeCheck;
    //Function CheckTBL_CARD:Boolean;
    Function CheckTRN_MEMBERS_FOR_TELECOP:Boolean;
    Function CheckTBL_CARDINFO : Boolean;  //ī�� ���� ���� ���� üũ
    //Function CheckTBL_CARDDEL:Boolean;


  private
    Function DeleteTB_CARDEMPLOYEE(aCompanyCode,aEmCode:string):Boolean; //ī�� ���� �� ���� ����
    Function DeleteTB_Employee(aCompanyCode,aEmCode:string):Boolean;

    Function InsertTB_EMPLOYEEBasic(aEmpID,aCompanyCode,aJijumCode,aDepartCode,aPosiCode,aEmpNM,aCompanyPhone,
                                 aHomePhone,aHandphone,aZipcode,aAddr1,aAddr2,aJoinDate,aRetireDate:string):Boolean;
    Function UpdateTB_EMPLOYEEBasic(aEmpID,aCompanyCode,aJijumCode,aDepartCode,aPosiCode,aEmpNM,aCompanyPhone,
                                 aHomePhone,aHandphone,aZipcode,aAddr1,aAddr2,aJoinDate,aRetireDate:string):Boolean;
    Function CheckTB_Employee(aCompanyCode,aEmCode:string):Boolean;
    Function CheckTB_CARD(aCardNo:string;var aCompanyCode,aEmCode : string):Boolean;
    Function CheckTB_CARDEmCode(aCompanyCode,aEmCode:string):Boolean;
    Function InsertTB_CARD(aCardNo,aCardGubun,aCardType,aEmpID,aCompanyCode:string) : Boolean;
    Function UpdateTB_CARD(aCardNo,aCardGubun,aCardType,aEmpID,aCompanyCode:string) : Boolean;
    Function DeleteTB_CARD(aCardNo:string):Boolean;
    Function UpdateTB_DEVICECARDNO(aCardNo,aPermit:string):Boolean; //��� ī�� ������ ���� ó����
    Function GetMaxPositionNum : integer;
  private //������ ���� ����
    Function GetFdmsID:string;
    Function GetEmployeeFdmsID(aCompanyCode,aEmpID:string):string;
    Function GetCardNo(aCompanyCode,aEmpID:string):string;

  private //Zeron Server FTP File Transfer
    L_stCustomerID : string;
    Function CreateZmosConfig:string;
    Function FTPZeronServerSend:Boolean;
    Function HTTPZeronServerSend(aContent:string):Boolean;

  public
    DownLoadCardList : TStringList;
    bCardDownLoad : Boolean;
    { Public declarations }
    procedure CardDownLoad(aDeviceID,aACK:string);
  Published
    Property Logined : Boolean read FLogined write  SetLogined; //������Ƽ�� ���������� Logined��� ������ �ٲ�� SetLogined ��� �Լ��� �����
    Property Privileges : String read FPrivileges write SetPrivileges;
    Property Monitoring : Boolean read FMonitoring write SetMonitoring;
    Property GroupMonitoring : Boolean read FGroupMonitoring write SetGroupMonitoring;
    Property DoorTypeMonitoring : Boolean read FDoorTypeMonitoring write SetDoorTypeMonitoring;
    Property KTTypeMonitoring : Boolean read FKTTypeMonitoring write SetKTTypeMonitoring;
    Property AlarmTypeMonitoring : Boolean read FAlarmTypeMonitoring write SetAlarmTypeMonitoring;
    Property AccessTypeMonitoring : Boolean read FAccessTypeMonitoring write SetAccessTypeMonitoring;
    Property ComMonitoring : Boolean read FComMonitoring write SetComMonitoring;
    Property FTPDownLoadShow : Boolean read FFTPDownLoadShow write SetFTPDownLoadShow;
    property DaemonServerConnected : Boolean read FDaemonServerConnected write SetFDaemonServerConnected;
    property ControlSocketConnected : Boolean read FControlSocketConnected write SetFControlSocketConnected;
  public
    //Thread ó��
    FControlSend : TCriticalSection;
    FReceiveTCS : TCriticalSection;
    FDataProcessTCS : TCriticalSection;
    SendDaemonDataList : TStringList;
    ReceiveDataList : TStringList;
    ControlSendThread :TControlSendThread;
    ReceiveThread :TReceiveMonitorThread;
    procedure ControlDataSendStart;
    procedure ControlDataSendStop;
    procedure ReceiveThreadStart;
    procedure ReceiveThreadStop;
    procedure MemoryCreate;
    procedure MemoryClear;
    procedure MemoryFree;
    procedure TimerStopAndFree;
  private
    procedure BuildingSectorDeviceLoad;
    procedure LoadNode;
    procedure LoadDevice;
    procedure LoadDoor;

  public
    //������ ó�� ���ؼ� ó��
    procedure BuildingListAddDevice(aBuildingCode,aBuildingName:string);

    procedure AlarmEventViewStatusCodeLoad; //�˶��߻� �ڵ� �ε�
    procedure AlarmEventSoundStatusCodeLoad; //�˶��߻� �ڵ� �ε�

    procedure BuildingAlarmEventProcess(Sender:TObject;aBuildingCode:string;aAlaramState:TAlarmEventState);

    //��⺰ ���º��� �̺�Ʈ
    procedure DoorFireStateChange(Sender:TObject;NodeNo:integer;aEcuID,aDoorNo:string;aFireState:Boolean); //���Թ� ȭ�� �߻�
    procedure DoorStateChange(Sender: TObject; NodeNo : integer;aEcuID,aDoorNo:string;
                                  aDoorManageType:TDoorManageMode;
                                  aDoorPNType:TDoorPNMode;
                                  aDoorStateType:TDoorState;
                                  aDoorLockType:TDoorLockState);
    procedure DeviceConnected(Sender: TObject;  Value:Boolean; NodeNo : integer;aEcuID:string);
    procedure AlarmModeChanged(Sender: TObject; NodeNo : integer;aEcuID:string;aWachMode:TWatchMode); //���� ��� ����
    procedure DeviceAlarmEventProcess(Sender:TObject;NodeNo:integer;ECUID:string;aAlaramState:TAlarmEventState);
    procedure AlarmEventAnalysis(Sender:TObject;NodeNo:integer;ECUID:string;
                                  aCmd,aMsgNo,aTime,aSubClass,aSubAddr,
                                  aZoneCode,aMode,aStatusCode,aPortNo,aState,
                                  aOperator,aNewStateCode:string;
                                  aAlarmView,aAlarmSound:Boolean);
    procedure ExitButtonPress(Sender: TObject; NodeNo : integer;aEcuID,aDoorNo,aTime,aInputType:string);
    procedure AccessEventProcess(Sender:TObject;NodeNo:integer;aEcuID,aDoorNo,aReaderNo,aCardNo,aTime,aPermit,aInputType,aButton:string);

    //��庰 ���º��� �̺�Ʈ
    procedure NodeConnectState(Sender:TObject;NodeNo:integer;aConnectState:TNodeCurrentState); //��� Connected State

    //���� ���º��� �̺�Ʈ

    //���� ���º��� �̺�Ʈ
    procedure RestartServer(Sender:TObject); //���� ����۽� �����
    procedure AlarmRefresh(Sender:TObject); //�˶� ���� ��������
    procedure FireRecovery(Sender:TObject); //ȭ�纹��
//    procedure ServerConnectEvent(Sender:TObject;aValue:Boolean); //Daemon Server Connected Event
  end;

var
  fmMain: TfmMain;

implementation
uses
  udmAdoRelay, //���� DB Connection �� ������ �ִ�.
  uDataBaseConfig,
  uLogin,
  uLomosUtil, uCompanyCode, uGradeCode, uGradeProgram, uAdmin, uAdminGrade,
  uAccessStateCode1, uAlarmStateCode, uAlarmManageCode,
  uAlarmDeviceTypeCode, uLocateCode, uEmploy, 
  uProgramConfig, uHoliday, uImageTest,  
  uPromiseGrade, uPromiseGradeAdmin, uBatchEmployee, uSensorSchedule,
  uCommonSql,uMDBSql,uMssql,uPostGreSql, uRelayEmploy,uDupCardEmploy,
  uMonitoring, uClientConfig, uKTCardCreate, uEmType,
  uGroupMonitoring, uDeviceCode, uDoorAdmin, uAlaramDeviceAdmin,
  uMultiMonitoring, DoorSchReg, uDoorGubunCode, uEmployeeBranch,
  uDoorTypeMonitoring,uKTTypeMonitoring, uKHUEmployee, uKHUEmpInitialize,
  uLOMOSEmployee, uTestCardCreate, uFireBird, UCommonModule, uFTPDownLoad,
  uMDICardAdmin, uLOMOSEmployeeBackup,uAlarmTypeMonitoring,
  uAccessTypeMonitoring,uNewAlarmReport,uLocationMap;

{$R *.dfm}

procedure TfmMain.FormShow(Sender: TObject);
var
  LogoFile : string;
begin
  if bApplicationTerminate then Exit;

  FailCount := 0;
  IsFormShow := False;
  bSending := False;
  IsMaster := False;
  L_bClose := False;
  L_bSound := False;
  L_bPersonRelayCheck := False; //�������� ���� üũ������

  LogoFile := ExeFolder + '\..\image\KTMOSLogo.JPG';
  if FileExists(LogoFile) then
  Image1.Picture.LoadFromFile(LogoFile);

  StatusBar1.Panels[1].Width := StatusBar1.Width - StatusBar1.Panels[0].Width - StatusBar1.Panels[2].Width - StatusBar1.Panels[3].Width - StatusBar1.Panels[4].Width - StatusBar1.Panels[5].Width;

  Monitoring := False;
  GroupMonitoring := False;
  DoorTypeMonitoring := False;
  KTTypeMonitoring := False;
  AlarmTypeMonitoring := False;
  AccessTypeMonitoring := False;
  CenterPanel;

  TDataBaseConfig.GetObject.DataBaseConnect;
  while Not TDataBaseConfig.GetObject.DBConnected do
  begin
    if TDataBaseConfig.GetObject.Cancel then
    begin
      Application.Terminate;
      Exit;
    End;
    TDataBaseConfig.GetObject.ShowDataBaseConfig;
  end;

  AlarmEventViewStatusCodeLoad;     //�˶� �߻� �ڵ� �ε�
  AlarmEventSoundStatusCodeLoad;
  CommonModule.LoadAlarmModeNotCard(AlarmModeNotCardList);
  CommonModule.LoadZoneDetectList(ZoneDetectList);

  BuildingSectorDeviceLoad;         //������ ��� ���� �ε�
  LoadNode;                         //���ε�
  LoadDevice;                       //��庰 ��⺰ ��ġ �ε�
  LoadDoor;                         //���Թ� ��� ���� üũ

end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  ini_fun : TiniFile;
  i : integer;
begin
  NETTYPE :='TCPIP';
  
  self.ModuleID := 'Main';
  bApplicationTerminate := False;
  bCardDownLoad := False;
  ExeFolder  := ExtractFileDir(Application.ExeName);

  MemoryCreate;
  MemoryClear;


  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  fmMain.Width :=   ini_fun.ReadInteger('Form','Width',1024);
  fmMain.Height :=   ini_fun.ReadInteger('Form','Height',734);
  fmMain.Left :=   ini_fun.ReadInteger('Form','Left',0);
  fmMain.Top :=    ini_fun.ReadInteger('Form','Top',0);
  if ini_fun.ReadInteger('Form','Maximized',1) = 0 then fmMain.WindowState := wsNormal
  else fmMain.WindowState := wsMaximized;
  if UpperCase(ini_fun.ReadString('��Ȳǥ�ñ�','���','FALSE') )= 'TRUE' then
    UseStateShow := True
  else UseStateShow := False;
  BuildingStep := ini_fun.ReadString('Config','Building','0');

  if UpperCase(ini_fun.ReadString('Config','FTPZERONSERVER','TRUE')) = 'TRUE' then UseFTPZeronServer := True
  else UseFTPZeronServer := False;

  ini_fun.Free;

  if UseStateShow then
  begin
    fmMain.Caption := '����͸�S/W';
    MN_BasicCode.Visible := False;
    mn_System.Visible := False;
    N4.Visible := False;
  end;

  ClientConfigRead;


  fmMain.Caption := fmMain.Caption + '[' + strBuildInfo + ']';

  G_bAlarmRefreshStart := False;

end;

procedure TfmMain.mn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.MDIChildShow(FormName: String);
var
  tmpFormClass : TFormClass;
  tmpClass : TPersistentClass;
  tmpForm : TForm;
  clsName : String;
  i : Integer;
begin
  clsName := FormName;
  tmpClass := FindClass(clsName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(clsName) then
      begin
        if Screen.ActiveForm = Screen.Forms[i] then
        begin
          Screen.Forms[i].WindowState := wsMaximized;
          Exit;
        end;
        Screen.Forms[i].Show;
        Exit;
      end;
    end;

    tmpFormClass := TFormClass(tmpClass);
    tmpForm := tmpFormClass.Create(Self);
    tmpForm.Show;
  end;
  {  clsName := FormName;
  tmpClass := FindClass(clsName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(clsName) then
      begin
        //(screen.forms[i] as TForm).show;
        {Screen.Forms[i].CloseQuery;
        Screen.Forms[i].Destroy;
        break;}
{        if Screen.ActiveForm = Screen.Forms[i] then
        begin
          Screen.Forms[i].WindowState := wsMaximized;
          Exit;
        end;
        SetWindowPos(Screen.Forms[i].Handle, 0, 0, 0, 0, 0,
        HWND_TOP );   //WS_EX_TOPMOST
        Screen.Forms[i].Show;
        Screen.Forms[i].WindowState := wsMaximized;
        Exit;
      end;
    end;

    tmpFormClass := TFormClass(tmpClass);
    tmpForm := tmpFormClass.Create(Self);
    tmpForm.Show;
    tmpForm.WindowState := wsMaximized;
  end;    }
end;

procedure TfmMain.FormActivate(Sender: TObject);
var
  stKey : string;
  stSaupId : string;
  bResult : Boolean;
  stDate : string;
  stContent : string;
begin
  if bApplicationTerminate then Exit;
  if IsFormShow then Exit;
  IsFormShow := True; // �ѹ��� Activate ���� �ǵ��� ������

  Master_ID := '';
  Logined := False;
  Privileges := '';

  InitConfigSet;

//  if nSpecialProgram <> 1 then  //KT ����� �ƴϸ�
//  begin
      //���⼭ ���� Ű���� Ȯ������.
    stKey := GetAuthKey('2');
    if stKey = '' then
    begin
      showMessage('���α׷� ��ġ�� ���α׷� ������ �����ž� ��� ���� �մϴ�.');
      ExecFileAndWait(ExeFolder + '\KeyZen.exe 2',true,true);
      stKey := GetAuthKey('2');
    end;
    if stKey = '' then
    begin
      Application.Terminate;
      bApplicationTerminate := True;
      Exit;
    end;

    stSaupId := GetSaupId('');
    bResult  := False;

    if stSaupId <> '' then
    begin
      bResult := CompareKey(stSaupId,stKey);
      if Not bResult then bResult := CompareKey2(stSaupId,stKey);
    end;
    if Not bResult then
    begin
      showmessage('����Ű���� Ʋ���ϴ�.');
      if FileExists(ExtractFileDir(Application.ExeName) + '\' + 'Key.ini') then
      begin
        //DeleteFile(ExtractFileDir(Application.ExeName) + '\' + 'Key.ini');
      end;
      Application.Terminate;
      bApplicationTerminate := True;
      Exit;
    end;

    L_stCustomerID := stSaupId;
    
    if stSaupId = 'Z-00000000' then
    begin
      stDate := GetInstallDate('2');
      stDate := copy(stDate,1,4) + '-' + copy(stDate,5,2) + '-' + copy(stDate,7,2);
      if Not IsDate(stDate) then
      begin
        showmessage('����Ű�� ��ȿ�Ⱓ�� ����Ǿ����ϴ�.');
        Application.Terminate;
        bApplicationTerminate := True;
        Exit;
      end;
      if stDate < formatDateTime('yyyy-mm-dd',now) then
      begin
        showmessage('����Ű�� ��ȿ�Ⱓ�� ����Ǿ����ϴ�.');
        Application.Terminate;
        bApplicationTerminate := True;
        Exit;
      end;
    end;
  //end;
  if nSpecialProgram = 1 then
  begin
    CARDLENGTHTYPE := 2;
  end;

  RelayConfigSet;
  MenuViewSetting;
  if SensorUse then mn_Sensor.Visible := True
  else mn_Sensor.Visible := False;
  
  if nSpecialProgram = 1 then
  begin
    mn_KTCardCreate.Visible := True;
    mn_KTIssusNReg.Visible := True;
    mn_KTLine.Visible := True;
  end else
  begin
    mn_KTCardCreate.Visible := False;
    mn_KTIssusNReg.Visible := False;
    mn_KTLine.Visible := False;
  end;

  mn_KHUEmployee.Visible := False;
  mn_KHUEmpInitial.Visible := False;
  mn_lomosLine.Visible := False;
  mn_LOMOSEmployee.Visible := False;
  mn_LOMOSBackup.Visible := False;

  if PersonRelayType = 3 then
  begin
    mn_KHUEmployee.Visible := True;
    mn_KHUEmpInitial.Visible := True;
  end;
  if PersonRelayType = 4 then
  begin
    mn_lomosLine.Visible := True;
    mn_LOMOSEmployee.Visible := True;
    mn_LOMOSBackup.Visible := True;
  end;

  mn_RelaySamyukEmploy.Visible := False;
  if PersonRelayType = 0 then
  begin
    if Not UseStateShow then mn_BatchEmployee.Visible := True;
    PeronRelayTimer1.Enabled := False;
  end else if PersonRelayType = 1 then //�������б� ����
  begin
    mn_BatchEmployee.Visible := False;
    if Not UseStateShow then mn_RelaySamyukEmploy.Visible := True;
    GetRelayConfig;
    if dmAdoRelay.AdoRelayConnected(inttostr(G_nRelayDataBaseType), G_stRelayServerIP, G_stRelayServerPort,
                      G_stRelayUserID, G_stRelayUserPW, G_stRelayDataBaseName) then
    begin
      PeronRelayTimer1.Interval := 1000 * 60 * 60 * 24; //1�ϸ��� üũ��
      PeronRelayTimer1.Enabled := True;
    end;
  end else if PersonRelayType = 3 then //������б� ����
  begin
    if Not UseStateShow then mn_BatchEmployee.Visible := True;
    GetRelayConfig;
    if dmAdoRelay.AdoRelayConnected(inttostr(G_nRelayDataBaseType), G_stRelayServerIP, G_stRelayServerPort,
                      G_stRelayUserID, G_stRelayUserPW, G_stRelayDataBaseName) then
    begin
      if dmAdoRelay.AdoRelayConnected2(inttostr(G_nRelayDataBaseType2), G_stRelayServerIP2, G_stRelayServerPort2,
                        G_stRelayUserID2, G_stRelayUserPW2, G_stRelayDataBaseName2) then
      begin
        PeronRelayTimer1.Interval := 1000 * 60 * 60 * 24; //1�ϸ��� üũ��
        PeronRelayTimer1.Enabled := True;
      end;
    end;
  end;
  if PatrolUse then
  begin
    mn_AlarmControl.Visible := True;
    mn_AlarmCode.Visible := True;
  end else
  begin
    mn_AlarmControl.Visible := False;
    mn_AlarmCode.Visible := False;
  end;
  if CardAutoDownLoadUse then
  begin
    //N6.Visible := True;
    mn_GradeDownload.Visible := False;
  end else
  begin
    //N6.Visible := True;
    mn_GradeDownload.Visible := True;
  end;


  ServerConnectTimer.Enabled := True;
  if Trim(DaemonServerIP) = '' then DaemonServerIP := '127.0.0.1';
  if Trim(DaemonServerPort) = '' then DaemonServerPort := '1024';
  if Trim(ControlPort) = '' then ControlPort := '10001';
  if Trim(StatePort) = '' then StatePort := '10011';
  if Trim(EventPort) = '' then EventPort := '10021';
  if G_nMultiDaemon = 0 then
  begin
    WinsockPort.WsAddress := DaemonServerIP;
    WinsockPort.WsPort := DaemonServerPort;
    WinsockPort.Open := True;
    DaemonReceiveTimer.Enabled := True;
    //ReceiveThreadStart;
    if G_nMultiSocket = 1 then
    begin
      ControlSocketPort.WsAddress := DaemonServerIP;
      ControlSocketPort.WsPort := ControlPort;
      ControlSocketPort.Open := True;
      ControlDataSendStart;
    end;
  end else
  begin
    LoadMultiServer;
    LoadMultiDevice;
  end;


  FormNameSet;
  MenuNameSet;

  AlarmSound.Enabled := True;
  stContent := CreateZmosConfig;
  if stContent <> '' then
  begin
    if FileExists('c:\'+ L_stCustomerID + '.INI') then
    begin
      //���⿡�� FTP ��������.
      // if UseFTPZeronServer then FTPZeronServerSend;
      HTTPZeronServerSend(stContent);
    end;
  end;
//  Monitoring := False;

end;

procedure TfmMain.Action_LoginExecute(Sender: TObject);
begin
   StatusBar1.Panels[1].Text := '�α��� ���Դϴ�.' ;

   TLogin.GetObject.ShowLoginDlg;
   Master_ID := TLogin.GetObject.UserID;
   Master_Name := TLogin.GetObject.UserName;
   AdminGrade := Trim(TLogin.GetObject.Grade);
   stPrivileges :=TLogin.GetObject.ProgIDs; //���Ѽ���
   Privileges:=stPrivileges; //���Ѽ���
   Logined := TLogin.GetObject.Logined;
   //CompanyCode := Trim(TLogin.getobject.CompanyCode);
   //DepartCode := Trim(TLogin.getobject.DepartCode);;

end;

procedure TfmMain.SetLogined(const Value: Boolean);
begin
  FLogined := Value;
  mn_Login.Enabled := not Value;
  Mn_LogOff.Enabled := value;
  if FLogined then
  begin
   StatusBar1.Panels[0].Text := Master_Name;
   StatusBar1.Panels[1].Text := '�α��� �Ϸ�.';
   if G_nLoginMoitorStart = 0 then  //�α��ν� ����͸� ���� �ϵ��� ���õǾ� ������...
   begin
    if btnMonitor.Enabled then MonitorStart;
   end;
   if PersonRelayType = 1 then  //������ �α��� �ϸ� ������ ���� üũ�غ���
   begin
    PeronRelayTimer1.Enabled := False;
    PeronRelayTimer1.Interval := 1000;
    PeronRelayTimer1.Enabled := True;
   end else if PersonRelayType = 3 then  //����� �α��� �ϸ� ������ ���� üũ�غ���
   begin
    PeronRelayTimer1.Enabled := False;
    PeronRelayTimer1.Interval := 1000;
    PeronRelayTimer1.Enabled := True;
   end;
  end else
  begin
   StatusBar1.Panels[0].Text := '';
   StatusBar1.Panels[1].Text := '�α׾ƿ�.';
   if Monitoring then
   begin
    if G_nMultiDaemon = 0 then
      self.FindClassForm('TfmMonitoring').FindCommand('Close').Execute
    else if G_nMultiDaemon = 1 then
      self.FindClassForm('TfmMultiMonitoring').FindCommand('Close').Execute;
   end;
   if GroupMonitoring then self.FindClassForm('TfmGroupMonitoring').FindCommand('Close').Execute;
   if DoorTypeMonitoring then self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('Close').Execute;
   if KTTypeMonitoring then self.FindClassForm('TfmKTTypeMonitoring').FindCommand('Close').Execute;
   if AlarmTypeMonitoring then self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('Close').Execute;
   if AccessTypeMonitoring then self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('Close').Execute;
  end;

end;

procedure TfmMain.SetPrivileges(const Value: String);
begin
  FPrivileges := Value;
  TravelMenuItem(MN_BasicCode,Value); //�ڵ����
  TravelMenuItem(mn_Manager,Value); //�����
  TravelMenuItem(mn_Monitoring,Value); //����͸�
  TravelMenuItem(mn_System,Value); //�ý��ۿ�ڰ���
  TravelMenuItem(mn_Report,Value); //�ý��ۺ���
  TravelMenuItem(mn_DeviceConfig,Value); //������

  //ToolBar ����
  TravelToolBar(ToolBar1,Value);

//  if IsMaster then mn_readerState.Visible := True
//  else mn_readerState.Visible := False;

end;


Procedure TfmMain.TravelMenuItem(MenuItem:TMenuItem;ProgIDs:String);
var
  Loop : Integer;
begin
  For Loop:=0 to Menuitem.Count - 1 do
      TravelmenuItem(MenuITem.Items[Loop],ProgIDs);

  If Pos(MenuItem.Hint,ProgIDs) > 0 then MenuItem.Enabled := True
  Else If MenuItem.Tag = 0 then MenuItem.Enabled:=False;
end;

Procedure TfmMain.TravelMenuView(MenuItem:TMenuItem;ProgIDs:String);
var
  Loop : Integer;
begin
  For Loop:=0 to Menuitem.Count - 1 do
      TravelMenuView(MenuITem.Items[Loop],ProgIDs);

  If Pos(MenuItem.Hint,ProgIDs) > 0 then MenuItem.Visible := True
  Else If MenuItem.Tag = 0 then MenuItem.Visible:=False;
end;
Procedure TfmMain.TravelToolBar(ToolBar:TToolBar;ProgIDs:String);
var
  Loop : Integer;
begin
  For Loop:=0 to ToolBar.ButtonCount - 1 do
      TravelToolButton(ToolBar.Buttons[Loop],ProgIDs);
end;
Procedure TfmMain.TravelToolButton(ToolButton:TToolButton;ProgIDs:String);
begin
  If Pos(ToolButton.Hint,ProgIDs) > 0 then ToolButton.Enabled := True
  Else If ToolButton.Tag = 0 then ToolButton.Enabled:=False;
end;


procedure TfmMain.Action_LogOutExecute(Sender: TObject);
begin
  Master_ID := '';
  Logined := False;
  Privileges := '';

end;

procedure TfmMain.Action_MonitoringExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_Monitoring.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  if G_nMultiDaemon = 0 then
  begin
    MDIChildGradeShow('TfmMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
    self.FindClassForm('TfmMonitoring').FindCommand('GRADEREFRESH').Execute;
  end else if G_nMultiDaemon = 1 then
  begin
    MDIChildGradeShow('TfmMultiMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
    self.FindClassForm('TfmMultiMonitoring').FindCommand('GRADEREFRESH').Execute;
  end;
end;

procedure TfmMain.FormResize(Sender: TObject);
begin
  if bApplicationTerminate then Exit;
  StatusBar1.Panels[1].Width := StatusBar1.Width - StatusBar1.Panels[0].Width - StatusBar1.Panels[2].Width - StatusBar1.Panels[3].Width- StatusBar1.Panels[4].Width- StatusBar1.Panels[5].Width;
  CenterPanel;
end;

procedure TfmMain.SetMonitoring(const Value: Boolean);
begin
  FMonitoring := Value;
  //Privileges:=stPrivileges; //���Ѽ���

  btn_CurrentState.Enabled := value;
  mn_CurrentState.Enabled := value;
  mn_DoorControl.Enabled := value;
  mn_AlarmControl.Enabled := value;
  Action_TotClose.Enabled := value;
  mn_TotClose.Enabled := value;
  Action_TotOpen.Enabled := value;
  mn_TotOpen.Enabled := value;
  Action_TotAlarm.Enabled := value;
  mn_TotAlarm.Enabled := value;
  Action_TotCancel.Enabled := value;
  mn_TotCancel.Enabled := value;


  if Value then
  begin
//    Action_StateSearchExecute(Self);
    StateCheckTimer.Enabled := True;
    LiveTimer.Enabled := True;
    TravelMenuItem(mn_Monitoring,FPrivileges); //����͸�

  end else LiveTimer.Enabled := False;


end;

procedure TfmMain.CommandArrayCommandsTCommand0Execute(Command: TCommand;
  Params: TStringList);
var
  stMonitor : string;
begin
  stMonitor := Params.Values['VALUE'];

  if stMonitor = 'TRUE' then Monitoring := True
  else Monitoring := False;

end;

procedure TfmMain.Action_StateSearchExecute(Sender: TObject);
var
  stSendData : string;
  bButtonState : Boolean;
begin
  bButtonState := btn_CurrentState.Enabled;
  btn_CurrentState.Enabled := False;
  //���⿡�� ����� ��� ���� ������ Clear �Ѵ�...
  if G_nDaemonServerVersion < 3 then
  begin
    stSendData := 'STATECHECK'+ DATADELIMITER + '0000000000000' + DATADELIMITER;
    SendDaemonDataList.Add(stSendData);
  end else
  begin
    stSendData := 'DEVICEALLSTATE_II'+ DATADELIMITER;
    SendDaemonDataList.Add(stSendData);
    stSendData := 'ALARMCHECK'+ DATADELIMITER + '0000000000000' + DATADELIMITER;
    SendDaemonDataList.Add(stSendData);
  end;
  SendDaemonTimer.Enabled := True;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('REFRESH').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('REFRESH').Execute;
    end;
  end;
  if GroupMonitoring then
  begin
    self.FindClassForm('TfmGroupMonitoring').FindCommand('REFRESH').Execute;
  end;
  if DoorTypeMonitoring then
  begin
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('REFRESH').Execute;
  end;
  if KTTypeMonitoring then
  begin
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('REFRESH').Execute;
  end;

  if AlarmTypeMonitoring then
  begin
    self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('REFRESH').Execute;
  end;
  if AccessTypeMonitoring then
  begin
    self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('REFRESH').Execute;
  end;
  btn_CurrentState.Enabled := bButtonState;

end;

procedure TfmMain.Action_TotCloseExecute(Sender: TObject);
begin
  if (Application.MessageBox(PChar('��ü���Թ��� ����� �����Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;
  if DataModule1.CheckFireOrgin then
  begin
    showmessage('ȭ��߻��ÿ��� ȭ�� ���� �Ϸ� �Ŀ� ���� �����մϴ�.');
    Exit;
  end;
  if Monitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('OPERATEMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�');
        Exit;
      end;
    end;
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPERATEMODE';
      self.FindClassForm('TfmMonitoring').FindCommand('MODECHANGE').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPERATEMODE';
      self.FindClassForm('TfmMultiMonitoring').FindCommand('MODECHANGE').Execute;
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�')
  end else if DoorTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('OPERATEMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�');
        Exit;
      end;
    end;
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPERATEMODE';
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('MODECHANGE').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�')
  end else if KTTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('OPERATEMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�');
        Exit;
      end;
    end;
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPERATEMODE';
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('MODECHANGE').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�')
  end else if AlarmTypeMonitoring then
  begin
    showmessage('������� ȭ�鿡���� ������� �� �� �����ϴ�.');
    Exit;
  end else if AccessTypeMonitoring then
  begin
    if Not IsMaster then Exit;
    SendDaemonDataList.Add('OPERATEMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü�')
  end;

end;

procedure TfmMain.Action_TotOpenExecute(Sender: TObject);
begin
  if (Application.MessageBox(PChar('��ü���Թ��� ������� �����Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;
  if Monitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('OPENMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
        Exit;
      end;
    end;
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPENMODE';
      self.FindClassForm('TfmMonitoring').FindCommand('MODECHANGE').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPENMODE';
      self.FindClassForm('TfmMultiMonitoring').FindCommand('MODECHANGE').Execute;
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
  end else if DoorTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('OPENMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
        Exit;
      end;
    end;
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPENMODE';
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('MODECHANGE').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
  end else if KTTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('OPENMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
        Exit;
      end;
    end;
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('MODECHANGE').Params.Values['Data'] := 'OPENMODE';
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('MODECHANGE').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
  end else if AlarmTypeMonitoring then
  begin
    showmessage('������� ȭ�鿡���� ������� �� �� �����ϴ�.');
    Exit;
  end else if AccessTypeMonitoring then
  begin
    if Not IsMaster then Exit;
    SendDaemonDataList.Add('OPENMODE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','��ü����');
  end;

end;

procedure TfmMain.Action_TotAlarmExecute(Sender: TObject);
begin
  if (Application.MessageBox(PChar('��ü��������� ������ �����Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;
  if Monitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('ALARMSETTING'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
        Exit;
      end;
    end;
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMSETTING';
      self.FindClassForm('TfmMonitoring').FindCommand('AlarmMode').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMSETTING';
      self.FindClassForm('TfmMultiMonitoring').FindCommand('AlarmMode').Execute;
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
  end else if DoorTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('ALARMSETTING'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
        Exit;
      end;
    end;
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMSETTING';
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('AlarmMode').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
  end else if KTTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('ALARMSETTING'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
        Exit;
      end;
    end;
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMSETTING';
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('AlarmMode').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
  end else if AlarmTypeMonitoring then
  begin
    if Not IsMaster then Exit;
    SendDaemonDataList.Add('ALARMSETTING'+ DATADELIMITER + '0000000000' + DATADELIMITER);
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü���');
  end else if AccessTypeMonitoring then
  begin
    showmessage('�������� ȭ�鿡���� ��� ��� �� �� �����ϴ�.');
    Exit;
  end;
end;

procedure TfmMain.Action_TotCancelExecute(Sender: TObject);
begin
  if (Application.MessageBox(PChar('��ü��������� �������� �����Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;
  if Monitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('ALARMDISABLE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
        Exit;
      end;
    end;
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMDISABLE';
      self.FindClassForm('TfmMonitoring').FindCommand('AlarmMode').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMDISABLE';
      self.FindClassForm('TfmMultiMonitoring').FindCommand('AlarmMode').Execute;
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
  end else if DoorTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('ALARMDISABLE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
        Exit;
      end;
    end;
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMDISABLE';
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('AlarmMode').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
  end else if KTTypeMonitoring then
  begin
    if G_nDaemonServerVersion > 2 then
    begin
      if IsMaster then
      begin
        SendDaemonDataList.Add('ALARMDISABLE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
        DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
        Exit;
      end;
    end;
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'ALARMDISABLE';
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('AlarmMode').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
  end else if AlarmTypeMonitoring then
  begin
    if Not IsMaster then Exit;
    SendDaemonDataList.Add('ALARMDISABLE'+ DATADELIMITER + '0000000000' + DATADELIMITER);
    DataModule1.TB_SYSTEMLOGInsert('000','00',ALARMTYPE,'0','0000000000','��ü����');
  end else if AccessTypeMonitoring then
  begin
    showmessage('�������� ȭ�鿡���� ��� ��� �� �� �����ϴ�.');
    Exit;
  end;

end;

procedure TfmMain.MN_CompanyCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  if Not IsMaster then
  begin
    if strtoint(CompanyGrade) > 0 then
    begin
      showmessage('ȸ���ڵ� ���� ������ �����ϴ�.');
      Exit;
    end;
  end;
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmCompanyCode:= TfmCompanyCode.Create(Self);
  Try
    fmCompanyCode.Caption := MN_CompanyCode.Caption;
    fmCompanyCode.WorkCode := 0;
    fmCompanyCode.IsInsertGrade := bInsertGrade;
    fmCompanyCode.IsUpdateGrade := bUpdateGrade;
    fmCompanyCode.IsDeleteGrade := bDeleteGrade;
    fmCompanyCode.SHowmodal;
  Finally
    fmCompanyCode.Free;
  End;

end;

procedure TfmMain.mn_DepartCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmCompanyCode:= TfmCompanyCode.Create(Self);
  Try
    fmCompanyCode.Caption := mn_DepartCode.Caption;
    fmCompanyCode.WorkCode := 2;
    fmCompanyCode.IsInsertGrade := bInsertGrade;
    fmCompanyCode.IsUpdateGrade := bUpdateGrade;
    fmCompanyCode.IsDeleteGrade := bDeleteGrade;
    fmCompanyCode.SHowmodal;
  Finally
    fmCompanyCode.Free;
  End;

end;

procedure TfmMain.mn_PosicodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmCompanyCode:= TfmCompanyCode.Create(Self);
  Try
    fmCompanyCode.Caption := mn_Posicode.Caption;
    fmCompanyCode.WorkCode := 3;
    fmCompanyCode.IsInsertGrade := bInsertGrade;
    fmCompanyCode.IsUpdateGrade := bUpdateGrade;
    fmCompanyCode.IsDeleteGrade := bDeleteGrade;
    fmCompanyCode.SHowmodal;
  Finally
    fmCompanyCode.Free;
  End;

end;

procedure TfmMain.mn_ZipCodeClick(Sender: TObject);
begin
  fmCompanyCode:= TfmCompanyCode.Create(Self);
  Try
    fmCompanyCode.WorkCode := 4;
    fmCompanyCode.SHowmodal;
  Finally
    fmCompanyCode.Free;
  End;

end;

procedure TfmMain.mn_GradeAdminClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmGradeCode:= TfmGradeCode.Create(Self);
  Try
    fmGradeCode.Caption := TMenuItem(Sender).Caption;
    fmGradeCode.IsInsertGrade := bInsertGrade;
    fmGradeCode.IsUpdateGrade := bUpdateGrade;
    fmGradeCode.IsDeleteGrade := bDeleteGrade;
    fmGradeCode.SHowmodal;
  Finally
    fmGradeCode.Free;
  End;

end;

procedure TfmMain.mn_GradeProgramAdminClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmGradeProgram:= TfmGradeProgram.Create(Self);
  Try
    fmGradeProgram.Caption := TMenuItem(Sender).Caption;
    fmGradeProgram.IsInsertGrade := bInsertGrade;
    fmGradeProgram.IsUpdateGrade := bUpdateGrade;
    fmGradeProgram.IsDeleteGrade := bDeleteGrade;
    fmGradeProgram.SHowmodal;
  Finally
    fmGradeProgram.Free;
  End;

end;

procedure TfmMain.mn_SystemUserAdminClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAdmin:= TfmAdmin.Create(Self);
  Try
    fmAdmin.Caption := TMenuItem(Sender).Caption;
    fmAdmin.IsInsertGrade := bInsertGrade;
    fmAdmin.IsUpdateGrade := bUpdateGrade;
    fmAdmin.IsDeleteGrade := bDeleteGrade;
    fmAdmin.SHowmodal;
  Finally
    fmAdmin.Free;
  End;

end;

procedure TfmMain.InitConfigSet;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
  stFileServerIP : string;
  stFileServerDir :string;
begin
  AccessUse := False;
  PatrolUse := False;
  AttendUse := False;
  FoodUse := False;
  SensorUse := False;
  bALARMSHORT := True;
  bALARMDOWN := True;
  CARDLENGTHTYPE := 0; //����Ʈ�� ���� 4Byte ���
  IsNumericCardNo := True; //ī���ȣ ����Ÿ�� ���/�̻��
  PersonRelayType := 0; //�����������
  DUPCARDTYPE := 0; //1�δ� ������ ī�� ��� ��Ģ
  CardAutoDownLoadUse := False; //ī�� �ڵ� �ٿ�ε�
  G_nMultiDaemon := 0; //�⺻�� �ܵ� ���� ���
  L_bFireRecoverUse := False;
  G_bCardFixedUse := False; //ī��������� ��� ����
  G_stCardFixedFillChar := '0';  //ī��������� ���� ä����
  G_nCardFixedPosition := 0; //ä������ġ 0:��,1:��
  G_nCardFixedLength := 11;  //ī��������� KT���� ó�� ����ؼ� ����Ʈ 11�ڸ�
  G_nDaemonServerVersion := 0; //���󼭹� ������ ����Ʈ 0 �̴�.
  G_nMultiSocket := 0; //�ܵ� ���� ���

  UseDeviceServer := True; //�⺻������ ��Ⱑ ������ �����̴�.

  stSql := 'select * from TB_CONFIG ';
  stSql := stSql + ' Where  GROUP_CODE = ''' + GROUPCODE + '''';
  stSql := stSql + ' AND ( CO_CONFIGGROUP = ''MOSTYPE'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''ALARM'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''COMMON'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''RELAY'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''MCUCOMM'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''FIRE'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''CARD'' ';
  stSql := stSql + ' OR CO_CONFIGGROUP = ''DAEMON'')';

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
        Exit;
      End;

      First;
      While Not Eof do
      begin
        if FindField('CO_CONFIGCODE').AsString = 'FIRERECUSE' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = '1' then  L_bFireRecoverUse := True
          else L_bFireRecoverUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'ACCESS' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = 'Y' then  AccessUse := True
          else AccessUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'ALARM' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = 'Y' then  PatrolUse := True
          else PatrolUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'ATTEND' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = 'Y' then  AttendUse := True
          else AttendUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'FOOD' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = 'Y' then  FoodUse := True
          else FoodUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'SENSOR' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = 'Y' then  SensorUse := True
          else SensorUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'IP' then
        begin
          DaemonServerIP := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'PORT' then
        begin
          DaemonServerPort := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'CONTRLPORT' then
        begin
          ControlPort := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'STATEPORT' then
        begin
          StatePort := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'EVENTPORT' then
        begin
          EventPort := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'MULTISOCK' then
        begin
          if isDigit(FindField('CO_CONFIGVALUE').AsString) then
            G_nMultiSocket := strtoint(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'SHORT' then
        begin
          if FindField('CO_CONFIGVALUE').AsString <> '1' then bALARMSHORT := FALSE;
        end else if FindField('CO_CONFIGCODE').AsString = 'DOWN' then
        begin
          if FindField('CO_CONFIGVALUE').AsString <> '1' then bALARMDOWN := FALSE;
        end else if FindField('CO_CONFIGCODE').AsString = 'INOUTCOUNT' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = 'Y' then  InOutCountUse := True
          else InOutCountUse := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'FOODDEVICE' then
        begin
          FOODDEVICE := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'FOODGRADE' then
        begin
          FOODGRADE := strtoint(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'FILEIP' then
        begin
          stFileServerIP := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'FILEDIR' then
        begin
          stFileServerDir := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'ALARMVIEW' then
        begin
          ALARMVIEW := UpperCase(FindField('CO_CONFIGVALUE').AsString);
        end
        else if FindField('CO_CONFIGCODE').AsString = 'CARDNOTYPE' then CARDLENGTHTYPE := strtoint(FindField('CO_CONFIGVALUE').AsString)
        else if FindField('CO_CONFIGCODE').AsString = 'DUPCARD' then DUPCARDTYPE := strtoint(FindField('CO_CONFIGVALUE').AsString)
        else if FindField('CO_CONFIGCODE').AsString = 'CARDNUM' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = '1' then IsNumericCardNo := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'PER_RELAY' then
        begin
          PersonRelayType := StrtoInt(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'CARDAUTO' then
        begin
          if UpperCase(FindField('CO_CONFIGVALUE').AsString) = 'TRUE' then CardAutoDownLoadUse := True;
        end else if FindField('CO_CONFIGCODE').AsString = 'SPECIALCD' then
        begin
          nSpecialProgram := StrtoInt(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'DEVICESVER' then
        begin
          if FindField('CO_CONFIGVALUE').AsString = '1' then UseDeviceServer := False;
        end else if FindField('CO_CONFIGCODE').AsString = 'MULTI' then
        begin
          if isDigit(FindField('CO_CONFIGVALUE').AsString) then G_nMultiDaemon := strtoint(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'KHUADDDAY' then
        begin
          G_stRelayKHUAddDate := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'KHUDELDAY' then
        begin
          G_stRelayKHUDelDate := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'CARDADDDAY' then  //ī�忬������
        begin
          G_stRelayKHUCARDDate := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'CARDFIXED' then
        begin
          if UpperCase(FindField('CO_CONFIGVALUE').AsString) = 'TRUE' then G_bCardFixedUse := True;
        end else if FindField('CO_CONFIGCODE').AsString = 'FILLCHAR' then
        begin
          if FindField('CO_CONFIGVALUE').AsString <> '' then
            G_stCardFixedFillChar := FindField('CO_CONFIGVALUE').AsString;
        end else if FindField('CO_CONFIGCODE').AsString = 'FILLPOSI' then  
        begin
          if isDigit(FindField('CO_CONFIGVALUE').AsString) then
            G_nCardFixedPosition := strtoint(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'FIXEDLEN' then
        begin
          if isDigit(FindField('CO_CONFIGVALUE').AsString) then
            G_nCardFixedLength := strtoint(FindField('CO_CONFIGVALUE').AsString);
        end else if FindField('CO_CONFIGCODE').AsString = 'DAEMON_VER' then
        begin
          if isDigit(FindField('CO_CONFIGVALUE').AsString) then
            G_nDaemonServerVersion := strtoint(FindField('CO_CONFIGVALUE').AsString);
        end;

        Next;
   //     Application.ProcessMessages;
      end;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

  mn_Fireline.Visible := L_bFireRecoverUse;
  mn_FireRecover.Visible := L_bFireRecoverUse;

  if Trim(stFileServerDir) <> '' then
  begin
    FileServerPath := stFileServerDir;
  end;

  with DataModule1.GetObject.ADOExecQuery do
  begin
    //���Ѱ����ʿ��� ������ �׸��� ��������
    if DBType = 'MSSQL' then
    begin
      stSql := Mssql.UpdateTB_PROGRAMIDSetVisible;
    end else if DBType = 'PG' then
    begin
      stSql := PostGreSql.UpdateTB_PROGRAMIDSetVisible;
    end else if DBType = 'FB' then
    begin
      stSql := FireBird.UpdateTB_PROGRAMIDSetVisible;
    end else if DBType = 'MDB' then
    begin
      stSql := MDBsql.UpdateTB_PROGRAMIDSetVisible;
    end;
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      ExecSQL;
    Except
      //����
    End;

  end;
{  with TempAdoQuery do
  begin
    //���Ѱ����ʿ��� ������ �׸��� ��������
    stSql := 'update TB_PROGRAMID  Set PR_VISIBLE = TB_CONFIG.CO_CONFIGVALUE ' ;
    stSql := stSql + ' FROM TB_PROGRAMID  ';
    stSql := stSql + ' INNER JOIN TB_CONFIG ';
    stSql := stSql + ' ON (TB_PROGRAMID.CO_CONFIGCODE = TB_CONFIG.CO_CONFIGCODE';
    stSql := stSql + ' AND TB_CONFIG.CO_CONFIGGROUP = ''MOSTYPE'' )';
    stSql := stSql + ' where TB_PROGRAMID.PR_VISIBLE <> ''D'' ';
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      ExecSQL;
    Except
      //����
    End;

  end;   }

end;

procedure TfmMain.MenuViewSetting;
var
  stSql : string;
  ViewMenu : string;
begin
  stSql := ' Select * from TB_PROGRAMID ';
  stSql := stSql + ' Where PR_VISIBLE <> ''N'' ';
  stSql := stSql + ' AND GROUP_CODE = ''' + GROUPCODE + '''';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      exit;
    End;
    ViewMenu := '';
    while Not Eof do
    begin
      ViewMenu := ViewMenu + Trim(FieldByName('PR_PROGRAMID').AsString) + ';';
      Next;
    end; //while
    
  end;

  if ViewMenu <> '' then    //���⿡�� �޴��� ��������.
  begin

    TravelMenuView(MN_BasicCode,ViewMenu); //�����ڷ����
    TravelMenuView(mn_Manager,ViewMenu); //�����
    TravelMenuView(mn_Monitoring,ViewMenu); //����͸�
    if Not UseStateShow then
      TravelMenuView(mn_System,ViewMenu); //�ý��ۿ�ڰ���
    //TravelMenuView(mn_CardGrade,ViewMenu); //ī����Ѱ���
    //TravelMenuView(mn_ProgramConfig,ViewMenu); //���α׷�ȯ�漳��
    //TravelMenuView(mn_DataBase,ViewMenu); //�����ͺ��̽�����
    //TravelMenuView(mn_UserAdmin,ViewMenu); //�ý��ۻ���ڰ���
    TravelMenuView(mn_Report,ViewMenu); //�ý��ۺ���
  end;
  if UseStateShow then
  begin
    N8.Visible := False;
    mn_Device.Visible := False;
    mn_Sensor.Visible := False;
    N15.Visible := False;
    N9.Visible := False;
    MN_CompanyCode.Visible := False;
    mn_JijumCode.Visible := False;
    mn_Posicode.Visible := False;
    N23.Visible := False;
    N19.Visible := False;
    mn_ZipCode.Visible := False;
    mn_EmpType.Visible := False;
    mn_BatchEmployee.Visible := False;
    mn_EmployeeBranch.Visible := False;
    N1.Visible := False;
    N16.Visible := False;
  end;

  mn_InOutReport.Visible := InOutCountUse;

end;

procedure TfmMain.mn_DepartGradeAdminClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAdminGrade:= TfmAdminGrade.Create(Self);
  Try
    fmAdminGrade.Caption := TMenuItem(Sender).Caption;
    fmAdminGrade.IsInsertGrade := bInsertGrade;
    fmAdminGrade.IsUpdateGrade := bUpdateGrade;
    fmAdminGrade.IsDeleteGrade := bDeleteGrade;
  //  fmAdminGrade.WorkCode := 3;
    fmAdminGrade.SHowmodal;
  Finally
    fmAdminGrade.Free;
  End;

end;

procedure TfmMain.mn_AccessStateCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAccessStateCode:= TfmAccessStateCode.Create(Self);
  Try
    fmAccessStateCode.IsInsertGrade := bInsertGrade;
    fmAccessStateCode.IsUpdateGrade := bUpdateGrade;
    fmAccessStateCode.IsDeleteGrade := bDeleteGrade;
    fmAccessStateCode.SHowmodal;
  Finally
    fmAccessStateCode.Free;
  End;

end;

procedure TfmMain.mn_AlarmStateCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAlarmStateCode:= TfmAlarmStateCode.Create(Self);
  Try
    fmAlarmStateCode.IsInsertGrade := bInsertGrade;
    fmAlarmStateCode.IsUpdateGrade := bUpdateGrade;
    fmAlarmStateCode.IsDeleteGrade := bDeleteGrade;
    fmAlarmStateCode.SHowmodal;
  Finally
    fmAlarmStateCode.Free;
  End;

end;

procedure TfmMain.mn_AlarmManageCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAlarmManageCode:= TfmAlarmManageCode.Create(Self);
  Try
    fmAlarmManageCode.Caption := mn_AlarmManageCode.Caption;
    fmAlarmManageCode.IsInsertGrade := bInsertGrade;
    fmAlarmManageCode.IsUpdateGrade := bUpdateGrade;
    fmAlarmManageCode.IsDeleteGrade := bDeleteGrade;
    fmAlarmManageCode.SHowmodal;
  Finally
    fmAlarmManageCode.Free;
  End;

end;

procedure TfmMain.mn_AlarmDeviceTypeCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAlarmDeviceTypeCode:= TfmAlarmDeviceTypeCode.Create(Self);
  Try
    fmAlarmDeviceTypeCode.IsInsertGrade := bInsertGrade;
    fmAlarmDeviceTypeCode.IsUpdateGrade := bUpdateGrade;
    fmAlarmDeviceTypeCode.IsDeleteGrade := bDeleteGrade;
    fmAlarmDeviceTypeCode.SHowmodal;
  Finally
    fmAlarmDeviceTypeCode.Free;
  End;
end;

procedure TfmMain.mn_DeviceAdminClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
  bDeviceUpdate : Boolean;
begin
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then     //���Թ��� ������ ���� ����� ������ ������ �ο� ���� ����.
    begin
      showmessage('��Ʈ�ѷ� ���� ������ �����ϴ�.');
      Exit;
    end
  end;

  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmDeviceCode:= TfmDeviceCode.Create(Self);
  Try
    fmDeviceCode.WorkCode := 0;
    fmDeviceCode.IsInsertGrade := bInsertGrade;
    fmDeviceCode.IsUpdateGrade := bUpdateGrade;
    fmDeviceCode.IsDeleteGrade := bDeleteGrade;
    fmDeviceCode.SHowmodal;
    bDeviceUpdate := fmDeviceCode.L_bDeviceUpdate;
  Finally
    fmDeviceCode.Free;
  End;
//  if bDeviceUpdate then DaemonRestart;

end;

procedure TfmMain.mn_LocateAdminClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmLocateCode:= TfmLocateCode.Create(Self);
  Try
    fmLocateCode.WorkCode := 0;
    fmLocateCode.IsInsertGrade := bInsertGrade;
    fmLocateCode.IsUpdateGrade := bUpdateGrade;
    fmLocateCode.IsDeleteGrade := bDeleteGrade;
    fmLocateCode.SHowmodal;
  Finally
    fmLocateCode.Free;
  End;

end;

procedure TfmMain.Action_EmployExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_Employ.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  if DUPCARDTYPE = 1 then   //1�� 2���̻� ī�� ��Ͻ�
  begin
    MDIChildGradeShow('TfmDupCardEmploy',bInsertGrade,bUpdateGrade,bDeleteGrade);
{    fmDupCardEmploy:= TfmDupCardEmploy.Create(Self);
    fmDupCardEmploy.Caption := Action_Employ.Caption;
    fmDupCardEmploy.IsInsertGrade := bInsertGrade;
    fmDupCardEmploy.IsUpdateGrade := bUpdateGrade;
    fmDupCardEmploy.IsDeleteGrade := bDeleteGrade;
    fmDupCardEmploy.SHowmodal;
    fmDupCardEmploy.Free; }
  end else
  begin
    MDIChildGradeShow('TfmEmploy',bInsertGrade,bUpdateGrade,bDeleteGrade);
{    fmEmploy:= TfmEmploy.Create(Self);
    fmEmploy.Caption := Action_Employ.Caption;
    fmEmploy.IsInsertGrade := bInsertGrade;
    fmEmploy.IsUpdateGrade := bUpdateGrade;
    fmEmploy.IsDeleteGrade := bDeleteGrade;
    fmEmploy.SHowmodal;
    fmEmploy.Free; }
  end;
end;


// ���󿡼� ���� ������ ó��
procedure TfmMain.WinsockPortTriggerAvail(CP: TObject; Count: Word);
var
  st:String;
  I: Integer;
  aData:String;
  nIndex : integer;
  stTemp : string;
begin
  st:= '';
  DaemonServerConnected := True;
  for I := 1 to Count do st := st + WinsockPort.GetChar;
  ServerComBuff:= ServerComBuff + st ;

  repeat
    if L_bClose then Exit;
    aData:= Copy(ServerComBuff,1,Pos(LINEEND,ServerComBuff));
    Delete(ServerComBuff,1,Pos(LINEEND,ServerComBuff));
{    if Trim(aData) = Trim(SendData) then   //���� ��� ���� �κ��� �����ߴ��� ACK��
    begin
      RecvAck := True;
      if SendDaemonDataList.count > 0 then SendDaemonDataList.Delete(0);
      if Trim(aData) = 'ALARMREFRESH' then   //�˶� ���� ���� �� Refresh ��û ������
      begin
        if Monitoring then
        begin
          self.FindClassForm('TfmMonitoring').FindCommand('Message').Params.Values['Data'] := Trim(aData);
          self.FindClassForm('TfmMonitoring').FindCommand('Message').Execute;
        end;
      end;
      continue;
    end;  }
    nIndex := Pos('R',aData);
    if nIndex < 0 then      continue;
    if nIndex > 1 then Delete(aData,1,nIndex - 1);
    if Length(Trim(aData)) < 2 then continue;
    FReceiveTCS.Enter;
    ReceiveDataList.Add(aData);
    StatusBar1.Panels[4].Text := inttostr(ReceiveDataList.Count);
    FReceiveTCS.Leave;
    //MonitoringDataProcess(aData);

    Application.ProcessMessages;
  until pos(LINEEND,ServerComBuff) = 0;

end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ini_fun : TiniFile;
begin
  L_bClose := True;
  MediaPlayer1.Close;
  if G_nMultiSocket = 1 then ControlDataSendStop;
  //ReceiveThreadStop;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('Close').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('Close').Execute;
    end;
    Delay(200);
  End;

  if DoorTypeMonitoring then
  begin
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('Close').Execute;
  end;
  if KTTypeMonitoring then
  begin
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('Close').Execute;
  end;
  if AlarmTypeMonitoring then
  begin
    self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('Close').Execute;
  end;
  if AccessTypeMonitoring then
  begin
    self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('Close').Execute;
  end;

  if G_nMultiDaemon = 0 then
  begin
    WinsockPort.Open := False;
    if G_nMultiSocket = 1 then
    begin
      ControlSocketPort.Open := False;
    end;
  end;
  WinsockPort.Free;


  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  ini_fun.WriteInteger('Form','Width',fmMain.Width);
  ini_fun.WriteInteger('Form','Height',fmMain.Height);
  ini_fun.WriteInteger('Form','Left',fmMain.Left);
  ini_fun.WriteInteger('Form','Top',fmMain.Top);
  if fmMain.WindowState = wsMaximized then ini_fun.WriteInteger('Form','Maximized',1)
  else ini_fun.WriteInteger('Form','Maximized',0);
  ini_fun.Free;
  TimerStopAndFree;

  MemoryFree;
end;

procedure TfmMain.WinsockPortWsConnect(Sender: TObject);
begin
  bSeverConnected := True;
  DaemonServerConnected := True;
end;

procedure TfmMain.WinsockPortWsError(Sender: TObject; ErrCode: Integer);
begin
  bSeverConnected := False;
  DaemonServerConnected := False;
end;

procedure TfmMain.WinsockPortWsDisconnect(Sender: TObject);
begin
  bSeverConnected := False;
  DaemonServerConnected := False;
end;

procedure TfmMain.btnDaemonConnectClick(Sender: TObject);
var
  i : integer;
  stServerIP : string;
  stPort : string;
begin
  if G_nMultiDaemon = 0 then
  begin
    WinsockPort.Open := False;
    Delay(100);
    WinsockPort.WsAddress := DaemonServerIP;
    WinsockPort.WsPort := DaemonServerPort;
    WinsockPort.Open := True;
    if G_nMultiSocket = 1 then
    begin
      ControlSocketPort.Open := False;
      Delay(100);
      ControlSocketPort.WsAddress := DaemonServerIP;
      ControlSocketPort.WsPort := ControlPort;
      ControlSocketPort.Open := True;
    end;
  end else
  begin
    for i:= 0 to ServerList.Count - 1 do
    begin
      if L_bClose then Exit;
      if Not TdServerConnectModule(ServerList.Objects[i]).SocketConnected then
      begin
        TdServerConnectModule(ServerList.Objects[i]).Open := False;
        Delay(50);
        //stServerIP := TdServerConnectModule(ServerList.Objects[i]).WsAddress;
        //stPort := TdServerConnectModule(ServerList.Objects[i]).WsPort;
        TdServerConnectModule(ServerList.Objects[i]).Open := True;
      end;
    end;
  end;
end;

procedure TfmMain.SendDaemon(aData: string);
begin
  if L_bClose then Exit;
  if G_nMultiDaemon = 0 then
  begin
    if WinsockPort.Open then WinsockPort.PutString(aData);
  end;
end;

procedure TfmMain.CommandArrayCommandsTCommand1Execute(Command: TCommand;
  Params: TStringList);
var
  stSendData : string;
begin
  if L_bClose then Exit;
  Try
    stSendData := Params.Values['VALUE'];
    SendDaemonDataList.Add(stSendData);
  Finally
    SendDaemonTimer.Enabled := True;
    //SendDaemonTimer.Enabled := False;
  End;
end;

procedure TfmMain.SendDaemonTimerTimer(Sender: TObject);
var
  PastTime : dword;
  i : integer;
begin
  if L_bClose then Exit;
  if G_nMultiDaemon = 0 then
  begin
    if G_nMultiSocket = 1 then   //��Ƽ���� ��� ���̸� �� ������ ������� ����.
    begin
      SendDaemonTimer.Enabled := False;
      Exit;
    end;
    if SendDaemonDataList.Count  < 1 then Exit;
    StatusBar1.Panels[3].Text := inttostr(SendDaemonDataList.Count);
    if Not WinsockPort.Open then
    begin
      DaemonServerConnected := False;
      Exit;
    end;
    if bSending then Exit;
    bSending := True;
    SendData := sendDaemonDataList.Strings[0] + LINEEND;
    sendDaemonDataList.Delete(0);

    RecvAck := False;
    SendDaemon(SendData);
    if ComMonitoring then   //��Ż��� Ȯ�� ���̸�
    begin
      self.FindClassForm('TfmComMonitoring').FindCommand('Message').Params.Values['RXTX'] := 'TX';
      self.FindClassForm('TfmComMonitoring').FindCommand('Message').Params.Values['Data'] := SendData;
      self.FindClassForm('TfmComMonitoring').FindCommand('Message').Execute;
    end;
{    if pos('DEAMONRESTART',SendData) > 0 then
    begin
      WinsockPort.Open := False;
    end;   }

    PastTime := GetTickCount + DelayTime;
    while Not RecvAck do
    begin
      if L_bClose then Exit;
      Application.ProcessMessages;
      if GetTickCount > PastTime then Break;  //300�и����� ���� ������ ���з� ó����
    end;
    bSending := False;
  end else if G_nMultiDaemon = 1 then
  begin
    SendDaemonTimer.Enabled := False;
    for i := 0 to ServerList.Count - 1 do
    begin
      if L_bClose then Exit;

      if (TdServerConnectModule(ServerList.Objects[I]).QuickSendDataList.Count > 0)
         or (TdServerConnectModule(ServerList.Objects[I]).ReserveSendDataList.Count > 0) then
      begin
        Try
          if TdServerConnectModule(ServerList.Objects[I]).Open then TdServerConnectModule(ServerList.Objects[I]).ExecSendPacket;
        Except
          //����
        End;
      end;
    end;
    SendDaemonTimer.Enabled := True;
  end;


{  if Not RecvAck then inc(FailCount) ;

  if FailCount > RETRYCOUNT then
  begin
    FailCount := 0;
    if SendDaemonDataList.Count > 0 then SendDaemonDataList.Delete(0);
  end; }

end;

procedure TfmMain.Action_CardAdminExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
  fmMDICardAdmin : TForm;
begin
  GetProgramGrade(Action_CardAdmin.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmMDICardAdmin',bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmMDICardAdmin := MDIForm('TfmMDICardAdmin');
  TfmMDICardAdmin(fmMDICardAdmin).GradeSetting(bInsertGrade,bUpdateGrade,bDeleteGrade);
{  fmCardAdmin:= TfmCardAdmin.Create(Self);
  Try
    fmCardAdmin.Caption := Action_CardAdmin.Caption;
    fmCardAdmin.IsInsertGrade := bInsertGrade;
    fmCardAdmin.IsUpdateGrade := bUpdateGrade;
    fmCardAdmin.IsDeleteGrade := bDeleteGrade;
    fmCardAdmin.SHowmodal;
  Finally
    fmCardAdmin.Free;
  End; }

end;

procedure TfmMain.Action_CardDownLoadExecute(Sender: TObject);
begin
  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'CARDDOWNLOAD'+ DATADELIMITER + '000000000000' + DATADELIMITER + 'N' + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;
  CardDownLoad('000000000000','N');
end;

procedure TfmMain.CommandArrayCommandsTCommand2Execute(Command: TCommand;
  Params: TStringList);
begin
  //���⿡�� ȭ�� ��������
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('REFRESH').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('REFRESH').Execute;
    end;
  end;
  if DoorTypeMonitoring then
  begin
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('REFRESH').Execute;
  end;
  if KTTypeMonitoring then
  begin
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('REFRESH').Execute;
  end;
  if AlarmTypeMonitoring then
  begin
    self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('REFRESH').Execute;
  end;
  if AccessTypeMonitoring then
  begin
    self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('REFRESH').Execute;
  end;

  //���� ����� ����...
//  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'DEAMONRESTART'+ DATADELIMITER + '000000000000' + DATADELIMITER ;
//  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmMain.Action_DeviceGradeSearchExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_DeviceGradeSearch.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmDeviceGradeSearch',bInsertGrade,bUpdateGrade,bDeleteGrade);
  self.FindClassForm('TfmDeviceGradeSearch').FindCommand('GRADEREFRESH').Execute;
end;

procedure TfmMain.mn_DBBackupClick(Sender: TObject);
var
  stBackFile: String;
  ini_fun : TiniFile;
  stDBName : String;
begin
  SaveDialog1.DefaultExt:= 'Dat';
  SaveDialog1.Filter := 'Data files (*.Dat)|*.Dat';
  SaveDialog1.FileName := FormatDateTime('yyyymmdd',Now);
  if SaveDialog1.Execute then
  begin
    stBackFile := SaveDialog1.FileName;
  end;

  ini_fun := TiniFile.Create(ExtractFileDir(Application.ExeName) + '\zmos.INI');

  stDBName := ini_fun.ReadString('DBConfig','DBNAME','ZMOS');
  ini_fun.Free;

  if MessageDlg('DB�� ��� �Ͻðڽ��ϱ�?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if Not DBBackup(stDBName, stBackFile) then showmessage('��� ����')
    else  SHowMessage(stBackFile +'�� ��� �߽��ϴ�.');
  end;

end;

function TfmMain.DBBackup(aDBName, aBackupFile: string): Boolean;
var
  stSql :string;
begin
    Result := False;
    with Datamodule1.GetObject.ADOExecQuery do
    begin
      stSql := 'BACKUP DATABASE ' + aDBName + ' TO disk = ''' + aBackupFile + '''';
      Close;
      Sql.Clear;
      Sql.Text := stSql ;
      Try
        ExecSQL;
      Except
        Exit;
      End;
      Result := True;
    end;

end;

procedure TfmMain.mn_ProgramConfigSettingClick(Sender: TObject);
begin
  fmProgramConfig:= TfmProgramConfig.Create(Self);
  Try
    fmProgramConfig.SHowmodal;
  Finally
    fmProgramConfig.Free;
  End;

end;

procedure TfmMain.mn_AccessReportClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  if G_nSearchIndex = 0 then
  begin
    MDIChildShow('TfmAccessReport');
    self.FindClassForm('TfmAccessReport').FindCommand('GRADEREFRESH').Execute;
  end else
  begin
    MDIChildShow('TfmLargeAccessReport');
    self.FindClassForm('TfmLargeAccessReport').FindCommand('GRADEREFRESH').Execute;
  end;

end;

procedure TfmMain.mn_AlarmReportClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmNewAlarmReport');
  self.FindClassForm('TfmNewAlarmReport').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.mn_ComStateClick(Sender: TObject);
begin
  MDIChildShow('TfmComMonitoring');

end;

procedure TfmMain.CommandArrayCommandsTCommand3Execute(Command: TCommand;
  Params: TStringList);
var
  stMonitor : string;
begin
  stMonitor := Params.Values['VALUE'];

  if stMonitor = 'TRUE' then ComMonitoring := True
  else ComMonitoring := False;

end;

procedure TfmMain.SetComMonitoring(const Value: Boolean);
begin
  FComMonitoring := Value;
end;

procedure TfmMain.N9Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmHoliday:= TfmHoliday.Create(Self);
  Try
    fmHoliday.IsInsertGrade := bInsertGrade;
    fmHoliday.IsUpdateGrade := bUpdateGrade;
    fmHoliday.IsDeleteGrade := bDeleteGrade;
    fmHoliday.SHowmodal;
  Finally
    fmHoliday.Free;
  End;

end;

procedure TfmMain.Button1Click(Sender: TObject);
begin
  SendDaemonDataList.Add('DEAMONRESTART'+ DATADELIMITER + '0000000000000' + DATADELIMITER );

end;

procedure TfmMain.StaticText1Click(Sender: TObject);
begin
  Pan_Gauge.Visible := False;
end;

procedure TfmMain.CenterPanel;
var
  nTotW,nTotH,nPanW,nPanH:integer;
  nTop,nLeft : integer;
  nStartH,nStartW : integer;
begin
  nStartH := 65;
  nStartW := 0;
  nTotW := Width;
  nTotH := Height;
  nPanW := Pan_Gauge.Width;
  nPanH := Pan_Gauge.Height;
  nTop := nStartH + (nTotH div 2) - (nPanH div 2);
  nLeft := nStartW + (nTotW div 2) - (nPanW div 2);
  Pan_Gauge.Top := nTop;
  Pan_Gauge.Left := nLeft;

  nStartH := 65;
  nStartW := 0;
  nTotW := Width;
  nTotH := Height;
  nPanW := pan_Message.Width;
  nPanH := pan_Message.Height;
  nTop := nStartH + (nTotH div 2) - (nPanH div 2);
  nLeft := nStartW + (nTotW div 2) - (nPanW div 2);
  pan_Message.Top := nTop;
  pan_Message.Left := nLeft;

//  pan_Message.Visible := True;
//  Pan_Gauge.Visible := True;
end;

procedure TfmMain.CardDownLoad(aDeviceID,aACK: string);
var
  stSql : string;
  stCardNo : string;
  TempAdoQuery : TADOQuery;
begin
  if bCardDownLoad then Exit;
  bCardDownLoad := True;
  Pan_Gauge.Visible := False;
  stSql := 'Select * from TB_DEVICECARDNO ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  if aACK <> 'A' then
    stSql := stSql + ' AND DE_RCVACK = ''' + aACK +''' ';
  if aDeviceID <> '000000000000' then
  begin
    //��⺰ �ٿ�ε�
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(Copy(aDeviceID,1,3)));
    stSql := stSql + ' AND AC_ECUID = ''' + Copy(aDeviceID,4,2) + ''' ';
  end;

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
    if recordCount < 1 then
    begin
      TempAdoQuery.Free;
      CoUninitialize;
      Exit;
    end;
    First;
    While Not Eof do
    begin
      stCardNo := FillZeroNumber(FindField('AC_NODENO').asinteger,3) +
                              FindField('AC_ECUID').AsString +
                              FindField('CA_CARDNO').AsString;
      if DownLoadCardList.IndexOf(stCardNo) < 0 then
        DownLoadCardList.Add(stCardNo);
      Next;
    end;
  end;
  Pan_Gauge.Visible := True;
  Gauge1.MaxValue := DownLoadCardList.Count;
  Gauge1.Progress := 0;
  TempAdoQuery.Free;
  CoUninitialize;
  bCardDownLoad := True;
end;

procedure TfmMain.CommandArrayCommandsTCommand4Execute(Command: TCommand;
  Params: TStringList);
var
  stDeviceID : string;
  stAck : string;
begin
  stDeviceID := Params.Values['VALUE'];
  stAck := Copy(stDeviceID,13,1);
  stDeviceID := copy(stDeviceID,1,13);
  CardDownLoad(stDeviceID,stAck);
end;

procedure TfmMain.ServerConnectTimerTimer(Sender: TObject);
begin
  if L_bClose then Exit;
  ServerConnectTimer.Enabled := False;
  if btnDaemonConnect.Enabled then
  begin
    btnDaemonConnectClick(self);
  end;
  ServerConnectTimer.Enabled := True;
{  if WinSockPort.Open then Exit;
  WinsockPort.Open := True;
}
end;

procedure TfmMain.DeviceRcvRegCardData(aData: string);
var
  cCommand: Char;
  MSG_Code: Char;
  bResult : boolean;
  stNodeNo : string;
  stDeviceID : string;
  stCardNo : string;
  nIndex : integer;
  stEcuID : string;
  nLength : integer;
begin
  //RE001000000CRC0101231231231
  if copy(aData,12,2) <> 'CR' then Exit;
  stNodeNo := Copy(aData,3,3);
  stEcuID := copy(aData,6,2);
  if Not IsDigit(copy(aData,15,3)) then Exit;
  nLength := strtoint(copy(aData,15,3));
  stCardNo := copy(aData,18,nLength);
  nIndex := DownLoadCardList.IndexOf(stNodeNo+stEcuID+stCardNo);
  if nIndex > -1 then
  begin
    Gauge1.Progress := Gauge1.Progress + 1;
    DownLoadCardList.Delete(nIndex);
    if DownLoadCardList.Count = 0 then Pan_Gauge.Visible := False;
  end;
{
  stNodeNo := Copy(aData,2,3);
  Delete(aData,1,4); //R����ȣ
  if Length(aData) < 34 then Exit;
  cCommand:= aData[17];

  if cCommand <> 'c' then Exit; //ī�� ������ �ƴ�
  MSG_Code:= aData[19];
  bResult := False;
  if MSG_Code = 'l' then bResult := True;
  if MSG_Code = 'm' then bResult := True;
  if Msg_Code = 'n' then bResult := True;

  if Not bResult then Exit; //ī�� ��� ������ �ƴ�

  stDeviceID := copy(aData,8,9);
  stCardNo:= Copy(aData,27,8);
  stCardNo:= DecodeCardNo(stCardNo);

  nIndex := DownLoadCardList.IndexOf(stNodeNo+stDeviceID+stCardNo);
  if nIndex > -1 then
  begin
    Gauge1.Progress := Gauge1.Progress + 1;
    DownLoadCardList.Delete(nIndex);
    if DownLoadCardList.Count = 0 then Pan_Gauge.Visible := False;
  end;
         }
end;

procedure TfmMain.Action_DeviceCardExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_DeviceCard.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmMDIDeviceGrade',bInsertGrade,bUpdateGrade,bDeleteGrade);
{  fmDeviceGrade:= TfmDeviceGrade.Create(Self);
  Try
    fmDeviceGrade.Caption := Action_DeviceCard.Caption;
    fmDeviceGrade.IsInsertGrade := bInsertGrade;
    fmDeviceGrade.IsUpdateGrade := bUpdateGrade;
    fmDeviceGrade.IsDeleteGrade := bDeleteGrade;
    fmDeviceGrade.SHowmodal;
  Finally
    fmDeviceGrade.Free;
  End;  }

end;

procedure TfmMain.N11Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmPromiseGrade:= TfmPromiseGrade.Create(Self);
  Try
    fmPromiseGrade.Caption := TMenuItem(Sender).Caption;
    fmPromiseGrade.IsInsertGrade := bInsertGrade;
    fmPromiseGrade.IsUpdateGrade := bUpdateGrade;
    fmPromiseGrade.IsDeleteGrade := bDeleteGrade;
    fmPromiseGrade.SHowmodal;
  Finally
    fmPromiseGrade.Free;
  End;

end;

procedure TfmMain.N13Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmPromiseGradeAdmin:= TfmPromiseGradeAdmin.Create(Self);
  Try
    fmPromiseGradeAdmin.IsInsertGrade := bInsertGrade;
    fmPromiseGradeAdmin.IsUpdateGrade := bUpdateGrade;
    fmPromiseGradeAdmin.IsDeleteGrade := bDeleteGrade;
    fmPromiseGradeAdmin.SHowmodal;
  Finally
    fmPromiseGradeAdmin.Free;
  End;
end;

procedure TfmMain.N17Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmDoorAdminReport');
  self.FindClassForm('TfmDoorAdminReport').FindCommand('GRADEREFRESH').Execute;
end;

procedure TfmMain.N18Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmAlarmAdminReport');
  self.FindClassForm('TfmAlarmAdminReport').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.mn_BatchEmployeeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmBatchEmployee:= TfmBatchEmployee.Create(Self);
  Try
    fmBatchEmployee.Caption := mn_BatchEmployee.Caption;
    fmBatchEmployee.IsInsertGrade := bInsertGrade;
    fmBatchEmployee.IsUpdateGrade := bUpdateGrade;
    fmBatchEmployee.IsDeleteGrade := bDeleteGrade;
    fmBatchEmployee.SHowmodal;
  Finally
    fmBatchEmployee.Free;
  End;

end;

procedure TfmMain.GetProgramGrade(aProgID: string;
  var aInsertGrade, aUpdateGrade, aDeleteGrade: Boolean);
var
  stSql : string;
begin
  if IsMaster then
  begin
    aInsertGrade := True;
    aUpdateGrade := True;
    aDeleteGrade := True;
    Exit;
  end;
  aInsertGrade := False;
  aUpdateGrade := False;
  aDeleteGrade := False;

  stSql := 'select * from TB_GRADEPROGRAM ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND GR_GRADECODE = ''' + AdminGrade + ''' ';
  stSql := stSql + ' AND PR_PROGRAMID = ''' + aProgID + ''' ';
  with ADOQuery do
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
    if FindField('GR_INSERT').AsString = 'Y' then aInsertGrade := True;
    if FindField('GR_UPDATE').AsString = 'Y' then aUpdateGrade := True;
    if FindField('GR_DELETE').AsString = 'Y' then aDeleteGrade := True;
  end;
end;

procedure TfmMain.MDIChildGradeShow(FormName: String; aInsertGrade,
  aUpdateGrade, aDeleteGrade: Boolean);
var
  tmpFormClass : TFormClass;
  tmpClass : TPersistentClass;
  tmpForm : TForm;
  clsName : String;
  i : Integer;
begin
  tmpClass := FindClass(FormName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(FormName) then
      begin
        Screen.Forms[i].Show;
        Exit;
      end;
    end;

    tmpFormClass := TFormClass(tmpClass);
    tmpForm := tmpFormClass.Create(Self);
    TfmASubForm(tmpForm).IsInsertGrade := aInsertGrade;
    TfmASubForm(tmpForm).IsUpdateGrade := aUpdateGrade;
    TfmASubForm(tmpForm).IsDeleteGrade := aDeleteGrade;
    tmpForm.Show;
  end;
{
  clsName := FormName;
  tmpClass := FindClass(clsName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(clsName) then
      begin
        if Screen.ActiveForm = Screen.Forms[i] then
        begin
          Screen.Forms[i].WindowState := wsMaximized;
          Exit;
        end;
        Screen.Forms[i].Show;
        Exit;
      end;
    end;

    tmpFormClass := TFormClass(tmpClass);
    tmpForm := tmpFormClass.Create(Self);
    TfmASubForm(tmpForm).IsInsertGrade := aInsertGrade;
    TfmASubForm(tmpForm).IsUpdateGrade := aUpdateGrade;
    TfmASubForm(tmpForm).IsDeleteGrade := aDeleteGrade;
    tmpForm.Show;
  end;
{  clsName := FormName;
  tmpClass := FindClass(clsName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(clsName) then
      begin
        //(screen.forms[i] as TForm).show;
        {Screen.Forms[i].CloseQuery;
        Screen.Forms[i].Destroy;
        break;}
{        if Screen.ActiveForm = Screen.Forms[i] then
        begin
          Screen.Forms[i].WindowState := wsMaximized;
          Exit;
        end;
        SetWindowPos(Screen.Forms[i].Handle, 0, 0, 0, 0, 0,
        HWND_TOP );   //WS_EX_TOPMOST
        TfmASubForm(Screen.Forms[i]).IsInsertGrade := aInsertGrade;
        TfmASubForm(Screen.Forms[i]).IsUpdateGrade := aUpdateGrade;
        TfmASubForm(Screen.Forms[i]).IsDeleteGrade := aDeleteGrade;
        Screen.Forms[i].Show;
        Screen.Forms[i].WindowState := wsMaximized;
        Exit;
      end;
    end;

    tmpFormClass := TFormClass(tmpClass);
    tmpForm := tmpFormClass.Create(Self);
    TfmASubForm(tmpForm).IsInsertGrade := aInsertGrade;
    TfmASubForm(tmpForm).IsUpdateGrade := aUpdateGrade;
    TfmASubForm(tmpForm).IsDeleteGrade := aDeleteGrade;
    tmpForm.Show;
    tmpForm.WindowState := wsMaximized;
  end; }
end;

procedure TfmMain.mn_SensorClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(mn_Sensor.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmSensorSchedule:= TfmSensorSchedule.Create(Self);
  Try
    fmSensorSchedule.IsInsertGrade := bInsertGrade;
    fmSensorSchedule.IsUpdateGrade := bUpdateGrade;
    fmSensorSchedule.IsDeleteGrade := bDeleteGrade;
    fmSensorSchedule.SHowmodal;
  Finally
    fmSensorSchedule.Free;
  End;
end;

procedure TfmMain.LiveTimerTimer(Sender: TObject);
begin
  if L_bClose then Exit;
  if G_nMultiSocket = 0 then
  begin
    SendDaemonTimer.Enabled := True;
  end else if G_nMultiSocket = 1 then
  begin
    if WinsockPort.Open then WinsockPort.PutString('WINSOCKALIVE' + LINEEND);
  end;
  SendDaemonDataList.Add('CONTROLSOCKALIVE');

end;

procedure TfmMain.FormNameSet;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  FM001 := 'ȸ���ڵ�';
  FM002 := 'ȸ���';
  FM011 := '�����ڵ�';
  FM012 := '������';
  FM021 := '�μ��ڵ�';
  FM022 := '�μ���';
  FM031 := '�����ڵ�';
  FM032 := '������';
  FM040 := '��������';
  FM041 := '�����ڵ�';
  FM042 := '�����ڵ��Ī';
  FM101 := '���';
  FM102 := '�̸�';
  FM103 := '�系��ȭ��ȣ';
  FM104 := '�Ի���';
  FM105 := '�����';
  FM106 := '���';
  FM901 := '�����ڵ�';
  FM902 := '������Ī';
  FM903 := '��������';
  FM911 := '���ڵ�';
  FM912 := '����Ī';
  FM913 := '������';
  FM921 := '�����ڵ�';
  FM922 := '������Ī';
  FM923 := '��������';
  FM923 := '���Թ�����';


  stSql := 'select * from TB_FORMNAME ';
  stSql := stSql + ' Where  GROUP_CODE = ''' + GROUPCODE + '''';

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

    First;
    While Not Eof do
    begin
      if FindField('FM_CODE').AsString = '001' then
      begin
        FM001 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '002' then
      begin
        FM002 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '011' then
      begin
        FM011 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '012' then
      begin
        FM012 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '021' then
      begin
        FM021 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '022' then
      begin
        FM022 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '031' then
      begin
        FM031 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '032' then
      begin
        FM032 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '040' then
      begin
        FM040 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '041' then
      begin
        FM041 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '042' then
      begin
        FM042 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '101' then
      begin
        FM101 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '102' then
      begin
        FM102 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '103' then
      begin
        FM103 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '104' then
      begin
        FM104 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '105' then
      begin
        FM105 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '106' then
      begin
        FM106 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '901' then
      begin
        FM901 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '902' then
      begin
        FM902 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '903' then
      begin
        FM903 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '911' then
      begin
        FM911 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '912' then
      begin
        FM912 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '913' then
      begin
        FM913 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '921' then
      begin
        FM921 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '922' then
      begin
        FM922 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '923' then
      begin
        FM923 := FindField('FM_NAME').asstring;
      end else if FindField('FM_CODE').AsString = '933' then
      begin
        FM933 := FindField('FM_NAME').asstring;
      end;
      Next;
    end;
  end;
  TempAdoQuery.Free;
  CoUninitialize;
end;

procedure TfmMain.MenuNameSet;
begin
  MN_CompanyCode.Caption := FM001 + '����';
  mn_JijumCode.Caption := FM011 + '����';
  mn_DepartCode.Caption := FM021 + '����';
  mn_Posicode.Caption := FM031 + '����';
  mn_EmpType.Caption := FM040 + '����';

  Action_Employ.Caption := '����' + FM106 + '����';

  mn_Employee.Caption := FM106 + '����';
  mn_PerEmployee.Caption := '����' + FM106 + '����';
  mn_BatchEmployee.Caption := '�ϰ�' + FM106 + '����';
  mn_EmployeeBranch.Caption := FM106 + '�з�';
end;

procedure TfmMain.mn_JijumCodeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  if Not IsMaster then
  begin
    if strtoint(CompanyGrade) > 1 then
    begin
      showmessage('�����ڵ� ���� ������ �����ϴ�.');
      Exit;
    end;
  end;
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmCompanyCode:= TfmCompanyCode.Create(Self);
  Try
    fmCompanyCode.Caption := mn_JijumCode.Caption;
    fmCompanyCode.WorkCode := 1;
    fmCompanyCode.IsInsertGrade := bInsertGrade;
    fmCompanyCode.IsUpdateGrade := bUpdateGrade;
    fmCompanyCode.IsDeleteGrade := bDeleteGrade;
    fmCompanyCode.SHowmodal;
  Finally
    fmCompanyCode.Free;
  End;
end;

procedure TfmMain.NowTimerTimer(Sender: TObject);
begin
  if L_bClose then Exit;
  StatusBar1.Panels[2].Text := FormatDateTime('yyyy-mm-dd HH:MM:SS',Now);
end;

procedure TfmMain.mn_RelaySamyukEmployClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmRelayEmploy:= TfmRelayEmploy.Create(Self);
  Try
    fmRelayEmploy.Caption := mn_RelaySamyukEmploy.Caption;
    fmRelayEmploy.IsInsertGrade := bInsertGrade;
    fmRelayEmploy.IsUpdateGrade := bUpdateGrade;
    fmRelayEmploy.IsDeleteGrade := bDeleteGrade;
    fmRelayEmploy.SHowmodal;
  Finally
    fmRelayEmploy.Free;
  End;

end;

procedure TfmMain.StateCheckTimerTimer(Sender: TObject);
begin
  StateCheckTimer.Enabled := False;
  Action_StateSearchExecute(Self);
end;

procedure TfmMain.mn_readerHistoryClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(mn_readerHistory.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmReaderState',bInsertGrade,bUpdateGrade,bDeleteGrade);
end;

function TfmMain.MDIForm(FormName: string): TForm;
var
  tmpFormClass : TFormClass;
  tmpClass : TPersistentClass;
  tmpForm : TForm;
  clsName : String;
  i : Integer;
begin
  result := nil;
  clsName := FormName;
  tmpClass := FindClass(clsName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(clsName) then
      begin
        result := Screen.Forms[i];
        Exit;
      end;
    end;
  end;
end;

procedure TfmMain.N12Click(Sender: TObject);
begin
  fmClientConfig:= TfmClientConfig.Create(Self);
  Try
    fmClientConfig.SHowmodal;
  Finally
    fmClientConfig.Free;
  End;
  ClientConfigRead;
end;

procedure TfmMain.ClientConfigRead;
begin
  if LMDIniCtrl1.ReadString('ȯ�漳��','�˶��߻�','N') = 'Y' then ACAlarmUse := True
  else ACAlarmUse := False;
  if LMDIniCtrl1.ReadString('ȯ�漳��','��ð������˶��߻�','N') = 'Y' then LongDoorOpenAlarmUse := True
  else LongDoorOpenAlarmUse := False;
  ACAlaramFile := LMDIniCtrl1.ReadString('ȯ�漳��','�˶�����','');
  if LMDIniCtrl1.ReadString('ȯ�漳��','����˶��߻�','N') = 'Y' then PTAlarmUse := True
  else PTAlarmUse := False;
  if LMDIniCtrl1.ReadString('ȯ�漳��','�˶��޽���','N') = 'Y' then PTAlarmMessageUse := True
  else PTAlarmMessageUse := False;

  PTAlaramFile := LMDIniCtrl1.ReadString('ȯ�漳��','����˶�����','');
  IsCardGradCopy := False;
  if LMDIniCtrl1.ReadInteger('ȯ�漳��','ī����Ѻ���',0) = 1  then IsCardGradCopy := True;
  G_nAccessEventSearch := LMDIniCtrl1.ReadInteger('ȯ�漳��','�����̺�Ʈ',1);

  if LMDIniCtrl1.ReadString('ȯ�漳��','����ǥ��','Y') = 'Y' then G_bACIntroView := True
  else G_bACIntroView := False;
  if LMDIniCtrl1.ReadString('ȯ�漳��','�����','N') = 'Y' then G_bColseModeView := True
  else G_bColseModeView := False;
  if LMDIniCtrl1.ReadString('ȯ�漳��','ȭ��޽���','Y') = 'Y' then G_bFireMessageView := True
  else G_bFireMessageView := False;
  G_nFireTime := LMDIniCtrl1.ReadInteger('ȯ�漳��','ȭ��ǥ�ýð�',30);

  G_stFireState := LMDIniCtrl1.ReadString('ȯ�漳��','ȭ�����','FI');
  G_nLoginMoitorStart:= LMDIniCtrl1.ReadInteger('ȯ�漳��','�α��θ���ͽ���',0); //�α��ν� ����͸� ����
  G_nMonitorGubun := LMDIniCtrl1.ReadInteger('ȯ�漳��','����͹��',0); //����͸� �� ��ü����͸� 0,�׷캰����͸� 1
  G_nSearchIndex := LMDIniCtrl1.ReadInteger('ȯ�漳��','��ȸ���',0); //�⺻����ȸ 0,��ȸ���� 1
  if LMDIniCtrl1.ReadString('ȯ�漳��','ī���ߺ��߱�','N') = 'Y' then G_bKTDupCardReg := True
  else G_bKTDupCardReg := False;
  G_bRelayDefaultCode := LMDIniCtrl1.ReadString('ȯ�漳��','�����ڵ�','001');

end;

procedure TfmMain.PeronRelayTimer1Timer(Sender: TObject);
begin
  //���б� ���� �����Ͱ� �ִ��� üũ��
  PeronRelayTimer1.Enabled := False;
  checkRelayPeronData;
  PeronRelayTimer1.Interval := 1000 * 60 * 60 * 24;  //�ѹ� üũ ������ 24�ð� �Ŀ� üũ ��.
  PeronRelayTimer1.Enabled := True;
end;

procedure TfmMain.checkRelayPeronData;
var
  stSql : string;
  stMessage : string;
begin
  if L_bPersonRelayCheck then Exit;

  L_bPersonRelayCheck := True;
  if PersonRelayType = 1 then  //������ ���� üũ
  begin
    ReleaySamyukCheck;
  end else if PersonRelayType = 3 then  //����� ���� üũ
  begin
    ReleayKyngHeeCheck;
  end;
  L_bPersonRelayCheck := False;

end;

procedure TfmMain.GetRelayConfig;
var
  stSql : string;
begin
//  result := False;

  G_nRelayDataBaseType := 1; //1.MSSQL ���� ,2.PostGreSql Server,3.Oracle
  G_stRelayServerIP := '210.94.230.2';
  G_stRelayServerPort := '1433';
  G_stRelayUserID := 'SA';
  G_stRelayUserPW := 'lotecs@9240';
  G_stRelayDataBaseName := 'UMCS';

  G_nRelayDataBaseType2 := 3; //1.MSSQL ���� ,2.PostGreSql Server,3.Oracle
  G_stRelayServerIP2 := '210.94.230.2';
  G_stRelayServerPort2 := '1433';
  G_stRelayUserID2 := 'SA';
  G_stRelayUserPW2 := 'lotecs@9240';
  G_stRelayDataBaseName2 := 'UMCS';


  stSql := 'select * from TB_PERRELAYCONFIG ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';

  with DataModule1.ADOTmpQuery do
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
      if FindField('PC_CONFIGCODE').AsString = 'DBTYPE' then
        G_nRelayDataBaseType := strtoint(FindField('PC_CONFIGVALUE').AsString)
      else if FindField('PC_CONFIGCODE').AsString = 'DBSERVERIP' then
        G_stRelayServerIP := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBSERVERPORT' then
        G_stRelayServerPort := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBUSERID' then
        G_stRelayUserID := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBUSERPW' then
        G_stRelayUserPW := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBNAME' then
        G_stRelayDataBaseName := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBTYPE2' then
        G_nRelayDataBaseType2 := strtoint(FindField('PC_CONFIGVALUE').AsString)
      else if FindField('PC_CONFIGCODE').AsString = 'DBSERVERIP2' then
        G_stRelayServerIP2 := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBSERVERPORT2' then
        G_stRelayServerPort2 := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBUSERID2' then
        G_stRelayUserID2 := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBUSERPW2' then
        G_stRelayUserPW2 := FindField('PC_CONFIGVALUE').AsString
      else if FindField('PC_CONFIGCODE').AsString = 'DBNAME2' then
        G_stRelayDataBaseName2 := FindField('PC_CONFIGVALUE').AsString;

      Next;
    end;
//    result := True;
  end;
end;


procedure TfmMain.RelayConfigSet;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  CoInitialize(nil);
  TempAdoQuery := TADOQuery.Create(nil);
  TempAdoQuery.Connection := DataModule1.ADOConnection;

  IsCardReaderServer := False;

  fdmsUses := 'FALSE';
  fdmsPath := '';
  fdmsPW   := '';

  stSql := 'select * from TB_CONFIG ';
  stSql := stSql + ' Where CO_CONFIGGROUP = ''RELAY'' ';
  stSql := stSql + ' AND GROUP_CODE = ''' + GROUPCODE + '''';

  with TempAdoQuery do
  begin
    Close;
    //Sql.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      TempAdoQuery.Free;
      CoUninitialize;
      Exit;
    End;

    First;
    While Not Eof do
    begin
      if bApplicationTerminate then Exit;
      if FindField('CO_CONFIGCODE').AsString = 'fdmsUSE' then
      begin
        fdmsUses := UpperCase(FindField('CO_CONFIGVALUE').AsString);
      end else if FindField('CO_CONFIGCODE').AsString = 'fdmsPath' then
      begin
        fdmsPath := FindField('CO_CONFIGVALUE').AsString;
      end else if FindField('CO_CONFIGCODE').AsString = 'fdmsPW' then
      begin
        fdmsPW := FindField('CO_CONFIGVALUE').AsString;
      end else if FindField('CO_CONFIGCODE').AsString = 'fdmsType' then
      begin
        fdmsType := FindField('CO_CONFIGVALUE').AsString;
      end else if FindField('CO_CONFIGCODE').AsString = 'cardServer' then
      begin
        if strtoint(FindField('CO_CONFIGVALUE').AsString) = 1 then
            IsCardReaderServer := True;
      end;

      Next;
    end;
  end;
  TempAdoQuery.Free;
  CoUninitialize;

end;

procedure TfmMain.mn_InOutReportClick(Sender: TObject);
begin
  MDIChildShow('TfmInOutReport');
end;

procedure TfmMain.mn_KTCardCreateClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(mn_KTCardCreate.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmKTCardCreate');
{  fmKTCardCreate:= TfmKTCardCreate.Create(Self);
  fmKTCardCreate.Caption := mn_KTCardCreate.Caption;
  fmKTCardCreate.IsInsertGrade := bInsertGrade;
  fmKTCardCreate.IsUpdateGrade := bUpdateGrade;
  fmKTCardCreate.IsDeleteGrade := bDeleteGrade;
  fmKTCardCreate.SHowmodal;
  fmKTCardCreate.Free; }

end;

procedure TfmMain.mn_EmpTypeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmEmType := TfmEmType.Create(Self);
  Try
    fmEmType.Caption := mn_EmpType.Caption;
    fmEmType.IsInsertGrade := bInsertGrade;
    fmEmType.IsUpdateGrade := bUpdateGrade;
    fmEmType.IsDeleteGrade := bDeleteGrade;
    fmEmType.SHowmodal;
  Finally
    fmEmType.Free;
  End;

end;

procedure TfmMain.SetGroupMonitoring(const Value: Boolean);
begin
  FGroupMonitoring := Value;
  btn_CurrentState.Enabled := value;
  mn_CurrentState.Enabled := value;

  if Value then
  begin
    StateCheckTimer.Enabled := True;
    LiveTimer.Enabled := True;
  end else LiveTimer.Enabled := False;

end;

procedure TfmMain.Action_GroupMonitoringExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_GroupMonitoring.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmGroupMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
  self.FindClassForm('TfmGroupMonitoring').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.CommandArrayCommandsTGroupMonitoringExecute(
  Command: TCommand; Params: TStringList);
var
  stGroupMonitor : string;
begin
  stGroupMonitor := Params.Values['VALUE'];

  if stGroupMonitor = 'TRUE' then GroupMonitoring := True
  else GroupMonitoring := False;

end;

procedure TfmMain.StaticText2Click(Sender: TObject);
begin
  MessageTimer.Enabled := False;
  pan_Message.Visible := False;
end;

procedure TfmMain.MessageTimerTimer(Sender: TObject);
begin
  pan_Message.Visible := Not pan_Message.Visible;
{  if GetTickCount > G_dtFireMessageTime then
  begin
    MessageTimer.Enabled := false;
    pan_Message.Visible := False;
  end; }
end;

procedure TfmMain.MonitorStart;
begin
  if G_nMonitorGubun = 0 then
  begin
    Action_MonitoringExecute(self);
  end else if G_nMonitorGubun = 1 then  //�׷����͸�
  begin
    Action_GroupMonitoringExecute(self);
  end else if G_nMonitorGubun = 2 then  // KTŸ�� ����͸�
  begin
    Action_KTTypeMonitoringExecute(self);
  end else if G_nMonitorGubun = 3 then  // �˶�Ÿ�� ����͸�
  begin
    if IsMaster then
      Action_AlarmTypeMonitoringExecute(self)  //������ �����ΰ�츸 �ε� �ϵ��� ó�� ��
    else Action_MonitoringExecute(self);
  end else if G_nMonitorGubun = 4 then  // ����Ÿ�� ����͸�
  begin
    if IsMaster then
      Action_AccessTypeMonitoringExecute(self)  //������ �����ΰ�츸 �ε� �ϵ��� ó�� ��
    else Action_MonitoringExecute(self);
  end;
end;

procedure TfmMain.N20Click(Sender: TObject);
begin
  MonitorStart;
end;

procedure TfmMain.btnMonitorClick(Sender: TObject);
begin
  MonitorStart;
end;

procedure TfmMain.N28Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
  bDeviceUpdate : Boolean;
begin
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then     //���Թ��� ������ ���� ����� ������ ������ �ο� ���� ����.
    begin
      showmessage('������� ���� ������ �����ϴ�.');
      Exit;
    end
  end;

  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmAlaramDeviceAdmin:= TfmAlaramDeviceAdmin.Create(Self);
  Try
    fmAlaramDeviceAdmin.IsInsertGrade := bInsertGrade;
    fmAlaramDeviceAdmin.IsUpdateGrade := bUpdateGrade;
    fmAlaramDeviceAdmin.IsDeleteGrade := bDeleteGrade;
    fmAlaramDeviceAdmin.SHowmodal;
    bDeviceUpdate := fmAlaramDeviceAdmin.L_bDeviceUpdate;
  Finally
    fmAlaramDeviceAdmin.Free;
  End;
//  if bDeviceUpdate then DaemonRestart;

end;

procedure TfmMain.DaemonRestart;
begin
  SendDaemonDataList.Add('DEAMONRESTART'+ DATADELIMITER + '0000000000000' + DATADELIMITER );
end;

procedure TfmMain.N29Click(Sender: TObject);
begin
  DaemonRestart;
end;

function TfmMain.LoadMultiServer: Boolean;
var
  aCommNode   : TdServerConnectModule;
  DaemonNo   : Integer;
  IPStr       : String;
  nPort : integer;
  stSql : String;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;

    if ServerList = nil then ServerList := TStringList.Create;
    ServerList.Clear;
    stSql := ' select * from TB_DAEMONMULTI ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + '''';

    with TempAdoQuery do
    begin
      Close;
      //sql.Clear;
      sql.Text := stSql;

      Try
        Open;
      Except
        //����ó��
        Exit;
      End;
      First;
      while not eof do
      begin
        DaemonNo:= FindField('DM_GUBUN').asInteger;
        IPStr:=  Trim(FindField('DM_SERVERIP').asString);
        if Not IsDigit(FindField('DM_SERVERPORT').asString) then nPort := 3001
        else nPort:= strtoint(FindField('DM_SERVERPORT').asString);
        Next;

        aCommNode:= TdServerConnectModule.Create(Self);
        aCommNode.No:= DaemonNo;
        aCommNode.WsAddress:=           IPStr;
        aCommNode.wsPort:=              inttostr(nPort);
        aCommNode.OnRcvData:=           CommNodeReceve;
        aCommNode.OnSendData :=         CommNodeSend;
        aCommNode.OnConnected :=        ServerConnected;
        if Trim(IPStr) <> '' then
        begin
          ServerList.AddObject(InttoStr(DaemonNo),aCommNode);
        end;
      end;
    end;
    
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
  Result := True;

end;

procedure TfmMain.CommNodeReceve(Sender: TObject; ReceiveData: string;
  DaemonNO: integer);
begin
  MonitoringDataProcess(ReceiveData,DaemonNO);
end;

procedure TfmMain.MonitoringDataProcess(aData: string;aDaemonNo:integer=0);
var
  fmMonitor :TForm;
  fmGroupMonitor :TForm;
  fmDoorTypeMonitoring :TForm;
  fmKTTypeMonitoring :TForm;
  fmAlarmTypeMonitoring :TForm;
  fmAccessTypeMonitoring :TForm;
  stTemp : string;
  stSendData : string;
begin
  Try
    FDataProcessTCS.Enter;

    DaemonReceiveDataProcess(aData);

    if ComMonitoring then   //��Ż��� Ȯ�� ���̸�
    begin
      self.FindClassForm('TfmComMonitoring').FindCommand('Message').Params.Values['RXTX'] := 'RX';
      self.FindClassForm('TfmComMonitoring').FindCommand('Message').Params.Values['Data'] := aData;
      self.FindClassForm('TfmComMonitoring').FindCommand('Message').Execute;
    end;

    Try
      {//���⿡�� ������ �ѷ���
      if Monitoring then
      begin
        if aData[1] = 'R' then     //��⿡�� �ö�� ������ �̸�
        begin
          //Memo1.Lines.Insert(0,aData);
          if G_nMultiDaemon = 0 then
          begin
            fmMonitor := MDIForm('TfmMonitoring');
          end else if G_nMultiDaemon = 1 then
          begin
            fmMonitor := MDIForm('TfmMultiMonitoring');
          end;
          if fmMonitor <> nil then
          begin
            if G_nMultiDaemon = 0 then
              TfmMonitoring(fmMonitor).ShowMessage(aData)
            else if G_nMultiDaemon = 1 then
              TfmMultiMonitoring(fmMonitor).ShowMessage(aData,aDaemonNo);
          end;
   //       self.FindClassForm('TfmMonitoring').FindCommand('Message').Params.Values['Data'] := aData;
   //       self.FindClassForm('TfmMonitoring').FindCommand('Message').Execute;
        end;
      end; }
      if GroupMonitoring then
      begin
        if aData[1] = 'R' then     //��⿡�� �ö�� ������ �̸�
        begin
          //Memo1.Lines.Insert(0,aData);
          fmGroupMonitor := MDIForm('TfmGroupMonitoring');
          if fmGroupMonitor <> nil then
          begin
            TfmGroupMonitoring(fmGroupMonitor).ShowMessage(aData);
          end;
        end;
      end;
      if DoorTypeMonitoring then
      begin
        if aData[1] = 'R' then     //��⿡�� �ö�� ������ �̸�
        begin
          //Memo1.Lines.Insert(0,aData);
          fmDoorTypeMonitoring := MDIForm('TfmDoorTypeMonitoring');
          if fmDoorTypeMonitoring <> nil then
          begin
            TfmDoorTypeMonitoring(fmDoorTypeMonitoring).ShowMessage(aData);
          end;
        end;
      end;
      {
      if KTTypeMonitoring then
      begin
        if aData[1] = 'R' then     //��⿡�� �ö�� ������ �̸�
        begin
          //Memo1.Lines.Insert(0,aData);
          fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
          if fmKTTypeMonitoring <> nil then
          begin
            TfmKTTypeMonitoring(fmKTTypeMonitoring).ShowMessage(aData);
          end;
        end;
      end;
      }
      if FTPDownLoadShow then
      begin
        if aData[14] = 'F' then
          fmFTPDownLoad.ShowMessage(aData);
      end;

    Except
      //
    End;
    DeviceRcvRegCardData(aData);  //ī�������䵥���� ó��

    if Length(aData) < 34 then Exit;

    if aData[17 + 17] = 'A' then    //���� �˶�������
    begin
      stTemp := copy(aData,17 + 41,2); //17 �������� �ٿ��� �Ѿ�� �����Ͱ�
      if stTemp = G_stFireState then //ȭ�� �߻���
      begin
        if G_bFireMessageView then
        begin
          G_dtFireMessageTime := GetTickCount + (G_nFireTime * 1000);
          st_Message.Caption := 'ȭ�� �߻� !!!';
          MessageTimer.Enabled := True;
          if Monitoring then
          begin
            self.FindClassForm('TfmMonitoring').FindCommand('AlarmMode').Params.Values['Data'] := 'FIRE';
            self.FindClassForm('TfmMonitoring').FindCommand('AlarmMode').Execute;
          end;
        end;
      end;
    end;  
  Finally
    FDataProcessTCS.Leave;
  End;
end;

procedure TfmMain.CommNodeSend(Sender: TObject; SendData: string;
  DaemonNO: integer);
begin

end;

procedure TfmMain.ServerConnected(Sender: TObject; aConnected: Boolean;
  DaemonNO: integer);
var
  stState : string;
begin
  if aConnected then  stState := 'CONNECTED'
  else stState := 'DISCONNECTED';
  if Monitoring then
  begin
    if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Params.Values['VALUE'] := stState;
      self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Params.Values['ID'] := FillZeroNumber(DaemonNO,5);
      self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Execute;
    end;

//    Action_StateSearchExecute(Sender);
    //���⼭ ����Ȯ�� ����.
  end;
  SendDaemonTimer.Enabled := True;

end;

function TfmMain.LoadMultiDevice: Boolean;
var
  stSql : String;
  DaemonNo,OldDaemonNo    : Integer;
  aCommNode   : TdServerConnectModule;
  stDeviceStr : string;
  aDevice     : TDevice;
  TempAdoQuery : TADOQuery;

begin
  Result := False;
  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;

    DeviceList.Clear;
    stSql := ' select a.*,b.AC_DAEMONGUBUN as DaemonNo from TB_ACCESSDEVICE a ';
    stSql := stSql + ' Left Join TB_ACCESSDEVICE b ';
    stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
    stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
    stSql := stSql + ' AND b.AC_GUBUN = ''0'' ';
    stSql := stSql + ' ) ';
    stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + '''';
    stSql := stSql + ' AND a.AC_NETTYPE = ''' + NETTYPE + ''' ';
    stSql := stSql + ' order by b.AC_DAEMONGUBUN,a.AC_NODENO,a.AC_ECUID ';

    // ���
    with TempAdoQuery do
    begin
      Close;
      //sql.Clear;
      sql.Text := stSql;

      Try
        Open;
      Except
        //����ó��
        Exit;
      End;
      OldDaemonNo:= 0;
      First;
      while not eof do
      begin
        DaemonNo:= FindField('DaemonNo').asInteger;
        if OldDaemonNo <> DaemonNo then
        begin
          aCommnode:= FindCommServer(DaemonNo);
        end;
        stDeviceStr := FillzeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').asString;
        aDevice:= TDevice.Create(Self);
        aDevice.DaemonNo := DaemonNo;
        aDevice.NodeNo := FindField('AC_NODENO').AsInteger;
        aDevice.EcuID := FindField('AC_ECUID').asString;

        if aCommnode <> nil then
        begin
          aDevice.CommServer            := aCommnode;
          DeviceList.AddObject( stDeviceStr,aDevice);
        end;

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

function TfmMain.FindCommServer(aDaemonNo: Integer): TdServerConnectModule;
var
  Index: Integer;
begin
  Result:= nil;
  Index:= ServerList.IndexOf(inttostr(aDaemonNo));
  if Index > -1 then
    Result:= TdServerConnectModule(ServerList.Objects[Index]);

end;

procedure TfmMain.CommandArrayCommandsTMulitServerSendExecute(
  Command: TCommand; Params: TStringList);
var
  stDaemonGubun : string;
  stNodeNo : string;
  stECUID : string;
  stDoorID : string;
  stCmd : string;
  stData : string;
  i : integer;
  nIndex : integer;
  bQuick : Boolean;
begin
  stDaemonGubun := Params.Values['DAEMON'];
  stNodeNo := Params.Values['NODENO'];
  stECUID := Params.Values['ECUID'];
  stDoorID := Params.Values['DOORID'];
  stCmd := Params.Values['COMMAND'];
  stData := Params.Values['DATA'];
  if UpperCase(Params.Values['QUICK']) = 'TRUE' then bQuick := True
  else bQuick := False;
  if Not isDigit(stDaemonGubun) then Exit;
  if Not isDigit(stNodeNo) then Exit;

  if strtoint(stDaemonGubun) = 0 then  //��ü ������ ���� ����
  begin
    for i:=0 to ServerList.Count - 1 do
    begin
      if TdServerConnectModule(ServerList.Objects[i]).SocketConnected then
      begin
        TdServerConnectModule(ServerList.Objects[i]).SendPacket(strtoint(stNodeNo),stECUID,stDoorID,stCmd,stData,bQuick);
      end;
    end;
    Exit;
  end;
  nIndex := ServerList.IndexOf(inttostr(strtoint(stDaemonGubun)));
  if nIndex < 0 then Exit;
  if TdServerConnectModule(ServerList.Objects[nIndex]).SocketConnected then
  begin
    TdServerConnectModule(ServerList.Objects[nIndex]).SendPacket(strtoint(stNodeNo),stECUID,stDoorID,stCmd,stData,bQuick);
  end;

end;

procedure TfmMain.CommandArrayCommandsTSERVERSTATEExecute(
  Command: TCommand; Params: TStringList);
var
  i : integer;
  stState : string;
  DaemonNo : integer;
begin
  for i := 0 to ServerList.Count - 1 do
  begin
    if TdServerConnectModule(ServerList.Objects[i]).SocketConnected then stState := 'CONNECTED'
    else stState := 'DISCONNECTED';
    DaemonNo := TdServerConnectModule(ServerList.Objects[i]).No;
    
    if Monitoring then
    begin
      if G_nMultiDaemon = 1 then
      begin
        self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
        self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Params.Values['VALUE'] := stState;
        self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Params.Values['ID'] := FillZeroNumber(DaemonNO,5);
        self.FindClassForm('TfmMultiMonitoring').FindCommand('STATE').Execute;
      end;
    end;

  end;
end;

procedure TfmMain.N32Click(Sender: TObject);
begin
  DoorscheduleRegForm:= TDoorscheduleRegForm.Create(Self);
  Try
    DoorscheduleRegForm.SHowmodal;
  Finally
    DoorscheduleRegForm.Free;
  End;

end;

procedure TfmMain.N34Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
  bDeviceUpdate : Boolean;
  stSendData : string;
begin
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then     //���Թ��� ������ ���� ����� ������ ������ �ο� ���� ����.
    begin
      showmessage('���Թ� ���� ������ �����ϴ�.');
      Exit;
    end
  end;

  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmDoorAdmin:= TfmDoorAdmin.Create(Self);
  Try
    fmDoorAdmin.IsInsertGrade := bInsertGrade;
    fmDoorAdmin.IsUpdateGrade := bUpdateGrade;
    fmDoorAdmin.IsDeleteGrade := bDeleteGrade;
    fmDoorAdmin.SHowmodal;
    bDeviceUpdate := fmDoorAdmin.L_bDeviceUpdate;
  Finally
    fmDoorAdmin.Free;
  End;
  stSendData := 'SCHEDULETIMER'+ DATADELIMITER + '000000000000' + DATADELIMITER + 'N' + DATADELIMITER;
  SendDaemonDataList.Add(stSendData);
  SendDaemonTimer.Enabled := True;

end;

procedure TfmMain.N27Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmDoorGubunCode:= TfmDoorGubunCode.Create(Self);
  Try
    fmDoorGubunCode.IsInsertGrade := bInsertGrade;
    fmDoorGubunCode.IsUpdateGrade := bUpdateGrade;
    fmDoorGubunCode.IsDeleteGrade := bDeleteGrade;
    fmDoorGubunCode.SHowmodal;
  Finally
    fmDoorGubunCode.Free;
  End;

end;

procedure TfmMain.N35Click(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmPersonStateReport');
  self.FindClassForm('TfmPersonStateReport').FindCommand('GRADEREFRESH').Execute;
end;

procedure TfmMain.ReleaySamyukCheck;
var
  stSql : string;
  stMessage : string;
begin
  if Not dmAdoRelay.ADOConnection.Connected then
  begin
    if Not dmAdoRelay.AdoRelayConnected(inttostr(G_nRelayDataBaseType), G_stRelayServerIP, G_stRelayServerPort,
                      G_stRelayUserID, G_stRelayUserPW, G_stRelayDataBaseName) then Exit;
  end;

  stSql := ' Select chto_bdcd,count(*) as cnt ';
  stSql := stSql + ' From UMCS_CHTO ';
  stSql := stSql + ' Where chto_reis = ''N'' ';
  stSql := stSql + ' Group by chto_bdcd ';

  With dmAdoRelay.ADOQuery1 do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    stMessage := '';
    if recordCount > 0 then
    begin
      While Not Eof do
      begin
        if FindField('chto_bdcd').AsString = '01' then
          stMessage := stMessage + '�ÿ°�:' + FindField('cnt').AsString + ' ��' + #10 + #13
        else if FindField('chto_bdcd').AsString = '02' then
          stMessage := stMessage + '������:' + FindField('cnt').AsString + ' ��' + #10 + #13
        else if FindField('chto_bdcd').AsString = '03' then
          stMessage := stMessage + '�췽��:' + FindField('cnt').AsString + ' ��' + #10 + #13
        else
          stMessage := stMessage + FindField('chto_bdcd').AsString + ':' + FindField('cnt').AsString + ' ��' + #10 + #13;
        Next;
      end;
      stMessage := stMessage + '�� �ű� �����Ͱ� �ֽ��ϴ�. ����ȭ������ �ٷ� ���ðڽ��ϱ�?';
    end;
    if stMessage <> '' then
    begin
      if (Application.MessageBox(PChar(stMessage),'����',MB_OKCANCEL) = IDOK)  then
      begin
        mn_RelaySamyukEmployClick(mn_RelaySamyukEmploy);
      end;
    end;
  end;

end;

procedure TfmMain.ReleayKyngHeeCheck;
begin
  if Not dmAdoRelay.ADOConnection.Connected then
  begin
    if Not dmAdoRelay.AdoRelayConnected(inttostr(G_nRelayDataBaseType), G_stRelayServerIP, G_stRelayServerPort,
                      G_stRelayUserID, G_stRelayUserPW, G_stRelayDataBaseName) then Exit;
  end;
  if Not dmAdoRelay.ADOConnection2.Connected then
  begin
    if Not dmAdoRelay.AdoRelayConnected2(inttostr(G_nRelayDataBaseType2), G_stRelayServerIP2, G_stRelayServerPort2,
                      G_stRelayUserID2, G_stRelayUserPW2, G_stRelayDataBaseName2) then Exit;
  end;
  if CheckTRN_MEMBERS_FOR_TELECOP then   //����� �������� ���� ���� ó�� ��
  begin
  end;
  if CheckTBL_CARDINFO then
  begin
  end;    
end;
{
function TfmMain.CheckTBL_CARD: Boolean;
var
  stSql : string;
  stMessage : string;
  stCompanyCode : string;
  stJijumCode : string;
  stDepartCode : string;
  nErrCount : integer;
  stVarCompanyCode,stVarEmCode : string;
begin
  stCompanyCode := '001';
  stJijumCode := '000';
  stDepartCode := '000';
  nErrCount := 0;

  result := False;

  stSql := 'select * from TBL_CARD ';
  if Trim(G_stRelayKHUAddDate) <> '' then
    stSql := stSql + ' Where WRKDT > ''' + G_stRelayKHUAddDate + ''' ';
  stSql := stSql + ' order by WRKDT ';

  With dmAdoRelay.ADOQuery1 do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;

    if recordCount < 1 then Exit;

    stMessage := inttostr(recordCount) + '�� �ű� �����Ͱ� �ֽ��ϴ�. �����͸� �߰��Ͻðڽ��ϱ�?';

    if (Application.MessageBox(PChar(stMessage),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;

    While Not Eof do
    begin
      if CheckTB_Employee(stCompanyCode,FindField('CARD_ID').AsString) then
      begin
        if Not UpdateTB_EMPLOYEEBasic(FindField('CARD_ID').AsString, stCompanyCode, stJijumCode,
                stDepartCode, '000', FindField('CARD_NAME').AsString, '', '', '',
                '', '', '', '', '99991231') then
        begin
          inc(nErrCount);
        end;
      end else
      begin
        if Not InsertTB_EMPLOYEEBasic(FindField('CARD_ID').AsString, stCompanyCode, stJijumCode,
            stDepartCode, '000', FindField('CARD_NAME').AsString, '', '', '',
            '', '', '', '', '99991231') then
        begin
          inc(nErrCount);
        end;
      end;

      if CheckTB_CARD(FindField('CARD_DATA').AsString,stVarCompanyCode,stVarEmCode) then
      begin
        if Not UpdateTB_CARD(FindField('CARD_DATA').AsString,'1','1',FindField('CARD_ID').AsString,stCompanyCode) then
        begin
          inc(nErrCount);
        end;
      end else
      begin
        if Not InsertTB_CARD(FindField('CARD_DATA').AsString,'1','1',FindField('CARD_ID').AsString,stCompanyCode) then
        begin
          inc(nErrCount);
        end;
      end;
      G_stRelayKHUAddDate := FindField('WRKDT').AsString;
      Application.ProcessMessages;
      Next;
    end;
  end;

  if nErrCount > 0 then
  begin
    showmessage(inttostr(nErrCount) + '���� �Է� ������ �߻� �߽��ϴ�.');
  end;

  stSql := CommonSql.UpdateTB_CONFIG('RELAY','KHUADDDAY',G_stRelayKHUAddDate);
  DataModule1.ProcessExecSQL(stSql);

end;   }
{
function TfmMain.CheckTBL_CARDDEL: Boolean;
var
  stSql : string;
  stMessage : string;
  stCompanyCode : string;
  stEmCode : string;
begin
  stCompanyCode := '001';
  result := False;
  stSql := 'Update TBL_CARD_DEL set ACRELAY = ''R'' ';
  stSql := stSql + ' where ACRELAY IS NULL ';
  stSql := stSql + ' OR ACRELAY <> ''Y'' ';

  dmAdoRelay.ProcessExecSQL(stSql);


  stSql := 'select * from TBL_CARD_DEL  where ACRELAY = ''R'' ';
{  if Trim(G_stRelayKHUDelDate) <> '' then
    stSql := stSql + ' Where INS_DT > ''' + G_stRelayKHUDelDate + ''' ';
  stSql := stSql + ' Order by INS_DT';  //

  With dmAdoRelay.ADOQuery1 do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;

    if recordCount < 1 then Exit;

    stMessage := inttostr(recordCount) + '�� ���� �����Ͱ� �ֽ��ϴ�. �����͸� �����Ͻðڽ��ϱ�?';

    if (Application.MessageBox(PChar(stMessage),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;

    While Not Eof do
    begin
      if CheckTB_CARD(FindField('CARD_DATA').AsString,stCompanyCode,stEmCode) then
      begin
        DeleteTB_CARD(FindField('CARD_DATA').AsString);
      end;
      if stEmCode <> '' then
      begin
        if Not CheckTB_CARDEmCode(stCompanyCode,stEmCode) then  //ī�� ������ �߿� ��� ������ ������ ��� ����
        begin
          DeleteTB_Employee(stCompanyCode,stEmCode);
        end;
      end;
      UpdateTB_DEVICECARDNO(FindField('CARD_DATA').AsString,'N');
      Application.ProcessMessages;
      Next;
      G_stRelayKHUDelDate := FindField('INS_DT').AsString;
    end;


  end;
  stSql := CommonSql.UpdateTB_CONFIG('RELAY','KHUDELDAY',G_stRelayKHUDelDate);
  DataModule1.ProcessExecSQL(stSql);

  stSql := 'Update TBL_CARD_DEL set ACRELAY = ''Y'' ';
  stSql := stSql + ' where ACRELAY = ''R'' ';

  dmAdoRelay.ProcessExecSQL(stSql);

end;    }

function TfmMain.InsertTB_EMPLOYEEBasic(aEmpID, aCompanyCode, aJijumCode,
  aDepartCode, aPosiCode, aEmpNM, aCompanyPhone, aHomePhone, aHandphone,
  aZipcode, aAddr1, aAddr2, aJoinDate, aRetireDate: string): Boolean;
var
  stSql : string;
  aFdmsID : string;
begin
  aFdmsID := GetFdmsID;
  stSql := 'Insert Into TB_EMPLOYEE(';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'EM_CODE,';
  stSql := stSql + 'CO_COMPANYCODE,';
  if Trim(aJijumCode) <> '' then
    stSql := stSql + 'CO_JIJUMCODE,';
  if Trim(aDepartCode) <> '' then
    stSql := stSql + 'CO_DEPARTCODE,';
  if Trim(aPosiCode) <> '' then
    stSql := stSql + 'PO_POSICODE,';
  stSql := stSql + 'EM_NAME,';
  if Trim(aCompanyPhone) <> '' then
    stSql := stSql + 'EM_COPHONE,';
  if Trim(aHomePhone) <> '' then
    stSql := stSql + 'EM_HOMEPHONE,';
  if Trim(aHandphone) <> '' then
    stSql := stSql + 'EM_HANDPHONE,';
  if Trim(aZipcode) <> '' then
    stSql := stSql + 'ZI_ZIPCODE,';
  if Trim(aAddr1) <> '' then
    stSql := stSql + 'EM_ADDR1,';
  if Trim(aAddr2) <> '' then
    stSql := stSql + 'EM_ADDR2,';
  if Trim(aJoinDate) <> '' then
    stSql := stSql + 'EM_JOINDATE,';
  if Trim(aRetireDate) <> '' then
    stSql := stSql + 'EM_RETIREDATE,';
  stSql := stSql + 'FDMS_ID,';
  stSql := stSql + 'AT_ATCODE,';
  stSql := stSql + 'EM_UPDATETIME,';
  stSql := stSql + 'EM_UPDATEOPERATOR ) ';
  stSql := stSql + 'VALUES ( ';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + '''' + aEmpID + ''',';
  stSql := stSql + '''' + aCompanyCode + ''',';
  if Trim(aJijumCode) <> '' then
    stSql := stSql + '''' + aJijumCode + ''',';
  if Trim(aDepartCode) <> '' then
    stSql := stSql + '''' + aDepartCode + ''',';
  if Trim(aPosiCode) <> '' then
    stSql := stSql + '''' + aPosiCode + ''',';
  stSql := stSql + '''' + aEmpNM + ''',';
  if Trim(aCompanyPhone) <> '' then
    stSql := stSql + '''' + aCompanyPhone + ''',';
  if Trim(aHomePhone) <> '' then
    stSql := stSql + '''' + aHomePhone + ''',';
  if Trim(aHandphone) <> '' then
    stSql := stSql + '''' + aHandphone + ''',';
  if Trim(aZipcode) <> '' then
    stSql := stSql + '''' + aZipcode + ''',';
  if Trim(aAddr1) <> '' then
    stSql := stSql + '''' + aAddr1 + ''',';
  if Trim(aAddr2) <> '' then
    stSql := stSql + '''' + aAddr2 + ''',';
  if Trim(aJoinDate) <> '' then
    stSql := stSql + '''' + aJoinDate + ''',';
  if Trim(aRetireDate) <> '' then
    stSql := stSql + '''' + aRetireDate + ''',';
  stSql := stSql + '''' + aFdmsID + ''',';
  stSql := stSql + '''001'',';
  stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + '''' + Master_ID + ''' )';

  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmMain.UpdateTB_EMPLOYEEBasic(aEmpID, aCompanyCode, aJijumCode,
  aDepartCode, aPosiCode, aEmpNM, aCompanyPhone, aHomePhone, aHandphone,
  aZipcode, aAddr1, aAddr2, aJoinDate, aRetireDate: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Update TB_EMPLOYEE set ';
  if Trim(aJijumCode) <> '' then
    stSql := stSql + 'CO_JIJUMCODE = ''' + aJijumCode + ''',';
  if Trim(aDepartCode) <> '' then
    stSql := stSql + 'CO_DEPARTCODE = ''' + aDepartCode + ''',';
  if Trim(aPosiCode) <> '' then
    stSql := stSql + 'PO_POSICODE = ''' + aPosiCode + ''',';
  stSql := stSql + 'EM_NAME = ''' + aEmpNM + ''',';
  if Trim(aCompanyPhone) <> '' then
    stSql := stSql + 'EM_COPHONE = ''' + aCompanyPhone + ''',';
  if Trim(aHomePhone) <> '' then
    stSql := stSql + 'EM_HOMEPHONE = ''' + aHomePhone + ''',';
  if Trim(aHandphone) <> '' then
    stSql := stSql + 'EM_HANDPHONE = ''' + aHandphone + ''',';
  if Trim(aZipcode) <> '' then
    stSql := stSql + 'ZI_ZIPCODE = ''' + aZipcode + ''',';
  if Trim(aAddr1) <> '' then
    stSql := stSql + 'EM_ADDR1 = ''' + aAddr1 + ''',';
  if Trim(aAddr2) <> '' then
    stSql := stSql + 'EM_ADDR2 = ''' + aAddr2 + ''',';
  if Trim(aJoinDate) <> '' then
    stSql := stSql + 'EM_JOINDATE = ''' + aJoinDate + ''',';
  if Trim(aRetireDate) <> '' then
    stSql := stSql + 'EM_RETIREDATE = ''' + aRetireDate + ''',';
  stSql := stSql + 'EM_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + 'EM_UPDATEOPERATOR = ''' + Master_ID + ''' ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmpID + ''' ';

  result := DataModule1.ProcessExecSQL(stSql,True);

end;

function TfmMain.CheckTB_Employee(aCompanyCode, aEmCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Select * from TB_EMPLOYEE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmcode + ''' ';

  with DataModule1.ADOTmpQuery do
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
end;

function TfmMain.CheckTB_CARD(aCardNo: string;var aCompanyCode,aEmCode : string): Boolean;
var
  stSql : string;
begin
  result := False;
  aCompanyCode := '000';
  aEmCode := '';
  stSql := 'Select * from TB_CARD ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';

  with DataModule1.ADOTmpQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    aCompanyCode := FindField('CO_COMPANYCODE').AsString;
    aEmCode := FindField('EM_CODE').AsString;
    result := True;
  end;
end;

function TfmMain.InsertTB_CARD(aCardNo, aCardGubun, aCardType, aEmpID,
  aCompanyCode: string): Boolean;
var
  stSql : string;
  nPositionNum : integer;
begin
  result := False;
  if Length(aCardNo) = 0 then Exit;
  if Not IsDigit(aCardGubun) then aCardGubun := '1';

  nPositionNum := GetMaxPositionNum;

  stSql := 'Insert Into TB_CARD(GROUP_CODE,CA_CARDNO,CA_GUBUN,CA_CARDTYPE,';
  stSql := stSql + 'EM_CODE,CO_COMPANYCODE,CA_UPDATETIME,POSITIONNUM,CA_UPDATEOPERATOR) ';
  stSql := stSql + ' Values ( ';
  stSql := stSql + '''' +  GROUPCODE + ''',';
  stSql := stSql + '''' + aCardNo + ''',' ;
  stSql := stSql + '''' + aCardGubun + ''',' ;
  stSql := stSql + '''' + aCardType + ''',' ;
  stSql := stSql + '''' + aEmpID + ''',' ;
  stSql := stSql + '''' + aCompanyCode + ''',' ;
  stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',' ;
  stSql := stSql + inttostr(nPositionNum) + ',' ;
  stSql := stSql + '''' + MASTER_ID + ''')' ;

  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmMain.UpdateTB_CARD(aCardNo, aCardGubun, aCardType, aEmpID,
  aCompanyCode: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Update TB_CARD set ';
  if Trim(aCardGubun) <> '' then
    stSql := stSql + 'CA_GUBUN = ''' + aCardGubun + ''',';
  if Trim(aCardType) <> '' then
    stSql := stSql + 'CA_CARDTYPE = ''' + aCardType + ''',';
  if Trim(aEmpID) <> '' then
    stSql := stSql + 'EM_CODE = ''' + aEmpID + ''',';
  if Trim(aCompanyCode) <> '' then
    stSql := stSql + 'CO_COMPANYCODE = ''' + aCompanyCode + ''',';
  stSql := stSql + 'CA_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + 'CA_UPDATEOPERATOR = ''' + MASTER_ID + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' +  GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ' ;

  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmMain.GetMaxPositionNum: integer;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  result := 1;

  stSql := 'Select Max(PositionNum) as MaxPosition From TB_CARD ';

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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;
      if Not IsDigit(FindField('MaxPosition').AsString) then
      begin
        Exit;
      end;
      result := FindField('MaxPosition').AsInteger + 1;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmMain.UpdateTB_DEVICECARDNO(aCardNo, aPermit: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Update TB_DEVICECARDNO Set ';
  stSql := stSql + ' DE_PERMIT = ''' + aPermit + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmMain.mn_EmployeeBranchClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmEmployeeBranch:= TfmEmployeeBranch.Create(Self);
  Try
    fmEmployeeBranch.Caption := mn_EmployeeBranch.Caption;
    fmEmployeeBranch.IsInsertGrade := bInsertGrade;
    fmEmployeeBranch.IsUpdateGrade := bUpdateGrade;
    fmEmployeeBranch.IsDeleteGrade := bDeleteGrade;
    fmEmployeeBranch.SHowmodal;
  Finally
    fmEmployeeBranch.Free;
  End;
end;

procedure TfmMain.Action_DoorTypeMonitoringExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_DoorTypeMonitoring.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmDoorTypeMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
  self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.SetDoorTypeMonitoring(const Value: Boolean);
begin
  FDoorTypeMonitoring := Value;

  btn_CurrentState.Enabled := value;
  mn_CurrentState.Enabled := value;
  mn_DoorControl.Enabled := value;
  mn_AlarmControl.Enabled := value;
  Action_TotClose.Enabled := value;
  mn_TotClose.Enabled := value;
  Action_TotOpen.Enabled := value;
  mn_TotOpen.Enabled := value;
  Action_TotAlarm.Enabled := value;
  mn_TotAlarm.Enabled := value;
  Action_TotCancel.Enabled := value;
  mn_TotCancel.Enabled := value;


  if Value then
  begin
//    Action_StateSearchExecute(Self);
    StateCheckTimer.Enabled := True;
    LiveTimer.Enabled := True;
    TravelMenuItem(mn_Monitoring,FPrivileges); //����͸�
  end else LiveTimer.Enabled := False;
end;

procedure TfmMain.CommandArrayCommandsTDoorTypeMonitorExecute(
  Command: TCommand; Params: TStringList);
var
  stDoorTypeMonitor : string;
begin
  stDoorTypeMonitor := Params.Values['VALUE'];

  if stDoorTypeMonitor = 'TRUE' then DoorTypeMonitoring := True
  else DoorTypeMonitoring := False;

end;

procedure TfmMain.SetKTTypeMonitoring(const Value: Boolean);
begin
  FKTTypeMonitoring := Value;

  btn_CurrentState.Enabled := value;
  mn_CurrentState.Enabled := value;
  mn_DoorControl.Enabled := value;
  mn_AlarmControl.Enabled := value;
  Action_TotClose.Enabled := value;
  mn_TotClose.Enabled := value;
  Action_TotOpen.Enabled := value;
  mn_TotOpen.Enabled := value;
  Action_TotAlarm.Enabled := value;
  mn_TotAlarm.Enabled := value;
  Action_TotCancel.Enabled := value;
  mn_TotCancel.Enabled := value;


  if Value then
  begin
//    Action_StateSearchExecute(Self);
    StateCheckTimer.Enabled := True;
    LiveTimer.Enabled := True;
    TravelMenuItem(mn_Monitoring,FPrivileges); //����͸�
  end else LiveTimer.Enabled := False;
end;

procedure TfmMain.Action_KTTypeMonitoringExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_KTTypeMonitoring.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmKTTypeMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
  self.FindClassForm('TfmKTTypeMonitoring').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.CommandArrayCommandsTKTTYPEMONITORExecute(
  Command: TCommand; Params: TStringList);
var
  stKTTypeMonitor : string;
begin
  stKTTypeMonitor := Params.Values['VALUE'];

  if stKTTypeMonitor = 'TRUE' then KTTypeMonitoring := True
  else KTTypeMonitoring := False;

end;


function TfmMain.DeleteTB_CARD(aCardNo: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Delete from TB_CARD ';
  stSql := stSql + ' Where GROUP_CODE = ''' +  GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ' ;

  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmMain.CheckTB_CARDEmCode(aCompanyCode,
  aEmCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := ' Select * from TB_CARD ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmCode + ''' ';
  with DataModule1.ADOTmpQuery do
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
end;

function TfmMain.DeleteTB_Employee(aCompanyCode, aEmCode: string): Boolean;
var
  stSql : string;
  stFdmsId : string;
begin
  stFdmsId := GetEmployeeFdmsID(aCompanyCode,aEmCode);
  stSql := CommonSql.InsertIntoTB_EMPHIS(aCompanyCode,aEmCode,stFdmsId,'3','','2',
           '','','','','','');//����
  result := DataModule1.ProcessExecSQL(stSql);

  stSql := 'Delete From TB_EMPLOYEE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmCode + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);


end;

procedure TfmMain.mn_KHUEmployeeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_Employ.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmKHUEmployee:= TfmKHUEmployee.Create(Self);
  fmKHUEmployee.IsInsertGrade := bInsertGrade;
  fmKHUEmployee.IsUpdateGrade := bUpdateGrade;
  fmKHUEmployee.IsDeleteGrade := bDeleteGrade;
  fmKHUEmployee.SHowmodal;
  fmKHUEmployee.Free;

end;

procedure TfmMain.mn_KHUEmpInitialClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_Employ.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmKHUEmpInitialize:= TfmKHUEmpInitialize.Create(Self);
  fmKHUEmpInitialize.IsInsertGrade := bInsertGrade;
  fmKHUEmpInitialize.IsUpdateGrade := bUpdateGrade;
  fmKHUEmpInitialize.IsDeleteGrade := bDeleteGrade;
  fmKHUEmpInitialize.SHowmodal;
  fmKHUEmpInitialize.Free;

end;

function TfmMain.CheckTRN_MEMBERS_FOR_TELECOP: Boolean;
var
  stSql : string;
  stMessage : string;
  stCompanyCode : string;
  stJijumCode : string;
  stDepartCode : string;
  nErrCount : integer;
  stVarCompanyCode,stVarEmCode : string;
begin
  stCompanyCode := '001';
  stJijumCode := '000';
  stDepartCode := '000';
  nErrCount := 0;

  result := False;

  stSql := 'select * from TRN_MEMBERS_FOR_TELECOP ';
  if Trim(G_stRelayKHUAddDate) <> '' then
    stSql := stSql + ' Where UPDATE_DATE > ''' + G_stRelayKHUAddDate + ''' ';
  stSql := stSql + ' order by UPDATE_DATE ASC ';

  With dmAdoRelay.ADOQuery2 do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;

    if recordCount < 1 then Exit;

    stMessage := inttostr(recordCount) + '�� ���� �����Ͱ� �ֽ��ϴ�. �����͸� ó���Ͻðڽ��ϱ�?';

    if (Application.MessageBox(PChar(stMessage),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;

    While Not Eof do
    begin
      if (FindField('ING_STAT').AsString = '0') or (FindField('ING_STAT').AsString = '1') then
      begin   //�����̰ų� �����̸�
        if Trim(FindField('CAMP_ID').AsString) = '2' then  //����ķ�۽��� ���ε�����
        begin
          if CheckTB_Employee(stCompanyCode,FindField('ID_NUM').AsString) then
          begin
            if Not UpdateTB_EMPLOYEEBasic(FindField('ID_NUM').AsString, stCompanyCode, '',
                    '', '', FindField('NAME_KOR').AsString, '', '', '',
                    '', '', '', '', '99991231') then
            begin
              //inc(nErrCount);
            end;
          end else
          begin
            if Not InsertTB_EMPLOYEEBasic(FindField('ID_NUM').AsString, stCompanyCode, stJijumCode,
                stDepartCode, '000', FindField('NAME_KOR').AsString, '', '', '',
                '', '', '', '', '99991231') then
            begin
              inc(nErrCount);
            end;
          end;
        end;
      end else
      begin
        DeleteTB_CARDEMPLOYEE(stCompanyCode,FindField('ID_NUM').AsString); //ī�� ���� �� ���� ����
        DeleteTB_EMPLOYEE(stCompanyCode,FindField('ID_NUM').AsString); //��� ���� ����
      end;

      G_stRelayKHUAddDate := FindField('UPDATE_DATE').AsString;
      Application.ProcessMessages;
      Next;
    end;
  end;

  if nErrCount > 0 then
  begin
    //showmessage(inttostr(nErrCount) + '���� �Է� ������ �߻� �߽��ϴ�.');
  end;

  stSql := CommonSql.UpdateTB_CONFIG('RELAY','KHUADDDAY',G_stRelayKHUAddDate);
  DataModule1.ProcessExecSQL(stSql);
  result := True;
end;

function TfmMain.DeleteTB_CARDEMPLOYEE(aCompanyCode,
  aEmCode: string): Boolean;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  result := False;

  stSql := ' Select * from TB_CARD ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmcode  + ''' ';

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
        Exit;
      End;
      result := True;
      if recordCount < 1 then Exit;
      While Not Eof do
      begin
        UpdateTB_DEVICECARDNO(FindField('CA_CARDNO').AsString,'N'); //���� ���� ��
        DeleteTB_CARD(FindField('CA_CARDNO').AsString);             //ī�� ����
        Next;
      end;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

function TfmMain.CheckTBL_CARDINFO: Boolean;
var
  stSql : string;
  stMessage : string;
  stCompanyCode : string;
  stVarCompanyCode : string;
  stVarEmCode : string;
  stJijumCode : string;
  stDepartCode : string;
  nErrCount : integer;
  stCardNo : string;
begin
  stCompanyCode := '001';
  stJijumCode := '000';
  stDepartCode := '000';
  nErrCount := 0;

  result := False;

  stSql := 'select * from VW_CARD_TELECOP ';
  stSql := stSql + ' Where WRTDATE > ''' + G_stRelayKHUCARDDate + ''' ';
  stSql := stSql + ' order by WRTDATE ASC ';

  With dmAdoRelay.ADOQuery1 do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;

    if recordCount < 1 then Exit;

    stMessage := inttostr(recordCount) + '�� ī�� ���� �����Ͱ� �ֽ��ϴ�. �����͸� ó���Ͻðڽ��ϱ�?';

    if (Application.MessageBox(PChar(stMessage),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;

    While Not Eof do
    begin
      if CheckTB_EMPLOYEE('001',Trim(FindField('IDNUM').AsString)) then    //�ִ� ��츸 Insert ����
      begin
        stCardNo := copy(Trim(FindField('CAMPUSID').AsString),1,1) +
                FillCharString(Trim(FindField('CARDID').AsString),'N',12) +
                FillCharString(inttostr(strtoint(FindField('ISSUNO').AsString)),'N',2,True) +
                'N';
        if (FindField('cardflag').AsString <> '2') then //�н� ī�尡 �ƴϸ� �μ�Ʈ ����
        begin
          if Not CheckTB_Card(stCardNo,stVarCompanyCode,stVarEmCode) then
          begin
            InsertTB_CARD(stCardNo, '1', '1', Trim(FindField('IDNUM').AsString),stCompanyCode);
          end else
          begin
            UpdateTB_CARD(stCardNo, '1', '1', Trim(FindField('IDNUM').AsString),stCompanyCode);
          end;
        end else
        begin
          UpdateTB_DEVICECARDNO(stCardNo,'N'); //���� ���� ��
          DeleteTB_CARD(stCardNo);             //ī�� ����
        end;
      end;

      G_stRelayKHUCARDDate := FindField('WRTDATE').AsString;
      Application.ProcessMessages;
      Next;
    end;
  end;

  if nErrCount > 0 then
  begin
    showmessage(inttostr(nErrCount) + '���� �Է� ������ �߻� �߽��ϴ�.');
  end;

  stSql := CommonSql.UpdateTB_CONFIG('RELAY','CARDADDDAY',G_stRelayKHUCARDDate);
  DataModule1.ProcessExecSQL(stSql);
  result := True;
end;

function TfmMain.GetFdmsID: string;
var
  stSql : string;
  nFdms_id : integer;
  TempAdoQuery :TADOQuery;
begin
  result := '31';
  stSql := 'select Max(Fdms_id) as fdms_id from TB_EMPLOYEE ';
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
        Exit;
      End;
      if recordCount < 1 then Exit;
      Try
        nFdms_id := FindField('fdms_id').AsInteger;
        if nFdms_id = 0 then Exit;
      Except
        Exit;
      End;
      result := inttostr(nFdms_id + 1);
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmMain.GetEmployeeFdmsID(aCompanyCode, aEmpID: string): string;
var
  stSql : string;
  nFdms_id : integer;
  TempAdoQuery :TADOQuery;
begin
  result := '0';
  stSql := 'select fdms_id from TB_EMPLOYEE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmpID + ''' ';

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
        Exit;
      End;
      if recordCount < 1 then Exit;
      Try
        nFdms_id := FindField('fdms_id').AsInteger;
        if nFdms_id = 0 then Exit;
      Except
        Exit;
      End;
      result := inttostr(nFdms_id);
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmMain.test1Click(Sender: TObject);
var
  stSql : string;
  nFdms_id : integer;
  TempAdoQuery :TADOQuery;
  stCardNo : string;
  i : integer;
begin

  nFdms_id := strtoint(GetFdmsID);
  i := 0;
  stSql := ' select * from TB_EMPHIS where CA_CARDNO is null ';
  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;

    with TempAdoQuery do
    begin
      Close;
      sql.Text := stSql;
      Try
        Open;
      Except
        Exit;
      End;
      While Not Eof do
      begin
        stCardNo := GetCardNo(FindField('CO_COMPANYCODE').AsString,FindField('EM_CODE').AsString);
        stSql := ' Update TB_EMPHIS set CA_CARDNO = ''' + stCardNo + ''' ';
        stSql := stsql + ' Where CO_COMPANYCODE = ''' + FindField('CO_COMPANYCODE').AsString + ''' ';
        stSql := stSql + ' AND EM_CODE = ''' + FindField('EM_CODE').AsString + ''' ';

        DataModule1.ProcessExecSQL(stSql);
        inc(i);
        //inc(nFdms_id);
        Application.ProcessMessages;
        StatusBar1.Panels[1].Text := inttostr(i);
        Next;
      end;
    end;
{    showmessage('������ȣ ��ϿϷ�');
    stSql := ' Delete From TB_EMPHIS ';
    DataModule1.ProcessExecSQL(stSql);
    showmessage('TB_EMPHIS ����');
    stSql := 'insert into tb_emphis(co_companycode,em_code,fdms_id,mode,send_status,CA_CARDTYPE,send_status2,em_name) ';
    stSql := stSql + 'select co_companycode,em_code,fdms_id,''1'',''N'',''1'',''N'',em_name from tb_employee ';
    DataModule1.ProcessExecSQL(stSql);
    showmessage('TB_EMPHIS ����');
    stSql := 'update tb_emphis set ca_cardno = (select ca_cardno from tb_card ';
    stSql := stSql + ' where tb_card.CO_COMPANYCODE = tb_emphis.CO_COMPANYCODE ';
    stSql := stSql + ' and tb_card.EM_CODE = tb_emphis.EM_CODE) ';
    DataModule1.ProcessExecSQL(stSql);
    showmessage('TB_EMPHIS CARD ����');
}
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

function TfmMain.GetCardNo(aCompanyCode, aEmpID: string): string;
var
  stSql : string;
  nFdms_id : integer;
  TempAdoQuery :TADOQuery;
begin
  result := '';
  stSql := 'select CA_CARDNO from TB_CARD ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmpID + ''' ';

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
        Exit;
      End;
      if recordCount < 1 then Exit;
      Try
        result := FindField('CA_CARDNO').AsString;
      Except
        Exit;
      End;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmMain.mn_FireRecoverClick(Sender: TObject);
var
  i : integer;
begin
  if (Application.MessageBox(PChar('��ü����� ȭ�纹�� ����� ���� �Ͻðڽ��ϱ�?'),'����',MB_OKCANCEL) = IDCANCEL)  then Exit;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      self.FindClassForm('TfmMonitoring').FindCommand('FIRERECOVER').Execute;
    end else if G_nMultiDaemon = 1 then
    begin
      self.FindClassForm('TfmMultiMonitoring').FindCommand('FIRERECOVER').Execute;
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','ȭ�纹��')
  end else if DoorTypeMonitoring then
  begin
    self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('FIRERECOVER').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','ȭ�纹��')
  end else if KTTypeMonitoring then
  begin
    self.FindClassForm('TfmKTTypeMonitoring').FindCommand('FIRERECOVER').Execute;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','ȭ�纹��')
  end else if AlarmTypeMonitoring then
  begin
    for i:=0 to NodeList.Count - 1 do
    begin
      SendDaemonDataList.Add('FIRERECOVERY'+ DATADELIMITER + NodeList.Strings[i] + DATADELIMITER);
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','ȭ�纹��')
  end else if AccessTypeMonitoring then
  begin
    for i:=0 to NodeList.Count - 1 do
    begin
      SendDaemonDataList.Add('FIRERECOVERY'+ DATADELIMITER + NodeList.Strings[i] + DATADELIMITER);
    end;
    DataModule1.TB_SYSTEMLOGInsert('000','00',DOORTYPE,'0','0000000000','ȭ�纹��')
  end;
end;

procedure TfmMain.DataModuleAdoConnected(Sender: TObject;
  DBConnected: Boolean);
begin
  if Not DBConnected then
  begin
    AdoConnectCheckTimer.Enabled := True;
  end;

end;

procedure TfmMain.AdoConnectCheckTimerTimer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'AdoConnectCheckTimer';
  AdoConnectCheckTimer.Enabled := False;
  if Not TDataBaseConfig.GetObject.DBConnected then Exit;

  TDataBaseConfig.GetObject.DBConnected := False;
  TDataBaseConfig.GetObject.DataBaseConnect;
  while Not TDataBaseConfig.GetObject.DBConnected do
  begin
    if TDataBaseConfig.GetObject.Cancel then
    begin
      Application.Terminate;
      Exit;
    End;
    TDataBaseConfig.GetObject.ShowDataBaseConfig;
  end;

end;

procedure TfmMain.mn_LOMOSEmployeeClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_Employ.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmLOMOSEmployee:= TfmLOMOSEmployee.Create(Self);
//  fmLOMOSEmployee.IsInsertGrade := bInsertGrade;
//  fmLOMOSEmployee.IsUpdateGrade := bUpdateGrade;
//  fmLOMOSEmployee.IsDeleteGrade := bDeleteGrade;
  fmLOMOSEmployee.SHowmodal;
  fmLOMOSEmployee.Free;

end;

procedure TfmMain.N37Click(Sender: TObject);
begin
  fmImageTest:= TfmImageTest.Create(Self);
  Try
    fmImageTest.SHowmodal;
  Finally
    fmImageTest.Free;
  End;

end;

procedure TfmMain.N38Click(Sender: TObject);
begin

  fmTestCardCreate:= TfmTestCardCreate.Create(Self);
  Try
    fmTestCardCreate.SHowmodal;
  Finally
    fmTestCardCreate.Free;
  End;
end;

function TfmMain.CreateZmosConfig: string;
var
  ini_fun : TiniFile;
  stSql : string;
  TempAdoQuery :TADOQuery;
  stCompanyCode : string;
  stCompanyName : string;
  stResult : string;
begin
  result := '';
  stResult := '';

  Try
    ini_fun := TiniFile.Create('c:\'+ L_stCustomerID + '.INI');
  Except
    Exit;
  End;
  Try
    ini_fun.WriteString('ZMOS','DBTYPE',DBType);
    stResult := 'DBTYPE' + ':' + DBType;
    ini_fun.WriteString('ZMOS','DBNAME',DBName);
    stResult := stResult + ';' + 'DBNAME' + ':' + DBName;
    ini_fun.WriteString('ZMOS','DBSERVER',DBServer);
    stResult := stResult + ';' + 'DBSERVER' + ':' + DBServer;
    ini_fun.WriteString('ZMOS','DBUSER',DBUser);
    stResult := stResult + ';' + 'DBUSER' + ':' + DBUser;
    ini_fun.WriteString('ZMOS','DBUSERPW',DBUserPw);
    stResult := stResult + ';' + 'DBUSERPW' + ':' + DBUserPw;
    ini_fun.WriteString('ZMOS','DBPORT',DBPort);
    stResult := stResult + ';' + 'DBPORT' + ':' + DBPort;
  Except
    ini_fun.Free;    //Window 7 ���� ���� �κп� ���� write�� �ȵ�
    Exit;
  End;

  Try

    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    TempAdoQuery.DisableControls;

    with TempAdoQuery do
    begin
      stSql := 'Select * from TB_CONFIG ';
      stSql := stSql + ' where CO_CONFIGGROUP = ''COMMON'' ';
      stSql := stSql + ' AND CO_CONFIGCODE = ''TABLE_VER'' ';

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
        ini_fun.WriteString('CUSTOMER','TABLEVER',FindField('CO_CONFIGVALUE').AsString);
        stResult := stResult + ';' + 'TABLEVER' + ':' + FindField('CO_CONFIGVALUE').AsString;
        Next;
      end;

      stSql := 'Select * from TB_COMPANY ';
      stSql := stSql + ' where CO_GUBUN = ''1'' ';
      stSql := stSql + ' Or CO_GUBUN = ''2'' ';

      Close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;
      if recordCount < 1 then Exit;
      while Not Eof do
      begin
        stCompanyCode := FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString;
        stCompanyName := FindField('CO_NAME').AsString;
        ini_fun.WriteString('CUSTOMER',stCompanyCode,stCompanyName);
        stResult := stResult + ';' + stCompanyCode + ':' + stCompanyName;
        Next;
      end;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
    ini_fun.Free;
  End;
  result := stResult;
end;

function TfmMain.FTPZeronServerSend: Boolean;
begin
  result := False;
  IdFTP1.Host := 'zeron.co.kr';
  IdFTP1.Username := 'zeron';
  IdFTP1.Password := 'zeronpass';
  IdFTP1.Connect(True,100);
  if IdFTP1.Connected then
  begin
    IdFTP1.ChangeDir('zmosconfig');
    IdFTP1.Put('c:\'+ L_stCustomerID + '.INI',L_stCustomerID + '.INI',False);
    result := True;
  end;
end;

function TfmMain.HTTPZeronServerSend(aContent:string): Boolean;
var
  stUrl : string;
begin
  Try
    stUrl := 'http://zeron.co.kr/zmosconfig/write.asp?filename=' + L_stCustomerID + '.INI' + '&content='+aContent;
    if Length(stUrl) > 1000 then stUrl := copy(stUrl,1,1000);
    WebBrowser1.Navigate(stUrl);
  Except
    Exit;
  End;
end;

procedure TfmMain.mn_KTIssusNRegClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(mn_KTIssusNReg.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmKTIssusNReg');

end;

procedure TfmMain.mn_DeviceVerInfoClick(Sender: TObject);
begin
  MDIChildShow('TfmDeviceVerInfo');
end;

procedure TfmMain.mn_TimeAccessReportClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmTimeAccessReport');
  //self.FindClassForm('TfmTimeAccessReport').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.mn_NotCardReportClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmNotCardReport');
  //self.FindClassForm('TfmNotCardReport').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.FTP1Click(Sender: TObject);
begin
  fmFTPDownLoad := TfmFTPDownLoad.create(self);
  fmFTPDownLoad.Caption := FTP1.Caption;
  fmFTPDownLoad.SHowmodal;
end;

procedure TfmMain.SetFTPDownLoadShow(const Value: Boolean);
begin
  FFTPDownLoadShow := Value;
end;

procedure TfmMain.mn_CardListClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(mn_CardList.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmCardList',bInsertGrade,bUpdateGrade,bDeleteGrade);

end;

procedure TfmMain.mn_cardValidDateClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(mn_cardValidDate.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmCardValidDate',bInsertGrade,bUpdateGrade,bDeleteGrade);

end;

procedure TfmMain.mn_LOMOSBackupClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_Employ.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  fmLOMOSEmployeeBackup:= TfmLOMOSEmployeeBackup.Create(Self);
  fmLOMOSEmployeeBackup.IsInsertGrade := bInsertGrade;
  fmLOMOSEmployeeBackup.IsUpdateGrade := bUpdateGrade;
  fmLOMOSEmployeeBackup.IsDeleteGrade := bDeleteGrade;
  fmLOMOSEmployeeBackup.SHowmodal;
  fmLOMOSEmployeeBackup.Free;

end;

procedure TfmMain.Action_AlarmTypeMonitoringExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_AlarmTypeMonitoring.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmAlarmTypeMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
  self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.SetAlarmTypeMonitoring(const Value: Boolean);
begin
  FAlarmTypeMonitoring := Value;

  btn_CurrentState.Enabled := value;
  mn_CurrentState.Enabled := value;
  mn_DoorControl.Enabled := value;
  mn_AlarmControl.Enabled := value;
  Action_TotClose.Enabled := value;
  mn_TotClose.Enabled := value;
  Action_TotOpen.Enabled := value;
  mn_TotOpen.Enabled := value;
  Action_TotAlarm.Enabled := value;
  mn_TotAlarm.Enabled := value;
  Action_TotCancel.Enabled := value;
  mn_TotCancel.Enabled := value;


  if Value then
  begin
//    Action_StateSearchExecute(Self);
    //StateCheckTimer.Enabled := True;
    LiveTimer.Enabled := True;
    TravelMenuItem(mn_Monitoring,FPrivileges); //����͸�
  end else LiveTimer.Enabled := False;
end;

procedure TfmMain.CommandArrayCommandsTAlarmTypeMonitorExecute(
  Command: TCommand; Params: TStringList);
var
  stAlarmTypeMonitor : string;
begin
  stAlarmTypeMonitor := Params.Values['VALUE'];

  if stAlarmTypeMonitor = 'TRUE' then AlarmTypeMonitoring := True
  else AlarmTypeMonitoring := False;

end;

procedure TfmMain.SetFDaemonServerConnected(const Value: Boolean);
var
  i : integer;
begin
  if FDaemonServerConnected = Value then Exit;
  FDaemonServerConnected := Value;
  if G_nMultiSocket = 1 then
  begin
    if FDaemonServerConnected and FControlSocketConnected then
    begin
      btnDaemonConnect.Enabled := False;
    end else btnDaemonConnect.Enabled := True;
  end else btnDaemonConnect.Enabled := Not Value;

  if Not Value then
  begin
    if G_nMultiSocket = 0 then
      SendDaemonDataList.Clear;

    for i := 0 to NodeList.Count - 1 do
    begin
      TNodeState(NodeList.Objects[i]).NodeConnected := False;
    end;

    if Monitoring then
    begin
      if G_nMultiDaemon = 0 then
      begin
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'DISCONNECTED';
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Execute;
      end;
    end;
    if DoorTypeMonitoring then
    begin
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'DISCONNECTED';
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Execute;
    end;
    if KTTypeMonitoring then
    begin
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'DISCONNECTED';
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Execute;
    end;
    if AlarmTypeMonitoring then
    begin
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'DISCONNECTED';
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Execute;
    end;
    if AccessTypeMonitoring then
    begin
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'DISCONNECTED';
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Execute;
    end;
  end else
  begin
    if Monitoring then
    begin
      if G_nMultiDaemon = 0 then
      begin
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'CONNECTED';
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
        self.FindClassForm('TfmMonitoring').FindCommand('STATE').Execute;
      end;
    end;
    if DoorTypeMonitoring then
    begin
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'CONNECTED';
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmDoorTypeMonitoring').FindCommand('STATE').Execute;
    end;
    if KTTypeMonitoring then
    begin
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'CONNECTED';
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmKTTypeMonitoring').FindCommand('STATE').Execute;
    end;

    if AlarmTypeMonitoring then
    begin
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'CONNECTED';
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmAlarmTypeMonitoring').FindCommand('STATE').Execute;
    end;
    
    if AccessTypeMonitoring then
    begin
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Params.Values['COMMAND'] := 'SERVER';
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Params.Values['VALUE'] := 'CONNECTED';
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Params.Values['ID'] := '';
      self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('STATE').Execute;
    end;

    Action_StateSearchExecute(self);
    //���⼭ ����Ȯ�� ����.
//    SendDaemonTimer.Enabled := True;
  end;
end;

procedure TfmMain.ControlSocketPortWsConnect(Sender: TObject);
begin
  ControlSocketConnected := True;
end;

procedure TfmMain.ControlSocketPortWsDisconnect(Sender: TObject);
begin
  ControlSocketConnected := False;
end;

procedure TfmMain.ControlSocketPortWsError(Sender: TObject;
  ErrCode: Integer);
begin
  ControlSocketConnected := False;
end;


procedure TfmMain.ControlSocketPortTriggerAvail(CP: TObject; Count: Word);
var
  stTemp : string;
  stPacketData : string;
  i : integer;
begin
  stTemp:= '';
  G_bControlSocketConnected := True;
  for i := 1 to Count do stTemp := stTemp + ControlSocketPort.GetChar;
  ControlComBuff:= ControlComBuff + stTemp ;
  repeat
    stPacketData:= Copy(ControlComBuff,1,Pos(LINEEND,ControlComBuff));
    Delete(ControlComBuff,1,Pos(LINEEND,ControlComBuff));

{    if ControlDataList.Strings[0] = stPacketData then
    begin
      ControlDataList.Delete(0);
      G_bControlReceive := True;
    end; }

    Application.ProcessMessages;
  until pos(LINEEND,ServerComBuff) = 0;

end;

procedure TfmMain.ControlDataSendStart;
begin
  if not(assigned(ControlSendThread)) then begin
     ControlSendThread := TControlSendThread.Create(true) ;
  end;
  if (assigned(ControlSendThread)) and (ControlSendThread.Suspended  = true) then
  begin
   ControlSendThread.Resume ;
  end;
end;


procedure TfmMain.ControlDataSendStop;
begin
   if (assigned(ControlSendThread)) and (ControlSendThread.Suspended  = false) then
   begin
      Try
        ControlSendThread.Suspend ;
      Except
      End;
   end;
   // ������ ��ü ���� Ȯ��
   if assigned(ControlSendThread) then
   begin
     // �����尡 ��� suspend �� �̸�
     if ControlSendThread.Suspended  = true then
     begin
      ControlSendThread.Resume;
     end;
     //
     ControlSendThread.Terminate ;
     ControlSendThread.WaitFor ;
     ControlSendThread.Free ;
     ControlSendThread := nil ;
   end;
end;

{ TControlSendThread }

procedure TControlSendThread.ControlDataSend(aData: string);
begin
  if fmMain.ControlSocketPort.Open then
  begin
    fmMain.ControlSocketPort.PutString(aData);
  end;
end;

procedure TControlSendThread.Execute;
begin
  inherited;
  while not (self.Terminated) do
  begin
    if fmMain.SendDaemonDataList.Count > 0 then
    begin
      fmMain.FControlSend.Enter;
      ControlDataSend(fmMain.SendDaemonDataList.Strings[0] + LINEEND );
      fmMain.SendDaemonDataList.Delete(0);
      fmMain.StatusBar1.Panels[4].Text := inttostr(fmMain.SendDaemonDataList.Count);
      fmMain.FControlSend.Leave;
    end;
    sleep(1) ;
  end;

end;

procedure TfmMain.SetFControlSocketConnected(const Value: Boolean);
begin
  if FControlSocketConnected = Value then Exit;
  FControlSocketConnected := Value;
  if G_nMultiSocket = 1 then
  begin
    if FDaemonServerConnected and FControlSocketConnected then
    begin
      btnDaemonConnect.Enabled := False;
    end else btnDaemonConnect.Enabled := True;
  end;// else btnDaemonConnect.Enabled := Not Value;

  if Not Value then
  begin
    if G_nMultiSocket = 1 then
    begin
      SendDaemonDataList.Clear;
      pan_Message.Visible := True;
      st_Message.Caption := '���� ���� ����';
    end;
  end else
  begin
    pan_Message.Visible := False;
  end;
end;

{ TReceiveMonitorThread }

procedure TReceiveMonitorThread.Execute;
var
  stTemp : string;
begin
  inherited;
  while not (self.Terminated) do
  begin
    if fmMain.ReceiveDataList.Count > 0 then
    begin
      fmMain.FReceiveTCS.Enter;
      stTemp := fmMain.ReceiveDataList.Strings[0];
      fmMain.ReceiveDataList.Delete(0);
      //fmMain.StatusBar1.Panels[5].Text := inttostr(fmMain.ReceiveDataList.Count);
      fmMain.FReceiveTCS.Leave;
      MonitorProcess(stTemp);
    end;
    sleep(1) ;
  end;
  //showmessage('Thread ����');

end;

procedure TReceiveMonitorThread.MonitorProcess(aData: string);
begin
  fmMain.MonitoringDataProcess(aData);
end;

procedure TfmMain.ReceiveThreadStart;
begin
  if not(assigned(ReceiveThread)) then begin
     ReceiveThread := TReceiveMonitorThread.Create(true) ;
  end;
  if (assigned(ReceiveThread)) and (ReceiveThread.Suspended  = true) then
  begin
   ReceiveThread.Resume ;
  end;
end;

procedure TfmMain.ReceiveThreadStop;
begin
   if (assigned(ReceiveThread)) and (ReceiveThread.Suspended  = false) then
   begin
      Try
        ReceiveThread.Suspend ;
      Except
      End;
   end;
   // ������ ��ü ���� Ȯ��
   if assigned(ReceiveThread) then
   begin
     // �����尡 ��� suspend �� �̸�
     if ReceiveThread.Suspended  = true then
     begin
      ReceiveThread.Resume;
     end;
     //
     ReceiveThread.Terminate ;
     ReceiveThread.WaitFor ;
     ReceiveThread.Free ;
     ReceiveThread := nil ;
   end;
end;

procedure TfmMain.BuildingSectorDeviceLoad;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
  stBuildingCode : string;
begin
  BuildingList.Clear;
  BuildingNameList.Clear;
  BuildingListAddDevice('000000000','��ü');

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''' + BuildingStep + ''' ';
  stSql := stSql + ' Order by LO_DONGCODE,LO_FLOORCODE,LO_AREACODE ';

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
        Exit;
      End;
      While Not Eof do
      begin
        stBuildingCode := FindField('LO_DONGCODE').AsString + FindField('LO_FLOORCODE').AsString + FindField('LO_AREACODE').AsString;
        BuildingListAddDevice(stBuildingCode, FindField('LO_NAME').AsString);
        Next;
        Application.ProcessMessages;
      end;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;



procedure TfmMain.BuildingListAddDevice(aBuildingCode,aBuildingName: string);
var
  stSql : string;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  TempAdoQuery :TADOQuery;
  TempBuilding : TBuildingState;
  stDeviceID : string;
  stBuildingListID : string;
begin
  stBuildingCode := copy(aBuildingCode,1,3);
  stFloorCode := copy(aBuildingCode,4,3);
  stAreaCode := copy(aBuildingCode,7,3);

  if BuildingStep = '0' then stBuildingListID := copy(aBuildingCode,1,3)
  else if BuildingStep = '1' then stBuildingListID := copy(aBuildingCode,1,6)
  else if BuildingStep = '2' then stBuildingListID := copy(aBuildingCode,1,9);


  stSql := ' select * from TB_ALARMDEVICE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  if aBuildingCode <> '000000000' then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + stBuildingCode + ''' ';
    if BuildingStep = '1' then
    begin
      stSql := stSql + ' AND LO_FLOORCODE = ''' + stFloorCode + ''' ';
    end else if BuildingStep = '2' then
    begin
      stSql := stSql + ' AND LO_FLOORCODE = ''' + stFloorCode + ''' ';
      stSql := stSql + ' AND LO_AREACODE = ''' + stAreaCode + ''' ';
    end;
  end;
  stSql := stSql + ' Order by AL_VIEWSEQ,AC_NODENO,AC_ECUID ';

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
        Exit;
      End;

      if recordCount < 1 then Exit;

      TempBuilding := TBuildingState.Create(self);
      TempBuilding.DeviceCount := recordCount;
      While Not Eof do
      begin
        TempBuilding.DeviceAdd(FindField('AC_NODENO').AsInteger,FindField('AC_ECUID').AsString,FindField('AL_ZONENAME').AsString);
        TempBuilding.BuildingCode := stBuildingListID;

        TempBuilding.OnBuildingAlarmEvent := BuildingAlarmEventProcess;
        Next;
        Application.ProcessMessages;
      end;
      if TempBuilding <> nil then
      begin
        if BuildingList.IndexOf(stBuildingListID) < 0 then
        begin
           BuildingList.AddObject(stBuildingListID,TempBuilding);
           BuildingNameList.Add(aBuildingName);
        end;
      end;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;


procedure TfmMain.LoadDevice;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
  TempNodeState : TNodeState;
  TempDeviceState : TDeviceState;
  stNodeNo : string;
  stEcuID : string;
  stDeviceID : string;
  nIndex : integer;
begin
  DeviceStateList.Clear;    //��⺰ ���� ����

  stSql := 'Select a.*,b.AL_ZONENAME,b.LO_DONGCODE as BuildingCode,';
  stSql := stSql + ' b.LO_FLOORCODE as FloorCode,b.LO_AREACODE as AreaCode ';
  stSql := stSql + ' from TB_ACCESSDEVICE a ';
  stSql := stSql + ' Left Join TB_ALARMDEVICE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' Order by a.AC_VIEWSEQ, a.AC_NODENO,a.AC_ECUID ';

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
        Exit;
      End;
      While Not Eof do
      begin
        stNodeNo := FillZeroNumber(FindField('AC_NODENO').asInteger,3);
        stEcuID := FindField('AC_ECUID').AsString;
        stDeviceID := stNodeNo + stEcuID;
{        if stEcuID = '00' then
        begin
          //��� ���� ����
          TempNodeState := TNodeState.Create(self);
          TempNodeState.NodeNo := FindField('AC_NODENO').asInteger;
          TempNodeState.NodeIP := FindField('AC_MCUIP').asstring;
          TempNodeState.NodeName := FindField('AC_DEVICENAME').asstring;
          TempNodeState.NodeConnected := False;

          TempNodeState.OnNodeConnectState := NodeConnectState;

          NodeList.AddObject(stNodeNo,TempNodeState);
        end;  }
        nIndex := NodeList.IndexOf(stNodeNo);
        if nIndex > -1 then
        begin
          TNodeState(NodeList.Objects[nIndex]).DeviceAdd(stEcuID);
        end;
        TempDeviceState := TDeviceState.Create(self);
        TempDeviceState.BuildingCode := FindField('BuildingCode').asstring;
        TempDeviceState.FloorCode := FindField('FloorCode').AsString;
        TempDeviceState.AreaCode := FindField('AreaCode').AsString;
        TempDeviceState.NodeNo := FindField('AC_NODENO').AsInteger;
        TempDeviceState.ECUID := stEcuID;
        TempDeviceState.DeviceName := FindField('AC_DEVICENAME').asstring;
        TempDeviceState.AlarmName := FindField('AL_ZONENAME').asstring;
        TempDeviceState.Connected := False;
        TempDeviceState.AlarmMode := cmNothing;
        TempDeviceState.AlarmEventState := aeNothing;
        TempDeviceState.Door1Use := False;
        TempDeviceState.Door2Use := False;
        TempDeviceState.Door1CardMode := pnNothing;
        TempDeviceState.Door1ManageMode := dmNothing;
        TempDeviceState.Door1State := dsNothing;
        TempDeviceState.Door1LockState := lsNothing;
        TempDeviceState.Door1Fire := False;
        TempDeviceState.Door2CardMode := pnNothing;
        TempDeviceState.Door2ManageMode := dmNothing;
        TempDeviceState.Door2State := dsNothing;
        TempDeviceState.Door2LockState := lsNothing;
        TempDeviceState.Door2Fire := False;
        
        TempDeviceState.OnFireStateChange := DoorFireStateChange;
        TempDeviceState.OnDeviceConnected := DeviceConnected;
        TempDeviceState.OnDoorStateChange := DoorStateChange;
        TempDeviceState.OnAlarmModeChanged := AlarmModeChanged;
        TempDeviceState.OnExitButton := ExitButtonPress;
        TempDeviceState.OnAlarmEventAnalysis := AlarmEventAnalysis;
        TempDeviceState.OnAccessEvent := AccessEventProcess;
        TempDeviceState.OnDeviceAlarmEvent := DeviceAlarmEventProcess;

        //nIndex := DeviceStateList.IndexOf(stDeviceID);
        DeviceStateList.AddObject(stDeviceID,TempDeviceState);
        Next;
        Application.ProcessMessages;
      end;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;


end;

procedure TfmMain.LoadDoor;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
  stDeviceID : string;
  nTempIndex : integer;
  stBuildingID : string;
begin
  stSql := ' Select * from TB_DOOR ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
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
        Exit;
      End;
      While Not Eof do
      begin
        stDeviceID := FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString;
        nTempIndex := DeviceStateList.IndexOf(stDeviceID);
        if nTempIndex > -1 then
        begin
          if FindField('DO_DOORNO').AsString = '1' then
          begin
            TDeviceState(DeviceStateList.Objects[nTempIndex]).Door1Use := True;
            TDeviceState(DeviceStateList.Objects[nTempIndex]).Door1Name := FindField('DO_DOORNONAME').AsString;
          end else if FindField('DO_DOORNO').AsString = '2' then
          begin
            TDeviceState(DeviceStateList.Objects[nTempIndex]).Door2Use := True;
            TDeviceState(DeviceStateList.Objects[nTempIndex]).Door2Name := FindField('DO_DOORNONAME').AsString;
          end
        end;
        stBuildingID := FindField('LO_DONGCODE').AsString + FindField('LO_FLOORCODE').AsString + FindField('LO_AREACODE').AsString ;
        if BuildingStep = '0' then stBuildingID := copy(stBuildingID,1,3)
        else if BuildingStep = '1' then stBuildingID := copy(stBuildingID,1,6)
        else if BuildingStep = '2' then stBuildingID := copy(stBuildingID,1,9);
        
        nTempIndex := BuildingList.IndexOf(stBuildingID);
        if nTempIndex > -1 then
        begin
          TBuildingState(BuildingList.Objects[nTempIndex]).DoorAdd(FindField('AC_NODENO').AsInteger,FindField('AC_ECUID').AsString,FindField('DO_DOORNO').AsString,FindField('DO_DOORNONAME').AsString);
        end;

        Next;
      end;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;


procedure TfmMain.DoorFireStateChange(Sender: TObject; NodeNo: integer;
  aEcuID, aDoorNo: string; aFireState: Boolean);
var
  fmAccessTypeMonitoring :TForm;
  fmMonitor :TForm;
  fmKTTypeMonitoring : TForm;
begin
  if L_bClose then Exit;
  //����͸��� ���Թ� ȭ�� �߻� �� ���� ó��
  if AccessTypeMonitoring then
  begin
    fmAccessTypeMonitoring := MDIForm('TfmAccessTypeMonitoring');
    if fmAccessTypeMonitoring <> nil then
    begin
      TfmAccessTypeMonitoring(fmAccessTypeMonitoring).DoorFireStateChange(NodeNo,
          aEcuID, aDoorNo, aFireState);
    end;
  end;

  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).DoorFireStateChange(NodeNo,aEcuID, aDoorNo, aFireState)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).DoorFireStateChange(NodeNo,aEcuID, aDoorNo, aFireState);
    end;
  end;

  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).DoorFireStateChange(NodeNo,aEcuID, aDoorNo, aFireState);
    end;
  end;

end;

procedure TfmMain.MemoryCreate;
begin
  FControlSend := TCriticalSection.Create;
  FReceiveTCS := TCriticalSection.Create;
  FDataProcessTCS := TCriticalSection.Create;

  SendDaemonDataList := TStringList.Create;
  ReceiveDataList := TStringList.Create;
  DownLoadCardList := TStringList.Create;
  ServerList := TStringList.Create;
  DeviceList := TStringList.Create;
  AlarmModeNotCardList := TStringList.Create;  //ī�嵥���� �ƴ� ����Ʈ
  ZoneDetectList := TStringList.Create;        //������ ���� �ڵ�
  BuildingList := TStringList.Create;
  BuildingNameList := TStringList.Create;
  NodeList := TStringList.Create;
  DeviceStateList := TStringList.Create;
  AlarmEventViewStatusCode := TStringList.Create;
  AlarmEventSoundStatusCode := TStringList.Create;
  AlarmSoundFileList := TStringList.Create;
  LocationMapList := TStringList.Create;

  DaemonState := TDaemonState.Create(self);
  DaemonState.OnDaemonRestart := RestartServer;
  DaemonState.OnAlarmRefresh := AlarmRefresh;
  DaemonState.OnFireRecovery := FireRecovery;
//  DaemonState.OnServerConnected := ServerConnectEvent;

  DataModule1.OnAdoConnected := DataModuleAdoConnected;

end;

procedure TfmMain.MemoryClear;
begin
  ServerComBuff := '';
  SendDaemonDataList.Clear;
  ReceiveDataList.Clear;
  DownLoadCardList.Clear;
  ServerList.Clear;
  DeviceList.Clear;
  AlarmModeNotCardList.Clear;  //ī�嵥���� �ƴ� ����Ʈ
  ZoneDetectList.Clear;        //������ ���� �ڵ�
  BuildingList.Clear;
  BuildingNameList.Clear;
  NodeList.Clear;
  DeviceStateList.Clear;
  AlarmEventViewStatusCode.Clear;
  AlarmEventSoundStatusCode.Clear;
  AlarmSoundFileList.Clear;
  LocationMapList.Clear;

end;

procedure TfmMain.MemoryFree;
begin
  
  FControlSend.Free;
  FReceiveTCS.Free;
  FDataProcessTCS.Free;

  SendDaemonDataList.Free;
  ReceiveDataList.Free;
  DownLoadCardList.Free;
  ServerList.Free;
  DeviceList.Free;
  AlarmModeNotCardList.Free;  //ī�嵥���� �ƴ� ����Ʈ
  ZoneDetectList.Free;        //������ ���� �ڵ�
  BuildingList.Free;
  BuildingNameList.Free;
  NodeList.Free;
  DeviceStateList.Free;
  AlarmEventViewStatusCode.Free;
  AlarmEventSoundStatusCode.Free;
  AlarmSoundFileList.Free;

  LocationMapList.Free;

end;

procedure TfmMain.RestartServer(Sender: TObject);
begin
  if L_bClose then Exit;
  //���� ����۽� ����
  //��� �� �ε� �� ����͸� ȭ�� �� �ε� �� ���� Ȯ��
end;

procedure TfmMain.TimerStopAndFree;
begin
  SendDaemonTimer.Enabled := False;
  NowTimer.Enabled := False;
  ServerConnectTimer.Enabled := False;
  LiveTimer.Enabled := False;
  StateCheckTimer.Enabled := False;
  MessageTimer.Enabled := False;
  AdoConnectCheckTimer.Enabled := False;
  DaemonReceiveTimer.Enabled := False;
  //Delay(300);
  SendDaemonTimer.Free;
  NowTimer.Free;
  ServerConnectTimer.Free;
  LiveTimer.Free;
  StateCheckTimer.Free;
  MessageTimer.Free;
  AdoConnectCheckTimer.Free;
  DaemonReceiveTimer.free;
end;

procedure TfmMain.NodeConnectState(Sender: TObject; NodeNo: integer;
  aConnectState: TNodeCurrentState);
var
  fmAlarmTypeMonitoring :TForm;
  fmAccessTypeMonitoring :TForm;
  fmMonitor : TForm;
  fmKTTypeMonitoring : TForm;
begin
  if L_bClose then Exit;
  //���⿡�� ��� ���ؼ� ���°� ���� �ɶ� ����͸� ���°� ���� �� ����.
  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).NodeConnectState(NodeNo,aConnectState);
    end;
  end;
  if AccessTypeMonitoring then
  begin
    fmAccessTypeMonitoring := MDIForm('TfmAccessTypeMonitoring');
    if fmAccessTypeMonitoring <> nil then
    begin
      TfmAccessTypeMonitoring(fmAccessTypeMonitoring).NodeConnectState(NodeNo,aConnectState);
    end;
  end;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).NodeConnectState(NodeNo,aConnectState)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).NodeConnectState(NodeNo,aConnectState);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).NodeConnectState(NodeNo,aConnectState);
    end;
  end;
end;

procedure TfmMain.DeviceConnected(Sender: TObject; Value: Boolean;
  NodeNo: integer; aEcuID: string);
var
  fmAlarmTypeMonitoring :TForm;
  fmAccessTypeMonitoring :TForm;
  fmMonitor : TForm;
  fmKTTypeMonitoring : TForm;
begin
  if L_bClose then Exit;
  //��⺰ ���ӻ��°� ���� �Ǹ� ���� ��ƾ���� ���⼭ ����͸� ���÷��� ����
  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).DeviceConnected(NodeNo,aEcuID,Value);
    end;
  end;
  if AccessTypeMonitoring then
  begin
    fmAccessTypeMonitoring := MDIForm('TfmAccessTypeMonitoring');
    if fmAccessTypeMonitoring <> nil then
    begin
      TfmAccessTypeMonitoring(fmAccessTypeMonitoring).DeviceConnected(NodeNo,aEcuID,Value);
    end;
  end;

  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).DeviceConnected(NodeNo,aEcuID,Value)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).DeviceConnected(NodeNo,aEcuID,Value);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).DeviceConnected(NodeNo,aEcuID,Value);
    end;
  end;

end;

procedure TfmMain.DoorStateChange(Sender: TObject; NodeNo: integer; aEcuID,
  aDoorNo: string; aDoorManageType: TDoorManageMode;
  aDoorPNType: TDoorPNMode; aDoorStateType: TDoorState;
  aDoorLockType:TDoorLockState);
var
  fmAccessTypeMonitoring :TForm;
  fmMonitor :TForm;
  fmKTTypeMonitoring : TForm;
  i : integer;
begin
  if L_bClose then Exit;
  //���Թ� ���°� ���� ��
  if AccessTypeMonitoring then
  begin
    fmAccessTypeMonitoring := MDIForm('TfmAccessTypeMonitoring');
    if fmAccessTypeMonitoring <> nil then
    begin
      TfmAccessTypeMonitoring(fmAccessTypeMonitoring).DoorStateChange(NodeNo,
          aEcuID, aDoorNo, aDoorManageType,aDoorPNType,aDoorStateType,aDoorLockType);
    end;
  end;

  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).DoorStateChange(NodeNo,
          aEcuID, aDoorNo, aDoorManageType,aDoorPNType,aDoorStateType,aDoorLockType)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).DoorStateChange(NodeNo,
          aEcuID, aDoorNo, aDoorManageType,aDoorPNType,aDoorStateType,aDoorLockType);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).DoorStateChange(NodeNo,
          aEcuID, aDoorNo, aDoorManageType,aDoorPNType,aDoorStateType,aDoorLockType);
    end;
  end;

  for i := 0 to LocationMapList.Count - 1 do
  begin
    TfmLocationMap(LocationMapList.Objects[i]).DoorStateChange(NodeNo,
          aEcuID, aDoorNo, aDoorManageType,aDoorPNType,aDoorStateType,aDoorLockType);
  end;

end;

procedure TfmMain.AlarmEventSoundStatusCodeLoad;
var
  stSql : string;
  TempAdoQuery :TADOQuery;

begin
  AlarmEventSoundStatusCode.Clear;

  stSql := ' Select * from TB_ALARMSTATUSCODE ';
  stSql := stSql + ' Where AL_ALARMSOUND = 1 ';

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
        Exit;
      End;

      While Not Eof do
      begin
        AlarmEventSoundStatusCode.Add(FindField('AL_ALARMSTATUSCODE').AsString);
        Next;
      end;

    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;


end;

procedure TfmMain.AlarmEventViewStatusCodeLoad;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  AlarmEventViewStatusCode.Clear;
  stSql := ' Select * from TB_ALARMSTATUSCODE ';
  stSql := stSql + ' Where AL_ALARMVIEW = 1 ';

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
        Exit;
      End;

      While Not Eof do
      begin
        AlarmEventViewStatusCode.Add(FindField('AL_ALARMSTATUSCODE').AsString);
        Next;
      end;

    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmMain.AlarmModeChanged(Sender: TObject; NodeNo: integer;
  aEcuID: string; aWachMode: TWatchMode);
var
  fmAlarmTypeMonitoring :TForm;
  fmMonitor :TForm;
  fmKTTypeMonitoring :TForm;
  i : integer;
begin
  if L_bClose then Exit;
  //AlarmMode Change = �� �� ���� 
  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).AlarmModeChanged(NodeNo,aEcuID,aWachMode);
    end;
  end;

  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).AlarmModeChanged(NodeNo,aEcuID,aWachMode)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).AlarmModeChanged(NodeNo,aEcuID,aWachMode);
    end;
  end;
  
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).AlarmModeChanged(NodeNo,aEcuID,aWachMode);
    end;
  end;

  for i := 0 to LocationMapList.Count - 1 do
  begin
    TfmLocationMap(LocationMapList.Objects[i]).AlarmModeChanged(NodeNo,aEcuID,aWachMode);
  end;

end;

procedure TfmMain.ExitButtonPress(Sender: TObject; NodeNo: integer; aEcuID,
  aDoorNo, aTime,aInputType: string);
var
  fmAccessTypeMonitoring :TForm;
  fmMonitor : TForm;
  fmKTTypeMonitoring : TForm;
  stUserName : string;
  stPermit : string;
  stPermitCode : string;
begin
  if G_nAccessEventSearch = 1 then Exit;  //ī���̺�Ʈ�� ��ȸ�� ���� ����
  if L_bClose then Exit;
    //��� ��ư ���� ���
  stPermitCode := '0';
  case aInputType[1] of
  'R': begin
       stUserName :=  '��������';
       stPermit := '���������';
       end;
  'P': begin
       stUserName :=  '��ȭ';
       stPermit := '��ȭ�����';
       end;
  'B': begin
       stUserName := '��ǹ�ư';
       stPermit := '��ǹ�ư����';
       end;
  'S': begin
       stUserName := '������';
       stPermit := '�����ٿ���';
       end;
  'F': begin
       stUserName := 'ȭ��߻�';
       stPermit := 'ȭ�翭��';
       end;
  'f': begin
       stUserName := '����ȭ��';
       stPermit := '����ȭ�翭��';
       end;
  'C': begin
       stUserName := 'ī��';
       stPermit := 'ī�忭��';
       end;
  else stUserName:= aInputType;
  end;
  if AccessTypeMonitoring then
  begin
    fmAccessTypeMonitoring := MDIForm('TfmAccessTypeMonitoring');
    if fmAccessTypeMonitoring <> nil then
    begin
      TfmAccessTypeMonitoring(fmAccessTypeMonitoring).ExitButtonPress(NodeNo,aEcuID,aDoorNo,aTime,aInputType,stUserName,stPermitCode,stPermit);
    end;
  end;

  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).ExitButtonPress(NodeNo,aEcuID,aDoorNo,aTime,aInputType,stUserName,stPermitCode,stPermit)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).ExitButtonPress(NodeNo,aEcuID,aDoorNo,aTime,aInputType,stUserName,stPermitCode,stPermit);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).ExitButtonPress(NodeNo,aEcuID,aDoorNo,aTime,aInputType,stUserName,stPermitCode,stPermit);
    end;
  end;


end;

procedure TfmMain.AlarmEventAnalysis(Sender: TObject; NodeNo: integer;
  ECUID, aCmd, aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode,
  aStatusCode, aPortNo, aState, aOperator, aNewStateCode: string;
  aAlarmView, aAlarmSound: Boolean);
var
  fmAlarmTypeMonitoring :TForm;
  fmMonitor : TForm;
  fmKTTypeMonitoring : TForm;
begin
  if L_bClose then Exit;
  //Alarm Event �߻��� �̺�Ʈ �߻�
  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).AlarmEventProcess(NodeNo,
        ECUID, aCmd, aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode,
        aStatusCode, aPortNo, aState, aOperator, aNewStateCode,
        aAlarmView, aAlarmSound);
    end;
  end;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).AlarmEventProcess(NodeNo,
        ECUID, aCmd, aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode,
        aStatusCode, aPortNo, aState, aOperator, aNewStateCode,
        aAlarmView, aAlarmSound)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).AlarmEventProcess(NodeNo,
        ECUID, aCmd, aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode,
        aStatusCode, aPortNo, aState, aOperator, aNewStateCode,
        aAlarmView, aAlarmSound);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).AlarmEventProcess(NodeNo,
        ECUID, aCmd, aMsgNo, aTime, aSubClass, aSubAddr, aZoneCode, aMode,
        aStatusCode, aPortNo, aState, aOperator, aNewStateCode,
        aAlarmView, aAlarmSound);
    end;
  end;
end;

procedure TfmMain.AccessEventProcess(Sender: TObject; NodeNo: integer;
  aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
  aButton: string);
var
  fmAlarmTypeMonitoring :TForm;
  fmAccessTypeMonitoring :TForm;
  fmKTTypeMonitoring : TForm;
  fmMonitor : TForm;
begin
  if L_bClose then Exit;
  //���� ������ �߻���
  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).AccessEventProcess(NodeNo,
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton);
    end;
  end;
  if AccessTypeMonitoring then
  begin
    fmAccessTypeMonitoring := MDIForm('TfmAccessTypeMonitoring');
    if fmAccessTypeMonitoring <> nil then
    begin
      TfmAccessTypeMonitoring(fmAccessTypeMonitoring).AccessEventProcess(NodeNo,
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton);
    end;
  end;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).AccessEventProcess(NodeNo,
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).AccessEventProcess(NodeNo,
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).AccessEventProcess(NodeNo,
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton);
    end;
  end; 
end;

procedure TfmMain.CommandArrayCommandsTAlarmSoundExecute(Command: TCommand;
  Params: TStringList);
var
  stAlarmSoundFile : string;
begin
  stAlarmSoundFile := Params.Values['VALUE'];
  AlarmSoundFileList.Add(stAlarmSoundFile);


end;

procedure TfmMain.AlarmRefresh(Sender: TObject);
var
  fmAlarmTypeMonitoring :TForm;
  stSql : string;
  stDeviceID : string;
  nDeviceIndex : integer;
  i : integer;
begin
  if L_bClose then Exit;

  for i := 0 to DeviceStateList.Count - 1 do
  begin
    TDeviceState(DeviceStateList.Objects[i]).AlaramEventClear;
    //TDeviceState(DeviceStateList.Objects[i]).AlarmEventState := aeNormal;
  end;

  //�˶� ��ȸ
  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).AlarmListClear;
    end;
  end;

  G_bAlarmRefreshStart := False;
end;

procedure TfmMain.BuildingAlarmEventProcess(Sender: TObject;
  aBuildingCode: string; aAlaramState: TAlarmEventState);
var
  fmAlarmTypeMonitoring :TForm;
begin
  if L_bClose then Exit;

  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).BuildingAlarmEventProcess(aBuildingCode,aAlaramState);
    end;
  end;

end;

procedure TfmMain.DeviceAlarmEventProcess(Sender: TObject; NodeNo: integer;
  ECUID: string; aAlaramState: TAlarmEventState);
var
  fmAlarmTypeMonitoring :TForm;
  fmMonitor : TForm;
  fmKTTypeMonitoring : TForm;
  i : integer;
begin
  if L_bClose then Exit;

  if AlarmTypeMonitoring then
  begin
    fmAlarmTypeMonitoring := MDIForm('TfmAlarmTypeMonitoring');
    if fmAlarmTypeMonitoring <> nil then
    begin
      TfmAlarmTypeMonitoring(fmAlarmTypeMonitoring).DeviceAlarmEventProcess(NodeNo,ECUID,aAlaramState);
    end;
  end;
  if Monitoring then
  begin
    if G_nMultiDaemon = 0 then
    begin
      fmMonitor := MDIForm('TfmMonitoring');
    end else if G_nMultiDaemon = 1 then
    begin
      fmMonitor := MDIForm('TfmMultiMonitoring');
    end;
    if fmMonitor <> nil then
    begin
      if G_nMultiDaemon = 0 then
        TfmMonitoring(fmMonitor).DeviceAlarmEventProcess(NodeNo,ECUID,aAlaramState)
      else if G_nMultiDaemon = 1 then
        TfmMultiMonitoring(fmMonitor).DeviceAlarmEventProcess(NodeNo,ECUID,aAlaramState);
    end;
  end;
  if KTTypeMonitoring then
  begin
    fmKTTypeMonitoring := MDIForm('TfmKTTypeMonitoring');
    if fmKTTypeMonitoring <> nil then
    begin
      TfmKTTypeMonitoring(fmKTTypeMonitoring).DeviceAlarmEventProcess(NodeNo,ECUID,aAlaramState);
    end;
  end;

  for i := 0 to LocationMapList.Count - 1 do
  begin
    TfmLocationMap(LocationMapList.Objects[i]).DeviceAlarmEventProcess(NodeNo,ECUID,aAlaramState);
  end;

end;

procedure TfmMain.DaemonReceiveTimerTimer(Sender: TObject);
var
  stTemp : string;
begin
  Try
    DaemonReceiveTimer.Enabled := False;
    FReceiveTCS.Enter;
    if ReceiveDataList.Count < 1 then Exit;
    stTemp := ReceiveDataList.Strings[0];
    fmMain.ReceiveDataList.Delete(0);
    FReceiveTCS.Leave;
    MonitoringDataProcess(stTemp)
  Finally
    if Not L_bClose then
    DaemonReceiveTimer.Enabled := True;
  End;
end;

procedure TfmMain.AlarmSoundTimer(Sender: TObject);
var
  stAlarmSoundFile : string;
begin
  inherited;

  if AlarmSoundFileList.Count < 1 then Exit;
  stAlarmSoundFile := AlarmSoundFileList.Strings[0];
  AlarmSoundFileList.Delete(0);
  if L_bClose then exit;
  if L_bSound then Exit;
  if FileExists(stAlarmSoundFile) then
  begin
    if L_bClose then exit;
    //SndPlaySound(PChar(stAlarmSoundFile),snd_Async);
    Try
      L_bSound := True;
      MediaPlayer1.FileName := stAlarmSoundFile;
      MediaPlayer1.Open;
      MediaPlayer1.play;
      Delay(3000);
      MediaPlayer1.Close;
    Finally
      L_bSound := False;
    End;

  end;

end;

procedure TfmMain.SetAccessTypeMonitoring(const Value: Boolean);
begin
  FAccessTypeMonitoring := Value;
  btn_CurrentState.Enabled := value;
  mn_CurrentState.Enabled := value;
  mn_DoorControl.Enabled := value;
  mn_AlarmControl.Enabled := value;
  Action_TotClose.Enabled := value;
  mn_TotClose.Enabled := value;
  Action_TotOpen.Enabled := value;
  mn_TotOpen.Enabled := value;
  Action_TotAlarm.Enabled := value;
  mn_TotAlarm.Enabled := value;
  Action_TotCancel.Enabled := value;
  mn_TotCancel.Enabled := value;


  if Value then
  begin
//    Action_StateSearchExecute(Self);
    //StateCheckTimer.Enabled := True;
    LiveTimer.Enabled := True;
    TravelMenuItem(mn_Monitoring,FPrivileges); //����͸�
  end else LiveTimer.Enabled := False;
end;

procedure TfmMain.Action_AccessTypeMonitoringExecute(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(Action_AccessTypeMonitoring.Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildGradeShow('TfmAccessTypeMonitoring',bInsertGrade,bUpdateGrade,bDeleteGrade);
  self.FindClassForm('TfmAccessTypeMonitoring').FindCommand('GRADEREFRESH').Execute;

end;

procedure TfmMain.CommandArrayCommandsTAccessTypeMonitorExecute(
  Command: TCommand; Params: TStringList);
var
  stAccessTypeMonitor : string;
begin
  stAccessTypeMonitor := Params.Values['VALUE'];

  if stAccessTypeMonitor = 'TRUE' then AccessTypeMonitoring := True
  else AccessTypeMonitoring := False;

end;

procedure TfmMain.N45Click(Sender: TObject);
begin
  MDIChildShow('TfmDeviceListReport');

end;

procedure TfmMain.LoadNode;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
  TempNodeState : TNodeState;
  stNodeNo : string;
begin
  NodeList.Clear;      //��庰 ��� ����

  stSql := 'Select * from TB_ACCESSDEVICE  ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_ECUID = ''00'' ';
  stSql := stSql + ' Order by AC_VIEWSEQ, AC_NODENO ';

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
        Exit;
      End;
      While Not Eof do
      begin
        stNodeNo := FillZeroNumber(FindField('AC_NODENO').asInteger,3);
//        stEcuID := FindField('AC_ECUID').AsString;
          //��� ���� ����
        TempNodeState := TNodeState.Create(self);
        TempNodeState.NodeNo := FindField('AC_NODENO').asInteger;
        TempNodeState.NodeIP := FindField('AC_MCUIP').asstring;
        TempNodeState.NodeName := FindField('AC_DEVICENAME').asstring;
        TempNodeState.NodeConnected := False;

        TempNodeState.OnNodeConnectState := NodeConnectState;

        NodeList.AddObject(stNodeNo,TempNodeState);

        Next;
        Application.ProcessMessages;
      end;
    end;

  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

procedure TfmMain.FireRecovery(Sender: TObject);
begin
  MessageTimer.Enabled := False;
  pan_Message.Visible := False;

end;
{
procedure TfmMain.ServerConnectEvent(Sender: TObject; aValue: Boolean);
begin

end;
 }
procedure TfmMain.CommandArrayCommandsTAlarmReportExecute(
  Command: TCommand; Params: TStringList);
var
  stAlarmID : string;
  fmAlarmReport : TForm;
begin
  stAlarmID := Params.Values['ALARMID'];
  MDIChildShow('TfmNewAlarmReport');
  fmAlarmReport := MDIForm('TfmNewAlarmReport');
  if fmAlarmReport <> nil then
  begin
    TfmNewAlarmReport(fmAlarmReport).AlarmIDView(stAlarmID);
  end;

end;

procedure TfmMain.CommandArrayCommandsTLOCATIONMAPExecute(
  Command: TCommand; Params: TStringList);
var
  stValue : string;
  stID : string;
begin
  stValue := Params.Values['VALUE'];
  stID := Params.Values['ID'];
  if UpperCase(stValue) = 'FALSE' then
  begin
    if LocationMapList.IndexOf(stID) > -1 then LocationMapList.Delete(LocationMapList.IndexOf(stID));
  end;
  
end;

procedure TfmMain.mn_empChangeReportClick(Sender: TObject);
var
  bInsertGrade : Boolean;
  bUpdateGrade : Boolean;
  bDeleteGrade : Boolean;
begin
  GetProgramGrade(TMenuItem(Sender).Hint,bInsertGrade,bUpdateGrade,bDeleteGrade);
  MDIChildShow('TfmChangeAccessReport');
  self.FindClassForm('TfmChangeAccessReport').FindCommand('GRADEREFRESH').Execute;
end;

end.
