unit uMDIDeviceGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Buttons,
  uSubForm, CommandArray, Gauges,iniFiles,ComObj, Menus, AdvObj;

type
  TfmMDIDeviceGrade = class(TfmASubForm)
    StatusBar1: TStatusBar;
    pn_Employ: TPanel;
    PageControl1: TPageControl;
    DoorTab: TTabSheet;
    Panel6: TPanel;
    sg_Door: TAdvStringGrid;
    GroupBox3: TGroupBox;
    lb_Building1: TLabel;
    lb_FloorCode1: TLabel;
    lb_AreaCode1: TLabel;
    cmb_BuildingCode: TComboBox;
    cmb_FloorCode: TComboBox;
    cmb_AreaCode: TComboBox;
    AlarmTab: TTabSheet;
    Panel7: TPanel;
    GroupBox6: TGroupBox;
    lb_Building2: TLabel;
    lb_FloorCode2: TLabel;
    lb_AreaCode2: TLabel;
    cmb_BuildingCode1: TComboBox;
    cmb_FloorCode1: TComboBox;
    cmb_AreaCode1: TComboBox;
    sg_Alarm: TAdvStringGrid;
    FoodTab: TTabSheet;
    Panel11: TPanel;
    sg_Food: TAdvStringGrid;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cmb_BuildingCode2: TComboBox;
    cmb_FloorCode2: TComboBox;
    cmb_AreaCode2: TComboBox;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Splitter3: TSplitter;
    Panel4: TPanel;
    sg_Card: TAdvStringGrid;
    sg_GradeCard: TAdvStringGrid;
    btn_GradeInsert: TSpeedButton;
    btn_GradeDelete: TSpeedButton;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    lb_CompanyName: TLabel;
    lb_DepartName: TLabel;
    lb_PosiName: TLabel;
    lb_sabun: TLabel;
    lb_Name: TLabel;
    Label21: TLabel;
    cmb_Company: TComboBox;
    cmb_Depart: TComboBox;
    cmb_Posi: TComboBox;
    ed_EmpNo: TEdit;
    ed_EmpNM: TEdit;
    ed_CardNo: TEdit;
    btn_Close: TBitBtn;
    btn_Search: TBitBtn;
    ed_NodeNo: TEdit;
    ed_MCUID: TEdit;
    ed_ECUID: TEdit;
    ed_NO: TEdit;
    st_Name: TStaticText;
    Panel12: TPanel;
    cmb_Jijum: TComboBox;
    lb_JijumName: TLabel;
    Panel14: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    btn_Excel: TSpeedButton;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    pan_gauge: TPanel;
    Label2: TLabel;
    Gauge1: TGauge;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cmb_BuildingCodeChange(Sender: TObject);
    procedure cmb_BuildingCode1Change(Sender: TObject);
    procedure cmb_BuildingCode2Change(Sender: TObject);
    procedure cmb_FloorCodeChange(Sender: TObject);
    procedure cmb_FloorCode1Change(Sender: TObject);
    procedure cmb_FloorCode2Change(Sender: TObject);
    procedure cmb_AreaCodeChange(Sender: TObject);
    procedure cmb_AreaCode1Change(Sender: TObject);
    procedure cmb_AreaCode2Change(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure sg_DoorClick(Sender: TObject);
    procedure cmb_DepartChange(Sender: TObject);
    procedure cmb_PosiChange(Sender: TObject);
    procedure sg_DoorCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure btn_GradeInsertClick(Sender: TObject);
    procedure sg_CardCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure btn_GradeDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure ed_EmpNoKeyPress(Sender: TObject; var Key: Char);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    DepartCodeList : TStringList;
    PosiCodeList : TStringList;
    DepartCodeList1 : TStringList;
    PosiCodeList1 : TStringList;
    BuildingCodeList : TStringList;
    FloorCodeList : TStringList;
    AreaCodeList : TStringList;
    CheckCount : integer;
    L_bDeviceGradeFail : Boolean;
    { Private declarations }
    procedure LoadBuildingCode(cmb_Box:TComboBox);
    procedure LoadFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
    procedure LoadAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
    procedure DoorCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg:TAdvStringGrid);
    procedure AlarmCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg:TAdvStringGrid);
    procedure FoodCodeSearch(aBuildingCode,aFloorCode,aAreaCode:string;sg:TAdvStringGrid);
    procedure PersonSearch;
    procedure DevicePersonSearch;
    procedure GridInit(sg:TAdvStringGrid;aCol:integer);
    procedure GetDepartCodeList;
    procedure DoorGradeSearch;
    procedure AlarmGradeSearch;
    procedure FoodGradeSearch;
    procedure AdvStrinGridSetAllCheck(Sender: TObject;bchkState:Boolean);
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
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
  public
    { Public declarations }
  end;

var
  fmMDIDeviceGrade: TfmMDIDeviceGrade;

implementation

uses
  uDataModule1,
  uLomosUtil,
  uCompanyCodeLoad,
  uMssql,
  uPostGreSql,
  uMDBSql, uFireBird, udmAdoQuery;

{$R *.dfm}

procedure TfmMDIDeviceGrade.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMDIDeviceGrade.FormCreate(Sender: TObject);
begin
    CompanyCodeList := TStringList.Create;
    JijumCodeList := TStringList.Create;
    DepartCodeList := TStringList.Create;
    PosiCodeList := TStringList.Create;
    DepartCodeList1 := TStringList.Create;
    PosiCodeList1 := TStringList.Create;
    BuildingCodeList := TStringList.Create;
    FloorCodeList := TStringList.Create;
    AreaCodeList := TStringList.Create;
    GridInit(sg_Door,1);
    GridInit(sg_Alarm,1);
    GridInit(sg_Food,1);

    CheckCount := 0;
    L_bDeviceGradeFail := False;
end;

procedure TfmMDIDeviceGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    CompanyCodeList.Free;
    JijumCodeList.Free;
    DepartCodeList.Free;
    PosiCodeList.Free;
    DepartCodeList1.Free;
    PosiCodeList1.Free;
    BuildingCodeList.Free;
    FloorCodeList.Free;
    AreaCodeList.Free;

    Action := caFree;

end;


procedure TfmMDIDeviceGrade.cmb_CompanyChange(Sender: TObject);
begin
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);
  btn_SearchClick(sender);
