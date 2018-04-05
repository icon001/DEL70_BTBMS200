unit uMDICardAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, BaseGrid, AdvGrid, Buttons,
  OoMisc, AdPort, AdPacket,WinSpool,ADODB, uSubForm, CommandArray,ActiveX,
  Gauges,iniFiles,ComObj,Imm, AdvObj;

type
  TfmMDICardAdmin = class(TfmASubForm)
    RzOpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    lb_CompanyName: TLabel;
    lb_DepartName: TLabel;
    lb_PosiName: TLabel;
    cmb_Company: TComboBox;
    cmb_Depart: TComboBox;
    cmb_Posi: TComboBox;
    btn_Search: TBitBtn;
    sg_Card: TAdvStringGrid;
    pn_Employ: TPanel;
    chk_CardReg: TCheckBox;
    PageControl1: TPageControl;
    DoorTab: TTabSheet;
    Panel4: TPanel;
    sg_GradeDoor: TAdvStringGrid;
    Panel5: TPanel;
    btn_GradeInsert: TSpeedButton;
    btn_GradeDelete: TSpeedButton;
    Panel6: TPanel;
    sg_Door: TAdvStringGrid;
    AlarmTab: TTabSheet;
    Panel7: TPanel;
    sg_Alarm: TAdvStringGrid;
    Panel8: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel9: TPanel;
    sg_GradeAlarm: TAdvStringGrid;
    FoodTab: TTabSheet;
    Panel10: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel11: TPanel;
    sg_Food: TAdvStringGrid;
    Panel12: TPanel;
    sg_GradeFood: TAdvStringGrid;
    btn_Close: TBitBtn;
    chk_NonGrade: TCheckBox;
    Panel2: TPanel;
    Panel13: TPanel;
    GroupBox3: TGroupBox;
    lb_Building1: TLabel;
    lb_FloorCode1: TLabel;
    lb_AreaCode1: TLabel;
    cmb_BuildingCode: TComboBox;
    cmb_FloorCode: TComboBox;
    cmb_AreaCode: TComboBox;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    cmb_BuildingCode2: TComboBox;
    Label15: TLabel;
    cmb_FloorCode2: TComboBox;
    Label16: TLabel;
    cmb_AreaCode2: TComboBox;
    Panel18: TPanel;
    GroupBox6: TGroupBox;
    lb_Building2: TLabel;
    lb_FloorCode2: TLabel;
    lb_AreaCode2: TLabel;
    cmb_BuildingCode1: TComboBox;
    cmb_FloorCode1: TComboBox;
    cmb_AreaCode1: TComboBox;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    cmb_Jijum: TComboBox;
    lb_JijumName: TLabel;
    Pan_Gauge: TPanel;
    Gauge1: TGauge;
    StaticText1: TStaticText;
    ed_sCardNo: TEdit;
    Edit2: TEdit;
    Splitter2: TSplitter;
    Label4: TLabel;
    cmb_SearchType: TComboBox;
    ed_searchText: TEdit;
    lb_search: TLabel;
    cmb_regGubun1: TComboBox;
    btn_Excel: TSpeedButton;
    SaveDialog1: TSaveDialog;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SearchClick(Sender: TObject);
    procedure chk_CardRegClick(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure cmb_DepartChange(Sender: TObject);
    procedure cmb_PosiChange(Sender: TObject);
    procedure ed_EmpNoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_EmpNMKeyPress(Sender: TObject; var Key: Char);
    procedure ed_CardNoKeyPress(Sender: TObject; var Key: Char);
    procedure sg_CardClick(Sender: TObject);
    procedure cmb_BuildingCodeChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cmb_BuildingCode1Change(Sender: TObject);
    procedure cmb_BuildingCode2Change(Sender: TObject);
    procedure cmb_FloorCodeChange(Sender: TObject);
    procedure cmb_FloorCode1Change(Sender: TObject);
    procedure cmb_FloorCode2Change(Sender: TObject);
    procedure cmb_AreaCodeChange(Sender: TObject);
    procedure cmb_AreaCode1Change(Sender: TObject);
    procedure cmb_AreaCode2Change(Sender: TObject);
    procedure sg_CardCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure btn_GradeInsertClick(Sender: TObject);
    procedure btn_GradeDeleteClick(Sender: TObject);
    procedure chk_NonGradeClick(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_SearchTypeChange(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure ed_searchTextEnter(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    DepartCodeList : TStringList;
    PosiCodeList : TStringList;
    ComPortList : TStringList;
    BuildingCodeList : TStringList;
    sBuildingCodeList : TStringList;
    FloorCodeList : TStringList;
    AreaCodeList : TStringList;
    sFloorCodeList : TStringList;
    sAreaCodeList : TStringList;
    EmpTypeCodeList : TStringList;
    CheckCount : integer;
    L_bDeviceGradeFail : Boolean;
    { Private declarations }
    procedure GetDepartCodeList;
    procedure GridInit(sg:TAdvStringGrid;aCol:integer);
    Procedure RcvCardDataByReader(aData:String);
    procedure AdvStrinGridSetAllCheck(Sender: TObject;bchkState:Boolean);
    procedure LoadBuildingCode(cmb_Box:TComboBox);
    procedure LoadsBuildingCode(cmb_Box:TComboBox);
    procedure LoadFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
    procedure LoadAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
    procedure LoadsFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
    procedure LoadsAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
    procedure DoorCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg:TAdvStringGrid);
    procedure AlarmCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg:TAdvStringGrid);
    procedure FoodCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg:TAdvStringGrid);
    procedure DoorGradeSearch(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string;sg:TAdvStringGrid);
    procedure ClearSearcheDoorGrade;
    procedure SettingSearcheDoorGrade(aNodeNo:integer;aEcuID,aDoorNo:string);
    procedure AlarmGradeSearch(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string;sg:TAdvStringGrid);
    procedure FoodGradeSearch(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string;sg:TAdvStringGrid);
    procedure DoorSearch;
    procedure AlarmSearch;
    procedure FoodSearch;
    procedure InsertDoorGrade;
    procedure InsertAlarmGrade;
    procedure InsertFoodGrade;
    procedure DeleteDoorGrade;
    procedure DeleteAlarmGrade;
    procedure DeleteFoodGrade;
    Function CheckTB_DEVICECARDNO(aCardNo,aNodeNo,aECUID : String):Boolean;
    Function InsertTB_DEVICECARDNO(aCardNo,aNodeNo,aECUID,aDoorNO,aTimCode,aPermit,aValue,aGubun:string):Boolean;
    Function UpdateTB_DEVICECARDNO(aCardNo,aNodeNo,aECUID,aDoorNO,aTimCode,aPermit,aValue,aGubun: string):Boolean;
    Function UpdateTB_CARDDOORGRADE(aCardNo,aDoorGrade:string):Boolean;
    procedure FormNameSet;
    procedure CenterPanel;
    function GetFirstCheckListData(sg_list:TAdvStringGrid;aIndex:integer):string;

    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
  private
    procedure iniConfigRead;
    procedure iniConfigWrite;
  public
    { Public declarations }
    function GetSerialPortList(List : TStringList; const doOpenTest : Boolean = True) : LongWord;
    function EncodeCommportName(PortNum : WORD) : String;
    function DecodeCommportName(PortName : String) : WORD;
    procedure GradeSetting(aInsertGrade,aUpdateGrade,aDeleteGrade:Boolean);

    procedure CardReadProcess(aCardNo:string;aCheckBox:Boolean=True);
  end;

var
  fmMDICardAdmin: TfmMDICardAdmin;

implementation

uses uDataModule1,
     uLomosUtil,
     uCompanyCodeLoad,
     uMssql,
     uPostGreSql,
     uMDBSql, uFireBird, udmAdoQuery;

{$R *.dfm}

procedure TfmMDICardAdmin.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMDICardAdmin.FormActivate(Sender: TObject);
begin

  self.FindSubForm('Main').FindCommand('FORMSHOW').Params.Values['VALUE'] := 'MDICARDADMIN';
  self.FindSubForm('Main').FindCommand('FORMSHOW').Params.Values['SHOW'] := 'TRUE';
  self.FindSubForm('Main').FindCommand('FORMSHOW').Execute;
  //Panel2.Caption := fmMDICardAdmin.Caption;
  btn_SearchClick(Self);
end;

procedure TfmMDICardAdmin.cmb_CompanyChange(Sender: TObject);
begin
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);
  btn_SearchClick(Self);
end;

procedure TfmMDICardAdmin.FormCreate(Sender: TObject);
begin
  CompanyCodeList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  PosiCodeList := TStringList.Create;
  ComPortList := TStringList.Create;
  BuildingCodeList := TStringList.Create;
  sBuildingCodeList := TStringList.Create;
  FloorCodeList := TStringList.Create;
  AreaCodeList := TStringList.Create;
  sFloorCodeList := TStringList.Create;
  sAreaCodeList := TStringList.Create;
  EmpTypeCodeList := TStringList.Create;

  if DUPCARDTYPE = 0 then sg_Card.ColWidths[4] := 0
  else sg_Card.ColWidths[4] := 90;

  L_bDeviceGradeFail := False;
