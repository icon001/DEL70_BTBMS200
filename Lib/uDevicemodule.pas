{***************************************************************}
{                                                               }
{  uDeviceModule.Pas :������ ��ƾ                             }
{                                                               }
{  Copyright (c) 2005 this70@naver.com                          }
{                                                               }
{  All rights reserved.                                         }
{                                                               }
{***************************************************************}
unit uDevicemodule;

interface

uses
  //Printf,
  Forms,
  ComCtrls,
  uLomosUtil,
  Dialogs,
  windows,Messages,SysUtils, Classes, OoMisc,ScktComp, AdPort,AdWnPort,AdSocket,
  ExtCtrls, DB, ADODB,uDataModule1,UCommonModule,uMonitoringCommonVariable;



const
  Msg_DeviceCheck     = WM_USER + 1001;
  Msg_DeviceReg       = WM_USER + 1002;
  Msg_DeviceRemote    = WM_USER + 1003;
  Msg_CardNoDownload  = WM_USER + 1004;
  Msg_TelNoDownload   = WM_USER + 1005;
  Msg_DoorReg         = WM_USER + 2001;

const
  COMMANDDATA_SEND = 2;
  CARDDATA_SEND = 1;

{$DEFINE TApdWinsockport}  //{$DEFINE TClientSocket}
type

{$IFDEF TApdWinsockport}
  TCommNode = class(TApdWinsockport)
{$ELSE}
  TCommNode = class(TClientSocket)
{$ENDIF}

  private
    { Private declarations }
    ADOQuery: TADOQuery;
    FNo: Integer;
    FLocate: String;
    FNetworkMode: TNetworkMode;
    FRemoteConnected: Boolean;
    FOnSendData: TNotifyReceive;
    FNodeNoStr: string;
    procedure SetNo(aValue:Integer);
    Procedure SetLocate(aValue:String);
    Procedure SetNetworkNode(const Value: TNetworkMode);
    Procedure SetRemoteConnected (aValue:Boolean);
    procedure SetNodeNoStr(const Value: string);
  private
    FMCUID: string;
    FSocketConnected: Boolean;
    FOnConnected: TNodeConnect;
    FFDtype: TDevicetype;
    FDeviceCode: string;
    FCardFixType: Integer;
    FSocketType: integer;
    FCardSendRecv: Boolean;
    procedure SetMCUID(const Value: string);
    procedure SetSocketConnected(const Value: Boolean);
    procedure SetFdType(const Value: TDevicetype);
  protected
    { Protected declarations }
    ReceiveDataList : TStringList;
    Send_MsgNo: Integer;
    Rcv_MsgNo : Char;
    FOnRcvGarbageData:    TNotifyReceive;     // ������ ������
    FOnRcvInvalidDevice:  TNotifyReceive;     // ��Ͽ� ���� ���
    FOnRcvData:           TNotifyReceive;     // ��ſ��� ���� ������

{$IFDEF TApdWinsockport}
    procedure CommNodeTriggerAvail(CP: TObject; Count: Word);
    procedure CommNodeWsConnect(Sender: TObject);
    procedure CommNodeWsDisconnect(Sender: TObject);
    procedure CommNodeWsError(Sender: TObject; ErrCode: Integer);
{$ELSE}
    procedure CommNodeTriggerAvail(Sender : TObject ; Socket : TCustomWinSocket) ;
    procedure CommNodeWsConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure CommNodeWsDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure CommNodeWsError(Sender : TObject ; Socket : TCustomWinSocket ;
                        ErrorEvent : TErrorEvent ; var ErrorCode : Integer) ;
{$ENDIF}
    Procedure ACC_sendData(aEcuId:CString; aData:CString);
    function  CheckDataPacket(aData:String; var bData:String):string;

  public
    { Public declarations }
    ReserveSendDataList: TStringList; //������ ������ ���
    CardSendDataList: TStringList; // ī�嵥���� ������ ���
    QuickSendDataList: TStringList; // ���� ������ ������ ���
    Devices: TStringList;             //��ϵ� ��� ���
    LastConnectedTime: TDatetime;
    CardDataSendSleepCount : integer;
    ReceivedLastpacket: String;
    ComBuff: String;
    L_nCardDataSend : integer; //ī�嵥���� ����...
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    Procedure ExecSendPacket;
    Procedure DataPacektProcess(aData: string);
    procedure FireRecovery(aQuick:Boolean=False);
    procedure NodeFireInitialize;

    function  SendPacket(aEcuId: String; aCmd:Char; aData: String; aQuick:Boolean;aType:integer = 0):Boolean;
  published
    { Published declarations }
    Property No: Integer Read FNo write SetNo;
    Property Locate: String Read FLocate write SetLocate;
    Property MCUID: string read FMCUID write SetMCUID;
    Property DeviceCode : string Read FDeviceCode write FDeviceCode;
    Property NetworkMode: TNetworkMode read FNetworkMode write SetNetworkNode;
    Property FDtype: TDevicetype Read FFDtype write SetFdType;
    Property RemoteConnected: Boolean read FRemoteConnected write SetRemoteConnected;
    Property CardFixType: Integer Read FCardFixType write FCardFixType;  //0-����(4Byte),1-����(G_nCardFixedLength �� ����)
    property SocketType : integer read FSocketType write FSocketType;  //���� Ÿ�� 1.PC -> ���,2.PC <- ���
    property CardSendRecv : Boolean read FCardSendRecv write FCardSendRecv;

    property OnRcvGarbageData: TNotifyReceive read FOnRcvGarbageData write FOnRcvGarbageData;
    ProPerty OnRcvInvalidDevice: TNotifyReceive read FOnRcvInvalidDevice write FOnRcvInvalidDevice;
    ProPerty OnRcvData : TNotifyReceive read FOnRcvData write FOnRcvData;
    ProPerty OnSendData : TNotifyReceive read FOnSendData write FOnSendData;
    ProPerty NodeNoStr : string Read FNodeNoStr Write SetNodeNoStr;
    ProPerty OnConnected : TNodeConnect read FOnConnected Write FOnConnected;
    ProPerty SocketConnected : Boolean read FSocketConnected Write SetSocketConnected;
  end;


  TDevice = Class(TComponent)
  private
    ArmAreaUse: Array [0..con_nFIXMAXAREANO] of Boolean; //������� �������
    ArmAreaName: Array [0..con_nFIXMAXAREANO] of string; //������� ��Ī
    ArmAreaState: Array [0..con_nFIXMAXAREANO] of TWatchMode; //������� ����
    DoorUse: Array [0..con_nFIXMAXDOORNO] of Boolean; //���Թ� �������
    DoorName: Array [0..con_nFIXMAXDOORNO] of string; //���Թ� ��Ī
    DoorManageMode: Array [0..con_nFIXMAXDOORNO] of TDoorManageMode;
    DoorPNMode :  Array [0..con_nFIXMAXDOORNO] of TDoorPNMode;
    DoorState :  Array [0..con_nFIXMAXDOORNO] of TDoorState;
    DoorLockMode :  Array [0..con_nFIXMAXDOORNO] of TDoorLockState;
    DoorFire  :  Array [0..con_nFIXMAXDOORNO] of Boolean;
    FDeviceID: String;
    FACType: TDeviceType;  //���Ի������
    FATType: TDeviceType;  //���»��Ÿ��
    FFDType: TDeviceType;  //�ļ��������
    FPTType: TDeviceType;  //����������
    FCommNode: TCommNode;
    FWatchMode: TWatchMode;                       // �����
    FOnNotDefineData:     TNotifyReceive;         // ���� �ʵ� ������ ������
    FOnRcvAlarmData:      TAlarmEvent;         // �溸 ������
    FOnRcvDoorControl:    TNotifyReceive;         // ��� ���� ������
    FOnRcvChangeDoorData: TNotifyReceive;         // �������� ���� ������
    FOnRegisterClear:     TNotifyReceive;         // �޸������ư ������ �����
    FOnRcvInitAckData:    TNotifyReceive;         // ��ȭ �α׵����� ���� ������
    FOnRcvRegCardData:    TNotifyReceive;         // ī�� ���� ������
    FOnRcvTellogData:     TNotifyReceive;         // ���� ���� ������
    FOnRcvDoorSetup:      TNotifyReceive;         // ���� ���� ������
    FOnRcvCardReadData:   TNotifyReceive;         // ���� ���� ������
    FOnRcvRegSchedule:    TNotifyReceive;         // ������ ������ ��� ����
    FOnRcvRemoteAckData:  TNotifyReceive;
    FOnRcvERRORData:      TNotifyReceive;         // ERROR Data
    FOnConnected:         TConnectType;           //Connect ����

    FConnected: Boolean;
    FNodeNO: integer;
    FFDAMTPER: integer;
    FDeviceName: String;
    FECUID: String;
    FDoorManageMode: TDoorManageMode;
    FDoorState: TDoorState;
    FDoorManageMode2: TDoorManageMode;
    FDoorManageMode1: TDoorManageMode;
    FDoorState1: TDoorState;
    FDoorState2: TDoorState;
    FDoorPNMode1: TDoorPNMode;
    FDoorPNMode2: TDoorPNMode;
    FJavaraCloseCommand: Boolean;
    FJavaraOpenCommand: Boolean;
    FFireServerCommand: Boolean;
    FDeviceSkillReceive: Boolean;
    FDoorLockMode1: TDoorLockState;
    FDoorLockMode2: TDoorLockState;
    FDoor1Fire: Boolean;
    FDoor2Fire: Boolean;

    FOnDoorStateChange: TDoorStateChangeType;
    FOnDoorPNModeChange: TDoorPNModeChangeType;
    FOnDoorManageModeChange: TDoorManageModeChangeType;
    FOnWatchModeChange: TWatchModeChangeType;
    FOnDoorModeChange: TDoorModeChangeType;
    FOnRcvFTPProcessData: TNotifyReceive;
    FOnFireStateChange: TFireStateChange;
    FOnDeviceAlarmEvent: TDeviceAlarmEvent;
    FAlarmEventState: TAlarmEventState;
    FAlarmUse: Boolean;
    FAlarmName: string;
    FOnExitButton: TExitButton;
    FOnAlarmEventAnalysis: TAlarmEventAnalysis;
    FOnAccessEvent: TAccessEvent;
    FDeviceCode: string;
    FOnDeviceCode: TNotifyReceive;
    FDeviceType: String;
    FOnDeviceTypeChange: TDeviceTypeChange;
    FOnDeviceCodeChange: TDeviceTypeChange;
    FScheduleSkill: Boolean;

    procedure SetCommNode(const Value: TCommNode);
    procedure SetDeviceID(const Value: String);
    procedure SetConnected(const Value: Boolean);

    Procedure SetWatchMode(const Value: TWatchMode);
    procedure SetAcType(const Value: TDevicetype);
    procedure SetAtType(const Value: TDevicetype);
    procedure SetFdType(const Value: TDevicetype);
    procedure SetPtType(const Value: TDevicetype);
    procedure SetNodeNO(const Value: integer);
    procedure SetFoodAmt(const Value: integer);
    procedure SetDeviceName(const Value: String);
    procedure SetECUID(const Value: String);
    procedure SetFireServerCommand(const Value: Boolean);
    procedure SetJavaraCloseCommand(const Value: Boolean);
    procedure SetJavaraOpenCommand(const Value: Boolean);
    procedure SetDeviceSkillReceive(const Value: Boolean);
    procedure SetAlarmEventState(aArmAreaNo:integer; Value: TAlarmEventState);
    procedure SetDeviceCode(const Value: string);
    procedure SetDeviceType(const Value: String);
  protected
    Procedure DataPacektProcess(aData: string; NodeNo:integer);
    Procedure SendAckforaccess(aMsgCount:String);
    procedure DeviceRecvAlarmData(aNodeNo:integer;aCommand,aData:string);
    procedure DoorModeState(aNodeNo:integer;aData:string);
    procedure DoorControlState(aNodeNo:integer;aData:string);
    procedure DoorSetupState(aNodeNo:integer;aData:string);
    procedure RemoteDataProcess(aNodeNo:integer;aData:string);
    procedure ErrorDataProcess(aNodeNo:integer;aData:string);
    Function  GetSystemSkill(aEcuID,aData:string):Boolean;
  public
    L_stHolidaySend : string;  // ���� ��� ���� 01 W
    L_bHolidayRecv : Boolean; //���� ��� ���� ����
    LastPollingTime: TDatetime;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    Procedure  SendPacket(aCmd:Char; aData: String;aQuick:Boolean = False;aType:integer=0);
    Procedure  CD_Download(aCardNo:String; ValidDay: String; cardType:Char; RegCode:Char; aTimeCode:Char; func:Char;
                           aQuick:Boolean = False;aPositionNum:integer = 0;aCardPosition:Boolean = False;aAlarmAreaGrade:string = '';aDoorAreaGrade:string = '');
    Procedure  DoorModeChange(aDoorNo: Char;  aMode:Char;aQuick:Boolean=True);
    Procedure  TimeSync;
    procedure  CheckDoorState(aDoorNo: Char;aQuick:Boolean = False);
    Procedure  DoorExitButton(aDoorNo: Char);
    Procedure  SendDoorSchadule(aDoor:Char;aDay:Char;aData:String;aQuick:Boolean = False);
    Procedure  ChangewatchMode(aMode:TWatchMode);
    procedure  ChangeArmAreaMode(aArmAreaNo:integer;aMode:TWatchMode);
    Procedure  CheckWatchMode(aQuick:Boolean = False);
    procedure  CheckArmAreaMode(aArmAreaNo:integer;aQuick:Boolean = False);
    Procedure  CheckSystemSkill(aQuick:Boolean = False);
    ProCedure  CheckDeviceVersion(aQuick:Boolean = False);
    procedure  DeviceDoorInfoSearch(aDoor:string);
    procedure  DeviceDoorInfoSetting(aDoor,aCardMode,aDoorMode,aDoorControlTime,aOpenMoni,aUseSch,aSendDoor,aAlarmLong,
               aFire,aLockType,aDSOpen,aRemoteDoor,aCmd:string);
    Procedure  ReBoot;
    Function   Holiday(aCmd:Char;aDate,aDoorNo:string):Boolean;
    procedure  ServerCarDataSend(aCardReaderNo,aCardData:string);
    procedure  CardTypeSearch;
    procedure  FireOutbreak(aQuick:Boolean = False);  //ȭ��߻�ó��
    procedure  MemoryClear; //��� ������Ʈ��
    procedure AlaramEventClear;
    procedure  SearchDevicecode;  //DeviceCode ��ȸ ����.
  public
    procedure ArmAreaUseInitialize;
    procedure ArmAreaNameInitialize;
    procedure ArmAreaStateInitialize;

    procedure DoorUseInitialize;
    procedure DoorNameInitialize;
    procedure DoorManageModeInitialize;
    procedure DoorPNModeInitialize;
    procedure DoorStateInitialize;
    procedure DoorLockModeInitialize;
    procedure DoorFireInitialize;

    procedure SetArmAreaUse(aArmArea:integer;aUsed:Boolean);
    procedure SetArmAreaName(aArmArea:integer;aName:string);
    procedure SetArmAreaState(aArmArea:integer;aArmAreaState:TWatchMode);

    procedure SetDoorUse(aDoorNo:integer;aUsed:Boolean);
    procedure SetDoorName(aDoorNo:integer;aName:string);
    procedure SetDoorManageMode(aDoorNo:integer;aValue:TDoorManageMode);
    procedure SetDoorPNMode(aDoorNo:integer;aValue:TDoorPNMode);
    procedure SetDoorState(aDoorNo:integer;aValue:TDoorState);
    procedure SetDoorLockMode(aDoorNo:integer;aValue:TDoorLockState);
    procedure SetDoorFire(aNodeNO:integer;aECUID:string;aDoorNo:integer;aValue:Boolean);

    function GetArmAreaUse(aArmArea:integer):Boolean;
    function GetArmAreaName(aArmArea:integer):string;
    function GetArmAreaState(aArmArea:integer):TWatchMode;

    function GetDoorUse(aDoorNo:integer):Boolean;
    function GetDoorName(aDoorNo:integer):string;
    function GetDoorManageMode(aDoorNo:integer):TDoorManageMode;
    function GetDoorPNMode(aDoorNo:integer):TDoorPNMode;
    function GetDoorState(aDoorNo:integer):TDoorState;
    function GetDoorLockMode(aDoorNo:integer):TDoorLockState;
    function GetDoorFire(aDoorNo:integer):Boolean;

  published
    Property NodeNo: integer Read FNodeNO write SetNodeNO;
    Property DeviceID: String Read FDeviceID write SetDeviceID;
    Property ECUID: String Read FECUID write SetECUID;
    Property DeviceCode : string Read FDeviceCode write SetDeviceCode;
    Property DeviceType : String Read FDeviceType write SetDeviceType;
    Property DeviceName: String Read FDeviceName write SetDeviceName;
    Property ATtype: TDevicetype Read FATtype write SetAtType;
    Property ACtype: TDevicetype Read FACtype write SetAcType;
    Property FDtype: TDevicetype Read FFDtype write SetFdType;
    Property PTtype: TDevicetype Read FPTtype write SetPtType;
    Property CommNode: TCommNode Read FCommNode write SetCommNode;
    Property FoodAmtPer : integer Read FFDAMTPER write SetFoodAmt;

    Property Connected: Boolean Read FConnected write SetConnected;
    Property WatchMode: TWatchMode read FWatchMode write SetWatchMode;
    property AlarmUse : Boolean read FAlarmUse write FAlarmUse;
    property AlarmName : string read FAlarmName write FAlarmName;
    property ScheduleSkill : Boolean read FScheduleSkill write FScheduleSkill;

    //������ ��⺰ ��� �����׸�
    property DeviceSkillReceive : Boolean Read FDeviceSkillReceive Write SetDeviceSkillReceive; //��� ���� ���ſ���
    Property FireServerCommand : Boolean Read FFireServerCommand Write SetFireServerCommand; //ȭ��߻��� �������� ������ ���
    Property JavaraOpenCommand : Boolean Read FJavaraOpenCommand Write SetJavaraOpenCommand; //�ڹٶ󿭸� ���
    Property JavaraCloseCommand : Boolean Read FJavaraCloseCommand Write SetJavaraCloseCommand; //�ڹٶ���� ���


    property OnRcvAlarmData:      TAlarmEvent read FOnRcvAlarmData       write FOnRcvAlarmData;
    property OnRcvInitAckData:    TNotifyReceive read FOnRcvInitAckData     write FOnRcvInitAckData;
    property OnRegisterClear:     TNotifyReceive read FOnRegisterClear      write FOnRegisterClear;
    property OnRcvRemoteAckData:  TNotifyReceive read FOnRcvRemoteAckData   write FOnRcvRemoteAckData;
    property OnRcvFTPProcessData:  TNotifyReceive read FOnRcvFTPProcessData   write FOnRcvFTPProcessData;
    property OnRcvTellogData:     TNotifyReceive read FOnRcvTellogData      write FOnRcvTellogData;
    property OnRcvCardReadData:   TNotifyReceive read FOnRcvCardReadData    write FOnRcvCardReadData;
    property OnRcvChangeDoorData: TNotifyReceive read FOnRcvChangeDoorData  write FOnRcvChangeDoorData;
    property OnRcvDoorControl:    TNotifyReceive read FOnRcvDoorControl     write FOnRcvDoorControl;
    property OnRcvDoorSetup:      TNotifyReceive read FOnRcvDoorSetup       write FOnRcvDoorSetup;
    property OnRcvRegCardData:    TNotifyReceive read FOnRcvRegCardData     write FOnRcvRegCardData;
    property OnNotDefineData:     TNotifyReceive read FOnNotDefineData      write FOnNotDefineData;
    property OnRcvRegSchedule:    TNotifyReceive read FOnRcvRegSchedule     write FOnRcvRegSchedule;
    Property OnErrorData:         TNotifyReceive read FOnRcvERRORData       write FOnRcvERRORData;
    Property OnConnected:         TConnectType   read FOnConnected          write FOnConnected;
    Property OnDoorManageModeChange:         TDoorManageModeChangeType   read FOnDoorManageModeChange          write FOnDoorManageModeChange;
    Property OnDoorPNModeChange:         TDoorPNModeChangeType   read FOnDoorPNModeChange          write FOnDoorPNModeChange;
    Property OnDoorStateChange:         TDoorStateChangeType   read FOnDoorStateChange          write FOnDoorStateChange;
    Property OnWatchModeChange:         TWatchModeChangeType   read FOnWatchModeChange          write FOnWatchModeChange;
    property OnDoorModeChange: TDoorModeChangeType read FOnDoorModeChange write FOnDoorModeChange;
    property OnFireStateChange: TFireStateChange read FOnFireStateChange       write FOnFireStateChange;
    property OnDeviceAlarmEvent : TDeviceAlarmEvent read FOnDeviceAlarmEvent write FOnDeviceAlarmEvent;
    property OnExitButton:TExitButton read FOnExitButton write FOnExitButton ;
    property OnAlarmEventAnalysis:TAlarmEventAnalysis read FOnAlarmEventAnalysis write FOnAlarmEventAnalysis;
    property OnAccessEvent:TAccessEvent read FOnAccessEvent write FOnAccessEvent;
    property OnDeviceCode: TNotifyReceive read FOnDeviceCode write FOnDeviceCode;
    property OnDeviceTypeChange : TDeviceTypeChange read FOnDeviceTypeChange write FOnDeviceTypeChange;
    property OnDeviceCodeChange : TDeviceTypeChange read FOnDeviceCodeChange write FOnDeviceCodeChange;

  end;

  TComModule = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var