end;

procedure TfmMDIDeviceGrade.LoadAreaCode(aBuildingCode, aFloorCode: string;
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

  cmb_Box.Items.Add('전체');
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
  end;
end;

procedure TfmMDIDeviceGrade.LoadBuildingCode(cmb_Box: TComboBox);
var
  stSql : string;
begin
  cmb_Box.Clear;
  BuildingCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';
  stSql := stSql + ' Order by LO_DONGCODE ';

  cmb_Box.Items.Add('전체');
  BuildingCodeList.Add('');
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
end;

procedure TfmMDIDeviceGrade.LoadFloorCode(aBuildingCode: string;
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

  cmb_Box.Items.Add('전체');
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
  end;
end;

procedure TfmMDIDeviceGrade.PageControl1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if PageControl1.ActivePage = DoorTab then
  begin
    //LoadBuildingCode(cmb_BuildingCode);
    //if cmb_BuildingCode.ItemIndex > 0 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
    //LoadFloorCode(stBuildingCode,cmb_FloorCode);
    //if cmb_FloorCode.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
    //LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);
    //if cmb_AreaCode.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
    DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
  end else
  if PageControl1.ActivePage = AlarmTab then
  begin
    //LoadBuildingCode(cmb_BuildingCode1);
    //if cmb_BuildingCode1.ItemIndex > 0 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
    //LoadFloorCode(stBuildingCode,cmb_FloorCode1);
    //if cmb_FloorCode1.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
    //LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
    //if cmb_AreaCode1.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
    AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
  end else
  if PageControl1.ActivePage.Name = 'FoodTab' then
  begin
    cmb_BuildingCode2.ItemIndex := 0;
    cmb_BuildingCode2Change(sender);
  end;

end;

procedure TfmMDIDeviceGrade.cmb_BuildingCodeChange(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode.itemIndex > -1 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
  LoadFloorCode(stBuildingCode,cmb_FloorCode);
  if cmb_FloorCode.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);
  if cmb_AreaCode.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
end;

procedure TfmMDIDeviceGrade.cmb_BuildingCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode1.itemIndex > -1 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
  LoadFloorCode(stBuildingCode,cmb_FloorCode1);
  if cmb_FloorCode1.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  if cmb_AreaCode1.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
end;

procedure TfmMDIDeviceGrade.cmb_BuildingCode2Change(Sender: TObject);
var
  stBuildingCode : string;
begin
  stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
  LoadFloorCode(stBuildingCode,cmb_FloorCode2);
  LoadAreaCode(stBuildingCode,'000',cmb_AreaCode2);
  FoodCodeSearch(stBuildingCode,'000','000',sg_Food);
end;

procedure TfmMDIDeviceGrade.cmb_FloorCodeChange(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode.itemIndex > -1 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
  if cmb_FloorCode.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);
  if cmb_AreaCode.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
end;

procedure TfmMDIDeviceGrade.cmb_FloorCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode1.itemIndex > -1 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
  if cmb_FloorCode1.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  if cmb_AreaCode1.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
end;

procedure TfmMDIDeviceGrade.cmb_FloorCode2Change(Sender: TObject);
var
  stBuildingCode,stFloorCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
  stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  FoodCodeSearch(stBuildingCode,stFloorCode,'000',sg_Food);
end;

procedure TfmMDIDeviceGrade.DoorCodeSearch(aBuildingCode, aFloorCode,
  aAreaCode: string; sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  sg.RowCount := 2;
  CheckCount := 0;
  sg.RemoveCheckBox(0,1);
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
  stSql := ' select a.DO_DOORNONAME,a.DO_DOORNO,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.DO_VIEWSEQ ' ;
  stSql := stSql + ' from TB_DOOR a ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if (aBuildingCode <> '') and (aBuildingCode <> '000') then
    stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
  if (aFloorCode <> '') and (aFloorCode <> '000') then
    stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
  if (aAreaCode <> '') and (aAreaCode <> '000') then
    stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  stSql := stSql + ' order by a.DO_VIEWSEQ ';
  
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
        cells[1,nRow] := FindField('AC_NODENO').AsString;
        cells[2,nRow] := FindField('AC_ECUID').AsString;
        cells[3,nRow] := FindField('DO_DOORNO').AsString;
        cells[4,nRow] := FindField('DO_DOORNO').AsString;
        AddCheckBox(0,nRow,False,False);

        nRow := nRow + 1;
        Next;
      end;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.cmb_AreaCodeChange(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode.itemIndex > -1 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
  if cmb_FloorCode.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  if cmb_AreaCode.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);
end;

procedure TfmMDIDeviceGrade.AlarmCodeSearch(aBuildingCode, aFloorCode,
  aAreaCode: string; sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
  stArmAreaNo : string;
begin
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  CheckCount := 0;
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
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
        cells[1,nRow] := FindField('AC_NODENO').AsString;
        cells[2,nRow] := FindField('AC_ECUID').AsString;
        cells[3,nRow] := stArmAreaNo;
        cells[4,nRow] := FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString + stArmAreaNo;
        AddCheckBox(0,nRow,False,False);
        
        nRow := nRow + 1;
        Next;
      end;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.FoodCodeSearch(aBuildingCode, aFloorCode,
  aAreaCode: string; sg: TAdvStringGrid);
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  sg.RowCount := 2;
  sg.RemoveCheckBox(0,1);
  CheckCount := 0;
  sg.SetCheckBoxState(0,0,False);
  for i:= 0 to sg.ColCount - 1 do
  begin
    sg.Cells[i,1] := '';
  end;
  stSql := 'select a.FO_NAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.FO_DOORNO ';
  stSql := stSql + ' from TB_FOOD a ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if (aBuildingCode <> '') and (aBuildingCode <> '000') then
    stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
  if (aFloorCode <> '') and (aFloorCode <> '000') then
    stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
  if (aAreaCode <> '') and (aAreaCode <> '000') then
    stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';

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

procedure TfmMDIDeviceGrade.cmb_AreaCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode1.itemIndex > -1 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.itemIndex];
  if cmb_FloorCode1.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  if cmb_AreaCode1.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];
  AlarmCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Alarm);
end;

procedure TfmMDIDeviceGrade.cmb_AreaCode2Change(Sender: TObject);
var
  stBuildingCode,stFloorCode,stAreaCode:string;
begin
  stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode2.itemIndex];
  stFloorCode := FloorCodeList.Strings[cmb_FloorCode2.itemIndex];
  stAreaCode := AreaCodeList.Strings[cmb_AreaCode2.itemIndex];
  FoodCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Food);