end;

procedure TfmMDICardAdmin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  iniConfigWrite;

  CompanyCodeList.Free;
  JijumCodeList.Free;
  DepartCodeList.Free;
  PosiCodeList.Free;
  BuildingCodeList.Free;
  sBuildingCodeList.Free;
  FloorCodeList.Free;
  AreaCodeList.Free;
  sFloorCodeList.Free;
  sAreaCodeList.Free;
  EmpTypeCodeList.Free;
  ComPortList.Free;
  self.FindSubForm('Main').FindCommand('FORMSHOW').Params.Values['VALUE'] := 'MDICARDADMIN';
  self.FindSubForm('Main').FindCommand('FORMSHOW').Params.Values['SHOW'] := 'FALSE';
  self.FindSubForm('Main').FindCommand('FORMSHOW').Execute;

  Action := caFree;
end;


procedure TfmMDICardAdmin.GetDepartCodeList;
var
  stSql : String;
  TempAdoQuery : TADOQuery;
begin
  DepartCodeList.Clear;
  DepartCodeList.Add('');

  if Not IsMaster then
  begin
    stSql := 'Select * from ';
    stSql := stSql + ' TB_ADMINCOMPANY  ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AD_USERID = ''' + Master_ID + ''' ';
    stSql := stSql + ' AND CO_GUBUN = ''2'' ';
  end else
  begin
    stSql := 'Select * from ';
    stSql := stSql + ' TB_COMPANY  ';
    stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND CO_GUBUN = ''2'' ';
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

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      CoUninitialize;
      Exit;
    end;

    First;
    While Not Eof do
    begin
      DepartCodeList.Add(FindField('CO_COMPANYCODE').AsString + FindField('CO_DEPARTCODE').AsString);
      Next;
    end;
  end;
  TempAdoQuery.Free;
  CoUninitialize;
end;

procedure TfmMDICardAdmin.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow : integer;
  i : integer;
  TempAdoQuery : TADOQuery;
  bWhereSearch : Boolean;
begin
  GridInit(sg_Card,8);
  CheckCount := 0;
  bWhereSearch := False;

  if DBTYPE = 'MSSQL' then stSql := MSSQL.SelectTB_CARDAdminJoinBase
  else if DBType = 'PG' then stSql := PostGreSql.SelectTB_CARDAdminJoinBase
  else if DBType = 'MDB' then stSql := MDBSql.SelectTB_CARDAdminJoinBase
  else if DBType = 'FB' then stSql := FireBird.SelectTB_CARDAdminJoinBase
  else Exit;

  if cmb_SearchType.ItemIndex = 6 then
  begin
    if cmb_regGubun1.ItemIndex > 0 then
    begin
      bWhereSearch := True;
      stSql := stSql + ' AND a.CA_CARDTYPE = ''' + copy(cmb_regGubun1.Text,1,1) + ''' '
    end;
  end else if cmb_SearchType.ItemIndex = 7 then
  begin
    if cmb_regGubun1.ItemIndex > 0 then
    begin
      bWhereSearch := True;
      stSql := stSql + ' AND b.RG_CODE = ''' + EmpTypeCodeList.Strings[cmb_regGubun1.itemIndex] + ''' '
    end;
  end else if cmb_SearchType.ItemIndex = 8 then
  begin
    if cmb_regGubun1.ItemIndex > 0 then
    begin
      bWhereSearch := True;
      stSql := stSql + ' AND a.CA_GUBUN = ''' + copy(cmb_regGubun1.Text,1,1) + ''' '
    end;
  end else
  begin
    if Trim(ed_searchText.Text) <> '' then
    begin
      if cmb_SearchType.ItemIndex < 0 then cmb_SearchType.ItemIndex := 0;
      bWhereSearch := True;

      if cmb_SearchType.ItemIndex = 0 then //���
        stSql := stSql + ' AND b.EM_CODE LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
      else if cmb_SearchType.ItemIndex = 1 then //�̸�
        stSql := stSql + ' AND b.EM_NAME LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
      else if cmb_SearchType.ItemIndex = 2 then //�系��ȭ��ȣ
        stSql := stSql + ' AND b.em_cophone LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
      else if cmb_SearchType.ItemIndex = 3 then //����ȭ��ȣ
        stSql := stSql + ' AND b.em_homephone LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
      else if cmb_SearchType.ItemIndex = 4 then //�޴�����ȣ
        stSql := stSql + ' AND b.em_handphone LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
      else if cmb_SearchType.ItemIndex = 5 then //ī���ȣ
        stSql := stSql + ' AND a.CA_CARDNO LIKE ''%' + Trim(ed_searchText.Text)  + '%'' ';
    end;      
  end;

  if Not bWhereSearch then
  begin
    if (Not IsMaster) and (CompanyGrade <> '0') then
    begin
      if CompanyGrade = '1' then
      begin
        if cmb_Company.ItemIndex < 1 then
        begin
          if CompanyCodeList.Count < 2 then
          begin
            showmessage('�����Ҽ� �ִ� ȸ�� ������ �����ϴ�.');
            Exit;
          end;
          for i:= 1 to CompanyCodeList.Count - 1 do
          begin
            if i = 1 then stSql := stSql + ' AND ( '
            else stSql := stSql + ' OR ';
            stSql := stSql + ' b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[i] + ''' ';
          end;
          stSql := stSql + ')';
        end else stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex > 0 then stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
        if cmb_Depart.ItemIndex > 0 then stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ';
      end else if CompanyGrade = '2' then
      begin
        if cmb_Company.ItemIndex < 1 then
        begin
          showmessage('������ �Ҽ� ȸ���ڵ尡 �̻��մϴ�.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex < 1 then
        begin
          if JijumCodeList.Count < 2 then
          begin
            showmessage('�����Ҽ� �ִ� ���� ������ �����ϴ�.');
            Exit;
          end;
          for i:= 1 to JijumCodeList.Count - 1 do
          begin
            if i = 1 then stSql := stSql + ' AND ( '
            else stSql := stSql + ' OR ';
            stSql := stSql + ' b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[i],4,3) + ''' ';
          end;
          stSql := stSql + ')';
        end else stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
        if cmb_Depart.ItemIndex > 0 then stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ';
      end else if CompanyGrade = '3' then
      begin
        if cmb_Company.ItemIndex < 1 then
        begin
          showmessage('������ �Ҽ� ȸ���ڵ尡 �̻��մϴ�.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex < 1 then
        begin
          showmessage('������ �Ҽ� �����ڵ尡 �̻��մϴ�.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
        if cmb_Depart.ItemIndex < 1 then
        begin
          if DepartCodeList.Count < 2 then
          begin
            showmessage('�����Ҽ� �ִ� �μ� ������ �����ϴ�.');
            Exit;
          end;
          for i:= 1 to DepartCodeList.Count - 1 do
          begin
            if i = 1 then stSql := stSql + ' AND ( '
            else stSql := stSql + ' OR ';
            stSql := stSql + ' b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[i],7,3) + ''' ';
          end;
          stSql := stSql + ')';
        end else stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ';
      end;
    end else
    begin
      if cmb_Depart.ItemIndex > 0 then
      begin
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],1,3) + ''' ' ;
        stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],4,3) + ''' ' ;
        stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ' ;
      end else if cmb_Jijum.ItemIndex > 0 then
      begin
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3) + ''' ' ;
        stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ' ;
      end else if cmb_Company.ItemIndex > 0 then
      begin
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ' ;
      end;
    end;
    if cmb_Posi.ItemIndex > 0 then
      stSql := stSql + ' AND b.PO_POSICODE = ''' + copy(PosiCodeList.Strings[cmb_Posi.ItemIndex],4,3) + ''' ';

    if chk_NonGrade.Checked then
    begin
      stSql := stSql + ' AND a.CA_DOORGRADE <> ''Y'' ';
      //stSql := stSql + ' AND NOT EXISTS (SELECT CA_CARDNO FROM TB_DEVICECARDNO G WHERE G.CA_CARDNO = a.CA_CARDNO AND G.GROUP_CODE = a.GROUP_CODE ) ';
    end;
  end;   //ī���ȣ ���ý� ��ü���� ��ȸ

  stSql := stSql + ' order by a.CA_CARDNO ';

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

      if RecordCount < 1 then  Exit;
 
      sg_Card.RowCount := RecordCount + 1;
      nRow := 1;
      First;
      while Not Eof do
      begin
        with sg_Card do
        begin
          cells[0,nRow] := FindField('CO_COMPANYNAME').AsString;
          cells[1,nRow] := FindField('EM_CODE').AsString;
          cells[2,nRow] := FindField('EM_NAME').AsString;
          cells[3,nRow] := FindField('CA_CARDNO').AsString;
          cells[4,nRow] := FindField('CA_GUBUN').AsString + '.' + FindField('CT_NAME').AsString;
          cells[5,nRow] := FindField('CO_JIJUMNAME').AsString;
          cells[6,nRow] := FindField('CO_DEPARTNAME').AsString;
          cells[7,nRow] := FindField('PO_NAME').AsString;
          cells[8,nRow] := FindField('CO_COMPANYCODE').AsString;
          cells[9,nRow] := FindField('CO_DEPARTCODE').AsString;
          cells[10,nRow] := FindField('PO_POSICODE').AsString;
          AddCheckBox(0,nRow,False,False);

        end;
        nRow := nRow + 1;
        Next;
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;

end;

procedure TfmMDICardAdmin.GridInit(sg: TAdvStringGrid; aCol: integer);
var
  i:integer;
begin
  with sg do
  begin
    RowCount := 2;
    RemoveCheckBox(0,0);
    RemoveCheckBox(0,1);

    AddCheckBox(0,0,False,False);
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

procedure TfmMDICardAdmin.chk_CardRegClick(Sender: TObject);
var
  nCount : integer;
  i : integer;
  stTemp : string;
begin
{  if chk_CardReg.Checked then
  begin
    ComPortList.Clear;
    nCount := GetSerialPortList(ComPortList);
    cmb_ComPort.Clear;
    if nCount = 0 then
    begin
      chk_CardReg.Checked := False;
      showmessage('�ø��� ��Ʈ�� ã�� �� �����ϴ�. �����ǿ��� �ø��� ��Ʈ�� Ȯ���Ͽ� �ּ���.');
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
      MessageDlg('�����Ʈ�� Ȯ���� �ּ���', mtError, [mbOK], 0);
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
    cmb_ComPort.Enabled := False;

  end;  }

end;

function TfmMDICardAdmin.DecodeCommportName(PortName: String): WORD;
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

function TfmMDICardAdmin.EncodeCommportName(PortNum: WORD): String;
begin
 if PortNum < 10
    then Result := 'COM' + IntToStr(PortNum) + ':'
    else Result := '\\.\COM'+IntToStr(PortNum);

end;

function TfmMDICardAdmin.GetSerialPortList(List: TStringList;
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

procedure TfmMDICardAdmin.RcvCardDataByReader(aData: String);
var
  aIndex: Integer;
  aCardNo:String;
  bCardNo: int64;
  stMsg : string;
begin
  //STX ����
  aIndex:= Pos(#$2,aData);
  if aIndex > 0 then Delete(aData,aIndex,1);
  //ETX����
  aIndex:= Pos(#$3,aData);
  if aIndex > 0 then Delete(aData,aIndex,1);

  aCardNo := aData;

  if CARDLENGTHTYPE = 0 then  //�������� Ÿ���̸�
  begin
    if IsNumericCardNo then  //���ں�ȯ�̸�
    begin
      if nSpecialProgram = 3 then  //KTTELECOP ���ǵ����Ʈ�� 3�ڸ��� ���.
      begin
        bCardNo:= Hex2Dec64(copy(aData,1,6) + '00');
        aCardNo := inttostr(bCardNo);
      end else
      begin
        bCardNo:= Hex2Dec64(aData);
        aCardNo := inttostr(bCardNo);
      end;
    end;
  end
  else
  begin
    if CARDLENGTHTYPE = 1 then
    begin
      if IsNumericCardNo then  //���ں�ȯ�̸�
      begin
        bCardNo:= Hex2Dec64(aData);
        aCardNo := inttostr(bCardNo);
      end;
    end else if CARDLENGTHTYPE = 2 then
    begin
      aCardNo := aCardNo;  //ASCII �� �����͸� �����ϱ� �׳� ó��
    end;
  end;
{
  bCardNo:= Hex2Dec64(aData);
  aCardNo:= FillZeroNumber2(bCardNo,10);
 }
//  ed_CardNo.Text := aCardNo;

//  btn_SearchClick(Self);

end;

procedure TfmMDICardAdmin.CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
  State: Boolean);
begin
  if ARow = 0 then //��ü���� �Ǵ� ����
  begin
    AdvStrinGridSetAllCheck(Sender,State);
  end;

end;

procedure TfmMDICardAdmin.AdvStrinGridSetAllCheck(Sender: TObject;
  bchkState: Boolean);
var
  i : integer;
begin
    for i:= 1 to (Sender as TAdvStringGrid).RowCount - 1  do
    begin
      (Sender as TAdvStringGrid).SetCheckBoxState(0,i,bchkState);
    end;

end;

procedure TfmMDICardAdmin.cmb_DepartChange(Sender: TObject);
begin
  btn_SearchClick(Self);
end;

procedure TfmMDICardAdmin.cmb_PosiChange(Sender: TObject);
begin
  btn_SearchClick(Self);
end;

procedure TfmMDICardAdmin.ed_EmpNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btn_SearchClick(Self);
  end;
end;

procedure TfmMDICardAdmin.ed_EmpNMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btn_SearchClick(Self);
  end;

end;

procedure TfmMDICardAdmin.ed_CardNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btn_SearchClick(Self);
  end;

end;

procedure TfmMDICardAdmin.sg_CardClick(Sender: TObject);
var
  bchkState : Boolean;
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  with (Sender as TAdvStringGrid) do
  begin
    GetCheckBoxState(0,Row, bchkState);
    if bchkState then ed_sCardNo.Text := Cells[3,Row]
    else ed_sCardNo.Text := '' ; //GetFirstCheckListData(sg_Card,3);
  end;

  if PageControl1.ActivePage.Name  = 'DoorTab' then
  begin
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
    DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);
  end
  else if PageControl1.ActivePage.Name  = 'AlarmTab' then
  begin
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
    AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);
  end
  else if PageControl1.ActivePage.Name  = 'FoodTab' then
  begin
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode2.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
    FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);
  end;

end;

procedure TfmMDICardAdmin.LoadBuildingCode(cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  cmb_Box.Clear;
  BuildingCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';
  stSql := stSql + ' Order by LO_DONGCODE ';

  cmb_Box.Items.Add('��ü');
  BuildingCodeList.Add('');
  cmb_Box.ItemIndex := 0;

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

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      CoUninitialize;
      Exit;
    end;

    First;
    While Not Eof do
    begin
      cmb_Box.Items.Add(FindField('LO_NAME').AsString );
      BuildingCodeList.Add(FindField('LO_DONGCODE').AsString);
      Next;
    end;
    if Not IsMaster then
    begin
      if BuildingGrade <> 0 then
      begin
        if BuildingCodeList.IndexOf(MasterBuildingCode) > 0 then
        begin
          cmb_Box.ItemIndex := BuildingCodeList.IndexOf(MasterBuildingCode);
          cmb_Box.Enabled := False;
        end;
      end
    end;
  end;
  TempAdoQuery.Free;
  CoUninitialize;
end;

procedure TfmMDICardAdmin.LoadsBuildingCode(cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery :TADOQuery;
begin
  cmb_Box.Clear;
  sBuildingCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';
  stSql := stSql + ' Order by LO_DONGCODE ';

  cmb_Box.Items.Add('��ü');
  sBuildingCodeList.Add('000');
  cmb_Box.ItemIndex := 0;

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

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      CoUninitialize;
      Exit;
    end;

    First;
    While Not Eof do
    begin
      cmb_Box.Items.Add(FindField('LO_NAME').AsString );
      sBuildingCodeList.Add(FindField('LO_DONGCODE').AsString);
      Next;
    end;
    if Not IsMaster then
    begin
      if BuildingGrade <> 0 then
      begin
        if BuildingCodeList.IndexOf(MasterBuildingCode) > 0 then
        begin
          cmb_Box.ItemIndex := BuildingCodeList.IndexOf(MasterBuildingCode);
          cmb_Box.Enabled := False;
        end;
      end
    end;
  end;
  TempAdoQuery.Free;
  CoUninitialize;
end;

procedure TfmMDICardAdmin.cmb_BuildingCodeChange(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode);
  stFloorCode := '';
  if cmb_FloorCode.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);
  stAreaCode := '';
  if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
  DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);

end;

procedure TfmMDICardAdmin.LoadAreaCode(aBuildingCode, aFloorCode: string;
  cmb_Box: TComboBox);
var
  stSql : string;
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

  stSql := stSql + ' Order by LO_AREACODE ';

  cmb_Box.Items.Add('��ü');
  AreaCodeList.Add('');
  cmb_Box.ItemIndex := 0;

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
      cmb_Box.Items.Add(FindField('LO_NAME').AsString );
      AreaCodeList.Add(FindField('LO_AREACODE').AsString);
      Next;
    end;
    if Not IsMaster then
    begin
      if BuildingGrade > 2 then
      begin
        if AreaCodeList.IndexOf(MasterAreaCode) > 0 then
        begin
          cmb_Box.ItemIndex := AreaCodeList.IndexOf(MasterAreaCode);
          cmb_Box.Enabled := False;
        end;
      end
    end;
  end;
end;

procedure TfmMDICardAdmin.LoadFloorCode(aBuildingCode: string;
  cmb_Box: TComboBox);
var
  stSql : string;
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

  stSql := stSql + ' Order by LO_FLOORCODE ';

  cmb_Box.Items.Add('��ü');
  FloorCodeList.Add('');
  cmb_Box.ItemIndex := 0;

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
      cmb_Box.Items.Add(FindField('LO_NAME').AsString );
      FloorCodeList.Add(FindField('LO_FLOORCODE').AsString);
      Next;
    end;
    if Not IsMaster then
    begin
      if BuildingGrade > 1 then
      begin
        if FloorCodeList.IndexOf(MasterFloorCode) > 0 then
        begin
          cmb_Box.ItemIndex := FloorCodeList.IndexOf(MasterFloorCode);
          cmb_Box.Enabled := False;
        end;
      end
    end;
  end;
end;

procedure TfmMDICardAdmin.LoadsAreaCode(aBuildingCode, aFloorCode: string;
  cmb_Box: TComboBox);
var
  stSql : string;
begin
  cmb_Box.Clear;
  sAreaCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''2'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end;

  if (aFloorCode <> '') And (aFloorCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + '''';
  end;

  stSql := stSql + ' Order by LO_AREACODE ';

  cmb_Box.Items.Add('��ü');
  sAreaCodeList.Add('');
  cmb_Box.ItemIndex := 0;

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
      cmb_Box.Items.Add(FindField('LO_NAME').AsString );
      sAreaCodeList.Add(FindField('LO_AREACODE').AsString);
      Next;
    end;
    if Not IsMaster then
    begin
      if BuildingGrade > 2 then
      begin
        if AreaCodeList.IndexOf(MasterAreaCode) > 0 then
        begin
          cmb_Box.ItemIndex := AreaCodeList.IndexOf(MasterAreaCode);
          cmb_Box.Enabled := False;
        end;
      end
    end;
  end;
