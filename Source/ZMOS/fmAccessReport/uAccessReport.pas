unit uAccessReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, FR_DSet, FR_DBSet, FR_Class, DB,
  ADODB, Grids, BaseGrid, AdvGrid, Buttons, ComCtrls, uSubForm,
  CommandArray, ExtCtrls,iniFiles, Gauges,ComObj;

type
  TfmAccessReport = class(TfmASubForm)
    sg_AccessReport: TAdvStringGrid;
    AdoQuery: TADOQuery;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    Panel1: TPanel;
    GroupBox5: TGroupBox;
    btn_Excel: TSpeedButton;
    btn_Print: TSpeedButton;
    btn_Search: TSpeedButton;
    btn_Close: TSpeedButton;
    GroupBox4: TGroupBox;
    lb_CompanyName: TLabel;
    lb_JijumName: TLabel;
    lb_DepartName: TLabel;
    lb_PosiName: TLabel;
    lb_Name: TLabel;
    cmb_Company: TComboBox;
    cmb_Jijum: TComboBox;
    cmb_Depart: TComboBox;
    cmb_Posi: TComboBox;
    ed_name: TEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    dt_FromDate: TDateTimePicker;
    dt_ToDate: TDateTimePicker;
    lb_Position: TLabel;
    cmb_Position: TComboBox;
    Label4: TLabel;
    cmb_AccessPermit: TComboBox;
    SaveDialog1: TSaveDialog;
    pan_gauge: TPanel;
    Label1: TLabel;
    Gauge1: TGauge;
    lb_emType: TLabel;
    cmb_Type: TComboBox;
    cmb_EmType: TComboBox;
    rg_Gubun: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_FileSaveClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure CommandArrayCommandsTCommand0Execute(Command: TCommand;
      Params: TStringList);
    procedure btn_CloseClick(Sender: TObject);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
    procedure cmb_DepartChange(Sender: TObject);
    procedure cmb_PosiChange(Sender: TObject);
    procedure cmb_PositionChange(Sender: TObject);
    procedure cmb_AccessPermitChange(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure sg_AccessReportResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_TypeChange(Sender: TObject);
    procedure rg_GubunClick(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    DepartCodeList : TStringList;
    PosiCodeList : TStringList;
    DeviceCodeList : TStringList;
    PermitCodeList : TStringList;
    EmpTypeCodeList : TStringList;
    DoorGubunCodeList : TStringList;
    { Private declarations }
    procedure FormNameSet;
    procedure LoadType;
    procedure GetDoorName(cmb_box :TComboBox);
    procedure LoadDoorGubun(cmb_box :TComboBox);
    procedure GetAccessPermit(cmb_box :TComboBox);
    Function GetTitle : String;
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
  public
    { Public declarations }
  end;

var
  fmAccessReport: TfmAccessReport;

implementation
uses
  uDataModule1,
  uLomosUtil,
  uMssql,
  uMDBSql,
  uPostGreSql,
  uCompanyCodeLoad, uFireBird;

{$R *.dfm}

procedure TfmAccessReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DeviceCodeList.Free;
  PermitCodeList.Free;
  CompanyCodeList.Free;
  JijumCodeList.Free;
  DepartCodeList.Free;
  PosiCodeList.Free;
  EmpTypeCodeList.Free;
  DoorGubunCodeList.Free;

  Action := caFree;

end;

procedure TfmAccessReport.FormCreate(Sender: TObject);
begin
  DeviceCodeList := TStringList.Create;
  PermitCodeList := TStringList.Create;
  CompanyCodeList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  PosiCodeList := TStringList.Create;
  EmpTypeCodeList := TStringList.Create;
  DoorGubunCodeList := TStringList.Create;
end;

procedure TfmAccessReport.GetAccessPermit(cmb_box: TComboBox);
var
  stSql : string;
begin
  cmb_box.Clear;
  PermitCodeList.Clear;
  cmb_Box.Items.Add('전체');
  PermitCodeList.Add('');
  cmb_box.ItemIndex := 0;

  stSql := 'select * From TB_PERMITCODE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';

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
      cmb_Box.Items.Add(FindField('PE_PERMITNAME').AsString);
      PermitCodeList.Add(FindField('PE_PERMITCODE').AsString);
      Next;
    end;
  end;

end;

procedure TfmAccessReport.GetDoorName(cmb_box: TComboBox);
var
  stSql : string;
begin
  cmb_box.Clear;
  DeviceCodeList.Clear;
  cmb_box.Items.Add('전체');
  DeviceCodeList.Add('');
  cmb_box.ItemIndex := 0;

  stSql := 'Select a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.DO_DOORNO,a.DO_DOORNONAME,a.DO_VIEWSEQ ';
  stsql := stSql + ' From TB_DOOR a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ) ';
    end;
  end;
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
  stSql := stSql + ' Order by a.DO_VIEWSEQ ';

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
      cmb_Box.Items.Add(FindField('DO_DOORNONAME').AsString);
      DeviceCodeList.Add(FillZeroNumber(FindField('AC_NODENO').AsInteger,3)
                       + FindField('AC_ECUID').AsString
                       + FindField('DO_DOORNO').AsString);
      Next;
    end;
  end;


end;



procedure TfmAccessReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow : integer;
  stNodeNo,stEcuID,stDoorNo,stPermitCode:string;
  stCompanyCode,stJijumCode,stDepartCode,stPosiCode:string;
  stEmCode,stEmName,stEmTypeCode:string;
  bDoorGubun : Boolean;
  stDoorGubunCode : string;
  stDoorPosi : string;
begin
  Try
    btn_Search.enabled := False;
    GridInitialize(sg_AccessReport);

    stNodeNo:='';
    stEcuID:= '';
    stDoorNo:= '';
    stPermitCode:= '';
    stCompanyCode:='';
    stJijumCode:='';
    stDepartCode:='';
    stPosiCode:='';
    stEmCode:= '';
    stEmName:= '';
    stEmTypeCode := '';
    if cmb_Type.ItemIndex = 0 then //사번
      stEmCode := ed_Name.Text
    else if cmb_Type.ItemIndex = 1 then //이름
      stEmName := ed_Name.Text
    else if cmb_Type.ItemIndex = 2 then //직원구분
    begin
      if cmb_emType.ItemIndex > 0 then stEmTypeCode := EmpTypeCodeList.Strings[cmb_emType.ItemIndex];
    end;

    if cmb_Company.ItemIndex > 0 then
    begin
      stCompanyCode := CompanyCodeList.Strings[cmb_Company.ItemIndex];
    end;
    if cmb_Jijum.ItemIndex > 0 then
    begin
      stCompanyCode := copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3);
      stJijumCode := copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3);
    end;
    if cmb_Depart.ItemIndex > 0 then
    begin
      stCompanyCode := copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],1,3);
      stJijumCode := copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],4,3);
      stDepartCode := copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3);
    end;
    if cmb_Posi.ItemIndex > 0 then
    begin
      stCompanyCode := copy(PosiCodeList.Strings[cmb_Posi.ItemIndex],1,3);
      stPosiCode := copy(PosiCodeList.Strings[cmb_Posi.ItemIndex],4,3);
    end;
    if rg_Gubun.ItemIndex = 0 then
    begin
      bDoorGubun := False;
      if cmb_Position.ItemIndex > 0 then
      begin
        stNodeNo := inttostr(strtoint(copy(DeviceCodeList.Strings[cmb_Position.ItemIndex],1,3)));
        stEcuID := copy(DeviceCodeList.Strings[cmb_Position.ItemIndex],4,2) ;
        stDoorNo := copy(DeviceCodeList.Strings[cmb_Position.ItemIndex],6,1) ;
      end;
    end else
    begin
      bDoorGubun := True;
      if cmb_Position.ItemIndex > 0 then
      begin
        stDoorGubunCode := DoorGubunCodeList.Strings[cmb_Position.ItemIndex];
      end;
    end;
    if cmb_AccessPermit.ItemIndex > 0 then
    begin
      stPermitCode := PermitCodeList.Strings[cmb_AccessPermit.ItemIndex] ;
    end;


    if DBTYPE = 'MSSQL' then
       stSql := MSSQL.SelectTB_ACCESSEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                            FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stDoorNo,stDoorGubunCode,stPermitCode,
                            stCompanyCode,stJijumCode,stDepartCode,stPosiCode,stEmCode,stEmName,stEmTypeCode,bDoorGubun)
    else if DBTYPE = 'PG' then
       stSql := PostGreSql.SelectTB_ACCESSEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                            FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stDoorNo,stDoorGubunCode,stPermitCode,
                            stCompanyCode,stJijumCode,stDepartCode,stPosiCode,stEmCode,stEmName,stEmTypeCode,bDoorGubun)
    else if DBTYPE = 'MDB' then
       stSql := MDBSql.SelectTB_ACCESSEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                            FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stDoorNo,stDoorGubunCode,stPermitCode,
                            stCompanyCode,stJijumCode,stDepartCode,stPosiCode,stEmCode,stEmName,stEmTypeCode,bDoorGubun)
    else if DBTYPE = 'FB' then
       stSql := FireBird.SelectTB_ACCESSEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                            FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stDoorNo,stDoorGubunCode,stPermitCode,
                            stCompanyCode,stJijumCode,stDepartCode,stPosiCode,stEmCode,stEmName,stEmTypeCode,bDoorGubun)
    else Exit;

    stSql := stSql + ' Order by a.AC_DATE,a.AC_TIME ';
    //memo1.Lines.Text := stSql;
    //Exit;
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

      if RecordCount < 1 then
      begin
        showmessage('출입이력이 없습니다.');
        Exit;
      end;
      First;
      nRow := 1;
      pan_gauge.Visible := True;
      Label1.Caption := '데이터 조회중입니다.';
      Gauge1.Progress := 0;
      Gauge1.MaxValue := RecordCount;
      sg_AccessReport.RowCount := RecordCount + 1;
      While Not Eof do
      begin
        with sg_AccessReport  do
        begin
          if FindField('AC_DOORPOSI').AsString = '0' then stDoorPosi := '내부'
          else stDoorPosi := '외부';
          cells[0,nRow] := copy(FindField('AC_DATE').AsString,1,4) + '-' + copy(FindField('AC_DATE').AsString,5,2)
                           + '-' + copy(FindField('AC_DATE').AsString,7,2);
          cells[1,nRow] := copy(FindField('AC_TIME').AsString,1,2)
                           + ':' + copy(FindField('AC_TIME').AsString,3,2)
                           + ':' + copy(FindField('AC_TIME').AsString,5,2);   //발생시각
          cells[2,nRow] := FindField('DO_DOORNONAME').AsString;
          cells[3,nRow] := FindField('AC_READERNO').AsString;
          cells[4,nRow] := stDoorPosi;
          cells[5,nRow] := FindField('CA_CARDNO').AsString;
          cells[6,nRow] := FindField('CO_COMPANYNAME').AsString;
          cells[7,nRow] := FindField('CO_JIJUMNAME').AsString;
          cells[8,nRow] := FindField('CO_DEPARTNAME').AsString;
          cells[9,nRow] := FindField('PO_NAME').AsString;
          cells[10,nRow] := FindField('EM_CODE').AsString;
          cells[11,nRow] := FindField('EM_NAME').AsString;
          cells[12,nRow] := FindField('PE_PERMITNAME').AsString;

        end;
        Gauge1.Progress := nRow;
        nRow := nRow + 1;
        Application.ProcessMessages;
        Next;
      end;
    end;
  Finally
    pan_gauge.Visible := False;
    btn_Search.enabled := True;
  end;