//  DebugScreen: TPrintf;
  ComModule: TComModule;

implementation
{$R *.dfm}


{ TCommNode ===================================================================}
constructor TCommNode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  ReceiveDataList :=  TStringList.Create;
{$IFDEF TApdWinsockport}
  ReserveSendDataList:=  TStringList.Create;
  ReserveSendDataList.Clear;
  QuickSendDataList:= TStringList.Create;
  QuickSendDataList.Clear;
  CardSendDataList := TStringList.Create;
  CardSendDataList.Clear;
  Devices:= TStringList.Create;
  Devices.Sorted := True;
  Devices.Duplicates:= dupIgnore;

  SocketConnected:= False;
  ReceivedLastpacket:= '';
  LastConnectedTime:= 0;
  ComBuff:= '';
  Send_MsgNo:= 0;
  Rcv_MsgNo:= '0';
  AutoOpen:= False;
  DeviceLayer:= dlWinsock;
  WsMode:= wsClient;
  wsTelnet := False;



  NetworkMode:= nmLocal;
  RemoteConnected:= False;


  OnTriggerAvail:= CommNodeTriggerAvail;
  OnWsConnect := CommNodeWsConnect;
  OnWsDisconnect := CommNodeWsDisconnect;
  OnWsError := CommNodeWsError;

{$ELSE}

  ReserveSendDataList:=  TStringList.Create;
  CardSendDataList := TStringList.Create;
  QuickSendDataList := TStringList.Create;
  Devices:= TStringList.Create;
  Devices.Sorted := True;
  Devices.Duplicates:= dupIgnore;

  SocketConnected:= False;
  ReceivedLastpacket:= '';
  LastConnectedTime:= 0;
  ComBuff:= '';
  Send_MsgNo:= 0;
  Rcv_MsgNo:= '0';
  active := false ;
  ClientType := ctNonBlocking ;

  NetworkMode:= nmLocal;
  RemoteConnected:= False;
 
  OnRead := CommNodeTriggerAvail;
  OnConnect := CommNodeWsConnect;
  OnDisConnect := CommNodeWsDisconnect;
  OnError := CommNodeWsError;
{$ENDIF}

  FDtype:= dtnothing;

  L_nCardDataSend := 0;
  CardDataSendSleepCount := COMMANDDATA_SEND;
  CardSendRecv := True;
end;

destructor TCommNode.Destroy;
var
  I: Integer;
begin

  ReceiveDataList.Free;
  ReserveSendDataList.Free;
  CardSendDataList.Free;
  QuickSendDataList.Free;


  for I:= 0 to Devices.Count-1 do
  begin
    if Assigned( Devices.Objects[I]) then
      TDevice(Devices.Objects[I]).Free;
   end;
  Devices.Free;

  inherited Destroy;
end;

{$IFDEF TApdWinsockport}
procedure TCommNode.CommNodeTriggerAvail(CP: TObject; Count: Word);
var
  st: string;
  st2: string;
  aIndex: Integer;
  I: Integer;
