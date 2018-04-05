unit uDeviceReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, ExtCtrls, Grids, BaseGrid, AdvGrid, Buttons,
  DB, ADODB, uSubForm, CommandArray,iniFiles,ComObj;

type
  TfmDeviceListReport = class(TfmASubForm)
    GroupBox1: TGroupBox;
    btn_Search: TSpeedButton;
    btn_Close: TSpeedButton;
    btn_Excel: TSpeedButton;
    sg_DeviceInfo: TAdvStringGrid;
    pan_gauge: TPanel;
    Label1: TLabel;
    Gauge1: TGauge;
    AdoQuery: TADOQuery;
    SaveDialog1: TSaveDialog;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;
    Function GetTitle : String;
  public
    { Public declarations }
  end;

var
  fmDeviceListReport: TfmDeviceListReport;

implementation
uses
  uDataModule1;
{$R *.dfm}

procedure TfmDeviceListReport.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmDeviceListReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDeviceListReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow : integer;
begin
  GridInitialize(sg_DeviceInfo);

  stSql := 'select c.LO_NAME,b.AC_MCUIP,b.AC_DEVICENAME as McuName,a.AC_ECUID, ';
  stSql := stSql + 'd.AL_ZONENAME,e.DO_DOORNONAME as door1Name,f.DO_DOORNONAME as door2Name ';
  stSql := stSql + 'from TB_ACCESSDEVICE a ';
  stSql := stSql + 'Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + 'ON(a.AC_NODENO = b.AC_NODENO and  b.AC_GUBUN = ''0'') ';
  stSql := stSql + 'Left Join TB_LOCATION c ';
  stSql := stSql + 'ON(a.LO_DONGCODE = c.LO_DONGCODE and c.LO_GUBUN = ''0'') ';
  stSql := stSql + 'Left Join TB_ALARMDEVICE d ';
  stSql := stSql + 'ON(a.AC_NODENO = d.AC_NODENO and a.AC_ECUID = d.AC_ECUID) ';
  stSql := stSql + 'Left Join TB_DOOR e ';
  stSql := stSql + 'ON(a.AC_NODENO = e.AC_NODENO and a.AC_ECUID = e.AC_ECUID and e.DO_DOORNO = ''1'') ';
  stSql := stSql + 'Left Join TB_DOOR f ';
  stSql := stSql + 'ON(a.AC_NODENO = f.AC_NODENO and a.AC_ECUID = f.AC_ECUID and f.DO_DOORNO = ''2'') ';

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
      showmessage('기기내역이 없습니다.');
      Exit;
    end;
    First;
    nRow := 1;
    sg_DeviceInfo.RowCount := RecordCount + 1;
    While Not Eof do
    begin
      with sg_DeviceInfo  do
      begin
        cells[0,nRow] := FindField('LO_NAME').AsString;
        cells[1,nRow] := FindField('AC_MCUIP').AsString;
        cells[2,nRow] := FindField('McuName').AsString;
        cells[3,nRow] := FindField('AC_ECUID').AsString;
        cells[4,nRow] := FindField('AL_ZONENAME').AsString;
        cells[5,nRow] := FindField('door1Name').AsString;
        cells[6,nRow] := FindField('door2Name').AsString;
      end;
      nRow := nRow + 1;
      Next;
    end;
  end;
end;

procedure TfmDeviceListReport.btn_ExcelClick(Sender: TObject);
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
  stRefFileName  := ini_fun.ReadString('장비리스트','참조파일','DeviceListReport.xls');
  stRefFileName := stPrintRefPath + stRefFileName;
  nExcelRowStart := ini_fun.ReadInteger('장비리스트','시작위치',6);
  ini_fun.Free;

  aFileName:='장비리스트';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if SaveDialog1.FileName <> '' then
      if Not ExcelPrintOut(sg_DeviceInfo,stRefFileName,stSaveFileName,True,nExcelRowStart,stTitle,False,False) then
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

function TfmDeviceListReport.ExcelPrintOut(StringGrid: TAdvStringGrid;
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

function TfmDeviceListReport.GetTitle: String;
begin
  result := '';

end;

initialization
  RegisterClass(TfmDeviceListReport);
Finalization
  UnRegisterClass(TfmDeviceListReport);

end.
