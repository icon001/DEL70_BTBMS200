unit uEmploy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvEdit, AdvEdBtn, PlannerDatePicker, ExtCtrls, StdCtrls,
  Buttons, Grids, BaseGrid, AdvGrid, ComCtrls,DB,Jpeg, uSubForm,
  CommandArray, OoMisc, AdPort,WinSpool, AdPacket, ADODB,
  LMDCustomComponent, LMDFileCtrl, RzLstBox, RzChkLst, Mask,
  ActiveX;

type
  TfmEmploy = class(TfmASubForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    pn_Employ: TPanel;
    ed_sEmpNo: TEdit;
    Label6: TLabel;
    ed_sEmpNM: TEdit;
    Label7: TLabel;
    cmb_sCompany: TComboBox;
    Label8: TLabel;
    cmb_sDepart: TComboBox;
    Label9: TLabel;
    cmb_sPosi: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    ed_sZipcode: TEdit;
    Label12: TLabel;
    ed_sAddr1: TEdit;
    btn_ZipcodeSearch: TSpeedButton;
    Label13: TLabel;
    ed_sAddr2: TEdit;
    Label14: TLabel;
    ed_sCompanyPhone: TEdit;
    Label15: TLabel;
    ed_sHomePhone: TEdit;
    Label16: TLabel;
    ed_sHandphone: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    chk_CardReg: TCheckBox;
    Label19: TLabel;
    ed_CardNo: TEdit;
    Label20: TLabel;
    cmb_RegGubun: TComboBox;
    dt_sJoinDt: TDateTimePicker;
    dt_sRetireDt: TDateTimePicker;
    btn_Save: TSpeedButton;
    btn_Close: TSpeedButton;
    RzOpenDialog1: TOpenDialog;
    ReaderPort: TApdComPort;
    ApdDataPacket1: TApdDataPacket;
    chk_AutoSabun: TCheckBox;
    ADOQuery: TADOQuery;
    FileCtrl: TLMDFileCtrl;
    rg_CardReader: TRadioGroup;
    Panel3: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Label1: TLabel;
    cmb_DoorGradeGroup: TComboBox;
    btn_GradeGroup: TSpeedButton;
    Panel6: TPanel;
    Label3: TLabel;
    cmb_regDevice: TComboBox;
    Panel7: TPanel;
    pan_Door: TPanel;
    clDoor: TRzCheckList;
    Splitter2: TSplitter;
    StaticText1: TStaticText;
    pan_Alarm: TPanel;
    StaticText2: TStaticText;
    clAlarm: TRzCheckList;
    Label4: TLabel;
    cmb_sJijum: TComboBox;
    fdmsADOQuery: TADOQuery;
    ed_fdmsID: TEdit;
    chk_AutoSave: TCheckBox;
    TempADOQuery: TADOQuery;
    lb_KTNumber: TLabel;
    ed_CardNumber: TEdit;
    lb_FdmsID: TLabel;
    cmb_ComPort: TComboBox;
    Label5: TLabel;
    lb_FingerState: TLabel;
    btn_Finger: TSpeedButton;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmb_sCompanyChange(Sender: TObject);
    procedure ed_sEmpNoKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_sCompanyKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sEmpNMKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_sDepartKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_sPosiKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sCompanyPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure dt_sJoinDtKeyPress(Sender: TObject; var Key: Char);
    procedure dt_sRetireDtKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sZipcodeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sAddr1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_sAddr2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_sHomePhoneKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sHandphoneKeyPress(Sender: TObject; var Key: Char);
    procedure chk_CardRegKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_ComPortKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_RegGubunKeyPress(Sender: TObject; var Key: Char);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure chk_CardRegClick(Sender: TObject);
    procedure btn_ZipcodeSearchClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand0Execute(Command: TCommand;
      Params: TStringList);
    procedure cmb_ComPortChange(Sender: TObject);
    procedure ApdDataPacket1StringPacket(Sender: TObject; Data: String);
    procedure ed_sEmpNoExit(Sender: TObject);
    procedure chk_AutoSabunClick(Sender: TObject);
    procedure rg_CardReaderClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand1Execute(Command: TCommand;
      Params: TStringList);
    procedure FormShow(Sender: TObject);
    procedure clDoorChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure btn_GradeGroupClick(Sender: TObject);
    procedure cmb_DoorGradeGroupKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_DoorGradeGroupChange(Sender: TObject);
    procedure clDoorClick(Sender: TObject);
    procedure cmb_regDeviceChange(Sender: TObject);
    procedure cmb_sJijumChange(Sender: TObject);
    procedure clAlarmChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure ed_CardNumberKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_CardNoChange(Sender: TObject);
    procedure btn_FingerClick(Sender: TObject);

  private
    sCompanyCodeList : TStringList;
    sJijumCodeList : TStringList;
    sDepartCodeList : TStringList;
    sPosiCodeList : TStringList;
    DoorList: TStringList;
    ArmAreaList : TStringList;
    CurCheckedList: TStringList;
    CurArmAreaCheckedList : TStringList;
    DoorCodeList : TStringList;
    DeviceList : TStringList;
    ComPortList : TStringList;
    OldCardNo : string;
    AutoSabun : integer;
    bDoorClick : Boolean;
    L_bIsSaveing : Boolean;
    L_bDeviceGradeFail : Boolean;
    L_bDupPositionNumber : Boolean;
    L_stOldFdmsNo : string;
    { Private declarations }
    procedure LoadDoorList(cmb_Box:TComboBox);
    procedure LoadDeviceList(cmb_Box:TComboBox);
    procedure LoadDoorInfo;
    procedure LoadArmAreaInfo;
    procedure LoadCardGroup(cmb_Box:TComboBox);
    procedure DoorGroupSetting(stDoorGroup:string);
    Procedure CheckedList(aDoorNo:String);
    Procedure UnCheckedList(aDoorNo:String);
    Procedure CheckedArmAreaList(aDeviceID:String;aArmAreaNo:integer);
    Procedure UnCheckedArmAreaList(aDeviceID:String;aArmAreaNo:integer);

    procedure GridInit(sg:TStringGrid;aCol:integer);
    procedure pn_EmployInit;
    procedure SearChEmployee;
    procedure SearchCardGrade;
    procedure InsertDoorGrade;
    procedure InsertAlarmGrade;
    Function CheckTB_DEVICECARDNO(aCardNo,aNodeNo,aECUID : String):Boolean;
    Function InsertTB_DEVICECARDNO(aCardNo,aNodeNo,aECUID,aDoorNO,aTimCode,aPermit,aValue:string):Boolean;
    Function UpdateTB_DEVICECARDNO(aCardNo,aNodeNo,aECUID,aDoorNO,aTimCode,aPermit,aValue: string):Boolean;
    Function CheckPositionNumber(aCardNo,aPositionNumber:string):Boolean;
    Function Check_FDMSID(aEmCode,afdmsID:string):Boolean;

    procedure pn_EmployInSertMode;
    procedure pn_EmployUpdateMode;
    function GetFdmsCardNo : string;
    function GetLastFdmsCardNo : int64;
    function GetFixedCardNoCheck(aCardNo:string;bCardFixedUse:Boolean;
         aCardFixedFillChar:string;nCardFixedPosition,nCardFixedLength:integer):string;
    Function DupCheckCardNo(aCardNo:string):Boolean;
    Function DeleteTB_CARD(aCardNo:string):Boolean;
    Function UpdateTB_DEVICECARDNODelete(aCardNo,aPermit:string):Boolean; //모든 카드 권한을 삭제 처리함
    Function DeleteTB_EMPLOYEE(aEmpID,aCompanyCode:string):Boolean;
    Function InsertTB_EMPLOYEE(aEmpID,aEmpNM,aCompanyCode,aJijumCode,aDepartCode,aPosiCod,aCompanyPhone,
                                 aJoinDate,aRetireDate,aZipcode,aAddr1,aAddr2,aHomePhone,aHandphone,
                                 aRegGubun,aCardNo,afdmsID:string):Boolean;
    Function UpdateTB_EMPLOYEE(aEmpID,aEmpNM,aCompanyCode,aJijumCode,aDepartCode,aPosiCode,aCompanyPhone,
                                 aJoinDate,aRetireDate,aZipcode,aAddr1,aAddr2,aHomePhone,aHandphone,
                                 aRegGubun,aCardNo,afdmsID:string):Boolean;
    Function InsertTB_EMPHISCardStop(aCardNo:string):Boolean;
    Function UpdatTB_CARD_Stop(aCardNo:string):Boolean;
    Function CheckTB_CARD(aCardNo,aCompanyCode,aEmpID,aCardType :string;var Mode:string) : Boolean;
    Function InsertTB_CARD(aCardNo,aCardGubun,aCardType,aEmpID,aCompanyCode:string) : Boolean;
    Function UpdateTB_CARD(aCardNo,aCardGubun,aCardType,aEmpID,aCompanyCode:string) : Boolean;
    Function CheckTB_EMPLOYEE(aEmpID,aCompanyCode:string):Boolean;
    Procedure RcvCardDataByReader(aData:String);
    Function UpdateTB_ACCESSEVENTCARDNO(aOldCardNo,aCardNo:string):Boolean;
    Function UpdateTB_ATEVENTCARDNO(aOldCardNo,aCardNo:string):Boolean;
    Function UpdateTB_FoodEventCARDNO(aOldCardNo,aCardNo:string):Boolean;
    function ConvertHIDCardNO(aCardNO1,aCardNo2:string):string;
    Function GetFdmsID:string;
    Function GetNextPositionNumber : string;
  public
    State : string;
    EmployeeNo:string;
    CompanyCode:string;
    SelectCardNo : string;
    SelectEmployee : string;
    { Public declarations }
    function GetSerialPortList(List : TStringList; const doOpenTest : Boolean = True) : LongWord;
    function EncodeCommportName(PortNum : WORD) : String;
    function DecodeCommportName(PortName : String) : WORD;
    procedure AccessEventProcess(NodeNo:integer;
          aEcuID, aDoorNo, aReaderNo, aCardNo, aTime, aPermit, aInputType,
          aButton:string);

  end;

var
  fmEmploy: TfmEmploy;

implementation

uses
  uEmploeeSearch,
  uDataModule1,
  uCommonSql,
  uZipCode,
  uLomosUtil,
  uCardGroup,
  uCompanyCodeLoad, uMssql, uPostGreSql, uMDBSql, uFireBird, udmAdoQuery
  ,uFingerRegistDevice,uSHFingerRegistDevice
  ;

{$R *.dfm}

procedure TfmEmploy.btn_CloseClick(Sender: TObject);
begin
  Close;
end;


procedure TfmEmploy.FormCreate(Sender: TObject);
begin
  self.ModuleID := 'Employ';

  sCompanyCodeList := TStringList.Create;
  sJijumCodeList := TStringList.Create;
  sDepartCodeList := TStringList.Create;
  sPosiCodeList := TStringList.Create;
  ComPortList := TStringList.Create;
  DoorCodeList := TStringList.Create;
  DoorList:= TStringList.Create;
  DeviceList := TStringList.Create;
  ArmAreaList := TStringList.Create;
  CurCheckedList:= TStringList.Create;
  CurArmAreaCheckedList := TStringList.Create;

  State := '';
  AutoSabun := 0;
  //LoadDoorList(cmb_ComPort);
  LoadDeviceList(cmb_ComPort);
  bDoorClick := False;
  OldCardNo := '';
  cmb_regDevice.ItemIndex := 0;
  L_bIsSaveing := False;
  L_bDeviceGradeFail := False;
end;

procedure TfmEmploy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ReaderPort.Open then
  begin
//    ApdDataPacket1.Enabled := False;
    ReaderPort.Open:= False;
  end;
  sCompanyCodeList.Free;
  sJijumCodeList.Free;
  sDepartCodeList.Free;
  sPosiCodeList.Free;
  DoorList.Free;
  ArmAreaList.Free;
  CurCheckedList.Free;
  CurArmAreaCheckedList.Free;
  
  ApdDataPacket1.Free;
  ReaderPort.Free;
  ComPortList.Free;
  DoorCodeList.Free;
  DeviceList.Free;


  self.FindSubForm('Main').FindCommand('FormView').Params.Values['FORMNAME'] := 'EMPLOYEE';
  self.FindSubForm('Main').FindCommand('FormView').Params.Values['VALUE'] := 'FALSE';
  self.FindSubForm('Main').FindCommand('FormView').Execute;

end;



procedure TfmEmploy.cmb_sCompanyChange(Sender: TObject);
var
  stCompanyCode : string;
  stJijumCode : string;
begin
  stCompanyCode := '000';
  if cmb_sCompany.ItemIndex > 0 then stCompanyCode := sCompanyCodeList.Strings[cmb_sCompany.ItemIndex];
  LoadsJijumCode(stCompanyCode,sJijumCodeList,cmb_sJijum);
  stJijumCode := '000';
  if cmb_sJijum.ItemIndex > 0 then stJijumCode := copy(sJijumCodeList.Strings[cmb_sJijum.ItemIndex],4,3);
  LoadsDepartCode(stCompanyCode,stJijumCode,sDepartCodeList,cmb_sDepart);
  LoadsPosiCode(stCompanyCode,sPosiCodeList,cmb_sPosi);

end;

procedure TfmEmploy.GridInit(sg: TStringGrid;aCol:integer);
var
  i:integer;
begin
  with sg do
  begin
    RowCount := 2;
    for i:= 0 to ColCount - 1 do
    begin
      Cells[i,1] := '';
    end;

    for i := aCol to ColCount - 1 do
    begin
      ColWidths[i] := 0;
    end;
  end;

end;

procedure TfmEmploy.pn_EmployInit;
begin
  ed_sEmpNo.Text := '';
//  ed_sEmpNo.Enabled := False;
//  chk_AutoSabun.Enabled := False;
  ed_sEmpNM.Text := '';
//  ed_sEmpNM.Enabled := False;
  if Not chk_AutoSabun.Checked then
  begin
    cmb_sCompany.ItemIndex := 0 ;
//  cmb_sCompany.Enabled := False;
    cmb_sDepart.Clear;
//  cmb_sDepart.Enabled := False;
    sDepartCodeList.Clear;
    cmb_sPosi.ItemIndex := 0;
  end;
//  cmb_sPosi.Enabled := False;
  ed_sCompanyPhone.Text := '';
//  ed_sCompanyPhone.Enabled := False;
  dt_sJoinDt.Date := Now;
//  dt_sJoinDt.Enabled := False;
  dt_sRetireDt.Date := strToDate('9999-12-30');
//  dt_sRetireDt.Enabled := False;
  ed_sZipcode.Text := '';
//  ed_sZipcode.Enabled := False;
//  btn_ZipcodeSearch.Enabled := False;
  ed_sAddr1.Text := '';
//  ed_sAddr1.Enabled := False;
  ed_sAddr2.Text := '';
//  ed_sAddr2.Enabled := False;
  ed_sHomePhone.Text := '';
//  ed_sHomePhone.Enabled := False;
  ed_sHandphone.Text := '';
//  ed_sHandphone.Enabled := False;
//  chk_CardReg.Enabled := False;
//  cmb_ComPort.Enabled := False;
  cmb_RegGubun.ItemIndex := 1;
//  cmb_RegGubun.Enabled := False;
  ed_CardNo.Text := '';
//  ed_CardNo.Enabled := False;
//  btn_Image.Enabled := False;
//  rg_CardReader.Enabled := False;
  if G_bAutoFdmsCardNo then
  begin
    ed_CardNo.Text := GetFdmsCardNo;
    ed_CardNoChange(ed_CardNo);
  end;
  lb_FingerState.Caption := '미등록';
end;

procedure TfmEmploy.pn_EmployInSertMode;
begin
  ed_sEmpNo.Text := '';
  ed_sEmpNo.Enabled := True;
  chk_AutoSabun.Enabled := True;
  ed_sEmpNM.Text := '';
  ed_sEmpNM.Enabled := True;
  cmb_sCompany.ItemIndex := 0 ;
  cmb_sCompany.Enabled := True;
  cmb_sDepart.Clear;
  cmb_sDepart.Enabled := True;
  sDepartCodeList.Clear;
  cmb_sPosi.ItemIndex := 0;
  cmb_sPosi.Enabled := True;
  ed_sCompanyPhone.Text := '';
  ed_sCompanyPhone.Enabled := True;
  dt_sJoinDt.Date := Now;
  dt_sJoinDt.Enabled := True;
  dt_sRetireDt.Date := strToDate('9999-12-30');
  dt_sRetireDt.Enabled := True;
  ed_sZipcode.Text := '';
  ed_sZipcode.Enabled := True;
  btn_ZipcodeSearch.Enabled := True;
  ed_sAddr1.Text := '';
  ed_sAddr1.Enabled := True;
  ed_sAddr2.Text := '';
  ed_sAddr2.Enabled := True;
  ed_sHomePhone.Text := '';
  ed_sHomePhone.Enabled := True;
  ed_sHandphone.Text := '';
  ed_sHandphone.Enabled := True;
  chk_CardReg.Enabled := True;
  if chk_CardReg.Checked then cmb_ComPort.Enabled := True;
  cmb_RegGubun.Enabled := True;
  cmb_RegGubun.ItemIndex := 1;
  ed_CardNo.Text := '';
  ed_CardNo.Enabled := True;
  rg_CardReader.Enabled := True;
  cmb_ComPort.Enabled := True;
  
end;

procedure TfmEmploy.ed_sEmpNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sEmpNM.SetFocus;
  end;
end;

procedure TfmEmploy.cmb_sCompanyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    cmb_sDepart.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sEmpNMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    cmb_sCompany.SetFocus;
  end;

end;

procedure TfmEmploy.cmb_sDepartKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    cmb_sPosi.SetFocus;
  end;

end;

procedure TfmEmploy.cmb_sPosiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sCompanyPhone.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sCompanyPhoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    dt_sJoinDt.SetFocus;
  end;

end;

procedure TfmEmploy.dt_sJoinDtKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    dt_sRetireDt.SetFocus;
  end;

end;

procedure TfmEmploy.dt_sRetireDtKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sZipcode.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sZipcodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sAddr1.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sAddr1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sAddr2.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sAddr2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sHomePhone.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sHomePhoneKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_sHandphone.SetFocus;
  end;

end;

procedure TfmEmploy.ed_sHandphoneKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    chk_CardReg.SetFocus;
  end;

end;

procedure TfmEmploy.chk_CardRegKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    //cmb_ComPort.SetFocus;
  end;

end;

procedure TfmEmploy.cmb_ComPortKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    cmb_RegGubun.SetFocus;
  end;

end;

procedure TfmEmploy.cmb_RegGubunKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ed_CardNo.SetFocus;
  end;

end;

procedure TfmEmploy.pn_EmployUpdateMode;
begin
  ed_sEmpNM.Enabled := True;
  cmb_sCompany.Enabled := True;
  cmb_sDepart.Enabled := True;
  cmb_sPosi.Enabled := True;
  ed_sCompanyPhone.Enabled := True;
  dt_sJoinDt.Enabled := True;
  dt_sRetireDt.Enabled := True;
  ed_sZipcode.Enabled := True;
  btn_ZipcodeSearch.Enabled := True;
  ed_sAddr1.Enabled := True;
  ed_sAddr2.Enabled := True;
  ed_sHomePhone.Enabled := True;
  ed_sHandphone.Enabled := True;
  chk_CardReg.Enabled := True;
  if chk_CardReg.Checked then cmb_ComPort.Enabled := True;
  cmb_RegGubun.Enabled := True;
  ed_CardNo.Enabled := True;
  rg_CardReader.Enabled := True;
  cmb_ComPort.Enabled := True;

end;

procedure TfmEmploy.btn_DeleteClick(Sender: TObject);
var
  bCardDelete : Boolean;
  bResult : Boolean;
  stCompanyCode : string;
begin

  bCardDelete := True;
  if ed_CardNo.Text <> '' then
  begin
    if (Application.MessageBox(PChar('카드데이터(' + ed_CardNo.Text + ')를 삭제하시겠습니까?' ),'삭제',MB_OKCANCEL) = ID_CANCEL)  then  bCardDelete := False;
  end else bCardDelete := False;

  if bCardDelete then
  begin
    if cmb_RegGubun.ItemIndex = 1 then
    begin
      ShowMessage('카드데이터를 삭제 하시려면 카드의 등록상태를 정지 시키셔야 합니다.');
      Exit;
    end;
    bResult := DeleteTB_CARD(ed_CardNo.Text);
    if Not bResult then Exit;
  end;

  if cmb_sCompany.ItemIndex < 0 then stCompanyCode := ''
  else stCompanyCode := sCompanyCodeList.Strings[cmb_sCompany.ItemIndex];
  bResult := DeleteTB_EMPLOYEE(ed_sEmpNo.Text,stCompanyCode);

  if Not bResult then Exit;

end;

function TfmEmploy.DeleteTB_CARD(aCardNo: string): Boolean;
var
  stSql : string;
  bResult : Boolean;
begin
  Result := False;
  if aCardNo = '' then Exit;
  bResult := UpdateTB_DEVICECARDNODelete(aCardNo,'N'); //모든 카드 권한을 삭제 처리함
  //if Not bResult then Exit;

  stSql := 'Delete From TB_CARD ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' +  aCardNo + ''' ';

  with DataModule1.GetObject.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      EXECSQL;
    Except
      showmessage('카드 데이터를 삭제하는데 실패하였습니다.');
      Exit;
    End;
  end;
  Result := True;
end;

function TfmEmploy.UpdateTB_DEVICECARDNODelete(aCardNo,
  aPermit: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'Update TB_DEVICECARDNO Set ';
  stSql := stSql + ' DE_PERMIT = ''' + aPermit + ''', ';
  stSql := stSql + ' DE_RCVACK = ''N'' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';

  with DataModule1.GetObject.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      EXECSQL;
    Except
      showmessage('카드 권한 변경에 실패하였습니다.');
      Exit;
    End;

  end;
  result := True;
end;

function TfmEmploy.DeleteTB_EMPLOYEE(aEmpID,
  aCompanyCode: string): Boolean;
var
  stSql : string;
begin
  Result := False;

  stSql := 'Delete From TB_EMPLOYEE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' +  aEmpID + ''' ';
  if (aCompanyCode <> '') and (aCompanyCode <> '000') then
  begin
    stSql := stSql + ' AND CO_COMPANYCODE = ''' +  aCompanyCode + ''' ';
  end;

  with DataModule1.GetObject.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      EXECSQL;
    Except
      showmessage('사원 데이터를 삭제하는데 실패하였습니다.');
      Exit;
    End;
  end;
  Result := True;
end;

procedure TfmEmploy.btn_SaveClick(Sender: TObject);
var
  stCompanyCode : string;
  stJijumCode : string;
  stDepartCode : string;
  stPosiCode : string;
  bResult : Boolean;
  stJumin : string;
  stCardNo1,stCardNo2:string;
begin
  if L_bIsSaveing then
  begin
    Showmessage('데이터 저장중입니다.');
    Exit;
  end;
  if Trim(ed_sEmpNo.Text) = '' then
  begin
    Showmessage('사번이 등록되지 않았습니다.');
    ed_sEmpNo.SetFocus;
    Exit;
  end;
  EmployeeNo := Trim(ed_sEmpNo.Text);
  if length(ed_CardNo.Text) <> 0 then
  begin
    if (CARDLENGTHTYPE = 0) and IsNumericCardNo then
    begin
      if Not isDigit(ed_CardNo.Text) then
      begin
        showmessage('카드번호는 숫자타입으로만 입력 하셔야 합니다.');
        Exit;
      end;
      if Length(ed_CardNo.Text) < 10 then  ed_CardNo.Text := FillZeroNumber2(strtoint64(ed_CardNo.Text),10);
      if Length(ed_CardNo.Text) > 10 then  ed_CardNo.Text := copy(ed_CardNo.Text,1,10);
    end;
    if G_bCardFixedUse then
    begin
      if Length(Trim(ed_CardNo.Text)) <> G_nCardFixedLength then
      begin
        showmessage('카드길이가 ' + inttostr(G_nCardFixedLength) + '자리가 아닙니다.');
        Exit;
      end;
    end;

    if cmb_RegGubun.ItemIndex < 1 then
    begin
      showmessage('카드 등록 상태를 선택해 주세요.');
      cmb_RegGubun.SetFocus;
      Exit;
    end;
    ed_CardNoChange(ed_CardNo);
  end;
  if UpperCase(State) = 'INSERT' then
  begin
    if L_bDupPositionNumber then
    begin
      showmessage(lb_KTNumber.caption + ' 중복입니다.');
      Exit;
    end;
  end;

  if cmb_sCompany.ItemIndex < 1 then
  begin
    Showmessage('회사코드가 선택되지 않았습니다.');
    cmb_sCompany.SetFocus;
    Exit;
  end;
  if Not isDigit(ed_fdmsID.Text) then
  begin
    Showmessage(lb_FdmsID.caption + '를 입력 하여 주세요.');
    Exit;
  end;
  if Check_FDMSID(ed_sEmpNo.Text,ed_fdmsID.Text) then
  begin
    Showmessage(lb_FdmsID.caption + ' 중복입니다.');
    Exit;
  end;
  btn_Save.Enabled := False;
  L_bIsSaveing := True;
  stCompanyCode := '000';
  stJijumCode := '000';
  stDepartCode := '000';
  stPosiCode := '000';
  if cmb_sCompany.ItemIndex > 0 then stCompanyCode := copy(sCompanyCodeList.Strings[cmb_sCompany.itemIndex],1,3);
  if cmb_sJijum.ItemIndex > 0 then stJijumCode := copy(sJijumCodeList.Strings[cmb_sJijum.itemIndex],4,3);
  if cmb_sDepart.ItemIndex > 0 then  stDepartCode := copy(sDepartCodeList.Strings[cmb_sDepart.itemIndex],7,3);
  if cmb_sPosi.ItemIndex > 0 then  stPosiCode := copy(sPosiCodeList.Strings[cmb_sPosi.ItemIndex],4,3);

  if UpperCase(State) = 'INSERT' then
  begin
    bResult := InsertTB_EMPLOYEE(ed_sEmpNo.Text,ed_sEmpNM.Text,stCompanyCode,stJijumCode,
                                 stDepartCode,stPosiCode,ed_sCompanyPhone.text,
                                 FormatDateTime('yyyymmdd',dt_sJoinDt.Date),FormatDateTime('yyyymmdd',dt_sRetireDt.Date),
                                 ed_sZipcode.Text,ed_sAddr1.Text,ed_sAddr2.Text,ed_sHomePhone.Text,ed_sHandphone.Text,
                                 intTostr(cmb_RegGubun.ItemIndex),ed_CardNo.Text,ed_fdmsID.text);
    if bResult then
    begin
      if chk_AutoSabun.Checked then inc(AutoSabun);
    end;
  end  else if UpperCase(State) = 'UPDATE' then
  begin
    bResult := UpdateTB_EMPLOYEE(ed_sEmpNo.Text,ed_sEmpNM.Text,stCompanyCode,stJijumCode,
                                 stDepartCode,stPosiCode,ed_sCompanyPhone.text,
                                 FormatDateTime('yyyymmdd',dt_sJoinDt.Date),FormatDateTime('yyyymmdd',dt_sRetireDt.Date),
                                 ed_sZipcode.Text,ed_sAddr1.Text,ed_sAddr2.Text,ed_sHomePhone.Text,ed_sHandphone.Text,
                                 intTostr(cmb_RegGubun.ItemIndex),ed_CardNo.Text,ed_fdmsID.text);
    if SelectCardNo <> ed_CardNo.Text then  //카드번호가 변경 되었다.
    begin
      dmAdoQuery.UpdateTB_CARDFINGER_FingerCardNoChange(ed_fdmsID.Text,ed_CardNo.Text);
    end;
  end;
  if Not bResult then
  begin
    showmessage('데이터 저장에 실패하였습니다.');
    btn_Save.Enabled := True;
    L_bIsSaveing := False;
    Exit;
  end;
  if cmb_RegGubun.ItemIndex = 1 then
  begin
    InsertDoorGrade;
    InsertAlarmGrade;
  end else //정상등록 상태가 아니면
    UpdateTB_DEVICECARDNODelete(ed_CardNo.Text,'N');

  if L_bDeviceGradeFail then
  begin
    L_bDeviceGradeFail := False;
    showmessage('카드 권한이 ' + inttostr(G_nCardMaxCount) + '건이 초과하여 권한 등록 되지 않은 기기가 존재 합니다.');
  end;

  if L_stOldFdmsNo <> ed_fdmsID.Text then
  begin
    //지문번호가 바뀌었다.
    if DataModule1.DupCheckTB_CARDFINGER(L_stOldFdmsNo) then
    begin
      dmAdoQuery.DeleteTB_CARDFINGER_FingerUserID(ed_fdmsID.Text);
      dmAdoQuery.InsertIntoTB_CARDFINGER_FingerUserIDCopy(L_stOldFdmsNo,ed_fdmsID.Text);
      dmAdoQuery.UpdateTB_CARDFINGER_FingerUserIDPermit(L_stOldFdmsNo,'0');
    end;
  end;


  SelectEmployee := stCompanyCode + ed_sEmpNo.Text;
  if UpperCase(State) = 'INSERT' then
  begin
    pn_EmployInit;
    chk_AutoSabunClick(self);
    btn_Save.Enabled := True;
    L_bIsSaveing := False;
    ed_CardNumber.Text := GetNextPositionNumber;
    ed_fdmsID.text := GetFdmsID;
    L_stOldFdmsNo := ed_fdmsID.text;
  end
  else if UpperCase(State) = 'UPDATE' then Close;
end;

function TfmEmploy.InsertTB_EMPLOYEE(aEmpID, aEmpNM, aCompanyCode,aJijumCode,
  aDepartCode, aPosiCod, aCompanyPhone, aJoinDate, aRetireDate, aZipcode,
  aAddr1, aAddr2, aHomePhone, aHandphone, aRegGubun, aCardNo,afdmsID: string): Boolean;
var
  stSql : string;
  bResult : Boolean;
  stMode : string;
begin
  Result := False;
  bResult := False;
  bResult := CheckTB_EMPLOYEE(aEmpID,aCompanyCode);
  if bResult then
  begin
    showmessage('이미 등록되어 있는 사번입니다. 사번을 확인하여 주세요.');
    ed_sEmpNo.SetFocus;
    Exit;
  end;

  bResult := False;
  if Length(aCardNo) > 0 then
  begin
    bResult := CheckTB_CARD(aCardNo,aCompanyCode,aEmpID,aRegGubun,stMode);
  end;
  if bResult then //카드번호 입력하자.
  begin
    if stMode = 'Insert' then  bResult := InsertTB_CARD(aCardNo,'1',aRegGubun,aEmpID,aCompanyCode)
    else if stMode = 'Update' then bResult := UpdateTB_CARD(aCardNo,'1',aRegGubun,aEmpID,aCompanyCode);

    if Not bResult then
    begin
      showmessage('카드등록에 실패하였습니다.관리자에게 문의 주세요.');
      Exit;
    end;
  end;

  stSql := 'Insert Into TB_EMPLOYEE(';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'EM_CODE,';
  stSql := stSql + 'CO_COMPANYCODE,';
  stSql := stSql + 'CO_JIJUMCODE,';
  stSql := stSql + 'CO_DEPARTCODE,';
  stSql := stSql + 'PO_POSICODE,';
  stSql := stSql + 'EM_NAME,';
  stSql := stSql + 'EM_COPHONE,';
  stSql := stSql + 'EM_HOMEPHONE,';
  stSql := stSql + 'EM_HANDPHONE,';
  stSql := stSql + 'ZI_ZIPCODE,';
  stSql := stSql + 'EM_ADDR1,';
  stSql := stSql + 'EM_ADDR2,';
  stSql := stSql + 'EM_JOINDATE,';
  stSql := stSql + 'EM_RETIREDATE,';
  stSql := stSql + 'AT_ATCODE,';
  stSql := stSql + 'FDMS_ID,';
  stSql := stSql + 'EM_UPDATETIME,';
  stSql := stSql + 'EM_UPDATEOPERATOR ) ';
  stSql := stSql + 'VALUES ( ';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + '''' + aEmpID + ''',';
  stSql := stSql + '''' + aCompanyCode + ''',';
  stSql := stSql + '''' + aJijumCode + ''',';
  stSql := stSql + '''' + aDepartCode + ''',';
  stSql := stSql + '''' + aPosiCod + ''',';
  stSql := stSql + '''' + aEmpNM + ''',';
  stSql := stSql + '''' + aCompanyPhone + ''',';
  stSql := stSql + '''' + aHomePhone + ''',';
  stSql := stSql + '''' + aHandphone + ''',';
  stSql := stSql + '''' + aZipcode + ''',';
  stSql := stSql + '''' + aAddr1 + ''',';
  stSql := stSql + '''' + aAddr2 + ''',';
  stSql := stSql + '''' + aJoinDate + ''',';
  stSql := stSql + '''' + aRetireDate + ''',';
  stSql := stSql + '''001'',';
  stSql := stSql + '' + afdmsID + ',';
  stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + '''' + Master_ID + ''' )';

  result := DataModule1.ProcessExecSQL(stSql);

  stSql := CommonSql.InsertIntoTB_EMPHIS(aCompanyCode,aEmpID,afdmsID,'1',aCardNo,'1',
           aEmpNM,aHandphone,cmb_sCompany.Text,cmb_sJijum.Text,cmb_sDepart.Text,cmb_sPosi.Text);//입력
  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmEmploy.UpdateTB_EMPLOYEE(aEmpID, aEmpNM, aCompanyCode,aJijumCode,
  aDepartCode, aPosiCode, aCompanyPhone, aJoinDate, aRetireDate, aZipcode,
  aAddr1, aAddr2, aHomePhone, aHandphone, aRegGubun, aCardNo,afdmsID: string): Boolean;
