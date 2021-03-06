unit uDeviceCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, BaseGrid, AdvGrid, ExtCtrls, Buttons,
  Spin, uSubForm, CommandArray, DB, ADODB,ActiveX,Imm, AdvObj;

type
  TfmDeviceCode = class(TfmASubForm)
    PageControl1: TPageControl;
    MCUTab: TTabSheet;
    ECUTab: TTabSheet;
    StatusBar1: TStatusBar;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    lb_McuIp: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    lb_McuID: TLabel;
    Label19: TLabel;
    ed_McuIp: TEdit;
    cmb_sBuildingCode1: TComboBox;
    cmb_sFloorCode1: TComboBox;
    cmb_sAreaCode1: TComboBox;
    ed_McuPort: TEdit;
    ed_MCUID: TEdit;
    ed_MCUname: TEdit;
    gb_Device: TGroupBox;
    chk_McuAC: TCheckBox;
    chk_MCUPt: TCheckBox;
    chk_McuAT: TCheckBox;
    Splitter1: TSplitter;
    GroupBox4: TGroupBox;
    Panel6: TPanel;
    GroupBox10: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    cmb_sBuildingCode2: TComboBox;
    cmb_sFloorCode2: TComboBox;
    cmb_sAreaCode2: TComboBox;
    ed_EcuName: TEdit;
    Panel5: TPanel;
    GroupBox11: TGroupBox;
    Label9: TLabel;
    cmb_MCUCode2: TComboBox;
    sg_ECUCode: TAdvStringGrid;
    Splitter2: TSplitter;
    GroupBox14: TGroupBox;
    Label26: TLabel;
    cmb_BuildingCode1: TComboBox;
    Label27: TLabel;
    cmb_FloorCode1: TComboBox;
    Label28: TLabel;
    cmb_AreaCode1: TComboBox;
    Label29: TLabel;
    cmb_BuildingCode2: TComboBox;
    Label30: TLabel;
    cmb_FloorCode2: TComboBox;
    Label31: TLabel;
    cmb_AreaCode2: TComboBox;
    Label10: TLabel;
    ed_Ecuno: TSpinEdit;
    chk_McuReg: TCheckBox;
    Label21: TLabel;
    chk_EcuReg: TCheckBox;
    gb_Device2: TGroupBox;
    chk_EcuAC: TCheckBox;
    chk_EcuPt: TCheckBox;
    chk_EcuAT: TCheckBox;
    ed_TotWidth1: TEdit;
    ed_TotHeight1: TEdit;
    ed_CurX1: TEdit;
    ed_CurY1: TEdit;
    ed_NodeNo: TEdit;
    ed_NodeNo2: TEdit;
    ed_TotWidth2: TEdit;
    ed_TotHeight2: TEdit;
    ed_CurX2: TEdit;
    ed_CurY2: TEdit;
    cmb_sMCUCode2: TComboBox;
    sg_MCUCode: TAdvStringGrid;
    GroupBox8: TGroupBox;
    btn_Insert: TSpeedButton;
    btn_Update: TSpeedButton;
    btn_Save: TSpeedButton;
    btn_Delete: TSpeedButton;
    btn_Close: TSpeedButton;
    btnMCUPosition: TBitBtn;
    btnECUPosition: TBitBtn;
    ADONode: TADOQuery;
    ADOECU: TADOQuery;
    ADOQuery: TADOQuery;
    ADOExec: TADOQuery;
    Panel12: TPanel;
    Label67: TLabel;
    btn_Cancel: TSpeedButton;
    Label74: TLabel;
    cmb_CardReaderType: TComboBox;
    cmb_CardReaderType2: TComboBox;
    Label75: TLabel;
    chk_McuUpdate: TCheckBox;
    chk_EcuUpdate: TCheckBox;
    rg_Type: TRadioGroup;
    cmb_Comport: TComboBox;
    procedure StringGrideDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cmb_BuildingCode1Change(Sender: TObject);
    procedure cmb_BuildingCode2Change(Sender: TObject);
    procedure cmb_sBuildingCode1Change(Sender: TObject);
    procedure cmb_sBuildingCode2Change(Sender: TObject);
    procedure cmb_FloorCode1Change(Sender: TObject);
    procedure cmb_FloorCode2Change(Sender: TObject);
    procedure cmb_sFloorCode1Change(Sender: TObject);
    procedure cmb_sFloorCode2Change(Sender: TObject);
    procedure cmb_AreaCode2Change(Sender: TObject);
    procedure cmb_sAreaCode2Change(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure cmb_AreaCode1Change(Sender: TObject);
    procedure sg_MCUCodeClick(Sender: TObject);
    procedure btn_InsertClick(Sender: TObject);
    procedure btn_UpdateClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure cmb_MCUCode2Change(Sender: TObject);
    procedure sg_ECUCodeClick(Sender: TObject);
    procedure cmb_sMCUCode2Change(Sender: TObject);
    procedure chk_EcuACClick(Sender: TObject);
    procedure chk_EcuPtClick(Sender: TObject);
    procedure chk_EcuATClick(Sender: TObject);
    procedure chk_McuACClick(Sender: TObject);
    procedure chk_MCUPtClick(Sender: TObject);
    procedure chk_McuATClick(Sender: TObject);
    procedure btnMCUPositionClick(Sender: TObject);
    procedure btnECUPositionClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_CardReaderTypeChange(Sender: TObject);
    procedure cmb_CardReaderType2Click(Sender: TObject);
    procedure ed_EcunoChange(Sender: TObject);
    procedure cmb_sAreaCode1Change(Sender: TObject);
    procedure ed_EcuNameEnter(Sender: TObject);
    procedure rg_TypeClick(Sender: TObject);
  private
    { Private declarations }
    L_nTopRow : integer;
    BuildingCodeList : TStringList;
    sBuildingCodeList : TStringList;
    FloorCodeList : TStringList;
    sFloorCodeList : TStringList;
    AreaCodeList :TStringList;
    sAreaCodeList :TStringList;
    MCUCodeList : TStringList;
    sMCUCodeList : TStringList;
    ECUCodeList : TStringList;
    sECUCodeList : TStringList;
    AlarmCodeList : TStringList;
    sAlarmCodeList : TStringList;

    State : string;
    PrevECUNO : integer;

    procedure LoadBuildingCode(cmb_Box:TComboBox);
    procedure LoadsBuildingCode(cmb_Box:TComboBox);
    procedure LoadFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
    procedure LoadsFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
    procedure LoadAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
    procedure LoadsAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
    procedure LoadMCUCode(aBuildingCode,aFloorCode,aAreaCode:string;cmb_Box:TComboBox);
    procedure LoadsMCUCode(aBuildingCode,aFloorCode,aAreaCode:string;cmb_Box:TComboBox);
    procedure LoadECUCode(aMCUCode,aGubun:string;cmb_Box:TComboBox);
    procedure LoadsECUCode(aNodeNo,aGubun:string;cmb_Box:TComboBox);
    procedure LoadAlarmCode(aNodeNo:string;cmb_Box:TComboBox);
    procedure LoadsAlarmCode(aNodeNo:string;cmb_Box:TComboBox);
    procedure MCUSearch(aBuildingCode,aFloorCode,aAreaCode,aNodeNo:String;aTop:integer=0);
    procedure ECUSearch(aBuildingCode,aFloorCode,aAreaCode,aNodeNo,aSearchECUID:String;aTop:integer=0);
    Function UpdateTB_NODE_RCV(aNodeNo,aSendAck:string):Boolean;
    Function InsertTB_ACCESSDEVICE(aNodeNo,aMcuID,aEcuID,aMcuIp,aMcuPort,aName,aBuildingCode,
                                   aFloorCode,aAreaCode,aRegState,aTotWidth,aTotHeight,
                                   aCurX,aCurY,aMcuAC,aMcuFd,aMcuPt,aMcuAt,aSendAck,aCardReaderType,
                                   aGubun,aUpdate,aComPort:string):Boolean;
    Function UpdateTB_ACCESSDEVICE(aNodeNo,aMcuID,aEcuID,aMcuIp,aMcuPort,aName,aBuildingCode,
                                   aFloorCode,aAreaCode,aRegState,aTotWidth,aTotHeight,
                                   aCurX,aCurY,aMcuAC,aMcuFd,aMcuPt,aMcuAt,aSendAck,aCardReaderType,
                                   aUpdate,aComPort:string):Boolean;
    Function UpdateTB_ACCESSDEVICEInfo(aNodeNo,aMcuID,aEcuID,aMcuIp,aMcuPort,aName,aBuildingCode,
                                   aFloorCode,aAreaCode,aRegState,aTotWidth,aTotHeight,
                                   aCurX,aCurY,aComPort:string):Boolean;
    Function UpdateTB_ACCESSDEVICESendAck(aNodeNo,aEcuID,aSendAck:string):Boolean;
    Function InsertTB_DOOR(aNodeNo,aEcuID,aDoorNo,aName,aBuildingCode,aFloorCode,
                                   aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aDoorSeq :string):Boolean;
    Function UpdateTB_DOOR(aNodeNo,aEcuID,aDoorNo,aName,aBuildingCode,aFloorCode,
                                   aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aDoorSeq :string):Boolean;
    Function InsertTB_ALARMDEVICE(aNodeNo,aEcuID,aName,aBuildingCode,aFloorCode,
                                   aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aAlarmSeq :string):Boolean;
    Function UpdateTB_ALARMDEVICE(aNodeNo,aEcuID,aName,aBuildingCode,aFloorCode,
                                   aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aDoorSeq :string):Boolean;
    Function InsertTB_ARMAREA(aNodeNo,aEcuID,aArmAreaNo,aName,aArmAreaUse,aBuildingCode,
                                  aFloorCode,aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aAlarmSeq:string):Boolean;
    Function InsertTB_ZoneDEVICE(aACNODENO,aACECUID,aZoneNo,aZoneName,aRegState,
                                 aBuildingCode,aFloorCode,aAreaCode,aTotWidth,
                                 aTotHeight,aCurX,aCurY:string):Boolean;
    Function UpdateTB_ZoneDEVICE(aACNODENO,aACECUID,aZoneNo,aZoneName,aRegState,
                                 aBuildingCode,aFloorCode,aAreaCode,aTotWidth,
                                 aTotHeight,aCurX,aCurY:string):Boolean;
    Function InsertTB_FOOD(aNodeNo,aEcuID,aDoorNo,aName,aBuildingCode,aFloorCode,
                                   aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aFoodAmtPer :string):Boolean;
    Function UpdateTB_FOOD(aNodeNo,aEcuID,aDoorNo,aName,aBuildingCode,aFloorCode,
                                   aAreaCode,aRegState,aTotWidth,aTotHeight,aCurX,
                                   aCurY,aFoodAmtPer :string):Boolean;
    Function UpdateDeviceCardNoSend(aNodeNo,aEcuID:string):Boolean;
    Function UpdateTB_CONFIG(aCONFIGGROUP,aCONFIGCODE,aCONFIGVALUE:string):Boolean;

    Function UpdateECUIDFromECU(aNodeNo,aPrevECUNO,aCurEcuno:string):Boolean;
    Function UpdateECUIDFromDOOR(aNodeNo,aPrevECUNO,aCurEcuno:string):Boolean;
    Function UpdateECUIDFromALARM(aNodeNo,aPrevECUNO,aCurEcuno:string):Boolean;
    Function UpdateECUIDFromFOOD(aNodeNo,aPrevECUNO,aCurEcuno:string):Boolean;
    Function UpdateECUIDFromCARDNO(aNodeNo,aPrevECUNO,aCurEcuno:string):Boolean;
    Function UpdateECUIDFromAdminDoor(aNodeNo,aPrevECUNO,aCurEcuno:string):Boolean;
    Function UpdateECUIDFromAdminFood(aNodeNO,aPrevECUNO,aCurEcuno:string):Boolean;

    Function DeleteTB_ACCESSDEVICE(aNodeNo,aEcuID:string):Boolean;
    Function DeleteTB_DOOR(aNodeNo,aEcuID,aDoorNo : string):Boolean;
    Function DeleteTB_FOOD(aNodeNo,aEcuID,aDoorNo : string):Boolean;
    Function DeleteTB_ALARMDEVICE(aACNODNON,aACECUID : string):Boolean;
    Function DupCheckMCU(aMcuIp,aMcuPort:string):Boolean;
    Function DupCheckMCUID(aMcuID : string):Boolean;
    Function DupCheckECU(aNodeNo,aEcuId:string):Boolean;
    Function DupCheckECUName(aNodeNo,aEcuId,aEcuName:string):Boolean;
    Function DupCheckDoor(aNodeNo,aECUID,aDoorNo:string):Boolean;
    Function DupCheckFood(aNodeNo,aECUID,aDoorNo:string):Boolean;
    Function DupCheckAlarm(aNodeNo,aECUID:string):Boolean;
    Function DupCheckZone(aNodeNo,aECUID,aZoneNo:string):Boolean;
    Function GarbageECUCheck(aNodeNo:string):Boolean;
    Function DeleteNODEECUALL(aNodeNo:string):Boolean;
    Function DeleteECUDoorAll(aNodeNo,aECUID:string):Boolean;
    Function DeleteECUAlarmAll(aNodeNo,aECUID:string):Boolean;
    Function DeleteECUZoneAll(aNodeNo,aECUID:string):Boolean;
    Function DeleteECUFoodAll(aNodeNo,aECUID:string):Boolean;
    Function DeleteReader(aNodeNo,aECUID:string):Boolean;
    Function DeleteECU(aNodeNo,aECUID:string):Boolean;

    Function GarbageDoorCheck(aNodeNo,aECUID:string):Boolean;
    Function GarbageAlarmCheck(aNodeNo,aECUID:string):Boolean;
    Function GarbageFoodCheck(aNodeNo,aECUID:string):Boolean;

    procedure MCUSave ;
    procedure ECUSave;
    Function CreateCardReader(aNodeNo,aEcuID:string):Boolean;
    Function DupCheckCardReader(aNodeNo,aEcuID,aReaderNo:string):Boolean;
    Function InsertIntoTB_Reader(aNodeNo,aEcuID,aReaderNo:string):Boolean;
    Function InsertAlarmDevice(aNodeNo,aEcuID,aName,aBuildingCode,aFloorCode,aAreaCode:string):Boolean;
    Function UpdateECUName(aNodeNo,aMcuName:string):Boolean; //메인 명칭 변경시 디폴트값인 경우 확장기명칭 변경
    Function UpdateDoorName(aNodeNo,aEcuID,aEcuName:string):Boolean; //해당 확장기의 디폴트값인 출입문 명칭을 변경하자
    Function DeleteAlarmDevice(aNodeNo,aEcuID:string):Boolean; //해당 방범기기를 삭제 하자
    Function InsertZoneDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode:string):Boolean; //존의 디폴트값을 생성하자.
    function InsertAlarmDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode:string):Boolean;
    function InsertARMAREADefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode:string):Boolean;
    function UpdateAlarmDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode:string):Boolean;
    function UpdateZoneDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode:string):Boolean;
    function UpdateARMAREADefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode:string):Boolean;

  public
    { Public declarations }
    WorkCode : integer;
    procedure FormClear;
    procedure FormEnable(aState:string);
    procedure ButtonEnable(aState:string);

    procedure MCUInsertClick;
    procedure ECUInsertClick;

    procedure DeleteMCUClick;
    procedure DeleteECUClick;
  private
    function NodeCount:integer;

  end;

var
  fmDeviceCode: TfmDeviceCode;

implementation
uses
  uLomosUtil, uDataModule1, uPositionSet, uEcuCount;

{$R *.dfm}

{ TfmDeviceCode }

procedure TfmDeviceCode.StringGrideDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  DataInCell : string;
  nLeft,nTop : integer;