begin

  SocketConnected:= True;
  LastConnectedTime:= Now;
  st:= '';
  for I := 1 to Count do st := st + GetChar;
  ComBuff:= ComBuff + st;
  aIndex:= Pos(STX,ComBuff);

  if aIndex = 0 then Exit;

  if aIndex > 1 then
  begin
    //STX �� ó���� �ƴϸ� STX�յ����� ����
    ErrorLogSave(ExeFolder + '\..\log\err'+ FormatDateTIme('yyyymmdd',Now)+'.log',
                 ERR_PROTOCOL_0001,copy(comBuff,1,aIndex-1));
    Delete(ComBuff,1,aIndex-1);
  end;
  if Length(Combuff) < 21 then Exit;
  repeat
    st:= CheckDataPacket(ComBuff,st2);
    ComBuff:= st2;
    if st <> '' then //ReceiveDataList.Add(st);
       DataPacektProcess(st);

  until pos(ETX,comBuff) = 0;

end;

{$ELSE}
procedure TCommNode.CommNodeTriggerAvail(Sender : TObject ; Socket : TCustomWinSocket);
var
  st: string;
  st2: string;
  aIndex: Integer;
  I: Integer;
  nReturnCode : integer;
  szBuffer: array[0..MAXBUFFSIZE] of Char;
begin

  LastConnectedTime:= Now;

  nReturnCode := 1;

  while (nReturnCode > 0) do
  begin
    FillChar(szBuffer, SizeOf(szBuffer), 0);
   nReturnCode := Socket.ReceiveBuf(szBuffer, SizeOf(szBuffer));
    if nReturnCode > 0 then
      ComBuff := ComBuff + szBuffer;
  end;

  aIndex:= Pos(STX,ComBuff);

  if aIndex = 0 then Exit;

  if aIndex > 1 then
  begin
    //STX �� ó���� �ƴϸ� STX�յ����� ����
    ErrorLogSave(ExeFolder + '\..\log\err'+ FormatDateTIme('yyyymmdd',Now)+'.log',
                 ERR_PROTOCOL_0001,copy(comBuff,1,aIndex-1));
    Delete(ComBuff,1,aIndex-1);
  end;
  if Length(Combuff) < 21 then Exit;
  repeat
    st:= CheckDataPacket(ComBuff,st2);
    ComBuff:= st2;
    if st <> '' then DataPacektProcess(st);
  until pos(ETX,comBuff) = 0;

end;
{$ENDIF}


function TCommNode.CheckDataPacket(aData: String; var bData:String):String;
var
  aIndex: Integer;
  Lenstr: String;
  DefinedDataLength: Integer;
  StrBuff: String;
  etxIndex: Integer;
  aKey: Byte;
  stTemp : string;
begin

  Result:= '';
  Lenstr:= Copy(aData,2,3);
  //������ ���� ��ġ �����Ͱ� ���ڰ� �ƴϸ�...
  if not isDigit(Lenstr) then
  begin
    Delete(aData,1,1);       //1'st STX ����
    aIndex:= Pos(STX,aData); // ���� STX ã��
    if aIndex = 0 then       //STX�� ������...
    begin
      //��ü ������ ����
      bData:= '';
    end else if aIndex > 1 then // STX�� 1'st�� �ƴϸ�
    begin
      Delete(aData,1,aIndex-1);//STX �� ������ ����
      bData:= aData;
    end else
    begin
      bData:= aData;
    end;
    Exit;
  end;

  //��Ŷ�� ���ǵ� ����
  DefinedDataLength:= StrtoInt(Lenstr);
  //��Ŷ�� ���ǵ� ���̺��� ���� �����Ͱ� ������
  if Length(aData) < DefinedDataLength then
  begin

    //���� �����Ͱ� ���̰� ������(���� �� ������ ����)
    etxIndex:= POS(ETX,aData);
    if etxIndex > 0 then
    begin
     Delete(aData,1,etxIndex);
     //ShowMessage(toHExstr(aData));
    end;
    
    bData:= aData;
    Exit;
  end;

  // ���ǵ� ���� ������ �����Ͱ� ETX�� �´°�?
  if aData[DefinedDataLength] = ETX then
  begin
    StrBuff:= Copy(aData,1,DefinedDataLength);
    // 2011.05.24 ��Ŷ üũ �κп��� üũ����� üũ�� ���� �ϱ� ���ؼ� �۾� ��.
    //31:Q++()./,-**s*S^**+()./,-()
    aKey:= Ord(StrBuff[5]);
    stTemp := Copy(StrBuff,1,5) + EncodeData(aKey,Copy(StrBuff,6,Length(StrBuff)-6))+StrBuff[Length(StrBuff)];

    if Not CheckSumCheck(stTemp) then
    begin
      Delete(aData,1,1);
      bData:= aData;
      Exit;
    end;
    // 2010.11.22 ��Ŷ üũ �κп��� üũ����� üũ�� ���� �ϱ� ���ؼ� �۾� ��.

    Result:=stTemp;
    Delete(aData, 1, DefinedDataLength);
    bData:= aData;
  end else
  begin
    //������ �����Ͱ� EXT�� �ƴϸ� 1'st STX����� ���� STX�� ã�´�.
    Delete(aData,1,1);
    aIndex:= Pos(STX,aData); // ���� STX ã��
    if aIndex = 0 then       //STX�� ������...
    begin
      //��ü ������ ����
      bData:= '';
    end else if aIndex > 1 then // STX�� 1'st�� �ƴϸ�
    begin
      Delete(aData,1,aIndex-1);//STX �� ������ ����
      bData:= aData;
    end else
    begin
      bData:= aData;
    end;
  end;
end;

Procedure TCommNode.DataPacektProcess(aData: string);
var
  aKey: Byte;
  st: string;
  aCommand: Char;
  stEcuId: String;
  DeviceIndex: Integer;
  StatusCode: String;
  aSubCLass:String;
  //ACKStr: String[200];
  //ACKStr2: String[200];

begin

  if aData = '' then Exit;

  //058 K1100000203Aan20061201162319EX0300dNF*************C0

  //31:Q++()./,-**s*S^**+()./,-()
{  aKey:= Ord(aData[5]);
  st:= Copy(aData,1,5) + EncodeData(aKey,Copy(aData,6,Length(aData)-6));
  aData:= st;  } //2011.05.24 CheckDataPacket ���� ó�� ��.
  MCUID := Copy(aData,8,7);
  stEcuId:= Copy(aData,15,2);
  aSubCLass := copy(aData,34,2);
  aCommand:= aData[17];
  Rcv_MsgNo:= aData[18];

  StatusCode:= Copy(aData,41,2);
  //������ ������Ȳ�� ������ �ѷ��� {TO DO}
  if Assigned(FOnRcvData) then
  begin
    OnRcvData(Self,aData,NO);
  end;

  //������ ���� ��Ŷ�� ���� ������ �̸�
  if ReceivedLastpacket = aData then
  begin
    if (aCommand = 'c') AND (UpperCase(aData[19]) = 'K') then
    begin
        st:='Y' + Copy(aData,20,2)+'  '+'a';
        ACC_sendData(stEcuId, st);
    end else
    begin
      SendPacket(stEcuId,'a','',True);
    end;
    ReceivedLastpacket:= aData;
    Exit;
  end else
  begin
     ReceivedLastpacket:= aData;
  end;

  DeviceIndex:= Devices.IndexOf(FillZeroNumber(No,3) + stEcuId);
  if DeviceIndex > -1 then //��Ͽ� ���� �ϸ�
  begin

       if ( stEcuId <> '00' ) and ((Pos('COMM ERROR',aData) > 0) or (Pos('UNUSED',upperCase(aData)) > 0)) then
       //if (pos('Bad Command',aData) > 0) or (pos('COMM ERROR',aData) > 0 ) then
       begin
          TDevice(Devices.Objects[DeviceIndex]).Connected:= False;
       end else if (aSubCLass = 'MN') or (aSubCLass = 'EX')then
       begin
         if StatusCode = 'NF' then
         begin
          TDevice(Devices.Objects[DeviceIndex]).Connected:= False; //Ack �� �ȳ���....
          SendPacket(stEcuId,'a','',True);
         end else
         begin
          TDevice(Devices.Objects[DeviceIndex]).Connected:= True;
          TDevice(Devices.Objects[DeviceIndex]).DataPacektProcess(aData ,No);
         end;//}
       end else
       begin
         TDevice(Devices.Objects[DeviceIndex]).DataPacektProcess(aData ,No);
       end;
  end else
  begin
    //��Ͽ� ���� ���� ������  // ACK �� ������ �˶� ������ �н� ���� �߻� �ϹǷ� ������ ���� 2011.03.04
    {if (aCommand = 'c') AND (UpperCase(aData[19]) = 'K') then
    begin
        st:='Y' + Copy(aData,20,2)+'  '+'a';
        ACC_sendData(stEcuId, st);
    end else
    begin
      SendPacket(stEcuId,'a','',True);
    end;  }
    if Assigned(FOnRcvInvalidDevice) then  OnRcvInvalidDevice(Self,aData,No);
  end;

  {ACK����� �˶�/�������� �����ʹ� ACK�� ������ �ʴ´�}
  if (aCommand <> 'a') AND (aCommand <> 'A') AND (aCommand <> 'c') then
  //if (aCommand <> 'a') AND (aCommand <> 'E') then  //�ӽ� test
  begin
    SendPacket(stEcuId,'a','',True);
  end;

end;
{$IFDEF TApdWinsockport}
procedure TCommNode.CommNodeWsConnect(Sender: TObject);
var
  I: Integer;
begin
  SocketConnected:= True;
  LastConnectedTime:= Now;

end;
{$ELSE}
procedure TCommNode.CommNodeWsConnect(Sender: TObject; Socket: TCustomWinSocket);
var
  I: Integer;
begin
  SocketConnected:= True;
  LastConnectedTime:= Now;
  // ���⿡�� Ŭ���̾�Ʈ�� ���� ������ ����

end;
{$ENDIF}
{$IFDEF TApdWinsockport}
procedure TCommNode.CommNodeWsDisconnect(Sender: TObject);
var
  I: Integer;
begin
  SocketConnected:= False;
  LogSave(ExeFolder + '\..\log\log'+ FormatDateTIme('yyyymmdd',Now)+'.log','Disconnect '+ wsAddress);

  For I:= 0 to Devices.Count -1 do
  begin
    if Assigned(Devices.Objects[I]) then
    begin
      TDevice(Devices.Objects[I]).Connected:= False;

    end;
  end;

end;
{$ELSE}
procedure TCommNode.CommNodeWsDisconnect(Sender: TObject; Socket: TCustomWinSocket);
var
  I: Integer;
begin
  SocketConnected:= False;
  LogSave(ExeFolder + '\..\log\log'+ FormatDateTIme('yyyymmdd',Now)+'.log','Disconnect '+ Socket.RemoteAddress);
  // ���⿡�� Ŭ���̾�Ʈ�� ���� ������ ����

  For I:= 0 to Devices.Count -1 do
  begin
    if Assigned(Devices.Objects[I]) then
    begin
      TDevice(Devices.Objects[I]).Connected:= False;

    end;
  end;

end;
{$ENDIF}
{$IFDEF TApdWinsockport}

procedure TCommNode.CommNodeWsError(Sender: TObject; ErrCode: Integer);
var
  I: Integer;
begin
  SocketConnected:= False;
  LogSave(ExeFolder + '\..\log\log'+ FormatDateTIme('yyyymmdd',Now)+'.log','Error connect '+ wsAddress);

  For I:= 0 to Devices.Count -1 do
  begin
    if Assigned(Devices.Objects[I]) then TDevice(Devices.Objects[I]).Connected:= False;
  end;

end;

{$ELSE}
procedure TCommNode.CommNodeWsError(Sender : TObject ; Socket : TCustomWinSocket ;
                        ErrorEvent : TErrorEvent ; var ErrorCode : Integer) ;
var
  I: Integer;
begin

  SocketConnected:= False;
  LogSave(ExeFolder + '\..\log\log'+ FormatDateTIme('yyyymmdd',Now)+'.log','Error connect '+ Socket.RemoteAddress);
  Socket.Close;
  ErrorCode := 0;

  // ���⿡�� Ŭ���̾�Ʈ�� ���� ������ ����
  For I:= 0 to Devices.Count -1 do
  begin
    if Assigned(Devices.Objects[I]) then TDevice(Devices.Objects[I]).Connected:= False;
  end;

end;
{$ENDIF}

function TCommNode.SendPacket(aEcuId: String; aCmd:Char; aData: String; aQuick:Boolean;aType:integer = 0):Boolean;
var
  ErrCode: Integer;
  ACKStr: String;
  ACKStr2: String;
  aDataLength: Integer;
  aLengthStr: String;
  aKey:Integer;
  aMsgNo: Integer;
  I: Integer;
  st: string;
  stDeviceID : string;
