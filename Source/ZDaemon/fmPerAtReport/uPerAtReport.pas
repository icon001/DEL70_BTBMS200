unit uPerAtReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, ComCtrls, StdCtrls, Buttons, uSubForm,
  CommandArray, DB, ADODB, FR_DSet, FR_DBSet, FR_Class, ExtCtrls, AdvObj;

type
  TfmPerAtReport = class(TfmASubForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cmb_Company: TComboBox;
    cmb_Depart: TComboBox;
    ed_empNo: TEdit;
    ed_name: TEdit;
    dt_startDate: TDateTimePicker;
    dt_endDate: TDateTimePicker;
    GroupBox3: TGroupBox;
    sg_report: TAdvStringGrid;
    SaveDialog1: TSaveDialog;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    ADOQuery: TADOQuery;
    Panel12: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    cmb_Jijum: TComboBox;
    Label8: TLabel;
    cmb_Posi: TComboBox;
    Panel1: TPanel;
    btn_Search: TSpeedButton;
    btn_FileSave: TSpeedButton;
    btn_Print: TSpeedButton;
    btn_Close: TSpeedButton;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_FileSaveClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure btn_PrintClick(Sender: TObject);
    procedure ADOQueryAT_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ADOQueryAT_INTIMEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ADOQueryAT_OUTTIMEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ADOQueryAT_INRESULTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ADOQueryAT_OUTRESULTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    DepartCodeList : TStringList;
    PosiCodeList : TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPerAtReport: TfmPerAtReport;

implementation

uses
  uDataModule1,
  uCompanyCodeLoad;

{$R *.dfm}



procedure TfmPerAtReport.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmPerAtReport.FormActivate(Sender: TObject);
begin
  dt_startDate.Date := Now;
  dt_endDate.Date := Now;
  LoadCompanyCode(CompanyCodeList,cmb_Company);
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);

  sg_Report.ColWidths[11] := 0;
end;

procedure TfmPerAtReport.FormCreate(Sender: TObject);
begin
  CompanyCodeList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  PosiCodeList := TStringList.Create;
end;

procedure TfmPerAtReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CompanyCodeList.Free;
  JijumCodeList.Free;
  DepartCodeList.Free;
  PosiCodeList.Free;

  Action := caFree;

end;

procedure TfmPerAtReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  i : integer;
  nRow : integer;