end;

procedure TfmMDICardAdmin.LoadsFloorCode(aBuildingCode: string;
  cmb_Box: TComboBox);
var
  stSql : string;
begin
  cmb_Box.Clear;
  sFloorCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''1'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;

  stSql := stSql + ' Order by LO_FLOORCODE ';

  cmb_Box.Items.Add('��ü');
  sFloorCodeList.Add('000');
  cmb_Box.ItemIndex := 0;

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
      cmb_Box.Items.Add(FindField('LO_NAME').AsString );
      sFloorCodeList.Add(FindField('LO_FLOORCODE').AsString);
      Next;
    end;
    if Not IsMaster then
    begin
      if BuildingGrade > 1 then
      begin
        if FloorCodeList.IndexOf(MasterFloorCode) > 0 then
        begin
          cmb_Box.ItemIndex := FloorCodeList.IndexOf(MasterFloorCode);
          cmb_Box.Enabled := False;
        end;
      end
    end;
  end;
end;

procedure TfmMDICardAdmin.DoorCodeSearch(aBuildingCode, aFloorCode,
  aAreaCode: string; sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
  if DBTYPE = 'MDB' then stSql := MDBSql.selectTB_DOORJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else if DBTYPE = 'PG' then stSql := PostGreSql.selectTB_DOORJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else if DBTYPE = 'MSSQL' then stSql := MssQl.selectTB_DOORJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else if DBTYPE = 'FB' then stSql := FireBird.selectTB_DOORJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else Exit;

  with DataModule1.GetObject.ADOTmpQuery do
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

    with sg do
    begin
      RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        cells[0,nRow] := FindField('DO_DOORNONAME').AsString;
        cells[1,nRow] := FindField('DO_DOORNO').AsString;
        cells[2,nRow] := FindField('AC_NODENO').AsString;
        cells[3,nRow] := FindField('AC_MCUID').AsString;
        cells[4,nRow] := FindField('AC_ECUID').AsString;
        AddCheckBox(0,nRow,False,False);

        nRow := nRow + 1;
        Next;
      end;
    end;
  end;
end;

procedure TfmMDICardAdmin.AlarmCodeSearch(aBuildingCode, aFloorCode,
  aAreaCode: string; sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
  stArmAreaNo : string;
begin
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;

  {if DBTYPE = 'MDB' then stSql := MDBSql.selectTB_ALARMDEVICEJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else if DBTYPE = 'PG' then stSql := PostGreSql.selectTB_ALARMDEVICEJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else if DBTYPE = 'MSSQL' then stSql:= MSSql.selectTB_ALARMDEVICEJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else if DBTYPE = 'FB' then stSql:= FireBird.selectTB_ALARMDEVICEJoinAdmin(aBuildingCode,aFloorCode,aAreaCode)
  else Exit;}
  stSql := 'select * from TB_ARMAREA ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AR_USE = ''Y'' ';
  if (aBuildingCode <> '') and (aBuildingCode <> '000') then
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  if (aFloorCode <> '') and (aFloorCode <> '000') then
    stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  if (aAreaCode <> '') and (aAreaCode <> '000') then
    stSql := stSql + ' AND LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' Order by AR_VIEWSEQ,AR_NAME ';

  with DataModule1.GetObject.ADOTmpQuery do
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
    with sg do
    begin
      RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        cells[0,nRow] := FindField('AR_NAME').AsString;
        if isDigit(FindField('AR_AREANO').AsString) then stArmAreaNo := inttostr(strtoint(FindField('AR_AREANO').AsString))
        else stArmAreaNo := '0';
        cells[1,nRow] := FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString + stArmAreaNo;
        cells[2,nRow] := FindField('AC_NODENO').AsString;
        cells[3,nRow] := FindField('AC_ECUID').AsString;
        cells[4,nRow] := stArmAreaNo;
        AddCheckBox(0,nRow,False,False);
        
        nRow := nRow + 1;
        Next;
      end;
    end;
  end;
end;

procedure TfmMDICardAdmin.DoorSearch;
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  //stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode.itemindex ];
  //LoadFloorCode(stBuildingCode,cmb_FloorCode);
  //stFloorCode := '';
  //if cmb_FloorCode.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  //LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);
  //stAreaCode := '';
  //if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);

  DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);

end;

procedure TfmMDICardAdmin.AlarmSearch;
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  //stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  //LoadFloorCode(stBuildingCode,cmb_FloorCode1);
  //stFloorCode := '000';
  //if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  //LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  //stAreaCode := '';
  //if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);

  AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);