var
  stMsg : string;
  bResult : Boolean;
  stMode : string;
  stSql : string;
  stCompanyName : string;
  stJijumName : string;
  stDepartName : string;
  stPosiName : string;
begin
  Result := False;

  if (Trim(OldCardNo) <> '') and (Trim(OldCardNo) <> aCardNo) then
  begin
    stMsg := '(' + OldCardNo + ')카드번호 에서 (' +
        aCardNo + ') 으로 변경되었습니다. ' + #13 +
        '(' + OldCardNo + ')를 정지 하시겠습니까? ';
    if (Application.MessageBox(PChar(stMsg),'변경',MB_OKCANCEL) = ID_OK)  then
    begin
      bResult := UpdatTB_CARD_Stop(OldCardNo);
      if Not bResult then showmessage(OldCardNo + ' 정지에 실패하였습니다.');
    end;
    //이벤트 데이터 변경
    //DeleteTB_CARD(OldCardNo);
   // UpdateTB_ACCESSEVENTCARDNO(OldCardNo,aCardNo);
   // UpdateTB_ATEVENTCARDNO(OldCardNo,aCardNo);
   // UpdateTB_FoodEventCARDNO(OldCardNo,aCardNo);
    bResult := False;
    bResult := CheckTB_CARD(aCardNo,aCompanyCode,aEmpID,aRegGubun,stMode);
    if bResult then //카드번호 입력하자.
    begin
      if stMode = 'Insert' then  bResult := InsertTB_CARD(aCardNo,'1',aRegGubun,aEmpID,aCompanyCode)
      else if stMode = 'Update' then bResult := UpdateTB_CARD(aCardNo,'1',aRegGubun,aEmpID,aCompanyCode);

      if Not bResult then
      begin
        showmessage('카드등록에 실패하였습니다.관리자에게 문의 주세요.');
        Exit;
      end;
    end;
  end else
  begin
    bResult := False;
    bResult := CheckTB_CARD(aCardNo,aCompanyCode,aEmpID,aRegGubun,stMode);
    if bResult then //카드번호 입력하자.
    begin
      if stMode = 'Insert' then  bResult := InsertTB_CARD(aCardNo,'1',aRegGubun,aEmpID,aCompanyCode)
      else if stMode = 'Update' then bResult := UpdateTB_CARD(aCardNo,'1',aRegGubun,aEmpID,aCompanyCode);

      if Not bResult then
      begin
        showmessage('카드등록에 실패하였습니다.관리자에게 문의 주세요.');
        Exit;
      end;
    end;
  end;


  stSql := 'Update TB_EMPLOYEE Set ';
  stSql := stSql + 'CO_COMPANYCODE = ''' + aCompanyCode + ''',';
  stSql := stSql + 'CO_JIJUMCODE = ''' + aJijumCode + ''',';
  stSql := stSql + 'CO_DEPARTCODE = ''' + aDepartCode + ''',';
  stSql := stSql + 'PO_POSICODE = ''' + aPosiCode + ''',';
  stSql := stSql + 'EM_NAME = ''' + aEmpNM + ''',';
  stSql := stSql + 'EM_COPHONE = ''' + aCompanyPhone + ''',';
  stSql := stSql + 'EM_HOMEPHONE = ''' + aHomePhone + ''',';
  stSql := stSql + 'EM_HANDPHONE = ''' + aHandphone + ''',';
  stSql := stSql + 'ZI_ZIPCODE = ''' + aZipcode + ''',';
  stSql := stSql + 'EM_ADDR1 = ''' + aAddr1 + ''',';
  stSql := stSql + 'EM_ADDR2 = ''' + aAddr2 + ''',';
  stSql := stSql + 'EM_JOINDATE = ''' + aJoinDate + ''',';
  stSql := stSql + 'EM_RETIREDATE = ''' + aRetireDate + ''',';
  stSql := stSql + 'FDMS_ID = ' + afdmsID + ',';
  stSql := stSql + 'EM_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + 'EM_UPDATEOPERATOR = ''' + Master_ID + ''' ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmpID + '''';

  result := DataModule1.ProcessExecSQL(stSql);

  stCompanyName := DataModule1.GetCompanyName(aCompanyCode);
  stJijumName := DataModule1.GetJijumName(aCompanyCode,aJijumCode);
  stDepartName := DataModule1.GetDepartName(aCompanyCode,aJijumCode,aDepartCode);
  stPosiName := DataModule1.GetPosiName(aCompanyCode,aPosiCode);

  stSql := CommonSql.InsertIntoTB_EMPHIS(aCompanyCode,aEmpID,aFdmsID,'2',aCardNo,aRegGubun,
           aEmpNM,aHandphone,stCompanyName,stJijumName,stDepartName,stPosiName);//수정
  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmEmploy.CheckTB_CARD(aCardNo, aCompanyCode,
  aEmpID,aCardType: string;var Mode:string): Boolean;