begin
  GridInitialize(sg_Report);

  stSql := ' SELECT a.AT_DATE,a.AT_INTIME,a.AT_OUTTIME,h.AT_INNAME as AT_INRESULT,i.AT_OUTNAME as AT_OUTRESULT, ';
  stSql := stSql + ' a.AT_CONTENT,a.CA_CARDNO,a.CO_COMPANYCODE,c.CO_JIJUMCODE,c.CO_DEPARTCODE,d.CO_NAME as COMPANY_NAME,';
  stSql := stSql + ' e.CO_NAME as JIJUM_NAME,f.CO_NAME as DEPART_NAME,c.PO_POSICODE,g.PO_NAME, ';
  stSql := stSql + ' c.EM_CODE,c.EM_NAME ';
  stSql := stSql + ' FROM ';
  stSql := stSql + '(';
  stSql := stSql + '(';
  stSql := stSql + '(';
  stSql := stSql + '(' ;
  stsql := stSql + '(';
  stSql := stSql + '(';
  stSql := stSql + ' ( select * from TB_ATEVENT IN ''';
  stSql := stSql + ExeFolder + '\..\DB\ZEVENT.mdb'' ) as a ';
  stSql := stSql + ' Left JOIN (select * from TB_EMPLOYEE ';
  stSql := stSql + ' ) as c ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = c.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.EM_CODE = c.EM_CODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = c.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where CO_GUBUN = ''1'') as d ';
  stSql := stSql + ' ON (c.CO_COMPANYCODE = d.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (c.GROUP_CODE = d.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where CO_GUBUN = ''2'') as e ';
  stSql := stSql + ' ON (c.CO_JIJUMCODE = e.CO_JIJUMCODE) ';
  stSql := stSql + ' AND (c.CO_COMPANYCODE = e.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (c.GROUP_CODE = e.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where CO_GUBUN = ''3'') as f ';
  stSql := stSql + ' ON (c.CO_DEPARTCODE = f.CO_DEPARTCODE) ';
  stSql := stSql + ' AND (c.CO_JIJUMCODE = f.CO_JIJUMCODE) ';
  stSql := stSql + ' AND (c.CO_COMPANYCODE = f.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (c.GROUP_CODE = f.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN TB_POSI as g ';
  stSql := stSql + ' ON (c.PO_POSICODE = g.PO_POSICODE) ';
  stSql := stSql + ' AND (c.GROUP_CODE = g.GROUP_CODE )' ;
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN TB_ATINCODE as h ';
  stSql := stSql + ' ON (a.AT_INCODE = h.AT_INCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = h.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN TB_ATOUTCODE as i ';
  stSql := stSql + ' ON (a.AT_OUTCODE = i.AT_OUTCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = i.GROUP_CODE) ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AT_DATE BETWEEN ''' + FormatDateTime('yyyymmdd',dt_startDate.Date) + ''' ';
  stSql := stSql + ' AND ''' + FormatDateTime('yyyymmdd',dt_endDate.Date) + ''' ';
  if cmb_Company.ItemIndex > 0 then stSql := stSql + ' AND  a.CO_COMPANYCODE = ''' + copy(CompanyCodeList.Strings[cmb_Company.ItemIndex],1,3) + ''' ';
  if cmb_Jijum.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND  c.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
  end;
  if cmb_Depart.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND  c.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ';
  end;
  if Trim(ed_empNo.Text) <> '' then
    stSql := stSql + ' AND a.EM_CODE = ''' +  Trim(ed_empNo.Text) + ''' ';
  if Trim(ed_name.Text) <> '' then
    stSql := stSql + ' AND a.EM_NAME  Like ''%' +  Trim(ed_name.Text) + '%'' ';

  stSql := stSql + ' Order By a.CO_COMPANYCODE,a.EM_CODE,a.AT_DATE ';

  //memo1.Lines.Text := stSql;
  //Exit;
  with ADOQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      showmessage('조회에 실패하였습니다');
      Exit;
    End;

    if RecordCount < 1 then
    begin
      showmessage('조회데이터가 없습니다.');
      Exit;
    end;

    sg_Report.RowCount := RecordCount + 1 ;
    nRow := 1;

    while Not Eof do
    begin
      with sg_Report do
      begin
        Cells[0,nRow] := copy(FindField('AT_DATE').AsString,1,4) + '-' +
                         copy(FindField('AT_DATE').AsString,5,2) + '-' +
                         copy(FindField('AT_DATE').AsString,7,2) ;
        Cells[1,nRow] := FindField('COMPANY_NAME').AsString;
        Cells[2,nRow] := FindField('JIJUM_NAME').AsString;
        Cells[3,nRow] := FindField('DEPART_NAME').AsString;
        Cells[4,nRow] := FindField('EM_CODE').AsString;
        Cells[5,nRow] := FindField('EM_NAME').AsString;
        Cells[6,nRow] := copy(FindField('AT_INTIME').AsString,9,2) + ':' +
                         copy(FindField('AT_INTIME').AsString,11,2) + ':' +
                         copy(FindField('AT_INTIME').AsString,13,2);
        Cells[7,nRow] := copy(FindField('AT_OUTTIME').AsString,9,2) + ':' +
                         copy(FindField('AT_OUTTIME').AsString,11,2) + ':' +
                         copy(FindField('AT_OUTTIME').AsString,13,2);
        if FindField('AT_INRESULT').AsString = 'Y' then Cells[8,nRow] := '출근'
        else if FindField('AT_INRESULT').AsString = 'N' then Cells[8,nRow] := '지각'
        else Cells[8,nRow] := FindField('AT_INRESULT').AsString;
        if FindField('AT_OUTRESULT').AsString = 'Y' then Cells[9,nRow] := '퇴근'
        else if FindField('AT_OUTRESULT').AsString = 'N' then Cells[9,nRow] := '조퇴'
        else Cells[9,nRow] := FindField('AT_OUTRESULT').AsString;
        Cells[10,nRow] := FindField('AT_CONTENT').AsString;
        Cells[11,nRow] := FindField('CA_CARDNO').AsString;

      end;

      inc(nRow);
      Next;
    end;

  end;



end;

procedure TfmPerAtReport.btn_FileSaveClick(Sender: TObject);
var
  aFileName: String;
  sDate: String;
  eDate: String;
begin
  Screen.Cursor:= crHourGlass;
  aFileName:='개인별 근태 보고서';
  SaveDialog1.DefaultExt:= 'CSV';
  SaveDialog1.Filter := 'Text files (*.CSV)|*.CSV';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    sg_Report.SaveToCSV(SaveDialog1.FileName);
  end;
  Screen.Cursor:= crDefault;
end;

procedure TfmPerAtReport.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if AnsiCompareText(ParName, 'aDAY') = 0 then
    ParValue := '검색기간 : '+ FormatdateTime('yyyy-mm-dd',dt_startDate.Date) + '~' + FormatdateTime('yyyy-mm-dd',dt_endDate.Date);

end;

procedure TfmPerAtReport.btn_PrintClick(Sender: TObject);
begin
  if Not AdoQuery.Active then
  begin
    showmessage('조회 후 출력하세요.');
    Exit;
  end;
  frReport1.ShowReport;

end;

procedure TfmPerAtReport.ADOQueryAT_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:= copy(Sender.AsString,1,4) + '-' + copy(Sender.AsString,5,2) + '-' + copy(Sender.AsString,7,2);
end;

procedure TfmPerAtReport.ADOQueryAT_INTIMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:= copy(Sender.AsString,9,2) + ':' + copy(Sender.AsString,11,2) + ':' + copy(Sender.AsString,13,2);

end;

procedure TfmPerAtReport.ADOQueryAT_OUTTIMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:= copy(Sender.AsString,9,2) + ':' + copy(Sender.AsString,11,2) + ':' + copy(Sender.AsString,13,2);
end;

procedure TfmPerAtReport.ADOQueryAT_INRESULTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'Y' then  Text:= '출근'
  else if Sender.AsString = 'N' then Text := '지각'
  else Text := Sender.AsString;

end;

procedure TfmPerAtReport.ADOQueryAT_OUTRESULTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'Y' then  Text:= '퇴근'
  else if Sender.AsString = 'N' then Text := '조퇴'
  else Text := Sender.AsString;
end;

procedure TfmPerAtReport.cmb_CompanyChange(Sender: TObject);
begin
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);

end;

procedure TfmPerAtReport.cmb_JijumChange(Sender: TObject);
begin
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
end;

initialization
  RegisterClass(TfmPerATReport);
Finalization
  UnRegisterClass(TfmPerATReport);

end.
 