end;

procedure TfmMDICardAdmin.FoodSearch;
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode2);
  stFloorCode := '000';
  if cmb_FloorCode2.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode2);
  stAreaCode := '';
  if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
  FoodCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Food);
  FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);

end;

procedure TfmMDICardAdmin.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = DoorTab then    DoorSearch
  else if PageControl1.ActivePage  = AlarmTab then  AlarmSearch
  else if PageControl1.ActivePage.Name  = 'FoodTab' then FoodSearch;

end;

procedure TfmMDICardAdmin.FoodCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
  stSql := 'select a.FO_NAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.FO_DOORNO ';
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
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
      if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
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

  with DataModule1.GetObject.ADOTmpQuery do
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
    with sg do
    begin
      RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        cells[0,nRow] := FindField('FO_NAME').AsString;
        cells[1,nRow] := FindField('AC_NODENO').AsString;
        cells[2,nRow] := FindField('AC_MCUID').AsString;
        cells[3,nRow] := FindField('AC_ECUID').AsString;
        cells[4,nRow] := FindField('FO_DOORNO').AsString;
        AddCheckBox(0,nRow,False,False);
        
        nRow := nRow + 1;
        Next;
      end;
    end;
  end;
end;

procedure TfmMDICardAdmin.AlarmGradeSearch(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string;
  sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
  stArmAreaNo : string;
begin
  Panel21.Caption := '����ī�������ȸ';
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
  {
  if DBTYPE = 'MSSQL' then stSql := Mssql.SelectTB_ALARMGRADEJoinBase(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else if DBTYPE = 'PG' then stsql := PostGreSql.SelectTB_ALARMGRADEJoinBase(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else if DBTYPE = 'MDB' then stSql := MDBsql.SelectTB_ALARMGRADEJoinBase(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else if DBTYPE = 'FB' then stSql := FireBird.SelectTB_ALARMGRADEJoinBase(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else Exit;
  }
  stSql := ' select a.*,b.DE_RCVACK   ';
  stSql := stSql + ' From ';
  stSql := stSql + ' TB_ARMAREA a ';
  stSql := stSql + ' INNER JOIN (select * from TB_DEVICECARDNO ';
  stSql := stSql + ' Where CA_CARDNO = ''' + aCardNo + ''' ';
  stSql := stSql + ' AND DE_PERMIT = ''L'' ) b  ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID  ';
  stSql := stSql + ' )  ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if (aBuildingCode <> '') and (aBuildingCode <> '000') then
    stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
  if (aFloorCode <> '') and (aFloorCode <> '000') then
    stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
  if (aAreaCode <> '') and (aAreaCode <> '000') then
    stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' AND ( (a.AR_AREANO = ''00'' AND b.DE_ALARM0 = ''Y'') OR  ';
  stSql := stSql + '       (a.AR_AREANO = ''01'' AND b.DE_ALARM1 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''02'' AND b.DE_ALARM2 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''03'' AND b.DE_ALARM3 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''04'' AND b.DE_ALARM4 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''05'' AND b.DE_ALARM5 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''06'' AND b.DE_ALARM6 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''07'' AND b.DE_ALARM7 = ''Y'') OR ';
  stSql := stSql + '       (a.AR_AREANO = ''08'' AND b.DE_ALARM8 = ''Y'') ) ';
  stSql := stSql + ' Order by a.AR_VIEWSEQ,a.AR_NAME ';

  with DataModule1.GetObject.ADOTmpQuery do
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
    Panel21.Caption := '����ī�������ȸ('+inttostr(RecordCount) + ')';
    First;
    with sg do
    begin
      RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        cells[0,nRow] := FindField('AR_NAME').AsString;
        cells[1,nRow] := FindField('DE_RCVACK').AsString;
        if isDigit(FindField('AR_AREANO').AsString) then stArmAreaNo := inttostr(strtoint(FindField('AR_AREANO').AsString))
        else stArmAreaNo := '0';
        cells[2,nRow] := FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString + stArmAreaNo;
        cells[3,nRow] := FindField('AC_NODENO').AsString;
        cells[4,nRow] := FindField('AC_ECUID').AsString;
        cells[5,nRow] := stArmAreaNo;
        AddCheckBox(0,nRow,False,False);
        
        nRow := nRow + 1;
        Next;
      end;
    end;
  end;

end;

procedure TfmMDICardAdmin.DoorGradeSearch(aBuildingCode,aFloorCode,aAreaCode,aCardNo: string;
  sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  Panel16.Caption := '����ī�������ȸ';
  if IsCardGradCopy then ClearSearcheDoorGrade;
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
  if DBTYPE = 'MDB' then stSql := MDBSql.selectTB_DOORJoinGrade(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else if DBTYPE = 'PG' then stSql := PostGreSql.selectTB_DOORJoinGrade(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else if DBTYPE = 'MSSQL' then stSql := MSSql.selectTB_DOORJoinGrade(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else if DBTYPE = 'FB' then stSql := FireBird.selectTB_DOORJoinGrade(aBuildingCode,aFloorCode,aAreaCode,aCardNo)
  else Exit;


  with DataModule1.GetObject.ADOTmpQuery do
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
    Panel16.Caption := '����ī�������ȸ('+inttostr(Recordcount)+')';
    First;
    with sg do
    begin
      RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        cells[0,nRow] := FindField('DO_DOORNONAME').AsString;
        cells[1,nRow] := FindField('DE_RCVACK').AsString;
        cells[2,nRow] := inttostr(FindField('AC_NODENO').AsInteger);
        cells[3,nRow] := FindField('AC_MCUID').AsString;
        cells[4,nRow] := FindField('AC_ECUID').AsString;
        cells[5,nRow] := FindField('DO_DOORNO').AsString;
        AddCheckBox(0,nRow,False,False);

        if IsCardGradCopy then SettingSearcheDoorGrade(FindField('AC_NODENO').AsInteger,FindField('AC_ECUID').AsString,FindField('DO_DOORNO').AsString);
        
        nRow := nRow + 1;
        Next;
      end;
    end;
  end;

end;

procedure TfmMDICardAdmin.FoodGradeSearch(aBuildingCode,aFloorCode,aAreaCode,aCardNo:string;
  sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;

  if Length(aCardNo) <> 10 then Exit; 

  stSql :=  ' select a.FO_NAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.FO_DOORNO,b.DE_RCVACK  ';
  stSql := stSql + ' From TB_FOOD a  ';
  stSql := stSql + ' INNER JOIN TB_DEVICECARDNO b  ';
  stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
  stSql := stSql + ' AND ( (a.FO_DOORNO = ''1'' AND b.DE_DOOR1 = ''Y'') OR  ';
  stSql := stSql + '       (a.FO_DOORNO = ''2'' AND b.DE_DOOR2 = ''Y'') ) ';
  stSql := stSql + ' AND b.DE_USEACCESS = ''Y''';
  stSql := stSql + ' AND b.DE_PERMIT = ''L'' ';
  stSql := stSql + ' ) ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINFOOD c ';
      stSql := stSql + ' ON (a.GROUP_CODE = c.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = c.AC_ECUID  ';
      stSql := stSql + ' AND a.FO_DOORNO = c.FO_DOORNO ) ';
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

  with DataModule1.GetObject.ADOTmpQuery do
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
    with sg do
    begin
      RowCount := RecordCount + 1;
      nRow := 1;
      while Not Eof do
      begin
        cells[0,nRow] := FindField('FO_NAME').AsString;
        cells[1,nRow] := FindField('DE_RCVACK').AsString;
        cells[2,nRow] := FindField('AC_NODENO').AsString;
        cells[3,nRow] := FindField('AC_MCUID').AsString;
        cells[4,nRow] := FindField('AC_ECUID').AsString;
        cells[5,nRow] := FindField('FO_DOORNO').AsString;
        AddCheckBox(0,nRow,False,False);
        
        nRow := nRow + 1;
        Next;
      end;
    end;
  end;

end;

procedure TfmMDICardAdmin.cmb_BuildingCode1Change(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode1);
  stFloorCode := '000';
  if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  stAreaCode := '';
  if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
  AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);

end;

procedure TfmMDICardAdmin.cmb_BuildingCode2Change(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode2);
  stFloorCode := '000';
  if cmb_FloorCode2.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode2);
  stAreaCode := '';
  if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
  FoodCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Food);
  FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);

end;

procedure TfmMDICardAdmin.cmb_FloorCodeChange(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode.itemindex > -1 then stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode.itemindex ];
  if cmb_FloorCode.itemindex > -1 then stFloorCode := FloorCodeList.Strings[ cmb_FloorCode.itemindex ];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);

  if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
  DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);