var
  stSql : string;
  stMsg : string;
  TempAdoQuery : TADOQuery;
begin
  Result := True;
  Mode := '';
  stSql := 'Select * from TB_CARD ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = '''  + aCardNo + ''' ';

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
      Exit;
    End;

    Mode := 'Insert';
    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      Exit;
    end;

    Mode := 'Update';

    if (FindField('CO_COMPANYCODE').AsString = aCompanyCode) AND
       (FindField('EM_CODE').AsString = aEmpID) then
    begin
      //if FindField('CA_CARDTYPE').AsString = aCardType then  Result := False
      //else Result := True;
      result := True;
      TempAdoQuery.Free;
      Exit;
    end;
    
    stMsg := '(' + aCardNo + ')카드번호는 사번(' +
        FindField('EM_CODE').AsString + ') 으로 등록되어 있습니다. ' + #13 +
        '사번 (' + aEmpID + ') 으로 변경하시겠습니까? ';

    if (Application.MessageBox(PChar(stMsg),'변경',MB_OKCANCEL) = ID_CANCEL)  then
    begin
      Result := False;
      TempAdoQuery.Free;
      Exit;
    end;
  end;
  TempAdoQuery.Free;

end;

function TfmEmploy.InsertTB_CARD(aCardNo, aCardGubun, aCardType, aEmpID,
  aCompanyCode: string): Boolean;
var
  stSql : string;
  nPositionNumber : integer;
begin
//  if Length(aCardNo) <> 10 then Exit;
  if isDigit(ed_CardNumber.Text) then nPositionNumber := strtoint(ed_CardNumber.Text)
  else nPositionNumber := 0;

  Result := False;
  stSql := 'Insert Into TB_CARD(GROUP_CODE,CA_CARDNO,CA_GUBUN,CA_CARDTYPE,';
  stSql := stSql + 'EM_CODE,CO_COMPANYCODE,CA_UPDATETIME,CA_UPDATEOPERATOR,positionnum) ';
  stSql := stSql + ' Values ( ';
  stSql := stSql + '''' +  GROUPCODE + ''',';
  stSql := stSql + '''' + aCardNo + ''',' ;
  stSql := stSql + '''' + aCardGubun + ''',' ;
  stSql := stSql + '''' + aCardType + ''',' ;
  stSql := stSql + '''' + aEmpID + ''',' ;
  stSql := stSql + '''' + aCompanyCode + ''',' ;
  stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',' ;
  stSql := stSql + '''' + MASTER_ID + ''',' ;
  stSql := stSql + '' + inttostr(nPositionNumber) + ')' ;

  with DataModule1.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      ExecSql;
    Except
      Exit;
    End;
  end;
  Result := True;