begin
  Result:= False;
{$IFDEF TApdWinsockport}    //���ӵǾ� ���� ���� ��⿡�� ������ ���� ������ ����.
//  if Not Open then Exit;
{$ELSE}
//   if Not Socket.Connected then Exit;
{$ENDIF}

  if MCUID = '' then MCUID := '0000000';
  stDeviceID := MCUID + aEcuId;

  aDataLength:= 21 + Length(aData);
  aLengthStr:= FillZeroNumber(aDataLength,3);

  if aCmd = 'a' then //���� ó��
  begin
    ACkStr:= STX +aLengthStr+  #$20+'K1'+ stDeviceID+ aCmd+Rcv_MsgNo;
    ACkStr:= ACkStr+ MakeCSData(ACKStr+ETX)+ETX;
    aKey:= $20;
    ACkStr2:= Copy(ACKStr,1,5)+EncodeData(aKey,Copy(ACkStr,6,Length(ACkStr)-6))+ETX;
  end else //���� or ���
  begin
    aMsgNo:= Send_MsgNo;
    ACkStr:= STX +aLengthStr+ #$20+'K1'+ stDeviceID+ aCmd+InttoStr(aMsgNo) +aData;
    ACkStr:= ACkStr+ MakeCSData(ACKStr+ETX)+ETX;
    aKey:= Ord(ACkStr[5]);
    ACkStr2:= Copy(ACKStr,1,5)+EncodeData(aKey,Copy(ACkStr,6,Length(ACkStr)-6))+ETX;


    if aMsgNo >= 9 then  Send_MsgNo:= 0
    else                 Send_MsgNo:= aMsgNo + 1;
  end;


  if aQuick then
  begin
    QuickSendDataList.Add(ACKStr2);

{$IFDEF TApdWinsockport}
//    PutString(ACKStr2);
//    FlushOutBuffer;
{$ELSE}
//    Socket.SendText(ACKStr2);
{$ENDIF}

    //�۽Ż�����Ȳ Display {To Do}
//    if Assigned(FOnSendData) then
//    begin
//      OnSendData(Self,ACKStr2,No);
//    end;
  end else
  begin
    if aType = 0 then ReserveSendDataList.Add(ACKStr2)
    else if aType = 1 then
    begin
      CardSendDataList.Add(ACKStr2);
    end;
  end;

  Result:= True;
end;


Procedure TCommNode.ExecSendPacket;
var
  I: Integer;
  st: string;
begin
  inc(CardDataSendSleepCount);
{$IFDEF TApdWinsockport}
  if not Open then  Exit;
{$ELSE}
  if Not Socket.Connected then  Exit;
{$ENDIF}

  if CardDataSendSleepCount < COMMANDDATA_SEND then Exit;
  
  if QuickSendDataList.Count > 0 then
  begin
    CardDataSendSleepCount := COMMANDDATA_SEND;
    st:= QuickSendDataList[0];
{$IFDEF TApdWinsockport}
    PutString(st);
//    FlushOutBuffer;
{$ELSE}
    Socket.SendText(st);
{$ENDIF}
    //���⿡�� ������ �۽���Ȳ ��ȸ {TO DO}
    if Assigned(FOnSendData) then
    begin
      OnSendData(Self,st,No);
    end;
    QuickSendDataList.Delete(0);
    L_nCardDataSend := 0;
    Exit;
  end;

  if ReserveSendDataList.Count > 0 then
  begin
    CardDataSendSleepCount := COMMANDDATA_SEND;
    st:= ReserveSendDataList[0];
{$IFDEF TApdWinsockport}
    PutString(st);
//    FlushOutBuffer;
{$ELSE}
    Socket.SendText(st);
{$ENDIF}
    //���⿡�� ������ �۽���Ȳ ��ȸ {TO DO}
    if Assigned(FOnSendData) then
    begin
      OnSendData(Self,st,No);
    end;
    ReserveSendDataList.Delete(0);
    L_nCardDataSend := 0;
    Exit;
  end;

  if CardSendDataList.Count > 0 then
  begin
    CardDataSendSleepCount := CARDDATA_SEND;
    inc(L_nCardDataSend);
    if L_nCardDataSend > 20 then
    begin
      CardSendRecv := True;
      L_nCardDataSend := 0;
      Exit;  //ī�嵥���ʹ� ��Ÿ�� ����.
    end;
    if Not CardSendRecv then Exit; //�������� ���� ��� ���� ������.
    CardSendRecv := False;
    st:= CardSendDataList[0];
{$IFDEF TApdWinsockport}
    PutString(st);
//    FlushOutBuffer;
{$ELSE}
    Socket.SendText(st);
{$ENDIF}
    //���⿡�� ������ �۽���Ȳ ��ȸ {TO DO}
    if Assigned(FOnSendData) then
    begin
      OnSendData(Self,st,No);
    end;
    CardSendDataList.Delete(0);
    SendCardTime := getTickCount; //������ ī�嵥���� �۽��� �ð��� ������.

    Exit;
  end;

end;



procedure TCommNode.SetLocate(aValue: String);
begin
  if Flocate <> aValue then
    FLocate:= aValue;
end;


procedure TCommNode.SetNo(aValue: Integer);
begin
  if FNo <> aValue then
    FNo:= aValue;
end;

procedure TCommNode.SetNetworkNode(const Value: TNetworkMode);
begin
  if FNetworkMode <> Value then
  FNetworkMode := Value;
end;

procedure TCommNode.SetRemoteConnected(aValue: Boolean);
var
  I: Integer;
begin
  if FRemoteConnected <> aValue then
  begin
    FRemoteConnected:= aValue;
    if aValue then
    begin
      SocketConnected:= True;
      LastConnectedTime:= Now;
    end else
    begin
      SocketConnected:= False;
{$IFDEF TApdWinsockport}
      LogSave(ExeFolder + '\..\log\log'+ FormatDateTIme('yyyymmdd',Now)+'.log','Disconnect '+ WsAddress);
{$ELSE}
      LogSave(ExeFolder + '\..\log\log'+ FormatDateTIme('yyyymmdd',Now)+'.log','Disconnect '+ Socket.RemoteAddress);
{$ENDIF}

      For I:= 0 to Devices.Count -1 do
      begin
        if Assigned(Devices.Objects[I]) then
        begin
          TDevice(Devices.Objects[I]).Connected:= False;

        end;
      end;
    end;
  end;

end;

{ TCommNode = END =============================================================}


{ TDevice =====================================================================}


constructor TDevice.Create(AOwner: TComponent);
begin
  DeviceID:= '000000000000';
  ATtype:= dtnothing;
  ACtype:= dtnothing;
  PTtype:= dtnothing;
  FDtype:= dtnothing;
  Connected:= False;
  WatchMode:= cmNothing;
  LastPollingTime:= 0;

  //�������
  DeviceSkillReceive := False;
  FireServerCommand := False;
  JavaraOpenCommand := False;
  JavaraCloseCommand := False;

  ArmAreaUseInitialize;
  ArmAreaNameInitialize;
  ArmAreaStateInitialize;

  DoorUseInitialize;
  DoorNameInitialize;
  DoorManageModeInitialize;
  DoorPNModeInitialize;
  DoorStateInitialize;
  DoorLockModeInitialize;
  DoorFireInitialize;

  inherited Create(AOwner);
end;

procedure TDevice.SendAckforaccess(aMsgCount:String);
var
  st: string;
begin
  //st:=#$90 + aMsgCount+'  '+#$80;
  st:='Y' + aMsgCount+'  '+'a';
  Self.FCommNode.SendPacket(ECUID,'c',st,True);
end;

procedure TDevice.DataPacektProcess(aData: string; NodeNo:integer);
var
  aCommand: Char;
  MSG_Code: Char;
begin

  {���� ������ Ŀ�ǵ庰 ó��}
  { ================================================================================
  "A" = Alarm Data
  "E" = Error
  "I" = Initial Data
  "R" = Remote Command
  "e" = ENQ
  "a" = ACK
  "n" = NAK
  "r" = Remote Answer
  "c" = Access Control data
  �� c(�������� ������)�ΰ�쿡�� ACK �� 'c' command�� ����� ������ �ؾ� �Ѵ�.
  �� ACK ������ �ι� �־�� �Ѵ�.(����ü ��Ŷ����,���������� ����)
   ================================================================================ }
  aCommand:= aData[17];
  //058 K1100000203Aan20061201162319EX0300dNF*************C0

  if (UpperCase(aCommand) <> 'A') and
     (aCommand <> 'E') then
  begin
    Connected:= True;
  end;

  case aCommand of
    'e': begin //���� ������
           //Connected:= True;
           LastPollingTime:= Now;
         end;
    'A','o': begin // �˶� ������
           DeviceRecvAlarmData(NodeNo,aCommand,aData);
         end;
    'i': begin // Ack Device Set up
           if Assigned(FOnRcvInitAckData) then OnRcvInitAckData(Self,aData,NodeNO);
         end;
    'r': begin // Ack Remotecontrol
           if Assigned(FOnRcvRemoteAckData) then OnRcvRemoteAckData(Self,aData,NodeNO);
           RemoteDataProcess(NodeNO,aData);
         end;
    'E': begin  //ERROR Data;
           if Assigned(FOnRcvERRORData) then OnErrorData(Self,aData,NodeNO);
           ErrorDataProcess(NodeNO,aData);
         end;
    'F': begin // Ack Remotecontrol
           if Assigned(FOnRcvRemoteAckData) then OnRcvRemoteAckData(Self,aData,NodeNO);
         end;
    '#': begin // FTP ���� ���� ǥ��
           if Assigned(FOnRcvFTPProcessData) then OnRcvFTPProcessData(Self,aData,NodeNO);
         end;
    'M': begin
           if Pos('Register Default Set',aData) > 0 then
           begin
            if Assigned(FOnRegisterClear) then OnRegisterClear(Self,aData,NodeNO);
           end;
         end;

    'c': begin
           MSG_Code:= aData[19];
           if useProcessCount then
           begin
              if G_nProcessCount > G_nMaxProcessCount then Exit; //�ִ� ���μ��� ������ �ʰ� �ϸ� ó������ ���� ������.
              FCS.Enter;
              inc(G_nProcessCount);
              FCS.Leave;
           end;
           case MSG_Code of
             'F' ://��ȭ �α� ������ ó��
                begin
                  //SendAckforaccess(Copy(aData,20,2));
                  if Assigned(FOnRcvTellogData) then
                  begin
                    OnRcvTellogData(Self,aData,NodeNO);
                  end else
                  begin
                    if useProcessCount then
                    begin
                      FCS.Enter;
                      G_nProcessCount := G_nProcessCount - 1;
                      FCS.Leave;
                    end;
                  end;
                end;
             'E' ://ī�� ������(����) ó��
                begin
                  //SendAckforaccess(Copy(aData,20,2));
                  if aData[38] = 'S' then
                    DoorModeState(NodeNO,aData);  //2011.03.07 ������ �����͸� ó������.
                  if Assigned(FOnRcvCardReadData) then
                  begin
                    OnRcvCardReadData(Self,aData,NodeNO);
                  end else
                  begin
                    if useProcessCount then
                    begin
                      FCS.Enter;
                      G_nProcessCount := G_nProcessCount - 1;
                      FCS.Leave;
                    end;
                  end;
                end;
             'D' ://�� ���� ���� ó��
                begin
                  if useProcessCount then
                  begin
                    FCS.Enter;
                    G_nProcessCount := G_nProcessCount - 1;
                    FCS.Leave;
                  end;
                  //SendAckforaccess(Copy(aData,20,2));
                  DoorModeState(NodeNO,aData);
                  //if Assigned(FOnRcvChangeDoorData) then OnRcvChangeDoorData(Self,aData,NodeNO);
                end;
             'c' ://������ ����
                begin
                  if useProcessCount then
                  begin
                    FCS.Enter;
                    G_nProcessCount := G_nProcessCount - 1;
                    FCS.Leave;
                  end;
                  DoorControlState(NodeNo,aData);
                  //if Assigned(FOnRcvDoorControl) then OnRcvDoorControl(Self,aData,NodeNO);
                end;
             'a','b','g'://�������� ��� ����
                begin
                  //DoorSetupState(NodeNo,aData);
                  if Assigned(FOnRcvDoorSetup) then
                  begin
                    OnRcvDoorSetup(Self,aData,NodeNO);
                  end else
                  begin
                    if useProcessCount then
                    begin
                      FCS.Enter;
                      G_nProcessCount := G_nProcessCount - 1;
                      FCS.Leave;
                    end;
                  end;

                end;
             'l','m','n','j','f':// ī�� ������ ��� ����
                begin
                  G_bDeviceResponse[con_CARDDOWNLOADACK] := True;  //ī���� Ack
                  if Assigned(FOnRcvRegCardData) then
                  begin
                    OnRcvRegCardData(Self,aData,NodeNO);
                  end else
                  begin
                    if useProcessCount then
                    begin
                      FCS.Enter;
                      G_nProcessCount := G_nProcessCount - 1;
                      FCS.Leave;
                    end;
                  end;
                end;
             's' : //������ ������ ��� ����
                begin
                  if Assigned(FOnRcvRegSchedule) then
                  begin
                    OnRcvRegSchedule(Self,aData,NodeNO);
                  end else
                  begin
                    if useProcessCount then
                    begin
                      FCS.Enter;
                      G_nProcessCount := G_nProcessCount - 1;
                      FCS.Leave;
                    end;
                  end;
                end;
             'q' : //���ϵ�� ����
                begin
                  if copy(aData,20,4) = L_stHolidaySend then
                  begin
                    L_bHolidayRecv := True;
                  end;
                  if useProcessCount then
                  begin
                    FCS.Enter;
                    G_nProcessCount := G_nProcessCount - 1;
                    FCS.Leave;
                  end;
                end;
             else
                begin
                  if useProcessCount then
                  begin
                    FCS.Enter;
                    G_nProcessCount := G_nProcessCount - 1;
                    FCS.Leave;
                  end;
                end;
           end;
           SendAckforaccess(Copy(aData,20,2));
         end;
    'a' : begin
          //ACK
         end;

    else if Assigned(FOnNotDefineData) then
    begin
      ErrorLogSave(ExeFolder + '\..\log\err'+ FormatDateTIme('yyyymmdd',Now)+'.log',
                   ERR_PROTOCOL_0002,aData);
      OnNotDefineData(Self,aData,NodeNO);

    end;
  end;