end;

procedure TfmAccessReport.btn_FileSaveClick(Sender: TObject);
var
  aFileName: String;
  sDate: String;
  eDate: String;
begin
  Screen.Cursor:= crHourGlass;
  aFileName:='출입 이력 보고서';
  SaveDialog1.DefaultExt:= 'CSV';
  SaveDialog1.Filter := 'Text files (*.CSV)|*.CSV';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    sg_AccessReport.SaveToCSV(SaveDialog1.FileName);
  end;
  Screen.Cursor:= crDefault;

end;

procedure TfmAccessReport.btn_PrintClick(Sender: TObject);
var
  stRefFileName,stSaveFileName:String;
  stPrintRefPath : string;
  nExcelRowStart:integer;
  ini_fun : TiniFile;
  stTitle : string;
begin
  btn_Print.Enabled := False;
  Screen.Cursor:= crHourGlass;
  stTitle := GetTitle ;
  ini_fun := TiniFile.Create(ExeFolder + '\print.ini');
  stPrintRefPath := ExeFolder + '\..\PrintOutRef\' ;
  stPrintRefPath := ini_fun.ReadString('환경설정','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('기간별출입보고서','참조파일','D2DACReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  stSaveFileName := '';
  nExcelRowStart := ini_fun.ReadInteger('기간별출입보고서','시작위치',6);
  ini_fun.Free;
  
  if Not ExcelPrintOut(sg_AccessReport,stRefFileName,stSaveFileName,False,nExcelRowStart,stTitle,False,False) then
  begin
    btn_Print.Enabled := True;
    Screen.Cursor:= crDefault;
  end;
  btn_Print.Enabled := True;
  //showmessage('출력 완료');
  Screen.Cursor:= crDefault;
end;

procedure TfmAccessReport.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if AnsiCompareText(ParName, 'aDAY') = 0 then
    ParValue := '검색기간 : '+ FormatdateTime('yyyy-mm-dd',dt_FromDate.Date) + '~' + FormatdateTime('yyyy-mm-dd',dt_ToDate.Date);

end;

procedure TfmAccessReport.CommandArrayCommandsTCommand0Execute(
  Command: TCommand; Params: TStringList);
begin
//권한부여
end;

procedure TfmAccessReport.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmAccessReport.FormNameSet;
begin
  lb_CompanyName.Caption := FM002;
  lb_JijumName.Caption := FM012;
  lb_DepartName.Caption := FM022;
  lb_PosiName.Caption := FM032;
//  lb_Sabun.Caption := FM101;
//  lb_Name.Caption := FM102;
  with sg_AccessReport do
  begin
    cells[6,0] := FM002;
    cells[7,0] := FM012;
    cells[8,0] := FM022;
    cells[9,0] := FM032;
    cells[10,0] := FM101;
    cells[11,0] := FM102;

  end;

end;

procedure TfmAccessReport.cmb_CompanyChange(Sender: TObject);
begin
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);
  if G_nSearchIndex = 0 then btn_SearchClick(btn_Search);