end;

function TfmEmploy.UpdateTB_CARD(aCardNo, aCardGubun, aCardType, aEmpID,
  aCompanyCode: string): Boolean;
var
  stSql : string;
  nPositionNumber : integer;
begin
//  if Length(aCardNo) <> 10 then Exit;
  if isDigit(ed_CardNumber.Text) then nPositionNumber := strtoint(ed_CardNumber.Text)
  else nPositionNumber := 0;

  Result := False;
  stSql := 'Update TB_CARD SET ' ;
  stSql := stSql + ' CA_GUBUN = ''' +  aCardGubun + ''',';
  stSql := stSql + ' CA_CARDTYPE = ''' +  aCardType + ''',';
  stSql := stSql + ' EM_CODE = ''' +  aEmpID + ''',';
  stSql := stSql + ' CO_COMPANYCODE = ''' +  aCompanyCode + ''',';
  stSql := stSql + ' CA_UPDATETIME = ''' +  FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + ' CA_UPDATEOPERATOR = ''' +  MASTER_ID + ''' ';
  if nPositionNumber <> 0 then stSql := stSql + ' ,positionnum = ' +  inttostr(nPositionNumber) + ' ';
  stSql := stSql + ' Where GROUP_CODE = ''' +  GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' +  aCardNo + ''' ';

  with DataModule1.ADOExecQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      ExecSql;
    Except
      Exit;
    End;
  end;
  Result := True;
end;

function TfmEmploy.CheckTB_EMPLOYEE(aEmpID, aCompanyCode: string): Boolean;
var
  stSql: string;
  TempAdoQuery : TADOQuery;