end;

procedure TfmMDICardAdmin.cmb_FloorCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';

  if cmb_BuildingCode1.itemindex > -1 then stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  if cmb_FloorCode1.itemindex > -1 then stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
  AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);

end;

procedure TfmMDICardAdmin.cmb_FloorCode2Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';

  if cmb_BuildingCode2.itemindex > -1 then stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode2.itemindex ];
  if cmb_FloorCode2.itemindex > -1 then stFloorCode := FloorCodeList.Strings[ cmb_FloorCode2.itemindex ];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode2);
  if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
  FoodCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Food);
  FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);

end;

procedure TfmMDICardAdmin.cmb_AreaCodeChange(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
  stFloorCode := '';
  if cmb_FloorCode.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  stAreaCode := '';
  if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
  DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);

end;

procedure TfmMDICardAdmin.cmb_AreaCode1Change(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
  stFloorCode := '';
  if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  stAreaCode := '';
  if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
  AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);

end;

procedure TfmMDICardAdmin.cmb_AreaCode2Change(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
  stFloorCode := '';
  if cmb_FloorCode2.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
  stAreaCode := '';
  if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
  FoodCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Food);
  FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);

end;

procedure TfmMDICardAdmin.sg_CardCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if ARow = 0 then //��ü���� �Ǵ� ����
  begin
    if State then CheckCount := (Sender as TAdvStringGrid).RowCount - 1
    else CheckCount := 0;
    AdvStrinGridSetAllCheck(Sender,State);
  end else
  begin
    if State then CheckCount := CheckCount + 1
    else CheckCount := CheckCount - 1 ;
  end;

end;

procedure TfmMDICardAdmin.btn_GradeInsertClick(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode : string;
  stCompanyCode : string;
begin
  if CheckCount < 1 then
  begin
    showmessage('����ڸ� �����Ͽ� �ּ���.');
    Exit;
  end;

  btn_GradeInsert.Enabled := False;
  Pan_Gauge.Visible := True;
  if PageControl1.ActivePage.Name  = 'DoorTab' then
  begin
    PageControl1.Enabled := False;
    InsertDoorGrade;
    PageControl1.Enabled := True;
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
    DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);
  end else if PageControl1.ActivePage.Name  = 'AlarmTab' then
  begin
    PageControl1.Enabled := False;
    InsertAlarmGrade;
    PageControl1.Enabled := True;
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
    AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);
  end else if PageControl1.ActivePage.Name  = 'FoodTab' then
  begin
    PageControl1.Enabled := False;
    InsertFoodGrade;
    PageControl1.Enabled := True;
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode2.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
    FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);
  end;
  Pan_Gauge.Visible := False;
  btn_GradeInsert.Enabled := TRUE;
  if L_bDeviceGradeFail then
  begin
    L_bDeviceGradeFail := False;
    showmessage('ī�� ������ ' + inttostr(G_nCardMaxCount) + '���� �ʰ��Ͽ� ���� ��� ���� ���� ��Ⱑ ���� �մϴ�.');
  end;
