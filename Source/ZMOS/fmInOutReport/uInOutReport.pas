unit uInOutReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSubForm, CommandArray, Grids, BaseGrid, AdvGrid, StdCtrls,
  ComCtrls, Buttons, DB, ADODB, Gauges, ExtCtrls,iniFiles,ComObj;

type
  TfmInOutReport = class(TfmASubForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_Search: TSpeedButton;
    btn_Close: TSpeedButton;
    dt_FromDate: TDateTimePicker;
    dt_ToDate: TDateTimePicker;
    cmb_InOutGroup: TComboBox;
    sg_InOutReport: TAdvStringGrid;
    ADOQuery: TADOQuery;
    btn_Excel: TSpeedButton;
    btn_Print: TSpeedButton;
    SaveDialog1: TSaveDialog;
    pan_gauge: TPanel;
    Label4: TLabel;
    Gauge1: TGauge;
    procedure FormCreate(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure sg_InOutReportResize(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadInOutGroup;
    Function GetTitle : String;
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
  public
    { Public declarations }
  end;

var
  fmInOutReport: TfmInOutReport;

implementation
uses
  uDataModule1;

{$R *.dfm}

{ TfmInOutReport }

procedure TfmInOutReport.LoadInOutGroup;
var
  stSql : string;
begin
  cmb_InOutGroup.Clear;
  stSql := 'Select IO_GROUPNAME from TB_INOUTGROUP ';
  stSql := stSql + ' GROUP BY IO_GROUPNAME ';

  with ADOQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;

    with cmb_InOutGroup do
    begin
      While Not Eof do
      begin
        Items.Add(FindField('IO_GROUPNAME').AsString);
        Next;
      end;
      ItemIndex := 0;
    end;
  end;

end;

procedure TfmInOutReport.FormCreate(Sender: TObject);
begin
  dt_FromDate.Date := Now;
  dt_ToDate.Date := Now;
  LoadInOutGroup;
end;

procedure TfmInOutReport.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmInOutReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

end;

procedure TfmInOutReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  stOldDate : string;
  stOldGroupName : string;
  nDateCount : integer;
  nGroupCount : integer;
  nRow : integer;
begin
  GridInitialize(sg_InOutReport);
  stOldDate := '';
  stOldGroupName := '';

  stSql := 'Select a.IO_DATE,b.IO_GROUPNAME,c.DO_DOORNONAME,a.IO_COUNT from TB_INOUTCOUNT a ';
  stSql := stSql + ' INNER JOIN TB_INOUTGROUP b ';
  stSql := stSql + ' ON(a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stsql + ' AND a.AC_ECUID = b.AC_ECUID ';
  stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ) ';
  stSql := stSql + ' INNER JOIN TB_DOOR c ';
  stSql := stSql + ' ON(a.GROUP_CODE = c.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = c.AC_NODENO ';
  stSql := stsql + ' AND a.AC_ECUID = c.AC_ECUID ';
  stSql := stSql + ' AND a.DO_DOORNO = c.DO_DOORNO ) ';
  stSql := stSql + ' Where a.IO_DATE Between ''' + FormatDateTime('yyyymmdd',dt_FromDate.Date) + ''' ';
  stSql := stSql + ' AND ''' + FormatDateTime('yyyymmdd',dt_TODate.Date) + ''' ';
  if Trim(cmb_InOutGroup.Text) = '' then
  begin
    Exit;
  end;
  stSql := stSql + ' AND b.IO_GROUPNAME = ''' + cmb_InOutGroup.Text + ''' ';
  stSql := stsql + ' Order by a.IO_DATE,b.IO_GROUPNAME ';

  with ADOQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordcount < 1 then Exit;
    nRow := 1;
    With sg_InOutReport do
    begin
      //RowCount := recordcount + 1;
      While Not Eof do
      begin
        InsertRows(nRow,1);
        Cells[0,nRow] := FindField('IO_DATE').AsString ;
        Cells[1,nRow] := FindField('IO_GROUPNAME').AsString ;
        Cells[2,nRow] := FindField('DO_DOORNONAME').AsString ;
        Cells[3,nRow] := inttostr(FindField('IO_COUNT').AsInteger);
           {
        if stOldGroupName = FindField('IO_GROUPNAME').AsString then
        begin
          nGroupCount := nGroupCount + FindField('IO_COUNT').AsInteger;
        end else
        begin
          if stOldGroupName <> '' then
          begin
            InsertRows(nRow,1);
            Cells[0,nRow] := '�׷캰 �հ�';
            Cells[3,nRow] := inttostr(nGroupCount);
          end;
          nGroupCount := FindField('IO_COUNT').AsInteger;
          stOldGroupName := FindField('IO_GROUPNAME').AsString;
        end;
                 }
        if stOldDate = FindField('IO_DATE').AsString then
        begin
          nDateCount := nDateCount + FindField('IO_COUNT').AsInteger;
        end else
        begin
          if stOldDate <> '' then
          begin
            inc(nRow);
            InsertRows(nRow-1,1);
            Cells[0,nRow-1] := '��¥�� �հ�';
            Cells[3,nRow-1] := inttostr(nDateCount);
          end;
          nDateCount := FindField('IO_COUNT').AsInteger;
          stOldDate := FindField('IO_DATE').AsString;
        end;
        inc(nRow);
        Next;
      end;
      {
      InsertRows(nRow,1);
      Cells[0,nRow] := '�׷캰 �հ�';
      Cells[3,nRow] := inttostr(nGroupCount);
      }
      //InsertRows(nRow,1);
      Cells[0,nRow] := '��¥�� �հ�';
      Cells[3,nRow] := inttostr(nDateCount);

    end;
  end;

end;

procedure TfmInOutReport.btn_ExcelClick(Sender: TObject);
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
  stPrintRefPath := ini_fun.ReadString('ȯ�漳��','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('�������Ȳ������','��������','D2DInOutReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('�������Ȳ������','������ġ',6);
  ini_fun.Free;

  aFileName:='�������Ȳ������';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
      if Not ExcelPrintOut(sg_InOutReport,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
      begin
        Screen.Cursor:= crDefault;
        btn_Excel.Enabled := True;
        Exit;
      end;
      //showmessage('���ϻ��� �Ϸ�');
  end;
  Screen.Cursor:= crDefault;
  btn_Excel.Enabled := True;
end;

function TfmInOutReport.ExcelPrintOut(StringGrid: TAdvStringGrid;
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

function TfmInOutReport.GetTitle: String;
var
  stTitle : string;
begin
  stTitle := '�˻��Ⱓ : ' + FormatDateTime('yyyy-mm-dd',dt_FromDate.Date) + ' ~ ' + FormatDateTime('yyyy-mm-dd',dt_ToDate.Date) ;
  stTitle := stTitle + ' / ����Ǳ׷� : ' + cmb_InOutGroup.Text ;

  Result := stTitle;
end;

procedure TfmInOutReport.sg_InOutReportResize(Sender: TObject);
var
  nTotWidth: integer;
  nWidth : integer;
  nLeft : integer;
begin
  nTotWidth := sg_InOutReport.Width;
  nWidth := pan_gauge.Width;

  nleft := (nTotWidth - nWidth) div 2;
  pan_gauge.Left := nLeft;

end;

procedure TfmInOutReport.btn_PrintClick(Sender: TObject);
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
  stPrintRefPath := ini_fun.ReadString('ȯ�漳��','PrintRefPath',stPrintRefPath);
  stRefFileName  := ini_fun.ReadString('�溸�̷º�����','��������','D2DAlarmReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('�溸�̷º�����','������ġ',6);
  ini_fun.Free;
  
  if Not ExcelPrintOut(sg_InOutReport,stRefFileName,stSaveFileName,False,nExcelRowStart,stTitle,False,False) then
  begin
    btn_Print.Enabled := True;
    Screen.Cursor:= crDefault;
  end;
  btn_Print.Enabled := True;
  //showmessage('��� �Ϸ�');
  Screen.Cursor:= crDefault;
end;

initialization
  RegisterClass(TfmInOutReport);
Finalization
  UnRegisterClass(TfmInOutReport);

end.