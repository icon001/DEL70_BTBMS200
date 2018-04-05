program ZMOS;

{%File '..\수정목록.txt'}

uses
  Forms,
  uMain in 'uMain.pas' {fmMain},
  uSubForm in '..\..\..\Lib\uSubForm.pas' {fmASubForm},
  cDateTime in '..\..\..\Lib\cDateTime.pas',
  DIMime in '..\..\..\Lib\DIMime.pas',
  DIMimeStreams in '..\..\..\Lib\DIMimeStreams.pas',
  systeminfos in '..\..\..\Lib\systeminfos.pas',
  uDataBaseUtil in '..\..\..\Lib\uDataBaseUtil.pas' {DataBaseUtil: TDataModule},
  uDataModule1 in '..\..\..\Lib\uDataModule1.pas' {DataModule1: TDataModule},
  uExcelUtil in '..\..\..\Lib\uExcelUtil.pas',
  uLomosUtil in '..\..\..\Lib\uLomosUtil.pas',
  uMSDEsql in '..\..\..\Lib\uMSDEsql.pas',
  uMsg in '..\..\..\Lib\uMsg.pas',
  uDataBaseConfig in '..\..\..\Lib\DBConnect\uDataBaseConfig.pas' {fmDataBaseConfig},
  uLogin in '..\..\..\Lib\Login\uLogin.pas' {fmLogin},
  uCompanyCode in '..\fmCompanyCode\uCompanyCode.pas' {fmCompanyCode},
  uGradeCode in '..\fmGradeCode\uGradeCode.pas' {fmGradeCode},
  uGradeProgram in '..\fmGradeProgram\uGradeProgram.pas' {fmGradeProgram},
  uAdmin in '..\fmAdmin\uAdmin.pas' {fmAdmin},
  uAdminDoorGrade in '..\fmAdminDoorGrade\uAdminDoorGrade.pas' {fmAdminDoorGrade},
  uEmType in '..\fmEmType\uEmType.pas' {fmEmType},
  uAlarmStateCode in '..\fmAlarmStateCode\uAlarmStateCode.pas' {fmAlarmStateCode},
  uAlarmManageCode in '..\fmAlarmManageCode\uAlarmManageCode.pas' {fmAlarmManageCode},
  uAlarmDeviceTypeCode in '..\fmAlarmDeviceTypeCode\uAlarmDeviceTypeCode.pas' {fmAlarmDeviceTypeCode},
  uLocateCode in '..\fmLocateCode\uLocateCode.pas' {fmLocateCode},
  uDupCardEmploy in '..\fmDupCardEmploy\uDupCardEmploy.pas' {fmDupCardEmploy},
  uMDICardAdmin in '..\fmMDICardAdmin\uMDICardAdmin.pas' {fmMDICardAdmin},
  uZipCode in '..\fmZipCode\uZipCode.pas' {fmZipCode},
  uDeviceGradeSearch in '..\fmDeviceGradeSearch\uDeviceGradeSearch.pas' {fmDeviceGradeSearch},
  uProgramConfig in '..\fmProgramConfig\uProgramConfig.pas' {fmProgramConfig},
  uPersonStateReport in '..\fmPersonStateReport\uPersonStateReport.pas' {fmPersonStateReport},
  uNewAlarmReport in '..\fmNewAlarmReport\uNewAlarmReport.pas' {fmNewAlarmReport},
  uComMonitoring in '..\fmComMonitoring\uComMonitoring.pas' {fmComMonitoring},
  uHoliday in '..\fmHoliday\uHoliday.pas' {fmHoliday},
  uImageTest in '..\TEST\uImageTest.pas' {fmImageTest},
  uLocationMap in '..\fmLocationMap\uLocationMap.pas' {fmLocationMap},
  uDeviceMap in '..\fmDeviceMap\uDeviceMap.pas' {fmDeviceMap},
  uDeviceInfo in '..\fmDeviceInfo\uDeviceInfo.pas' {fmDeviceInfo},
  uMDIDeviceGrade in '..\fmMDIDeviceGrade\uMDIDeviceGrade.pas' {fmMDIDeviceGrade},
  uPromiseGrade in '..\fmPromiseGrade\uPromiseGrade.pas' {fmPromiseGrade},
  uPromiseGradeAdmin in '..\fmPromiseGradeAdmin\uPromiseGradeAdmin.pas' {fmPromiseGradeAdmin},
  uZonePosition in '..\fmZonePosition\uZonePosition.pas' {fmZonePosition},
  uDoorAdminReport in '..\fmDoorAdminReport\uDoorAdminReport.pas' {fmDoorAdminReport},
  uAlarmAdminReport in '..\fmAlarmAdminReport\uAlarmAdminReport.pas' {fmAlarmAdminReport},
  uLOMOSEmployee in '..\fmLOMOSEmployee\uLOMOSEmployee.pas' {fmLOMOSEmployee},
  uSensorSchedule in '..\fmSensorSchedule\uSensorSchedule.pas' {fmSensorSchedule},
  uCompanyGrade in '..\fmAdmin\uCompanyGrade.pas' {fmCompanyGrade},
  uCompanyCodeLoad in '..\..\..\Lib\uCompanyCodeLoad.pas',
  uCommonSql in '..\..\..\Lib\Query\uCommonSql.pas' {CommonSql: TDataModule},
  uMDBSql in '..\..\..\Lib\Query\uMDBSql.pas' {MDBSql: TDataModule},
  uMssql in '..\..\..\Lib\Query\uMssql.pas' {Mssql: TDataModule},
  uPostGreSql in '..\..\..\Lib\Query\uPostGreSql.pas' {PostGreSql: TDataModule},
  uAlarmSet in '..\fmMointoring\fmAlarmSet\uAlarmSet.pas',
  uRelayEmploy in '..\fmRelayEmploy\uRelayEmploy.pas' {fmRelayEmploy},
  uEmploy in '..\fmEmploy\uEmploy.pas' {fmEmploy},
  uReaderState in '..\fmReaderState\uReaderState.pas' {fmReaderState},
  uClientConfig in '..\fmClientConfig\uClientConfig.pas' {fmClientConfig},
  udmAdoRelay in '..\..\..\Lib\udmAdoRelay.pas' {dmAdoRelay: TDataModule},
  uInOutReport in '..\fmInOutReport\uInOutReport.pas' {fmInOutReport},
  uAlarmHistory in '..\fmAlarmHistory\uAlarmHistory.pas' {fmAlarmHistory},
  uKTCardCreate in '..\fmKTCardCreate\uKTCardCreate.pas' {fmKTCardCreate},
  uAccessStateCode1 in '..\fmAccessStateCode\uAccessStateCode1.pas' {fmAccessStateCode},
  uGroupMonitoring in '..\fmGroupMonitoring\uGroupMonitoring.pas' {fmGroupMonitoring},
  uGroupCommonLib in '..\..\..\Lib\GroupMonitor\uGroupCommonLib.pas',
  uAdminGrade in '..\fmAdminGrade\uAdminGrade.pas' {fmAdminGrade},
  uDeviceCode in '..\fmDeviceCode\uDeviceCode.pas' {fmDeviceCode},
  uPositionSet in '..\기기위치등록\uPositionSet.pas' {fmPositionSet},
  uDoorAdmin in '..\출입문관리\uDoorAdmin.pas' {fmDoorAdmin},
  uAlaramDeviceAdmin in '..\방범기기관리\uAlaramDeviceAdmin.pas' {fmAlaramDeviceAdmin},
  uAlarmZoneAdmin in '..\방범존관리\uAlarmZoneAdmin.pas' {fmAlarmZoneAdmin},
  uFoodAdmin in '..\식수기기관리\uFoodAdmin.pas' {fmFoodAdmin},
  uEcuCount in '..\fmDeviceCode\uEcuCount.pas' {fmEcuCount},
  uServerConnectModule in '..\ServerConnectModule\uServerConnectModule.pas' {dServerConnectModule: TDataModule},
  uMultiMonitoring in '..\fmMultiMonitoring\uMultiMonitoring.pas' {fmMultiMonitoring},
  uDoorTypeMonitoring in '..\fmDoorTypeMonitoring\uDoorTypeMonitoring.pas' {fmDoorTypeMonitoring},
  DoorSchReg in '..\스케줄등록\DoorSchReg.pas' {DoorscheduleRegForm},
  uDoorGubunCode in '..\fmDoorGubunCode\uDoorGubunCode.pas' {fmDoorGubunCode},
  uChangeAccessReport in '..\fmChangeAccessReport\uChangeAccessReport.pas' {fmChangeAccessReport},
  uEmployeeBranch in '..\fmEmployeeBranch\uEmployeeBranch.pas' {fmEmployeeBranch},
  uMonitoring in '..\fmMointoring\uMonitoring.pas' {fmMonitoring},
  uAccessTypeMonitoring in '..\fmAccessTypeMonitoring\uAccessTypeMonitoring.pas' {fmAccessTypeMonitoring},
  uKHUEmpInitialize in '..\fmKHUEmpInitialize\uKHUEmpInitialize.pas' {fmKHUEmpInitialize},
  uKHUEmployee in '..\fmKHUEmployee\uKHUEmployee.pas' {fmKHUEmployee},
  uBatchEmployee in '..\fmBatchEmployee\uBatchEmployee.pas' {fmBatchEmployee},
  uTestCardCreate in '..\TEST\uTestCardCreate.pas' {fmTestCardCreate},
  uZTBMSFunction in '..\..\..\Lib\uZTBMSFunction.pas',
  uFireBird in '..\..\..\Lib\Query\uFireBird.pas' {FireBird: TDataModule},
  UCommonModule in '..\..\..\Lib\UCommonModule.pas' {CommonModule: TDataModule},
  uKTIssusNReg in '..\fmKTIssusNReg\uKTIssusNReg.pas' {fmKTIssusNReg},
  uDeviceVerInfo in '..\fmDeviceVerInfo\uDeviceVerInfo.pas' {fmDeviceVerInfo},
  uTimeAccessReport in '..\fmTimeAccessReport\uTimeAccessReport.pas' {fmTimeAccessReport},
  uNotCardReport in '..\fmNotCardReport\uNotCardReport.pas' {fmNotCardReport},
  uFTPDownLoad in '..\fmFTPDownLoad\uFTPDownLoad.pas' {fmFTPDownLoad},
  uAccessReport in '..\fmAccessReport\uAccessReport.pas' {fmAccessReport},
  uCardList in '..\fmCardList\uCardList.pas' {fmCardList},
  uCardValidDate in '..\fmCardValidDate\uCardValidDate.pas' {fmCardValidDate},
  uValidateSelect in '..\fmCardValidDate\uValidateSelect.pas' {fmValidateSelect},
  uLOMOSEmployeeBackup in '..\fmLOMOSEmployeeBackup\uLOMOSEmployeeBackup.pas' {fmLOMOSEmployeeBackup},
  uKTTypeMonitoring in '..\fmKTTypeMonitoring\uKTTypeMonitoring.pas' {fmKTTypeMonitoring},
  uDeviceState in '..\..\..\Lib\uDeviceState.pas' {dmDeviceState: TDataModule},
  uMonitoringCommonVariable in '..\..\..\Lib\Monitoring\uMonitoringCommonVariable.pas' {dmMonitoringCommonVariable: TDataModule},
  uMonitoringDataProcess in '..\..\..\Lib\Monitoring\uMonitoringDataProcess.pas',
  uAlarmConfirm in '..\fmAlarmTypeMonitoring\fmAlarmConfirm\uAlarmConfirm.pas' {fmAlarmConfirm},
  uAlarmTypeMonitoring in '..\fmAlarmTypeMonitoring\uAlarmTypeMonitoring.pas' {fmAlarmTypeMonitoring},
  uDeviceReport in '..\fmDeviceReport\uDeviceReport.pas' {fmDeviceListReport},
  uLargeAccessReport in '..\fmLargeAccessReport\uLargeAccessReport.pas' {fmLargeAccessReport};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '모니터링';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmAdoRelay, dmAdoRelay);
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmDeviceState, dmDeviceState);
  Application.CreateForm(TdmMonitoringCommonVariable, dmMonitoringCommonVariable);
  Application.Run;
end.