end;

procedure TfmMDICardAdmin.DeleteAlarmGrade;
var
  UserLoop,AlarmLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stArmAreaNO : string;
  stAlarmNo : string;
  stCardNo : string;
  bResult : Boolean;
begin
    for AlarmLoop := 1 to sg_GradeAlarm.RowCount - 1 do
    begin
      sg_GradeAlarm.GetCheckBoxState(0,AlarmLoop, bchkState);
      if bChkState then //��������� üũ �Ǿ� ������ �ش� ���� ����
      begin
        stAlarmNo := sg_GradeAlarm.Cells[2,AlarmLoop];
        stNodeNo:= sg_GradeAlarm.Cells[3,AlarmLoop];
        stECUID:= sg_GradeAlarm.Cells[4,AlarmLoop];
        stArmAreaNO := sg_GradeAlarm.Cells[5,AlarmLoop];
        if isdigit(stArmAreaNO) then
        begin
          stArmAreaNO := inttostr(strtoint(stArmAreaNO));
        end else stArmAreaNO := '0';
        dmAdoQuery.UpdateTB_DEVICECARDNOAlarmArea(ed_sCardNo.Text,stNodeNo,stECUID,stArmAreaNO,'L','N');
        DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,ALARMTYPE,stArmAreaNO,ed_sCardNo.Text,' �����ѻ���');
      end;
    end;

end;

procedure TfmMDICardAdmin.DeleteDoorGrade;
var
  UserLoop,DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
begin
    for DoorLoop := 1 to sg_GradeDoor.RowCount - 1 do
    begin
      sg_GradeDoor.GetCheckBoxState(0,DoorLoop, bchkState);
      if bChkState then //���Թ��ڵ尡 üũ �Ǿ� ������ �ش� ���� ����
      begin
        stNodeNo  := sg_GradeDoor.Cells[2,DoorLoop];
        stECUID  := sg_GradeDoor.Cells[4,DoorLoop];
        stDoorNo   := sg_GradeDoor.Cells[5,DoorLoop];
        UpdateTB_DEVICECARDNO(ed_sCardNo.Text,stNodeNo,stECUID,stDoorNO,'0','L','N','DOOR');
        DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,DOORTYPE,stDoorNO,ed_sCardNo.Text,' ���Ա��ѻ���');
      end;
    end;
end;

procedure TfmMDICardAdmin.DeleteFoodGrade;
var
  UserLoop,FoodLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
begin
  with sg_GradeFood do
  begin
    for FoodLoop := 1 to RowCount - 1 do
    begin
      GetCheckBoxState(0,FoodLoop, bchkState);
      if bChkState then //���Թ��ڵ尡 üũ �Ǿ� ������ �ش� ���� ����
      begin
        stNodeNo  := Cells[2,FoodLoop];
        stECUID  := Cells[4,FoodLoop];
        stDoorNO  := Cells[5,FoodLoop];
        UpdateTB_DEVICECARDNO(ed_sCardNo.Text,stNodeNo,stECUID,stDoorNO,'0','L','N','DOOR');
        DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,DOORTYPE,stDoorNO,ed_sCardNo.Text , ' �ļ����ѻ���');
      end;
    end;
  end;
end;

procedure TfmMDICardAdmin.InsertAlarmGrade;
var
  UserLoop,AlarmLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stAlarmNo : string;
  stArmAreaNO : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
begin

  i := 1;
  Gauge1.MaxValue := CheckCount;
  Gauge1.Progress := 0;
  for UserLoop := 1 to sg_Card.RowCount - 1 do   //üũ�Ǿ� �ִ� ����� ��θ� �μ�Ʈ ��Ŵ
  begin
    sg_Card.GetCheckBoxState(0,UserLoop, bchkState);
    if bchkState then  //üũ �Ǿ� ������ ���� ���
    begin
      stCardNo := sg_Card.Cells[3,UserLoop];
      for AlarmLoop := 1 to sg_Alarm.RowCount - 1 do
      begin
        sg_Alarm.GetCheckBoxState(0,AlarmLoop, bchkState);
        if bChkState then //��񱸿��� üũ �Ǿ� ������ �ش� ��񱸿� Insert;
        begin
          stAlarmNo := sg_Alarm.Cells[1,AlarmLoop];
          stNodeNo:= sg_Alarm.Cells[2,AlarmLoop];
          stECUID:= sg_Alarm.Cells[3,AlarmLoop];
          if isdigit(sg_Alarm.Cells[4,AlarmLoop]) then
          begin
            stArmAreaNO := inttostr(strtoint(sg_Alarm.Cells[4,AlarmLoop]));
          end else stArmAreaNO := '0';
          if dmAdoQuery.CheckTB_DEVICECARDNO_Count(stNodeNo,stECUID) < G_nCardMaxCount then
          begin
            bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
            if Not bResult then
               dmAdoQuery.InsertTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,'L','Y')
            else dmAdoQuery.UpdateTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,'L','Y');
            DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,ALARMTYPE,stArmAreaNO,stCardNo , '�����ѵ��');
          end else L_bDeviceGradeFail := True;
        end;
      end;
      UpdateTB_CARDDOORGRADE(stCardNo,'Y');
      StatusBar1.Panels[0].Text := inttostr(i) + '/' + inttostr(CheckCount);
      Gauge1.Progress := i;
      inc(i);
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfmMDICardAdmin.InsertDoorGrade;
var
  UserLoop,DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
begin
  i:=1;
  Gauge1.MaxValue := CheckCount;
  Gauge1.Progress := 0;
  for UserLoop := 1 to sg_Card.RowCount - 1 do   //üũ�Ǿ� �ִ� ����� ��θ� �μ�Ʈ ��Ŵ
  begin
    sg_Card.GetCheckBoxState(0,UserLoop, bchkState);
    if bchkState then  //üũ �Ǿ� ������ ���� ���
    begin
      stCardNo := sg_Card.Cells[3,UserLoop];
      for DoorLoop := 1 to sg_Door.RowCount - 1 do
      begin
        sg_Door.GetCheckBoxState(0,DoorLoop, bchkState);
        if bChkState then //
        begin
          stNodeNo:= sg_Door.Cells[2,DoorLoop];
          stECUID:= sg_Door.Cells[4,DoorLoop];
          stDoorNO := sg_Door.Cells[1,DoorLoop];
          if dmAdoQuery.CheckTB_DEVICECARDNO_Count(stNodeNo,stECUID) < G_nCardMaxCount then
          begin
            bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
            if Not bResult then
               InsertTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0','L','Y','DOOR')
            else UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0','L','Y','DOOR');
            DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,DOORTYPE,stDoorNO,stCardNo , ' ���Ա��ѵ��');
          end else L_bDeviceGradeFail := True;

        end;
      end;
      UpdateTB_CARDDOORGRADE(stCardNo,'Y');
      StatusBar1.Panels[0].Text := inttostr(i) + '/' + inttostr(CheckCount);
      Gauge1.Progress := i;
      inc(i);
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfmMDICardAdmin.InsertFoodGrade;
var
  UserLoop,FoodLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNo : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
begin
  i:=1;
  Gauge1.MaxValue := CheckCount;
  Gauge1.Progress := 0;
  for UserLoop := 1 to sg_Card.RowCount - 1 do   //üũ�Ǿ� �ִ� ����� ��θ� �μ�Ʈ ��Ŵ
  begin
    sg_Card.GetCheckBoxState(0,UserLoop, bchkState);
    if bchkState then  //üũ �Ǿ� ������ ���� ���
    begin
      stCardNo := sg_Card.Cells[3,UserLoop];
      for FoodLoop := 1 to sg_Food.RowCount - 1 do
      begin
        sg_Food.GetCheckBoxState(0,FoodLoop, bchkState);
        if bChkState then //��񱸿��� üũ �Ǿ� ������ �ش� ��񱸿� Insert;
        begin
          stNodeNo:= sg_Food.Cells[1,FoodLoop];
          stECUID:= sg_Food.Cells[3,FoodLoop];
          stDoorNo:= sg_Food.Cells[4,FoodLoop];
          bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
          if Not bResult then
             InsertTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNo,'0','L','Y','DOOR')
          else UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNo,'0','L','Y','DOOR');
          DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,DOORTYPE,stDoorNO,stCardNo , ' �ļ����ѵ��');
        end;
      end;
      StatusBar1.Panels[0].Text := inttostr(i) + '/' + inttostr(sg_Card.RowCount - 1);
      Gauge1.Progress := i;
      inc(i);
      Application.ProcessMessages;
    end;
  end;
end;