begin
  Result := False;
  stSql := 'select * from TB_EMPLOYEE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmpID + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' +  aCompanyCode + ''' ';

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
      Exit;
    End;
    if RecordCount > 0 then Result := True;
  end;
  TempAdoQuery.Free;

end;

procedure TfmEmploy.chk_CardRegClick(Sender: TObject);
var
  nCount : integer;
  i : integer;
  stTemp : string;
begin
  if chk_CardReg.Checked then
  begin
    ComPortList.Clear;
    nCount := GetSerialPortList(ComPortList);
    cmb_ComPort.Clear;
    if nCount = 0 then
    begin
      chk_CardReg.Checked := False;
      showmessage('시리얼 포트를 찾을 수 없습니다. 제어판에서 시리얼 포트를 확인하여 주세요.');
      Exit;
    end;

    for i:= 0 to nCount - 1 do
    begin
      cmb_ComPort.items.Add(ComPortList.Strings[i])
    end;
    cmb_ComPort.ItemIndex := 0;

    try
      ApdDataPacket1.AutoEnable := false;
      ApdDataPacket1.StartCond := scString;
      ApdDataPacket1.StartString := #$02;
      ApdDataPacket1.EndCond := [ecString];
      ApdDataPacket1.EndString := #$03;
      ApdDataPacket1.Timeout := 0;
      ReaderPort.ComNumber := Integer(ComPortList.Objects[cmb_ComPort.ItemIndex]);
      //ReaderPort.ComNumber := strtoint(copy(cmb_ComPort.text,4,Pos(':',cmb_ComPort.text) -4));
      ReaderPort.Open := true;
      ApdDataPacket1.Enabled := True;
    except
      MessageDlg('통신포트를 확인해 주세요', mtError, [mbOK], 0);
      chk_CardReg.Checked:= False;
      Exit;
    end;
    cmb_ComPort.Enabled := True;
    
  end else
  begin
    if ReaderPort.Open then
    begin
      ApdDataPacket1.Enabled := False;
      ReaderPort.Open:= False;
    end;
    //LoadDoorList(cmb_ComPort);
    LoadDeviceList(cmb_ComPort);
  end;

end;

procedure TfmEmploy.btn_ZipcodeSearchClick(Sender: TObject);
begin
  fmZipCode:= TfmZipCode.Create(Self);
  fmZipCode.CallingModuleID := 'TfmEmploy';
  fmZipCode.SHowmodal;
  fmZipCode.Free;

end;

procedure TfmEmploy.CommandArrayCommandsTCommand0Execute(Command: TCommand;
  Params: TStringList);
var
  stZipCode,stSido,stGuGun,stDong,stBunji : string;
  stAddr1 : string;
begin
  stZipCode := Params.Values['Code'];
  stSido  := Params.Values['Sido'];
  stGuGun := Params.Values['Gugun'];
  stDong  := Params.Values['Dong'];
  stBunji := Params.Values['Bunji'];
  stAddr1 := stSido + ' ' + stGuGun + ' ' + stDong ;
  ed_sZipcode.Text := stZipCode;
  ed_sAddr1.Text := stAddr1;
  ed_sAddr2.Text := Trim(stBunji);
  ed_sAddr2.SetFocus;
end;

function TfmEmploy.GetSerialPortList(List: TStringList;
  const doOpenTest: Boolean): LongWord;
type
 TArrayPORT_INFO_1 = array[0..0] Of PORT_INFO_1;
 PArrayPORT_INFO_1 = ^TArrayPORT_INFO_1;
var
{$IF USE_ENUMPORTS_API}
 PL : PArrayPORT_INFO_1;
 TotalSize, ReturnCount : LongWord;
 Buf : String;
 CommNum : WORD;
{$IFEND}
 I : LongWord;
 CHandle : THandle;
begin
 List.Clear;
{$IF USE_ENUMPORTS_API}
 EnumPorts(nil, 1, nil, 0, TotalSize, ReturnCount);
 if TotalSize < 1 then begin
    Result := 0;
    Exit;
    end;
 GetMem(PL, TotalSize);
 EnumPorts(nil, 1, PL, TotalSize, TotalSize, Result);

 if Result < 1 then begin
    FreeMem(PL);
    Exit;
    end;

 for I:=0 to Result-1 do begin
    Buf := UpperCase(PL^[I].pName);
    CommNum := DecodeCommportName(PL^[I].pName);
    if CommNum = 0 then Continue;
    List.AddObject(EncodeCommportName(CommNum), Pointer(CommNum));
    end;
{$ELSE}
 for I:=1 to MAX_COMPORT do List.AddObject(EncodeCommportName(I), Pointer(I));
{$IFEND}
 // Open Test
 if List.Count > 0 then for I := List.Count-1 downto 0 do begin
    CHandle := CreateFile(PChar(List[I]), GENERIC_WRITE or GENERIC_READ,
     0, nil, OPEN_EXISTING,
     FILE_ATTRIBUTE_NORMAL,
     0);
    if CHandle = INVALID_HANDLE_VALUE then begin
if doOpenTest or (GetLastError() <> ERROR_ACCESS_DENIED) then List.Delete(I);
Continue;
end;
    CloseHandle(CHandle);
    end;

 Result := List.Count;
{$IF USE_ENUMPORTS_API}
 if Assigned(PL) then FreeMem(PL);
{$IFEND}

end;

function TfmEmploy.DecodeCommportName(PortName: String): WORD;
var
 Pt : Integer;
begin
 PortName := UpperCase(PortName);
 if (Copy(PortName, 1, 3) = 'COM') then begin
    Delete(PortName, 1, 3);
    Pt := Pos(':', PortName);
    if Pt = 0 then Result := 0
       else Result := StrToInt(Copy(PortName, 1, Pt-1));
 end
 else if (Copy(PortName, 1, 7) = '\\.\COM') then begin
    Delete(PortName, 1, 7);
    Result := StrToInt(PortName);
 end
 else Result := 0;

end;

function TfmEmploy.EncodeCommportName(PortNum: WORD): String;
begin
 if PortNum < 10
    then Result := 'COM' + IntToStr(PortNum) + ':'
    else Result := '\\.\COM'+IntToStr(PortNum);

end;

procedure TfmEmploy.cmb_ComPortChange(Sender: TObject);
begin
  if rg_CardReader.ItemIndex = 0 then
  begin
    ReaderPort.Open := False;
    if cmb_ComPort.text = '' then Exit;
    ReaderPort.ComNumber := Integer(ComPortList.Objects[cmb_ComPort.ItemIndex]);
    //ReaderPort.ComNumber := strtoint(copy(cmb_ComPort.text,4,Pos(':',cmb_ComPort.text) -4));
    ReaderPort.Open := true;
  end;
end;

procedure TfmEmploy.ApdDataPacket1StringPacket(Sender: TObject;
  Data: String);
begin
  if cmb_regDevice.ItemIndex = 0 then
  begin
    RcvCardDataByReader(Data);
//    btn_SaveClick(self);
    ApdDataPacket1.Enabled := True;
  end;

end;

procedure TfmEmploy.RcvCardDataByReader(aData: String);
var
  aIndex: Integer;
  aCardNo:String;
  bCardNo: int64;
  stMsg : string;
  i : integer;
begin
  //STX 삭제
  aIndex:= Pos(#$2,aData);
  if aIndex > 0 then Delete(aData,aIndex,1);
  //ETX삭제
  aIndex:= Pos(#$3,aData);
  if aIndex > 0 then Delete(aData,aIndex,1);
  if aData = 'F' then    //포맷 요청
  begin
    if ReaderPort.Open then
      ReaderPort.PutString(STX + 'C' + ETX);
    Exit;
  end;
  if (aData = 'Y') OR (aData = 'N') then Exit;

  aCardNo := aData; //읽은 값 그대로
  if (CARDLENGTHTYPE = 0) and IsNumericCardNo then
  begin
    bCardNo:= Hex2Dec64(aData);
    aCardNo:= FillZeroNumber2(bCardNo,10);
  end;
  if G_bCardFixedUse then
  begin
    if Length(Trim(aCardNo)) <> G_nCardFixedLength then
    begin
      for i := Length(Trim(aCardNo)) + 1 to G_nCardFixedLength do
      begin
        if G_nCardFixedPosition = 0 then aCardNo := G_stCardFixedFillChar + aCardNo
        else if G_nCardFixedPosition = 1 then aCardNo := aCardNo + G_stCardFixedFillChar;
      end;
      aCardNo := copy(aCardNo,1,G_nCardFixedLength);
    end;
  end;
  if G_bCardFixedUse then
  begin
    if Length(aCardNo) <> G_nCardFixedLength then
    begin
      showmessage('카드길이가 ' + inttostr(G_nCardFixedLength) + '자리가 아닙니다.');
      Exit;
    end;
  end;
  if Trim(ed_CardNo.Text) <> '' then
  begin
    stMsg := '(' + ed_CardNo.Text + ')카드번호가 존재 합니다. (' +
        aCardNo + ') 으로 변경하시겠습니까? ' ;
    if Trim(ed_CardNo.Text) <> aCardNo then
    begin
      if (Application.MessageBox(PChar(stMsg),'변경',MB_OKCANCEL) = ID_CANCEL)  then Exit;
    end;
  end;
  ed_CardNo.Text := aCardNo;

  if chk_AutoSave.Checked then btn_SaveClick(self);
end;

procedure TfmEmploy.ed_sEmpNoExit(Sender: TObject);
var
  stSql : string;
  MapJpg : TJpegImage;
  MapStream : TMemoryStream;
  BlobField : TBlobField;
  stTemp : string;
  i:integer;
begin
  stSql := 'select a.*,b.CA_CARDNO,b.CA_CARDTYPE from TB_EMPLOYEE a ';
  stSql := stSql + ' Left Join TB_CARD b ';
  stSql := stSql + ' ON (a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE )';
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.EM_CODE = ''' + ed_sEmpNo.text + ''' ';

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
    if recordcount < 1 then Exit;
    ed_sEmpNM.Text := FindField('EM_NAME').AsString;
    cmb_sCompany.ItemIndex := sCompanyCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString);
    if cmb_sCompany.ItemIndex > 0 then
    begin
      LoadsJijumCode(FindField('CO_COMPANYCODE').AsString,sJijumCodeList,cmb_sJijum);
      cmb_sDepart.ItemIndex := sJijumCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('CO_JijumCODE').AsString);
      if cmb_sDepart.ItemIndex > 0 then
      begin
        LoadsDepartCode(FindField('CO_COMPANYCODE').AsString,FindField('CO_JijumCODE').AsString,sDepartCodeList,cmb_sDepart);
        cmb_sDepart.ItemIndex := sDepartCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('CO_JijumCODE').AsString + FindField('CO_DEPARTCODE').AsString);
      end;
      LoadsPosiCode(FindField('CO_COMPANYCODE').AsString,sPosicodeList,cmb_sPosi);
      cmb_sPosi.ItemIndex := sPosiCodeList.IndexOf(FindField('PO_POSICODE').AsString);
    end;

    ed_sCompanyPhone.Text := FindField('EM_COPHONE').AsString;
    if length(FindField('EM_JOINDATE').AsString) = 8 then
      dt_sJoinDt.Date := strToDate(copy(FindField('EM_JOINDATE').AsString,1,4) + '-' + copy(FindField('EM_JOINDATE').AsString,5,2) + '-' + copy(FindField('EM_JOINDATE').AsString,7,2) ) ;
    if length(FindField('EM_RETIREDATE').AsString) = 8 then
      dt_sRetireDt.Date := strToDate(copy(FindField('EM_RETIREDATE').AsString,1,4) + '-' + copy(FindField('EM_RETIREDATE').AsString,5,2) + '-' + copy(FindField('EM_RETIREDATE').AsString,7,2) ) ;
    ed_sZipcode.Text := FindField('ZI_ZIPCODE').AsString;
    ed_sAddr1.Text := FindField('EM_ADDR1').AsString;
    ed_sAddr2.Text := FindField('EM_ADDR2').AsString;
    ed_sHomePhone.Text := FindField('EM_HOMEPHONE').AsString;
    ed_sHandphone.Text := FindField('EM_HANDPHONE').AsString;
    for i:= 1 to cmb_RegGubun.Items.Count - 1 do
    begin
      stTemp := copy(cmb_RegGubun.Items[i],1,1);
      if FindField('CA_CARDTYPE').AsString = copy(cmb_RegGubun.Items[i],1,1) then
      begin
        cmb_RegGubun.ItemIndex := i;
        break;
      end;
    end;
    ed_CardNo.Text := FindField('CA_CARDNO').AsString;
  end;

end;

procedure TfmEmploy.chk_AutoSabunClick(Sender: TObject);
var
  stSql : string;
  stSabun : string;
begin
  if Not chk_AutoSabun.Checked then
  begin
    ed_sEmpNo.Text := '';
    ed_sEmpNo.Enabled := True;
    chk_AutoSave.Checked := False;
    chk_AutoSave.Visible := False;
    Exit;
  end;
  ed_sEmpNo.Enabled := False;
  //chk_AutoSave.Visible := True;
  stSql := 'select Max(EM_CODE) as EM_CODE from TB_EMPLOYEE ';
  stSql := stSql + ' where GROUP_CODE = '''  + GROUPCODE + ''' ';
  stSql := stSql + ' AND EM_CODE Like ''Z-%'' ';

  with AdoQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      inc(AutoSabun);
      ed_sEmpNo.Text := 'Z-' + FillZeroNumber(AutoSabun,5);
      Exit;
    End;
    if recordCount < 1 then
    begin
      inc(AutoSabun);
      ed_sEmpNo.Text := 'Z-' + FillZeroNumber(AutoSabun,5);
      Exit;
    end;
    
    stSabun := FindField('EM_CODE').AsString;
    if stSabun = '' then inc(AutoSabun)
    else
    begin
      stSabun := copy(stSabun,3,Length(stSabun) - 2);
      AutoSabun := strtoint(stSabun) + 1;
    end;
    ed_sEmpNo.Text := 'Z-' + FillZeroNumber(AutoSabun,5);

  end;
end;

procedure TfmEmploy.rg_CardReaderClick(Sender: TObject);
begin
  if  rg_CardReader.ItemIndex = 0 then
  begin
    chk_CardReg.Checked := True;
    cmb_ComPort.Visible := True;
    cmb_ComPort.Top := 133;
  end else if rg_CardReader.ItemIndex = 1 then
  begin
    chk_CardReg.Checked := False;
    cmb_ComPort.Visible := True;
    cmb_ComPort.Top := 153;
  end else
  begin
    chk_CardReg.Checked := False;
    //cmb_ComPort.Clear;
    cmb_ComPort.Visible := False;
  end;
end;

procedure TfmEmploy.LoadDoorList(cmb_Box: TComboBox);
var
  stSql :string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  DoorCodeList.Clear;

  stSql := ' select * from TB_DOOR ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';

  cmb_Box.Items.Add(' ');
  DoorCodeList.Add('');
  cmb_Box.ItemIndex := 0;

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
      Exit;
    End;

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      Exit;
    end;
    First;

    While Not Eof do
    begin
      cmb_Box.Items.Add(FindField('DO_DOORNONAME').AsString);
      DoorCodeList.Add(FillZeroNumber(FindField('AC_NODENO').AsInteger,3) +
                       FindField('AC_ECUID').asstring +
                       FindField('DO_DOORNO').AsString);
      Next;
    end;

  end;
  TempAdoQuery.Free;
end;

procedure TfmEmploy.CommandArrayCommandsTCommand1Execute(Command: TCommand;
  Params: TStringList);
var
  stCardNo : string;
  stNodeNo : string;
  stECUID : string;
  stDOORNO : string;
//  stDoorCode :string;
  stDeviceCode : string;
begin
  if cmb_regDevice.ItemIndex <> 0 then Exit;  //등록기 및 출입 등록이 아니면 
  if rg_CardReader.ItemIndex <> 1 then Exit;
  if cmb_ComPort.ItemIndex < 1 then Exit;
  stCardNo := Params.Values['CARDNO'];
  stNodeNo  := Params.Values['NODENO'];
  stECUID := Params.Values['ECUID'];
  stDOORNO  := Params.Values['DOORNO'];
  stDeviceCode := DeviceList.Strings[cmb_ComPort.itemIndex];
  //stDoorCode := DoorCodeList.Strings[cmb_ComPort.itemIndex];
  if strtoint(stNodeNo) <> strtoint(copy(stDeviceCode,1,3)) then Exit;
  if stECUID <> copy(stDeviceCode,4,2) then Exit;
  //if stDoorNo <> copy(stDoorCode,6,1) then Exit;
  ed_CardNo.Text := stCardNo;
  if chk_AutoSave.Checked then btn_SaveClick(self);
end;

function TfmEmploy.UpdateTB_ACCESSEVENTCARDNO(aOldCardNo,
  aCardNo: string): Boolean;
var
  stSql :string;
begin
  stSql := 'Update TB_ACCESSEVENT set CA_CARDNO = ''' + aCardNo + ''' ';
  stSql := stSql + ' Where CA_CARDNO = ''' + aOldCardNo + ''' ';

  result := DataModule1.ProcessEventExecSQL(stSql);
end;

function TfmEmploy.UpdateTB_ATEVENTCARDNO(aOldCardNo,
  aCardNo: string): Boolean;
var
  stSql :string;
begin
  stSql := 'Update TB_ATEVENT set CA_CARDNO = ''' + aCardNo + ''' ';
  stSql := stSql + ' Where CA_CARDNO = ''' + aOldCardNo + ''' ';

  result := DataModule1.ProcessEventExecSQL(stSql);

end;

function TfmEmploy.UpdateTB_FoodEventCARDNO(aOldCardNo,
  aCardNo: string): Boolean;
var
  stSql :string;
begin
  stSql := 'Update TB_FoodEvent set CA_CARDNO = ''' + aCardNo + ''' ';
  stSql := stSql + ' Where CA_CARDNO = ''' + aOldCardNo + ''' ';

  result := DataModule1.ProcessEventExecSQL(stSql);

end;

procedure TfmEmploy.LoadDoorInfo;
var
  st: string;
  stSql : string;
  Floor: String;
begin
  Screen.Cursor:= crHourGlass;
  DoorList.Clear;
  CurCheckedList.Clear;
  clDoor.Clear;
  clDoor.Items.Add('0.전체');
  DoorList.Add('0.전체');
  stSql := 'select * from TB_DOOR ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' Order by AC_NODENO,AC_ECUID,DO_DOORNO ';

  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    Sql.text := stSql;
    Try
      OPen;
    Except
      Exit;
    End;

    First;
    while not eof do
    begin
      st:= FindField('DO_DOORNONAME').asString;
      clDoor.Items.Add(st);
      DoorList.Add(FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString + FindField('DO_DOORNO').asString);
      Next;
    end;
  end;
  Screen.Cursor:= crDefault;
end;

procedure TfmEmploy.FormShow(Sender: TObject);
var
  Loop : integer;
var
  stCompanyCode : string;
  stJijumCode : string;
begin
  LoadsCompanyCode(sCompanyCodeList,cmb_sCompany);
  stCompanyCode := '000';
  if cmb_sCompany.ItemIndex > 0 then stCompanyCode := sCompanyCodeList.Strings[cmb_sCompany.ItemIndex];
  LoadsJijumCode(stCompanyCode,sJijumCodeList,cmb_sJijum);
  stJijumCode := '000';
  if cmb_sJijum.ItemIndex > 0 then stJijumCode := copy(sJijumCodeList.Strings[cmb_sJijum.ItemIndex],4,3);
  LoadsDepartCode(stCompanyCode,stJijumCode,sDepartCodeList,cmb_sDepart);
  LoadsPosiCode(stCompanyCode,sPosiCodeList,cmb_sPosi);

  LoadDoorInfo;
  //LoadAlarmInfo;
  LoadArmAreaInfo;
  LoadCardGroup(cmb_DoorGradeGroup);
  if State = 'INSERT' then
  begin
    fmEmploy.Caption := '사원 추가';
    pn_EmployInit;
    clDoor.CheckAll;
    CurCheckedList.Clear;
    For Loop:= 1 to DoorList.Count - 1 do
    begin
      CurCheckedList.Add(DoorList[Loop]);  //전체문을 다 체크함
    end;
    clAlarm.CheckAll;
    CurArmAreaCheckedList.Clear;
    For Loop:= 1 to ArmAreaList.Count - 1 do
    begin
      CurArmAreaCheckedList.Add(ArmAreaList[Loop]);  //전체방범구역을 다 체크함
    end;
    ed_CardNumber.Text := GetNextPositionNumber;
    ed_fdmsID.text := GetFdmsID;
    L_stOldFdmsNo := ed_fdmsID.text;
  end
  else if State = 'UPDATE' then
  begin
    fmEmploy.Caption := '사원 수정';
    pn_EmployInit;
    ed_sEmpNo.Enabled := False;
    chk_AutoSabun.Enabled := False;
    cmb_sCompany.Enabled := False;
    SearchEmployee;
    SearchCardGrade;
  end;

  self.FindSubForm('Main').FindCommand('FormView').Params.Values['FORMNAME'] := 'EMPLOYEE';
  self.FindSubForm('Main').FindCommand('FormView').Params.Values['VALUE'] := 'TRUE';
  self.FindSubForm('Main').FindCommand('FormView').Execute;

end;

procedure TfmEmploy.clDoorChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
var
  aIndex: Integer;
  Loop : Integer;
begin
{  if bDoorClick then
  begin
    bDoorClick := False;
    if NewState = cbUnchecked then
      clDoor.ItemChecked[Index] := True
    Else clDoor.ItemChecked[Index] := False;
    
    Exit;
  end;  }
  if Index = 0 then   //전체 클릭시
  begin
    if NewState = cbUnchecked then
    begin
      clDoor.UncheckAll;
      CurCheckedList.Clear;
    end
    else
    begin
      clDoor.CheckAll;
      CurCheckedList.Clear;
      For Loop:= 1 to DoorList.Count - 1 do
      begin
        CurCheckedList.Add(DoorList[Loop]);  //전체문을 다 체크함
      end;
    end;
    exit;
  end;

  if NewState = cbUnchecked then
  begin

    aIndex := CurCheckedList.IndexOf(DoorList[Index]);
    if aIndex > -1 then CurCheckedList.Delete(aIndex); //체크리스트에서 삭제
    // 승인불허
    //aIndex:= NotPermitList.Indexof(DoorList[Index]);
    //if aIndex < 0 then NotPermitList.Add(DoorList[Index]);
  end else
  begin
    aIndex := CurCheckedList.IndexOf(DoorList[Index]);
    if aIndex < 0 then CurCheckedList.Add(DoorList[Index]); //체크리스트에 삽입

    //aIndex:= NotPermitList.Indexof(DoorList[Index]);
    //if aIndex > -1 then NotPermitList.Delete(aIndex);
  end;
end;

procedure TfmEmploy.btn_GradeGroupClick(Sender: TObject);
begin
  fmCardGroup:= TfmCardGroup.Create(Self);
  fmCardGroup.Showmodal;
  fmCardGroup.Free;
  LoadCardGroup(cmb_DoorGradeGroup);
end;

procedure TfmEmploy.LoadCardGroup(cmb_Box: TComboBox);
var
  stSql : string;
begin
  cmb_Box.Clear;
  cmb_Box.Items.Add('');
  stSql := 'select CA_GROUP  from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' Group by CA_GROUP ';
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
    while Not Eof do
    begin
      cmb_Box.Items.Add(FindField('CA_GROUP').AsString);
      Next;
    end;
  end;
end;

procedure TfmEmploy.cmb_DoorGradeGroupKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TfmEmploy.cmb_DoorGradeGroupChange(Sender: TObject);
begin
  if cmb_DoorGradeGroup.ItemIndex = 0 then
  begin
    clDoor.UncheckAll;
    CurCheckedList.Clear;
    clAlarm.UncheckAll;
    CurArmAreaCheckedList.Clear;
    Exit;
  end else
  begin
    clDoor.UncheckAll;
    CurCheckedList.Clear;
    clAlarm.UncheckAll;
    CurArmAreaCheckedList.Clear;
    DoorGroupSetting(cmb_DoorGradeGroup.Text);
  end;
end;

procedure TfmEmploy.DoorGroupSetting(stDoorGroup: string);
var
  stSql : string;
  stDeviceID : string;
  i : integer;
begin
  stSql := 'select * from TB_DEVICECARDNOGROUP ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_GROUP = ''' + stDoorGroup + ''' ';
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
    While Not Eof do
    begin
      stDeviceID := FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString;
      for i := 1 to 8 do
      begin
        if FindField('DE_DOOR' + inttostr(i)).AsString = 'Y' then
        begin
          CheckedList(stDeviceID + inttostr(i));
        end else
        begin
          UnCheckedList(stDeviceID + inttostr(i));
        end;
      end;
      for i := 0 to 8 do
      begin
        if FindField('DE_ALARM' + inttostr(i)).AsString = 'Y' then
        begin
          CheckedArmAreaList(stDeviceID , i);
        end else
        begin
          UnCheckedArmAreaList(stDeviceID , i);
        end;
      end;
      {
      if FindField('DE_USEALARM').AsString = 'Y' then
      begin
        CheckedAlarmList(stDeviceID);
      end else
      begin
        UnCheckedAlarmList(stDeviceID);
      end;  }
      Next;
    end;
  end;
end;

procedure TfmEmploy.CheckedList(aDoorNo: String);
var
  aIndex: Integer;
begin
  aIndex:= DoorList.Indexof(aDoorNo);

  if (aIndex > -1) and (aIndex < clDoor.Count) then
  begin
    clDoor.ItemChecked[aIndex]:= True;
    aIndex := CurCheckedList.IndexOf(aDoorNo);
    if aIndex < 0 then  CurCheckedList.Add(aDoorNo);
  end;
end;

procedure TfmEmploy.UnCheckedList(aDoorNo: String);
var
  aIndex: Integer;
begin
  aIndex:= DoorList.Indexof(aDoorNo);

  if (aIndex > -1) and (aIndex < clDoor.Count) then
  begin
    clDoor.ItemChecked[aIndex]:= False;
    aIndex := CurCheckedList.IndexOf(aDoorNo);
    if aIndex > -1 then  CurCheckedList.Delete(aIndex);
  end;
end;

procedure TfmEmploy.SearChEmployee;
var
  nIndex : integer;
  stSql : string;
  i : integer;
  stTemp : string;
  stJijumCode : string;
begin
  if EmployeeNo = '' then
  begin
    showmessage('조회할 사번이 없습니다.');
    Close;
    Exit;
  end;
  if (CompanyCode = '000') or (CompanyCode = '') then cmb_sCompany.ItemIndex := 0
  else
  begin
    nIndex := sCompanyCodeList.IndexOf(CompanyCode);
    if nIndex > -1 then
    begin
      cmb_sCompany.ItemIndex := nIndex;
      LoadsJijumCode(CompanyCode,sJijumCodeList,cmb_sJijum);
      stJijumCode := '000';
      if cmb_sJijum.ItemIndex > 0 then stJijumCode := copy(sJijumCodeList.Strings[cmb_sJijum.ItemIndex],4,3);
      LoadsDepartCode(CompanyCode,stJijumCode,sDepartCodeList,cmb_sDepart);
      LoadsPosiCode(CompanyCode,sPosiCodeList,cmb_sPosi);
    end
    else cmb_sCompany.ItemIndex := 0;
  end;
  //stSql := 'select a.EM_CODE,a.CO_COMPANYCODE,a.EM_NAME,a.CO_DEPARTCODE,  ';
  //stSql := stSql + 'a.PO_POSICODE,a.EM_COPHONE ';
  stSql := 'select a.*,b.CA_CARDNO,b.CA_CARDTYPE,c.FP_DATA ';
  stSql := stSql + ' from ';
  stSql := stSql + ' ( ';
  stSql := stSql + ' ( ';
  stSql := stSql + ' TB_EMPLOYEE a ';
  stSql := stSql + ' Left Join (select * from TB_CARD where CA_CARDNO = ''' + SelectCardNo + ''' order by CA_CARDTYPE) b ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE )';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left Join TB_CARDFINGER c ';
  stSql := stSql + ' ON (a.FDMS_ID = c.FP_USERID ) ';
  stSql := stSql + ' ) ';
  stSql := stSql + ' where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.EM_CODE = ''' + EmployeeNo + ''' ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCode + ''' ';

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
    First;
    ed_sEmpNo.Text := FindField('EM_CODE').AsString;
    ed_sEmpNM.Text := FindField('EM_NAME').AsString;
    if (FindField('CO_JIJUMCODE').AsString = '000') or (FindField('CO_JIJUMCODE').AsString = '') then cmb_sJijum.ItemIndex := 0
    else
    begin
      nIndex := sJijumCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString);
      if nIndex > -1 then
      begin
        cmb_sJijum.ItemIndex := nIndex;
        LoadsDepartCode(CompanyCode,FindField('CO_JIJUMCODE').AsString,sDepartCodeList,cmb_sDepart);
      end else cmb_sJijum.ItemIndex := 0;
    end;
    if (FindField('CO_DEPARTCODE').AsString = '000') or (FindField('CO_DEPARTCODE').AsString = '') then cmb_sDepart.ItemIndex := 0
    else
    begin
      nIndex := sDepartCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('CO_JIJUMCODE').AsString + FindField('CO_DEPARTCODE').AsString);
      if nIndex > -1 then cmb_sDepart.ItemIndex := nIndex
      else cmb_sDepart.ItemIndex := 0;
    end;
    if (FindField('PO_POSICODE').AsString = '000') or (FindField('PO_POSICODE').AsString = '') then cmb_sPosi.ItemIndex := 0
    else
    begin
      nIndex := sPosiCodeList.IndexOf(FindField('CO_COMPANYCODE').AsString + FindField('PO_POSICODE').AsString);
      if nIndex > -1 then cmb_sPosi.ItemIndex := nIndex
      else cmb_sPosi.ItemIndex := 0;
    end;
    ed_sCompanyPhone.Text := FindField('EM_COPHONE').AsString ;
    if length(FindField('EM_JOINDATE').AsString) = 8 then
      dt_sJoinDt.Date := strToDate(copy(FindField('EM_JOINDATE').AsString,1,4) + '-' + copy(FindField('EM_JOINDATE').AsString,5,2) + '-' + copy(FindField('EM_JOINDATE').AsString,7,2) ) ;
    if length(FindField('EM_RETIREDATE').AsString) = 8 then
      dt_sRetireDt.Date := strToDate(copy(FindField('EM_RETIREDATE').AsString,1,4) + '-' + copy(FindField('EM_RETIREDATE').AsString,5,2) + '-' + copy(FindField('EM_RETIREDATE').AsString,7,2) ) ;
    ed_sZipcode.Text := FindField('ZI_ZIPCODE').AsString;
    ed_sAddr1.Text := FindField('EM_ADDR1').AsString;
    ed_sAddr2.Text := FindField('EM_ADDR2').AsString;
    ed_sHomePhone.Text := FindField('EM_HOMEPHONE').AsString;
    ed_sHandphone.Text := FindField('EM_HANDPHONE').AsString;
    if Not FindField('FDMS_ID').IsNull then
    begin
      Try
        ed_fdmsID.Text := FindField('FDMS_ID').AsString;

      Except
        ed_fdmsID.Text := '0';
      End;
    end else ed_fdmsID.Text := '0';
    L_stOldFdmsNo := ed_fdmsID.text;
    
    for i:= 1 to cmb_RegGubun.Items.Count - 1 do
    begin
      stTemp := copy(cmb_RegGubun.Items[i],1,1);
      if FindField('CA_CARDTYPE').AsString = copy(cmb_RegGubun.Items[i],1,1) then
      begin
        cmb_RegGubun.ItemIndex := i;
        break;
      end;
    end;
    ed_CardNo.Text := FindField('CA_CARDNO').AsString;
    OldCardNo := FindField('CA_CARDNO').AsString;
    if FindField('FP_DATA').AsString = '' then lb_FingerState.Caption := '미등록'
    else lb_FingerState.Caption := '등록';
  end;