end;

procedure TfmAccessReport.cmb_JijumChange(Sender: TObject);
begin
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  if G_nSearchIndex = 0 then btn_SearchClick(Self);
end;

procedure TfmAccessReport.cmb_DepartChange(Sender: TObject);
begin
  if G_nSearchIndex = 0 then btn_SearchClick(Self);

end;

procedure TfmAccessReport.cmb_PosiChange(Sender: TObject);
begin
  if G_nSearchIndex = 0 then btn_SearchClick(Self);

end;

procedure TfmAccessReport.cmb_PositionChange(Sender: TObject);
begin
  if G_nSearchIndex = 0 then btn_SearchClick(Self);

end;

procedure TfmAccessReport.cmb_AccessPermitChange(Sender: TObject);
begin
  if G_nSearchIndex = 0 then btn_SearchClick(Self);
end;

procedure TfmAccessReport.btn_ExcelClick(Sender: TObject);
var
  stRefFileName,stSaveFileName:String;
  stPrintRefPath : string;
  nExcelRowStart:integer;
  ini_fun : TiniFile;
  aFileName : string;
  stTitle : string;
begin
{  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if stSaveFileName <> '' then
    begin
      ExcelIO1.XLSExport(stSaveFileName);
    end;
    showmessage('파일생성 완료');
  end;    }
  btn_Excel.Enabled := False;
  Screen.Cursor:= crHourGlass;
  stTitle := GetTitle;
  ini_fun := TiniFile.Create(ExeFolder + '\print.ini');
  stPrintRefPath := ExeFolder + '\..\PrintOutRef\' ;
  stPrintRefPath := ini_fun.ReadString('환경설정','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('기간별출입보고서','참조파일','D2DACReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('기간별출입보고서','시작위치',6);
  ini_fun.Free;

  aFileName:='기간별출입보고서';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
      if Not ExcelPrintOut(sg_AccessReport,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
      begin
        Screen.Cursor:= crDefault;
        btn_Excel.Enabled := True;
        Exit;
      end;
      //showmessage('파일생성 완료');
  end;
  Screen.Cursor:= crDefault;
  btn_Excel.Enabled := True;
end;

function TfmAccessReport.GetTitle: String;
var
  stTitle : string;
begin
  stTitle := '검색기간 : ' + FormatDateTime('yyyy-mm-dd',dt_FromDate.Date) + ' ~ ' + FormatDateTime('yyyy-mm-dd',dt_ToDate.Date) ;
  if cmb_Company.ItemIndex > 0 then
    stTitle := stTitle + ' / 회사 : ' + cmb_Company.Text ;
  if cmb_Jijum.ItemIndex > 0 then
    stTitle := stTitle + ' / 지점 : ' + cmb_Jijum.text ;
  if cmb_Depart.ItemIndex > 0 then
    stTitle := stTitle + ' / 부서 : ' + cmb_Depart.text ;
  if cmb_Posi.ItemIndex > 0 then
    stTitle := stTitle + ' / 직위 : ' + cmb_Posi.text ;
  if cmb_Type.ItemIndex <> 2 then
  begin
    if Trim(ed_name.Text) <> '' then
      stTitle := stTitle  + ' / ' + lb_Name.Caption + ' : ' + ed_name.text ;
  end else
  begin
    if cmb_EmType.ItemIndex > 0 then
      stTitle := stTitle  + ' / ' + lb_Name.Caption + ' : ' + cmb_EmType.text ;
  end;
  if cmb_Position.ItemIndex > 0 then
    stTitle := stTitle + ' / 출입문 : ' + cmb_Position.text ;
  if cmb_AccessPermit.ItemIndex > 0 then
    stTitle := stTitle + ' / 승인구분 : ' + cmb_AccessPermit.text ;

  Result := stTitle;
end;

function TfmAccessReport.ExcelPrintOut(StringGrid: TAdvStringGrid;
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
  Label1.Caption := '데이터 전송중입니다.';
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

procedure TfmAccessReport.sg_AccessReportResize(Sender: TObject);
var
  nTotWidth: integer;
  nWidth : integer;
  nLeft : integer;
begin
  nTotWidth := sg_AccessReport.Width;
  nWidth := pan_gauge.Width;

  nleft := (nTotWidth - nWidth) div 2;
  pan_gauge.Left := nLeft;

end;

procedure TfmAccessReport.FormShow(Sender: TObject);
var
  nIndex : integer;
begin
  dt_FromDate.Date := Now;
  dt_ToDate.Date := Now;
  GetDoorName(cmb_Position);
  GetAccessPermit(cmb_AccessPermit);
  LoadCompanyCode(CompanyCodeList,cmb_Company);
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);
  LoadType;

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
  if G_nSearchIndex = 0 then btn_SearchClick(self);
end;

procedure TfmAccessReport.LoadType;
begin
  with cmb_Type do
  begin
    Clear;
    Items.Add(FM101); //사번
    Items.Add(FM102); //이름
    Items.Add(FM042); //직원구분
    ItemIndex := 0;
  end;
  cmb_TypeChange(cmb_Type);
end;

procedure TfmAccessReport.cmb_TypeChange(Sender: TObject);
begin
  lb_Name.Caption := cmb_Type.Text;
  if cmb_Type.ItemIndex <> 2 then
  begin
    cmb_EmType.Visible := False;
    ed_Name.Visible := True;
  end else
  begin
    cmb_EmType.Visible := True;
    ed_Name.Visible := False;
    LoadEmpType(EmpTypeCodeList,cmb_EmType);
  end;
end;


procedure TfmAccessReport.rg_GubunClick(Sender: TObject);
begin
  if rg_Gubun.ItemIndex = 0 then
  begin
    GetDoorName(cmb_Position);
    lb_Position.Caption := '출입문명칭';
    sg_AccessReport.Cells[0,0] := '출입문명칭';
  end else
  begin
    LoadDoorGubun(cmb_Position);
    lb_Position.Caption := '출입문구분';
    sg_AccessReport.Cells[0,0] := '출입문구분';
  end;

end;

procedure TfmAccessReport.LoadDoorGubun(cmb_box: TComboBox);
var
  stSql : string;
begin
  cmb_box.Clear;
  DoorGubunCodeList.Clear;
  cmb_Box.Items.Add('전체');
  DoorGubunCodeList.Add('');
  cmb_box.ItemIndex := 0;

  stSql := 'select * From TB_DOORGUBUN ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';

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
      cmb_Box.Items.Add(FindField('DG_NAME').AsString);
      DoorGubunCodeList.Add(FindField('DG_CODE').AsString);
      Next;
    end;
  end;

end;

initialization
  RegisterClass(TfmAccessReport);
Finalization
  UnRegisterClass(TfmAccessReport);


end.