function TfmMDICardAdmin.CheckTB_DEVICECARDNO(aCardNo, aNodeNo,
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

function TfmMDICardAdmin.InsertTB_DEVICECARDNO(aCardNo, aNodeNo,
  aECUID, aDoorNO,aTimCode, aPermit,aValue,aGubun: string): Boolean;
var
  stSql : string;
begin
  if Trim(aCardNo) = '' then Exit; 
  result := False;
  stSql := ' Insert Into TB_DEVICECARDNO( ';
  stSql := stSql + 'GROUP_CODE,';
  stSql := stSql + 'CA_CARDNO,';
  stSql := stSql + 'AC_NODENO,';
  stSql := stSql + 'AC_ECUID,';
  if aGubun = 'DOOR' then
  begin
    stSql := stSql + 'DE_DOOR' + aDoorNo + ',';
    stSql := stSql + 'DE_USEACCESS,';
  end else if aGubun = 'ALARM' then
  begin
    stSql := stSql + 'DE_USEALARM,';
  end;
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
  if aGubun = 'DOOR' then
  begin
    stSql := stSql + '''' + aValue + ''',';
    stSql := stSql + '''Y'',';
  end else if aGubun = 'ALARM' then
  begin
    stSql := stSql + '''' + aValue + ''',';
  end;
  stSql := stSql + '''' + aTimCode + ''',';
  stSql := stSql + '''' + aPermit + ''',';
  stSql := stSql + '''N'',';
  stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + '''' + Master_ID + ''') ';

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

function TfmMDICardAdmin.UpdateTB_DEVICECARDNO(aCardNo, aNodeNo,
  aECUID, aDoorNO,aTimCode, aPermit,aValue, aGubun: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := ' Update TB_DEVICECARDNO Set ';
  if aGubun = 'DOOR' then
  begin
    stSql := stSql + 'DE_DOOR' + aDoorNO + ' = ''' + aValue + ''',';
    stSql := stSql + 'DE_USEACCESS = ''Y'',';
  end else if aGubun = 'ALARM' then
  begin
    stSql := stSql + 'DE_USEALARM = ''' + aValue + ''',';
  end;
  stSql := stSql + 'DE_TIMECODE = ''' + aTimCode + ''',';
  stSql := stSql + 'DE_PERMIT = ''' + aPermit + ''',';
  stSql := stSql + 'DE_RCVACK = ''N'',';
  stSql := stSql + 'DE_UPDATETIME = ''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
  stSql := stSql + 'DE_UPDATEOPERATOR = ''' + Master_ID + ''' ';
  stSql := stSql + ' Where GROUP_CODE =''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO =''' + aCardNo + ''' ';
  stSql := stSql + ' AND AC_NODENO =' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + '''';

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

procedure TfmMDICardAdmin.btn_GradeDeleteClick(Sender: TObject);
var
  i : integer;
  bChkState : Boolean;
  stCompanyCode,stBuildingCode,stFloorCode,stAreaCode : string;
begin
  if CheckCount < 1 then
  begin
    showmessage('����ڸ� �����Ͽ� �ּ���.');
    Exit;
  end;
  if CheckCount > 1 then
  begin
    showmessage('���� ������ �Ѹ����� �����մϴ�. ����ڸ� �Ѹ��� �����Ͽ� �ּ���.');
    Exit;
  end;
  {
  for i := 1 to sg_Card.RowCount - 1 do
  begin
    sg_Card.GetCheckBoxState(0,i, bchkState);
    if bChkState then
    begin
      ed_CardNo.Text := sg_Card.Cells[0,i];
      break;
    end;
  end;  }

  if PageControl1.ActivePage.Name  = 'DoorTab' then
  begin
    PageControl1.Enabled := False;
    DeleteDoorGrade;
    PageControl1.Enabled := True;
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
    DoorGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeDoor);
  end else if PageControl1.ActivePage.Name  = 'AlarmTab' then
  begin
    PageControl1.Enabled := False;
    DeleteAlarmGrade;
    PageControl1.Enabled := True;
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
    AlarmGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.text,sg_GradeAlarm);
  end else if PageControl1.ActivePage.Name  = 'FoodTab' then
  begin
    PageControl1.Enabled := False;
    DeleteFoodGrade;
    PageControl1.Enabled := True;
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
    stFloorCode := '';
    if cmb_FloorCode2.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
    stAreaCode := '';
    if cmb_AreaCode2.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
    FoodGradeSearch(stBuildingCode,stFloorCode,stAreaCode,ed_sCardNo.Text ,sg_GradeFood);
  end;

  dmAdoQuery.NotGradePermitDelete;
end;

procedure TfmMDICardAdmin.chk_NonGradeClick(Sender: TObject);
begin
  btn_SearchClick(Self);
end;

procedure TfmMDICardAdmin.cmb_JijumChange(Sender: TObject);
begin
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  btn_SearchClick(Self);
end;

procedure TfmMDICardAdmin.FormNameSet;
begin
  lb_CompanyName.Caption := FM002;
  lb_JijumName.Caption := FM012;
  lb_DepartName.Caption := FM022;
  lb_PosiName.Caption := FM032;
//  lb_sabun.Caption := FM101;
//  lb_Name.Caption := FM102;
  lb_Building1.Caption := FM901;
  lb_Building2.Caption := FM901;
  lb_FloorCode1.Caption := FM911;
  lb_FloorCode2.Caption := FM911;
  lb_AreaCode1.Caption := FM921;
  lb_AreaCode2.Caption := FM921;

  with sg_Card do
  begin
    Cells[0,0] := FM002;
    Cells[1,0] := FM101;
    Cells[2,0] := FM102;
    Cells[5,0] := FM012;
    Cells[6,0] := FM022;
    Cells[7,0] := FM032;

  end;
end;

procedure TfmMDICardAdmin.CenterPanel;
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
end;

procedure TfmMDICardAdmin.FormResize(Sender: TObject);
begin
  CenterPanel;
end;

procedure TfmMDICardAdmin.SettingSearcheDoorGrade(aNodeNo: integer; aEcuID,
  aDoorNo: string);
var
  nRow : integer;
begin
  with sg_Door do
  begin
    for nRow := 1 to RowCount - 1 do
    begin
      if strtoint(Cells[2,nRow]) = aNodeNo then
      begin
        if Cells[4,nRow] = aEcuID then
        begin
          if Cells[1,nRow] = aDoorNo then SetCheckBoxState(0,nRow,True);
        end;
      end;
    end;

  end;
end;

procedure TfmMDICardAdmin.ClearSearcheDoorGrade;
var
  nRow : integer;
begin
  with sg_Door do
  begin
    for nRow := 1 to RowCount - 1 do
    begin
      SetCheckBoxState(0,nRow,False);
    end;
  end;
end;