end;

procedure TfmEmploy.SearchCardGrade;
var
  stSql : string;
  stDeviceID : string;
  i : integer;
begin
  clDoor.UncheckAll;
  CurCheckedList.Clear;
  //if Length(ed_CardNo.Text) <> 10 then Exit;
  stSql := 'select * from TB_DEVICECARDNO ';
  stSql := stSql + ' Where GROUP_CODE = '''  + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + ed_CardNo.Text + ''' ';
  stSql := stSql + ' AND DE_PERMIT = ''L'' ';
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
    if RecordCount < 1 then Exit;
    While Not Eof do
    begin
      stDeviceID := FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString;
      for i := 1 to 8 do
      begin
        if FindField('DE_DOOR' + inttostr(i)).AsString = 'Y' then
        begin
          CheckedList(stDeviceID + inttostr(i));
        end else
        begin
          UnCheckedList(stDeviceID + inttostr(i));
        end;
      end;
      for i := 0 to 8 do
      begin
        if FindField('DE_ALARM' + inttostr(i)).AsString = 'Y' then
        begin
          CheckedArmAreaList(stDeviceID , i);
        end else
        begin
          UnCheckedArmAreaList(stDeviceID , i);
        end;
      end;
      Next;
    end;
  end;
end;

procedure TfmEmploy.InsertDoorGrade;
var
  DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
  st : string;
  nIndex : integer;
  stPermit : string;
begin
  i:=1;
  stCardNo := ed_CardNo.Text;
{  if Length(stCardNo) <> 10 then
  begin
    if CurCheckedList.Count > 0 then
    begin
      showmessage('정상적인 카드번호를 등록하지 않으면 권한은 등록이 안됩니다.');
    end;
    Exit;
  end;  }
  stPermit := 'L';
  if cmb_RegGubun.ItemIndex <> 1 then stPermit := 'N';
  For DoorLoop := 1 to DoorList.Count -1 do
  Begin
    st:= DoorList[DoorLoop];
    stNodeNo := Copy(st,1,3);
    stECUID:= Copy(st,4,2);
    stDoorNO:= Copy(st,6,1);
    nIndex := CurCheckedList.IndexOf(DoorList[DoorLoop]);
    if nIndex > -1 then //체크 되어 있으면
    begin
      if dmAdoQuery.CheckTB_DEVICECARDNO_Count(stNodeNo,stECUID) < G_nCardMaxCount then
      begin
        bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
        if Not bResult then
           InsertTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0',stPermit,'Y')
        else UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0',stPermit,'Y');
      end  else L_bDeviceGradeFail := True;
    end else
    begin
      bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
      if Not bResult then
         InsertTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0',stPermit,'N')
      else UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0',stPermit,'N');
    end;
    Application.ProcessMessages;
  End;

end;

function TfmEmploy.CheckTB_DEVICECARDNO(aCardNo, aNodeNo,
  aECUID: String): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_DEVICECARDNO ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';

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
  end;
  result := True;
end;

function TfmEmploy.InsertTB_DEVICECARDNO(aCardNo, aNodeNo, aECUID, aDoorNO,
  aTimCode, aPermit, aValue: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := ' Insert Into TB_DEVICECARDNO( ';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'CA_CARDNO,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
  stSql := stSql + 'DE_DOOR' + aDoorNO + ',';
  stSql := stSql + 'DE_USEACCESS,';
  stSql := stSql + 'DE_TIMECODE,';
  stSql := stSql + 'DE_PERMIT,';
  stSql := stSql + 'DE_RCVACK,';
  stSql := stSql + 'DE_UPDATETIME,';
  stSql := stSql + 'DE_UPDATEOPERATOR ) ';
  stSql := stSql + ' VALUES(';
  stSql := stSql + '''' + GROUPCODE + ''',';
  stSql := stSql + '''' + aCardNo + ''',';
  stSql := stSql + aNodeNo + ',';
  stSql := stSql + '''' + aECUID + ''',';
  stSql := stSql + '''' + aValue + ''',';
  stSql := stSql + '''Y'',';
  stSql := stSql + '''' + aTimCode + ''',';
  stSql := stSql + '''' + aPermit + ''',';
  stSql := stSql + '''N'',';
  stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + '''' + Master_ID + ''') ';

  result := DataModule1.ProcessExecSQL(stSql);