end;

procedure TfmMDIDeviceGrade.btn_SearchClick(Sender: TObject);
begin
  PersonSearch;
  DevicePersonSearch;
end;

procedure TfmMDIDeviceGrade.DevicePersonSearch;
begin
  if PageControl1.ActivePage.Name = 'DoorTab' then DoorGradeSearch
  else if PageControl1.ActivePage.Name = 'AlarmTab' then AlarmGradeSearch
  else if PageControl1.ActivePage.Name = 'FoodTab' then FoodGradeSearch;
end;

procedure TfmMDIDeviceGrade.PersonSearch;
var
  stSql : string;
  nRow : integer;
  i : integer;
begin
  GridInit(sg_Card,7);

  if DBTYPE = 'MSSQL' then stSql := MSSQL.SelectTB_CARDAdminJoinBase
  else if DBTYPE = 'PG' then stSql := PostGreSql.SelectTB_CARDAdminJoinBase
  else if DBTYPE = 'MDB' then stSql := MDBSql.SelectTB_CARDAdminJoinBase
  else if DBTYPE = 'FB' then stSql := FireBird.SelectTB_CARDAdminJoinBase
  else Exit;

  if Length(ed_CardNo.Text) > 0 then
    stSql := stSql + ' AND a.CA_CARDNO = ''' + Trim(ed_CardNo.Text)  + ''' ' ;

  if (Not IsMaster) and (CompanyGrade <> '0') then
  begin
    if CompanyGrade = '1' then
    begin
      if cmb_Company.ItemIndex < 1 then
      begin
        if CompanyCodeList.Count < 2 then
        begin
          showmessage('관리할수 있는 회사 권한이 없습니다.');
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
        showmessage('관리자 소속 회사코드가 이상합니다.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex < 1 then
      begin
        if JijumCodeList.Count < 2 then
        begin
          showmessage('관리할수 있는 지점 권한이 없습니다.');
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
        showmessage('관리자 소속 회사코드가 이상합니다.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex < 1 then
      begin
        showmessage('관리자 소속 지점코드가 이상합니다.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
      if cmb_Depart.ItemIndex < 1 then
      begin
        if DepartCodeList.Count < 2 then
        begin
          showmessage('관리할수 있는 부서 권한이 없습니다.');
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
  if Trim(ed_EmpNo.Text) <> '' then
    stSql := stSql + ' AND b.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
  if Trim(ed_EmpNM.Text) <> '' then
    stSql := stSql + ' AND b.EM_NAME LIKE ''' + Trim(ed_EmpNM.Text)  + '%'' ';
  stSql := stSql + ' order by b.CO_COMPANYCODE,b.CO_JIJUMCODE,b.CO_DEPARTCODE,b.EM_CODE';

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
        cells[4,nRow] := FindField('CO_JIJUMNAME').AsString;
        cells[5,nRow] := FindField('CO_DEPARTNAME').AsString;
        cells[6,nRow] := FindField('PO_NAME').AsString;
        cells[7,nRow] := FindField('CO_COMPANYCODE').AsString;
        cells[8,nRow] := FindField('CO_DEPARTCODE').AsString;
        cells[9,nRow] := FindField('PO_POSICODE').AsString;
        AddCheckBox(0,nRow,False,False);

      end;
      nRow := nRow + 1;
      Next;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.GridInit(sg: TAdvStringGrid; aCol: integer);
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

procedure TfmMDIDeviceGrade.GetDepartCodeList;
var
  stSql : String;
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
      DepartCodeList.Add(FindField('CO_COMPANYCODE').AsString + FindField('CO_DEPARTCODE').AsString);
      Next;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.AlarmGradeSearch;
var
  stSql : string;
  nRow : integer;
  i : integer;
  stAC_NODENO,stAC_ECUID,stAlarmAreaNo : string;