begin
  if (AROW < (Sender as TStringGrid).FixedRows) then
  begin

    DataInCell := (Sender as TStringGrid).Cells[Acol,Arow];

    with (Sender as TStringGrid).Canvas do
    begin
      FillRect(Rect);  //켄버스를 칠한다.(기본값은 흰색)

      if DataInCell <> '' then
      begin
        nLeft := ((Rect.Right-Rect.Left) - TextWidth(DataInCell)) div 2;
        nTop := ((Rect.Bottom-Rect.Top) - TextHeight(DataInCell)) div 2;
        TextRect(Rect, Rect.Left + nLeft, Rect.Top + nTop, DataInCell);  //문자를 뿌려준다.. 기본은 검정색
      end;

    End;
  End;   
end;

procedure TfmDeviceCode.FormCreate(Sender: TObject);
begin
  L_nTopRow := 1;

  BuildingCodeList := TStringList.Create ;
  sBuildingCodeList := TStringList.Create ;
  FloorCodeList := TStringList.Create;
  sFloorCodeList := TStringList.Create;
  AreaCodeList := TStringList.Create;
  sAreaCodeList := TStringList.Create;
  MCUCodeList := TStringList.Create;
  sMCUCodeList := TStringList.Create;
  ECUCodeList := TStringList.Create;
  sECUCodeList := TStringList.Create;
  AlarmCodeList := TStringList.Create;
  sAlarmCodeList := TStringList.Create;

  if NETTYPE = 'RS232' then rg_Type.ItemIndex := 0
  else rg_Type.ItemIndex := 1;
  rg_TypeClick(self);

end;

procedure TfmDeviceCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    BuildingCodeList.Free ;
    sBuildingCodeList.Free ;
    FloorCodeList.Free;
    sFloorCodeList.Free;
    AreaCodeList.Free;
    sAreaCodeList.Free;
    MCUCodeList.Free;
    sMCUCodeList.Free;
    ECUCodeList.Free;
    sECUCodeList.Free;
    AlarmCodeList.Free;
    sAlarmCodeList.Free;

end;