end;

function TfmEmploy.UpdateTB_DEVICECARDNO(aCardNo, aNodeNo, aECUID, aDoorNO,
  aTimCode, aPermit, aValue: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := ' Update TB_DEVICECARDNO Set ';
  stSql := stSql + 'DE_DOOR' + aDoorNO + ' = ''' + aValue + ''',';
  stSql := stSql + 'DE_USEACCESS = ''Y'',';
  stSql := stSql + 'DE_TIMECODE = ''' + aTimCode + ''',';
  stSql := stSql + 'DE_PERMIT = ''' + aPermit + ''',';
  stSql := stSql + 'DE_RCVACK = ''N'',';
  stSql := stSql + 'DE_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + 'DE_UPDATEOPERATOR = ''' + Master_ID + ''' ';
  stSql := stSql + ' Where GROUP_CODE =''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO =''' + aCardNo + ''' ';
  stSql := stSql + ' AND AC_NODENO =' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + '''';

  result := DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmEmploy.clDoorClick(Sender: TObject);
var
  bCheck : Boolean;
  nIndex : integer;
  aIndex : integer;
  Loop : integer;
begin
  Exit;
  bDoorClick := True;
  nIndex := clDoor.ItemIndex;
  bCheck := clDoor.ItemChecked[nIndex];
  clDoor.ItemChecked[nIndex] := Not bCheck;

  if nIndex = 0 then   //전체 클릭시
  begin
    if bCheck then
    begin
      clDoor.UncheckAll;
      CurCheckedList.Clear;
    end
    else
    begin
      clDoor.CheckAll;
      CurCheckedList.Clear;
      For Loop:= 1 to DoorList.Count - 1 do
      begin
        CurCheckedList.Add(DoorList[Loop]);  //전체문을 다 체크함
      end;
    end;
    exit;
  end;

  if Not bCheck then
  begin
    aIndex := CurCheckedList.IndexOf(DoorList[nIndex]);
    if aIndex > -1 then CurCheckedList.Delete(aIndex); //체크리스트에서 삭제
  end else
  begin
    aIndex := CurCheckedList.IndexOf(DoorList[nIndex]);
    if aIndex < 0 then CurCheckedList.Add(DoorList[nIndex]); //체크리스트에 삽입
  end;
end;

procedure TfmEmploy.cmb_regDeviceChange(Sender: TObject);
begin
  if cmb_regDevice.ItemIndex > 0 then
  begin
    ed_CardNo.Enabled := True;
    ed_CardNo.SetFocus;
    rg_CardReader.Visible := False;
    cmb_ComPort.Visible := False;
  end else
  begin
    ed_CardNo.Enabled := False;
    rg_CardReader.Visible := True;
    cmb_ComPort.Visible := True;
  end;
end;

function TfmEmploy.ConvertHIDCardNO(aCardNO1, aCardNo2: string): string;
var
  stCardNo : string;
  xCardNo : string;
begin
  stCardNo := Dec2Hex(strtoInt(aCardNo1),4) + Dec2Hex(strtoInt(aCardNo2),4);
//  xCardNo := Hex2Ascii(stCardNo);
  result := FillZeroNumber2(Hex2Dec64(stCardNo),10);

end;

procedure TfmEmploy.cmb_sJijumChange(Sender: TObject);
var
  stCompanyCode : string;
  stJijumCode : string;
begin
  stCompanyCode := '000';
  stJijumCode := '000';
  if cmb_sJijum.ItemIndex > 0 then
  begin
    stCompanyCode := copy(sJijumCodeList.Strings[cmb_sJijum.ItemIndex],1,3);
    stJijumCode := copy(sJijumCodeList.Strings[cmb_sJijum.ItemIndex],4,3);
    LoadsDepartCode(stCompanyCode,stJijumCode,sDepartCodeList,cmb_sDepart);
  end;
end;

function TfmEmploy.GetFdmsID: string;
var
  stSql : string;
  nFdms_id : integer;
begin
  result := '31';
  stSql := 'select Max(Fdms_id) as fdms_id from TB_EMPLOYEE ';
  with fdmsADOQuery do
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
end;

function TfmEmploy.UpdatTB_CARD_Stop(aCardNo: string): Boolean;
var
  stSql : string;
  bResult : Boolean;
begin
  Result := False;
  if aCardNo = '' then Exit;
  bResult := UpdateTB_DEVICECARDNODelete(aCardNo,'N'); //모든 카드 권한을 삭제 처리함
  if Not bResult then Exit;

  //stSql := ' Update TB_CARD set CA_GUBUN = ''0'',CA_CARDTYPE = ''2'' ';
  stSql := ' delete from TB_CARD ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' +  aCardNo + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);

end;


function TfmEmploy.InsertTB_EMPHISCardStop(aCardNo: string): Boolean;
var
  stSql : string;
  TempAdoQuery : TADOQuery;
  stCompanyCode : string;
  stEmpID : string;
  stfdmsID : string;
  stCardType : string;
  stEmpNM : string;
  stHandphone : string;
  stCompanyName : string;
  stJijumName : string;
  stDepartName : string;
  stPosiName : string;