begin
  Panel9.Caption := '선택된기기권한조회';

  GridInit(sg_GradeCard,9);
  stAC_NODENO := ed_NodeNo.Text;
  stAC_ECUID := ed_ECUID.Text;
  stAlarmAreaNo := ed_NO.Text;
  if (stAC_NODENO = '')
    Or (stAC_ECUID = '')  then Exit;

  {if DBTYPE = 'MSSQL' then stSql := MSSQL.SelectTB_CARDFromAlarmGradeJoinBase(stAC_NODENO,stAC_ECUID)
  else if DBTYPE = 'PG' then stSql := PostGreSql.SelectTB_CARDFromAlarmGradeJoinBase(stAC_NODENO,stAC_ECUID)
  else if DBType = 'MDB' then stSql := MDBSql.SelectTB_CARDFromAlarmGradeJoinBase(stAC_NODENO,stAC_ECUID)
  else if DBType = 'FB' then stSql := FireBird.SelectTB_CARDFromAlarmGradeJoinBase(stAC_NODENO,stAC_ECUID)
  else Exit; }
  stSql := 'select a.CA_CARDNO,a.CA_CARDTYPE,a.CA_LASTUSE,b.CO_COMPANYCODE,b.CO_JIJUMCODE,b.CO_DEPARTCODE,b.PO_POSICODE,b.EM_NAME,b.EM_CODE,';
  stSql := stSql + ' c.CO_NAME as CO_COMPANYNAME,d.CO_NAME as CO_JIJUMNAME,e.CO_NAME as CO_DEPARTNAME, ';
  stSql := stSql + ' f.PO_NAME,g.DE_RCVACK ';
  stSql := stSql + ' from ';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' TB_CARD a  ';
  stSql := stSql + ' Left JOIN TB_EMPLOYEE b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.EM_CODE = b.EM_CODE ';
  stSql := stSql + ' AND a.CO_COMPANYCODE = b.CO_COMPANYCODE )';
  stSql := stSql + ' )';
  stSql := stSql + ' Left JOIN ( select * from TB_COMPANY where CO_GUBUN = ''1'') c ';
  stSql := stSql + ' ON (b.CO_COMPANYCODE = c.CO_COMPANYCODE)';
  stSql := stSql + ' AND (b.GROUP_CODE = c.GROUP_CODE)';
  stSql := stSql + ' )';
  stSql := stSql + ' Left JOIN ( select * from TB_COMPANY where CO_GUBUN = ''2'') AS d';
  stSql := stSql + ' ON (b.CO_JIJUMCODE = d.CO_JIJUMCODE)';
  stSql := stSql + ' AND (b.CO_COMPANYCODE = d.CO_COMPANYCODE)';
  stSql := stSql + ' AND (b.GROUP_CODE = d.GROUP_CODE)';
  stSql := stSql + ' )';
  stSql := stSql + ' Left JOIN ( select * from TB_COMPANY where CO_GUBUN = ''3'') AS e ';
  stSql := stSql + ' ON (b.CO_DEPARTCODE = e.CO_DEPARTCODE)';
  stSql := stSql + ' AND (b.CO_JIJUMCODE = e.CO_JIJUMCODE)';
  stSql := stSql + ' AND (b.CO_COMPANYCODE = e.CO_COMPANYCODE)';
  stSql := stSql + ' AND (b.GROUP_CODE = e.GROUP_CODE)';
  stSql := stSql + ' )';
  stSql := stSql + ' Left JOIN TB_POSI f';
  stSql := stSql + ' ON (b.PO_POSICODE = f.PO_POSICODE)';
  stSql := stSql + ' AND (b.CO_COMPANYCODE = f.CO_COMPANYCODE)';
  stSql := stSql + ' AND (b.GROUP_CODE = f.GROUP_CODE)';
  stSql := stSql + ' )';
  stSql := stSql + ' INNER JOIN (select * from TB_DEVICECARDNO ';
  stSql := stsql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + stAC_NODENO ;
  stSql := stSql + ' AND AC_ECUID = ''' + stAC_ECUID + ''' ';
  stSql := stSql + ' AND DE_ALARM' + stAlarmAreaNo + ' = ''Y'') G ';
  stSql := stSql + ' ON ( a.GROUP_CODE = G.GROUP_CODE ';
  stSql := stSql + ' AND a.CA_CARDNO = G.CA_CARDNO ) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.CA_CARDTYPE = ''1'' ';

  if Length(ed_CardNo.Text) > 0 then
    stSql := stSql + ' AND a.CA_CARDNO = ''' + Trim(ed_CardNo.Text)  + ''' ' ;

  if (Not IsMaster) and (CompanyGrade <> '0') then
  begin
    if CompanyGrade = '1' then
    begin
      if cmb_Company.ItemIndex < 1 then
      begin
        if CompanyCodeList.Count < 2 then
        begin
          showmessage('관리할수 있는 회사 권한이 없습니다.');
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
        showmessage('관리자 소속 회사코드가 이상합니다.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex < 1 then
      begin
        if JijumCodeList.Count < 2 then
        begin
          showmessage('관리할수 있는 지점 권한이 없습니다.');
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
        showmessage('관리자 소속 회사코드가 이상합니다.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex < 1 then
      begin
        showmessage('관리자 소속 지점코드가 이상합니다.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
      if cmb_Depart.ItemIndex < 1 then
      begin
        if DepartCodeList.Count < 2 then
        begin
          showmessage('관리할수 있는 부서 권한이 없습니다.');
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
  if Trim(ed_EmpNo.Text) <> '' then
    stSql := stSql + ' AND b.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
  if Trim(ed_EmpNM.Text) <> '' then
    stSql := stSql + ' AND b.EM_NAME LIKE ''' + Trim(ed_EmpNM.Text)  + '%'' ';
  stSql := stSql + ' order by b.CO_COMPANYCODE,b.CO_JIJUMCODE,b.CO_DEPARTCODE,b.EM_CODE';
  //stSql := stSql + ' order by a.CA_CARDNO ';
{
  if Length(ed_CardNo.Text) = 10 then
    stSql := stSql + ' AND a.CA_CARDNO = ''' + Trim(ed_CardNo.Text)  + ''' '
  else
  begin
    if (Not IsMaster) and (CompanyGrade <> '0') then
    begin
      if CompanyGrade = '1' then
      begin
        if cmb_Company.ItemIndex < 1 then
        begin
          if CompanyCodeList.Count < 2 then
          begin
            showmessage('관리할수 있는 회사 권한이 없습니다.');
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
          showmessage('관리자 소속 회사코드가 이상합니다.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex < 1 then
        begin
          if JijumCodeList.Count < 2 then
          begin
            showmessage('관리할수 있는 지점 권한이 없습니다.');
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
          showmessage('관리자 소속 회사코드가 이상합니다.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex < 1 then
        begin
          showmessage('관리자 소속 지점코드가 이상합니다.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
        if cmb_Depart.ItemIndex < 1 then
        begin
          if DepartCodeList.Count < 2 then
          begin
            showmessage('관리할수 있는 부서 권한이 없습니다.');
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
    if Trim(ed_EmpNo.Text) <> '' then
      stSql := stSql + ' AND b.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
    if Trim(ed_EmpNM.Text) <> '' then
      stSql := stSql + ' AND b.EM_NAME LIKE ''' + Trim(ed_EmpNM.Text)  + '%'' ';
  end;

}

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
    Panel9.Caption := '선택된기기권한조회(' + inttostr(RecordCount) + ')';
    sg_GradeCard.RowCount := RecordCount + 1;
    nRow := 1;
    First;
    while Not Eof do
    begin
      with sg_GradeCard do
      begin
        cells[0,nRow] := FindField('CO_COMPANYNAME').AsString;
        cells[1,nRow] := FindField('EM_CODE').AsString;
        cells[2,nRow] := FindField('EM_NAME').AsString;
        cells[3,nRow] := FindField('CA_CARDNO').AsString;
        cells[4,nRow] := FindField('CO_JIJUMNAME').AsString;
        cells[5,nRow] := FindField('CO_DEPARTNAME').AsString;
        cells[6,nRow] := FindField('PO_NAME').AsString;
        cells[7,nRow] := FindField('DE_RCVACK').AsString;
        cells[8,nRow] := FindField('CA_LASTUSE').AsString;
        cells[9,nRow] := FindField('CO_COMPANYCODE').AsString;
        cells[10,nRow] := FindField('CO_JIJUMCODE').AsString;
        cells[11,nRow] := FindField('CO_DEPARTCODE').AsString;
        cells[12,nRow] := FindField('PO_POSICODE').AsString;
        AddCheckBox(0,nRow,False,False);

      end;
      nRow := nRow + 1;
      Next;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.DoorGradeSearch;
