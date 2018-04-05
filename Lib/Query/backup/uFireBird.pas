unit uFireBird;

interface

uses
  SysUtils, Classes;

type
  TFireBird = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    Function AlterTB_EMPHISCARDNO : string;
    Function AlterTB_EMPHISCARDTYPE : string;
    Function AlterTB_EMPHISSENDSTATUS2 :string;
    Function AlterTB_ALARMSTATUSCODEALARMSOUND : string;
    Function AlterTB_READERInOutCount :string;
    Function AlterTB_EMPHISINSERTTIME : string;
    Function AlterTB_EMPLOYEERelayGubun:string;
    Function AlterTB_COMPANYUPDATECHECK:string;
    Function AlterTB_POSIUPDATECHECK:string;
    Function AlterTB_ADMINBuildingGrade : string;
    Function AlterTB_ADMINDongCode : string;
    Function AlterTB_ADMINFloorCode : string;
    Function AlterTB_ADMINAreaCode : string;
    Function AlterTB_ACCESSDEVICEDaemonGubun : string;
    Function AlterTB_CARDDoorGrade : string;
    Function AlterTB_DOORGUBUN : string;
    Function AlterTB_EMPHISEMNAME : string;
    Function AlterTB_EMPHISHANDPHONE : string;
    Function AlterTB_EMPHISCOMPANYNAME : string;
    Function AlterTB_EMPHISJIJUMNAME : string;
    Function AlterTB_EMPHISDEPARTNAME : string;
    Function AlterTB_EMPHISPOSINAME : string;
    Function AlterTB_HOLIDAYState : string;
    Function AlterTB_ACCESSDEVICEHoSend : string;
    Function AlterTB_EMPLOYEEEmNameChange : string;
    Function AlterTB_ALARMSTATUSCODECodeChange :string;
    Function AlterTB_ALARMEVENTCodeChange : string;
    Function AlterTB_ALARMEVENTOperChange : string;
    Function AlterTB_ALARMEVENTSTATECODE2Add : string;
    Function AlterTB_KTCARDISSUEWriteAdd : string;
    Function AlterTB_KTCARDISSUEWriteDateAdd : string;
    Function AlterTB_ACCESSEVENTCOMPANYCODE :string;
    Function AlterTB_ACCESSEVENTEMCODE :string;
    Function AlterTB_ACCESSEVENTJIJUMCODE :string;
    Function AlterTB_ACCESSEVENTDEPARTCODE :string;
    Function AlterTB_ACCESSEVENTEMNAME :string;
    Function AlterTB_ALARMDEVICEUPDATE : string;
    Function AlterTB_ZONEDEVICEUPDATE : string;
    Function AlterTB_ACCESSDEVICEUPDATE : string;
    Function AlterTB_DOORUPDATE : string;
    Function AlterTB_FTPLISTRetryCount : string;
    Function AlterTB_DOOROPENMONI_Add : string;
    Function AlterTB_DOORSENDDOOR_Add : string;
    Function AlterTB_DOORALARMLONG_Add : string;
    Function AlterTB_DOORDSOPEN_Add : string;
    Function AlterTB_DOORREMOTEDOOR_Add : string;
    Function AlterTB_DOORControlTime_Change : string;
    Function AlterTB_ALARMEVENTAlarmSound_Add : string;
    Function AlterTB_ALARMEVENTAlarmGRADE_Add : string;
    Function AlterTB_ALARMEVENTCheckUser_Add : string;
    Function AlterTB_ACCESSEVENTEMCODEChange : string;

    Function CreateTB_FormName:string;
    Function CreateTB_ALARMSHOW:string;
    Function CreateTB_EMPHIS:string;
    Function CreateTB_SERVERCARDRELAY:string;
    Function CreateTB_SERVERCARDRELAYHIS:string;
    Function CreateTB_PERRELAYCONFIG:string;
    Function CreateTB_DEVICECARDNOACKINDEX : string;
    Function CreateTB_WORKLOG:string;
    Function CreateTB_INOUTCOUNT:string;
    Function CreateTB_INOUTGROUP:string;
    Function CreateTB_FTPLIST : string;
    Function CreateTB_KTCARDISSUE : string;
    Function CreateTB_RELAYGUBUN : string;
    Function CreateTB_DAEMONMULTI : string;
    Function CreateTB_DOORGUBUN : string;
    Function CreateTB_CARDTYPE:string;
    Function CreateTB_ALARMCODEGROUP : string;
    Function CreateTB_ALARMMODENOTCARD : string;
    Function CreateTB_NOTCARDALARMCODE : string;
    Function CreateTB_MAPLOCATION : string;
    Function CreateTB_MAPPOSITION : string;
    Function CreateTB_MAPZONE : string;


    Function CreateView_CARD : string;


    Function UpdateTB_PROGRAMIDSetVisible:string;
    Function UpdateTB_DEVICECARDNOFromPromise(aPromiseGrade,aCardNO:string):string;


    Function SelectTB_GRADEPROGRAMGradeJoinBase(aGradeCode,aProgramGroupCode:string):string;
    Function SelectTB_EMPLOYEEDupCardJoinBase :string;
    Function SelectTB_CARDAdminJoinBase:string;
    Function SelectTB_CARDJoinTBEmployee:string;
    Function selectTB_DOORJoinAdmin(aBuildingCode,aFloorCode,aAreaCode:string;aDoorView:Boolean=True):string;
    Function selectTB_ALARMDEVICEJoinAdmin(aBuildingCode,aFloorCode,aAreaCode:string):string;
    Function SelectTB_ALARMGRADEJoinBase(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string):string;
    Function selectTB_DOORJoinGrade(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string):string;
    Function SelectTB_ACCESSEVENTPersonState(aFromDate,aToDate,aNodeNo,aEcuId,aDoorNo,aDoorGubunCode,
              aCompanyCode,aJijumCode,aDepartCode,aPosiCode,aEmCode,aEmName:string;aDoorGubun:Boolean):string;
    Function SelectTB_ALARMEVENTFromDayToDay(aFromDate,aToDate,aNodeNo,aEcuId,aAlarmType:string;aOrderASC:Boolean=True):string;
    Function SelectNewTB_ALARMEVENTFromDayToDay(aFromDate,aToDate,aNodeNo,aEcuId,aAlarmType:string):string;
    Function SelectTB_HOLIDAYFromMonth(aMonth:string):string;
    Function SelectTB_CARDFromAlarmGradeJoinBase(aAC_NODENO,aAC_ECUID:string):string;
    Function SelectTB_CARDFromDoorGradeJoinBase(aAC_NODENO,aAC_ECUID,aDoorNo:string):string;
    Function selectTB_ALARMDEVICEJoinPromiseCode(aPromisecode:string):string;
    Function selectTB_DOORJoinPromiseCode(aPromisecode:string):string;
    Function selectTB_FOODJoinPromiseCode(aPromisecode:string):string;
    Function SelectTB_EMPLOYEEJoinBase:string;
    Function SelectTB_EMPLOYEEJoinKTCardISSUE:string;
    Function SelectDongLocation:string;
    Function SelectFloorLocation:string;
    Function SelectAreaLocation:string;
    Function SelectMCUDeviceLoad:string;
    Function SelectECUDeviceLoad:string;
    Function SelectTB_ALARMEVENTFromALARMCatch:string;
    Function SelectTB_EMPLOYEE:string;
    Function SelectTB_ACCESSEVENTFromDayToDay(aFromDate,aToDate,aNodeNo,aEcuId,aDoorNo,aDoorGubunCode,aPermitCode,
              aCompanyCode,aJijumCode,aDepartCode,aPosiCode,aEmCode,aEmName,aEmTypeCode:string;aDoorGubun:Boolean):string;
    Function SelectTB_ACCESSEVENTChangeFromDayToDay(aFromDate,aToDate,aNodeNo,aEcuId,aDoorNo,aDoorGubunCode,aPermitCode,
              aCompanyCode,aJijumCode,aDepartCode,aEmCode,aEmName:string;aDoorGubun:Boolean):string;
    Function SelectTB_ACCESSEVENTFromDayToTime(aFromDate,aStartTime,aEndTime,aNodeNo,aEcuId,aDoorNo,aDoorGubunCode,aPermitCode,
              aCompanyCode,aJijumCode,aDepartCode,aPosiCode,aEmCode,aEmName,aEmTypeCode:string;aDoorGubun:Boolean):string;
    Function SelectTB_EMPLOYEEJoinFoodEventFromD2D(aFoodArea,aFoodCode,aFoodPermit,aStartDate,aEndDate:string):string;
    Function SelectTB_EMPLOYEEATVacation(aMonth:string):string;
    Function SelectNotCardReport(aUseDate,aCompanyCode,aJijumCode,aDepartCode,aPosiCode:string):string;
    function SelectTB_DEVICECARDNODownLoadCard:string;
    function SelectTB_DEVICECARDNOCardPermit:string;
    function SelectTB_DOORGetDoorInfo : string;
    function SelectTB_ALARMDEVICEGetAlarmInfo :string;
    //Map
    Function SelectMapCountryAll:string;
    Function SelectMapBuildingAll : string;
    Function SelectMapFloorAll : string;
    Function SelectMapAreaAll : string;
    Function SelectMapBuildingCountryID(aCountryID:string):string;
    Function SelectMapFloorBuildingID(aCountryID,aBuildingID:string):string;

  end;

var
  FireBird: TFireBird;

implementation
uses
  uDataModule1;

{$R *.dfm}

{ TFireBird }

function TFireBird.AlterTB_ACCESSDEVICEDaemonGubun: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSDEVICE ADD AC_DAEMONGUBUN int DEFAULT 1 ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSDEVICEHoSend: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSDEVICE ADD HO_SEND varchar(1) DEFAULT ''N''  ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSDEVICEUPDATE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSDEVICE ADD AC_UPDATE varchar(1) ';
  result := stSql;
end;

function TFireBird.AlterTB_ACCESSEVENTCOMPANYCODE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSEVENT ADD CO_COMPANYCODE varchar(3) DEFAULT ''000'' ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSEVENTDEPARTCODE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSEVENT ADD CO_DEPARTCODE varchar(3) DEFAULT ''000'' ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSEVENTEMCODE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSEVENT ADD EM_CODE varchar(20)  ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSEVENTEMCODEChange: string;
var
  stSql : string;
begin
  stSql := 'alter table TB_ACCESSEVENT alter column  EM_CODE varchar(50) ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSEVENTEMNAME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSEVENT ADD EM_NAME varchar(50)  ';
  result := stSql;

end;

function TFireBird.AlterTB_ACCESSEVENTJIJUMCODE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ACCESSEVENT ADD CO_JIJUMCODE varchar(3) DEFAULT ''000'' ';
  result := stSql;

end;

function TFireBird.AlterTB_ADMINAreaCode: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ADMIN ADD LO_AREACODE varchar(3) DEFAULT ''000'' ';
  result := stSql;

end;

function TFireBird.AlterTB_ADMINBuildingGrade: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ADMIN ADD AD_BUILDINGGRADE CHAR(1) DEFAULT ''4'' ';
  result := stSql;

end;

function TFireBird.AlterTB_ADMINDongCode: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ADMIN ADD LO_DONGCODE varchar(3) DEFAULT ''000'' ';
  result := stSql;

end;

