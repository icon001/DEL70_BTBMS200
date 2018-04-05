program BTBMS200;

{%File 'ZDaemon\�������.txt'}

uses
  Forms,
  WinProcs,
  iniFiles,
  SysUtils,
  uServerDaemon in 'ZDaemon\����Ʈ����\uServerDaemon.pas' {fmMain},
  uLogin in 'ZDaemon\��й�ȣüũ\uLogin.pas' {fmLogin},
  uLomosUtil in '..\Lib\uLomosUtil.pas',
  uMSDEsql in '..\Lib\uMSDEsql.pas',
  DIMime in '..\Lib\DIMime.pas',
  uPwChange in 'ZDaemon\��й�ȣ����\uPwChange.pas' {fmPwChange},
  uDevicemodule in '..\Lib\uDevicemodule.pas' {ComModule: TDataModule},
  uCurrentState in 'ZDaemon\�ǽð��ۼ�����Ȳ��ȸ\uCurrentState.pas' {fmCurrentState},
  uSubForm in '..\Lib\uSubForm.pas' {fmASubForm},
  uAttendConfig in 'ZDaemon\ȯ�漳��\uAttendConfig.pas' {fmAttendConfig},
  uPositionSet in 'ZDaemon\�����ġ���\uPositionSet.pas' {fmPositionSet},
  DoorSchReg in 'ZDaemon\�����ٵ��\DoorSchReg.pas' {DoorscheduleRegForm},
  uSchadule in 'ZDaemon\�����ٵ��\uSchadule.pas' {fmSchadule},
  udmAdoQuery in '..\Lib\udmAdoQuery.pas' {dmAdoQuery: TDataModule},
  uDeviceConnectState in 'ZDaemon\���������Ȳ\uDeviceConnectState.pas' {fmDeviceConnectState},
  uNetConfig in 'ZDaemon\���ȯ�漳��\uNetConfig.pas' {fmNetConfig},
  uDoorAdmin in 'ZDaemon\���Թ�����\uDoorAdmin.pas' {fmDoorAdmin},
  uArmAreaAdmin in 'ZDaemon\fmArmAreaAdmin\uArmAreaAdmin.pas' {fmArmAreaAdmin},
  uAlarmZoneAdmin in 'ZDaemon\���������\uAlarmZoneAdmin.pas' {fmAlarmZoneAdmin},
  uFoodAdmin in 'ZDaemon\�ļ�������\uFoodAdmin.pas' {fmFoodAdmin},
  uCardReaderServer in 'ZDaemon\fmCardReaderServer\uCardReaderServer.pas' {fmCardReaderServer},
  uCardReaderServerMonitor in 'ZDaemon\fmCardReaderServerMonitor\uCardReaderServerMonitor.pas' {fmCardReaderServerMonitor},
  uPerRelayConfig in 'ZDaemon\ȯ�漳��\uPerRelayConfig.pas' {fmperRelayConfig},
  uRelaysentence in 'ZDaemon\ȯ�漳��\uRelaysentence.pas' {fmRelaysentence},
  uInOutReader in 'ZDaemon\fmInOutReader\uInOutReader.pas' {fmInOutReader},
  uDeviceSetting in 'ZDaemon\fmDeviceSetting\uDeviceSetting.pas' {fmDeviceSetting},
  uAlaramReader in 'ZDaemon\fmAlaramReader\uAlaramReader.pas' {fmAlaramReader},
  uInOutGroup in 'ZDaemon\fmInOutGroup\uInOutGroup.pas' {fmInOutGroup},
  uInOutGroupName in 'ZDaemon\fmInOutGroupName\uInOutGroupName.pas' {fmInOutGroupName},
  uMoPacketList in '..\Lib\Socket\uMoPacketList.pas',
  uClientInfo in '..\Lib\Socket\uClientInfo.pas',
  uMoPacketItem in '..\Lib\Socket\uMoPacketItem.pas',
  uClientComThread in '..\Lib\Socket\uClientComThread.pas',
  uClientCommunication in '..\Lib\Socket\uClientCommunication.pas',
  uDataBase in '..\Lib\DataBase\uDataBase.pas',
  FileInfo in '..\Lib\FileInfo.pas',
  uMcusocket in '..\Lib\DeviceServer\uMcusocket.pas',
  uReaderSetting in 'ZDaemon\fmReaderSetting\uReaderSetting.pas' {fmReaderSetting},
  uPersonRelay in 'ZDaemon\PersonRelayModule\uPersonRelay.pas' {dmPersonRelay: TDataModule},
  uLocateCode in 'ZDaemon\fmLocateCode\uLocateCode.pas' {fmLocateCode},
  uDeviceCode in 'ZDaemon\fmDeviceCode\uDeviceCode.pas' {fmDeviceCode},
  uEcuCount in 'ZDaemon\fmDeviceCode\uEcuCount.pas' {fmEcuCount},
  systeminfos in '..\Lib\systeminfos.pas',
  UCommonModule in '..\Lib\UCommonModule.pas' {CommonModule: TDataModule},
  uSequenceChange in 'ZDaemon\fmSequenceChange\uSequenceChange.pas' {fmSequenceChange},
  uMonitoring in 'ZDaemon\fmMointoring\uMonitoring.pas' {fmMonitoring},
  uDeviceMap in 'ZDaemon\fmDeviceMap\uDeviceMap.pas' {fmDeviceMap},
  uDeviceInfo in 'ZDaemon\fmDeviceInfo\uDeviceInfo.pas' {fmDeviceInfo},
  uZonePosition in 'ZDaemon\fmZonePosition\uZonePosition.pas' {fmZonePosition},
  uAlarmHistory in 'ZDaemon\fmAlarmHistory\uAlarmHistory.pas' {fmAlarmHistory},
  uMonitoringCommonVariable in '..\Lib\Monitoring\uMonitoringCommonVariable.pas' {dmMonitoringCommonVariable: TDataModule},
  uCompanyCode in 'ZDaemon\fmCompanyCode\uCompanyCode.pas' {fmCompanyCode},
  uCompanyCodeLoad in '..\Lib\uCompanyCodeLoad.pas',
  uAccessStateCode1 in 'ZDaemon\fmAccessStateCode\uAccessStateCode1.pas' {fmAccessStateCode},
  uAlarmStateCode in 'ZDaemon\fmAlarmStateCode\uAlarmStateCode.pas' {fmAlarmStateCode},
  uLargeAccessReport in 'ZDaemon\fmLargeAccessReport\uLargeAccessReport.pas' {fmLargeAccessReport},
  uNewAlarmReport in 'ZDaemon\fmNewAlarmReport\uNewAlarmReport.pas' {fmNewAlarmReport},
  uFTPDownLoad in 'ZDaemon\fmFTPDownLoad\uFTPDownLoad.pas' {fmFTPDownLoad},
  uEmploeeSearch in 'ZDaemon\fmEmploeeSearch\uEmploeeSearch.pas' {fmEmploeeSearch},
  uEmploy in 'ZDaemon\fmEmploy\uEmploy.pas' {fmEmploy},
  uZipCode in 'ZDaemon\fmZipCode\uZipCode.pas' {fmZipCode},
  uCardGroup in 'ZDaemon\fmEmploy\uCardGroup.pas' {fmCardGroup},
  uGroupName in 'ZDaemon\fmEmploy\uGroupName.pas' {fmGroupName},
  uSplash in 'ZDaemon\fmSplash\uSplash.pas' {fmSplash},
  uPerAtReport in 'ZDaemon\fmPerAtReport\uPerAtReport.pas' {fmPerAtReport},
  uDataModule1 in '..\Lib\uDataModule1.pas' {DataModule1: TDataModule},
  uRemoteSupport in 'ZDaemon\fmRemoteSupport\uRemoteSupport.pas' {fmRemoteSupport},
  uDataBaseConfig in '..\Lib\DBConnect\uDataBaseConfig.pas' {fmDataBaseConfig},
  uMDICardAdmin in 'ZDaemon\fmMDICardAdmin\uMDICardAdmin.pas' {fmMDICardAdmin},
  uMDIDeviceGrade in 'ZDaemon\fmMDIDeviceGrade\uMDIDeviceGrade.pas' {fmMDIDeviceGrade},
  uPostGreSql in '..\Lib\Query\uPostGreSql.pas' {PostGreSql: TDataModule},
  uCommonSql in '..\Lib\Query\uCommonSql.pas' {CommonSql: TDataModule},
  uFireBird in '..\Lib\Query\uFireBird.pas' {FireBird: TDataModule},
  uMDBSql in '..\Lib\Query\uMDBSql.pas' {MDBSql: TDataModule},
  uMssql in '..\Lib\Query\uMssql.pas' {Mssql: TDataModule},
  uAlaramDeviceAdmin in 'ZDaemon\���������\uAlaramDeviceAdmin.pas' {fmAlaramDeviceAdmin},
  uBatchEmployee in 'ZMOS\fmBatchEmployee\uBatchEmployee.pas' {fmBatchEmployee},
  u_c_log in '..\..\[LIB]\WinSocket\Winsockclasses\u_c_log.pas',
  u_c_basic_object in '..\..\[LIB]\WinSocket\Winsockclasses\u_c_basic_object.pas',
  u_c_byte_buffer in '..\..\[LIB]\WinSocket\Winsockclasses\u_c_byte_buffer.pas',
  u_c_display in '..\..\[LIB]\WinSocket\Winsockclasses\u_c_display.pas',
  u_winsock in '..\..\[LIB]\WinSocket\Winsocket\u_winsock.pas',
  u_types_constants in '..\..\[LIB]\WinSocket\Winsockunits\u_types_constants.pas',
  u_characters in '..\..\[LIB]\WinSocket\Winsockunits\u_characters.pas',
  u_dir in '..\..\[LIB]\WinSocket\Winsockunits\u_dir.pas',
  u_display_hex_2 in '..\..\[LIB]\WinSocket\Winsockunits\u_display_hex_2.pas',
  u_file in '..\..\[LIB]\WinSocket\Winsockunits\u_file.pas',
  u_strings in '..\..\[LIB]\WinSocket\Winsockunits\u_strings.pas',
  uZTBMSFunction in '..\..\[LIB]\SHFinger\uZTBMSFunction.pas',
  FINGERAPI22 in '..\..\[LIB]\SHFinger\FINGERAPI22.PAS',
  uSHComModule in '..\..\[LIB]\SHFinger\uSHComModule.pas' {dmSHComModule: TDataModule},
  uSyFpReaderFunction in '..\..\[LIB]\SHFinger\uSyFpReaderFunction.pas',
  uSHFingerRegistDevice in '..\..\[LIB]\SHFinger\fmSHFingerRegistDevice\uSHFingerRegistDevice.pas' {fmSHFingerRegistDevice},
  uFingerRegistDevice in '..\..\[LIB]\SHFinger\fmFingerRegistDevice\uFingerRegistDevice.pas' {fmFingerRegistDevice},
  uDir in '..\Lib\uDir.pas',
  uDBFunction in '..\Lib\DataBase\uDBFunction.pas' {dmDBFunction: TDataModule};

{$R *.res}
{$R manifest.RES}

var
hMutex : LongInt;
ini_fun : TiniFile;
DaemonGubun:string;
begin
  ini_fun := TiniFile.Create(ExtractFileDir(Application.ExeName) + '\zmos.INI');
  DaemonGubun := ini_fun.ReadString('KTT812','GUBUN','0');
  ini_fun.free;
  hMutex := OpenMutex( MUTEX_ALL_ACCESS, False, pchar('KTT812'+DaemonGubun) );
  If hMutex <> 0 Then
  Begin
  CloseHandle( hMutex );
  Exit;
  End;
  hMutex := CreateMutex( Nil, False, pchar('KTT812'+DaemonGubun) );
  Application.Initialize;

  //fmSplash := TfmSplash.Create(Application);
  //fmSplash.Show;
  //fmSplash.Refresh;
  Application.Title := 'BTBMS-200';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmAdoQuery, dmAdoQuery);
  Application.CreateForm(TComModule, ComModule);
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmDBFunction, dmDBFunction);
  //fmSplash.Hide;
  //fmSplash.Free;
  Application.Run;
end.
{
begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TComModule, ComModule);
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.   }