var
  stSql : string;
  nRow : integer;
  i : integer;
  stAC_NODENO,stAC_ECUID,stDoorNo : string;
begin
  Panel9.Caption := '선택된기기권한조회';
  GridInit(sg_GradeCard,9);
  stAC_NODENO := ed_NodeNo.Text;
  stAC_ECUID := ed_ECUID.Text;
  stDoorNo := ed_NO.Text;
  if (stAC_NODENO = '')
    Or (stAC_ECUID = '')  then Exit;

  if DBTYPE = 'MSSQL' then stSql := MSSQL.SelectTB_CARDFromDoorGradeJoinBase(stAC_NODENO,stAC_ECUID,stDoorNo)
  else if DBTYPE = 'PG' then stSql := PostGreSql.SelectTB_CARDFromDoorGradeJoinBase(stAC_NODENO,stAC_ECUID,stDoorNo)
  else if DBType = 'MDB' then stSql := MDBSql.SelectTB_CARDFromDoorGradeJoinBase(stAC_NODENO,stAC_ECUID,stDoorNo)
  else if DBType = 'FB' then stSql := FireBird.SelectTB_CARDFromDoorGradeJoinBase(stAC_NODENO,stAC_ECUID,stDoorNo)
  else Exit;


  if Length(ed_CardNo.Text) > 0 then
    stSql := stSql + ' AND a.CA_CARDNO = ''' + Trim(ed_CardNo.Text)  + ''' ' ;
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
  if cmb_Posi.ItemIndex > 0 then
    stSql := stSql + ' AND b.PO_POSICODE = ''' + copy(PosiCodeList.Strings[cmb_Posi.ItemIndex],4,3) + ''' ';
  if Trim(ed_EmpNo.Text) <> '' then
    stSql := stSql + ' AND b.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
  if Trim(ed_EmpNM.Text) <> '' then
    stSql := stSql + ' AND b.EM_NAME LIKE ''' + Trim(ed_EmpNM.Text)  + '%'' ';
  stSql := stSql + ' order by b.CO_COMPANYCODE,b.CO_JIJUMCODE,b.CO_DEPARTCODE,b.EM_CODE';


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
    Panel9.Caption := '선택된기기권한조회(' + inttostr(RecordCount) + ')';
    sg_GradeCard.RowCount := RecordCount + 1;
    nRow := 1;
    First;
    while Not Eof do
    begin
      with sg_GradeCard do
      begin
        cells[0,nRow] := FindField('CO_COMPANYNAME').AsString;
        cells[1,nRow] := FindField('EM_CODE').AsString;
        cells[2,nRow] := FindField('EM_NAME').AsString;
        cells[3,nRow] := FindField('CA_CARDNO').AsString;
        cells[4,nRow] := FindField('CO_JIJUMNAME').AsString;
        cells[5,nRow] := FindField('CO_DEPARTNAME').AsString;
        cells[6,nRow] := FindField('PO_NAME').AsString;
        cells[7,nRow] := FindField('DE_RCVACK').AsString;
        cells[8,nRow] := FindField('CA_LASTUSE').AsString;
        cells[9,nRow] := FindField('CO_COMPANYCODE').AsString;
        cells[10,nRow] := FindField('CO_JIJUMCODE').AsString;
        cells[11,nRow] := FindField('CO_DEPARTCODE').AsString;
        cells[12,nRow] := FindField('PO_POSICODE').AsString;
        AddCheckBox(0,nRow,False,False);

      end;
      nRow := nRow + 1;
      Next;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.FoodGradeSearch;
var
  stSql : string;
  nRow : integer;
  i : integer;
  stAC_NODENO,stAC_ECUID,stDoorNo : string;
begin
  GridInit(sg_GradeCard,5);
  stAC_NODENO := ed_NodeNo.Text;
  stAC_ECUID := ed_ECUID.Text;
  stDoorNo := ed_NO.Text;
  if (stAC_NODENO = '')
    Or (stAC_ECUID = '')  then Exit;

  stSql := 'select a.CA_CARDNO,a.CA_CARDTYPE,b.CO_COMPANYCODE,b.EM_NAME,b.EM_CODE,';
  stSql := stSql + ' c.CO_NAME as CO_COMPANYNAME,d.CO_NAME as CO_JIJUMNAME,b.CO_DEPARTCODE,e.CO_NAME as CO_DEPARTNAME, ';
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
  stSql := stSql + ' INNER JOIN TB_DEVICECARDNO G ';
  stSql := stSql + ' ON ( a.GROUP_CODE = G.GROUP_CODE ';
  stSql := stSql + ' AND a.CA_CARDNO = G.CA_CARDNO ';
  stSql := stSql + ' AND G.DE_USEACCESS = ''Y'' ';
  stSql := stSql + ' AND G.AC_NODENO = ' + stAC_NODENO ;
  stSql := stSql + ' AND G.AC_ECUID = ''' + stAC_ECUID + ''' ';
  if stDoorNo = '1' then stSql := stSql + ' AND G.DE_DOOR1 = ''Y'' '
  else stSql := stSql + ' AND G.DE_DOOR2 = ''Y'' ';
  stSql := stSql + ')';

  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.CA_CARDTYPE = ''1'' ';

  if Length(ed_CardNo.Text) = 10 then
    stSql := stSql + ' AND a.CA_CARDNO = ''' + Trim(ed_CardNo.Text)  + ''' '
  else
  begin
    if (Not IsMaster) and (CompanyGrade <> '0') then
    begin
      if CompanyGrade = '1' then
      begin
        if cmb_Company.ItemIndex < 1 then
        begin
          if CompanyCodeList.Count < 2 then
          begin
            showmessage('관리할수 있는 회사 권한이 없습니다.');
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
          showmessage('관리자 소속 회사코드가 이상합니다.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex < 1 then
        begin
          if JijumCodeList.Count < 2 then
          begin
            showmessage('관리할수 있는 지점 권한이 없습니다.');
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
          showmessage('관리자 소속 회사코드가 이상합니다.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
        if cmb_Jijum.ItemIndex < 1 then
        begin
          showmessage('관리자 소속 지점코드가 이상합니다.');
          Exit;
        end;
        stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
        if cmb_Depart.ItemIndex < 1 then
        begin
          if DepartCodeList.Count < 2 then
          begin
            showmessage('관리할수 있는 부서 권한이 없습니다.');
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
    if Trim(ed_EmpNo.Text) <> '' then
      stSql := stSql + ' AND b.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
    if Trim(ed_EmpNM.Text) <> '' then
      stSql := stSql + ' AND b.EM_NAME LIKE ''' + Trim(ed_EmpNM.Text)  + '%'' ';
  end;

  stSql := stSql + ' order by a.CA_CARDNO ';


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
    sg_GradeCard.RowCount := RecordCount + 1;
    nRow := 1;
    First;
    while Not Eof do
    begin
      with sg_GradeCard do
      begin
        cells[0,nRow] := FindField('CO_COMPANYNAME').AsString;
        cells[1,nRow] := FindField('EM_CODE').AsString;
        cells[2,nRow] := FindField('EM_NAME').AsString;
        cells[3,nRow] := FindField('CA_CARDNO').AsString;
        cells[4,nRow] := FindField('CO_JIJUMNAME').AsString;
        cells[5,nRow] := FindField('CO_DEPARTNAME').AsString;
        cells[6,nRow] := FindField('PO_NAME').AsString;
        cells[7,nRow] := FindField('CO_COMPANYCODE').AsString;
        cells[8,nRow] := FindField('CO_DEPARTCODE').AsString;
        cells[9,nRow] := FindField('PO_POSICODE').AsString;
        AddCheckBox(0,nRow,False,False);
      end;
      nRow := nRow + 1;
      Next;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.sg_DoorClick(Sender: TObject);
