unit uMoPacketItem;

interface
uses
  Classes,SysUtils,SyncObjs,IdTCPServer;

type
  TMoPacketItem = class
  private
  public
    procedure Execute ;virtual;abstract;
  end;

  TMoPacket1 = class(TMoPacketItem)
  private
    procedure CaseDeviceSTATECHECK;
  public
    AThread: TIdPeerThread;

    Command : string;
    DeviceID : string;
    Data : string;

    procedure Execute ;override;
  end;

implementation
uses
  uServerDaemon;
{ TMoPacket1 }

procedure TMoPacket1.CaseDeviceSTATECHECK;
begin
  if copy(DeviceID,1,5) = '00000' then  //전체 상태 조회
  begin
    fmMain.CaseNodeStateAllCheckSend(AThread);
    fmMain.CaseDeviceStateAllCheckSend(AThread);
    fmMain.CaseAlarmStateAllCheckSend(AThread);
    fmMain.CaseDoorStateAllCheckSend(AThread);
  end else
  begin
    fmMain.CheckDOORSTATE(copy(DeviceID,1,6));
  end;

end;


procedure TMoPacket1.Execute;
var
  bSendAll : Boolean;
begin
  if fmMain.mem_ComList.Visible then
  begin
    fmMain.mem_ComList.Lines.Add('[RX]['+AThread.Connection.Socket.Binding.PeerIP+']['+Command +']['+ DeviceID +']');
  end;
  if Command = 'STATECHECK' then
  begin
    CaseDeviceSTATECHECK;                    //상태체크
  end else if Command = 'DOOROPEN' then
  begin
    fmMain.DoorOpen(DeviceID);               //출입승인
  end else if Command = 'OPENMODE' then
  begin
    fmMain.DoorModeChange(DeviceID,'1');     //개방모드
  end else if Command = 'OPERATEMODE' then
  begin
    fmMain.DoorModeChange(DeviceID,'0');     //운영모드
  end else if Command = 'TIMESYNC' then
  begin
    fmMain.DeviceTimeSync(DeviceID);         //시간동기화
  end else if Command = 'REBOOT' then
  begin
    fmMain.DeviceReboot(DeviceID);           //기기리부팅
  end else if Command = 'ALARMSETTING' then
  begin
    fmMain.DeviceAlarmModeChange(DeviceID,'1');  //경계
  end else if Command = 'ALARMDISABLE' then
  begin
    fmMain.DeviceAlarmModeChange(DeviceID,'0');  //해제
  end else if Command = 'HOLIDAY' then
  begin
    fmMain.DeviceHoliday(DeviceID);          //공휴일다운로드
  end else if Command = 'CARDDOWNLOAD' then
  begin
    if Data[1] = 'Y' then bSendAll := True
    else bSendAll := False;
    fmMain.CardNoDownload(strtoint(copy(DeviceID,1,3)),copy(DeviceID,4,2),bSendAll); //카드다운로드
  end else if Command = 'DEAMONRESTART' then
  begin
    fmMain.Action_DaemonRestartExecute(self);
  end;

end;

end.