end;

destructor TDevice.Destroy;
begin

  inherited Destroy;
end;

//������ ����
procedure TDevice.SendPacket(aCmd: Char; aData: String;aQuick:Boolean = False;aType:integer = 0);
begin
  if CommNode <> nil then
    CommNode.SendPacket(ECUID,aCmd,aData,aQuick,aType);
end;

//ī���ȣ(ID)�ٿ�ε�
procedure TDevice.CD_Download(aCardNo:String;  // ī���ȣ
                              ValidDay: String;// ��ȿ�Ⱓ(6)
                              cardType:Char;   // ī��Ÿ��(0:����,1:���,2:����+���)
                              RegCode:Char;
                              aTimeCode:Char;  // Ÿ���ڵ�
                              func:Char;        // ����ڵ�(L:���, N:����)
                              aQuick:Boolean = False;
                              aPositionNum:integer = 0;
                              aCardPosition:Boolean = False;
                              aAlarmAreaGrade:string = '';
                              aDoorAreaGrade:string = '');
var
  aData: String;
  I: Integer;
  xCardNo: String;
  RegType: Char;
  aCardType: Char;
  nCardLength : integer;
  stCardPositionNum : string;
  nDelayTime : integer;
begin

  if aPositionNum <> 0 then
  begin
    stCardPositionNum := FillZeroNumber(aPositionNum,5);
    if aCardPosition then
    begin
      if func = 'L' then func := 'J'; // ����� ��츸 J �� ���� �� ��
    end;
  end else
  begin
    aCardPosition := False; //��ġ������ ���� ��� ������ �Ϲ� �������� ����
    stCardPositionNum := '*****';
  end;

  if CARDLENGTHTYPE = 0 then
  begin
    if IsNumericCardNo then
    begin
      if Not Isdigit(aCardNo) then Exit;
      aCardNo := FillZeroStrNum(Trim(aCardNo),10);
      xCardNo:=  '00'+EncodeCardNo(aCardNo);
    end
    else xCardNo:= '00' + aCardNo;

    if Length(xCardNo) <> 10 then
    begin
      ErrorLogSave(ExeFolder + '\..\log\err'+ FormatDateTIme('yyyymmdd',Now)+'.log',
                  'ErrorDownladCardData ','ī���ȣ <> 10:'+aData);
      Exit;
    end;
  end else
  begin
    if CARDLENGTHTYPE = 1 then
    begin
      if IsNumericCardNo then
        xCardNo:=  Dec2Hex64(StrtoInt64(aCardNo),20)
      else xCardNo:= aCardNo;
    end else if CARDLENGTHTYPE = 2 then
    begin
      xCardNo := Ascii2Hex(aCardNo);
    end;
    nCardLength := Length(xCardNo);
    xCardNo := FillzeroNumber(nCardLength,2) + xCardNo;
  end;

  if ValidDay = '' then ValidDay:= '000000';
  if Not IsDigit(ValidDay) then ValidDay:= '000000';
  
  if Length(ValidDay) <> 6 then
  begin
    ErrorLogSave(ExeFolder + '\..\log\err'+ FormatDateTIme('yyyymmdd',Now)+'.log',
                 'ErrorDownladCardData ','��ȿ�Ⱓ <> 6:'+aData);
    Exit;
  end;




  aData:= '';
  aData:= func +
          '0'+
          RegCode+                  //����ڵ�(0:1,2   1:1����,  2:2����, 3:�������)
          '  '+                     //RecordCount #$20 #$20
          '0'+                      //����
          xCardNo+                  //ī���ȣ
          ValidDay+                 //��ȿ�Ⱓ
          '0'+                      //��� ���
          cardType+                 //ī�����(0:��������,1:�������,2:���+����)
          aTimeCode;                //Ÿ������
  aData := aData + stCardPositionNum; // ����� ��� ��ġ ���� �߰�
  aData := aData + aAlarmAreaGrade;   // ����������� �߰�
  aData := aData + aDoorAreaGrade;    // ���Թ����� �߰�
{    if aCardPosition then
    begin
      if func = 'J' then aData := aData + stCardPositionNum; // ����� ��� ��ġ ���� �߰�
    end;
}

  G_bDeviceResponse[con_CARDDOWNLOADACK] := False;
  SendPacket('c',aData,aQuick,1);

  //nDelayTime := 5000;
  //ResponseCheck(con_CARDDOWNLOADACK,nDelayTime);   //�ǹ��̰����� �������

end;

procedure TDevice.DoorModeChange(aDoorNo: Char; aMode: Char;aQuick:Boolean=True);
var
  st: string;
begin
  if FDtype = dtFD then
  begin
    if aMode = '1' then Exit; //�ļ�Ÿ���� ������ �ϸ� �ȵ�
  end;
  st:= 'C'+                                     //  Msg Code
       //InttoStr(CommNode.Send_MsgNo)+          // Message Count
       '0' + 
       aDoorNo+                                //  ��⳻ Door No
       #$30+                                   //  RecordCount(����)
       #$32+                                   //  RecordCount(��庯�� #$32)
       aMode;                                  //  '0':� ,'1':����
  SendPacket('c',st,aQuick);

end;

procedure TDevice.DoorExitButton(aDoorNo: Char);
var
  st: string;
begin
  st:= 'C'+                              //  Msg Code
       InttoStr(CommNode.Send_MsgNo)+    //  Msg Count
       aDoorNo+                         //  ��⳻ Door No
       #$30+                             //  RecordCount(����)
       #$33+                             //  RecordCount(���� #$33)
       #$31;
  SendPacket('c',st,True);
end;

procedure TDevice.SendDoorSchadule(aDoor:Char;aDay:Char;aData:String;aQuick:Boolean = False);
var
  st: String;
begin
   st:= 'S'+        //Command
        '0'+        //Message Code
        aDoor+      //��⳻ ���Թ� ��ȣ
        #$20+
        aDay+       //����:0����,1������,2:�Ͽ���,3����
        aData;      // Mode Data
   SendPacket('c',st,aQuick);
//   DebugScreen.Trace('[Debug]'+st);
end;


procedure TDevice.CheckDoorState(aDoorNo: Char;aQuick:Boolean = False);
var
  st: string;
begin

  st:= 'C'+                               //  Msg Code
       InttoStr(CommNode.Send_MsgNo)+     //  Msg Count
       ADoorNo+                           //  ��⳻ Door No
       #$30+                              //  RecordCount(����)
       #$30+                              //  RecordCount(������ȸ)
       #$30;                              //  �ǹ̾���

  SendPacket('c',st,aQuick);
end;

procedure TDevice.TimeSync;
var
  TimeStr: String;
begin
  TimeStr:= FormatDatetime('yyyymmddhhnnss',Now);
  SendPacket('R','TM00'+TimeStr,False);
end;

procedure TDevice.SetCommNode(const Value: TCommNode);
var
  DeviceIndex: Integer;
begin
  if FCommNode <> Value then
  begin
    FCommNode := Value;
    FCommNode.Devices.AddObject(self.FDeviceID,Self);
  end;
end;

procedure TDevice.SetConnected(const Value: Boolean);
var
  i : integer;
begin
  if FConnected <> Value then
  begin
    FConnected := Value;
    if Assigned(FOnConnected) then OnConnected(Self,Value,NodeNO,ECUID);
    if Value then FCommNode.SocketConnected := Value;
    if Not Value then
    begin
      ArmAreaStateInitialize;
      WatchMode := cmNothing;
      if Assigned(FOnWatchModeChange) then
      begin
        for i := 0 to con_nFIXMAXAREANO do
        begin
          OnWatchModeChange(self,NodeNo,ECUID,inttostr(i),GetArmAreaState(i));
        end;
      end;

      DoorManageModeInitialize;
      DoorPNModeInitialize;
      DoorStateInitialize;
      DoorLockModeInitialize;
      DoorFireInitialize;
      if Assigned(FOnDoorModeChange) then
      begin
        for i := 1 to DOORCOUNT do
        begin
          OnDoorModeChange(self,NodeNo,ECUID,inttostr(i),GetDoorManageMode(i),GetDoorPNMode(i),GetDoorState(i),GetDoorLockMode(i));
        end;
      end;
    end;
  end;
end;

procedure TDevice.SetDeviceID(const Value: String);
begin
  if FDeviceID <> Value then
  FDeviceID := Value;
end;

procedure TDevice.SetWatchMode(const Value: TWatchMode);
begin
  if FWatchMode <> Value then
  begin
    FWatchMode := Value;
    if Assigned(FOnWatchModeChange) then
    begin
      OnWatchModeChange(self,NodeNo,ECUID,'0',Value);
    end;
  end;
end;

//����� ����
procedure TDevice.ChangewatchMode(aMode: TWatchMode);
begin
  case aMode of
    cmArm      : SendPacket('R','MC00A',True); //�����
    cmDisarm   : SendPacket('R','MC00D',True); //�������
    cmPatrol   : SendPacket('R','MC00P',True); //��ȸ���
    cmInit     : SendPacket('R','MC00I',True); //��ϸ��
    cmTest     : SendPacket('R','MC00T',True); //TEST���
  end;
end;

//����� Ȯ��
// �������(����ȣ�� 00)���� ��ɾ� ����
procedure TDevice.CheckWatchMode(aQuick:Boolean = False);
begin
  if ECUID = '00' then
  begin
    SendPacket('R','RD00',aQuick);
  end else
  begin
    CommNode.SendPacket('00','R','rd00'+ECUID,aQuick); //Ȯ��⺰ ��� ���� Ȯ�� ��� ���� ���� 2011.05.24
  end;
end;

procedure TDevice.ReBoot;
begin
  SendPacket('R','RS00Reset',True);
end;

procedure TCommNode.ACC_sendData(aEcuId, aData: CString);
begin
  SendPacket(aEcuId,'c', aData,True);
end;

procedure TDevice.SetAcType(const Value: TDevicetype);
begin
  if FACtype <> Value then  FACtype := Value;
end;

procedure TDevice.SetAtType(const Value: TDevicetype);
begin
  if FATtype <> Value then FATtype := Value;
end;

procedure TDevice.SetFdType(const Value: TDevicetype);
begin
  if FFDtype <> Value then FFDtype := Value;
  if Value = dtFd then
    CommNode.FDtype := dtFd;
end;

procedure TDevice.SetPtType(const Value: TDevicetype);
begin
  if FPTtype <> Value then FPTtype := Value;
{  if Value = dtPt then
  begin
    AlarmUse := True;
  end else
  begin
    AlarmUse := False;
  end; }
end;

procedure TDevice.SetNodeNO(const Value: integer);
begin
  if FNodeNO <> Value then  FNodeNO := Value;
end;

procedure TDevice.SetFoodAmt(const Value: integer);
begin
  FFDAMTPER := Value;
end;

Function TDevice.Holiday(aCmd:Char;aDate,aDoorNo: string):Boolean;
var
  stData :string;
  FirstTickCount : Double;