procedure TfmDeviceCode.LoadAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  AreaCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''2'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;

  if (aFloorCode <> '') And (aFloorCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + '''';
  end else Exit;
  stSql := stSql + ' order by LO_DONGCODE,LO_FLOORCODE ';

  cmb_Box.Items.Add('전체');
  AreaCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        AreaCodeList.Add(FindField('LO_AREACODE').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadBuildingCode(cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin

  cmb_Box.Clear;
  BuildingCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';
  stSql := stSql + ' order by LO_DONGCODE ';

  cmb_Box.Items.Add('전체');
  BuildingCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        BuildingCodeList.Add(FindField('LO_DONGCODE').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadECUCode(aMCUCode,aGubun:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  ECUCodeList.Clear;

  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  if aGubun <> 'FOOD' then
    stSql := stSql + ' AND AC_FDTYPE <> ''1'' '
  else stSql := stSql + ' AND AC_FDTYPE = ''1'' ';

  if (aMCUCode <> '') And (aMCUCode <> '0000000000')  then
  begin
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(copy(aMCUCode,1,3))) ;
  end else Exit;
  stSql := stSql + ' order by AC_NODENO,AC_ECUID ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

    cmb_Box.Items.Add('전체');
    ECUCodeList.Add('');
    cmb_Box.ItemIndex := 0;

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
      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('AC_DEVICENAME').AsString );
        ECUCodeList.Add( FillZeroNumber(FindField('AC_NODENO').asinteger,3) +  FindField('AC_ECUID').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery:TADOQuery;
begin
  cmb_Box.Clear;
  FloorCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''1'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;
  stSql := stSql + ' order by LO_DONGCODE,LO_FLOORCODE';

  cmb_Box.Items.Add('전체');
  FloorCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;
      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        FloorCodeList.Add(FindField('LO_FLOORCODE').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadMCUCode(aBuildingCode,aFloorCode,aAreaCode:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  MCUCodeList.Clear;

  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_ECUID = ''00'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
    if (aFloorCode <> '') And (aFloorCode <> '000')  then
    begin
      stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + '''';
      if (aAreaCode <> '') And (aAreaCode <> '000')  then
      begin
        stSql := stSql + ' AND LO_AREACODE = ''' + aAreaCode + '''';
      end;
    end;

  end;
  stSql := stSql + ' order by AC_NODENO ';

  cmb_Box.Items.Add('전체');
  MCUCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('AC_DEVICENAME').AsString );
        MCUCodeList.Add( FillZeroNumber(FindField('AC_NODENO').asinteger,3));
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadsAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  sAreaCodeList.Clear;

  cmb_Box.Items.Add('');
  sAreaCodeList.Add('');
  cmb_Box.ItemIndex := 0;


  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''2'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;

  if (aFloorCode <> '') And (aFloorCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + '''';
  end else Exit;
  stSql := stsql + ' order by LO_DONGCODE,LO_FLOORCODE,LO_AREACODE ';

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        sAreaCodeList.Add(FindField('LO_AREACODE').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadsBuildingCode(cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  sBuildingCodeList.Clear;

  cmb_Box.Items.Add('');
  sBuildingCodeList.Add('000');
  cmb_Box.ItemIndex := 0;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';
  stSql := stSql + ' order by LO_DONGCODE ';

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        sBuildingCodeList.Add(FindField('LO_DONGCODE').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadsECUCode(aNodeNo,aGubun:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  sECUCodeList.Clear;

  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  if aGubun <> 'FOOD' then
    stSql := stSql + ' AND AC_FDTYPE <> ''1'' '
  else stSql := stSql + ' AND AC_FDTYPE = ''1'' ';

  if (aNodeNo <> '') And (aNodeNo <> '000')  then
  begin
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  end;
  stSql := stSql + ' order by AC_NODENO,AC_ECUID' ;

  cmb_Box.Items.Add('');
  sECUCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('AC_DEVICENAME').AsString );
        sECUCodeList.Add( FillZeroNumber(FindField('AC_NODENO').asinteger,3) +  FindField('AC_ECUID').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadsFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  sFloorCodeList.Clear;

  cmb_Box.Items.Add('');
  sFloorCodeList.Add('000');
  cmb_Box.ItemIndex := 0;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''1'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;
  stSql := stSql + ' order by LO_DONGCODE,LO_FLOORCODE ';

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        sFloorCodeList.Add(FindField('LO_FLOORCODE').AsString);
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.LoadsMCUCode(aBuildingCode,aFloorCode,aAreaCode:string;cmb_Box:TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  sMCUCodeList.Clear;

  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_ECUID = ''00'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
    if (aFloorCode <> '') And (aFloorCode <> '000')  then
    begin
      stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + '''';
      if (aAreaCode <> '') And (aAreaCode <> '000')  then
      begin
        stSql := stSql + ' AND LO_AREACODE = ''' + aAreaCode + '''';
      end;
    end;

  end;
  stSql :=  stSql + ' order by AC_NODENO ';


  cmb_Box.Items.Add('');
  sMCUCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('AC_DEVICENAME').AsString );
        sMCUCodeList.Add( FillZeroNumber(FindField('AC_NODENO').asinteger,3));
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.FormActivate(Sender: TObject);
var
  i : integer;
  stBuildingCode : string;
begin
  if (WorkCode < 0) or (WorkCode > 3) then WorkCode := 0;
  PageControl1.ActivePageIndex := WorkCode;

  lb_McuIP.Visible := UseDeviceServer;
  ed_MCUIP.Visible := UseDeviceServer;

  lb_McuID.Visible := Not UseDeviceServer;
  ed_MCUID.Visible := Not UseDeviceServer;

  with sg_MCUCode do
  begin
    //OnDrawCell:=StringGrideDrawCell;
    for i := 3 to ColCount - 1 do
    begin
      ColWidths[i] := 0;
    end;
    if Not UseDeviceServer then ColWidths[1] := 0
    else ColWidths[0] := 0;
  end;
  with sg_ECUCode do
  begin
    //OnDrawCell:=StringGrideDrawCell;
    for i := 3 to ColCount - 1 do
    begin
      ColWidths[i] := 0;
    end;
  end;

  if WorkCode = 0 then    //MCU 관리
  begin
    LoadBuildingCode(cmb_BuildingCode1);
    LoadsBuildingCode(cmb_sBuildingCode1);
    MCUSearch('000', '000','000','0');
  end  else if WorkCode = 1 then //ECU 관리
  begin
    LoadBuildingCode(cmb_BuildingCode2);
    LoadsBuildingCode(cmb_sBuildingCode2);
    LoadMCUCode('000','000','000',cmb_MCUCode2);
    LoadsMCUCode('000','000','000',cmb_sMCUCode2);
    ECUSearch('000', '000','000','000','');
  end;

end;

procedure TfmDeviceCode.PageControl1Change(Sender: TObject);
begin
  with PageControl1 do
  begin
    if ActivePage.Name = 'MCUTab' then    //MCU 관리
    begin
      LoadBuildingCode(cmb_BuildingCode1);
      LoadsBuildingCode(cmb_sBuildingCode1);
      MCUSearch('000', '000','000','0');
    end  else if ActivePage.Name = 'ECUTab' then //ECU 관리
    begin
      LoadBuildingCode(cmb_BuildingCode2);
      LoadsBuildingCode(cmb_sBuildingCode2);
      LoadMCUCode('000','000','000',cmb_MCUCode2);
      LoadsMCUCode('000','000','000',cmb_sMCUCode2);
      ECUSearch('000', '000','000','000','');
    end;
  end;

end;

procedure TfmDeviceCode.cmb_BuildingCode1Change(Sender: TObject);
var
  stBuildingCode : string;
begin
  if cmb_BuildingCode1.itemindex < 0 then
  begin
    Exit;
  end;
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode1);
  LoadAreaCode(stBuildingCode,'000',cmb_AreaCode1);
  MCUSearch(stBuildingCode, '000','000','0');

end;

procedure TfmDeviceCode.cmb_BuildingCode2Change(Sender: TObject);
var
  stBuildingCode : string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode2);
  LoadAreaCode(stBuildingCode,'000',cmb_AreaCode2);
  LoadMCUCode(stBuildingCode,'000','000',cmb_MCUCode2);
  ECUSearch(stBuildingCode, '000','000','000','');

end;

procedure TfmDeviceCode.cmb_sBuildingCode1Change(Sender: TObject);
var
  stBuildingCode : string;
begin
  if cmb_sBuildingCode1.itemindex < 0 then
  begin
    cmb_sBuildingCode1.Text := '';
    Exit;
  End;
  stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode1.itemindex ];
  LoadsFloorCode(stBuildingCode,cmb_sFloorCode1);
  LoadsAreaCode(stBuildingCode,'000',cmb_sAreaCode1);

end;

procedure TfmDeviceCode.cmb_sBuildingCode2Change(Sender: TObject);
var
  stBuildingCode : string;
begin
  if cmb_sBuildingCode2.itemindex < 0 then
  begin
    cmb_sBuildingCode2.Text := '';
    Exit;
  end;
  stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode2.itemindex ];
  LoadsFloorCode(stBuildingCode,cmb_sFloorCode2);
  LoadsAreaCode(stBuildingCode,'000',cmb_sAreaCode2);
//  LoadsMCUCode(stBuildingCode,'000','000',cmb_sMCUCode2);

end;

procedure TfmDeviceCode.cmb_FloorCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  MCUSearch(stBuildingCode, stFloorCode,'000','0');

end;

procedure TfmDeviceCode.cmb_FloorCode2Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode2.itemindex ];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode2);
  LoadMCUCode(stBuildingCode,stFloorCode,'000',cmb_MCUCode2);
  ECUSearch(stBuildingCode, stFloorCode,'000','000','');

end;

procedure TfmDeviceCode.cmb_sFloorCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
begin
  if cmb_sBuildingCode1.itemindex < 0 then
  begin
    cmb_sBuildingCode1.Text := '';
    Exit;
  End;
  stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode1.itemindex ];
  if cmb_sFloorCode1.itemindex < 0 then
  begin
    cmb_sFloorCode1.Text := '';
    Exit;
  End;
  stFloorCode := sFloorCodeList.Strings[ cmb_sFloorCode1.itemindex ];
  LoadsAreaCode(stBuildingCode,stFloorCode,cmb_sAreaCode1);

end;

procedure TfmDeviceCode.cmb_sFloorCode2Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
begin
  if cmb_sBuildingCode2.itemindex < 0 then
  begin
    cmb_sBuildingCode2.Text := '';
    Exit;
  End;
  stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode2.itemindex ];
  if cmb_sFloorCode2.itemindex < 0 then
  begin
    cmb_sFloorCode2.Text := '';
    Exit;
  End;
  stFloorCode := sFloorCodeList.Strings[ cmb_sFloorCode2.itemindex ];
  LoadsAreaCode(stBuildingCode,stFloorCode,cmb_sAreaCode2);
//  LoadsMCUCode(stBuildingCode,stFloorCode,'000',cmb_sMCUCode2);

end;

procedure TfmDeviceCode.cmb_AreaCode2Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode2.itemindex ];
  stAreaCode := AreaCodeList.Strings[ cmb_AreaCode2.itemindex ];
  LoadMCUCode(stBuildingCode,stFloorCode,stAreaCode,cmb_MCUCode2);
  ECUSearch(stBuildingCode, stFloorCode,stAreaCode,'000','');
end;

procedure TfmDeviceCode.cmb_sAreaCode2Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  if cmb_sAreaCode2.itemindex < 0 then
  begin
    cmb_sAreaCode2.Text := '';
    Exit;
  End;
  stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode2.itemindex ];
  stFloorCode := sFloorCodeList.Strings[ cmb_sFloorCode2.itemindex ];
  stAreaCode := sAreaCodeList.Strings[ cmb_sAreaCode2.itemindex ];

end;

procedure TfmDeviceCode.MCUSearch(aBuildingCode, aFloorCode,
  aAreaCode,aNodeNo: String;aTop:integer=0);
var
  stSql : string;
  nRow : integer;
  TempAdoQuery : TADOQuery;
begin
  if aNodeNo = '' then aNodeNo := '0';
  State := 'SEARCH';
  FormClear;
  FormEnable(State);
  ButtonEnable(State);

  GridInitialize(sg_MCUCode); //스트링그리드 초기화
//  LoadsBuildingCode(cmb_sBuildingCode1);
//  LoadsFloorCode('000',cmb_sFloorCode1);
//  LoadsAreaCode('000','000',cmb_sAreaCode1);


  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_GUBUN = ''0'' ';
  stSql := stSql + ' AND AC_NETTYPE = ''' + NETTYPE + ''' ';
  if (aBuildingCode <> '') and (aBuildingCode <> '000') then  stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  if (aFloorCode <> '') and (aFloorCode <> '000') then   stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  if (aAreaCode <> '') and (aAreaCode <> '000') then    stSql := stSql + ' AND LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' order by AC_NODENO ';

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      sg_MCUCode.RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        with sg_MCUCode do
        begin
          cells[0,nRow] := FindField('AC_MCUID').AsString;
          if NETTYPE = 'RS232' then cells[1,Row] := 'COM' + FindField('AC_COMPORT').AsString
          else cells[1,nRow] := FindField('AC_MCUIP').AsString;
          //cells[1,nRow] := FindField('AC_MCUIP').AsString;
          cells[2,nRow] := FindField('AC_DEVICENAME').AsString;
          cells[3,nRow] := FindField('AC_NODENO').AsString;
          cells[4,nRow] := FindField('AC_ECUID').AsString;
          cells[5,nRow] := FindField('AC_ACTYPE').AsString;
          cells[6,nRow] := FindField('AC_ATTYPE').AsString;
          cells[7,nRow] := FindField('AC_FDTYPE').AsString;
          cells[8,nRow] := FindField('AC_PTTYPE').AsString;
          cells[9,nRow] := FindField('LO_DONGCODE').AsString;
          cells[10,nRow] := FindField('LO_FLOORCODE').AsString;
          cells[11,nRow] := FindField('LO_AREACODE').AsString;
          cells[12,nRow] := FindField('AC_VIEWSEQ').AsString;
          cells[13,nRow] := FindField('AC_MCUIP').AsString;
          cells[14,nRow] := FindField('AC_MCUPORT').AsString;
          cells[15,nRow] := FindField('AC_LOCATEUSE').AsString;
          cells[16,nRow] := FindField('AC_TOTWIDTH').AsString;
          cells[17,nRow] := FindField('AC_TOTHEIGHT').AsString;
          cells[18,nRow] := FindField('AC_CURX').AsString;
          cells[19,nRow] := FindField('AC_CURY').AsString;
          cells[20,nRow] := FindField('AC_CARDREADERTYPE').AsString;
          cells[21,nRow] := FindField('AC_COMPORT').AsString;

          if FindField('AC_NODENO').AsString = inttostr(strtoint(aNodeNo)) then
          begin
            SelectRows(nRow,1);
          end;

          nRow := nRow + 1;
        end;
        Next;
      end;
    end;
    if aTop <> 0 then
      sg_MCUCode.topRow := aTop
    else
    begin
      if sg_MCUCode.row > 7 then sg_MCUCode.TopRow := sg_MCUCode.row - 6;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
  sg_MCUCodeClick(sg_MCUCode);
end;

procedure TfmDeviceCode.btn_CloseClick(Sender: TObject);
begin
//  self.FindSubForm('Main').FindCommand('DEVICE').Execute;
  Close;
end;

procedure TfmDeviceCode.cmb_AreaCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
  stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex ];
  MCUSearch(stBuildingCode, stFloorCode,stAreaCode,'0');

end;

procedure TfmDeviceCode.sg_MCUCodeClick(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode : string;
begin
  with (Sender as TStringGrid) do
  begin
    if (cells[0,Row] = '') and (Cells[1,Row] = '') then exit;

    State := 'CLICK';
    FormClear;
    FormEnable(State);
    ButtonEnable(State);

    ed_NodeNo.Text := cells[3,Row];
    ed_MCUID.Text  := cells[0,Row];
    ed_MCUIP.Text  := cells[13,Row];
    ed_MCUPORT.Text  := cells[14,Row];
    ed_MCUNAME.Text  := cells[2,Row];

    if Not IsDigit(cells[20,Row]) then cells[20,Row] := '0';
    cmb_CardReaderType.ItemIndex :=  strtoint(cells[20,Row]);
    
    LoadsBuildingCode(cmb_sBuildingCode1);
    if (cells[9,Row] = '') or (cells[9,Row] = '000') then cmb_sBuildingCode1.ItemIndex := 0
    else cmb_sBuildingCode1.ItemIndex := sBuildingCodeList.IndexOf(cells[9,Row]);
    stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode1.itemindex ];
    if (stBuildingCode <> '') or (stBuildingCode <> '000') then LoadsFloorCode(stBuildingCode,cmb_sFloorCode1);
    if (cells[10,Row] = '') or (cells[10,Row] = '000') then cmb_sFloorCode1.ItemIndex := 0
    else cmb_sFloorCode1.ItemIndex := sFloorCodeList.IndexOf(cells[10,Row]);
    stFloorCode := sFloorCodeList.Strings[ cmb_sFloorCode1.itemindex ];
    if (stFloorCode <> '') or (stFloorCode <> '000') then LoadsAreaCode(stBuildingCode,stFloorCode,cmb_sAreaCode1);;
    if (cells[11,Row] = '') or (cells[11,Row] = '000') then cmb_sAreaCode1.ItemIndex := 0
    else cmb_sAreaCode1.ItemIndex := sAreaCodeList.IndexOf(cells[11,Row]);

    if cells[15,Row] = 'Y' then chk_MCUReg.Checked := True
    else chk_MCUReg.Checked := False;
    ed_TotWidth1.Text := cells[16,Row];
    ed_TotHeight1.Text := cells[17,Row];
    ed_CurX1.Text := cells[18,Row];
    ed_CurY1.Text := cells[19,Row];
    if cells[5,Row] <> '0' then chk_MCUAc.Checked := True
    else chk_MCUAc.Checked := False;
    if cells[6,Row] <> '0' then chk_MCUAt.Checked := True
    else chk_MCUAt.Checked := False;
    //if cells[8,Row] <> '0' then chk_MCUPt.Checked := True
    //else chk_MCUPt.Checked := False;
    chk_MCUPt.Checked := True;
    if Not IsDigit(Trim(cells[21,Row])) then cells[21,Row] := '0';
    cmb_Comport.ItemIndex := strtoint(cells[21,Row]);

  end;
end;

procedure TfmDeviceCode.btn_InsertClick(Sender: TObject);
var
  nNodeCount : integer;
begin
  State := 'INSERT';
  FormClear;
  FormEnable(State);
  ButtonEnable(State);

  if PageControl1.ActivePage.Name = 'MCUTab' then
  begin
    nNodeCount := NodeCount;
    if nNodeCount > 0 then
    begin
      rg_Type.Enabled := False;
      if NETTYPE = 'RS232' then
      begin
        btn_CancelClick(self);
        ShowMessage('시리얼 모드에서는 메인컨트롤러를 1개만 사용 가능합니다.');
        Exit;
      end;
      if nNodeCount > G_nMaxNodeCount then
      begin
        btn_CancelClick(self);
        ShowMessage('메인컨트롤러는 최대 ' + inttostr(G_nMaxNodeCount + 1) + '개만 사용 가능합니다.');
        Exit;
      end;
    end;
    L_nTopRow := sg_MCUCode.TopRow;
    LoadsBuildingCode(cmb_sBuildingCode1);
    MCUInsertClick;
    if Not UseDeviceServer then ed_McuID.SetFocus
    else ed_McuIp.SetFocus;
  end else if PageControl1.ActivePage.Name = 'ECUTab' then
  begin
    L_nTopRow := sg_ECUCode.TopRow;
    LoadsBuildingCode(cmb_sBuildingCode2);
    ECUInsertClick;
    ed_EcuName.SetFocus;
  end;
end;

procedure TfmDeviceCode.btn_UpdateClick(Sender: TObject);
begin
  chk_McuUpdate.Checked := False;
  chk_EcuUpdate.Checked := False;
  
  State := 'UPDATE';
  FormEnable(State);
  ButtonEnable(State);

  if PageControl1.ActivePage.Name = 'MCUTab' then
  begin
    L_nTopRow := sg_MCUCode.TopRow;
    if Not UseDeviceServer then ed_McuID.SetFocus
    else ed_McuIp.SetFocus;
  end else if PageControl1.ActivePage.Name = 'ECUTab' then
  begin
    L_nTopRow := sg_ECUCode.TopRow;
    ed_EcuName.SetFocus;
  end;
end;

procedure TfmDeviceCode.btn_SaveClick(Sender: TObject);

begin
  if PageControl1.ActivePage.Name = 'MCUTab' then     //MCU 정보 저장
  begin
    MCUSave;
  end else if PageControl1.ActivePage.Name = 'ECUTab' then    //ECU 정보 저장
  begin
    ECUSave;
  end;
end;

function TfmDeviceCode.InsertTB_ACCESSDEVICE(aNodeNo,aMcuID, aEcuID, aMcuIp,
  aMcuPort, aName, aBuildingCode, aFloorCode, aAreaCode, aRegState,
  aTotWidth, aTotHeight, aCurX, aCurY, aMcuAC, aMcuFd, aMcuPt,
  aMcuAt,aSendAck,aCardReaderType,aGubun,aUpdate,aComPort:string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Insert Into TB_ACCESSDEVICE (';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stsql + 'AC_MCUID,';
  stSql := stSql + 'AC_ECUID,';
  stSql := stSql + 'AC_MCUIP,';
  stSql := stSql + 'AC_MCUPORT,';
  stSql := stSql + 'AC_DEVICENAME,';
  stSql := stSql + 'LO_DONGCODE,';
  stSql := stSql + 'LO_FLOORCODE,';
  stSql := stSql + 'LO_AREACODE,';
  stSql := stSql + 'AC_LOCATEUSE,';
  stSql := stSql + 'AC_TOTWIDTH,';
  stSql := stSql + 'AC_TOTHEIGHT,';
  stSql := stSql + 'AC_CURX,';
  stSql := stSql + 'AC_CURY,';
  stSql := stSql + 'AC_ACTYPE,';
  stSql := stSql + 'AC_ATTYPE,';
  stSql := stSql + 'AC_FDTYPE,';
  stSql := stSql + 'AC_PTTYPE,';
  stSql := stSql + 'AC_NETTYPE,';
  stSql := stSql + 'AC_GUBUN,';
  stSql := stSql + 'AC_COMPORT,';
  stSql := stSql + 'AC_DEVICETYPE,';
  stSql := stSql + 'SEND_ACK,';
  stSql := stSql + 'AC_CARDREADERTYPE,';
  stSql := stSql + 'AC_UPDATE )';
  stSql := stSql + ' values (';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + aNodeNo + ',';
  stSql := stSql + '''' + aMcuID + ''',';
  stSql := stSql + '''' + aEcuID + ''',';
  stSql := stSql + '''' + aMcuIp + ''',';
  stSql := stSql + '''' + aMcuPort + ''',';
  stSql := stSql + '''' + aName + ''',';
  stSql := stSql + '''' + aBuildingCode + ''',';
  stSql := stSql + '''' + aFloorCode + ''',';
  stSql := stSql + '''' + aAreaCode + ''',';
  stSql := stSql + '''' + aRegState + ''',';
  stSql := stSql + aTotWidth + ',';
  stSql := stSql + aTotHeight + ',';
  stSql := stSql + aCurX + ',';
  stSql := stSql + aCurY + ',';
  stSql := stSql + '''' + aMcuAC + ''',';
  stSql := stSql + '''' + aMcuAt + ''',';
  stSql := stSql + '''' + aMcuFd + ''',';
  stSql := stSql + '''' + aMcuPt + ''',';
  stSql := stSql + '''' + NETTYPE + ''',';
  stSql := stSql + '''' + aGubun + ''',';
  stSql := stSql + '''' + aComPort + ''',';
  stSql := stSql + '''2'',';   //KTT812
  stSql := stSql + '''' + aSendAck + ''',';
  stSql := stSql + '''' + aCardReaderType + ''',';
  stSql := stSql + '''' + aUpdate + ''')';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateTB_ACCESSDEVICE(aNodeNo,aMcuID, aEcuID, aMcuIp,
  aMcuPort, aName, aBuildingCode, aFloorCode, aAreaCode, aRegState,
  aTotWidth, aTotHeight, aCurX, aCurY, aMcuAC, aMcuFd, aMcuPt,
  aMcuAt,aSendAck,aCardReaderType,aUpdate,aComPort:string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_ACCESSDEVICE  Set ';
  stSql := stSql + 'AC_MCUIP = ''' + aMcuIp + ''',';
  stSql := stSql + 'AC_MCUID = ''' + aMcuID + ''', ';
  stSql := stSql + 'AC_MCUPORT = ''' + aMcuPort + ''',';
  stSql := stSql + 'AC_DEVICENAME = ''' + aName + ''',';
  stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''',';
  stSql := stSql + 'AC_LOCATEUSE = ''' + aRegState + ''',';
  stSql := stSql + 'AC_TOTWIDTH =' + aTotWidth + ',';
  stSql := stSql + 'AC_TOTHEIGHT = ' + aTotHeight + ',';
  stSql := stSql + 'AC_CURX = ' + aCurX + ',';
  stSql := stSql + 'AC_CURY = ' + aCurY + ',';
  stSql := stSql + 'AC_ACTYPE = ''' + aMcuAC + ''',';
  stSql := stSql + 'AC_ATTYPE = ''' + aMcuAt + ''',';
  stSql := stSql + 'AC_FDTYPE = ''' + aMcuFd + ''',';
  stSql := stSql + 'AC_PTTYPE = ''' + aMcuPt + ''', ';
  stSql := stSql + 'SEND_ACK = ''' + aSendAck + ''', ';
  stSql := stSql + 'AC_COMPORT = ''' + aComPort + ''', ';
  stSql := stSql + 'AC_CARDREADERTYPE = ''' + aCardReaderType + ''', ';
  stSql := stSql + 'AC_UPDATE = ''' + aUpdate + ''' ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DupCheckMCU(aMcuIp,
  aMcuPort: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin

  Result := False;
  stSql := ' Select * from  TB_ACCESSDEVICE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_MCUIP = ''' + Trim(aMcuIp) + ''' ';
  stSql := stSql + ' AND AC_MCUPORT = ''' + Trim(aMcuPort) + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.DeleteTB_ACCESSDEVICE(aNodeNo,
  aEcuID: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Delete From TB_ACCESSDEVICE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' +  aEcuID + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmDeviceCode.btn_DeleteClick(Sender: TObject);
var
  bResult : boolean;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stNodeNo : string;
  stMCUCode,stECUID : string;
begin
  if (Application.MessageBox(PChar('데이터를 삭제하시겠습니까?'),'삭제',MB_OKCANCEL) = ID_CANCEL)  then Exit;

  if PageControl1.ActivePage.Name = 'MCUTab' then
  begin
    DeleteMCUClick;
  end else if PageControl1.ActivePage.Name = 'ECUTab' then
  begin
    DeleteECUClick;
  end;
end;

function TfmDeviceCode.GarbageECUCheck(aNodeNo: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin

  Result := False;
  stSql := 'Select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID <> ''00''' ;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
    with TempAdoQuery do
    begin
      close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;
      if RecordCount > 0 then result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.ECUSearch(aBuildingCode, aFloorCode, aAreaCode,
  aNodeNO,aSearchECUID: String;aTop:integer=0);
var
  stSql : string;
  nRow : integer;
  TempAdoQuery : TADOQuery;
begin
  State := 'SEARCH';
  FormClear;
  FormEnable(State);
  ButtonEnable(State);

  GridInitialize(sg_ECUCode); //스트링그리드 초기화

  stSql := 'select a.*,b.AC_DEVICENAME as MCUNAME from TB_ACCESSDEVICE a';
  stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND b.AC_ECUID = ''00'') ';
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_ECUID <> ''00'' ';
  if (aBuildingCode <> '') and (aBuildingCode <> '000') then  stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
  if (aFloorCode <> '') and (aFloorCode <> '000') then   stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
  if (aAreaCode <> '') and (aAreaCode <> '000') then    stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  if (aNodeNo <> '') and (aNodeNo <> '000') then    stSql := stSql + ' AND a.AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' order by a.AC_NODENO,a.AC_ECUID ';

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      sg_ECUCode.RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        with sg_ECUCode do
        begin
          cells[0,nRow] := FindField('MCUNAME').AsString;
          cells[1,nRow] := FindField('AC_ECUID').AsString;
          cells[2,nRow] := FindField('AC_DEVICENAME').AsString;
          cells[3,nRow] := FindField('AC_NODENO').AsString;
          cells[4,nRow] := FindField('AC_ACTYPE').AsString;
          cells[5,nRow] := FindField('AC_ATTYPE').AsString;
          cells[6,nRow] := FindField('AC_FDTYPE').AsString;
          cells[7,nRow] := FindField('AC_PTTYPE').AsString;
          cells[8,nRow] := FindField('LO_DONGCODE').AsString;
          cells[9,nRow] := FindField('LO_FLOORCODE').AsString;
          cells[10,nRow] := FindField('LO_AREACODE').AsString;
          cells[11,nRow] := FindField('AC_VIEWSEQ').AsString;
          cells[12,nRow] := FindField('AC_MCUIP').AsString;
          cells[13,nRow] := FindField('AC_MCUPORT').AsString;
          cells[14,nRow] := FindField('AC_LOCATEUSE').AsString;
          cells[15,nRow] := FindField('AC_TOTWIDTH').AsString;
          cells[16,nRow] := FindField('AC_TOTHEIGHT').AsString;
          cells[17,nRow] := FindField('AC_CURX').AsString;
          cells[18,nRow] := FindField('AC_CURY').AsString;
          cells[19,nRow] := FindField('AC_CARDREADERTYPE').AsString;

          if (FillZeroNumber(FindField('AC_NODENO').AsInteger,3) +
              FindField('AC_ECUID').AsString )
             = aSearchECUID then
          begin
            SelectRows(nRow,1);
          end;


          nRow := nRow + 1;
        end;
        Next;
      end;
    end;
    if aTop <> 0 then
      sg_ECUCode.topRow := aTop
    else
    begin
      if sg_ECUCode.row > 9 then sg_ECUCode.TopRow := sg_ECUCode.row - 8;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
  sg_ECUCodeClick(sg_ECUCode);
end;

procedure TfmDeviceCode.cmb_MCUCode2Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stNodeNo : string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  if (stBuildingCode <> '000') AND ( stBuildingCode <> '' ) then
  begin
    stFloorCode := FloorCodeList.Strings[ cmb_FloorCode2.itemindex ];
    if (stFloorCode <> '000') AND ( stFloorCode <> '' ) then
      stAreaCode := AreaCodeList.Strings[ cmb_AreaCode2.itemindex ];
  end;
  stNodeNo := MCUCodeList.Strings[ cmb_MCUCode2.itemindex ];
  stNodeNo := copy(stNodeNo,1,3);
  ECUSearch(stBuildingCode, stFloorCode,stAreaCode,stNodeNo,'');
end;

procedure TfmDeviceCode.sg_ECUCodeClick(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode,stNodeNo : string;
begin
  with (Sender as TStringGrid) do
  begin
    if cells[0,Row] = '' then exit;

    State := 'CLICK';
    FormClear;
    FormEnable(State);
    ButtonEnable(State);

    ed_NodeNo2.Text := cells[3,Row];
    LoadsMCUCode('000','000','000',cmb_sMCUCode2);
    stNodeNo := FillZeroNumber(strtoint(cells[3,Row]),3);
    cmb_sMCUCode2.ItemIndex := sMCUCodeList.IndexOf(stNodeNo);
    PrevECUNO := strtoint(cells[1,Row]);
    ed_ECUNO.Value  := strtoint(cells[1,Row]);
    ed_ECUNAME.Text  := cells[2,Row];

    if Not IsDigit(cells[19,Row]) then cells[19,Row] := '0';
    cmb_CardReaderType2.ItemIndex :=  strtoint(cells[19,Row]);

    LoadsBuildingCode(cmb_sBuildingCode2);
    if (cells[8,Row] = '') or (cells[8,Row] = '000') then cmb_sBuildingCode2.ItemIndex := 0
    else cmb_sBuildingCode2.ItemIndex := sBuildingCodeList.IndexOf(cells[8,Row]);
    stBuildingCode := sBuildingCodeList.Strings[ cmb_sBuildingCode2.itemindex ];
    if (stBuildingCode <> '') or (stBuildingCode <> '000') then LoadsFloorCode(stBuildingCode,cmb_sFloorCode2);
    if (cells[9,Row] = '') or (cells[9,Row] = '000') then cmb_sFloorCode2.ItemIndex := 0
    else cmb_sFloorCode2.ItemIndex := sFloorCodeList.IndexOf(cells[9,Row]);
    stFloorCode := sFloorCodeList.Strings[ cmb_sFloorCode2.itemindex ];
    if (stFloorCode <> '') or (stFloorCode <> '000') then LoadsAreaCode(stBuildingCode,stFloorCode,cmb_sAreaCode2);;
    if (cells[10,Row] = '') or (cells[10,Row] = '000') then cmb_sAreaCode2.ItemIndex := 0
    else cmb_sAreaCode2.ItemIndex := sAreaCodeList.IndexOf(cells[10,Row]);

    if cells[14,Row] = 'Y' then chk_ECUReg.Checked := True
    else chk_ECUReg.Checked := False;
    ed_TotWidth2.Text := cells[15,Row];
    ed_TotHeight2.Text := cells[16,Row];
    ed_CurX2.Text := cells[17,Row];
    ed_CurY2.Text := cells[18,Row];
    if cells[4,Row] <> '0' then chk_ECUAc.Checked := True
    else chk_ECUAc.Checked := False;
    if cells[5,Row] <> '0' then chk_ECUAt.Checked := True
    else chk_ECUAt.Checked := False;
    //if cells[7,Row] <> '0' then chk_ECUPt.Checked := True
    //else chk_ECUPt.Checked := False;
    chk_ECUPt.Checked := True;

  end;

end;

procedure TfmDeviceCode.cmb_sMCUCode2Change(Sender: TObject);
var
  stSql : string;
  stNodeNo : string;
  TempAdoQuery : TADOQuery;
  stEcuID : string;
begin
  if cmb_sMCUCode2.ItemIndex > 0 then
  begin
    stNodeNo := sMCUCodeList.Strings[cmb_sMCUCode2.ItemIndex];
    stSql := 'select MAX(AC_ECUID) as AC_ECUID from TB_ACCESSDEVICE ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(stNodeNo)) + ' ';

    Try
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
          showmessage('테이블에 이상이 있습니다.');
          Exit;
        End;
        stEcuID := FieldByName('AC_ECUID').AsString;
        if Not IsDigit(stEcuID) then ed_Ecuno.Value := 1
        else ed_Ecuno.Value := strtoint(stEcuID) + 1;
        {
        if RecordCount > 0 then ed_Ecuno.Value := FieldByName('AC_ECUID').asinteger + 1
        else ed_Ecuno.Value := 1;  }
      end;
    Finally
      TempAdoQuery.Free;
      CoUninitialize;
    End;
  end;
end;

function TfmDeviceCode.DupCheckECU(aNodeNo, aEcuId: string): Boolean;
var
  stSql :string;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuId + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

function TfmDeviceCode.DupCheckDoor(aNodeNo,aECUID, aDoorNo: string): Boolean;
var
  stSql :string;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_Door ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND DO_DOORNO = ''' + aDoorNo + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.InsertTB_DOOR(aNodeNo, aEcuID, aDoorNo,
  aName, aBuildingCode, aFloorCode, aAreaCode, aRegState, aTotWidth,
  aTotHeight, aCurX, aCurY, aDoorSeq: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Insert Into TB_DOOR (';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
  stSql := stSql + 'DO_DOORNO,';
  stSql := stSql + 'DO_DOORNONAME,';
  stSql := stSql + 'LO_DONGCODE,';
  stSql := stSql + 'LO_FLOORCODE,';
  stSql := stSql + 'LO_AREACODE,';
  stSql := stSql + 'DO_LOCATEUSE,';
  stSql := stSql + 'DO_TOTWIDTH,';
  stSql := stSql + 'DO_TOTHEIGHT,';
  stSql := stSql + 'DO_CURX,';
  stSql := stSql + 'DO_CURY,';
  stSql := stSql + 'DO_VIEWSEQ )';
  stSql := stSql + ' values (';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + aNodeNo + ',';
  stSql := stSql + '''' + aEcuID + ''',';
  stSql := stSql + '''' + aDoorNo + ''',';
  stSql := stSql + '''' + aName + ''',';
  stSql := stSql + '''' + aBuildingCode + ''',';
  stSql := stSql + '''' + aFloorCode + ''',';
  stSql := stSql + '''' + aAreaCode + ''',';
  stSql := stSql + '''' + aRegState + ''',';
  stSql := stSql + aTotWidth + ',';
  stSql := stSql + aTotHeight + ',';
  stSql := stSql + aCurX + ',';
  stSql := stSql + aCurY + ',';
  stSql := stSql + aDoorSeq + ') ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateTB_DOOR(aNodeNo, aEcuID, aDoorNo,
  aName, aBuildingCode, aFloorCode, aAreaCode, aRegState, aTotWidth,
  aTotHeight, aCurX, aCurY, aDoorSeq: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_DOOR  Set ';
  stSql := stSql + 'DO_DOORNONAME = ''' + aName + ''',';
  stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''',';
  stSql := stSql + 'DO_LOCATEUSE = ''' + aRegState + ''',';
  stSql := stSql + 'DO_TOTWIDTH =' + aTotWidth + ',';
  stSql := stSql + 'DO_TOTHEIGHT = ' + aTotHeight + ',';
  stSql := stSql + 'DO_CURX = ' + aCurX + ',';
  stSql := stSql + 'DO_CURY = ' + aCurY + ',';
  stSql := stSql + 'DO_VIEWSEQ = ' + aDoorSeq ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  stSql := stSql + ' AND DO_DOORNO =' + aDoorNo ;

  result :=  DataModule1.ProcessExecSQL(stSql);


end;



function TfmDeviceCode.DeleteTB_DOOR(aNodeNo, aEcuID,
  aDoorNo: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Delete From TB_DOOR ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' +  aEcuID + ''' ';
  stSql := stSql + ' AND DO_DOORNO = ''' +  aDoorNo + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DupCheckAlarm(aNodeNo,aECUID: string): Boolean;
var
  stSql :string;
  TempAdoQuery :TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_ALARMDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;

    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.InsertTB_ALARMDEVICE(aNodeNo, aEcuID,
  aName, aBuildingCode, aFloorCode, aAreaCode, aRegState,
  aTotWidth, aTotHeight, aCurX, aCurY, aAlarmSeq: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Insert Into TB_ALARMDEVICE (';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
//  stSql := stSql + 'AL_DEVICENO,';
  stSql := stSql + 'AL_ZONENAME,';
  stSql := stSql + 'AL_LOCATEUSE,';
  stSql := stSql + 'LO_DONGCODE,';
  stSql := stSql + 'LO_FLOORCODE,';
  stSql := stSql + 'LO_AREACODE,';
  stSql := stSql + 'AL_TOTWIDTH,';
  stSql := stSql + 'AL_TOTHEIGHT,';
  stSql := stSql + 'AL_CURX,';
  stSql := stSql + 'AL_CURY,';
  stSql := stSql + 'AL_VIEWSEQ )';
  stSql := stSql + ' values (';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + aNodeNo + ',';
  stSql := stSql + '''' + aEcuID + ''',';
//  stSql := stSql + '''' + aAlarmNo + ''',';
  stSql := stSql + '''' + aName + ''',';
  stSql := stSql + '''' + aRegState + ''',';
  stSql := stSql + '''' + aBuildingCode + ''',';
  stSql := stSql + '''' + aFloorCode + ''',';
  stSql := stSql + '''' + aAreaCode + ''',';
  stSql := stSql + aTotWidth + ',';
  stSql := stSql + aTotHeight + ',';
  stSql := stSql + aCurX + ',';
  stSql := stSql + aCurY + ',';
  stSql := stSql + aAlarmSeq + ') ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateTB_ALARMDEVICE(aNodeNo, aEcuID,
  aName, aBuildingCode, aFloorCode, aAreaCode, aRegState,
  aTotWidth, aTotHeight, aCurX, aCurY, aDoorSeq: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_ALARMDEVICE  Set ';
  stSql := stSql + 'AL_ZONENAME = ''' + aName + ''',';
  stSql := stSql + 'AL_LOCATEUSE = ''' + aRegState + ''',';
  stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''',';
  stSql := stSql + 'AL_TOTWIDTH =' + aTotWidth + ',';
  stSql := stSql + 'AL_TOTHEIGHT = ' + aTotHeight + ',';
  stSql := stSql + 'AL_CURX = ' + aCurX + ',';
  stSql := stSql + 'AL_CURY = ' + aCurY + ',';
  stSql := stSql + 'AL_VIEWSEQ = ' + aDoorSeq ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  //stSql := stSql + ' AND AL_DEVICENO =' + aAlarmNo ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DeleteTB_ALARMDEVICE(aACNODNON,aACECUID: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Delete From TB_ALARMDEVICE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  //stSql := stSql + ' AND AL_DEVICENO = ' + aAlarmNo ;
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aACNODNON));
  stSql := stSql + ' AND AC_ECUID = ''' + aACECUID + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmDeviceCode.chk_EcuACClick(Sender: TObject);
begin
  chk_EcuUpdate.Checked := True;

end;

procedure TfmDeviceCode.chk_EcuPtClick(Sender: TObject);
begin
  chk_EcuUpdate.Checked := True;
end;

procedure TfmDeviceCode.chk_EcuATClick(Sender: TObject);
begin
  chk_EcuUpdate.Checked := True;
end;

procedure TfmDeviceCode.chk_McuACClick(Sender: TObject);
begin
  chk_McuUpdate.Checked := True;
end;

procedure TfmDeviceCode.chk_MCUPtClick(Sender: TObject);
begin
  chk_McuUpdate.Checked := True;
end;

procedure TfmDeviceCode.chk_McuATClick(Sender: TObject);
begin
  chk_McuUpdate.Checked := True;
end;

function TfmDeviceCode.InsertTB_FOOD(aNodeNo, aEcuID, aDoorNo,
  aName, aBuildingCode, aFloorCode, aAreaCode, aRegState, aTotWidth,
  aTotHeight, aCurX, aCurY,aFoodAmtPer: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Insert Into TB_FOOD (';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
  stSql := stSql + 'FO_DOORNO,';
  stSql := stSql + 'FO_NAME,';
  stSql := stSql + 'LO_DONGCODE,';
  stSql := stSql + 'LO_FLOORCODE,';
  stSql := stSql + 'LO_AREACODE,';
  stSql := stSql + 'FO_LOCATEUSE,';
  stSql := stSql + 'FO_TOTWIDTH,';
  stSql := stSql + 'FO_TOTHEIGHT,';
  stSql := stSql + 'FO_CURX,';
  stSql := stSql + 'FO_CURY,FO_AMTPER )';
  stSql := stSql + ' values (';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + aNodeNo + ',';
  stSql := stSql + '''' + aEcuID + ''',';
  stSql := stSql + '''' + aDoorNo + ''',';
  stSql := stSql + '''' + aName + ''',';
  stSql := stSql + '''' + aBuildingCode + ''',';
  stSql := stSql + '''' + aFloorCode + ''',';
  stSql := stSql + '''' + aAreaCode + ''',';
  stSql := stSql + '''' + aRegState + ''',';
  stSql := stSql + aTotWidth + ',';
  stSql := stSql + aTotHeight + ',';
  stSql := stSql + aCurX + ',';
  stSql := stSql + aCurY + ',';
  stSql := stSql + aFoodAmtPer + ') ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateTB_FOOD(aNodeNo, aEcuID, aDoorNo,
  aName, aBuildingCode, aFloorCode, aAreaCode, aRegState, aTotWidth,
  aTotHeight, aCurX, aCurY,aFoodAmtPer: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_FOOD  Set ';
  stSql := stSql + 'FO_NAME = ''' + aName + ''',';
  stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''',';
  stSql := stSql + 'FO_LOCATEUSE = ''' + aRegState + ''',';
  stSql := stSql + 'FO_TOTWIDTH =' + aTotWidth + ',';
  stSql := stSql + 'FO_TOTHEIGHT = ' + aTotHeight + ',';
  stSql := stSql + 'FO_CURX = ' + aCurX + ',';
  stSql := stSql + 'FO_CURY = ' + aCurY + ',';
  stSql := stSql + 'FO_AMTPER = ' + aFoodAmtPer ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  stSql := stSql + ' AND FO_DOORNO =' + aDoorNo ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DupCheckFood(aNodeNo,aECUID, aDoorNo: string): Boolean;
var
  stSql :string;
  TempAdoQuery :TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_FOOD ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND FO_DOORNO = ''' + aDoorNo + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;

    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

function TfmDeviceCode.DeleteTB_FOOD(aNodeNo, aEcuID,
  aDoorNo: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Delete From TB_FOOD ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' +  aEcuID + ''' ';
  stSql := stSql + ' AND FO_DOORNO = ''' +  aDoorNo + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.GarbageAlarmCheck(aNodeNo, aECUID: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  stSql := 'Select * from TB_ALARMDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + '''' ;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

    with TempAdoQuery do
    begin
      close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;
      if RecordCount > 0 then result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.GarbageDoorCheck(aNodeNo, aECUID: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  stSql := 'Select * from TB_DOOR ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + '''' ;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

    with TempAdoQuery do
    begin
      close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;
      if RecordCount > 0 then result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.GarbageFoodCheck(aNodeNo, aECUID: string): Boolean;
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  Result := False;
  stSql := 'Select * from TB_FOOD ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + '''' ;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

    with TempAdoQuery do
    begin
      close;
      Sql.Clear;
      Sql.Text := stSql;

      Try
        Open;
      Except
        Exit;
      End;
      if RecordCount > 0 then result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

procedure TfmDeviceCode.btnMCUPositionClick(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  if cmb_sBuildingCode1.itemIndex < 0 then
  begin
    stBuildingCode := '';
  end else
  begin
    stBuildingCode := sBuildingCodeList.Strings[cmb_sBuildingCode1.itemIndex];
  end;
  if cmb_sFloorCode1.itemIndex < 0 then
  begin
    stFloorCode := '';
  end else
  begin
    stFloorCode := sFloorCodeList.Strings[cmb_sFloorCode1.itemIndex];
  end;
  if cmb_sAreaCode1.itemIndex < 0 then
  begin
    stAreaCode := '';
  end else
  begin
    stAreaCode := sAreaCodeList.Strings[cmb_sAreaCode1.itemIndex];
  end;

  fmPositionSet:= TfmPositionSet.Create(Self);
  fmPositionSet.DeviceType := '1';
  fmPositionSet.DeviceName := ed_MCUName.Text;
  fmPositionSet.X_Position := ed_CurX1.Text;
  fmPositionSet.Y_Position := ed_CurY1.Text;
  fmPositionSet.X_Size := ed_TotWidth1.Text;
  fmPositionSet.Y_Size := ed_TotHeight1.Text;

  fmPositionSet.BuildingCode := stBuildingCode;
  fmPositionSet.FloorCode := stFloorCode;
  fmPositionSet.SectorCode := stAreaCode;
  
  fmPositionSet.SHowmodal;
  fmPositionSet.Free;

end;

procedure TfmDeviceCode.btnECUPositionClick(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  if cmb_sBuildingCode2.itemIndex < 0 then
  begin
    stBuildingCode := '';
  end else
  begin
    stBuildingCode := sBuildingCodeList.Strings[cmb_sBuildingCode2.itemIndex];
  end;
  if cmb_sFloorCode2.itemIndex < 0 then
  begin
    stFloorCode := '';
  end else
  begin
    stFloorCode := sFloorCodeList.Strings[cmb_sFloorCode2.itemIndex];
  end;
  if cmb_sAreaCode2.itemIndex < 0 then
  begin
    stAreaCode := '';
  end else
  begin
    stAreaCode := sAreaCodeList.Strings[cmb_sAreaCode2.itemIndex];
  end;

  fmPositionSet:= TfmPositionSet.Create(Self);
  fmPositionSet.DeviceType := '2';
  fmPositionSet.DeviceName := ed_ECUName.Text;
  fmPositionSet.X_Position := ed_CurX2.Text;
  fmPositionSet.Y_Position := ed_CurY2.Text;
  fmPositionSet.X_Size := ed_TotWidth2.Text;
  fmPositionSet.Y_Size := ed_TotHeight2.Text;

  fmPositionSet.BuildingCode := stBuildingCode;
  fmPositionSet.FloorCode := stFloorCode;
  fmPositionSet.SectorCode := stAreaCode;

  fmPositionSet.SHowmodal;
  fmPositionSet.Free;

end;

function TfmDeviceCode.DeleteNODEECUALL(aNodeNo: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  stSql := 'Select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  //stSql := stSql + ' AND AC_ECUID <> ''00''' ;

  with ADOECU do
  begin
    close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      Exit;
    End;
    if RecordCount < 1 then
    begin
      Result := True;
      Exit;
    end;
    While Not Eof do
    begin
      Result := DeleteECUDoorAll(FillZeroNumber(FindField('AC_NODENO').AsInteger,3),FindField('AC_ECUID').AsString);
      if Not result then Exit;
      Result := DeleteECUAlarmAll(FillZeroNumber(FindField('AC_NODENO').AsInteger,3),FindField('AC_ECUID').AsString);
      if Not result then Exit;
      Result := DeleteECUZoneAll(FillZeroNumber(FindField('AC_NODENO').AsInteger,3),FindField('AC_ECUID').AsString);
      if Not result then Exit;
      Result := DeleteECUFoodAll(FillZeroNumber(FindField('AC_NODENO').AsInteger,3),FindField('AC_ECUID').AsString);
      if Not result then Exit;
      Result := DeleteReader(FillZeroNumber(FindField('AC_NODENO').AsInteger,3),FindField('AC_ECUID').AsString);
      if Not result then Exit;
      Result := DeleteECU(FillZeroNumber(FindField('AC_NODENO').AsInteger,3),FindField('AC_ECUID').AsString);
      Next;
    end;
  end;
  //result := True;
end;

function TfmDeviceCode.DeleteECUAlarmAll(aNodeNo,aECUID: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  //해당 알람장비 삭제
  stSql := 'Delete from TB_ALARMDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);

  //해당 알람장비 방범구역 삭제
  stSql := 'Delete from TB_ARMAREA ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DeleteECUDoorAll(aNodeNo,aECUID: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  //해당 알람장비 삭제
  stSql := 'Delete from TB_DOOR ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DeleteECUFoodAll(aNodeNo,aECUID: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  //해당 알람장비 삭제
  stSql := 'Delete from TB_FOOD ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DeleteECU(aNodeNo,aECUID: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 기기의 권한 부분을 모두 제거함
  stSql := 'Delete from TB_DEVICECARDNO ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);
  LogSave(ExeFolder + '\..\log\Del'+ FormatDateTIme('yyyymmdd',Now) + '.log','DeleteECU' + aNodeNo + aECUID);


  //해당 기기 삭제
  stSql := 'Delete from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateDeviceCardNoSend(aNodeNo,aEcuID: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 ECU의 MCU ID변경
  stSql := 'Update TB_DEVICECARDNO Set  ';
  stSql := stSql + ' DE_RCVACK = ''N'' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmDeviceCode.MCUSave;
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stRegState : string;
  stAC,stFd,stPt,stAT : string;
  bResult : Boolean;
  stTotWidth,stTotHeight,stCurX,stCurY : string;
  stNodeNo : string;
  stMCUCode,stECUCode : string;
  stSeq : string;
  stFoodAmt :string;
  nEcuCount : integer;
  i : integer;
  bDeviceDoorUse : Boolean;
  stEcuName : string;
begin
  if NETTYPE = 'RS232' then
  begin
    if cmb_Comport.ItemIndex < 1 then
    begin
      showmessage('시리얼 포트 사용시에는 사용 포트를 지정해 주셔야 합니다.');
      Exit;
    end;
  end else
  begin
    if Trim(ed_McuIp.Text) = '' then
    begin
      showmessage('IP는 반드시 넣어 주셔야 합니다.');
      Exit;
    end;
  end;
  if cmb_Comport.ItemIndex < 0 then cmb_Comport.ItemIndex := 0;

    stBuildingCode := '000';
    stFloorCode := '000';
    stAreaCode := '000';
    if cmb_sBuildingCode1.itemIndex > 0 then stBuildingCode := sBuildingCodeList.Strings[cmb_sBuildingCode1.itemIndex];
    if cmb_sFloorCode1.itemIndex > 0 then stFloorCode := sFloorCodeList.Strings[cmb_sFloorCode1.itemIndex];
    if cmb_sAreaCode1.itemIndex > 0 then stAreaCode := sAreaCodeList.Strings[cmb_sAreaCode1.itemIndex];
    if chk_McuReg.Checked then  stRegState := 'Y'
    else stRegState := 'N' ;
    stAC := '1';
    stFd := '0' ;
    if chk_MCUPt.Checked then  stPt := '1'
    else stPt := '0' ;
    if chk_McuAT.Checked then  stAT := '1'
    else stAT := '0' ;
    if Trim(ed_TotWidth1.text) <> '' then stTotWidth := Trim(ed_TotWidth1.text)
    else stTotWidth := '0';
    if Trim(ed_TotHeight1.text) <> '' then stTotHeight := Trim(ed_TotHeight1.text)
    else stTotHeight := '0';
    if Trim(ed_CurX1.text) <> '' then stCurX := Trim(ed_CurX1.text)
    else stCurX := '0';
    if Trim(ed_CurY1.text) <> '' then stCurY := Trim(ed_CurY1.text)
    else stCurY := '0';

    if Not UseDeviceServer then
    begin
      if Length(Trim(ed_McuID.Text)) <> 7 then
      begin
        showmessage('MCU ID는 반드시 7자리여야 합니다.');
        Exit;
      end;
    end;
    
    if DBTYPE <> 'MDB' then DataModule1.ADOConnection.BeginTrans;
    if UpperCase(State) = 'INSERT' then
    begin
      if Not UseDeviceServer then bResult := DupCheckMCUID(Trim(ed_McuID.Text))
      else bResult := DupCheckMCU(ed_McuIp.Text,ed_McuPort.Text);

      if bResult then
      begin
        if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
        showmessage('이미 등록되어 있는 장비 입니다.');
        Exit;
      end;
      bResult := InsertTB_ACCESSDEVICE(ed_NodeNo.Text,
                                       ed_mcuid.Text,
                                       '00',
                                       ed_McuIp.Text,
                                       ed_McuPort.Text,
                                       ed_MCUname.Text,
                                       stBuildingCode,
                                       stFloorCode,
                                       stAreaCode,
                                       stRegState,
                                       stTotWidth,
                                       stTotHeight,
                                       stCurX,
                                       stCurY,
                                       stAC,
                                       stFd,
                                       stPt,
                                       stAt,
                                       'N',
                                       inttostr(cmb_CardReaderType.ItemIndex),
                                       '0',
                                       'Y',
                                       inttostr(cmb_Comport.ItemIndex));
      if bresult then  //MCU 입력시 출입문 달 것인지 여부
      begin
        //InsertAlarmDevice(ed_NodeNo.Text,'00',ed_MCUname.Text,stBuildingCode,stFloorCode,stAreaCode);
        if Application.MessageBox(PChar('해당MCU에 기본 항목으로 출입문을 사용하시겠습니까?'),'정보',MB_OKCANCEL) = IDOK then
        begin
          InsertTB_DOOR(ed_NodeNo.Text,'00','1',ed_MCUname.Text + '_1번출입문',stBuildingCode,stFloorCode,stAreaCode,'N',stTotWidth,stTotHeight,'0','0','1');
        end;
        if Application.MessageBox(PChar('해당MCU에 기본 항목으로 ECU를 추가하시겠습니까?'),'정보',MB_OKCANCEL) = IDOK then
        begin
          fmEcuCount:= TfmEcuCount.Create(Self);
          fmEcuCount.showmodal;
          nEcuCount := fmEcuCount.L_nEcuCount;
          fmEcuCount.free;
          if nEcuCount > 0 then //등록할 ECU가 있는 거다.
          begin
            bDeviceDoorUse := False;
            if Application.MessageBox(PChar('해당ECU에 기본 항목으로 출입문을 사용하시겠습니까?'),'정보',MB_OKCANCEL) = IDOK then
            begin
              bDeviceDoorUse := True;
            end;
            for i := 1 to nEcuCount do
            begin
              stEcuName := ed_MCUname.Text + '_' + FillZeroNumber(i,2) ;
              if InsertTB_ACCESSDEVICE(ed_NodeNo.Text,ed_mcuid.Text,FillZeroNumber(i,2),
                                   ed_McuIp.Text,ed_McuPort.Text,stEcuName,stBuildingCode,
                                   stFloorCode,stAreaCode,'N',stTotWidth,stTotHeight,
                                   '0','0','1','0','1','0','N',inttostr(cmb_CardReaderType.ItemIndex),'1','N',
                                   inttostr(cmb_Comport.ItemIndex)) then
              begin
                if bDeviceDoorUse then
                begin
                  InsertTB_DOOR(ed_NodeNo.Text,FillZeroNumber(i,2),'1',stEcuName + '_1번출입문',stBuildingCode,stFloorCode,stAreaCode,'N',stTotWidth,stTotHeight,'0','0','1');
                end;
                InsertAlarmDevice(ed_NodeNo.Text,FillZeroNumber(i,2),stEcuName,stBuildingCode,stFloorCode,stAreaCode);
              end;
            end;
          end;
        end;
      end;
    end
    else if UpperCase(State) = 'UPDATE' then
    begin
      if chk_McuUpdate.Checked then
      begin
        bResult := UpdateTB_ACCESSDEVICE(ed_NodeNo.Text,
                                       ed_mcuid.Text,
                                       '00',
                                       ed_McuIp.Text,
                                       ed_McuPort.Text,
                                       ed_MCUname.Text,
                                       stBuildingCode,
                                       stFloorCode,
                                       stAreaCode,
                                       stRegState,
                                       stTotWidth,
                                       stTotHeight,
                                       stCurX,
                                       stCurY,
                                       stAC,
                                       stFd,
                                       stPt,
                                       stAt,
                                       'N',
                                       inttostr(cmb_CardReaderType.ItemIndex),
                                       'Y',
                                       inttostr(cmb_Comport.ItemIndex));
      end else
      begin
        bResult := UpdateTB_ACCESSDEVICEInfo(ed_NodeNo.Text,
                                       ed_mcuid.Text,
                                       '00',
                                       ed_McuIp.Text,
                                       ed_McuPort.Text,
                                       ed_MCUname.Text,
                                       stBuildingCode,
                                       stFloorCode,
                                       stAreaCode,
                                       stRegState,
                                       stTotWidth,
                                       stTotHeight,
                                       stCurX,
                                       stCurY,
                                       inttostr(cmb_Comport.ItemIndex)
                                       );
      end;
    end;
    CreateCardReader(ed_NodeNo.Text,'00');
    UpdateDoorName(ed_NodeNo.Text,'00',ed_MCUname.Text); //메인컨트롤러의 출입문 명칭을 변경해 주자
    UpdateECUName(ed_NodeNo.Text,ed_MCUname.Text); //확장기의 명칭을 변경 해 주자.
    if chk_MCUPt.Checked then
    begin
      InsertAlarmDevice(ed_NodeNo.Text,'00',ed_MCUname.Text,stBuildingCode,stFloorCode,stAreaCode);
    end else
    begin
      DeleteAlarmDevice(ed_NodeNo.Text,'00');
    end;



    if bResult then
    begin
      if DBTYPE <> 'MDB' then  DataModule1.ADOConnection.CommitTrans;
      stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
      if (stBuildingCode = '') or (stBuildingCode = '000') then stFloorCode := '000'
      else  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
      if (stFloorCode = '') or (stFloorCode = '000') then stAreaCode := '000'
      else stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex ];

      if UpperCase(State) = 'INSERT' then
        MCUSearch(stBuildingCode, stFloorCode,stAreaCode,ed_NodeNo.Text)
      else
        MCUSearch(stBuildingCode, stFloorCode,stAreaCode,ed_NodeNo.Text,sg_MCUCode.TopRow);
    end else
    begin
      if DBTYPE <> 'MDB' then  DataModule1.ADOConnection.RollbackTrans ;
      showmessage('저장실패');
    end;
end;

procedure TfmDeviceCode.ECUSave;
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stRegState : string;
  stAC,stFd,stPt,stAT : string;
  bResult : Boolean;
  stTotWidth,stTotHeight,stCurX,stCurY : string;
  stNodeNo : string;
  stMCUCode,stECUCode : string;
  stSeq : string;
  stFoodAmt :string;
  stSearchEcuID : string;
begin
    if cmb_sMCUCode2.itemIndex = 0 then
    begin
      showmessage('MCU를 선택하셔야 합니다.');
      Exit;
    end;

    stBuildingCode := '000';
    stFloorCode := '000';
    stAreaCode := '000';
    if cmb_sBuildingCode2.itemIndex > 0 then stBuildingCode := sBuildingCodeList.Strings[cmb_sBuildingCode2.itemIndex];
    if cmb_sFloorCode2.itemIndex > 0 then stFloorCode := sFloorCodeList.Strings[cmb_sFloorCode2.itemIndex];
    if cmb_sAreaCode2.itemIndex > 0 then  stAreaCode := sAreaCodeList.Strings[cmb_sAreaCode2.itemIndex];
    stNodeNo := sMCUCodeList.Strings[cmb_sMCUCode2.itemIndex];
    if chk_ECUReg.Checked then  stRegState := 'Y'
    else stRegState := 'N' ;
    stAC := '1';
    stFd := '0' ;
    if chk_ECUPt.Checked then  stPt := '1'
    else stPt := '0' ;
    if chk_EcuAT.Checked then  stAT := '1'
    else stAT := '0' ;
    if Trim(ed_TotWidth2.text) <> '' then stTotWidth := Trim(ed_TotWidth2.text)
    else stTotWidth := '0';
    if Trim(ed_TotHeight2.text) <> '' then stTotHeight := Trim(ed_TotHeight2.text)
    else stTotHeight := '0';
    if Trim(ed_CurX2.text) <> '' then stCurX := Trim(ed_CurX2.text)
    else stCurX := '0';
    if Trim(ed_CurY2.text) <> '' then stCurY := Trim(ed_CurY2.text)
    else stCurY := '0';
    stSearchEcuID := FillZeroNumber(strtoint(stNodeNo),3) + FillZeroNumber(ed_Ecuno.Value,2);

    if DBTYPE <> 'MDB' then DataModule1.ADOConnection.BeginTrans;
    if UpperCase(State) = 'INSERT' then
    begin
      bResult := DupCheckECU(stNodeNo,FillZeroNumber(ed_Ecuno.Value,2));
      if bResult then
      begin
        if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
        showmessage('이미 등록되어 있는 장비 입니다.');
        Exit;
      end;
      bResult := DupCheckECUName(stNodeNo,FillZeroNumber(ed_Ecuno.Value,2),ed_EcuName.Text);
      if bResult then
      begin
        if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
        showmessage('같은 이름으로 이미 등록되어 있습니다.');
        Exit;
      end;
      bResult := InsertTB_ACCESSDEVICE(inttostr(strtoint(stNodeNo)),
                                       '',
                                       FillZeroNumber(ed_Ecuno.Value,2),
                                       '',
                                       '',
                                       ed_EcuName.Text,
                                       stBuildingCode,
                                       stFloorCode,
                                       stAreaCode,
                                       stRegState,
                                       stTotWidth,
                                       stTotHeight,
                                       stCurX,
                                       stCurY,
                                       stAC,
                                       stFd,
                                       stPt,
                                       stAt,
                                       'N',
                                       inttostr(cmb_CardReaderType2.ItemIndex),
                                       '1',
                                       'Y',
                                       '0');
      UpdateTB_NODE_RCV(inttostr(strtoint(stNodeNo)),'N');   //기기추가시 MCU정보를 다시 내리자.
    end
    else if UpperCase(State) = 'UPDATE' then
    begin
      if PrevECUNO <> ed_ecuno.Value then   //ECU ID 변경 된경우
      begin
        bResult := DupCheckECU(stNodeNo,FillZeroNumber(ed_Ecuno.Value,2));
        if bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('이미 등록되어 있는 장비 입니다.');
          Exit;
        end;
        bResult := DupCheckECUName(stNodeNo,FillZeroNumber(ed_Ecuno.Value,2),ed_EcuName.Text);
        if bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('같은 이름으로 이미 등록되어 있습니다.');
          Exit;
        end;
        //기존 ECU의 아이디 변경
        bResult := UpdateECUIDFromECU(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('ECU의 ECUID변경 작업 실패');
          Exit;
        end;
        //기존 ECU의 출입문 변경
        bResult := UpdateECUIDFromDOOR(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('출입문의 ECUID변경 작업 실패');
          Exit;
        end;
        //기존 ECU의 방범구역 변경
        bResult := UpdateECUIDFromALARM(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('방범기기의 ECUID변경 작업 실패');
          Exit;
        end;
        //기존 ECU의 식수구역 변경
        bResult := UpdateECUIDFromFOOD(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('식수장비의 ECUID변경 작업 실패');
          Exit;
        end;
        //기존 ECU의 권한 변경
        bResult := UpdateECUIDFromCARDNO(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('카드권한의 ECUID변경 작업 실패');
          Exit;
        end;
        //기존 ECU의 관리자 권한 변경
        bResult := UpdateECUIDFromAdminDoor(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('담당자출입조회권한의 ECUID변경 작업 실패');
          Exit;
        end;
        //기존 ECU의 관리자 식수 권한 변경
        bResult := UpdateECUIDFromAdminFood(stNodeNo,FillZeroNumber(PrevECUNO,2),FillZeroNumber(ed_ecuno.Value,2));
        if Not bResult then
        begin
          if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
          showmessage('담당자식수조회권한의 ECUID변경 작업 실패');
          Exit;
        end;
        UpdateTB_NODE_RCV(inttostr(strtoint(stNodeNo)),'N');   //기기 아이디 변경시 MCU 정보를 다시 내리자
      end;

      if chk_EcuUpdate.Checked then
      begin
        bResult := UpdateTB_ACCESSDEVICE(inttostr(strtoint(stNodeNo)),
                                       '',
                                       FillZeroNumber(ed_Ecuno.Value,2),
                                       '',
                                       '',
                                       ed_EcuName.Text,
                                       stBuildingCode,
                                       stFloorCode,
                                       stAreaCode,
                                       stRegState,
                                       stTotWidth,
                                       stTotHeight,
                                       stCurX,
                                       stCurY,
                                       stAC,
                                       stFd,
                                       stPt,
                                       stAt,
                                       'N',
                                       inttostr(cmb_CardReaderType2.ItemIndex),
                                       'Y',
                                       '0'
                                       );
      end else
      begin
        bResult := UpdateTB_ACCESSDEVICEInfo(inttostr(strtoint(stNodeNo)),
                                       '',
                                       FillZeroNumber(ed_Ecuno.Value,2),
                                       '',
                                       '',
                                       ed_EcuName.Text,
                                       stBuildingCode,
                                       stFloorCode,
                                       stAreaCode,
                                       stRegState,
                                       stTotWidth,
                                       stTotHeight,
                                       stCurX,
                                       stCurY,
                                       '0'
                                       );
      end;
    end;
    UpdateDoorName(stNodeNo,FillZeroNumber(ed_Ecuno.Value,2),ed_EcuName.Text);
    if chk_EcuPt.Checked then
    begin
      InsertAlarmDevice(inttostr(strtoint(stNodeNo)),FillZeroNumber(ed_Ecuno.Value,2),ed_EcuName.Text,stBuildingCode,stFloorCode,stAreaCode);
    end else
    begin
      DeleteAlarmDevice(inttostr(strtoint(stNodeNo)),FillZeroNumber(ed_Ecuno.Value,2));
    end;
    //UpdateTB_NODE_RCV(inttostr(strtoint(stNodeNo)),'N');  //기기추가나 아이디 변경시에만 MCU 정보를 다시 내림으로 변경
    CreateCardReader(stNodeNo,FillZeroNumber(ed_Ecuno.Value,2));

    if bResult then
    begin
      if DBTYPE <> 'MDB' then DataModule1.ADOConnection.CommitTrans;
      stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
      if (stBuildingCode = '') or (stBuildingCode = '000') then stFloorCode := '000'
      else  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode2.itemindex ];
      if (stFloorCode = '') or (stFloorCode = '000') then stAreaCode := '000'
      else stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex ];
      stNodeNo := MCUCodeList.Strings[ cmb_MCUCode2.itemindex ];
      stNodeNo := copy(stNodeNo,1,3);
      if UpperCase(State) = 'INSERT' then
        ECUSearch(stBuildingCode, stFloorCode,stAreaCode,stNodeNo,stSearchEcuID)
      else
        ECUSearch(stBuildingCode, stFloorCode,stAreaCode,stNodeNo,stSearchEcuID,sg_ECUCode.TopRow);
    end else
    begin
      if DBTYPE <> 'MDB' then DataModule1.ADOConnection.RollbackTrans;
      showmessage('저장실패');
    end;
end;

function TfmDeviceCode.UpdateECUIDFromALARM(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 ALARM의 ECU ID변경
  stSql := 'Update TB_ALARMDEVICE Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateECUIDFromCARDNO(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 ECU의 ECU ID변경
  stSql := 'Update TB_DEVICECARDNO Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''', ' ;
  stSql := stSql + ' DE_RCVACK = ''N'' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateECUIDFromDOOR(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 ECU의 ECU ID변경
  stSql := 'Update TB_DOOR Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateECUIDFromECU(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 ECU의 ECU ID변경
  stSql := 'Update TB_ACCESSDEVICE Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateECUIDFromFOOD(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 FOOD의 ECU ID변경
  stSql := 'Update TB_FOOD Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateECUIDFromAdminDoor(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 FOOD의 ECU ID변경
  stSql := 'Update TB_ADMINDOOR Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateECUIDFromAdminFood(aNodeNo, aPrevECUNO,
  aCurEcuno: string): Boolean;
var
  stSql : string;
begin
  Result := False;
  //해당 FOOD의 ECU ID변경
  stSql := 'Update TB_ADMINFOOD Set ';
  stSql := stSql + ' AC_ECUID = ''' + aCurEcuno + ''' ' ;
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aPrevECUNO + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;


procedure TfmDeviceCode.LoadsAlarmCode(aNodeNo: string;
  cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  sAlarmCodeList.Clear;

  stSql := 'select * from TB_ALARMDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';

  if (aNodeNo <> '') And (aNodeNo <> '000')  then
  begin
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  end;
  stSql := stSql + ' order by AC_NODENO,AC_ECUID' ;

  cmb_Box.Items.Add('');
  sAlarmCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('AL_ZONENAME').AsString );
        sAlarmCodeList.Add( FillZeroNumber(FindField('AC_NODENO').asinteger,3) + FindField('AC_ECUID').AsString) ;
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.MCUInsertClick;
var
  stSql : string;
  stNodeNo : string;
  TempAdoQuery : TADOQuery;
begin

  stSql := 'select MAX(AC_NODENO) as AC_NODENO from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';

  Try
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
        showmessage('테이블에 이상이 있습니다.');
        Exit;
      End;

      if RecordCount > 0 then ed_NodeNo.Text := inttostr(FieldByName('AC_NODENO').asinteger + 1)
      else ed_NodeNo.Text := '1';

    end;
    with sg_MCUCode do
    begin
      if Cells[0,1] <> '' then
      begin
        AddRow;
        SelectRows(RowCount - 1,1);
        Enabled := True;
        if RowCount > 5 then TopRow := RowCount - 5;
        Enabled := False;
      end;
    end;
  //  ed_MCUID.SetFocus;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.ECUInsertClick;
var
  stSql : string;
  stNodeNo : string;
  TempAdoQuery : TADOQuery;
  stEcuNo : string;
begin

  LoadsMCUCode('000','000','000',cmb_sMCUCode2);
  cmb_sMCUCode2.ItemIndex := cmb_MCUCode2.ItemIndex;
  LoadsBuildingCode(cmb_sBuildingCode2);
  ed_Ecuno.Value := 1;
  if cmb_sMCUCode2.ItemIndex > 0 then
  begin
    stNodeNo := sMCUCodeList.Strings[cmb_sMCUCode2.ItemIndex];
    stSql := 'select MAX(AC_ECUID) as AC_ECUID from TB_ACCESSDEVICE ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(stNodeNo)) + ' ';

    Try
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
          showmessage('테이블에 이상이 있습니다.');
          Exit;
        End;

        stEcuNo := FieldByName('AC_ECUID').AsString;
        if isDigit(stEcuNo) then
        begin
          ed_Ecuno.Value := strtoint(stEcuNo) + 1;
        end;
      end;
    Finally
      TempAdoQuery.Free;
      CoUninitialize;
    End;
  end;

  with sg_ECUCode do
  begin
    if Cells[0,1] <> '' then
    begin
      AddRow;
      SelectRows(RowCount - 1,1);
      Enabled := True;
      if RowCount > 5 then TopRow := RowCount - 5;
      Enabled := False;
    end;
  end;

  ed_EcuName.SetFocus;

end;


function TfmDeviceCode.DupCheckZone(aNodeNo,aECUID,
  aZoneNo: string): Boolean;
var
  stSql :string;
  TempAdoQuery :TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_ZoneDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND AL_ZONENUM = ''' + aZoneNo + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;

    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.InsertTB_ZoneDEVICE(aACNODENO,aACECUID, aZoneNo,
  aZoneName, aRegState, aBuildingCode, aFloorCode, aAreaCode, aTotWidth,
  aTotHeight, aCurX, aCurY:string): Boolean;
var
  stSql :string;
begin
  result := False;
//  aAL_DEVICENO := inttostr(strtoint(aAL_DEVICENO));
  if aTotWidth = '' then aTotWidth := '0';
  if aTotHeight = '' then aTotHeight := '0';
  if aCurX = '' then aCurX := '0';
  if aCurY = '' then aCurY := '0';

  stSql := ' Insert Into TB_ZoneDevice(GROUP_CODE,AC_NODENO,AC_ECUID,';
  stSql := stSql + ' AL_ZONENUM,AL_ZONENAME,AL_LOCATEUSE,AL_TOTWIDTH,';
  stSql := stSql + ' AL_TOTHEIGHT,AL_CURX,AL_CURY,LO_DONGCODE,LO_FLOORCODE,';
  stSql := stSql + ' LO_AREACODE ) ';
  stSql := stSql + ' Values ( ';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + aACNODENO + ',';
  stSql := stSql + '''' + aACECUID + ''',';
  stSql := stSql + '''' + aZoneNo + ''',';
  stSql := stSql + '''' + aZoneName + ''',';
  stSql := stSql + '''' + aRegState + ''',';
  stSql := stSql + aTotWidth + ',';
  stSql := stSql + aTotHeight + ',';
  stSql := stSql + aCurX + ',';
  stSql := stSql + aCurY + ',';
  stSql := stSql + '''' + aBuildingCode + ''',';
  stSql := stSql + '''' + aFloorCode + ''',';
  stSql := stSql + '''' + aAreaCode + ''') ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateTB_ZoneDEVICE(aACNODENO,aACECUID, aZoneNo,
  aZoneName, aRegState, aBuildingCode, aFloorCode, aAreaCode, aTotWidth,
  aTotHeight, aCurX, aCurY:string): Boolean;
var
  stSql :string;
begin
  result := False;
  //aAL_DEVICENO := inttostr(strtoint(aAL_DEVICENO));
  if aTotWidth = '' then aTotWidth := '0';
  if aTotHeight = '' then aTotHeight := '0';
  if aCurX = '' then aCurX := '0';
  if aCurY = '' then aCurY := '0';

  stSql := ' UPDATE TB_ZoneDevice SET ';
  stSql := stSql + ' AL_ZONENAME = ''' + aZoneName + ''',';
  stSql := stSql + ' AL_LOCATEUSE = ''' + aRegState + ''',';
  stSql := stSql + ' AL_TOTWIDTH = ' + aTotWidth + ',';
  stSql := stSql + ' AL_TOTHEIGHT = ' + aTotHeight + ',';
  stSql := stSql + ' AL_CURX = ' + aCurX + ',';
  stSql := stSql + ' AL_CURY = ' + aCurY + ',';
  stSql := stSql + ' LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + ' LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + ' LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aACNODENO ;
  stSql := stSql + ' AND AC_ECUID = ''' + aACECUID + ''' ';
  stSql := stSql + ' AND AL_ZONENUM = ''' + aZoneNo + ''' ';

  result :=  DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmDeviceCode.LoadAlarmCode(aNodeNo: string; cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  AlarmCodeList.Clear;

  stSql := 'select * from TB_ALARMDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';

  if (aNodeNo <> '') And (aNodeNo <> '000')  then
  begin
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  end;
  stSql := stSql + ' order by AC_NODENO,AC_ECUID' ;

  cmb_Box.Items.Add('전체');
  AlarmCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
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
        Exit;
      End;

      if RecordCount < 1 then
      begin
        Exit;
      end;

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('AL_ZONENAME').AsString );
        AlarmCodeList.Add( FillZeroNumber(FindField('AC_NODENO').asinteger,3) + FindField('AC_ECUID').asstring) ;
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TfmDeviceCode.DeleteMCUClick;
var
  bResult : boolean;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stNodeNo : string;
  stMCUCode : string;
begin
  bResult := DeleteNODEECUALL(ed_NodeNo.Text);
  if Not bResult Then
  begin
    showmessage('해당 노드의 ECU정보 삭제에 실패했습니다. 해당 ECU 삭제후 시도 하세요.');
  end;

  //bResult := DeleteTB_ACCESSDEVICE(ed_NodeNo.Text,'00');

  if bResult then
  begin
    stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
    if (stBuildingCode = '') or (stBuildingCode = '000') then stFloorCode := '000'
    else  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
    if (stFloorCode = '') or (stFloorCode = '000') then stAreaCode := '000'
    else stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex ];
    MCUSearch(stBuildingCode, stFloorCode,stAreaCode,'0',sg_MCUCode.TopRow);
  end else showmessage('삭제실패.');

end;

procedure TfmDeviceCode.DeleteECUClick;
var
  bResult : boolean;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
  stNodeNo : string;
  stMCUCode,stECUID : string;
begin
  if cmb_sMCUCode2.itemIndex > -1 then
    stNodeNo := sMCUCodeList.Strings[cmb_sMCUCode2.itemIndex]
  else stNodeNo := '';
  stECUID := FillZeroNumber(ed_Ecuno.Value,2);
  bResult := DeleteECUDoorAll(stNodeNo,stECUID);
  if Not bResult Then
  begin
    showmessage('해당 ECU의 출입문정보 삭제에 실패했습니다. 해당 출입문정보삭제후 시도 하세요.');
    Exit;
  end;
  bResult := DeleteECUAlarmAll(stNodeNo,stECUID);
  if Not bResult Then
  begin
    showmessage('해당 ECU의 방범정보 삭제에 실패했습니다. 해당 방범정보삭제후 시도 하세요.');
    Exit;
  end;
  bResult := DeleteECUZoneAll(stNodeNo,stECUID);
  if Not bResult Then
  begin
    showmessage('해당 ECU의 존정보 삭제에 실패했습니다. 해당 존정보삭제후 시도 하세요.');
    Exit;
  end;
  bResult := DeleteECUFoodAll(stNodeNo,stECUID);
  if Not bResult Then
  begin
    showmessage('해당 ECU의 식수정보 삭제에 실패했습니다. 해당 식수정보삭제후 시도 하세요.');
    Exit;
  end;
  bResult := DeleteReader(stNodeNo,stECUID);
  if Not bResult Then
  begin
    showmessage('해당 ECU의 리더정보 삭제에 실패했습니다. 해당 리더정보삭제후 시도 하세요.');
    Exit;
  end;

  bResult := DeleteECU(stNodeNo,stECUID);
  UpdateTB_ACCESSDEVICESendAck(stNodeNo,'00','N');

  if bResult then
  begin
    stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
    if (stBuildingCode = '') or (stBuildingCode = '000') then stFloorCode := '000'
    else  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode2.itemindex ];
    if (stFloorCode = '') or (stFloorCode = '000') then stAreaCode := '000'
    else stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex ];
    stNodeNo := MCUCodeList.Strings[ cmb_MCUCode2.itemindex ];
    stNodeNo := copy(stNodeNo,1,3);
    ECUSearch(stBuildingCode, stFloorCode,stAreaCode,stNodeNo,'',sg_ECUCode.TopRow);
  end else showmessage('삭제실패.');

end;



procedure TfmDeviceCode.ButtonEnable(aState: string);
begin
  if upperCase(aState) = 'INSERT'  then
  begin
    btn_Insert.Enabled := False;
    btn_update.Enabled := false;
    btn_Save.Enabled := True;
    btn_delete.Enabled := False;
    btn_Cancel.Enabled := True;
  end else if upperCase(aState) = 'SEARCH' then
  begin
    if IsInsertGrade then  btn_Insert.Enabled := True;
    btn_Insert.Enabled := True;
    btn_Update.Enabled := False;
    btn_Save.Enabled := False;
    btn_Delete.Enabled := False;
    btn_Cancel.Enabled := False;
  end else if upperCase(aState) = 'UPDATE' then
  begin
    btn_Insert.Enabled := False;
    btn_Update.Enabled := False;
    btn_Save.Enabled := True;
    btn_Delete.Enabled := False;
    btn_Cancel.Enabled := True;
  end else if upperCase(aState) = 'CLICK' then
  begin
    if IsInsertGrade then  btn_Insert.Enabled := True;
    if IsUpdateGrade then btn_Update.Enabled := True;
    btn_Save.Enabled := False;
    if IsDeleteGrade then btn_Delete.Enabled := True;
    btn_Cancel.Enabled := False;
  end;

end;

procedure TfmDeviceCode.FormClear;
begin
  //MCU Form Clear
  ed_NodeNo.Text := '';
  ed_MCUID.Text  := '0000000';
  ed_MCUIP.Text  := '';
  ed_MCUPORT.Text  := '3000';
  ed_MCUNAME.Text  := '';
  cmb_CardReaderType.ItemIndex := 0;

  chk_MCUReg.Checked := False;
  ed_TotWidth1.Text := '';
  ed_TotHeight1.Text := '';
  ed_CurX1.Text := '';
  ed_CurY1.Text := '';
  chk_MCUAc.Checked := True;
  chk_MCUAt.Checked := False;
  chk_MCUPt.Checked := True;

  chk_McuUpdate.Checked := False;
  chk_EcuUpdate.Checked := False;

  //ECU Form Clear
  cmb_sMCUCode2.ItemIndex := -1;
  ed_Ecuno.Value := 1;
  ed_ECUNAME.Text  := '';
  cmb_CardReaderType2.ItemIndex := 0;

  chk_ECUReg.Checked := False;
  ed_TotWidth2.Text := '';
  ed_TotHeight2.Text := '';
  ed_CurX2.Text := '';
  ed_CurY2.Text := '';
  chk_ECUAc.Checked := True;
  chk_ECUAt.Checked := False;
  chk_ECUPt.Checked := True;


  cmb_sBuildingCode1.Clear;
  cmb_sFloorCode1.Clear;
  cmb_sAreaCode1.Clear;
  cmb_sBuildingCode2.Clear;
  cmb_sFloorCode2.Clear;
  cmb_sAreaCode2.Clear;

  sBuildingCodeList.Clear;
  sFloorCodeList.Clear;
  sAreaCodeList.Clear;

end;

procedure TfmDeviceCode.FormEnable(aState: string);
begin
  if upperCase(aState) = 'INSERT'  then
  begin
    //MCU Form Enable
    sg_MCUCode.Enabled := False;
    ed_MCUID.Enabled := True;
    ed_MCUIP.Enabled := True;
    ed_MCUPORT.Enabled := True;
    ed_MCUNAME.Enabled := True;
    cmb_CardReaderType.Enabled := True;
    cmb_sBuildingCode1.Enabled := True;
    cmb_sFloorCode1.Enabled := True;
    cmb_sAreaCode1.Enabled := True;
    chk_MCUReg.Enabled := True;
    gb_Device.Enabled := True;
    btnMCUPosition.Enabled := True;
    rg_Type.Enabled := True;
    cmb_Comport.Enabled := True;

    //ECU Form Enable
    sg_ECUCode.Enabled := False;
    cmb_sMCUCode2.Enabled := True;
    ed_Ecuno.Enabled := True;
    ed_EcuName.Enabled := True;
    cmb_CardReaderType2.Enabled := True;
    cmb_sBuildingCode2.Enabled := True;
    cmb_sFloorCode2.Enabled := True;
    cmb_sAreaCode2.Enabled := True;
    chk_ECUReg.Enabled := True;
    gb_Device2.Enabled := True;
    btnECUPosition.Enabled := True;

  end else if UpperCase(aState) = 'UPDATE' then
  begin
    //MCU Form Enable
    sg_ECUCode.Enabled := False;
    sg_MCUCode.Enabled := False;
    ed_MCUID.Enabled := True;
    ed_MCUIP.Enabled := True;
    ed_MCUPORT.Enabled := True;
    ed_MCUNAME.Enabled := True;
    cmb_CardReaderType.Enabled := True;
    cmb_sBuildingCode1.Enabled := True;
    cmb_sFloorCode1.Enabled := True;
    cmb_sAreaCode1.Enabled := True;
    chk_MCUReg.Enabled := True;
    gb_Device.Enabled := True;
    btnMCUPosition.Enabled := True;
    rg_Type.Enabled := False;
    cmb_Comport.Enabled := True;

    //ECU Form Enable
    cmb_sMCUCode2.Enabled := False;
    ed_Ecuno.Enabled := True;
    ed_EcuName.Enabled := True;
    cmb_CardReaderType2.Enabled := True;
    cmb_sBuildingCode2.Enabled := True;
    cmb_sFloorCode2.Enabled := True;
    cmb_sAreaCode2.Enabled := True;
    chk_ECUReg.Enabled := True;
    gb_Device2.Enabled := True;
    btnECUPosition.Enabled := True;

  end else if UpperCase(aState) = 'SEARCH' then
  begin
    //MCU Form Enable
    sg_MCUCode.Enabled := True;
    ed_MCUID.Enabled := False;
    ed_MCUIP.Enabled := False;
    ed_MCUPORT.Enabled := False;
    ed_MCUNAME.Enabled := False;
    cmb_CardReaderType.Enabled := False;
    cmb_sBuildingCode1.Enabled := False;
    cmb_sFloorCode1.Enabled := False;
    cmb_sAreaCode1.Enabled := False;
    chk_MCUReg.Enabled := False;
    gb_Device.Enabled := False;
    btnMCUPosition.Enabled := False;
    rg_Type.Enabled := False;
    cmb_Comport.Enabled := False;

    //ECU Form Enable
    sg_ECUCode.Enabled := True;
    cmb_sMCUCode2.Enabled := False;
    ed_Ecuno.Enabled := False;
    ed_EcuName.Enabled := False;
    cmb_CardReaderType2.Enabled := False;
    cmb_sBuildingCode2.Enabled := False;
    cmb_sFloorCode2.Enabled := False;
    cmb_sAreaCode2.Enabled := False;
    chk_ECUReg.Enabled := False;
    gb_Device2.Enabled := False;
    btnECUPosition.Enabled := False;

  end;

end;

procedure TfmDeviceCode.btn_CancelClick(Sender: TObject);
var
  stSearchEcuID : string;
  stSearchDoorID : string;
  stSearchFoodID : string;
begin
  with PageControl1 do
  begin
    if ActivePage.Name = 'MCUTab' then    //MCU 관리
    begin
      MCUSearch('000', '000','000',ed_NodeNo.Text,L_nTopRow);
    end  else if ActivePage.Name = 'ECUTab' then //ECU 관리
    begin
      if ed_NodeNo2.Text = '' then ed_NodeNo2.Text := '0';
      stSearchEcuID := FillZeroNumber(strtoint(ed_NodeNo2.Text),3) + FillZeroNumber(ed_Ecuno.Value,2);
      ECUSearch('000', '000','000','000',stSearchEcuID,L_nTopRow);
    end;
  end;

end;

function TfmDeviceCode.CreateCardReader(aNodeNo, aEcuID: string): Boolean;
var
  i : integer;
begin
  for i := 1 to CARDREADERCOUNT do
  begin
    if Not DupCheckCardReader(aNodeNo,aEcuID,inttostr(i)) then
      InsertIntoTB_Reader(aNodeNo,aEcuID,inttostr(i));
  end;

end;

function TfmDeviceCode.DupCheckCardReader(aNodeNo, aEcuID,
  aReaderNo: string): Boolean;
var
  stSql : string;
begin
  result := false;
  stSql := ' select * from TB_READER ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND RE_READERNO = ''' + aReaderNo + ''' ';
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
    if recordCount < 1 then Exit;
  end;
  result := True;
end;

function TfmDeviceCode.InsertIntoTB_Reader(aNodeNo, aEcuID,
  aReaderNo: string): Boolean;
var
  stSql :string;
begin
  stSql := ' Insert Into TB_READER (';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
  stSql := stSql + 'RE_READERNO,';
  stSql := stSql + 'DO_DOORNO,';
  stSql := stSql + 'SEND_ACK,';
  stSql := stSql + 'RE_USE )';
  stSql := stSql + ' values (';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + inttostr(strtoint(aNodeNo)) + ',';
  stSql := stSql + '''' + aEcuID + ''',';
  stSql := stSql + '''' + aReaderNo + ''',';
  stSql := stSql + '''0'',';
  stSql := stSql + '''N'',';
  stSql := stSql + '''N'')';
  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmDeviceCode.FormShow(Sender: TObject);
begin
  if Not IsMaster then
  begin
    if IsInsertGrade then btn_Insert.Enabled := True
    else btn_Insert.Enabled := False;
    if IsUpdateGrade then btn_Update.Enabled := True
    else btn_Update.Enabled := False;
    if IsDeleteGrade then btn_Delete.Enabled := True
    else btn_Delete.Enabled := False;
  end;

end;

function TfmDeviceCode.UpdateTB_NODE_RCV(aNodeNo,
  aSendAck: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_ACCESSDEVICE set ';
  stSql := stSql + 'SEND_ACK = ''' + aSendAck + ''' ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo));
  stSql := stSql + ' AND AC_ECUID = ''00'' ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.DeleteReader(aNodeNo, aECUID: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  //해당 기기의 리더정보 삭제
  stSql := 'Delete from TB_READER ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);
end;

function TfmDeviceCode.DupCheckECUName(aNodeNo, aEcuId,
  aEcuName: string): Boolean;
var
  stSql :string;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_DEVICENAME = ''' + aEcuName + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then
      begin
        if (FindField('AC_NODENO').Asinteger <> strtoint(aNodeNo) ) or
           (FindField('AC_ECUID').AsString <> aEcuId ) then
            Result := True;
      end;

    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.UpdateTB_ACCESSDEVICESendAck(aNodeNo, aEcuID,
  aSendAck: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_ACCESSDEVICE  Set ';
  stSql := stSql + 'SEND_ACK = ''' + aSendAck + '''  ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  result :=  DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmDeviceCode.cmb_CardReaderTypeChange(Sender: TObject);
begin
  chk_McuUpdate.Checked := True;
end;

procedure TfmDeviceCode.cmb_CardReaderType2Click(Sender: TObject);
begin
  chk_EcuUpdate.Checked := True;
end;

function TfmDeviceCode.UpdateTB_ACCESSDEVICEInfo(aNodeNo,aMcuID, aEcuID, aMcuIp,
  aMcuPort, aName, aBuildingCode, aFloorCode, aAreaCode, aRegState,
  aTotWidth, aTotHeight, aCurX, aCurY,aComPort: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Update TB_ACCESSDEVICE  Set ';
  stSql := stSql + 'AC_MCUIP = ''' + aMcuIp + ''',';
  stSql := stSql + 'AC_MCUPORT = ''' + aMcuPort + ''',';
  stSql := stSql + 'AC_MCUID = ''' + aMcuID + ''',';
  stSql := stSql + 'AC_DEVICENAME = ''' + aName + ''',';
  stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''',';
  stSql := stSql + 'AC_LOCATEUSE = ''' + aRegState + ''',';
  stSql := stSql + 'AC_TOTWIDTH =' + aTotWidth + ',';
  stSql := stSql + 'AC_TOTHEIGHT = ' + aTotHeight + ',';
  stSql := stSql + 'AC_CURX = ' + aCurX + ',';
  stSql := stSql + 'AC_CURY = ' + aCurY + ', ';
  stSql := stSql + 'AC_COMPORT = ''' + aComPort + ''', ';
  stSql := stSql + 'AC_UPDATE = ''Y'' ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  result :=  DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmDeviceCode.ed_EcunoChange(Sender: TObject);
begin
  chk_EcuUpdate.Checked := True;
end;

procedure TfmDeviceCode.cmb_sAreaCode1Change(Sender: TObject);
begin
  if cmb_sAreaCode1.itemindex < 0 then
  begin
    cmb_sAreaCode1.Text := '';
    Exit;
  End;

end;

function TfmDeviceCode.DupCheckMCUID(aMcuID: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin

  Result := False;
  stSql := ' Select * from  TB_ACCESSDEVICE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_MCUID = ''' + Trim(aMcuID) + ''' ';

  Try
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
        Exit;
      End;

      if RecordCount > 0 then Result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

function TfmDeviceCode.InsertAlarmDevice(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
begin
  //알람 목록에 있는지 체크 하여 인서트 혹은 업데이트
  if DupCheckAlarm(aNodeNo,aEcuID) then
  begin
    //업데이트 시에 수정사항이 있으면 업데이트 안함
    result := UpdateAlarmDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode);
    result := UpdateARMAREADefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode);
    result := UpdateZoneDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode);
    Exit;
  end else
  begin
    //업데이트 시에 수정사항이 있으면 업데이트 안함
    result := InsertAlarmDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode);
    result := InsertARMAREADefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode);
    result := InsertZoneDefaultInfo(aNodeNo,aEcuID,aName,aBuildingCode, aFloorCode, aAreaCode);
  end;
  //존 체크 하여 존 입력
end;

function TfmDeviceCode.UpdateECUName(aNodeNo, aMcuName: string): Boolean;
var
  stSql : string;
begin
//디폴트값인 확장기 명칭 변경
  if (DBTYPE = 'MSSQL') or (DBTYPE = 'MDB') then stSql := ' Update TB_ACCESSDEVICE set AC_DEVICENAME = ''' + aMcuName + ''' + ''_'' + AC_ECUID '
  else  stSql := ' Update TB_ACCESSDEVICE set AC_DEVICENAME = ''' + aMcuName + ''' || ''_'' || AC_ECUID ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ';
  stSql := stSql + ' AND ( AC_UPDATE is null or AC_UPDATE = ''N'' ) ';
  result := DataModule1.ProcessExecSQL(stSql);
//디폴트값인 확장기의 출입문 도어 명칭 변경
  if (DBTYPE = 'MSSQL') or (DBTYPE = 'MDB') then stSql := ' Update TB_DOOR set DO_DOORNONAME = ''' + aMcuName + ''' + ''_'' + AC_ECUID + ''_'' + DO_DOORNO + ''번 출입문'' '
  else  stSql := ' Update TB_DOOR set DO_DOORNONAME = ''' + aMcuName + ''' || ''_'' || AC_ECUID || ''_'' || DO_DOORNO || ''번 출입문'' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ';
  stSql := stSql + ' AND ( DO_UPDATE is null or DO_UPDATE = ''N'' ) ';
  result := DataModule1.ProcessExecSQL(stSql);

//디폴트값인 방범구역 명칭 변경
  if (DBTYPE = 'MSSQL') or (DBTYPE = 'MDB') then stSql := ' Update TB_ALARMDEVICE set AL_ZONENAME = ''' + aMcuName + ''' + ''_'' + AC_ECUID '
  else  stSql := ' Update TB_ALARMDEVICE set AL_ZONENAME = ''' + aMcuName + ''' || ''_'' || AC_ECUID ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ';
  stSql := stSql + ' AND ( AL_UPDATE is null or AL_UPDATE = ''N'' ) ';
  result := DataModule1.ProcessExecSQL(stSql);

//디폴트값인 존의 존 명칭 변경
  if (DBTYPE = 'MSSQL') or (DBTYPE = 'MDB') then  stSql := ' Update TB_ZONEDEVICE set AL_ZONENAME = ''' + aMcuName + ''' + ''_'' + AC_ECUID + ''-'' + AL_ZONENUM '
  else  stSql := ' Update TB_ZONEDEVICE set AL_ZONENAME = ''' + aMcuName + ''' || ''_'' || AC_ECUID || ''-'' || AL_ZONENUM ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ';
  stSql := stSql + ' AND ( AL_UPDATE is null or AL_UPDATE = ''N'' ) ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmDeviceCode.UpdateDoorName(aNodeNo, aEcuID,
  aEcuName: string): Boolean;
var
  stSql : string;
begin
  //해당 확장기의 출입문이 수정사항이 없으면 디폴트값 출입문 명칭을 변경 하자
  if DBTYPE = 'MSSQL' then stSql := ' Update TB_DOOR set DO_DOORNONAME = ''' + aEcuName + ''' + ''_'' + AC_ECUID + ''_'' + DO_DOORNO + ''번 출입문'' '
  else if DBTYPE = 'PG' then  stSql := ' Update TB_DOOR set DO_DOORNONAME = ''' + aEcuName + ''' || ''_'' || AC_ECUID || ''_'' || DO_DOORNO || ''번 출입문'' '
  else if DBTYPE = 'MDB' then stSql := ' Update TB_DOOR set DO_DOORNONAME = ''' + aEcuName + ''' + ''_'' + AC_ECUID + ''_'' + DO_DOORNO + ''번 출입문'' '
  else Exit;
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo + ' ';
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  stSql := stSql + ' AND ( DO_UPDATE is null or DO_UPDATE = ''N'' ) ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmDeviceCode.DeleteAlarmDevice(aNodeNo, aEcuID: string): Boolean;
begin
  //해당방범기기 삭제
  result := DeleteECUAlarmAll(aNodeNo,aEcuID);
  //해당 방범기기의 존정보 삭제
  result := DeleteECUZoneAll(aNodeNo,aEcuID);

end;

function TfmDeviceCode.DeleteECUZoneAll(aNodeNo, aECUID: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  //해당 알람장비 삭제
  stSql := 'Delete from TB_ZONEDEVICE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(aNodeNo)) ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ' ;

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.InsertZoneDefaultInfo(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
var
  i : integer;
begin
  for i := 1 to ZONECOUNT do
  begin
    InsertTB_ZONEDEVICE(aNodeNo,aEcuID,inttostr(i),aName + '-' + inttostr(i),'N',aBuildingCode, aFloorCode, aAreaCode,'0','0','0','0');
  end;

end;

function TfmDeviceCode.InsertAlarmDefaultInfo(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
begin
  result := InsertTB_ALARMDEVICE(aNodeNo,
                                       aEcuID,
                                       //inttostr(ed_AlarmNo4.Value),
                                       aName,
                                       aBuildingCode,
                                       aFloorCode,
                                       aAreaCode,
                                       'N',
                                       '0',
                                       '0',
                                       '0',
                                       '0',
                                       '1'
                                       );
end;

function TfmDeviceCode.UpdateAlarmDefaultInfo(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
var
  stSql : string;
begin
  stSql := ' Update TB_ALARMDEVICE  Set ';
  stSql := stSql + 'AL_ZONENAME = ''' + aName + ''',';
  stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
  stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
  stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
  stSql := stSql + ' AND (AL_UPDATE IS NULL OR AL_UPDATE = ''N'' ) ';

  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmDeviceCode.UpdateZoneDefaultInfo(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
var
  i : integer;
  stSql : string;
begin
  for i := 1 to ZONECOUNT do
  begin
    stSql := ' UPDATE TB_ZoneDevice SET ';
    stSql := stSql + ' AL_ZONENAME = ''' + aName + '-' + inttostr(i) + ''',';
    stSql := stSql + ' LO_DONGCODE = ''' + aBuildingCode + ''',';
    stSql := stSql + ' LO_FLOORCODE = ''' + aFloorCode + ''',';
    stSql := stSql + ' LO_AREACODE = ''' + aAreaCode + ''' ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
    stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
    stSql := stSql + ' AND AL_ZONENUM = ''' + inttostr(i) + ''' ';
    stSql := stSql + ' AND (AL_UPDATE IS NULL OR AL_UPDATE = ''N'' ) ';

    result :=  DataModule1.ProcessExecSQL(stSql);
  end;

end;

procedure TfmDeviceCode.ed_EcuNameEnter(Sender: TObject);
var
  TIMC: HIMC;
  dwSentence : DWORD; dwConversion : DWORD;
begin
  TIMC := ImmGetContext(TEdit(Sender).Handle);
  ImmGetConversionStatus(TIMC, dwConversion, dwSentence);
  ImmSetConversionStatus(TIMC, IME_CMODE_NATIVE, dwSentence);
  ImmReleaseContext(TEdit(Sender).Handle, TIMC);

end;

procedure TfmDeviceCode.rg_TypeClick(Sender: TObject);
begin
  if rg_Type.ItemIndex = 0 then
  begin
    NETTYPE := 'RS232';
    lb_McuIp.Caption := '메인 COM PORT';
    cmb_Comport.Visible := True;
    ed_McuIp.Visible := False;
  end else
  begin
    NETTYPE := 'TCPIP';
    lb_McuIp.Caption := '메인 IP';
    cmb_Comport.Visible := False;
    ed_McuIp.Visible := True;
  end;
  UpdateTB_Config('DAEMON','NETTYPE',NETTYPE);

end;

function TfmDeviceCode.UpdateTB_CONFIG(aCONFIGGROUP, aCONFIGCODE,
  aCONFIGVALUE: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  stSql := 'Update TB_CONFIG ';
  stSql := stSql + ' Set CO_CONFIGVALUE = ''' + aCONFIGVALUE + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CO_CONFIGGROUP = ''' + aCONFIGGROUP + ''' ';
  stSql := stSql + ' AND CO_CONFIGCODE = ''' + aCONFIGCODE + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);

end;


function TfmDeviceCode.NodeCount: integer;
var
  stSql : string;
  TempAdoQuery : TADOQuery;

begin
  result := 0;
  stSql := 'select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' where AC_GUBUN = ''0'' ';

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
      result := recordCount;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

function TfmDeviceCode.InsertARMAREADefaultInfo(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
var
  i : integer;
  stUse : string;
  stArmAreaName : string;
begin
  for i := 0 to con_nFIXMAXAREANO do
  begin
    if i = 0 then
    begin
      stUse := 'Y';
      stArmAreaName := aName;
    end else
    begin
      stUse := 'N';
      stArmAreaName := aName + '_' + inttostr(i) + '구역';
    end;
    result := InsertTB_ARMAREA(aNodeNo,
                                       aEcuID,
                                       inttostr(i),
                                       stArmAreaName,
                                       stUse,
                                       aBuildingCode,
                                       aFloorCode,
                                       aAreaCode,
                                       'N',
                                       '0',
                                       '0',
                                       '0',
                                       '0',
                                       '1'
                                       );
  end;
end;

function TfmDeviceCode.UpdateARMAREADefaultInfo(aNodeNo, aEcuID, aName,
  aBuildingCode, aFloorCode, aAreaCode: string): Boolean;
var
  i : integer;
  stUse : string;
  stArmAreaName : string;
  stSql : string;
begin
  for i := 0 to con_nFIXMAXAREANO do
  begin
    if i = 0 then
    begin
      stUse := 'Y';
      stArmAreaName := aName;
    end else
    begin
      stUse := 'N';
      stArmAreaName := aName + '_' + inttostr(i) + '구역';
    end;
    stSql := ' Update TB_ARMAREA  Set ';
    stSql := stSql + 'AR_NAME = ''' + stArmAreaName + ''',';
    stSql := stSql + 'LO_DONGCODE = ''' + aBuildingCode + ''',';
    stSql := stSql + 'LO_FLOORCODE = ''' + aFloorCode + ''',';
    stSql := stSql + 'LO_AREACODE = ''' + aAreaCode + ''' ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
    stSql := stSql + ' AND AC_ECUID = ''' + aEcuID + ''' ';
    stSql := stSql + ' AND AR_AREANO = ''' + '0' + inttostr(i) + ''' ';
    stSql := stSql + ' AND (AR_UPDATE IS NULL OR AR_UPDATE = ''N'' ) ';

    result := DataModule1.ProcessExecSQL(stSql);

  end;
end;

function TfmDeviceCode.InsertTB_ARMAREA(aNodeNo, aEcuID, aArmAreaNo, aName,
  aArmAreaUse, aBuildingCode, aFloorCode, aAreaCode, aRegState, aTotWidth,
  aTotHeight, aCurX, aCurY, aAlarmSeq: string): Boolean;
var
  stSql :string;
begin
  result := False;

  stSql := ' Insert Into TB_ARMAREA (';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
  stSql := stSql + 'AR_AREANO,';
  stSql := stSql + 'AR_NAME,';
  stSql := stSql + 'AR_USE,';
  stSql := stSql + 'AR_LOCATEUSE,';
  stSql := stSql + 'LO_DONGCODE,';
  stSql := stSql + 'LO_FLOORCODE,';
  stSql := stSql + 'LO_AREACODE,';
  stSql := stSql + 'AR_TOTWIDTH,';
  stSql := stSql + 'AR_TOTHEIGHT,';
  stSql := stSql + 'AR_CURX,';
  stSql := stSql + 'AR_CURY,';
  stSql := stSql + 'AR_VIEWSEQ )';
  stSql := stSql + ' values (';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + aNodeNo + ',';
  stSql := stSql + '''' + aEcuID + ''',';
  stSql := stSql + '''' + '0' + aArmAreaNo + ''',';
  stSql := stSql + '''' + aName + ''',';
  stSql := stSql + '''' + aArmAreaUse + ''',';
  stSql := stSql + '''' + aRegState + ''',';
  stSql := stSql + '''' + aBuildingCode + ''',';
  stSql := stSql + '''' + aFloorCode + ''',';
  stSql := stSql + '''' + aAreaCode + ''',';
  stSql := stSql + aTotWidth + ',';
  stSql := stSql + aTotHeight + ',';
  stSql := stSql + aCurX + ',';
  stSql := stSql + aCurY + ',';
  stSql := stSql + aAlarmSeq + ') ';

  result :=  DataModule1.ProcessExecSQL(stSql);

end;

end.
