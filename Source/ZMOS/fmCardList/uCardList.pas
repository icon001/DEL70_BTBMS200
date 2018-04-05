unit uCardList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls, Grids, BaseGrid, AdvGrid, Buttons,
  uSubForm, CommandArray,ADODB,ActiveX,iniFiles,ComObj;

type
  TfmCardList = class(TfmASubForm)
    Panel12: TPanel;
    Panel1: TPanel;
    sg_Employ: TAdvStringGrid;
    pan_gauge: TPanel;
    Label2: TLabel;
    Gauge1: TGauge;
    lb_CompanyName: TLabel;
    cmb_Company: TComboBox;
    lb_JijumName: TLabel;
    cmb_Jijum: TComboBox;
    lb_DepartName: TLabel;
    cmb_Depart: TComboBox;
    lb_PosiName: TLabel;
    cmb_Posi: TComboBox;
    cmb_SearchType: TComboBox;
    Label4: TLabel;
    lb_search: TLabel;
    ed_searchText: TEdit;
    cmb_CardRegType: TComboBox;
    GroupBox1: TGroupBox;
    btn_Search: TBitBtn;
    btn_Excel: TSpeedButton;
    btn_Close: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
    procedure cmb_SearchTypeChange(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    PosiCodeList : TStringList;
    DepartCodeList : TStringList;
    EmpTypeCodeList : TStringList;
    { Private declarations }
    procedure ShowCardList;
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
    Function GetTitle : string;
  public
    { Public declarations }
  end;

var
  fmCardList: TfmCardList;

implementation
uses
  uCompanyCodeLoad,
  uDataModule1,
  uLomosUtil,
  uCommonSql,
  uMssql,
  uMDBSql,
  uPostGreSql,
  uZTBMSFunction,
  uFireBird;
{$R *.dfm}

procedure TfmCardList.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  CompanyCodeList.Free;
  JijumCodeList.Free;
  PosiCodeList.Free;
  DepartCodeList.Free;
  EmpTypeCodeList.Free;

  Action := caFree;

end;

procedure TfmCardList.btn_CloseClick(Sender: TObject);
begin
  close;
end;

procedure TfmCardList.FormCreate(Sender: TObject);
begin
  CompanyCodeList := TStringList.Create;
  JijumCodeList := TStringList.Create;
  PosiCodeList := TStringList.Create;
  DepartCodeList := TStringList.Create;
  EmpTypeCodeList := TStringList.Create;

  GridInitialize(sg_Employ);


end;

procedure TfmCardList.FormShow(Sender: TObject);
var
  stCompanyCode : string;
  stJijumCode : string;
begin

  LoadCompanyCode(CompanyCodeList,cmb_Company);
  stCompanyCode := '000';
  if cmb_Company.ItemIndex > 0 then stCompanyCode := CompanyCodeList.Strings[cmb_Company.ItemIndex];
  LoadJijumCode(stCompanyCode,JijumCodeList,cmb_Jijum);
  stJijumCode := '000';
  if cmb_Jijum.ItemIndex > 0 then stJijumCode := copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3);
  LoadDepartCode(stCompanyCode,stJijumCode,DepartCodeList,cmb_Depart);

  LoadPosiCode(stCompanyCode,PosiCodeList,cmb_Posi);

end;

procedure TfmCardList.cmb_CompanyChange(Sender: TObject);
begin
  LoadJijumCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],JijumCodeList,cmb_Jijum);
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);
  LoadPosiCode(CompanyCodeList.Strings[cmb_Company.ItemIndex],PosiCodeList,cmb_Posi);

end;

procedure TfmCardList.cmb_JijumChange(Sender: TObject);
begin
  LoadDepartCode(copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3),copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3),DepartCodeList,cmb_Depart);

end;

procedure TfmCardList.cmb_SearchTypeChange(Sender: TObject);
begin
  lb_search.Caption := cmb_SearchType.Text;
  if cmb_SearchType.ItemIndex = 0 then
  begin
    cmb_CardRegType.Visible := True;
    ed_searchText.Visible := False;
  end else
  begin
    cmb_CardRegType.Visible := False;
    ed_searchText.Visible := True;
  end;

end;

procedure TfmCardList.btn_SearchClick(Sender: TObject);
begin
  ShowCardList;
end;

procedure TfmCardList.ShowCardList;
var
  stSql : string;
  nRow : integer;
  i : integer;
  TempAdoQuery : TADOQuery;
  stCardState : string;