begin
  result := False;
  stData := 'Q' + //��ȸ'R'
            '0' + //���� 0 ���� 1
            aDoorNo + //0:��ü,1:1����,2:2����
            ' ' + //�����̽�
            aCmd + //A:�߰�,D����,W:��ü����
            aDate + //MMDD
            '3';  //'3' : Ư����
  L_stHolidaySend := copy(stData,2,4);
  L_bHolidayRecv := False;
  SendPacket('c',stData);

  FirstTickCount := GetTickCount + 3000; //3�� ���
  While Not L_bHolidayRecv do
  begin
    if bApplicationTerminate then Exit;
    Application.ProcessMessages;
    if GetTickCount > FirstTickCount then Break;  //3000�и����� ���� ������ ���з� ó����
  end;
  result := L_bHolidayRecv;
end;

procedure TCommNode.SetNodeNoStr(const Value: string);
begin
  FNodeNoStr := Value;
end;


procedure TDevice.SetDeviceName(const Value: String);
begin
  FDeviceName := Value;
end;

procedure TCommNode.SetMCUID(const Value: string);
begin
  FMCUID := Value;
end;

procedure TDevice.SetECUID(const Value: String);
begin
  FECUID := Value;
end;

procedure TCommNode.SetSocketConnected(const Value: Boolean);
var
  i : integer;
begin
  if FSocketConnected = Value then Exit;
  FSocketConnected := Value;
  if Assigned(FOnConnected) then
  begin
    OnConnected(Self,Value,NO);
  end;

  if Not Value then
  begin
    for i := 0 to DeviceList.Count - 1 do
    begin
      if TDevice(DeviceList.Objects[i]).NodeNo = No then
      begin
        TDevice(DeviceList.Objects[i]).Connected := False;
      end;
    end;
  end;

end;

procedure TDevice.DeviceRecvAlarmData(aNodeNo: integer; aCommand,aData: string);
var
  stSubCLass : string;
  stStatusCode : string;
  stNewStateCode : string;
  stMsgNo : string;
  stTime : string;
  stSubAddr : string;
  stZoneCode : string;
  stOperator : string;
  stPortNo : string;
  stState : string;
  cMode : Char;
  bAlarmSound : Boolean;
  bAlarmView : Boolean;
  nTempIndex : integer;
  nOperLenth : integer;
  nOperStartPoint : integer;
  i : integer;
begin
  nOperLenth := 10;
  nOperStartPoint := 46;
  if AlarmEventLengthUse then
  begin
    nOperLenth := AlarmEventLength;
    nOperStartPoint := nOperStartPoint + 2;
  end;

  stSubClass     := copy(aData,34,2);
  stSubAddr  := copy(aData,36,2);
  stZoneCode := copy(aData,38,2);
  cMode          := aData[40];
  stMsgNo    := aData[18];
  stTime     := copy(aData,20,14);
  stStatusCode   := copy(aData,41,2);
  stPortNo   := copy(aData,43,2);
  stState    := aData[45];
  //stOperator := copy(aData,46,10);
  stOperator := copy(aData,nOperStartPoint,nOperLenth);

  if Not isDigit(stZoneCode) then stZoneCode := '00';

  if (stSubCLass = 'MN') or (stSubCLass = 'EX')then
  begin
    if stStatusCode = 'NF' then
    begin
      Connected := False;
      for i := 0 to con_nFIXMAXAREANO do
        SetArmAreaState(i,cmNothing);
    end else
    begin
      Connected := True;
      case UpperCase(cMode)[1] of
       'A': begin
              SetArmAreaState(strtoint(stZoneCode),cmArm);
            end;
       'D': begin
              SetArmAreaState(strtoint(stZoneCode),cmDisarm);
            end;
       'T': begin
              SetArmAreaState(strtoint(stZoneCode),cmTest);
            end;
       'I': begin
              SetArmAreaState(strtoint(stZoneCode),cmInit);
            end;
       'P': begin
              SetArmAreaState(strtoint(stZoneCode),cmPatrol);
            end;
      else  begin
              SetArmAreaState(strtoint(stZoneCode),cmNothing);
            end;
      end;
    end;
  end else
  begin
    Connected := True;
    case UpperCase(cMode)[1] of
     'A': begin
            SetArmAreaState(strtoint(stZoneCode),cmArm);
          end;
     'D': begin
            SetArmAreaState(strtoint(stZoneCode),cmDisarm);
          end;
     'T': begin
            SetArmAreaState(strtoint(stZoneCode),cmTest);
          end;
     'I': begin
            SetArmAreaState(strtoint(stZoneCode),cmInit);
          end;
     'P': begin
            SetArmAreaState(strtoint(stZoneCode),cmPatrol);
          end;
    else  begin
            SetArmAreaState(strtoint(stZoneCode),cmNothing);
          end;
    end;
  end;

  if Assigned(FOnRcvAlarmData) then
  begin
    if useProcessCount then
    begin
      if G_nProcessCount > G_nMaxProcessCount then Exit; //�ִ� ���μ��� ������ �ʰ� �ϸ� ó������ ���� ������.
      FCS.Enter;
      inc(G_nProcessCount);
      FCS.Leave;
    end;
    OnRcvAlarmData(Self,aCommand,aData,aNodeNO);
  end;
  SendPacket('a','',True); //Alarm Ack ������

  if aCommand <> 'A' then Exit; //�˶� �߻� ���°� �ƴϸ� �̺�Ʈ �߻����� ����.

  if stStatusCode = '00' then
  begin
    nTempIndex := AlarmModeNotCardList.IndexOf(copy(stOperator,1,10));
    if nTempIndex > -1 then
    begin
      if UpperCase(cMode) = 'A' then
        stNewStateCode := TAlarmStatusCode(AlarmModeNotCardList.Objects[nTempIndex]).ALARMSTATUSCODE
      else stNewStateCode := TAlarmStatusCode(AlarmModeNotCardList.Objects[nTempIndex]).DISALARMSTATUSCODE;
    end else
    begin
      if UpperCase(cMode) = 'A' then stNewStateCode := 'A1'
      else stNewStateCode := 'C1';
    end;
  end else if isDigit(stPortNo) then
  begin
    //Alarm StateCode
    nTempIndex := ZoneDetectList.IndexOf(stStatusCode);
    if nTempIndex < 0 then
    begin
      stNewStateCode := 'Z' + stState;     //S:��Ʈ,N:����,P:�ܼ�
    end;
  end;

  nTempIndex := AlarmEventViewStatusCode.Indexof(stStatusCode);
  if nTempIndex < 0 then
  begin
    nTempIndex := AlarmEventViewStatusCode.Indexof(stNewStateCode);
  end;
  if nTempIndex < 0 then bAlarmView := False
  else bAlarmView := True;

  nTempIndex := AlarmEventSoundStatusCode.Indexof(stStatusCode);
  if nTempIndex < 0 then
  begin
    nTempIndex := AlarmEventSoundStatusCode.Indexof(stNewStateCode);
  end;
  if nTempIndex < 0 then bAlarmSound := False
  else bAlarmSound := True;

  if stPortNo <> '**' then    //��Ʈ ���� �ΰ�� ������ �Ѹ���.
  begin
    if stState <> 'N' then
    begin
      bAlarmSound := True;
      bAlarmView := True;
    end else
    begin
      bAlarmSound := False; //�� ������ �˶� �︮�� ����...
    end;
  end;

  if bAlarmView or bAlarmSound then
  begin
    if bAlarmSound then SetAlarmEventState(strtoint(stZoneCode), aeAlarmEvent )
    else SetAlarmEventState(strtoint(stZoneCode), aeNormalEvent );
  end else SetAlarmEventState(strtoint(stZoneCode), aeNormal );

  if Assigned(FOnAlarmEventAnalysis) then
  begin
    OnAlarmEventAnalysis(Self,NodeNo,EcuID,aCommand,stMsgNo,stTime,stSubClass,stSubAddr,
                                  stZoneCode,UpperCase(cMode),stStatusCode,stPortNo,stState,
                                  stOperator,stNewStateCode,bAlarmView,bAlarmSound);
  end;
end;


procedure TDevice.DoorModeState(aNodeNo: integer; aData: string);
Var
  stDoorNo: String;
  cMsgNo: Char;
  cDoorState: Char;
  cDoorMode: Char;
  cDoorMode2: Char;
  bChange : Boolean;
  cInputType : char;
begin
  if Length(aData) < 40 then    Exit;
  bChange := False;

  stDoorNo:= aData[21];

  cMsgNo:=    aData[18];
  cDoorState:= aData[40];    //������
  cDoorMode:=  aData[37];    //�/����
  cDoorMode2:= aData[36];    //Posi/Nega
  cInputType := aData[38];        //'F' ȭ��

  if Not isDigit(stDoorNo) then Exit;

  case cDoorMode of
    '0' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmManager then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmManager);
              bChange := True;
            end
          end;
    '1' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmOpen then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmOpen);
              bChange := True;
            end
          end;
    '2' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmLock then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmLock);
              bChange := True;
            end
          end;
    else begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmNothing then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmNothing);
              bChange := True;
            end
          end;
  end;
  case cDoorMode2 of
    '0' : begin
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnPositive then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnPositive);
              bChange := True;
            end
          end;
    '1' : begin
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnNegative then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnNegative);
              bChange := True;
            end
          end;
    else  begin 
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnNothing then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnNothing);
              bChange := True;
            end
          end;
  end;
  case cDoorState of
    'C' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsClose then
            begin
              SetDoorState(strtoint(stDoorNo),dsClose);
              bChange := True;
            end
          end;
    'O' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsOpen then
            begin
              SetDoorState(strtoint(stDoorNo),dsOpen);
              bChange := True;
            end
          end;
    'T','D' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsLongTime then
            begin
              SetDoorState(strtoint(stDoorNo),dsLongTime);
              bChange := True;
            end
          end;
    'U' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsOpenErr then
            begin
              SetDoorState(strtoint(stDoorNo),dsOpenErr);
              bChange := True;
            end
          end;
    'L' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsCloseErr then
            begin
              SetDoorState(strtoint(stDoorNo),dsCloseErr);
              bChange := True;
            end
          end;
    else  begin
            if GetDoorState(strtoint(stDoorNo)) <> dsNothing then
            begin
              SetDoorState(strtoint(stDoorNo),dsNothing);
              bChange := True;
            end
          end;
  end;
  if bChange then
  begin
    if Assigned(FOnDoorModeChange) then
    begin
      OnDoorModeChange(Self,NodeNO,ECUID,stDoorNo,GetDoorManageMode(strtoint(stDoorNo)),GetDoorPNMode(strtoint(stDoorNo)),GetDoorState(strtoint(stDoorNo)),GetDoorLockMode(strtoint(stDoorNo)));
    end;
  end;
end;

procedure TDevice.DoorControlState(aNodeNo: integer; aData: string);
Var
  stDoorNo: String;
  cDoorState: Char;
  cDoorMode: Char;
  cDoorMode2: Char;
  bChange : Boolean;
begin
  bChange := False;
  stDoorNo:= aData[21];

  cDoorMode2:= aData[24];    //Posi/Nega
  cDoorMode:=  aData[25];    //�/����
  cDoorState:= aData[26];    //������
  if Not isDigit(stDoorNo) then Exit;
  case cDoorMode of
    '0' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmManager then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmManager);
              bChange := True;
            end
          end;
    '1' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmOpen then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmOpen);
              bChange := True;
            end
          end;
    '2' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmLock then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmLock);
              bChange := True;
            end
          end;
    else begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmNothing then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmNothing);
              bChange := True;
            end
          end;
  end;
  case cDoorMode2 of
    '0' : begin
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnPositive then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnPositive);
              bChange := True;
            end
          end;
    '1' : begin
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnNegative then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnNegative);
              bChange := True;
            end
          end;
    else  begin 
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnNothing then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnNothing);
              bChange := True;
            end
          end;
  end;
  case cDoorState of
    'C' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsClose then
            begin
              SetDoorState(strtoint(stDoorNo),dsClose);
              bChange := True;
            end
          end;
    'O' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsOpen then
            begin
              SetDoorState(strtoint(stDoorNo),dsOpen);
              bChange := True;
            end
          end;
    'T','D' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsLongTime then
            begin
              SetDoorState(strtoint(stDoorNo),dsLongTime);
              bChange := True;
            end
          end;
    'U' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsOpenErr then
            begin
              SetDoorState(strtoint(stDoorNo),dsOpenErr);
              bChange := True;
            end
          end;
    'L' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsCloseErr then
            begin
              SetDoorState(strtoint(stDoorNo),dsCloseErr);
              bChange := True;
            end
          end;
    else  begin
            if GetDoorState(strtoint(stDoorNo)) <> dsNothing then
            begin
              SetDoorState(strtoint(stDoorNo),dsNothing);
              bChange := True;
            end
          end;
  end;
  if bChange then
  begin
    if Assigned(FOnDoorModeChange) then
    begin
      OnDoorModeChange(Self,NodeNO,ECUID,stDoorNo,GetDoorManageMode(strtoint(stDoorNo)),GetDoorPNMode(strtoint(stDoorNo)),GetDoorState(strtoint(stDoorNo)),GetDoorLockMode(strtoint(stDoorNo)));
    end;
  end;

