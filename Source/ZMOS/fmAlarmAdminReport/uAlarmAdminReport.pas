unit uAlarmAdminReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ComCtrls, Buttons, uSubForm,
  CommandArray, FR_DSet, FR_DBSet, FR_Class, DB, ADODB;

type
  TfmAlarmAdminReport = class(TfmASubForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_Search: TSpeedButton;
    btn_FileSave: TSpeedButton;
    btn_Print: TSpeedButton;
    btn_Close: TSpeedButton;
    dt_FromDate: TDateTimePicker;
    dt_ToDate: TDateTimePicker;
    cmb_Alaram: TComboBox;
    sg_AlarmReport: TAdvStringGrid;
    AdoQuery: TADOQuery;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_FileSaveClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure btn_PrintClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand0Execute(Command: TCommand;
      Params: TStringList);
  private
    DeviceCodeList : TStringList;
    { Private declarations }
    procedure GetAlarmName(cmb_box : TComboBox);
  public
    { Public declarations }
  end;

var
  fmAlarmAdminReport: TfmAlarmAdminReport;

implementation

uses
  uDataModule1,
  uLomosUtil;

{$R *.dfm}

procedure TfmAlarmAdminReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

  DeviceCodeList.Free;
end;

procedure TfmAlarmAdminReport.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmAlarmAdminReport.GetAlarmName(cmb_box: TComboBox);
var
  stSql:string;
begin
  cmb_box.Clear;
  DeviceCodeList.Clear;
  cmb_box.Items.Add('전체');
  DeviceCodeList.Add('');
  cmb_box.ItemIndex := 0;

  stSql := 'select a.AL_ZONENAME,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID  ';
  stSql := stSql + ' from TB_ALARMDEVICE a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE b ';
      stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO  ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';
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
      cmb_Box.Items.Add(FindField('AL_ZONENAME').AsString);
      DeviceCodeList.Add(FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').AsString);
      Next;
    end;
  end;

end;

procedure TfmAlarmAdminReport.FormCreate(Sender: TObject);
begin
  DeviceCodeList := TStringList.Create;
end;

procedure TfmAlarmAdminReport.FormShow(Sender: TObject);
begin
  dt_FromDate.Date := Now;
  dt_ToDate.Date := Now;
  GetAlarmName(cmb_Alaram);
  if G_nSearchIndex = 0 then btn_SearchClick(self);
end;

procedure TfmAlarmAdminReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow: integer;
begin
  GridInitialize(sg_AlarmReport);
  stSql := 'select a.*,b.AL_ZONENAME from TB_SYSTEMLOG a ';
  stSql := stSql + ' Left Join TB_ALARMDEVICE b ';
  stSql := stSql + ' ON(a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ) ';
  if Not IsMaster then //Master 가 아니면
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE c ';
      stSql := stSql + ' ON (b.GROUP_CODE = c.GROUP_CODE ';
      stSql := stSql + ' AND b.AC_NODENO = c.AC_NODENO ';
      stSql := stSql + ' AND b.AC_ECUID = c.AC_ECUID ';
      stSql := stSql + ' AND c.AD_USERID = ''' + Master_ID + ''') ';
    end;
  end;
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.AC_TYPE = ''2'' ';
  stSql := stSql + ' AND a.SY_DATE Between ''' + FormatDateTime('yyyymmdd',dt_FromDate.Date) + ''' ';
  stSql := stSql + ' AND ''' + FormatDateTime('yyyymmdd',dt_ToDate.Date) + ''' ';

  
  if cmb_Alaram.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND b.AC_NODENO = ' + inttostr(strtoint(copy(DeviceCodeList.Strings[cmb_Alaram.ItemIndex],1,3))) ;
    stSql := stSql + ' AND b.AC_ECUID = ''' + copy(DeviceCodeList.Strings[cmb_Alaram.ItemIndex],4,2) + ''' ';
  end;
  stSql := stSql + ' order by a.SY_DATE,a.SY_TIME ';

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
    if recordCount < 1 then
    begin
      showmessage('조회 데이터가 없습니다.');
      Exit;
    end;
    sg_AlarmReport.RowCount := RecordCount + 1;
    nRow := 1;
    while Not Eof do
    begin
      with sg_AlarmReport do
      begin
        Cells[0,nRow] := FindField('SY_DATE').AsString;
        Cells[1,nRow] := FindField('SY_TIME').AsString;
        Cells[2,nRow] := FindField('SY_OPERATOR').AsString;
        Cells[3,nRow] := FindField('SY_CLIENTIP').AsString;
        Cells[4,nRow] := FindField('AL_ZONENAME').AsString;
        Cells[5,nRow] := FindField('SY_LOGDATA').AsString;
      end;
      inc(nRow);
      Next;
    end;
  end;
end;

procedure TfmAlarmAdminReport.btn_FileSaveClick(Sender: TObject);
var
  aFileName: String;
  sDate: String;
  eDate: String;
begin
  Screen.Cursor:= crHourGlass;
  aFileName:='경비구역 운영보고서';
  SaveDialog1.DefaultExt:= 'CSV';
  SaveDialog1.Filter := 'CSV files (*.CSV)|*.CSV';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    sg_AlarmReport.SaveToCSV(SaveDialog1.FileName);
  end;
  Screen.Cursor:= crDefault;

end;

procedure TfmAlarmAdminReport.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if AnsiCompareText(ParName, 'aDAY') = 0 then
    ParValue := '검색기간 : '+ FormatdateTime('yyyy-mm-dd',dt_FromDate.Date) + '~' + FormatdateTime('yyyy-mm-dd',dt_ToDate.Date);

end;

procedure TfmAlarmAdminReport.btn_PrintClick(Sender: TObject);
begin
  if Not AdoQuery.Active then
  begin
    showmessage('출력할 자료가 없습니다.');
    Exit;
  end;
  frReport1.ShowReport;

end;

procedure TfmAlarmAdminReport.CommandArrayCommandsTCommand0Execute(
  Command: TCommand; Params: TStringList);
begin
//권한부여
end;

initialization
  RegisterClass(TfmAlarmAdminReport);
Finalization
  UnRegisterClass(TfmAlarmAdminReport);

end.