var
  bchkState : Boolean;
begin
  with (Sender as TAdvStringGrid) do
  begin
    GetCheckBoxState(0,Row, bchkState);
    if bchkState then
    begin
      st_Name.Caption := Cells[0,Row];
      ed_NodeNo.Text := Cells[1,Row];
      ed_ECUID.Text := Cells[2,Row];
      ed_NO.Text := Cells[3,Row];
    end else
    begin
      st_Name.Caption := '';
      ed_NodeNo.Text := '';
      ed_ECUID.Text := '';
      ed_NO.Text := '';
    end;
  end;
  DevicePersonSearch;

end;

procedure TfmMDIDeviceGrade.cmb_DepartChange(Sender: TObject);
begin
  btn_SearchClick(sender);
end;

procedure TfmMDIDeviceGrade.cmb_PosiChange(Sender: TObject);
begin
  btn_SearchClick(sender);
end;

procedure TfmMDIDeviceGrade.sg_DoorCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if ARow = 0 then //전체선택 또는 해제
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

procedure TfmMDIDeviceGrade.AdvStrinGridSetAllCheck(Sender: TObject;
  bchkState: Boolean);
var
  i : integer;
begin
    for i:= 1 to (Sender as TAdvStringGrid).RowCount - 1  do
    begin
      (Sender as TAdvStringGrid).SetCheckBoxState(0,i,bchkState);
    end;

end;

procedure TfmMDIDeviceGrade.btn_GradeInsertClick(Sender: TObject);
begin
  if CheckCount < 1 then
  begin
    showmessage('기기를 선택하여 주세요.');
    Exit;
  end;
  if PageControl1.ActivePage.Name = 'DoorTab' then
  begin
    PageControl1.Enabled := False;
    InsertDoorGrade;
    PageControl1.Enabled := True;
  end else if PageControl1.ActivePage.Name = 'AlarmTab' then
  begin
    PageControl1.Enabled := False;
    InsertAlarmGrade;
    PageControl1.Enabled := True;
  end else if PageControl1.ActivePage.Name = 'FoodTab' then
  begin
    PageControl1.Enabled := False;
    InsertFoodGrade;
    PageControl1.Enabled := True;
  end;
  DevicePersonSearch;
  if L_bDeviceGradeFail then
  begin
    L_bDeviceGradeFail := False;
    showmessage('카드 권한이 ' + inttostr(G_nCardMaxCount) + '건이 초과하여 권한 등록 되지 않은 기기가 존재 합니다.');
  end;
end;

procedure TfmMDIDeviceGrade.InsertAlarmGrade;
var
  UserLoop,AlarmLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stArmAreaNO : string;
  stAlarmNo : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
begin
  i:= 1;
  for AlarmLoop := 1 to sg_Alarm.RowCount - 1 do   //체크되어 있는 사용자 모두를 인서트 시킴
  begin
    sg_Alarm.GetCheckBoxState(0,AlarmLoop, bchkState);
    if bchkState then  //체크 되어 있으면 권한 등록
    begin
      stNodeNo:= sg_Alarm.Cells[1,AlarmLoop];
      stECUID:= sg_Alarm.Cells[2,AlarmLoop];
      if isdigit(sg_Alarm.Cells[3,AlarmLoop]) then
      begin
        stArmAreaNO := inttostr(strtoint(sg_Alarm.Cells[3,AlarmLoop]));
      end else stArmAreaNO := '0';
      for UserLoop := 1 to sg_Card.RowCount - 1 do
      begin
        sg_Card.GetCheckBoxState(0,UserLoop, bchkState);
        if bChkState then //경비구역이 체크 되어 있으면 해당 경비구역 Insert;
        begin
          stCardNo := sg_Card.Cells[3,UserLoop];
          if dmAdoQuery.CheckTB_DEVICECARDNO_Count(stNodeNo,stECUID) < G_nCardMaxCount then
          begin
            bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
            if Not bResult then
              dmAdoQuery.InsertTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,'L','Y')
            else dmAdoQuery.UpdateTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,'L','Y');
            UpdateTB_CARDDOORGRADE(stCardNo,'Y');
            DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,ALARMTYPE,'0',stCardNo , '경계권한등록');
          end else L_bDeviceGradeFail := True;
        end;
      end;
      StatusBar1.Panels[0].Text := inttostr(i) + '/' + inttostr(CheckCount);
      inc(i);
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.InsertDoorGrade;
var
  UserLoop,DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