end;

procedure TDevice.ServerCarDataSend(aCardReaderNo, aCardData: string);
begin
  SendPacket('R','CD90'+   //CMD
                 '**' +    //������Ʈ�� ID
                 FillZeroNumber(strtoint(aCardReaderNo),2) + //ī�帮����ȣ
                 '**' +    //Door No
                 '7F' +
                 FillZeroNumber(Length(aCardData),2) +
                 aCardData , True); //ī�帮�� ����
end;

procedure TCommNode.FireRecovery(aQuick:Boolean=False);
var
  i : integer;
begin
  //SendPacket('00','R','SM2599',aQuick);
  SendPacket('00','R','SM2699RSM2500',aQuick);
  for i := 0 to Devices.Count - 1 do
  begin
    TDevice(Devices.Objects[i]).DoorFireInitialize;
  end;
end;

procedure TDevice.DeviceDoorInfoSearch(aDoor:string);
var
  stData : string;
begin
  stData := 'B' + '0' +                             //MSG Code
            aDoor +               //����ȣ
            #$20 + #$20 + '00000000000000000000';          //��ȸ�� ��ü�� '0'���� ��ŷ

  SendPacket('c',stData,True);
end;

procedure TDevice.DeviceDoorInfoSetting(aDoor, aCardMode, aDoorMode,
  aDoorControlTime, aOpenMoni, aUseSch, aSendDoor, aAlarmLong, aFire,
  aLockType, aDSOpen, aRemoteDoor,aCmd: string);
var
  stData: string;

begin
  stData := aCmd + //'A' +                       //MSG Code
    '0' +                              //Msg Count(����)
    aDoor +                //����ȣ
    #$20 + #$20 +                      // Record count
    aCardMode +              //ī�����
    aDoorMode +              //���Թ� ����
    aDoorControlTime +          //Door���� �ð�
    aOpenMoni +          //��ð� ���� �溸
    aUseSch +           //������ ��������
    aSendDoor +         //���Թ���������
    '0' +                              //����̻�� ���(������:����)
    '0' +                              //AntiPassBack(������:����)
    aAlarmLong +          //��ð� ���� �������
    '0' +                              //��� �̻�� ���� ��� (������:����)
    char(strtoint(aLockType)) +              //������ Ÿ��
    aFire +         //ȭ�� �߻��� ������
    '0' +                              //DS LS �˻�(������:����)
    aDSOpen +           //���Թ��������� (DS OPEN 0x30,DS CLOSE 0x31)
    aRemoteDoor +  //���������� (DoorOpen 0x30,DoorClose 0x31)
    '00000';                           //����


  SendPacket('c',stData,True);
end;

procedure TDevice.CardTypeSearch;
var
  stData : string;
begin
  stData := 'Ct00';          //��ȸ�� ��ü�� '0'���� ��ŷ

  SendPacket('Q',stData,True);

end;


procedure TDevice.DoorSetupState(aNodeNo: integer; aData: string);
Var
  stDoorNo: String;
  cDoorState: Char;
  cDoorMode: Char;
  cDoorMode2: Char;
  bChange : Boolean;
begin
  bChange := False;
  stDoorNo:= aData[21];

  cDoorMode2:= aData[24];    //Posi/Nega
  cDoorMode:=  aData[25];    //�/����
  cDoorState:= aData[26];    //������
  if Not isDigit(stDoorNo) then Exit;
  
  case cDoorMode of
    '0' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmManager then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmManager);
              bChange := True;
            end
          end;
    '1' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmOpen then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmOpen);
              bChange := True;
            end
          end;
    '2' : begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmLock then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmLock);
              bChange := True;
            end
          end;
    else begin
            if GetDoorManageMode(strtoint(stDoorNo)) <> dmNothing then
            begin
              SetDoorManageMode(strtoint(stDoorNo),dmNothing);
              bChange := True;
            end
          end;
  end;
  case cDoorMode2 of
    '0' : begin
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnPositive then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnPositive);
              bChange := True;
            end
          end;
    '1' : begin
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnNegative then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnNegative);
              bChange := True;
            end
          end;
    else  begin 
            if GetDoorPNMode(strtoint(stDoorNo)) <> pnNothing then
            begin
              SetDoorPNMode(strtoint(stDoorNo),pnNothing);
              bChange := True;
            end
          end;
  end;
  case cDoorState of
    'C' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsClose then
            begin
              SetDoorState(strtoint(stDoorNo),dsClose);
              bChange := True;
            end
          end;
    'O' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsOpen then
            begin
              SetDoorState(strtoint(stDoorNo),dsOpen);
              bChange := True;
            end
          end;
    'T','D' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsLongTime then
            begin
              SetDoorState(strtoint(stDoorNo),dsLongTime);
              bChange := True;
            end
          end;
    'U' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsOpenErr then
            begin
              SetDoorState(strtoint(stDoorNo),dsOpenErr);
              bChange := True;
            end
          end;
    'L' : begin
            if GetDoorState(strtoint(stDoorNo)) <> dsCloseErr then
            begin
              SetDoorState(strtoint(stDoorNo),dsCloseErr);
              bChange := True;
            end
          end;
    else  begin
            if GetDoorState(strtoint(stDoorNo)) <> dsNothing then
            begin
              SetDoorState(strtoint(stDoorNo),dsNothing);
              bChange := True;
            end
          end;
  end;
  if bChange then
  begin
    if Assigned(FOnDoorModeChange) then
    begin
      OnDoorModeChange(Self,NodeNO,ECUID,stDoorNo,GetDoorManageMode(strtoint(stDoorNo)),GetDoorPNMode(strtoint(stDoorNo)),GetDoorState(strtoint(stDoorNo)),GetDoorLockMode(strtoint(stDoorNo)));
    end;
  end;
end;



procedure TDevice.SetFireServerCommand(const Value: Boolean);
begin
  FFireServerCommand := Value;
end;

procedure TDevice.SetJavaraCloseCommand(const Value: Boolean);
begin
  FJavaraCloseCommand := Value;
end;

procedure TDevice.SetJavaraOpenCommand(const Value: Boolean);
begin
  FJavaraOpenCommand := Value;
end;

procedure TDevice.CheckSystemSkill(aQuick: Boolean);
begin
  SendPacket('R','VR90',aQuick);
end;

procedure TDevice.SetDeviceSkillReceive(const Value: Boolean);
begin
  FDeviceSkillReceive := Value;
end;

procedure TDevice.RemoteDataProcess(aNodeNo: integer; aData: string);
var
  aCode: String;
  aGubun : string;
  stEcuID : string;
  nLength : integer;
begin
  aCode:= Copy(aData,19,2);
  aGubun := Copy(aData,21,2);
  if aCode = 'VR' then
  begin
    if aGubun = '90' then
    begin
      stEcuID := copy(aData,15,2);
      nLength := Length(aData) + 1; //ETX �κ��� ��� �ִ� ��ó�� ����
      GetSystemSkill(stEcuID,Copy(aData,23,nLength - 25));
    end else if aGubun = '01' then
    begin
      nLength := Length(aData) + 1; //ETX �κ��� ��� �ִ� ��ó�� ����
      DeviceCode := Copy(aData,23,nLength - 26);
    end;
  end;
end;

function TDevice.GetSystemSkill(aEcuID, aData: string): Boolean;
var
  stBit : string;
begin
  result := True;

  DeviceSkillReceive := True;
  if Pos('Undefined Command',aData) <> 0 then Exit;

  Delete(aData,1,4);// 'SyFn' �κ� ����
  stBit := HexToBinary(aData);

  case stBit[4] of   //�ڹٶ� ���� ���
    '0' : JavaraCloseCommand := False;
    '1' : JavaraCloseCommand := True;
  else
    JavaraCloseCommand := False;
  end;
  case stBit[5] of   //�ڹٶ� ���� ���
    '0' : JavaraOpenCommand := False;
    '1' : JavaraOpenCommand := True;
  else
    JavaraOpenCommand := False;
  end;
  case stBit[6] of   //ȭ��
    '0' : FireServerCommand := False;
    '1' : FireServerCommand := True;
  else
    FireServerCommand := False;
  end;

end;

procedure TDevice.FireOutbreak(aQuick:Boolean = False);
var
  stSendData : string;
begin
  if FireServerCommand then
    SendPacket('R','SM2900Fire',aQuick)
  else
  begin
    stSendData := 'SM26' +
                '99' + //aTargetID : 99 - All
                'c' +
                'C'+                                     //  Msg Code
                //InttoStr(CommNode.Send_MsgNo)+          // Message Count
                '0' +
                '1' + //aDoorNo+                                //  ��⳻ Door No
                #$30+                                   //  RecordCount(����)
                #$32+                                   //  RecordCount(��庯�� #$32)
                '1';                                    //aMode;                                  //  '0':� ,'1':����
    SendPacket('R',stSendData,aQuick);
    // Door2 All Open Mode Change
    stSendData := 'SM26' +
                '99' + //aTargetID : 99 - All
                'c' +
                'C'+                                     //  Msg Code
                //InttoStr(CommNode.Send_MsgNo)+          // Message Count
                '0' +
                '2' + //aDoorNo+                                //  ��⳻ Door No
                #$30+                                   //  RecordCount(����)
                #$32+                                   //  RecordCount(��庯�� #$32)
                '1';                                    //aMode;                                  //  '0':� ,'1':����
    SendPacket('R',stSendData,aQuick);
  end;

end;

procedure TDevice.CheckDeviceVersion(aQuick: Boolean);
begin
  SendPacket('R','VR00',aQuick);
end;

procedure TDevice.MemoryClear;
begin
  SendPacket('I','ac00Register Clear',False);
  //SendPacket(aDeviceID,'I','ac00Register Clear',Sent_Ver);
end;

procedure TCommNode.SetFdType(const Value: TDevicetype);
begin
  FFDtype := Value;
end;

procedure TDevice.AlaramEventClear;
var
  i : integer;
begin
  FAlarmEventState := aeNormal;
  if Assigned(FOnDeviceAlarmEvent) then
  begin
    for i := 0 to con_nFIXMAXAREANO do
    begin
      OnDeviceAlarmEvent(self,NodeNo,ECUID,i,aeNormal);
    end;
  end;
end;

procedure TDevice.SetAlarmEventState(aArmAreaNo:integer; Value: TAlarmEventState);
begin
  if FAlarmEventState = value then Exit;
  if FAlarmEventState = aeAlarmEvent then Exit;
  if aeAlarmEvent = aeNormalEvent then
  begin
    if Value = aeNormal then Exit;
  end;
  FAlarmEventState := Value;

  if Assigned(FOnDeviceAlarmEvent) then
  begin
    OnDeviceAlarmEvent(self,NodeNo,ECUID,aArmAreaNo,Value);
  end;
end;

procedure TDevice.SetDeviceCode(const Value: string);
begin
  if FDeviceCode <> Value then
  begin
    if Assigned(FOnDeviceCodeChange) then
    begin
      OnDeviceCodeChange(self,NodeNo,ECUID,Value);
    end;
  end;
  FDeviceCode := Value;

  if UpperCase(Value) = 'ACC-104' then
  begin
    TCommNode(FCommNode).DeviceCode := Value;
  end; 

  if UpperCase(Value) = 'ACC-104' then   //KTT-811
  begin
    DeviceType := '1';
    ScheduleSkill := True;
  end else if UpperCase(Value) = 'ACC-510' then   //KTT-812
  begin
    DeviceType := '2';
    ScheduleSkill := True;
  end else if UpperCase(Value) = 'ACC-503' then   //ICU100
  begin
    DeviceType := '3';
    ScheduleSkill := False;
  end else if UpperCase(Value) = 'ACC-505' then   //ICU200
  begin
    DeviceType := '4';
    ScheduleSkill := False;
  end else if UpperCase(Value) = 'MCU-110' then   //MCU300
  begin
    DeviceType := '1';
    ScheduleSkill := True;
  end else if UpperCase(Value) = 'ECU-110' then   //MCU300
  begin
    DeviceType := '1';
    ScheduleSkill := True;
  end else if UpperCase(Value) = 'ICU-300' then   //ICU300
  begin
    DeviceType := '4';
    ScheduleSkill := True;
  end;