begin
  GridInitialize(sg_Employ); //��Ʈ���׸��� �ʱ�ȭ

  if DBTYPE = 'MSSQL' then stSql := MSSQL.SelectTB_CARDJoinTBEmployee
  else if DBType = 'PG' then stSql := PostGreSql.SelectTB_CARDJoinTBEmployee
  else if DBType = 'MDB' then stSql := MDBSql.SelectTB_CARDJoinTBEmployee
  else if DBType = 'FB' then stSql := FireBird.SelectTB_CARDJoinTBEmployee
  else Exit;

  if (Not IsMaster) and (CompanyGrade <> '0') then
  begin
    if CompanyGrade = '1' then
    begin
      if cmb_Company.ItemIndex < 1 then
      begin
        if CompanyCodeList.Count < 2 then
        begin
          showmessage('�����Ҽ� �ִ� ������ �����ϴ�.');
          Exit;
        end;
        for i:= 1 to CompanyCodeList.Count - 1 do
        begin
          if i = 1 then stSql := stSql + ' AND ( '
          else stSql := stSql + ' OR ';
          stSql := stSql + ' a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[i] + ''' ';
        end;
        stSql := stSql + ')'; 
      end else stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex > 0 then stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
      if cmb_Depart.ItemIndex > 0 then stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ';
    end else if CompanyGrade = '2' then
    begin
      if cmb_Company.ItemIndex < 1 then
      begin
        showmessage('������ �Ҽ� �ڵ尡 �̻��մϴ�.');
        Exit;
      end;
      stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex < 1 then
      begin
        if JijumCodeList.Count < 2 then
        begin
          showmessage('�����Ҽ� �ִ� ������ �����ϴ�.');
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
        showmessage('������ �Ҽ� �ڵ尡 �̻��մϴ�.');
        Exit;
      end;
      stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ';
      if cmb_Jijum.ItemIndex < 1 then
      begin
        showmessage('������ �Ҽ� �ڵ尡 �̻��մϴ�.');
        Exit;
      end;
      stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ';
      if cmb_Depart.ItemIndex < 1 then
      begin
        if DepartCodeList.Count < 2 then
        begin
          showmessage('�����Ҽ� �ִ� ������ �����ϴ�.');
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
      stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],1,3) + ''' ' ;
      stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],4,3) + ''' ' ;
      stSql := stSql + ' AND b.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' ' ;
    end else if cmb_Jijum.ItemIndex > 0 then
    begin
      stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3) + ''' ' ;
      stSql := stSql + ' AND b.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' ' ;
    end else if cmb_Company.ItemIndex > 0 then
    begin
      stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ' ;
    end;
  end;
  if cmb_Posi.ItemIndex > 0 then
    stSql := stSql + ' AND b.PO_POSICODE = ''' + copy(PosiCodeList.Strings[cmb_Posi.ItemIndex],4,3) + ''' ';

  if cmb_SearchType.ItemIndex = 0 then //ī���ϱ���
  begin
    if cmb_CardRegType.ItemIndex <> 0 then
    begin
      stSql := stSql + ' AND a.ca_cardtype = ''' + copy(cmb_CardRegType.Text,1,1)  + ''' '
    end;
  end else if cmb_SearchType.ItemIndex = 1 then //ī���ȣ
    stSql := stSql + ' AND a.CA_CARDNO LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
  else if cmb_SearchType.ItemIndex = 2 then //���
    stSql := stSql + ' AND b.EM_CODE LIKE ''%' + Trim(ed_searchText.Text)  + '%'' '
  else if cmb_SearchType.ItemIndex = 3 then //�̸�
    stSql := stSql + ' AND b.EM_NAME LIKE ''%' + Trim(ed_searchText.Text)  + '%'' ';

  CoInitialize(nil);
  TempAdoQuery := TADOQuery.Create(nil);
  TempAdoQuery.Connection := DataModule1.ADOConnection;
  TempAdoQuery.DisableControls;

  Try
    btn_Search.Enabled := False;
    btn_Excel.Enabled := False;
    Screen.Cursor:= crHourGlass;
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
      pan_gauge.Visible := True;
      Label2.Caption := '������ ��ȸ���Դϴ�.';
      Gauge1.Progress := 0;
      Gauge1.MaxValue := RecordCount;
      sg_Employ.RowCount := RecordCount + 1;
      nRow := 1;
      First;
      while Not Eof do
      begin
        with sg_Employ do
        begin
          cells[0,nRow] := FindField('CA_CARDNO').AsString;
          Case FindField('CA_CARDTYPE').asstring[1] of
            '1' : begin stCardState := '1.���'; end;
            '2' : begin stCardState := '2.�н�'; end;
            '3' : begin stCardState := '3.����'; end;
            '4' : begin stCardState := '4.����'; end;
          end;
          cells[1,nRow] := stCardState;// FindField('CA_CARDTYPE').AsString;
          cells[2,nRow] := FindField('COMPANYNAME').AsString;
          cells[3,nRow] := FindField('JIJUMNAME').AsString;
          cells[4,nRow] := FindField('DEPARTNAME').AsString;
          cells[5,nRow] := FindField('PO_NAME').AsString;
          cells[6,nRow] := FindField('EM_CODE').AsString;
          cells[7,nRow] := FindField('EM_NAME').AsString;
        end;
        Gauge1.Progress := nRow;
        nRow := nRow + 1;
        Application.ProcessMessages;
        Next;
      end;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
    pan_gauge.Visible := False;
    btn_Search.Enabled := True;
    btn_Excel.Enabled := True;
    Screen.Cursor:= crDefault;
  End;
end;

procedure TfmCardList.btn_ExcelClick(Sender: TObject);
var
  stRefFileName,stSaveFileName:String;
  stPrintRefPath : string;
  nExcelRowStart:integer;
  ini_fun : TiniFile;
  aFileName : string;
  stTitle : string;
begin
  Try
    btn_Excel.Enabled := False;
    btn_Search.Enabled := False;
    Screen.Cursor:= crHourGlass;
    stTitle := GetTitle;
    ini_fun := TiniFile.Create(ExeFolder + '\print.ini');
    stPrintRefPath := ExeFolder + '\..\PrintOutRef\' ;
    stPrintRefPath := ini_fun.ReadString('ȯ�漳��','PrintRefPath',stPrintRefPath);
    stRefFileName  := ini_fun.ReadString('ī�峻��','��������','CardList.xls');
    stRefFileName := stPrintRefPath + stRefFileName;
    nExcelRowStart := ini_fun.ReadInteger('ī�峻��','������ġ',6);
    ini_fun.Free;

    aFileName:='ī�峻��';
    SaveDialog1.FileName := aFileName;
    if SaveDialog1.Execute then
    begin
      stSaveFileName := SaveDialog1.FileName;
      if SaveDialog1.FileName <> '' then
        if Not ExcelPrintOut(sg_Employ,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
        begin
          Screen.Cursor:= crDefault;
          btn_Excel.Enabled := True;
          Exit;
        end;
    end;
  Finally
    Screen.Cursor:= crDefault;
    btn_Excel.Enabled := True;
    btn_Search.Enabled := True;
  end;
end;

function TfmCardList.ExcelPrintOut(StringGrid: TAdvStringGrid; refFileName,
  SaveFileName: String; FileOut: Boolean; ExcelRowStart: integer;
  stTitle: string; bRowHeader, bColHeader: Boolean): Boolean;
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
  Label2.caption := '������ �������Դϴ�.';
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

function TfmCardList.GetTitle: string;
var
  stTemp : string;
begin
  stTemp := '';
  if cmb_Company.ItemIndex > 0 then
  begin
    if stTemp <> '' then stTemp := stTemp + '/';
    stTemp := stTemp + 'ȸ��:' + cmb_Company.Text ;
  end;
  if cmb_Jijum.ItemIndex > 0 then
  begin
    if stTemp <> '' then stTemp := stTemp + '/';
    stTemp := stTemp + '����:' +  cmb_Jijum.Text ;
  end;
  if cmb_Depart.ItemIndex > 0 then
  begin
    if stTemp <> '' then stTemp := stTemp + '/';
    stTemp := stTemp + '�μ�:' +  cmb_Depart.Text ;
  end;
  if cmb_Posi.ItemIndex > 0 then
  begin
    if stTemp <> '' then stTemp := stTemp + '/';
    stTemp := stTemp + '����:' +  cmb_Posi.Text ;
  end;
  if cmb_SearchType.ItemIndex > 0 then
  begin
    if ed_searchText.Text <> '' then
    begin
      if stTemp <> '' then stTemp := stTemp + '/';
      stTemp := stTemp + cmb_SearchType.text + ':' +  ed_searchText.Text ;
    end;
  end else
  begin
    if cmb_CardRegType.ItemIndex > 0 then
    begin
      if stTemp <> '' then stTemp := stTemp + '/';
      stTemp := stTemp + cmb_SearchType.text + ':' +  cmb_CardRegType.Text ;
    end;
  end;
  result := stTemp;
end;

initialization
  RegisterClass(TfmCardList);
Finalization
  UnRegisterClass(TfmCardList);

end.