function TfmMDICardAdmin.UpdateTB_CARDDOORGRADE(aCardNo,
  aDoorGrade: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Update TB_CARD set CA_DOORGRADE = ''' + aDoorGrade + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmMDICardAdmin.GetFirstCheckListData(sg_list: TAdvStringGrid;
  aIndex: integer): string;
var
  nRow : integer;
  bchkState : Boolean;
begin
  result := '';

  with sg_list do
  begin
    if rowcount < 2 then Exit;
    for nRow := 1 to rowcount - 1 do
    begin
      GetCheckBoxState(0,nRow, bchkState);
      if bchkState then
      begin
        SelectRows(nRow,1);
        result := Cells[aIndex,nRow];
        Exit;
      end;
    end;
  end;

end;

procedure TfmMDICardAdmin.GradeSetting(aInsertGrade, aUpdateGrade,
  aDeleteGrade: Boolean);
begin


end;

procedure TfmMDICardAdmin.CardReadProcess(aCardNo: string;aCheckBox:Boolean=True);
begin
  if aCheckBox and Not chk_CardReg.Checked then Exit;
  cmb_SearchType.ItemIndex := 5;   //ī���ȣ ����
  ed_searchText.Text := aCardNo;

  btn_SearchClick(Self);

end;

procedure TfmMDICardAdmin.FormShow(Sender: TObject);
var
  nIndex : integer;
begin

  LoadCompanyCode(CompanyCodeList,cmb_Company);
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.itemIndex],JijumCodeList,cmb_Jijum);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.itemIndex],PosiCodeList,cmb_Posi);


  LoadEmpSearchType(cmb_SearchType);
  //LoadCardGubun(cmb_CardGubun);

  GridInit(sg_Card,7);
  GridInit(sg_Door,1);
  GridInit(sg_GradeDoor,2);
  GridInit(sg_Alarm,1);
  GridInit(sg_GradeAlarm,2);
  GridInit(sg_Food,1);
  GridInit(sg_GradeFood,2);
  
  PageControl1.ActivePage := DoorTab;
  DoorSearch;
  CheckCount := 0;

  if Not IsMaster then
  begin
    if strtoint(CompanyGrade) > 1 then
    begin
      nIndex := CompanyCodeList.IndexOf(MasterCompany);
      if nIndex > -1 then
      begin
        cmb_Company.ItemIndex := nIndex;
        LoadJijumCode(CompanyCodeList.Strings[nIndex],JijumCodeList,cmb_Jijum);
      end;
      cmb_Company.Enabled := False;
      LoadPosiCode(MasterCompany,PosiCodeList,cmb_Posi);
    end;
    if strtoint(CompanyGrade) > 2 then
    begin
      nIndex := JijumCodeList.IndexOf(MasterCompany + MasterJijum);
      if nIndex > -1 then cmb_Jijum.ItemIndex := nIndex;
      cmb_Jijum.Enabled := False;
    end;
  end;
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);

  FormNameSet;
  iniConfigRead;
  LoadBuildingCode(cmb_BuildingCode);
  LoadBuildingCode(cmb_BuildingCode1);
  LoadBuildingCode(cmb_BuildingCode2);

end;

procedure TfmMDICardAdmin.cmb_SearchTypeChange(Sender: TObject);
begin
  lb_search.Caption := cmb_SearchType.Text;

  if cmb_SearchType.ItemIndex > 5 then
  begin
    cmb_regGubun1.Visible := True;
    ed_searchText.Visible := False;
    if cmb_SearchType.ItemIndex = 6 then LoadRegGubun(cmb_regGubun1)
    else if cmb_SearchType.ItemIndex = 7 then LoadEmpType(EmpTypeCodeList,cmb_regGubun1)
    else if cmb_SearchType.ItemIndex = 8 then LoadCardGubun(cmb_regGubun1);
  end else
  begin
    cmb_regGubun1.Visible := False;
    ed_searchText.Visible := True;
  end;

end;


procedure TfmMDICardAdmin.btn_ExcelClick(Sender: TObject);
var
  stRefFileName,stSaveFileName:String;
  stPrintRefPath : string;
  nExcelRowStart:integer;
  ini_fun : TiniFile;
  aFileName : string;
  stTitle : string;
begin
  btn_Excel.Enabled := False;
  Screen.Cursor:= crHourGlass;
  stTitle := '';
{  ini_fun := TiniFile.Create(ExeFolder + '\print.ini');
  stPrintRefPath := ExeFolder + '\..\PrintOutRef\' ;
  stPrintRefPath := ini_fun.ReadString('ȯ�漳��','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('�����Ȳ','��������','MDICardList.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('�����Ȳ','������ġ',6);
  ini_fun.Free; }

  aFileName:='�����Ȳ';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
    begin
      sg_Card.SaveToCSV(SaveDialog1.FileName);
    end;
    {
      if Not ExcelPrintOut(sg_Card,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
      begin
        Screen.Cursor:= crDefault;
        btn_Excel.Enabled := True;
        Exit;
      end;  }
      //showmessage('���ϻ��� �Ϸ�');
  end;
  Screen.Cursor:= crDefault;
  btn_Excel.Enabled := True;
end;

function TfmMDICardAdmin.ExcelPrintOut(StringGrid: TAdvStringGrid;
  refFileName, SaveFileName: String; FileOut: Boolean;
  ExcelRowStart: integer; stTitle: string; bRowHeader,
  bColHeader: Boolean): Boolean;
var
  oXL, oWB, oSheet, oRng, VArray : Variant;
  nCol1,nCol2 : Integer;
  Loop : Integer;
  sCurDay,sPreDay : String;
  curDate : TDateTime;
  mergeStart :char;
  i,j,k : Integer;
  st : String;
  nColChar : integer;
  nFixCol,nFixRow : integer;

begin
  pan_gauge.Visible := True;
  Result := False;

  Try
    oXL := CreateOleObject('Excel.Application');
  Except
    showmessage('����� ������ ��ġ�� ��ǻ�Ϳ����� �����մϴ�.');
    exit;
  End;

  if FileExists(refFileName) = False then
  begin
    Showmessage(refFileName + ' ������ �����ϴ�.');
    exit;
  end;


  oXL.Workbooks.Open(refFileName);
  oXL.DisplayAlerts := False;
//  oXL.Visible := True;
  oSheet := oXL.ActiveSheet;


  with StringGrid do
  begin

    //Ÿ��Ʋ�� ����
    nCol1 := ColCount div 26;
    nCol2 := ColCount mod 26;
    if bRowHeader then
    begin
      oSheet.Range['A' + inttostr(ExcelRowStart - 1)].Value := stTitle;
      if bColHeader then nFixCol := 0
      else nFixCol := FixedCols ;
      for i:= 0 to FixedRows - 1 do
      begin
        for j:= nFixCol to ColCount - 1 do
        begin
          nColChar := j div 26;
          if j < 26 then
            oXL.Range[Chr(Ord('A') + j ) + inttostr(i+ ExcelRowStart)].Value := Cells[j,i]
          else
            oXL.Range[Chr(Ord('A') + nColChar - 1 ) + Chr(Ord('A') + j - (26 * nColChar) ) + inttostr(i+ ExcelRowStart)].Value := Cells[j,i];
        end;
      end;
      ExcelRowStart := ExcelRowStart + FixedRows ;
    end
    else    oSheet.Range['A' + inttostr(ExcelRowStart - FixedRows - 1)].Value := stTitle;

    Gauge1.MaxValue := ( RowCount - FixedRows );
    Gauge1.Progress := 0;
    for i := FixedRows to RowCount - 1 do
    begin

      if i <  RowCount - 2 then    //��ĭ�� ����
      begin
        oSheet.Range['A' + inttostr(i+ ExcelRowStart - FixedRows + 1) + ':' + Chr(Ord('A') + nCol1 ) + Chr(Ord('A') + nCol2 - 1 ) +  inttostr(i+ ExcelRowStart - FixedRows + 1)].Insert;
      end;
      Gauge1.Progress := Gauge1.Progress + 1;
      Application.ProcessMessages;
     {
      for j := 0 to ColCount - 1 do
      begin
        nColChar := j div 26;
        if j < 26 then
          oXL.Range[Chr(Ord('A') + j ) + inttostr(i+ ExcelRowStart - FixedRows)].Value := Cells[j,i]
        else
          oXL.Range[Chr(Ord('A') + nColChar - 1 ) + Chr(Ord('A') + j - (26 * nColChar) ) + inttostr(i+ ExcelRowStart - FixedRows)].Value := Cells[j,i];
        Gauge1.Progress := Gauge1.Progress + 1;
        Application.ProcessMessages;
      end;
      }
    end;
    StringGrid.CopyToClipBoard;
    oSheet.Range['A' + inttostr(ExcelRowStart - 1), 'A' + inttostr(ExcelRowStart - 1)].Select;
    oSheet.Paste;
  end;//With

  //oXL.Visible := False;
  if FileOut then  oSheet.SaveAs(SaveFileName)
  else  oSheet.PrintOut;
  //oSheet.SaveAs(ExtractFileDir(Application.ExeName) + '\WorkSch2.xls');
  oXL.ActiveWorkbook.Close(False);
  oXL.Quit;
  pan_gauge.Visible := False;
  Result := True;
end;

procedure TfmMDICardAdmin.ed_searchTextEnter(Sender: TObject);
var
  TIMC: HIMC;
  dwSentence : DWORD;
  dwConversion : DWORD;
begin
  if cmb_SearchType.ItemIndex <> 1 then Exit;
  TIMC := ImmGetContext(TEdit(Sender).Handle);
  ImmGetConversionStatus(TIMC, dwConversion, dwSentence);
  ImmSetConversionStatus(TIMC, IME_CMODE_NATIVE, dwSentence); //������ IME_CMODE_ALPHANUMERIC
  ImmReleaseContext(TEdit(Sender).Handle, TIMC);

end;


procedure TfmMDICardAdmin.iniConfigWrite;
var
  ini_fun : TiniFile;
  i : integer;
begin
  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  ini_fun.WriteInteger('CARDAdmin','EmployeeWidth',  pn_Employ.Width);
  for i := 0 to sg_Card.ColCount - 1 do
  begin
    ini_fun.WriteInteger('CARDAdmin','CardCol' + inttostr(i),sg_Card.ColWidths[i]);
  end;

  ini_fun.Free;

end;

procedure TfmMDICardAdmin.iniConfigRead;
var
  ini_fun : TiniFile;
  i : integer;
begin
  ini_fun := TiniFile.Create(ExeFolder + '\zmos.INI');
  pn_Employ.Width := ini_fun.ReadInteger('CARDAdmin','EmployeeWidth',622);
  for i := 0 to sg_Card.ColCount - 1 do
  begin
    sg_Card.ColWidths[i] := ini_fun.ReadInteger('CARDAdmin','CardCol' + inttostr(i),120);
  end;

  ini_fun.Free;

end;

initialization
  RegisterClass(TfmMDICardAdmin);
Finalization
  UnRegisterClass(TfmMDICardAdmin);

end.