end;

procedure TDevice.ArmAreaNameInitialize;
var
  i : integer;
begin
  for i := LOW(ArmAreaName) to HIGH(ArmAreaName) do
  begin
    ArmAreaName[i] := '';
  end;
end;

procedure TDevice.ArmAreaStateInitialize;
var
  i : integer;
begin
  for i := LOW(ArmAreaState) to HIGH(ArmAreaState) do
  begin
    ArmAreaState[i] := cmNothing;
  end;
end;

procedure TDevice.ArmAreaUseInitialize;
var
  i : integer;
begin
  for i := LOW(ArmAreaUse) to HIGH(ArmAreaUse) do
  begin
    ArmAreaUse[i] := False;
  end;
end;

procedure TDevice.SetArmAreaName(aArmArea: integer; aName: string);
begin
  if aArmArea > HIGH(ArmAreaName) then Exit;
  if ArmAreaName[aArmArea] = aName then Exit;
  ArmAreaName[aArmArea] := aName ;
end;

procedure TDevice.SetArmAreaState(aArmArea: integer;
  aArmAreaState: TWatchMode);
begin
  if aArmArea > HIGH(ArmAreaState) then Exit;
  if ArmAreaState[aArmArea] = aArmAreaState then Exit;
  if aArmArea = 0 then WatchMode := aArmAreaState; //������� �̻���
  ArmAreaState[aArmArea] := aArmAreaState ;
  if Assigned(FOnWatchModeChange) then
  begin
    OnWatchModeChange(self,NodeNo,ECUID,inttostr(aArmArea),aArmAreaState);
  end;
end;

procedure TDevice.SetArmAreaUse(aArmArea: integer; aUsed: Boolean);
begin
  if aArmArea > HIGH(ArmAreaUse) then Exit;
  if ArmAreaUse[aArmArea] = aUsed then Exit;
  ArmAreaUse[aArmArea] := aUsed ;
end;

function TDevice.GetArmAreaUse(aArmArea: integer): Boolean;
begin
  result := ArmAreaUse[aArmArea];
end;

function TDevice.GetArmAreaName(aArmArea: integer): string;
begin
  result := ArmAreaName[aArmArea];
end;

function TDevice.GetArmAreaState(aArmArea: integer): TWatchMode;
begin
  result := ArmAreaState[aArmArea];
end;

procedure TDevice.ChangeArmAreaMode(aArmAreaNo: integer;
  aMode: TWatchMode);
begin
  case aMode of
    cmArm      : SendPacket('R','MC' + FillZeroNumber(aArmAreaNo,2) + 'A',True); //�����
    cmDisarm   : SendPacket('R','MC' + FillZeroNumber(aArmAreaNo,2) + 'D',True); //�������
    cmPatrol   : SendPacket('R','MC' + FillZeroNumber(aArmAreaNo,2) + 'P',True); //��ȸ���
    cmInit     : SendPacket('R','MC' + FillZeroNumber(aArmAreaNo,2) + 'I',True); //��ϸ��
    cmTest     : SendPacket('R','MC' + FillZeroNumber(aArmAreaNo,2) + 'T',True); //TEST���
  end;
end;

procedure TDevice.CheckArmAreaMode(aArmAreaNo: integer; aQuick: Boolean);
var
  stArmArea : string;
  stTargetEcuID : string;
  i : integer;
  stData : string;
begin
  stArmArea := '';
  if aArmAreaNo > 0 then
  begin
    for i := 0 to con_nFIXMAXAREANO do
    begin
      stArmArea := stArmArea + '0';
    end;
    stArmArea[aArmAreaNo + 1] := '1';
  end else
  begin
    for i := 0 to con_nFIXMAXAREANO do
    begin
      stArmArea := stArmArea + '1';
    end;
  end;

  if aArmAreaNo = 0 then
  begin
    if ECUID = '00' then stData := 'RD00'
    else stData := 'RD00' + ECUID;
    stTargetEcuID := '00';
  end else
  begin
    stTargetEcuID := ECUID;
    stData := 'rd01' + stArmArea;
  end;

  CommNode.SendPacket(stTargetEcuID,'R',stData,aQuick);
end;

procedure TDevice.DoorUseInitialize;
var
  i : integer;
begin
  for i := LOW(DoorUse) to HIGH(DoorUse) do
  begin
    DoorUse[i] := False;
  end;
end;

procedure TDevice.DoorNameInitialize;
var
  i : integer;
begin
  for i := LOW(DoorName) to HIGH(DoorName) do
  begin
    DoorName[i] := '';
  end;
end;

procedure TDevice.DoorManageModeInitialize;
var
  i : integer;
begin
  for i := LOW(DoorManageMode) to HIGH(DoorManageMode) do
  begin
    DoorManageMode[i] := dmNothing;
  end;

end;

procedure TDevice.DoorPNModeInitialize;
var
  i : integer;
begin
  for i := LOW(DoorPNMode) to HIGH(DoorPNMode) do
  begin
    DoorPNMode[i] := pnNothing;
  end;
end;

procedure TDevice.DoorStateInitialize;
var
  i : integer;
begin
  for i := LOW(DoorState) to HIGH(DoorState) do
  begin
    DoorState[i] := dsNothing;
  end;

end;

procedure TDevice.DoorLockModeInitialize;
var
  i : integer;
begin
  for i := LOW(DoorLockMode) to HIGH(DoorLockMode) do
  begin
    DoorLockMode[i] := lsNothing;
  end;
end;

procedure TDevice.DoorFireInitialize;
var
  i : integer;
begin
  for i := LOW(DoorFire) to HIGH(DoorFire) do
  begin
    DoorFire[i] := False;
    if Assigned(FOnDoorModeChange) then
    begin
      OnDoorModeChange(self,NodeNo,ECUID,inttostr(i),GetDoorManageMode(i),GetDoorPNMode(i),GetDoorState(i),GetDoorLockMode(i));
    end;
  end;
end;

procedure TDevice.SetDoorUse(aDoorNo: integer; aUsed: Boolean);
begin
  if aDoorNo > HIGH(DoorUse) then Exit;
  if DoorUse[aDoorNo] = aUsed then Exit;
  DoorUse[aDoorNo] := aUsed ;
end;

procedure TDevice.SetDoorName(aDoorNo: integer; aName: string);
begin
  if aDoorNo > HIGH(DoorName) then Exit;
  if DoorName[aDoorNo] = aName then Exit;
  DoorName[aDoorNo] := aName ;
end;

function TDevice.GetDoorUse(aDoorNo: integer): Boolean;
begin
  if aDoorNo > HIGH(DoorUse) then Exit;
  result := DoorUse[aDoorNo];
end;

function TDevice.GetDoorName(aDoorNo: integer): string;
begin
  if aDoorNo > HIGH(DoorName) then Exit;
  result := DoorName[aDoorNo];
end;

function TDevice.GetDoorManageMode(aDoorNo: integer): TDoorManageMode;
begin
  if aDoorNo > HIGH(DoorManageMode) then Exit;
  result := DoorManageMode[aDoorNo];
end;

function TDevice.GetDoorPNMode(aDoorNo: integer): TDoorPNMode;
begin
  if aDoorNo > HIGH(DoorPNMode) then Exit;
  result := DoorPNMode[aDoorNo];
end;

function TDevice.GetDoorState(aDoorNo: integer): TDoorState;
begin
  if aDoorNo > HIGH(DoorState) then Exit;
  result := DoorState[aDoorNo];
end;

function TDevice.GetDoorLockMode(aDoorNo: integer): TDoorLockState;
begin
  if aDoorNo > HIGH(DoorLockMode) then Exit;
  result := DoorLockMode[aDoorNo];
end;

function TDevice.GetDoorFire(aDoorNo: integer): Boolean;
begin
  if aDoorNo > HIGH(DoorFire) then Exit;
  result := DoorFire[aDoorNo];
end;

procedure TDevice.SetDoorFire(aNodeNO:integer;aECUID:string;aDoorNo: integer; aValue: Boolean);
begin
  if aDoorNo > HIGH(DoorFire) then Exit;
  if DoorFire[aDoorNo] = aValue then Exit;
  DoorFire[aDoorNo] := aValue ;
  if aValue then     //ȭ��ÿ��� �ش� ���Թ� ȭ�� ��ȣ �߻�
  begin
    if Assigned(FOnFireStateChange) then
    begin
      OnFireStateChange(Self,aNodeNO,aECUID,inttostr(aDoorNo),aValue);
    end;
  end else //ȭ�� �����ÿ��� ���� ����� ���°� �̺�Ʈ �߻� ī����/����
  begin
    if Assigned(FOnDoorModeChange) then
    begin
      OnDoorModeChange(self,aNodeNO,aECUID,inttostr(aDoorNo),GetDoorManageMode(aDoorNo),GetDoorPNMode(aDoorNo),GetDoorState(aDoorNo),GetDoorLockMode(aDoorNo));
    end;
  end;
end;

procedure TDevice.SetDoorLockMode(aDoorNo: integer;
  aValue: TDoorLockState);
begin
  if aDoorNo > HIGH(DoorLockMode) then Exit;
  if DoorLockMode[aDoorNo] = aValue then Exit;
  DoorLockMode[aDoorNo] := aValue ;
end;

procedure TDevice.SetDoorManageMode(aDoorNo: integer;
  aValue: TDoorManageMode);
begin
  if aDoorNo > HIGH(DoorManageMode) then Exit;
  if DoorManageMode[aDoorNo] = aValue then Exit;
  DoorManageMode[aDoorNo] := aValue ;
  if Assigned(FOnDoorManageModeChange) then
  begin
    OnDoorManageModeChange(self,NodeNo,ECUID,inttostr(aDoorNo),aValue);
  end;
end;

procedure TDevice.SetDoorPNMode(aDoorNo: integer; aValue: TDoorPNMode);
begin
  if aDoorNo > HIGH(DoorPNMode) then Exit;
  if DoorPNMode[aDoorNo] = aValue then Exit;
  DoorPNMode[aDoorNo] := aValue ;
  if Assigned(FOnDoorPNModeChange) then
  begin
    OnDoorPNModeChange(self,NodeNo,ECUID,FillZeroNumber(aDoorNo,2),aValue);
  end;
end;

procedure TDevice.SetDoorState(aDoorNo: integer; aValue: TDoorState);
begin
  if aDoorNo > HIGH(DoorState) then Exit;
  if DoorState[aDoorNo] = aValue then Exit;
  DoorState[aDoorNo] := aValue ;
  if Assigned(FOnDoorStateChange) then
  begin
    OnDoorStateChange(self,NodeNo,ECUID,FillZeroNumber(aDoorNo,2),aValue);
  end;
end;

procedure TCommNode.NodeFireInitialize;
var
  i : integer;
begin
  for i := 0 to Devices.Count - 1 do
  begin
    TDevice(Devices.Objects[i]).DoorFireInitialize;
  end;

end;

procedure TDevice.ErrorDataProcess(aNodeNo: integer; aData: string);
var
  aCode: String;
  aGubun : string;
  stEcuID : string;
  nLength : integer;
begin
  aCode:= Copy(aData,19,2);
  aGubun := Copy(aData,21,2);
  if aCode = 'rd' then
  begin
    if aGubun = '01' then
    begin
      if Pos('Area 1 not used',aData) > 0 then ArmAreaUse[1] := False
      else if Pos('Area 2 not used',aData) > 0 then ArmAreaUse[2] := False
      else if Pos('Area 3 not used',aData) > 0 then ArmAreaUse[3] := False
      else if Pos('Area 4 not used',aData) > 0 then ArmAreaUse[4] := False
      else if Pos('Area 5 not used',aData) > 0 then ArmAreaUse[5] := False
      else if Pos('Area 6 not used',aData) > 0 then ArmAreaUse[6] := False
      else if Pos('Area 7 not used',aData) > 0 then ArmAreaUse[7] := False
      else if Pos('Area 8 not used',aData) > 0 then ArmAreaUse[8] := False;
    end;
  end;
end;

procedure TDevice.SetDeviceType(const Value: String);
begin
  if FDeviceType = Value then Exit;
  FDeviceType := Value;
  if Assigned(FOnDeviceTypeChange) then
  begin
    OnDeviceTypeChange(self,NodeNo,ECUID,Value);
  end;

end;

procedure TDevice.SearchDevicecode;
begin
  SendPacket('R','VR01');
end;


end.