function TFireBird.AlterTB_ADMINFloorCode: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ADMIN ADD LO_FLOORCODE varchar(3) DEFAULT ''000''  ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMDEVICEUPDATE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ALARMDEVICE ADD AL_UPDATE varchar(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMEVENTAlarmGRADE_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ALARMEVENT ADD AL_ALARMGRADE int ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMEVENTAlarmSound_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ALARMEVENT ADD AL_SOUND char(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMEVENTCheckUser_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ALARMEVENT ADD AL_CHECKUSER varchar(30) ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMEVENTCodeChange: string;
var
  stSql : string;
begin
  stSql := 'alter table TB_ALARMEVENT ALTER AL_ALARMSTATUSCODE TYPE varchar(5) ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMEVENTOperChange: string;
var
  stSql : string;
begin
  stSql := 'alter table TB_ALARMEVENT ALTER AL_OPERATOR TYPE varchar(30) ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMEVENTSTATECODE2Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ALARMEVENT ADD AL_STATUSCODE2 varchar(5)';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMSTATUSCODEALARMSOUND: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ALARMSTATUSCODE ADD AL_ALARMSOUND int DEFAULT 0 NOT NULL ';
  result := stSql;

end;

function TFireBird.AlterTB_ALARMSTATUSCODECodeChange: string;
var
  stSql : string;
begin
  stSql := 'alter table TB_ALARMSTATUSCODE ALTER AL_ALARMSTATUSCODE TYPE varchar(5) ';
  result := stSql;

end;

function TFireBird.AlterTB_CARDDoorGrade: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_CARD ADD CA_DOORGRADE char(1) DEFAULT ''N'' ';
  result := stSql;

end;

function TFireBird.AlterTB_COMPANYUPDATECHECK: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_COMPANY ADD CO_UPDATECHECK char(1) DEFAULT ''N'' ';
  result := stSql;

end;

function TFireBird.AlterTB_DOORALARMLONG_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_ALARMLONG char(1) ';
  result := stSql;
end;

function TFireBird.AlterTB_DOORControlTime_Change: string;
var
  stSql : string;
begin
  stSql := 'alter table TB_DOOR alter column  DO_CONTROLTIME char(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_DOORDSOPEN_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_DSOPEN char(1) ';
  result := stSql;
end;

function TFireBird.AlterTB_DOORGUBUN: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_GUBUN varchar(3) DEFAULT ''000'' ';
  result := stSql;

end;

function TFireBird.AlterTB_DOOROPENMONI_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_OPENMONI char(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_DOORREMOTEDOOR_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_REMOTEDOOR char(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_DOORSENDDOOR_Add: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_SENDDOOR char(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_DOORUPDATE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_DOOR ADD DO_UPDATE varchar(1) ';
  result := stSql;
end;

function TFireBird.AlterTB_EMPHISCARDNO: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD CA_CARDNO varchar(20) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISCARDTYPE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD CA_CARDTYPE varchar(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISCOMPANYNAME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD COMPANY_NAME varchar(50)  ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISDEPARTNAME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD DEPART_NAME varchar(50) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISEMNAME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD EM_NAME varchar(20) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISHANDPHONE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD EM_HANDPHONE varchar(14) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISINSERTTIME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD EH_INSERTTIME varchar(14) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISJIJUMNAME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD JIJUM_NAME varchar(50)  ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISPOSINAME: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD PO_NAME varchar(30) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPHISSENDSTATUS2: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPHIS ADD SEND_STATUS2 varchar(1) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPLOYEEEmNameChange: string;
var
  stSql : string;
begin
  stSql := 'alter table TB_EMPLOYEE ALTER EM_NAME TYPE varchar(50) ';
  result := stSql;

end;

function TFireBird.AlterTB_EMPLOYEERelayGubun: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_EMPLOYEE ADD RG_CODE varchar(3) ';
  result := stSql;
end;

function TFireBird.AlterTB_FTPLISTRetryCount: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_FTPLIST ADD FL_RETRYCOUNT INTEGER DEFAULT 0 ';
  result := stSql;

end;

function TFireBird.AlterTB_HOLIDAYState: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_HOLIDAY ADD HO_STATE varchar(1) DEFAULT ''I'' ';
  result := stSql;

end;

function TFireBird.AlterTB_KTCARDISSUEWriteAdd: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_KTCARDISSUE ADD KI_WRITE char(1) DEFAULT ''N'' ';
  result := stSql;

end;

function TFireBird.AlterTB_KTCARDISSUEWriteDateAdd: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_KTCARDISSUE ADD KI_WRITEDATE varchar(8) ';
  result := stSql;

end;

function TFireBird.AlterTB_POSIUPDATECHECK: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_KTCARDISSUE ADD KI_WRITEDATE varchar(8) ';
  result := stSql;

end;

function TFireBird.AlterTB_READERInOutCount: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_READER ADD RE_INOUTCOUNT int DEFAULT 0 NOT NULL ';
  result := stSql;

end;

function TFireBird.AlterTB_ZONEDEVICEUPDATE: string;
var
  stSql : string;
begin
  stSql := 'ALTER TABLE TB_ZONEDEVICE ADD AL_UPDATE varchar(1) ';
  result := stSql;

end;

function TFireBird.CreateTB_ALARMCODEGROUP: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_ALARMCODEGROUP (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' AG_CODE varchar(30) NOT NULL,';
  stSql := stSql + ' AL_ALARMSTATUSCODE varchar(5) NOT NULL,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE, AG_CODE,AL_ALARMSTATUSCODE) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_ALARMMODENOTCARD: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_ALARMMODENOTCARD (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' AN_CODE varchar(5) NOT NULL,';
  stSql := stSql + ' AN_NOTDATA varchar(30),';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE, AN_CODE) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_ALARMSHOW: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_ALARMSHOW (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890''  NOT NULL,';
  stSql := stSql + ' AC_NODENO int NOT NULL,';
  stSql := stSql + ' AC_ECUID varchar(2) NOT NULL,';
  stSql := stSql + ' AL_ALARMDEVICETYPECODE varchar(2) NOT NULL,';
  stSql := stSql + ' AL_SUBADDR varchar(2) NOT NULL,';
  stSql := stSql + ' AL_ZONECODE varchar(2) NOT NULL,';
  stSql := stSql + ' AL_ZONENO varchar(2) NOT NULL,';
  stSql := stSql + ' AL_ALARMSTATUSCODE varchar(2) NOT NULL,';
  stSql := stSql + ' AL_ISALARM varchar(1) ,';
  stSql := stSql + ' AL_ALARMMODECODE varchar(1) ,';
  stSql := stSql + ' AL_DATE varchar(8) ,';
  stSql := stSql + ' AL_TIME varchar(6) ,';
  stSql := stSql + ' AL_MSGNO varchar(1) ,';
  stSql := stSql + ' AL_ZONESTATE varchar(1) ,';
  stSql := stSql + ' AL_OPERATOR varchar(10) ,';
  stSql := stSql + ' AL_CHECKOK varchar(1) ,';
  stSql := stSql + ' AL_CHECKCODE varchar(3) ,';
  stSql := stSql + ' AL_CHECKMSG varchar(100) ,';
  stSql := stSql + ' AL_UPDATETIME varchar(14) ,';
  stSql := stSql + ' AL_UPDATEOPERATOR varchar(10) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE, AC_NODENO,';
  stSql := stSql + ' AC_ECUID,AL_ALARMDEVICETYPECODE,AL_SUBADDR,';
  stSql := stSql + ' AL_ZONECODE,AL_ZONENO,AL_ALARMSTATUSCODE) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_CARDTYPE: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_CARDTYPE (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' CT_CODE varchar(1) NOT NULL,';
  stSql := stSql + ' CT_NAME varchar(30),';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE, CT_CODE) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_DAEMONMULTI: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_DAEMONMULTI (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' DM_GUBUN integer NOT NULL,';
  stSql := stSql + ' DM_SERVERIP varchar(30) ,';
  stSql := stSql + ' DM_SERVERPORT varchar(30) ,';
  stSql := stSql + ' DM_ATPORT varchar(30) ,';
  stSql := stSql + ' DM_FDPORT varchar(30) ,';
  stSql := stSql + ' DM_FTPPORT varchar(30) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,DM_GUBUN) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_DEVICECARDNOACKINDEX: string;
var
  stSql : string;
begin
  stSql := 'CREATE INDEX TB_DEVICECARDNOACK ';
  stSql := stSql + ' ON TB_DEVICECARDNO ';
  stSql := stSql + ' (GROUP_CODE, DE_RCVACK)';

  result := stSql;

end;

function TFireBird.CreateTB_DOORGUBUN: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_DOORGUBUN (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' DG_CODE varchar(3) NOT NULL,';
  stSql := stSql + ' DG_NAME varchar(30) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,DG_CODE) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_EMPHIS: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_EMPHIS (';
  stSql := stSql + ' SEQ integer NOT NULL,';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890''  NOT NULL,';
  stSql := stSql + ' CO_COMPANYCODE varchar(3) NOT NULL,';
  stSql := stSql + ' EM_CODE varchar(20) ,';
  stSql := stSql + ' FDMS_ID INTEGER ,';
  stSql := stSql + ' MODE char(1) ,';
  stSql := stSql + ' SEND_STATUS char(1) ,';
  stSql := stSql + ' PRIMARY KEY (SEQ) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_FormName: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_FORMNAME (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890''  NOT NULL,';
  stSql := stSql + ' FM_CODE varchar(3) NOT NULL,';
  stSql := stSql + ' FM_NAME varchar(30) ,';
  stSql := stSql + ' FM_USE char(1) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE, FM_CODE) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_FTPLIST: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_FTPLIST (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' AC_NODENO INTEGER NOT NULL,';
  stSql := stSql + ' AC_ECUID varchar(2) NOT NULL,';
  stSql := stSql + ' FL_FILENAME varchar(50) NOT NULL,';
  stSql := stSql + ' FL_SENDPROGRASS varchar(3) ,';
  stSql := stSql + ' FL_SENDSTATE varchar(1) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,AC_NODENO,AC_ECUID) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_INOUTCOUNT: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_INOUTCOUNT (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' IO_DATE varchar(8) NOT NULL,';
  stSql := stSql + ' AC_NODENO INTEGER NOT NULL,';
  stSql := stSql + ' AC_ECUID varchar(2) NOT NULL,';
  stSql := stSql + ' DO_DOORNO varchar(1) NOT NULL,';
  stSql := stSql + ' IO_COUNT INTEGER DEFAULT 0 NOT NULL,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,IO_DATE,AC_NODENO,AC_ECUID,DO_DOORNO) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_INOUTGROUP: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_INOUTGROUP (';
  stSql := stSql + ' GROUP_CODE VARCHAR(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' IO_GROUPNAME VARCHAR(30) NOT NULL,';
  stSql := stSql + ' AC_NODENO INTEGER NOT NULL,';
  stSql := stSql + ' AC_ECUID VARCHAR(2) NOT NULL,';
  stSql := stSql + ' DO_DOORNO VARCHAR(1) NOT NULL,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,IO_GROUPNAME,AC_NODENO,AC_ECUID,DO_DOORNO) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_KTCARDISSUE: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_KTCARDISSUE (';
  stSql := stSql + ' GROUP_CODE VARCHAR(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' EM_CODE VARCHAR(20) NOT NULL,';
  stSql := stSql + ' CARD_SEQ INTEGER NOT NULL,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,EM_CODE) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_MAPLOCATION: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_MAPLOCATION (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' ML_COUNTRY varchar(3) NOT NULL,';
  stSql := stSql + ' ML_BUILDING varchar(3) NOT NULL,';
  stSql := stSql + ' ML_FLOOR varchar(3) NOT NULL,';
  stSql := stSql + ' ML_AREA varchar(3) NOT NULL,';
  stSql := stSql + ' ML_GUBUN varchar(1) NOT NULL,';
  stSql := stSql + ' ML_NAME varchar(50) ,';
  stSql := stSql + ' ML_IMAGE varchar(100) ,';
  stSql := stSql + ' ML_IMAGEUSE varchar(1) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,ML_COUNTRY, ML_BUILDING,ML_FLOOR,ML_AREA,ML_GUBUN) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_MAPPOSITION: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_MAPPOSITION (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' MP_SEQ integer NOT NULL,';
  stSql := stSql + ' MP_TYPE varchar(1) NULL,';
  stSql := stSql + ' MP_LEFT integer NULL,';
  stSql := stSql + ' MP_TOP integer NULL,';
  stSql := stSql + ' MP_TOTW integer NULL,';
  stSql := stSql + ' MP_TOTH integer NULL,';
  stSql := stSql + ' MP_WIDTH integer NULL,';
  stSql := stSql + ' MP_HEIGHT integer NULL,';
  stSql := stSql + ' MP_NORMALCOLOR varchar(10) NULL,';
  stSql := stSql + ' MP_NORMALFILLCOLOR varchar(10) NULL,';
  stSql := stSql + ' MP_ALERTCOLOR varchar(10) NULL,';
  stSql := stSql + ' MP_ALERTFILLCOLOR varchar(10) NULL,';
  stSql := stSql + ' ML_COUNTRY varchar(3) NULL,';
  stSql := stSql + ' ML_BUILDING varchar(3) NULL,';
  stSql := stSql + ' ML_FLOOR varchar(3) NULL,';
  stSql := stSql + ' ML_AREA varchar(3) NULL,';
  stSql := stSql + ' ML_GUBUN varchar(1) NULL,';
  stSql := stSql + ' LO_DONGCODE varchar(3) NULL,';
  stSql := stSql + ' LO_FLOORCODE varchar(3) NULL,';
  stSql := stSql + ' LO_AREACODE varchar(3) NULL,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,MP_SEQ) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_MAPZONE: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_MAPZONE (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' AC_NODENO integer NOT NULL,';
  stSql := stSql + ' AC_ECUID varchar(2) NOT NULL,';
  stSql := stSql + ' MZ_PORTNUM varchar(2) NOT NULL,';
  stSql := stSql + ' MZ_PORTSEQ varchar(2) NOT NULL,';
  stSql := stSql + ' MZ_TYPE varchar(1) ,';
  stSql := stSql + ' MZ_LEFT integer ,';
  stSql := stSql + ' MZ_TOP integer ,';
  stSql := stSql + ' MZ_TOTW integer ,';
  stSql := stSql + ' MZ_TOTH integer ,';
  stSql := stSql + ' MZ_WIDTH integer ,';
  stSql := stSql + ' MZ_HEIGHT integer ,';
  stSql := stSql + ' MZ_NORMALCOLOR varchar(10) ,';
  stSql := stSql + ' MZ_ALARMCOLOR varchar(10) ,';
  stSql := stSql + ' MZ_ALERTCOLOR varchar(10) ,';
  stSql := stSql + ' MZ_NORMALIMAGE varchar(100) ,';
  stSql := stSql + ' MZ_ALARMIMAGE varchar(100) ,';
  stSql := stSql + ' MZ_ALERTIMAGE varchar(100) ,';
  stSql := stSql + ' ML_COUNTRY varchar(3) ,';
  stSql := stSql + ' ML_BUILDING varchar(3) ,';
  stSql := stSql + ' ML_FLOOR varchar(3) ,';
  stSql := stSql + ' ML_AREA varchar(3) ,';
  stSql := stSql + ' ML_GUBUN varchar(1) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,AC_NODENO,AC_ECUID,MZ_PORTNUM,MZ_PORTSEQ) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_NOTCARDALARMCODE: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_NOTCARDALARMCODE (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' AN_CODE varchar(5) NOT NULL,';
  stSql := stSql + ' AN_MODE varchar(2) NOT NULL,';
  stSql := stSql + ' AL_STATUSCODE2 varchar(5),';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,AN_CODE, AN_MODE) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_PERRELAYCONFIG: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_PERRELAYCONFIG (';
  stSql := stSql + ' GROUP_CODE VARCHAR(10) DEFAULT ''1234567890''  NOT NULL,';
  stSql := stSql + ' PC_CONFIGCODE VARCHAR(30) NOT NULL,';
  stSql := stSql + ' PC_CONFIGVALUE VARCHAR(500) ,';
  stSql := stSql + ' PC_CONFIGDETAIL VARCHAR(50) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,PC_CONFIGCODE) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_RELAYGUBUN: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_RELAYGUBUN (';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' RG_CODE varchar(3) NOT NULL,';
  stSql := stSql + ' RG_NAME varchar(30) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,RG_CODE) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_SERVERCARDRELAY: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_SERVERCARDRELAY (';
  stSql := stSql + ' GROUP_CODE VARCHAR(10) DEFAULT ''1234567890''  NOT NULL,';
  stSql := stSql + ' SR_RELAYNO INTEGER NOT NULL,';
  stSql := stSql + ' AC_NODENO INTEGER ,';
  stSql := stSql + ' AC_ECUID VARCHAR(2) ,';
  stSql := stSql + ' RE_READERNO VARCHAR(1) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,SR_RELAYNO) ';
  stSql := stSql + ' ) ';

  result := stSql;

end;

function TFireBird.CreateTB_SERVERCARDRELAYHIS: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_SERVERCARDRELAYHIS (';
  stSql := stSql + ' GROUP_CODE VARCHAR(10) DEFAULT ''1234567890''  NOT NULL,';
  stSql := stSql + ' SR_DATETIME VARCHAR(14) NOT NULL,';
  stSql := stSql + ' SR_RELAYNO INTEGER NOT NULL,';
  stSql := stSql + ' SR_CARDDATA VARCHAR(20) ,';
  stSql := stSql + ' SR_CLIENTIP VARCHAR(30) ,';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,SR_DATETIME,SR_RELAYNO) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateTB_WORKLOG: string;
var
  stSql : string;
begin
  stSql := 'Create Table TB_WORKLOG (';
  stSql := stSql + ' WO_CODE varchar(30) NOT NULL,';
  stSql := stSql + ' WO_COMMAND varchar(30) NOT NULL,';
  stSql := stSql + ' WO_DATA varchar(300),';
  stSql := stSql + ' WO_TIME varchar(14) NOT NULL,';
  stSql := stSql + ' WO_OPERATOR varchar(30) ';
  stSql := stSql + ' ) ';

  result := stSql;
end;

function TFireBird.CreateView_CARD: string;
var
  stSql : string;
begin
  stSql := 'CREATE VIEW vi_cardinfo (group_code, ca_cardno, em_code, em_name, co_companyname, co_jijumname, co_departname, po_name, co_companycode, co_jijumcode, co_departcode, po_posicode) AS ';
  stSql := stSql + 'SELECT a.group_code, a.ca_cardno, a.em_code, b.em_name, b.co_companyname, b.co_jijumname, b.co_departname, b.po_name, b.co_companycode, b.co_jijumcode, b.co_departcode, b.po_posicode ';
  stSql := stSql + ' FROM tb_card a ';
  stSql := stSql + ' LEFT JOIN ( SELECT a.group_code, a.em_code, a.em_name, b.co_name AS co_companyname, c.co_name AS co_jijumname, d.co_name AS co_departname, e.po_name, a.co_companycode, a.co_jijumcode, a.co_departcode, a.po_posicode ';
  stSql := stSql + '    FROM tb_employee a ';
  stSql := stSql + '    LEFT JOIN tb_company b ON a.group_code = b.group_code AND a.co_companycode = b.co_companycode AND b.co_gubun = ''1'' ';
  stSql := stSql + ' LEFT JOIN tb_company c ON a.group_code = c.group_code AND a.co_companycode = b.co_companycode AND a.co_jijumcode = b.co_jijumcode AND b.co_gubun = ''2'' ';
  stSql := stSql + ' LEFT JOIN tb_company d ON a.group_code = d.group_code AND a.co_companycode = d.co_companycode AND a.co_jijumcode = d.co_jijumcode AND a.co_departcode = d.co_departcode AND b.co_gubun = ''3'' ';
  stSql := stSql + ' LEFT JOIN tb_posi e ON a.group_code = e.group_code AND a.co_companycode = e.co_companycode AND a.po_posicode = e.po_posicode ) b ON a.group_code = b.group_code AND a.co_companycode = b.co_companycode AND a.em_code = b.em_code' ;

  result := stSql;
end;

function TFireBird.SelectAreaLocation: string;
var
  stSql : string;
begin
  //�����ڵ� �ε�
  stSql := ' Select a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_NAME,a.LO_GUBUN ';
  stSql := stSql + ' From TB_LOCATION a ';
  stSql := stSql + ' Inner Join ';
  stSql := stSql + ' (select b.LO_DONGCODE,b.LO_FLOORCODE,b.LO_AREACODE,b.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,a.AD_USERID ';
  end;
  stSql := stSql + ' from TB_Door b ' ;
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR a  ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE AND a.AC_NODENO=b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID AND a.DO_DOORNO=b.DO_DOORNO) ';
    end;
  end;
  stSql := stSql + ' Union all  ' ;
  stSql := stSql + ' select d.LO_DONGCODE,d.LO_FLOORCODE,d.LO_AREACODE,d.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,c.AD_USERID ';
  end;
  stSql := stSql + ' from TB_ALARMDEVICE d ' ;
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join  TB_ADMINALARMDEVICE c ';
      stSql := stSql + ' ON (c.GROUP_CODE = d.GROUP_CODE ';
      stSql := stSql + ' AND c.AC_NODENO = d.AC_NODENO ';
      stSql := stSql + ' AND c.AC_ECUID = d.AC_ECUID )';
    end;
  end;
{  stSql := stSql + ' Inner Join TB_ACCESSDEVICE e ';
  stSql := stSql + ' ON (d.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND d.AC_NODENO = e.AC_NODENO ';
  stSql := stSql + ' AND d.AC_ECUID = e.AC_ECUID ) ';  }
  stSql := stSql + ' Union all  ' ;
  stSql := stSql + ' select g.LO_DONGCODE,g.LO_FLOORCODE,g.LO_AREACODE,g.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,f.AD_USERID ';
  end;
  stSql := stSql + ' from TB_FOOD g ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINFOOD f ';
      stSql := stSql + ' ON (f.GROUP_CODE = g.GROUP_CODE AND f.AC_NODENO=g.AC_NODENO ';
      stSql := stSql + ' AND f.AC_ECUID = g.AC_ECUID AND f.FO_DOORNO = g.FO_DOORNO ) ';
    end;
  end;
  stSql := stSql + ' )b ' ;
  stSql := stSql + ' ON (a.GROUP_CODE =  b.GROUP_CODE ' ;
  stSql := stSql + ' AND a.LO_DONGCODE = b.LO_DONGCODE ' ;
  stSql := stSql + ' AND a.LO_FLOORCODE = b.LO_FLOORCODE ' ;
  stSql := stSql + ' AND a.LO_AREACODE = b.LO_AREACODE )' ;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.LO_GUBUN = ''2'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;
  stSql := stSql + ' Group by a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_NAME,a.LO_GUBUN ';
  stSql := stSql + ' Order by a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_GUBUN ';

  result := stSql;
end;

function TFireBird.SelectDongLocation: string;
var
  stSql : string;
begin
  //���ڵ� �ε�
  stSql := ' Select a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_NAME,a.LO_GUBUN ';
  stSql := stSql + ' From TB_LOCATION a ';
  stSql := stSql + ' Inner Join (';
  stSql := stSql + ' select b.LO_DONGCODE,b.LO_FLOORCODE,b.LO_AREACODE,b.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,a.AD_USERID ';
  end;
  stSql := stSql + ' from TB_Door b ' ;
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR a ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE AND a.AC_NODENO=b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID AND a.DO_DOORNO=b.DO_DOORNO) ';
    end;
  end;
  stSql := stSql + ' Union all  ' ;
  stSql := stSql + ' select d.LO_DONGCODE,d.LO_FLOORCODE,d.LO_AREACODE,d.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ',c.AD_USERID ' ;
  end;
  stSql := stSql + ' from TB_ALARMDEVICE d ' ;
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE c  ';
      stSql := stSql + ' ON (c.GROUP_CODE = d.GROUP_CODE ';
      stSql := stSql + ' AND c.AC_NODENO = d.AC_NODENO ';
      stSql := stSql + ' AND c.AC_ECUID = d.AC_ECUID ) ';
    end;
  end;
{  stSql := stSql + ' Inner Join TB_ACCESSDEVICE e ';
  stSql := stSql + ' ON (d.GROUP_CODE = e.GROUP_CODE AND d.AC_NODENO=e.AC_NODENO ';
  stSql := stSql + ' AND d.AC_ECUID = e.AC_ECUID ) '; }
  stSql := stSql + ' Union all  ' ;
  stSql := stSql + ' select g.LO_DONGCODE,g.LO_FLOORCODE,g.LO_AREACODE,g.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,f.AD_USERID ';
  end;
  stSql := stSql + ' from TB_FOOD g ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINFOOD f  ';
      stSql := stSql + ' ON (f.GROUP_CODE = g.GROUP_CODE AND f.AC_NODENO=g.AC_NODENO ';
      stSql := stSql + ' AND f.AC_ECUID = g.AC_ECUID AND f.FO_DOORNO = g.FO_DOORNO ) ';
    end;
  end;
  stSql := stSql + ' )b ' ;
  stSql := stSql + ' ON (a.GROUP_CODE =  b.GROUP_CODE ' ;
  stSql := stSql + ' AND a.LO_DONGCODE = b.LO_DONGCODE )' ;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;
  stSql := stSql + ' AND a.LO_GUBUN = ''0'' ';
  stSql := stSql + ' Group by a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_NAME,a.LO_GUBUN ';
  stSql := stSql + ' Order by a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_GUBUN ';
  result := stSql;
end;

function TFireBird.SelectECUDeviceLoad: string;
var
  stSql : string;
begin
  //ECU���� �ε�
  stSql := ' Select a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.AC_DEVICENAME';
  stSql := stSql + ' From TB_ACCESSDEVICE a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join  ';
      stSql := stSql + ' (select AC_NODENO,AC_MCUID,AC_ECUID,AD_USERID,GROUP_CODE from TB_ADMINDOOR ';
      stSql := stSql + ' Union all ';
      stSql := stSql + ' select b.AC_NODENO,b.AC_MCUID,b.AC_ECUID,a.AD_USERID,a.GROUP_CODE from TB_ADMINALARMDEVICE a  ';
      stSql := stSql + ' Inner Join TB_ALARMDEVICE b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';
      stSql := stSql + ' Union all ';
      stSql := stSql + ' select AC_NODENO,AC_MCUID,AC_ECUID,AD_USERID,GROUP_CODE from TB_ADMINFOOD ) b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID) ';
    end;
  end;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;
  stSql := stSql + ' Group by a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.AC_DEVICENAME ';
  stSql := stSql + ' Order by a.AC_NODENO,a.AC_ECUID ';

  result := stSql;
end;

function TFireBird.SelectFloorLocation: string;
var
  stSql : string;
begin
  //���ڵ� �ε�
  stSql := ' Select a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_NAME,a.LO_GUBUN ';
  stSql := stSql + ' From TB_LOCATION a ';
  stSql := stSql + ' Inner Join ';
  stSql := stSql + ' (select b.LO_DONGCODE,b.LO_FLOORCODE,b.LO_AREACODE,b.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,a.AD_USERID ';
  end;
  stSql := stSql + ' from TB_Door b ' ;
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR a ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE AND a.AC_NODENO=b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID AND a.DO_DOORNO=b.DO_DOORNO) ';
    end;
  end;
  stSql := stSql + ' Union all  ' ;
  stSql := stSql + ' select d.LO_DONGCODE,d.LO_FLOORCODE,d.LO_AREACODE,d.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,c.AD_USERID ';
  end;
  stSql := stSql + ' from TB_ALARMDEVICE d ' ;
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE c  ';
      stSql := stSql + ' ON (c.GROUP_CODE = d.GROUP_CODE ';
      stSql := stSql + ' AND c.AC_NODENO = d.AC_NODENO ';
      stSql := stSql + ' AND c.AC_ECUID = d.AC_ECUID ) ';
    end;
  end;
{  stSql := stSql + ' Inner Join TB_ACCESSDEVICE e ';
  stSql := stSql + ' ON (d.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND d.AC_NODENO=e.AC_NODENO ';
  stSql := stSql + ' AND d.AC_ECUID = e.AC_ECUID ) '; }
  stSql := stSql + ' Union all  ' ;
  stSql := stSql + ' select g.LO_DONGCODE,g.LO_FLOORCODE,g.LO_AREACODE,g.GROUP_CODE ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then stSql := stSql + ' ,f.AD_USERID ';
  end;
  stSql := stSql + ' from  TB_FOOD g ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINFOOD f ';
      stSql := stSql + ' ON (f.GROUP_CODE = g.GROUP_CODE AND f.AC_NODENO=g.AC_NODENO ';
      stSql := stSql + ' AND f.AC_ECUID = g.AC_ECUID AND f.FO_DOORNO = g.FO_DOORNO ) ';
    end;
  end;
  stSql := stSql + ' )b ' ;
  stSql := stSql + ' ON (a.GROUP_CODE =  b.GROUP_CODE ' ;
  stSql := stSql + ' AND a.LO_DONGCODE = b.LO_DONGCODE ' ;
  stSql := stSql + ' AND a.LO_FLOORCODE = b.LO_FLOORCODE )' ;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.LO_GUBUN = ''1'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;
  stSql := stSql + ' Group by a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_NAME,a.LO_GUBUN ';
  stSql := stSql + ' Order by a.LO_DONGCODE,a.LO_FLOORCODE,a.LO_AREACODE,a.LO_GUBUN ';

  result := stSql;
end;

function TFireBird.SelectMapAreaAll: string;
var
  stSql : string;
begin
  stSql := ' Select * from TB_MAPLOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND ML_GUBUN = ''3'' ';
  result := stSql;

end;

function TFireBird.SelectMapBuildingAll: string;
var
  stSql : string;
begin
  stSql := ' Select * from TB_MAPLOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND ML_GUBUN = ''1'' ';
  result := stSql;

end;

function TFireBird.SelectMapBuildingCountryID(aCountryID: string): string;
var
  stSql : string;
begin
  stSql := ' Select * from TB_MAPLOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND ML_COUNTRY = ''' + aCountryID + ''' ';
  stSql := stSql + ' AND ML_GUBUN = ''1'' ';
  result := stSql; 
end;

function TFireBird.SelectMapCountryAll: string;
var
  stSql : string;
begin
  stSql := ' Select * from TB_MAPLOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND ML_GUBUN = ''0'' ';
  result := stSql;

end;

function TFireBird.SelectMapFloorAll: string;
var
  stSql : string;
begin
  stSql := ' Select * from TB_MAPLOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND ML_GUBUN = ''2'' ';
  result := stSql;

end;

function TFireBird.SelectMapFloorBuildingID(aCountryID,
  aBuildingID: string): string;
var
  stSql : string;
begin
  stSql := ' Select * from TB_MAPLOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND ML_COUNTRY = ''' + aCountryID + ''' ';
  stSql := stSql + ' AND ML_BUILDING = ''' + aBuildingID + ''' ';
  stSql := stSql + ' AND ML_GUBUN = ''2'' ';
  result := stSql;

end;

function TFireBird.SelectMCUDeviceLoad: string;
var
  stSql : string;
begin
  //MCU LAN ���� ��ȸ
  stSql := ' Select a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.AC_MCUIP,a.AC_MCUPORT,a.AC_DAEMONGUBUN ';
  stSql := stSql + ' From TB_ACCESSDEVICE a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join  ';
      stSql := stSql + ' (select AC_NODENO,AC_MCUID,AC_ECUID,AD_USERID,GROUP_CODE from TB_ADMINDOOR ';
      stSql := stSql + ' Union all ';
      stSql := stSql + ' select b.AC_NODENO,b.AC_MCUID,b.AC_ECUID,a.AD_USERID,a.GROUP_CODE from TB_ADMINALARMDEVICE a  ';
      stSql := stSql + ' Inner Join TB_ALARMDEVICE b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID =  b.AC_ECUID ) ';
      stSql := stSql + ' Union all ';
      stSql := stSql + ' select AC_NODENO,AC_MCUID,AC_ECUID,AD_USERID,GROUP_CODE from TB_ADMINFOOD ) b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO) ';
    end;
  end;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_ECUID = ''00'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  stSql := stSql + ' Group by a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.AC_MCUIP,a.AC_MCUPORT,a.AC_DAEMONGUBUN ';
  stSql := stSql + ' Order by a.AC_NODENO ';

  result := stSql;
end;

function TFireBird.SelectNewTB_ALARMEVENTFromDayToDay(aFromDate, aToDate,
  aNodeNo, aEcuId, aAlarmType: string): string;
var
  stSql :string;
begin
  stSql := 'Select a.AL_DATE,a.AL_TIME,a.AC_ECUID,c.AL_ZONENAME,a.AL_OPERATOR,a.AL_ALARMDEVICETYPECODE, ';
  stSql := stSql + ' a.AL_ALARMMODECODE,a.AL_ZONENO,a.AL_ALARMSTATUSCODE,d.AL_ALARMNAME,a.AL_SUBADDR,';
  stSql := stSql + ' a.AL_CHECKCODE,a.AL_CHECKMSG,a.AL_UPDATEOPERATOR,e.AC_DEVICENAME ';
  stSql := stSql + ' From TB_ALARMEVENT a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO  ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID  )';
    end;
  end;
  stSql := stSql + ' Left Join TB_ALARMDEVICE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID  )';
  stSql := stSql + ' Left Join TB_ALARMSTATUSCODE d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.AL_STATUSCODE2 = d.AL_ALARMSTATUSCODE ) ';
  stSql := stSql + ' Left Join TB_ACCESSDEVICE e ';
  stSql := stSql + ' ON( a.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = e.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = e.AC_ECUID ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AL_DATE BETWEEN ''' + aFromDate
                 + ''' AND ''' + aToDate + ''' ';
  if Trim(aNodeNo) <> '' then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
    stSql := stSql + ' AND a.AC_ECUID = ''' + aEcuId + ''' ';
  end;
  if Trim(aAlarmType) <> '' then
  begin
    stSql := stSql + ' AND a.AL_STATUSCODE2 = ''' + aAlarmType + ''' ' ;
  end;
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND c.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND c.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND c.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND c.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND c.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND c.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  result := stSql;
end;

function TFireBird.SelectNotCardReport(aUseDate, aCompanyCode, aJijumCode,
  aDepartCode, aPosiCode: string): string;
var
  stSql : string;
begin
  stSql := ' Select c.CO_NAME as CO_COMPANYNAME,d.CO_NAME as CO_JIJUMNAME, ';
  stSql := stSql + ' e.CO_NAME as CO_DEPARTNAME,f.PO_NAME,a.CO_COMPANYCODE, ';
  stSql := stSql + ' a.EM_CODE, a.CA_CARDNO,a.CA_LASTUSE, b.EM_NAME ';
  stSql := stSql + ' FROM TB_CARD a ';
  stSql := stSql + ' Left Join TB_EMPLOYEE b ';
  stSql := stSql + ' ON(a.CO_COMPANYCODE = b.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE) ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON (b.GROUP_CODE = c.GROUP_CODE AND b.CO_COMPANYCODE = c.CO_COMPANYCODE AND c.CO_GUBUN = ''1'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON (b.GROUP_CODE = d.GROUP_CODE AND b.CO_COMPANYCODE = d.CO_COMPANYCODE AND b.CO_JIJUMCODE = d.CO_JIJUMCODE AND d.CO_GUBUN = ''2'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON (b.GROUP_CODE = e.GROUP_CODE AND b.CO_COMPANYCODE = e.CO_COMPANYCODE AND b.CO_JIJUMCODE = e.CO_JIJUMCODE AND b.CO_DEPARTCODE = e.CO_DEPARTCODE AND  e.CO_GUBUN = ''3'' ) ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON (b.GROUP_CODE = f.GROUP_CODE AND b.CO_COMPANYCODE = f.CO_COMPANYCODE AND b.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if aUseDate <> '' then
  begin
    stSql := stSql + ' AND ( a.CA_LASTUSE <= ''' + aUseDate + ''' ';
    stSql := stSql + ' OR a.CA_LASTUSE IS NULL ) ';
  end;
  if (aCompanyCode <> '000') and (aCompanyCode <> '') then
    stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  if (aJijumCode <> '000') and (aJijumCode <> '') then
    stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  if (aDepartCode <> '000') and (aDepartCode <> '') then
    stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + aDepartCode + ''' ';
  if (aPosiCode <> '000') and (aPosiCode <> '') then
    stSql := stSql + ' AND b.PO_POSICODE = ''' + aPosiCode + ''' ';



  result := stSql;
end;

function TFireBird.SelectTB_ACCESSEVENTChangeFromDayToDay(aFromDate,
  aToDate, aNodeNo, aEcuId, aDoorNo, aDoorGubunCode, aPermitCode,
  aCompanyCode, aJijumCode, aDepartCode, aEmCode, aEmName: string; aDoorGubun: Boolean): string;
var
  stSql : string;
begin
  stSql := 'Select a.AC_DATE,a.AC_TIME,d.DO_DOORNONAME,  a.AC_READERNO,a.AC_DOORPOSI,a.CA_CARDNO, ';
  stSql := stSql + ' g.CO_NAME as CO_COMPANYNAME,h.CO_NAME as CO_JIJUMNAME, i.CO_NAME as CO_DEPARTNAME, ';
  stSql := stSql + ' a.EM_CODE,a.EM_NAME,c.PE_PERMITNAME,  a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE ';
  stSql := stSql + ' From TB_ACCESSEVENT a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ) ';
    end else
    begin
      if BuildingGrade <> 0 then
      begin
        stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
        stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
        stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
        stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID) ';
      end;
    end;
  end;
  stSql := stSql + ' Inner Join TB_PERMITCODE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE  AND a.PE_PERMITCODE = c.PE_PERMITCODE ) ';
  stSql := stSql + ' Left Join TB_DOOR d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE  ';
  stSql := stSql + ' AND a.AC_NODENO = d.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = d.AC_ECUID  ';
  stSql := stSql + ' AND a.DO_DOORNO = d.DO_DOORNO ';
  if aDoorGubunCode <> '' then
    stSql := stSql + ' AND d.DO_GUBUN = ''' + aDoorGubunCode + ''' ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left Join TB_CARD e ';
  stSql := stSql + ' ON (a.GROUP_CODE = e.GROUP_CODE  AND a.CA_CARDNO = e.CA_CARDNO ) ';
  stSql := stSql + ' Left Join TB_COMPANY g ';
  stSql := stSql + ' ON (a.GROUP_CODE = g.GROUP_CODE AND a.CO_COMPANYCODE = g.CO_COMPANYCODE AND g.CO_GUBUN = ''1'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY h ';
  stSql := stSql + ' ON (a.GROUP_CODE = h.GROUP_CODE AND a.CO_COMPANYCODE = h.CO_COMPANYCODE AND a.CO_JIJUMCODE = h.CO_JIJUMCODE AND h.CO_GUBUN = ''2'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY i ';
  stSql := stSql + ' ON (a.GROUP_CODE = i.GROUP_CODE AND a.CO_COMPANYCODE = i.CO_COMPANYCODE AND a.CO_JIJUMCODE = i.CO_JIJUMCODE AND a.CO_DEPARTCODE = i.CO_DEPARTCODE AND  i.CO_GUBUN = ''3'' ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_INPUTTYPE = ''C'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND b.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  stSql := stSql + ' AND a.AC_DATE BETWEEN ''' + aFromDate + ''' AND ''' + aToDate + ''' ';
  if Trim(aNodeNo) <> ''  then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo));
    stSql := stSql + ' AND a.AC_ECUID = ''' + aEcuID + ''' ';
    stSql := stSql + ' AND a.DO_DOORNO = ''' + aDoorNo + ''' ';
  end;
  if Trim(aPermitCode) <> '' then
  begin
    stSql := stSql + ' AND c.PE_PERMITCODE = ''' + aPermitCode + ''' ';
  end;
  if Trim(aCompanyCode) <> '' then
  begin
    stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  end;
  if Trim(aJijumCode) <> '' then
  begin
    stSql := stSql + ' AND a.CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  end;
  if Trim(aDepartCode) <> '' then
  begin
    stSql := stSql + ' AND a.CO_DEPARTCODE = ''' + aDepartCode + ''' ';
  end;
  if Trim(aEmCode) <> '' then
  begin
    stSql := stSql + ' AND a.EM_CODE = ''' + aEmCode + ''' ';
  end;
  if Trim(aEmName) <> '' then
  begin
    stSql := stSql + ' AND a.EM_NAME LIKE ''%' + aEmName + '%'' ';
  end;
  result := stSql;
end;

function TFireBird.SelectTB_ACCESSEVENTFromDayToDay(aFromDate, aToDate,
  aNodeNo, aEcuId, aDoorNo,aDoorGubunCode, aPermitCode, aCompanyCode, aJijumCode,
  aDepartCode, aPosiCode, aEmCode, aEmName, aEmTypeCode: string;aDoorGubun:Boolean): string;
var
  stSql : string;
begin
  stSql := 'Select a.AC_DATE,a.AC_TIME,d.DO_DOORNONAME,  a.AC_READERNO,a.AC_DOORPOSI,a.CA_CARDNO, ';
  stSql := stSql + ' g.CO_NAME as CO_COMPANYNAME,h.CO_NAME as CO_JIJUMNAME, i.CO_NAME as CO_DEPARTNAME, j.PO_NAME, ';
  stSql := stSql + ' f.EM_CODE,f.EM_NAME,c.PE_PERMITNAME,  f.CO_COMPANYCODE,f.CO_JIJUMCODE,f.CO_DEPARTCODE,f.PO_POSICODE ';
  stSql := stSql + ' From TB_ACCESSEVENT a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ) ';
    end else
    begin
      if BuildingGrade <> 0 then
      begin
        stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
        stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
        stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
        stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID) ';
      end;
    end;
  end;
  stSql := stSql + ' Inner Join TB_PERMITCODE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE  AND a.PE_PERMITCODE = c.PE_PERMITCODE ) ';
  stSql := stSql + ' Left Join TB_DOOR d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE  ';
  stSql := stSql + ' AND a.AC_NODENO = d.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = d.AC_ECUID  ';
  stSql := stSql + ' AND a.DO_DOORNO = d.DO_DOORNO ';
  if aDoorGubunCode <> '' then
    stSql := stSql + ' AND d.DO_GUBUN = ''' + aDoorGubunCode + ''' ';
  stSql := stSql + ' ) ';
//  stSql := stSql + ' Inner Join TB_DOOR d ';
//  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE  AND a.AC_NODENO = d.AC_NODENO  AND a.AC_ECUID = d.AC_ECUID  AND a.DO_DOORNO = d.DO_DOORNO ) ';
  stSql := stSql + ' Left Join TB_CARD e ';
  stSql := stSql + ' ON (a.GROUP_CODE = e.GROUP_CODE  AND a.CA_CARDNO = e.CA_CARDNO ) ';
  stSql := stSql + ' Left Join TB_EMPLOYEE f ';
  stSql := stSql + ' ON (e.GROUP_CODE = f.GROUP_CODE AND e.CO_COMPANYCODE = f.CO_COMPANYCODE AND e.EM_CODE = f.EM_CODE ) ';
  stSql := stSql + ' Left Join TB_COMPANY g ';
  stSql := stSql + ' ON (f.GROUP_CODE = g.GROUP_CODE AND f.CO_COMPANYCODE = g.CO_COMPANYCODE AND g.CO_GUBUN = ''1'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY h ';
  stSql := stSql + ' ON (f.GROUP_CODE = h.GROUP_CODE AND f.CO_COMPANYCODE = h.CO_COMPANYCODE AND f.CO_JIJUMCODE = h.CO_JIJUMCODE AND h.CO_GUBUN = ''2'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY i ';
  stSql := stSql + ' ON (f.GROUP_CODE = i.GROUP_CODE AND f.CO_COMPANYCODE = i.CO_COMPANYCODE AND f.CO_JIJUMCODE = i.CO_JIJUMCODE AND f.CO_DEPARTCODE = i.CO_DEPARTCODE AND  i.CO_GUBUN = ''3'' ) ';
  stSql := stSql + ' Left Join TB_POSI j ';
  stSql := stSql + ' ON (f.GROUP_CODE = j.GROUP_CODE AND f.CO_COMPANYCODE = j.CO_COMPANYCODE AND f.PO_POSICODE = j.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_INPUTTYPE = ''C'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND b.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  stSql := stSql + ' AND a.AC_DATE BETWEEN ''' + aFromDate + ''' AND ''' + aToDate + ''' ';
  if Trim(aNodeNo) <> ''  then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo));
    stSql := stSql + ' AND a.AC_ECUID = ''' + aEcuID + ''' ';
    stSql := stSql + ' AND a.DO_DOORNO = ''' + aDoorNo + ''' ';
  end;
  if Trim(aPermitCode) <> '' then
  begin
    stSql := stSql + ' AND c.PE_PERMITCODE = ''' + aPermitCode + ''' ';
  end;
  if Trim(aCompanyCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  end;
  if Trim(aJijumCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  end;
  if Trim(aDepartCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_DEPARTCODE = ''' + aDepartCode + ''' ';
  end;
  if Trim(aPosiCode) <> '' then
  begin
    stSql := stSql + ' AND f.PO_POSICODE = ''' + aPosiCode + ''' ';
  end;
  if Trim(aEmCode) <> '' then
  begin
    stSql := stSql + ' AND f.EM_CODE = ''' + aEmCode + ''' ';
  end;
  if Trim(aEmName) <> '' then
  begin
    stSql := stSql + ' AND f.EM_NAME LIKE ''%' + aEmName + '%'' ';
  end;
  if Trim(aEmTypeCode) <> '' then
  begin
    stSql := stSql + ' AND f.RG_CODE = ''' + aEmTypeCode + ''' ';
  end;
  result := stSql;
end;

function TFireBird.SelectTB_ACCESSEVENTFromDayToTime(aFromDate, aStartTime,
  aEndTime, aNodeNo, aEcuId, aDoorNo,aDoorGubunCode, aPermitCode, aCompanyCode,
  aJijumCode, aDepartCode, aPosiCode, aEmCode, aEmName,
  aEmTypeCode: string;aDoorGubun:Boolean): string;
var
  stSql : string;
begin
  stSql := 'Select a.AC_DATE,a.AC_TIME,d.DO_DOORNONAME,  a.AC_READERNO,a.CA_CARDNO, ';
  stSql := stSql + ' g.CO_NAME as CO_COMPANYNAME,h.CO_NAME as CO_JIJUMNAME, i.CO_NAME as CO_DEPARTNAME, j.PO_NAME, ';
  stSql := stSql + ' f.EM_CODE,f.EM_NAME,c.PE_PERMITNAME,  f.CO_COMPANYCODE,f.CO_JIJUMCODE,f.CO_DEPARTCODE,f.PO_POSICODE ';
  stSql := stSql + ' From TB_ACCESSEVENT a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ) ';
    end else
    begin
      if BuildingGrade <> 0 then
      begin
        stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
        stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
        stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
        stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID) ';
      end;
    end;
  end;
  stSql := stSql + ' Inner Join TB_PERMITCODE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE  AND a.PE_PERMITCODE = c.PE_PERMITCODE ) ';
  stSql := stSql + ' Left Join TB_DOOR d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE  ';
  stSql := stSql + ' AND a.AC_NODENO = d.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = d.AC_ECUID  ';
  stSql := stSql + ' AND a.DO_DOORNO = d.DO_DOORNO ';
  if aDoorGubunCode <> '' then
    stSql := stSql + ' AND d.DO_GUBUN = ''' + aDoorGubunCode + ''' ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left Join TB_CARD e ';
  stSql := stSql + ' ON (a.GROUP_CODE = e.GROUP_CODE  AND a.CA_CARDNO = e.CA_CARDNO ) ';
  stSql := stSql + ' Left Join TB_EMPLOYEE f ';
  stSql := stSql + ' ON (e.GROUP_CODE = f.GROUP_CODE AND e.CO_COMPANYCODE = f.CO_COMPANYCODE AND e.EM_CODE = f.EM_CODE ) ';
  stSql := stSql + ' Left Join TB_COMPANY g ';
  stSql := stSql + ' ON (f.GROUP_CODE = g.GROUP_CODE AND f.CO_COMPANYCODE = g.CO_COMPANYCODE AND g.CO_GUBUN = ''1'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY h ';
  stSql := stSql + ' ON (f.GROUP_CODE = h.GROUP_CODE AND f.CO_COMPANYCODE = h.CO_COMPANYCODE AND f.CO_JIJUMCODE = h.CO_JIJUMCODE AND h.CO_GUBUN = ''2'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY i ';
  stSql := stSql + ' ON (f.GROUP_CODE = i.GROUP_CODE AND f.CO_COMPANYCODE = i.CO_COMPANYCODE AND f.CO_JIJUMCODE = i.CO_JIJUMCODE AND f.CO_DEPARTCODE = i.CO_DEPARTCODE AND  i.CO_GUBUN = ''3'' ) ';
  stSql := stSql + ' Left Join TB_POSI j ';
  stSql := stSql + ' ON (f.GROUP_CODE = j.GROUP_CODE AND f.CO_COMPANYCODE = j.CO_COMPANYCODE AND f.PO_POSICODE = j.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_INPUTTYPE = ''C'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND b.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  stSql := stSql + ' AND a.AC_DATE = ''' + aFromDate + ''' ';
  stSql := stSql + ' AND a.AC_TIME BETWEEN ''' + aStartTime + ''' AND ''' + aEndTime + ''' ';
  if Trim(aNodeNo) <> ''  then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo));
    stSql := stSql + ' AND a.AC_ECUID = ''' + aEcuID + ''' ';
    stSql := stSql + ' AND a.DO_DOORNO = ''' + aDoorNo + ''' ';
  end;
  if Trim(aPermitCode) <> '' then
  begin
    stSql := stSql + ' AND c.PE_PERMITCODE = ''' + aPermitCode + ''' ';
  end;
  if Trim(aCompanyCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  end;
  if Trim(aJijumCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  end;
  if Trim(aDepartCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_DEPARTCODE = ''' + aDepartCode + ''' ';
  end;
  if Trim(aPosiCode) <> '' then
  begin
    stSql := stSql + ' AND f.PO_POSICODE = ''' + aPosiCode + ''' ';
  end;
  if Trim(aEmCode) <> '' then
  begin
    stSql := stSql + ' AND f.EM_CODE = ''' + aEmCode + ''' ';
  end;
  if Trim(aEmName) <> '' then
  begin
    stSql := stSql + ' AND f.EM_NAME LIKE ''%' + aEmName + '%'' ';
  end;
  if Trim(aEmTypeCode) <> '' then
  begin
    stSql := stSql + ' AND f.RG_CODE = ''' + aEmTypeCode + ''' ';
  end;
  result := stSql;
end;

function TFireBird.SelectTB_ACCESSEVENTPersonState(aFromDate, aToDate,
  aNodeNo, aEcuId, aDoorNo, aDoorGubunCode, aCompanyCode, aJijumCode,
  aDepartCode, aPosiCode, aEmCode, aEmName: string;
  aDoorGubun: Boolean): string;
var
  stSql : string;
begin
  stSql := 'Select ';
  if aDoorGubun then
    stSql := stSql + 'k.DG_NAME as DO_DOORNONAME ,'
  else stSql := stSql + 'd.DO_DOORNONAME,';
  stSql := stSql + ' g.CO_NAME as CO_COMPANYNAME,h.CO_NAME as CO_JIJUMNAME, i.CO_NAME as CO_DEPARTNAME, j.PO_NAME, ';
  stSql := stSql + ' f.EM_CODE,f.EM_NAME,';
  stSql := stSql + ' sum(a.ACCESS) as ACCESS,  ';
  stSql := stSql + ' sum(a.NOTACCESS) as NOTACCESS,  ';
  stSql := stSql + ' sum(a.SUMD) as SUMD ';
  stSql := stSql + ' From ';
  stSql := stSql + ' ( select GROUP_CODE,PE_PERMITCODE,AC_NODENO,AC_ECUID,DO_DOORNO,CA_CARDNO,AC_INPUTTYPE,AC_DATE,';
  stSql := stSql + ' CASE ';
  stsql := stSql + ' WHEN PE_PERMITCODE = ''1'' then 1 ';
  stsql := stSql + ' WHEN PE_PERMITCODE = ''2'' then 1 ';
  stSql := stSql + ' ELSE 0 ';
  stSql := stSql + ' END as ACCESS, ';
  stSql := stSql + ' CASE ';
  stsql := stSql + ' WHEN PE_PERMITCODE = ''1'' then 0 ';
  stsql := stSql + ' WHEN PE_PERMITCODE = ''2'' then 0 ';
  stSql := stSql + ' ELSE 1 ';
  stSql := stSql + ' END as NOTACCESS, 1 as SUMD ';
  stSql := stSql + ' from TB_ACCESSEVENT ';
  stSql := stSql + ')a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ) ';
    end else
    begin
      if BuildingGrade <> 0 then
      begin
        stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
        stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
        stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
        stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID) ';
      end;
    end;
  end;
  stSql := stSql + ' Inner Join TB_PERMITCODE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE  AND a.PE_PERMITCODE = c.PE_PERMITCODE ) ';
  stSql := stSql + ' Inner Join TB_DOOR d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE  ';
  stSql := stSql + ' AND a.AC_NODENO = d.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = d.AC_ECUID  ';
  stSql := stSql + ' AND a.DO_DOORNO = d.DO_DOORNO ';
  if aDoorGubunCode <> '' then
    stSql := stSql + ' AND d.DO_GUBUN = ''' + aDoorGubunCode + ''' ';
  stSql := stSql + ' ) ';
  //stSql := stSql + ' Left Join TB_CARD e ';
  //stSql := stSql + ' ON (a.GROUP_CODE = e.GROUP_CODE  AND a.CA_CARDNO = e.CA_CARDNO ) ';
  stSql := stSql + ' Left Join TB_EMPLOYEE f ';
  stSql := stSql + ' ON (a.GROUP_CODE = f.GROUP_CODE AND a.CO_COMPANYCODE = f.CO_COMPANYCODE AND a.EM_CODE = f.EM_CODE ) ';
  stSql := stSql + ' Left Join TB_COMPANY g ';
  stSql := stSql + ' ON (f.GROUP_CODE = g.GROUP_CODE AND f.CO_COMPANYCODE = g.CO_COMPANYCODE AND g.CO_GUBUN = ''1'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY h ';
  stSql := stSql + ' ON (f.GROUP_CODE = h.GROUP_CODE AND f.CO_COMPANYCODE = h.CO_COMPANYCODE AND f.CO_JIJUMCODE = h.CO_JIJUMCODE AND h.CO_GUBUN = ''2'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY i ';
  stSql := stSql + ' ON (f.GROUP_CODE = i.GROUP_CODE AND f.CO_COMPANYCODE = i.CO_COMPANYCODE AND f.CO_JIJUMCODE = i.CO_JIJUMCODE AND f.CO_DEPARTCODE = i.CO_DEPARTCODE AND  i.CO_GUBUN = ''3'' ) ';
  stSql := stSql + ' Left Join TB_POSI j ';
  stSql := stSql + ' ON (f.GROUP_CODE = j.GROUP_CODE AND f.CO_COMPANYCODE = j.CO_COMPANYCODE AND f.PO_POSICODE = j.PO_POSICODE ) ';
  stSql := stSql + ' Left Join TB_DOORGUBUN k ';
  stSql := stSql + ' ON (d.GROUP_CODE = k.GROUP_CODE AND d.DO_GUBUN = k.DG_CODE) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_INPUTTYPE = ''C'' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND b.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND b.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND b.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  stSql := stSql + ' AND a.AC_DATE BETWEEN ''' + aFromDate + ''' AND ''' + aToDate + ''' ';
  if Trim(aNodeNo) <> ''  then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo));
    stSql := stSql + ' AND a.AC_ECUID = ''' + aEcuID + ''' ';
    stSql := stSql + ' AND a.DO_DOORNO = ''' + aDoorNo + ''' ';
  end;
  if Trim(aCompanyCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  end;
  if Trim(aJijumCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_JIJUMCODE = ''' + aJijumCode + ''' ';
  end;
  if Trim(aDepartCode) <> '' then
  begin
    stSql := stSql + ' AND f.CO_DEPARTCODE = ''' + aDepartCode + ''' ';
  end;
  if Trim(aPosiCode) <> '' then
  begin
    stSql := stSql + ' AND f.PO_POSICODE = ''' + aPosiCode + ''' ';
  end;
  if Trim(aEmCode) <> '' then
  begin
    stSql := stSql + ' AND f.EM_CODE = ''' + aEmCode + ''' ';
  end;
  if Trim(aEmName) <> '' then
  begin
    stSql := stSql + ' AND f.EM_NAME LIKE ''%' + aEmName + '%'' ';
  end;
  if aDoorGubun then
    stSql := stSql + ' GROUP BY k.DG_NAME,'
  else stSql := stSql + ' GROUP BY d.DO_DOORNONAME,';
  stSql := stSql + ' g.CO_NAME,h.CO_NAME, i.CO_NAME, j.PO_NAME, ';
  stSql := stSql + ' f.EM_CODE,f.EM_NAME';

  result := stSql;
end;

function TFireBird.SelectTB_ALARMDEVICEGetAlarmInfo: string;
var
  stSql : string;
begin
  stSql := ' Select a.AC_NODENO,b.AC_MCUIP,b.AC_MCUPORT,b.AC_MCUID, ';
  stSql := stSql + ' b.AC_DEVICENAME as MCU_NAME,c.AC_ECUID,c.AC_DEVICENAME as ECU_NAME ';
  stSql := stSql + ' from TB_ALARMDEVICE a ';
  stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND b.AC_ECUID = ''00'' ) ';
  stSql := stSql + ' Left Join TB_ACCESSDEVICE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ) ';

  result := stSql;

end;

function TFireBird.selectTB_ALARMDEVICEJoinAdmin(aBuildingCode, aFloorCode,
  aAreaCode: string): string;
var
  stSql : string;
begin
  stSql := 'select a.AL_ZONENAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID ';
  stSql := stSql + ' from TB_ALARMDEVICE a ';
  stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE c ';
      stSql := stSql + ' ON (a.GROUP_CODE = c.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ) ';
    end;
  end;
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' '
      else
        stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else
    begin
      if BuildingGrade = 4 then stSql := stSql + ' AND c.AD_USERID = ''' + Master_ID + ''' ';
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end;
  end else
  begin
    if (aBuildingCode <> '') and (aBuildingCode <> '000') then
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
    if (aFloorCode <> '') and (aFloorCode <> '000') then
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
    if (aAreaCode <> '') and (aAreaCode <> '000') then
      stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  end;

  result := stSql;
end;

function TFireBird.selectTB_ALARMDEVICEJoinPromiseCode(
  aPromisecode: string): string;
var
  stSql :string;
begin
  stSql := 'select a.AL_ZONENAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID, ';
  stSql := stSql + 'd.DE_DOOR1,d.DE_DOOR2,d.DE_USEALARM,d.DE_PERMIT ';
  stSql := stSql + ' from TB_ALARMDEVICE a ';
{  stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';  }
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE c ';
      stSql := stSql + ' ON (a.GROUP_CODE = c.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ) ';
    end;
  end;
  stSql := stSql + ' Inner Join (select * from TB_DEVICECARDNO_PROMISE where PR_NAME = ''' + aPromisecode + ''' ) d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = d.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = d.AC_ECUID ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND c.AD_USERID = ''' + Master_ID + ''' ';
  end;

  result := stSql;
end;

function TFireBird.SelectTB_ALARMEVENTFromALARMCatch: string;
var
  stSql : string;
begin
  stSql := 'select a.*,b.AL_ALARMNAME,b.AL_ALARMVIEW,b.AL_ALARMGRADE,b.AL_ALARMSOUND ';
  stSql := stSql + ' From TB_ALARMEVENT a ';
  stSql := stSql + ' Left Join TB_ALARMSTATUSCODE b ';
  stSql := stSql + ' ON(a.AL_ALARMSTATUSCODE = b.AL_ALARMSTATUSCODE) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AL_CHECKOK <> ''Y'' ';
  stSql := stSql + ' AND b.AL_ALARMVIEW <> 0 ';
  stSql := stSql + ' Order by b.AL_ALARMGRADE DESC, a.al_date DESC,a.al_time DESC ';

  result := stSql;
end;

function TFireBird.SelectTB_ALARMEVENTFromDayToDay(aFromDate, aToDate,
  aNodeNo, aEcuId, aAlarmType: string; aOrderASC: Boolean): string;
var
  stSql :string;
begin
  stSql := 'Select a.AL_DATE,a.AL_TIME,c.AL_ZONENAME,a.AL_OPERATOR,a.AL_ALARMDEVICETYPECODE, ';
  stSql := stSql + ' a.AL_ALARMMODECODE,a.AL_ZONENO,a.AL_ALARMSTATUSCODE,d.AL_ALARMNAME,a.AL_SUBADDR,';
  stSql := stSql + ' a.AL_CHECKCODE,a.AL_CHECKMSG,a.AL_UPDATEOPERATOR,e.AC_DEVICENAME ';
  stSql := stSql + ' From TB_ALARMEVENT a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO  ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID  )';
    end;
  end;
  stSql := stSql + ' Left Join TB_ALARMDEVICE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID  )';
  stSql := stSql + ' Left Join TB_ALARMSTATUSCODE d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.AL_ALARMSTATUSCODE = d.AL_ALARMSTATUSCODE ) ';
  stSql := stSql + ' Left Join TB_ACCESSDEVICE e ';
  stSql := stSql + ' ON( a.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = e.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = e.AC_ECUID ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AL_DATE BETWEEN ''' + aFromDate
                 + ''' AND ''' + aToDate + ''' ';
  if Trim(aNodeNo) <> '' then
  begin
    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
    stSql := stSql + ' AND a.AC_ECUID = ''' + aEcuId + ''' ';
  end;
  if Trim(aAlarmType) <> '' then
  begin
    stSql := stSql + ' AND a.AL_ALARMSTATUSCODE = ''' + aAlarmType + ''' ' ;
  end;
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND c.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND c.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND c.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND c.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND c.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND c.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;
  
  if aOrderASC then
    stSql := stsql + ' Order by a.AL_DATE ASC '
  else stSql := stsql + ' Order by a.AL_DATE DESC ';
  result := stSql;
end;

function TFireBird.SelectTB_ALARMGRADEJoinBase(aBuildingCode, aFloorCode,
  aAreaCode, aCardNo: string): string;
var
  stSql : string;
begin
  stSql := ' select a.AL_ZONENAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,c.DE_RCVACK   ';
  stSql := stSql + ' From TB_ALARMDEVICE a ';
{  stSql := stSql + ' INNER JOIN TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE  ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';  }
  stSql := stSql + ' INNER JOIN TB_DEVICECARDNO c  ';
  stSql := stSql + ' ON (a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID  ';
  stSql := stSql + ' AND c.DE_USEALARM = ''Y'' ';
  stSql := stSql + ' AND c.DE_PERMIT = ''L''  ';
  stSql := stSql + ' )  ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE d ';
      stSql := stSql + ' ON (a.GROUP_CODE = d.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = d.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = d.AC_ECUID ) ';
    end;
  end;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND c.CA_CARDNO = ''' + aCardNo + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' '
      else
        stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else
    begin
      if BuildingGrade = 4 then stSql := stSql + ' AND d.AD_USERID = ''' + Master_ID + ''' ';
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end;
  end else
  begin
    if (aBuildingCode <> '') and (aBuildingCode <> '000') then
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
    if (aFloorCode <> '') and (aFloorCode <> '000') then
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
    if (aAreaCode <> '') and (aAreaCode <> '000') then
      stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  end;
  result := stSql;
end;

function TFireBird.SelectTB_CARDAdminJoinBase: string;
var
  stSql : string;
begin
  stSql := 'select a.CA_CARDNO,a.CA_CARDTYPE,b.CO_COMPANYCODE,b.EM_NAME,b.EM_CODE,';
  stSql := stSql + ' c.CO_NAME as CO_COMPANYNAME,b.CO_JIJUMCODE,d.CO_NAME as CO_JIJUMNAME,b.CO_DEPARTCODE,e.CO_NAME as CO_DEPARTNAME, ';
  stSql := stSql + ' b.PO_POSICODE,f.PO_NAME ';
  stSql := stSql + ' from TB_CARD a  ';
  stSql := stSql + ' Left JOIN TB_EMPLOYEE b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE )';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON (b.Group_Code = c.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON (b.Group_Code = d.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = d.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = d.CO_JIJUMCODE  ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON (b.Group_Code = e.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = e.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = e.CO_JIJUMCODE  ';
  stSql := stSql + ' AND b.CO_DEPARTCODE = e.CO_DEPARTCODE  ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( b.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.CA_CARDTYPE = ''1'' ';
  result := stSql;
end;

function TFireBird.SelectTB_CARDFromAlarmGradeJoinBase(aAC_NODENO,
  aAC_ECUID: string): string;
var
  stSql : string;
begin
  stSql := 'select a.CA_CARDNO,a.CA_CARDTYPE,a.CA_LASTUSE,b.CO_COMPANYCODE,b.CO_JIJUMCODE,b.CO_DEPARTCODE,b.PO_POSICODE,b.EM_NAME,b.EM_CODE,';
  stSql := stSql + ' c.CO_NAME as CO_COMPANYNAME,d.CO_NAME as CO_JIJUMNAME,e.CO_NAME as CO_DEPARTNAME, ';
  stSql := stSql + ' f.PO_NAME,g.DE_RCVACK ';
  stSql := stSql + ' from TB_CARD a  ';
  stSql := stSql + ' Left JOIN TB_EMPLOYEE b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE )';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON (b.Group_Code = c.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON (b.Group_Code = d.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = d.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = d.CO_JIJUMCODE  ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON (b.Group_Code = e.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = e.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = e.CO_JIJUMCODE  ';
  stSql := stSql + ' AND b.CO_DEPARTCODE = e.CO_DEPARTCODE  ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( b.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' INNER JOIN TB_DEVICECARDNO G ';
  stSql := stSql + ' ON ( a.GROUP_CODE = G.GROUP_CODE ';
  stSql := stSql + ' AND a.CA_CARDNO = G.CA_CARDNO ';
  stSql := stSql + ' AND G.DE_USEALARM = ''Y'' ';
  stSql := stSql + ' AND G.AC_NODENO = ' + aAC_NODENO ;
  stSql := stSql + ' AND G.AC_ECUID = ''' + aAC_ECUID + ''') ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.CA_CARDTYPE = ''1'' ';

  result := stSql;
end;

function TFireBird.SelectTB_CARDFromDoorGradeJoinBase(aAC_NODENO,
  aAC_ECUID, aDoorNo: string): string;
var
  stSql : string;
begin
  stSql := 'select a.CA_CARDNO,a.CA_CARDTYPE,a.CA_LASTUSE,b.CO_COMPANYCODE,b.EM_NAME,b.EM_CODE,';
  stSql := stSql + ' c.CO_NAME as CO_COMPANYNAME,b.CO_JIJUMCODE,d.CO_NAME as CO_JIJUMNAME,b.CO_DEPARTCODE,e.CO_NAME as CO_DEPARTNAME, ';
  stSql := stSql + ' b.PO_POSICODE,f.PO_NAME,g.DE_RCVACK ';
  stSql := stSql + ' from TB_CARD a  ';
  stSql := stSql + ' Left JOIN TB_EMPLOYEE b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE )';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON (b.Group_Code = c.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON (b.Group_Code = d.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = d.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = d.CO_JIJUMCODE  ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON (b.Group_Code = e.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = e.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = e.CO_JIJUMCODE  ';
  stSql := stSql + ' AND b.CO_DEPARTCODE = e.CO_DEPARTCODE  ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( b.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND b.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' INNER JOIN TB_DEVICECARDNO G ';
  stSql := stSql + ' ON ( a.GROUP_CODE = G.GROUP_CODE ';
  stSql := stSql + ' AND a.CA_CARDNO = G.CA_CARDNO ';
  stSql := stSql + ' AND G.DE_USEACCESS = ''Y'' ';
  stSql := stSql + ' AND G.AC_NODENO = ' + aAC_NODENO ;
  stSql := stSql + ' AND G.AC_ECUID = ''' + aAC_ECUID + ''' ';
  if aDoorNo = '1' then stSql := stSql + ' AND G.DE_DOOR1 = ''Y'' '
  else stSql := stSql + ' AND G.DE_DOOR2 = ''Y'' ';
  stSql := stSql + ')';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.CA_CARDTYPE = ''1'' ';

  result := stSql;
end;

function TFireBird.SelectTB_CARDJoinTBEmployee: string;
var
  stSql : string;
begin
  stSql := 'select a.CO_COMPANYCODE,a.CA_CARDNO,a.CA_CARDTYPE,c.CO_NAME as COMPANYNAME,';
  stSql := stSql + ' b.CO_JIJUMCODE,d.CO_NAME as JIJUMNAME,';
  stSql := stSql + ' b.CO_DEPARTCODE,e.CO_NAME as DEPARTNAME,';
  stSql := stSql + ' b.PO_POSICODE,f.PO_NAME,';
  stSql := stSql + ' a.EM_CODE,b.EM_NAME,b.em_retiredate,b.FDMS_ID,b.EM_HANDPHONE ';
  stSql := stSql + ' from TB_CARD a ';
  stSql := stSql + ' Left Join TB_EMPLOYEE b ';
  stSql := stSql + ' ON(a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ) ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON(b.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON(b.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = d.CO_COMPANYCODE ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = d.CO_JIJUMCODE ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'' ) ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON(b.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = e.CO_COMPANYCODE ';
  stSql := stSql + ' AND b.CO_JIJUMCODE = e.CO_JIJUMCODE ';
  stSql := stSql + ' AND b.CO_DEPARTCODE = e.CO_DEPARTCODE ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'' ) ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON(b.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = f.CO_COMPANYCODE ';
  stSql := stSql + ' AND b.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  result := stSql;
end;

function TFireBird.SelectTB_DEVICECARDNOCardPermit: string;
var
  stSql : string;
begin
  stSql := 'Select a.*,b.positionnum,c.em_retiredate from TB_DEVICECARDNO a ';
  stSql := stSql + ' Left Join TB_CARD b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.CA_CARDNO = b.CA_CARDNO ) ';
  stSql := stSql + ' Left Join TB_EMPLOYEE c ';
  stSql := stSql + ' ON (b.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND b.EM_CODE = c.EM_CODE ) ';
  result := stSql;

end;

function TFireBird.SelectTB_DEVICECARDNODownLoadCard: string;
var
  stSql : string;
begin
  stSql := 'Select ';
  stSql := stSql + 'a.ac_nodeno,a.ac_ecuid,a.ca_cardno,';
  stSql := stSql + 'a.de_door1,a.de_door2,a.de_useaccess,a.de_usealarm,';
  stSql := stSql + 'a.de_timecode,a.de_permit,a.ac_mcuid,b.positionnum,c.em_retiredate ';
  stSql := stSql + ' from TB_DEVICECARDNO a';
  stSql := stsql + ' Left Join TB_CARD b ';
  stSql := stSql + ' ON( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.ca_cardno = b.ca_cardno ) ';
  stSql := stSql + ' Left Join TB_EMPLOYEE c ';
  stSql := stSql + ' ON( b.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND b.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND b.EM_CODE = c.EM_CODE )';
  result := stSql;
end;

function TFireBird.SelectTB_DOORGetDoorInfo: string;
var
  stSql : string;
begin
  stSql := ' Select a.AC_NODENO,a.DO_DoorNo,b.AC_MCUIP,b.AC_MCUPORT,b.AC_MCUID, ';
  stSql := stSql + ' b.AC_DEVICENAME as MCU_NAME,c.AC_ECUID,c.AC_DEVICENAME as ECU_NAME ';
  stSql := stSql + ' from TB_DOOR a ';
  stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND b.AC_ECUID = ''00'' ) ';
  stSql := stSql + ' Left Join TB_ACCESSDEVICE c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ) ';

  result := stSql ;

end;

function TFireBird.selectTB_DOORJoinAdmin(aBuildingCode, aFloorCode,
  aAreaCode: string; aDoorView: Boolean): string;
var
  stSql : string;
begin
  stSql := ' select a.DO_DOORNONAME,a.DO_DOORNO,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.DO_VIEWSEQ ' ;
  stSql := stSql + ' from TB_DOOR a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO )';
    end;
  end;
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' '
      else
        stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else
    begin
      if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end;
  end else
  begin
    if (aBuildingCode <> '') and (aBuildingCode <> '000') then
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
    if (aFloorCode <> '') and (aFloorCode <> '000') then
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
    if (aAreaCode <> '') and (aAreaCode <> '000') then
      stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  end;
  if aDoorView then stSql := stSql + ' order by a.DO_VIEWSEQ'
  else stSql := stSql + ' order by a.AC_NODENO,a.AC_ECUID,a.DO_DOORNO';

  result := stSql;
end;

function TFireBird.selectTB_DOORJoinGrade(aBuildingCode, aFloorCode,
  aAreaCode, aCardNo: string): string;
var
  stSql :string;
begin
  stSql := ' select a.DO_VIEWSEQ,a.DO_DOORNONAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.DO_DOORNO,b.DE_RCVACK  ';
  stSql := stSql + ' From TB_DOOR a ';
  stSql := stSql + ' INNER JOIN TB_DEVICECARDNO b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE  ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO  ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
  stSql := stSql + ' AND ( (a.DO_DOORNO = ''1'' AND b.DE_DOOR1 = ''Y'') OR  ';
  stSql := stSql + '       (a.DO_DOORNO = ''2'' AND b.DE_DOOR2 = ''Y'') ) ';
  stSql := stSql + ' AND b.DE_USEACCESS = ''Y'' ';
  stSql := stSql + ' AND b.DE_PERMIT = ''L''';
  stSql := stSql + ' ) ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR c ';
      stSql := stSql + ' ON (a.GROUP_CODE = c.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = c.DO_DOORNO )';
    end;
  end;
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND b.CA_CARDNO = ''' + aCardNo + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' '
      else
        stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else
    begin
      if BuildingGrade = 4 then stSql := stSql + ' AND c.AD_USERID = ''' + Master_ID + ''' ';
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end;
  end else
  begin
    if (aBuildingCode <> '') and (aBuildingCode <> '000') then
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
    if (aFloorCode <> '') and (aFloorCode <> '000') then
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
    if (aAreaCode <> '') and (aAreaCode <> '000') then
      stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  end;
  stSql := stSql + ' order by a.DO_VIEWSEQ ';

  result := stSql;
end;

function TFireBird.selectTB_DOORJoinPromiseCode(
  aPromisecode: string): string;
var
  stSql:string;
begin
  stSql := ' select a.DO_DOORNONAME,a.DO_DOORNO,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.DO_VIEWSEQ, ' ;
  stSql := stSql + 'c.DE_DOOR1,c.DE_DOOR2,c.DE_USEALARM,c.DE_PERMIT ';
  stSql := stSql + ' from TB_DOOR a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO )';
    end;
  end;
  stSql := stSql + ' Inner Join (select * from TB_DEVICECARDNO_PROMISE where PR_NAME = ''' + aPromisecode + ''') c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;
  stSql := stSql + ' order by a.DO_VIEWSEQ ';

  result := stSql;
end;

function TFireBird.SelectTB_EMPLOYEE: string;
var
  stSql : string;
begin
  stSql := 'select a.AT_ATCODE,a.EM_PASS,c.CO_NAME as COMPANYNAME, ';
  stSql := stSql + ' d.CO_NAME as JIJUMNAME,e.CO_NAME as DEPARTNAME,f.PO_NAME,a.EM_CODE,';
  stSql := stSql + ' a.EM_NAME,a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE,a.PO_POSICODE, ';
  stSql := stSql + ' a.EM_COPHONE,a.EM_JOINDATE,a.EM_RETIREDATE,a.ZI_ZIPCODE,';
  stSql := stSql + ' a.EM_ADDR1,a.EM_ADDR2,EM_HOMEPHONE,a.EM_HANDPHONE,a.EM_IMAGE,';
  stSql := stSql + ' a.RG_CODE ';
  stSql := stSql + ' from TB_EMPLOYEE a ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = d.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = d.CO_JIJUMCODE ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON ( a.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = e.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = e.CO_JIJUMCODE ';
  stSql := stSql + ' AND a.CO_DEPARTCODE = e.CO_DEPARTCODE ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( a.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';

  result := stSql;
end;

function TFireBird.SelectTB_EMPLOYEEATVacation(aMonth: string): string;
var
  stSql : string;
begin
  stSql := 'select ';
  stSql := stSql + ' a.CO_COMPANYCODE,a.EM_CODE,a.EM_NAME, ';
  stSql := stSql + ' c.VA_DATE,c.AT_VACODE,d.AT_VAMARK ';
  stSql := stSql + ' from TB_EMPLOYEE a ';
  stSql := stSql + ' Inner Join TB_ATVACATION c ';
  stSql := stSql + ' ON (a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.EM_CODE = c.EM_CODE ';
  stSql := stSql + ' AND substring(c.VA_DATE from 1 for 6) = ''' + aMonth + ''') ';
  stSql := stSql + ' Left Join TB_ATVACODE d ';
  stSql := stSql + ' ON (c.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND c.AT_VACODE = d.AT_VACODE) ';
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  result := stSql;
end;

function TFireBird.SelectTB_EMPLOYEEDupCardJoinBase: string;
var
  stSql : string;
begin
  stSql := 'select a.AT_ATCODE,a.EM_PASS,c.CO_NAME as COMPANYNAME, ';
  stSql := stSql + ' d.CO_NAME as JIJUMNAME,e.CO_NAME as DEPARTNAME,f.PO_NAME,a.EM_CODE,';
  stSql := stSql + ' a.EM_NAME,a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE,a.PO_POSICODE, ';
  stSql := stSql + ' a.EM_COPHONE,a.EM_JOINDATE,a.EM_RETIREDATE,a.ZI_ZIPCODE,';
  stSql := stSql + ' a.EM_ADDR1,a.EM_ADDR2,EM_HOMEPHONE,a.EM_HANDPHONE,a.EM_IMAGE,a.RG_CODE ';
  stSql := stSql + ' from TB_EMPLOYEE a ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = d.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = d.CO_JIJUMCODE ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON ( a.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = e.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = e.CO_JIJUMCODE ';
  stSql := stSql + ' AND a.CO_DEPARTCODE = e.CO_DEPARTCODE ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( a.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';

  result := stSql;
end;

function TFireBird.SelectTB_EMPLOYEEJoinBase: string;
var
  stSql : string;
begin
  stSql := 'select a.AT_ATCODE,a.EM_PASS,c.CO_NAME as COMPANYNAME, ';
  stSql := stSql + ' d.CO_NAME as JIJUMNAME,e.CO_NAME as DEPARTNAME,f.PO_NAME,a.EM_CODE,';
  stSql := stSql + ' a.EM_NAME,a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE,a.PO_POSICODE, ';
  stSql := stSql + ' a.EM_COPHONE,a.EM_JOINDATE,a.EM_RETIREDATE,a.ZI_ZIPCODE,';
  stSql := stSql + ' a.EM_ADDR1,a.EM_ADDR2,EM_HOMEPHONE,a.EM_HANDPHONE,a.EM_IMAGE,';
  stSql := stSql + ' b.CA_CARDNO,b.CA_CARDTYPE,a.RG_CODE,a.FDMS_ID ';
  stSql := stSql + ' from TB_EMPLOYEE a ';
  stSql := stSql + ' Left Join TB_CARD b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE ';
//  stSql := stSql + ' AND b.CA_CARDTYPE = ''4'' ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = d.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = d.CO_JIJUMCODE ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON ( a.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = e.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = e.CO_JIJUMCODE ';
  stSql := stSql + ' AND a.CO_DEPARTCODE = e.CO_DEPARTCODE ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( a.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';

  result := stSql;
end;

function TFireBird.SelectTB_EMPLOYEEJoinFoodEventFromD2D(aFoodArea,
  aFoodCode, aFoodPermit, aStartDate, aEndDate: string): string;
var
  stSql : string;
begin
  stSql := 'Select SubString(b.FO_DATE from 1 for 4) + ''-'' + SubString(b.FO_DATE from 5 for 2) + ''-'' + SubString(b.FO_DATE from 7 for 2) as FO_DATE,';
  stSql := stSql + 'SubString(b.FO_TIME from 1 for 2) + '':'' + SubString(b.FO_TIME from 3 for 2) + '':'' + SubString(b.FO_TIME from 5 for 2) as FO_TIME, ' ;
  stSql := stSql + ' CASE ';
  stsql := stSql + ' WHEN b.FO_PERMIT = ''N'' then ''�̽���'' ';
  stsql := stSql + ' WHEN b.FO_PERMIT = ''Y'' then ''����'' ';
  stSql := stSql + ' ELSE '''' ';
  stSql := stSql + ' END as FO_PERMIT, ';
  stSql := stSql + ' b.FO_CONTENT,b.FO_FOODCODE,';
  stSql := stSql + ' b.AC_NODENO,b.AC_ECUID,b.FO_DOORNO, ';
  stSql := stSql + ' a.CO_COMPANYCODE,c.CO_NAME as COMPANY_NAME, ';
  stSql := stSql + ' a.CO_JIJUMCODE,d.CO_NAME as JIJUM_NAME, ';
  stSql := stSql + ' a.CO_DEPARTCODE,e.CO_NAME as DEPART_NAME,a.PO_POSICODE,f.PO_NAME, ';
  stSql := stSql + ' a.EM_CODE,a.EM_NAME,g.FO_CODENAME,h.FO_NAME ';
  stSql := stSql + ' From TB_EMPLOYEE a ';
  stSql := stSql + ' Inner Join TB_FOODEVENT b ';
  stSql := stSql + ' ON(a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND b.FO_DATE BETWEEN ''' + aStartDate + ''' ';
  stSql := stSql + ' AND ''' + aEndDate + ''' ';
  if aFoodCode <> '' then
    stSql := stSql + ' AND b.FO_FOODCODE = ''' + aFoodCode + ''' ';
  if aFoodPermit <> '' then
    stSql := stSql + ' AND b.FO_PERMIT = ''' + aFoodPermit + ''' ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON (a.Group_Code = c.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON (a.Group_Code = d.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = d.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = d.CO_JIJUMCODE  ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON (a.Group_Code = e.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = e.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = e.CO_JIJUMCODE  ';
  stSql := stSql + ' AND a.CO_DEPARTCODE = e.CO_DEPARTCODE  ';
  stSql := stSql + ' AND d.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( a.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Inner Join TB_FOODCODE g ';
  stSql := stSql + ' ON ( b.GROUP_CODE = g.GROUP_CODE ';
  stSql := stSql + ' AND b.FO_FOODCODE = g.FO_FOODCODE ) ';
  stSql := stSql + ' Left Join TB_FOOD h ';
  stSql := stSql + ' ON (b.GROUP_CODE = h.GROUP_CODE ';
  stSql := stSql + ' AND b.AC_NODENO = h.AC_NODENO ';
  stSql := stSql + ' AND b.AC_ECUID = h.AC_ECUID ';
  stSql := stSql + ' AND b.FO_DOORNO = h.FO_DOORNO ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if aFoodArea <> '' then
  begin
    stSql := stSql + ' AND b.AC_NODENO = ' + copy(aFoodArea,1,3);
    stSql := stSql + ' AND b.AC_ECUID = ''' + copy(aFoodArea,4,2) + ''' ';
    stSql := stSql + ' AND b.FO_DOORNO = ''' + copy(aFoodArea,6,1) + ''' ';
  end;
  result := stSql;
end;

function TFireBird.SelectTB_EMPLOYEEJoinKTCardISSUE: string;
var
  stSql : string;
begin
  stSql := 'select a.AT_ATCODE,a.EM_PASS,c.CO_NAME as COMPANYNAME, ';
  stSql := stSql + ' d.CO_NAME as JIJUMNAME,e.CO_NAME as DEPARTNAME,f.PO_NAME,a.EM_CODE,';
  stSql := stSql + ' a.EM_NAME,a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE,a.PO_POSICODE, ';
  stSql := stSql + ' a.EM_COPHONE,a.EM_JOINDATE,a.EM_RETIREDATE,a.ZI_ZIPCODE,';
  stSql := stSql + ' a.EM_ADDR1,a.EM_ADDR2,EM_HOMEPHONE,a.EM_HANDPHONE,a.EM_IMAGE,';
  stSql := stSql + ' b.CA_CARDNO,b.CA_CARDTYPE,g.CARD_SEQ ';
  stSql := stSql + ' from TB_EMPLOYEE a ';
  stSql := stSql + ' Left Join TB_CARD b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE ) ';
  stSql := stSql + ' Left Join TB_COMPANY c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = c.CO_COMPANYCODE ';
  stSql := stSql + ' AND c.CO_GUBUN = ''1'') ';
  stSql := stSql + ' Left Join TB_COMPANY d ';
  stSql := stSql + ' ON ( a.GROUP_CODE = d.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = d.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = d.CO_JIJUMCODE ';
  stSql := stSql + ' AND d.CO_GUBUN = ''2'') ';
  stSql := stSql + ' Left Join TB_COMPANY e ';
  stSql := stSql + ' ON ( a.GROUP_CODE = e.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = e.CO_COMPANYCODE ';
  stSql := stSql + ' AND a.CO_JIJUMCODE = e.CO_JIJUMCODE ';
  stSql := stSql + ' AND a.CO_DEPARTCODE = e.CO_DEPARTCODE ';
  stSql := stSql + ' AND e.CO_GUBUN = ''3'') ';
  stSql := stSql + ' Left Join TB_POSI f ';
  stSql := stSql + ' ON ( a.GROUP_CODE = f.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = f.CO_COMPANYCODE  ';
  stSql := stSql + ' AND a.PO_POSICODE = f.PO_POSICODE ) ';
  stSql := stSql + ' Left Join TB_KTCARDISSUE g';
  stSql := stSql + ' ON ( a.GROUP_CODE = g.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = g.EM_CODE ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';

  result := stSql;
end;

function TFireBird.selectTB_FOODJoinPromiseCode(
  aPromisecode: string): string;
var
  stSql : string;
begin
  stSql := 'select a.FO_NAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.FO_DOORNO, ';
  stSql := stSql + 'c.DE_DOOR1,c.DE_DOOR2,c.DE_USEALARM,c.DE_PERMIT ';
  stSql := stSql + ' from TB_FOOD a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINFOOD b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID  ';
      stSql := stSql + ' AND a.FO_DOORNO = b.FO_DOORNO ) ';
    end;
  end;
  stSql := stSql + ' Inner Join (select * from TB_DEVICECARDNO_PROMISE where PR_NAME = ''' + aPromisecode + ''') c ';
  stSql := stSql + ' ON ( a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID )';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
  end;

  result := stSql;
end;

function TFireBird.SelectTB_GRADEPROGRAMGradeJoinBase(aGradeCode,
  aProgramGroupCode: string): string;
var
  stSql :string;
begin
  stSql := 'select a.*,b.PR_PROGRAMNAME from TB_GRADEPROGRAM a ';
  stSql := stSql + ' Inner Join TB_PROGRAMID b ';
  stSql := stSql + ' ON (a.PR_PROGRAMID = b.PR_PROGRAMID AND a.GROUP_CODE = b.GROUP_CODE) ';
  stSql := stSql + ' Inner Join TB_PROGRAMGROUP c';
  stSql := stSql + ' ON (a.PR_GROUPCODE = c.PR_GROUPCODE AND a.GROUP_CODE = c.GROUP_CODE) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + '''';
  stSql := stSql + ' AND a.GR_GRADECODE = ''' + aGradeCode + '''';
  stSql := stSql + ' AND a.GR_GUBUN = ''1'' ';
  stSql := stSql + ' AND c.GUBUN = ''' + aProgramGroupCode + '''';
  result := stSql;
end;

function TFireBird.SelectTB_HOLIDAYFromMonth(aMonth: string): string;
var
  stSql : string;
begin
  stSql := 'select * from TB_Holiday ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND SUBSTRING(HO_DAY from 1 for 6) = ''' + aMonth + ''' ';
  result := stSql;

end;

function TFireBird.UpdateTB_DEVICECARDNOFromPromise(aPromiseGrade,
  aCardNO: string): string;
var
  stSql : string;
begin
    stSql := ' Update A ';
    stSql := stSql + ' Set a.DE_DOOR1 = b.DE_DOOR1, ';
    stSql := stSql + '     a.DE_DOOR2 = b.DE_DOOR2, ';
    stSql := stSql + '     a.DE_USEACCESS = b.DE_USEACCESS, ';
    stSql := stSql + '     a.DE_USEALARM = b.DE_USEALARM, ';
    stSql := stSql + '     a.DE_TIMECODE = b.DE_TIMECODE, ';
    stSql := stSql + '     a.DE_PERMIT = b.DE_PERMIT, ';
    stSql := stSql + '     a.DE_RCVACK = ''N'', ';
    stSql := stSql + '     a.DE_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''', ';
    stSql := stSql + '     a.DE_UPDATEOPERATOR = ''' + Master_ID + ''' ';
    stSql := stSql + ' From TB_DEVICECARDNO A,TB_DEVICECARDNO_PROMISE B ';
    stSql := stSql + ' WHERE A.GROUP_CODE = B.GROUP_CODE ';
    stSql := stSql + ' AND A.AC_NODENO = B.AC_NODENO ';
    stSql := stSql + ' AND a.AC_ECUID = B.AC_ECUID ';
    stSql := stSql + ' AND B.PR_NAME = ''' + aPromiseGrade + ''' ';
    stSql := stSql + ' AND A.CA_CARDNO = ''' + aCardNO + ''' ';
    stSql := stSql + ' AND A.GROUP_CODE = ''' + GROUPCODE + ''' ';
    result := stSql;
end;

function TFireBird.UpdateTB_PROGRAMIDSetVisible: string;
var
  stSql : string;
begin
  stSql := 'UPDATE TB_PROGRAMID a  ' ;
  stSql := stSql + ' SET PR_VISIBLE = ( ' ;
  stSql := stSql + '    SELECT CO_CONFIGVALUE ' ;
  stSql := stSql + '    FROM TB_CONFIG b  ' ;
  stSql := stSql + '    where b.CO_CONFIGGROUP = ''MOSTYPE'' ' ;
  stSql := stSql + '    AND a.CO_CONFIGCODE = b.CO_CONFIGCODE) ' ;
  stSql := stSql + ' WHERE a.PR_VISIBLE <> ''D'' ' ;
  result := stSql;

end;

end.