begin
  if DBTYPE = 'MSSQL' then stSql := MSSQL.SelectTB_CARDJoinTBEmployee
  else if DBType = 'PG' then stSql := PostGreSql.SelectTB_CARDJoinTBEmployee
  else if DBType = 'MDB' then stSql := MDBSql.SelectTB_CARDJoinTBEmployee
  else if DBType = 'FB' then stSql := FireBird.SelectTB_CARDJoinTBEmployee
  else Exit;
  stSql := stSql + ' AND a.CA_CARDNO = ''' + aCardNo + ''' ';

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
      if RecordCount = 0 then Exit;
      stCompanyCode := FindField('CO_COMPANYCODE').asstring;
      stEmpID := FindField('EM_CODE').asstring;
      stfdmsID := FindField('FDMS_ID').asstring;
      stCardType := FindField('CA_CARDTYPE').asstring;
      stEmpNM := FindField('EM_NAME').asstring;
      stHandphone := FindField('EM_HANDPHONE').asstring;
      stCompanyName := FindField('COMPANYNAME').asstring;
      stJijumName := FindField('JIJUMNAME').asstring;
      stDepartName := FindField('DEPARTNAME').asstring;
      stPosiName := FindField('PO_NAME').asstring;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;
  stSql := CommonSql.InsertIntoTB_EMPHIS(stCompanyCode,stEmpID,stfdmsID,'2',aCardNo,stCardType,
           stEmpNM,stHandphone,stCompanyName,stJijumName,stDepartName,stPosiName);//입력
  result := DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmEmploy.AccessEventProcess(NodeNo: integer; aEcuID, aDoorNo,
  aReaderNo, aCardNo, aTime, aPermit, aInputType, aButton: string);
var
  //stDoorCode :string;
  stDeviceCode : string;
begin
  if cmb_regDevice.ItemIndex <> 0 then Exit;  //등록기 및 출입 등록이 아니면
  if rg_CardReader.ItemIndex <> 1 then Exit;
  if cmb_ComPort.ItemIndex < 1 then Exit;
  //stDoorCode := DoorCodeList.Strings[cmb_ComPort.itemIndex];
  stDeviceCode := DeviceList.Strings[cmb_ComPort.itemIndex];
  if NodeNo <> strtoint(copy(stDeviceCode,1,3)) then Exit;
  if aEcuID <> copy(stDeviceCode,4,2) then Exit;
  //if aDoorNo <> copy(stDoorCode,6,1) then Exit;
  ed_CardNo.Text := aCardNo;
  if chk_AutoSave.Checked then btn_SaveClick(self);
end;



procedure TfmEmploy.clAlarmChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
var
  aIndex: Integer;
  Loop : Integer;
begin
  if Index = 0 then   //전체 클릭시
  begin
    if NewState = cbUnchecked then
    begin
      clAlarm.UncheckAll;
      CurArmAreaCheckedList.Clear;
    end
    else
    begin
      clAlarm.CheckAll;
      CurArmAreaCheckedList.Clear;
      For Loop:= 1 to ArmAreaList.Count - 1 do
      begin
        CurArmAreaCheckedList.Add(ArmAreaList[Loop]);  //전체문을 다 체크함
      end;
    end;
    exit;
  end;

  if NewState = cbUnchecked then
  begin
    aIndex := CurArmAreaCheckedList.IndexOf(ArmAreaList[Index]);
    if aIndex > -1 then CurArmAreaCheckedList.Delete(aIndex); //체크리스트에서 삭제
  end else
  begin
    aIndex := CurArmAreaCheckedList.IndexOf(ArmAreaList[Index]);
    if aIndex < 0 then CurArmAreaCheckedList.Add(ArmAreaList[Index]); //체크리스트에 삽입
  end;
end;

procedure TfmEmploy.InsertAlarmGrade;
var
  AlarmLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stArmAreaNO : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
  st : string;
  nIndex : integer;
  stPermit : string;
begin
  i:=1;
  stCardNo := ed_CardNo.Text;
  if Length(stCardNo) = 0 then
  begin
    if CurArmAreaCheckedList.Count > 0 then
    begin
     // showmessage('정상적인 카드번호를 등록하지 않으면 권한은 등록이 안됩니다.');
    end;
    Exit;
  end;
  stPermit := 'L';
  if cmb_RegGubun.ItemIndex <> 1 then stPermit := 'N';
  For AlarmLoop := 1 to ArmAreaList.Count -1 do
  Begin
    st:= ArmAreaList[AlarmLoop];
    stNodeNo := Copy(st,1,3);
    stECUID:= Copy(st,4,2);
    stArmAreaNO := Copy(st,6,1);
    nIndex := CurArmAreaCheckedList.IndexOf(ArmAreaList[AlarmLoop]);
    if nIndex > -1 then //체크 되어 있으면
    begin
      if dmAdoQuery.CheckTB_DEVICECARDNO_Count(stNodeNo,stECUID) < G_nCardMaxCount then
      begin
        bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
        if Not bResult then
           dmAdoQuery.InsertTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,stPermit,'Y')
        else dmAdoQuery.UpdateTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,stPermit,'Y');
      end else L_bDeviceGradeFail := True;
    end else
    begin
      bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
      if Not bResult then
         dmAdoQuery.InsertTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,stPermit,'N')
      else dmAdoQuery.UpdateTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,stPermit,'N');
    end;
    Application.ProcessMessages;
  End;

end;

procedure TfmEmploy.LoadDeviceList(cmb_Box: TComboBox);
var
  stSql :string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  DeviceList.Clear;

  stSql := ' select * from TB_ACCESSDEVICE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';

  cmb_Box.Items.Add(' ');
  DeviceList.Add('');
  cmb_Box.ItemIndex := 0;

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
      Exit;
    End;

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      Exit;
    end;
    First;

    While Not Eof do
    begin
      cmb_Box.Items.Add(FindField('AC_DEVICENAME').AsString);
      DeviceList.Add(FillZeroNumber(FindField('AC_NODENO').AsInteger,3) +
                       FindField('AC_ECUID').asstring );
      Next;
    end;

  end;
  TempAdoQuery.Free;
end;

procedure TfmEmploy.CheckedArmAreaList(aDeviceID: String;
  aArmAreaNo: integer);
var
  aIndex: Integer;
begin
  aIndex:= ArmAreaList.Indexof(aDeviceID + inttostr(aArmAreaNo));

  if (aIndex > -1) and (aIndex < clAlarm.Count) then
  begin
    clAlarm.ItemChecked[aIndex]:= True;
    aIndex := CurArmAreaCheckedList.IndexOf(aDeviceID + inttostr(aArmAreaNo));
    if aIndex < 0 then  CurArmAreaCheckedList.Add(aDeviceID + inttostr(aArmAreaNo));
  end;

end;

procedure TfmEmploy.UnCheckedArmAreaList(aDeviceID: String;
  aArmAreaNo: integer);
var
  aIndex: Integer;
begin
  aIndex:= ArmAreaList.Indexof(aDeviceID + inttostr(aArmAreaNo));

  if (aIndex > -1) and (aIndex < clAlarm.Count) then
  begin
    clAlarm.ItemChecked[aIndex]:= False;
    aIndex := CurArmAreaCheckedList.IndexOf(aDeviceID + inttostr(aArmAreaNo));
    if aIndex > -1 then  CurArmAreaCheckedList.Delete(aIndex);
  end;
end;

procedure TfmEmploy.LoadArmAreaInfo;
var
  st: string;
  stSql : string;
  Floor: String;
  stArmAreaNo : string;
begin
  Screen.Cursor:= crHourGlass;
  ArmAreaList.Clear;
  CurArmAreaCheckedList.Clear;
  clAlarm.Clear;
  clAlarm.Items.Add('0.전체');
  ArmAreaList.Add('0.전체');
  stSql := 'select * from TB_ARMAREA ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AR_USE = ''Y'' ';

  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    Sql.text := stSql;
    Try
      OPen;
    Except
      Exit;
    End;

    First;
    while not eof do
    begin
      st:= FindField('AR_NAME').asString;
      clAlarm.Items.Add(st);
      if isDigit(FindField('AR_AREANO').AsString) then stArmAreaNo := inttostr(strtoint(FindField('AR_AREANO').AsString))
      else stArmAreaNo := '0';
      ArmAreaList.Add(FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').asString + stArmAreaNo);
      Next;
    end;
  end;
  Screen.Cursor:= crDefault;
end;

function TfmEmploy.GetFdmsCardNo: string;
var
  stSql : string;
  nFdms_CardNo : int64;
  nLastCardNo : int64;
  stCardNo : string;
  i : integer;
  bResult : Boolean;
begin

  result := '';

  for i := 0 to 100000 do
  begin
    nLastCardNo := GetLastFdmsCardNo;
    stCardNo := FillCharString(inttostr(nLastCardNo),'2',10,True);
    if CARDLENGTHTYPE = 0 then  //고정길이 타입이면
    begin
      if Not IsNumericCardNo then  //숫자변환이 아니면 숫자 타입을 HEX타입으로 변환하자.
      begin
        stCardNo := Dec2Hex64(StrtoInt64(stCardNo),8);
      end
    end else if CARDLENGTHTYPE = 1 then
    begin
      if Not IsNumericCardNo then  //숫자변환이면
      begin
        stCardNo := Dec2Hex64(StrtoInt64(stCardNo),8);
      end
    end else Exit; //KT사옥용이면 그냥 빠져 나가자.
    stCardNo := GetFixedCardNoCheck(stCardNo,G_bCardFixedUse,G_stCardFixedFillChar,G_nCardFixedPosition,G_nCardFixedLength);

    bResult := DupCheckCardNo(stCardNo);
    if Not bResult  then break;
  end;
  if bResult then Exit; //카드번호를 찾지 못한 경우
  result := stCardNo;
end;

function TfmEmploy.GetLastFdmsCardNo: int64;
var
  stSql : string;
begin
  result := 31;
  stSql := 'select * from TB_CURRENTDAEMON ';
  stSql := stSql + ' Where CU_STATECODE = ''FDMSCARD'' ';

  with TempADOQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordcount < 1 then Exit;
    if Not isDigit(FindField('CU_STATEVALUE').AsString) then Exit;
    result := strtoint(FindField('CU_STATEVALUE').AsString) + 1;
    stSql := ' Update TB_CURRENTDAEMON set CU_STATEVALUE = ''' + inttostr(result) + ''' ';
    stSql := stSql + ' Where CU_STATECODE = ''FDMSCARD'' ';
    DataModule1.ProcessExecSQL(stSql);
  end;
end;

function TfmEmploy.GetFixedCardNoCheck(aCardNo: string;
  bCardFixedUse: Boolean; aCardFixedFillChar: string; nCardFixedPosition,
  nCardFixedLength: integer): string;
var
  bFront : Boolean;
begin
  result := aCardNo;
  if Not bCardFixedUse then Exit; //고정길이 사용하지 않으면 원 카드데이터 리턴
  bFront := True;
  if nCardFixedPosition <> 0 then bFront := False;//뒤에 채움문자 채우는 경우
  result := FillCharString(aCardNo,aCardFixedFillChar[1],nCardFixedLength,bFront);

end;

function TfmEmploy.DupCheckCardNo(aCardNo: string): Boolean;
var
  stSql : string;
begin
  result := False;
  //지문 카드 중복유무
  stSql := ' Select * from TB_CARD where CA_CARDNO = ''' + aCardNo + ''' ';
  with TempADOQuery do
  begin
    close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordcount < 1 then Exit;
    result := True;
  end;
end;

procedure TfmEmploy.ed_CardNumberKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if CheckPositionNumber(ed_CardNo.Text,ed_CardNumber.Text) then L_bDupPositionNumber := True
  else L_bDupPositionNumber := False;
end;

function TfmEmploy.CheckPositionNumber(aCardNo,
  aPositionNumber: string): Boolean;
var
  stSql : string;
begin
  result := False;
  if Not isdigit(aPositionNumber) then Exit;
  if aCardNo = '' then Exit;

  stSql := 'select * from TB_CARD ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND positionnum = ' + aPositionNumber + ' ';

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
    if RecordCount = 1 then
    begin
      if FindField('CA_CARDNO').AsString = aCardNo then Exit; //같은 카드번호인 경우에는 빠져 나가자.
    end;
  end;
  result := True;
end;

procedure TfmEmploy.ed_CardNoChange(Sender: TObject);
begin
  inherited;
  if CheckPositionNumber(ed_CardNo.Text,ed_CardNumber.Text) then L_bDupPositionNumber := True
  else L_bDupPositionNumber := False;

end;

function TfmEmploy.Check_FDMSID(aEmCode, afdmsID: string): Boolean;
var
  stSql : string;
begin
  result := False;
  if Not isdigit(afdmsID) then Exit;
  if aEmCode = '' then Exit;

  stSql := 'select * from TB_EMPLOYEE ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND FDMS_ID = ' + afdmsID + ' ';

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
    if RecordCount = 1 then
    begin
      if FindField('EM_CODE').AsString = aEmCode then Exit; //같은 사원번호인 경우에는 빠져 나가자.
    end;
  end;
  result := True;
end;

function TfmEmploy.GetNextPositionNumber: string;
var
  stSql : string;
  nPositionNumber : integer;
begin
  result := '1';
  stSql := 'select Max(positionnum) as positionnum from TB_CARD ';
  with fdmsADOQuery do
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
      nPositionNumber := FindField('positionnum').AsInteger;
      if nPositionNumber = 0 then Exit;
    Except
      Exit;
    End;
    result := inttostr(nPositionNumber + 1);
  end;
end;

procedure TfmEmploy.btn_FingerClick(Sender: TObject);
var
  fmFingerRegistDevice : TfmFingerRegistDevice;
begin
  inherited;
  if G_nFingerDeviceType = 0 then
  begin
    fmFingerRegistDevice := TfmFingerRegistDevice.Create(self);
    fmFingerRegistDevice.FingerUserID := ed_fdmsID.text;
    fmFingerRegistDevice.FingerCardNo := ed_CardNo.text;
    L_stOldFdmsNo := ed_fdmsID.text;
    fmFingerRegistDevice.ShowModal;
    if fmFingerRegistDevice.Save then
    begin
      ed_CardNo.Text := fmFingerRegistDevice.FingerCardNo;
      lb_FingerState.Caption := '등록';
    end;
    fmFingerRegistDevice.Free;
  end else if G_nFingerDeviceType = 1 then
  begin
    fmSHFingerRegistDevice := TfmSHFingerRegistDevice.Create(nil);
    fmSHFingerRegistDevice.FingerUserID := ed_fdmsID.text;
    fmSHFingerRegistDevice.FingerCardNo := ed_CardNo.text;
    L_stOldFdmsNo := ed_fdmsID.text;
    fmSHFingerRegistDevice.ShowModal;
    if fmSHFingerRegistDevice.Save then
    begin
      ed_CardNo.Text := fmSHFingerRegistDevice.FingerCardNo;
      lb_FingerState.Caption := '등록';
    end;
    fmSHFingerRegistDevice.Free;

  end;
end;

initialization
  RegisterClass(TfmEmploy);
Finalization
  UnRegisterClass(TfmEmploy);

end.
