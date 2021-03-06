unit uNotCardReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, Grids, BaseGrid, AdvGrid, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, uSubForm, CommandArray, DB, ADODB,iniFiles,ComObj;

type
  TfmNotCardReport = class(TfmASubForm)
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
    cmb_Company: TComboBox;
    cmb_Jijum: TComboBox;
    cmb_Depart: TComboBox;
    cmb_Posi: TComboBox;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    dt_Date: TDateTimePicker;
    sg_Report: TAdvStringGrid;
    pan_gauge: TPanel;
    Label1: TLabel;
    Gauge1: TGauge;
    AdoQuery: TADOQuery;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
    procedure cmb_DepartChange(Sender: TObject);
    procedure cmb_PosiChange(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure sg_ReportResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    DepartCodeList : TStringList;
    PosiCodeList : TStringList;
    { Private declarations }
    procedure FormNameSet;
    Function GetTitle : String;
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
  public
    { Public declarations }
  end;

var
  fmNotCardReport: TfmNotCardReport;

implementation
uses
  uDataModule1,
  uLomosUtil,
  uMssql,
  uMDBSql,
  uPostGreSql,
  uCompanyCodeLoad, uFireBird;

{$R *.dfm}

procedure TfmNotCardReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CompanyCodeList.Free;
  JijumCodeList.Free;
  DepartCodeList.Free;
  PosiCodeList.Free;

  Action := caFree;
end;

procedure TfmNotCardReport.FormCreate(Sender: TObject);
begin
  CompanyCodeList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  PosiCodeList := TStringList.Create;

end;

procedure TfmNotCardReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow : integer;
  stCompanyCode,stJijumCode,stDepartCode,stPosiCode:string;
begin
  GridInitialize(sg_Report);

  stCompanyCode:='000';
  stJijumCode:='000';
  stDepartCode:='000';
  stPosiCode:='000';

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


  if DBTYPE = 'MSSQL' then
     stSql := MSSQL.SelectNotCardReport(FormatDateTime('yyyymmdd',dt_Date.Date),
                          stCompanyCode,stJijumCode,stDepartCode,stPosiCode)
  else if DBTYPE = 'PG' then
     stSql := PostGreSql.SelectNotCardReport(FormatDateTime('yyyymmdd',dt_Date.Date),
                          stCompanyCode,stJijumCode,stDepartCode,stPosiCode)
  else if DBTYPE = 'MDB' then
     stSql := MDBSql.SelectNotCardReport(FormatDateTime('yyyymmdd',dt_Date.Date),
                          stCompanyCode,stJijumCode,stDepartCode,stPosiCode)
  else if DBTYPE = 'FB' then
     stSql := FireBird.SelectNotCardReport(FormatDateTime('yyyymmdd',dt_Date.Date),
                          stCompanyCode,stJijumCode,stDepartCode,stPosiCode)
  else Exit;
  stSql := stSql + ' AND a.CA_CARDTYPE = ''1'' ';
  stSql := stSql + ' order by a.CO_COMPANYCODE,a.EM_CODE ';

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
      showmessage('미사용카드내역이 없습니다.');
      Exit;
    end;
    First;
    nRow := 1;
    sg_Report.RowCount := RecordCount + 1;
    While Not Eof do
    begin
      with sg_Report  do
      begin
        cells[0,nRow] := FindField('CO_COMPANYNAME').AsString;
        cells[1,nRow] := FindField('CO_JIJUMNAME').AsString;
        cells[2,nRow] := FindField('CO_DEPARTNAME').AsString;
        cells[3,nRow] := FindField('PO_NAME').AsString;
        cells[4,nRow] := FindField('EM_CODE').AsString;
        cells[5,nRow] := FindField('EM_NAME').AsString;
        cells[6,nRow] := FindField('CA_CARDNO').AsString;
        cells[7,nRow] := FindField('CA_LASTUSE').AsString;

      end;
      nRow := nRow + 1;
      Next;
    end;
  end;

end;

procedure TfmNotCardReport.btn_PrintClick(Sender: TObject);
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
  stRefFileName  := ini_fun.ReadString('카드미사용자보고서','참조파일','NOTCardReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  stSaveFileName := '';
  nExcelRowStart := ini_fun.ReadInteger('카드미사용자보고서','시작위치',6);
  ini_fun.Free;
  
  if Not ExcelPrintOut(sg_Report,stRefFileName,stSaveFileName,False,nExcelRowStart,stTitle,False,False) then
  begin
    btn_Print.Enabled := True;
    Screen.Cursor:= crDefault;
  end;
  btn_Print.Enabled := True;
  //showmessage('출력 완료');
  Screen.Cursor:= crDefault;
end;

procedure TfmNotCardReport.btn_CloseClick(Sender: TObject);
begin
  Close;

end;

procedure TfmNotCardReport.FormNameSet;
begin
  lb_CompanyName.Caption := FM002;
  lb_JijumName.Caption := FM012;
  lb_DepartName.Caption := FM022;
  lb_PosiName.Caption := FM032;
  with sg_Report do
  begin
    cells[0,0] := FM002;
    cells[1,0] := FM012;
    cells[2,0] := FM022;
    cells[3,0] := FM032;
    cells[4,0] := FM101;
    cells[5,0] := FM102;

  end;

end;

procedure TfmNotCardReport.cmb_CompanyChange(Sender: TObject);
begin
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);
  if G_nSearchIndex = 0 then btn_SearchClick(btn_Search);

end;

procedure TfmNotCardReport.cmb_JijumChange(Sender: TObject);
begin
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  if G_nSearchIndex = 0 then btn_SearchClick(Self);

end;

procedure TfmNotCardReport.cmb_DepartChange(Sender: TObject);
begin
  if G_nSearchIndex = 0 then btn_SearchClick(Self);

end;

procedure TfmNotCardReport.cmb_PosiChange(Sender: TObject);
begin
  if G_nSearchIndex = 0 then btn_SearchClick(Self);

end;

procedure TfmNotCardReport.btn_ExcelClick(Sender: TObject);
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
  stTitle := GetTitle;
  ini_fun := TiniFile.Create(ExeFolder + '\print.ini');
  stPrintRefPath := ExeFolder + '\..\PrintOutRef\' ;
  stPrintRefPath := ini_fun.ReadString('환경설정','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('카드미사용자보고서','참조파일','NOTCardReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('카드미사용자보고서','시작위치',6);
  ini_fun.Free;

  aFileName:='카드미사용자보고서';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
      if Not ExcelPrintOut(sg_Report,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
      begin
        Screen.Cursor:= crDefault;
        btn_Excel.Enabled := True;
        Exit;
      end;
  end;
  Screen.Cursor:= crDefault;
  btn_Excel.Enabled := True;
end;

function TfmNotCardReport.GetTitle: String;
var
  stTitle : string;
begin
  stTitle := '최종사용일 : ' + FormatDateTime('yyyy-mm-dd',dt_Date.Date) ;
  if cmb_Company.ItemIndex > 0 then
    stTitle := stTitle + ' / 회사 : ' + cmb_Company.Text ;
  if cmb_Jijum.ItemIndex > 0 then
    stTitle := stTitle + ' / 지점 : ' + cmb_Jijum.text ;
  if cmb_Depart.ItemIndex > 0 then
    stTitle := stTitle + ' / 부서 : ' + cmb_Depart.text ;
  if cmb_Posi.ItemIndex > 0 then
    stTitle := stTitle + ' / 직위 : ' + cmb_Posi.text ;

  Result := stTitle;
end;

function TfmNotCardReport.ExcelPrintOut(StringGrid: TAdvStringGrid;
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
    end;
    StringGrid.CopyToClipBoard;
    oSheet.Range['A' + inttostr(ExcelRowStart - 1), 'A' + inttostr(ExcelRowStart - 1)].Select;
    oSheet.Paste;
  end;//With

  if FileOut then  oSheet.SaveAs(SaveFileName)
  else  oSheet.PrintOut;
  oXL.ActiveWorkbook.Close(False);
  oXL.Quit;
  pan_gauge.Visible := False;
  Result := True;
end;

procedure TfmNotCardReport.sg_ReportResize(Sender: TObject);
var
  nTotWidth: integer;
  nWidth : integer;
  nLeft : integer;
begin
  nTotWidth := sg_Report.Width;
  nWidth := pan_gauge.Width;

  nleft := (nTotWidth - nWidth) div 2;
  pan_gauge.Left := nLeft;

end;

procedure TfmNotCardReport.FormShow(Sender: TObject);
var
  nIndex : integer;
begin
  dt_Date.Date := Now;
  LoadCompanyCode(CompanyCodeList,cmb_Company);
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);

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


initialization
  RegisterClass(TfmNotCardReport);
Finalization
  UnRegisterClass(TfmNotCardReport);

end.