begin
  i:=1;
  for DoorLoop := 1 to sg_Door.RowCount - 1 do   //체크되어 있는 기기 모두를 인서트 시킴
  begin
    sg_Door.GetCheckBoxState(0,DoorLoop, bchkState);
    if bchkState then  //체크 되어 있으면 권한 등록
    begin
      stNodeNo:= sg_Door.Cells[1,DoorLoop];
      stECUID:= sg_Door.Cells[2,DoorLoop];
      stDoorNO := sg_Door.Cells[3,DoorLoop];
      for UserLoop := 1 to sg_Card.RowCount - 1 do
      begin
        sg_Card.GetCheckBoxState(0,UserLoop, bchkState);
        if bChkState then //체크 되어 있으면 해당 출입구역 Insert;
        begin
          stCardNo := sg_Card.Cells[3,UserLoop];
          if dmAdoQuery.CheckTB_DEVICECARDNO_Count(stNodeNo,stECUID) < G_nCardMaxCount then
          begin
            bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
            if Not bResult then
               InsertTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0','L','Y','DOOR')
            else UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0','L','Y','DOOR');
            UpdateTB_CARDDOORGRADE(stCardNo,'Y');
            DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,DOORTYPE,stDoorNO,stCardNo , '(D)출입권한등록');
          end else L_bDeviceGradeFail := True;
        end;
      end;
      StatusBar1.Panels[0].Text := inttostr(i) + '/' + inttostr(CheckCount);
      inc(i);
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfmMDIDeviceGrade.InsertFoodGrade;
var
  UserLoop,FoodLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNo : string;
  stCardNo : string;
  bResult : Boolean;
  i : integer;
begin
  i:=1;
  for FoodLoop := 1 to sg_Food.RowCount - 1 do   //체크되어 있는 사용자 모두를 인서트 시킴
  begin
    sg_Food.GetCheckBoxState(0,FoodLoop, bchkState);
    if bchkState then  //체크 되어 있으면 권한 등록
    begin
      stNodeNo:= sg_Food.Cells[1,FoodLoop];
      stECUID:= sg_Food.Cells[3,FoodLoop];
      stDoorNo:= sg_Food.Cells[4,FoodLoop];
      for UserLoop := 1 to sg_Card.RowCount - 1 do
      begin
        sg_Card.GetCheckBoxState(0,UserLoop, bchkState);
        if bChkState then // 체크 되어 있으면  Insert;
        begin
          stCardNo := sg_Card.Cells[3,UserLoop];
          bResult := CheckTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID);
          if Not bResult then
             InsertTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNo,'0','L','Y','DOOR')
          else UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNo,'0','L','Y','DOOR');
        end;
      end;
      StatusBar1.Panels[0].Text := inttostr(i) + '/' + inttostr(sg_Card.RowCount - 1);
      inc(i);
      Application.ProcessMessages;
    end;
  end;
end;

function TfmMDIDeviceGrade.CheckTB_DEVICECARDNO(aCardNo, aNodeNo,
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

function TfmMDIDeviceGrade.InsertTB_DEVICECARDNO(aCardNo, aNodeNo,
  aECUID, aDoorNO, aTimCode, aPermit, aValue, aGubun: string): Boolean;
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
    stSql := stSql + 'DE_DOOR' + aDoorNO + ',';
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

function TfmMDIDeviceGrade.UpdateTB_DEVICECARDNO(aCardNo, aNodeNo,
  aECUID, aDoorNO, aTimCode, aPermit, aValue, aGubun: string): Boolean;
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

procedure TfmMDIDeviceGrade.sg_CardCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if ARow = 0 then //전체선택 또는 해제
  begin
    AdvStrinGridSetAllCheck(Sender,State);
  end;

end;

procedure TfmMDIDeviceGrade.btn_GradeDeleteClick(Sender: TObject);
var
  i : integer;
  bChkState : Boolean;
  stCompanyCode,stBuildingCode,stFloorCode,stAreaCode : string;
begin
  if CheckCount < 1 then
  begin
    showmessage('기기를 선택하여 주세요.');
    Exit;
  end;
  if CheckCount > 1 then
  begin
    showmessage('권한 삭제는 한 기기씩 됩니다. 하나만 선택하여 주세요.');
    Exit;
  end;

  if PageControl1.ActivePage.Name  = 'DoorTab' then
  begin
    PageControl1.Enabled := False;
    DeleteDoorGrade;
    PageControl1.Enabled := True;
  end else if PageControl1.ActivePage.Name  = 'AlarmTab' then
  begin
    PageControl1.Enabled := False;
    DeleteAlarmGrade;
    PageControl1.Enabled := True;
  end else if PageControl1.ActivePage.Name  = 'FoodTab' then
  begin
    PageControl1.Enabled := False;
    DeleteFoodGrade;
    PageControl1.Enabled := True;
  end;
  dmAdoQuery.NotGradePermitDelete;
  DevicePersonSearch;

end;

procedure TfmMDIDeviceGrade.DeleteAlarmGrade;
var
  UserLoop,DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID : string;
  stArmAreaNO : string;
  stCardNo : string;
  bResult : Boolean;
begin
    for UserLoop := 1 to sg_GradeCard.RowCount - 1 do
    begin
      sg_GradeCard.GetCheckBoxState(0,UserLoop, bchkState);
      if bChkState then //출입문코드가 체크 되어 있으면 해당 권한 삭제
      begin
        stNodeNo  := ed_NodeNo.Text;
        stECUID  := ed_ECUID.Text;
        stArmAreaNO := ed_No.Text;
        stCardNo := sg_GradeCard.Cells[3,UserLoop];
        dmAdoQuery.UpdateTB_DEVICECARDNOAlarmArea(stCardNo,stNodeNo,stECUID,stArmAreaNO,'L','N');
        DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,ALARMTYPE,stArmAreaNO,stCardNo,'(D)경계권한삭제');
      end;
    end;

end;

procedure TfmMDIDeviceGrade.DeleteDoorGrade;
var
  UserLoop,DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
begin
    for UserLoop := 1 to sg_GradeCard.RowCount - 1 do
    begin
      sg_GradeCard.GetCheckBoxState(0,UserLoop, bchkState);
      if bChkState then //출입문코드가 체크 되어 있으면 해당 권한 삭제
      begin
        stNodeNo  := ed_NodeNo.Text;
        stECUID  := ed_ECUID.Text;
        stDoorNo   := ed_NO.Text;
        stCardNo := sg_GradeCard.Cells[3,UserLoop];
        UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0','L','N','DOOR');
        DataModule1.TB_SYSTEMLOGInsert(stNodeNo,stECUID,DOORTYPE,stDoorNO,stCardNo,'(D)출입권한삭제');
      end;
    end;
end;

procedure TfmMDIDeviceGrade.DeleteFoodGrade;
var
  UserLoop,DoorLoop : integer;
  bchkState : Boolean;
  stNodeNo,stECUID,stDoorNO : string;
  stCardNo : string;
  bResult : Boolean;
begin
    for UserLoop := 1 to sg_GradeCard.RowCount - 1 do
    begin
      sg_GradeCard.GetCheckBoxState(0,UserLoop, bchkState);
      if bChkState then //출입문코드가 체크 되어 있으면 해당 권한 삭제
      begin
        stNodeNo  := ed_NodeNo.Text;
        stECUID  := ed_ECUID.Text;
        stDoorNo   := ed_NO.Text;
        stCardNo := sg_GradeCard.Cells[3,UserLoop];
        UpdateTB_DEVICECARDNO(stCardNo,stNodeNo,stECUID,stDoorNO,'0','L','N','DOOR');
      end;
    end;

end;

procedure TfmMDIDeviceGrade.FormActivate(Sender: TObject);
var
  nIndex : integer;
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';

  LoadCompanyCode(CompanyCodeList,cmb_Company);
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.itemIndex],JijumCodeList,cmb_Jijum);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.itemIndex],PosiCodeList,cmb_Posi);

  //LoadBuildingCode(cmb_BuildingCode);
  //if cmb_BuildingCode.ItemIndex > 0 then stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode.itemIndex];
  //LoadFloorCode(stBuildingCode,cmb_FloorCode);
  //if cmb_FloorCode.itemIndex > -1 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode.itemIndex];
  //LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode);
  //if cmb_AreaCode.itemIndex > -1 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode.itemIndex];

  //LoadBuildingCode(cmb_BuildingCode1);
  //LoadBuildingCode(cmb_BuildingCode2);

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
  Panel12.Caption := fmMDIDeviceGrade.Caption;
  
  PageControl1.ActivePage := DoorTab;
  DoorCodeSearch(stBuildingCode,stFloorCode,stAreaCode,sg_Door);

  btn_SearchClick(sender);

end;

procedure TfmMDIDeviceGrade.cmb_JijumChange(Sender: TObject);
begin
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  btn_SearchClick(nil);   
end;

procedure TfmMDIDeviceGrade.FormNameSet;
begin
  lb_CompanyName.Caption := FM002;
  lb_JijumName.Caption := FM012;
  lb_DepartName.Caption := FM022;
  lb_PosiName.Caption := FM032;
  lb_sabun.Caption := FM101;
  lb_Name.Caption := FM102;

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
    Cells[4,0] := FM012;
    Cells[5,0] := FM022;
    Cells[6,0] := FM032;

  end;
  with sg_GradeCard do
  begin
    Cells[0,0] := FM002;
    Cells[1,0] := FM101;
    Cells[2,0] := FM102;
    Cells[4,0] := FM012;
    Cells[5,0] := FM022;
    Cells[6,0] := FM032;

  end;

end;

function TfmMDIDeviceGrade.UpdateTB_CARDDOORGRADE(aCardNo,
  aDoorGrade: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Update TB_CARD set CA_DOORGRADE = ''' + aDoorGrade + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);

end;

procedure TfmMDIDeviceGrade.btn_ExcelClick(Sender: TObject);
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
  stPrintRefPath := ini_fun.ReadString('환경설정','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('기기별권한','참조파일','DeviceGrade.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('기기별권한','시작위치',6);
  ini_fun.Free;
}
  stTitle := st_Name.Caption;
  stTitle := StringReplace(stTitle,'/','-',[rfReplaceAll]);

  aFileName:='기기별권한(' + stTitle + ')';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
    begin
      sg_GradeCard.SaveToCSV(SaveDialog1.FileName);
      {if Not ExcelPrintOut(sg_GradeCard,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
      begin
        Screen.Cursor:= crDefault;
        btn_Excel.Enabled := True;
        Exit;
      end; }
      //showmessage('파일생성 완료');
    end;
  end;
  Screen.Cursor:= crDefault;
  btn_Excel.Enabled := True;
end;

function TfmMDIDeviceGrade.ExcelPrintOut(StringGrid: TAdvStringGrid;
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
  Result := False;

  Try
    oXL := CreateOleObject('Excel.Application');
  Except
    showmessage('출력은 엑셀이 설치된 컴퓨터에서만 가능합니다.');
    exit;
  End;

  if FileExists(refFileName) = False then
  begin
    Showmessage(refFileName + ' 파일이 없습니다.');
    exit;
  end;
  pan_gauge.Visible := True;


  oXL.Workbooks.Open(refFileName);
  oXL.DisplayAlerts := False;
//  oXL.Visible := True;
  oSheet := oXL.ActiveSheet;


  with StringGrid do
  begin

    //타이틀을 적자
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

      if i <  RowCount - 2 then    //한칸씩 삽입
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

procedure TfmMDIDeviceGrade.Panel1Resize(Sender: TObject);
begin
  Panel3.Width := (Panel1.Width - panel4.Width) div 2;

end;

procedure TfmMDIDeviceGrade.ed_EmpNoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btn_SearchClick(Self);
  end;

end;

procedure TfmMDIDeviceGrade.N8Click(Sender: TObject);
begin
  AdvStrinGridSetAllCheck(sg_Card,True);
end;

procedure TfmMDIDeviceGrade.N9Click(Sender: TObject);
begin
  btn_GradeInsertClick(self);
end;

initialization
  RegisterClass(TfmMDIDeviceGrade);
Finalization
  UnRegisterClass(TfmMDIDeviceGrade);

end.
