unit uNewAlarmReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ComCtrls, Buttons, FR_DSet,
  FR_DBSet, FR_Class, DB, ADODB, uSubForm, CommandArray, Menus,iniFiles,ComObj,
  Gauges, ExtCtrls,ActiveX, AdvObj;

type
  TfmNewAlarmReport = class(TfmASubForm)
    GroupBox1: TGroupBox;
    sg_AlarmReport: TAdvStringGrid;
    AdoQuery: TADOQuery;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    PopupMenu_Alarm: TPopupMenu;
    N12: TMenuItem;
    pan_gauge: TPanel;
    Label5: TLabel;
    Gauge1: TGauge;
    SaveDialog1: TSaveDialog;
    GroupBox2: TGroupBox;
    dt_FromDate: TDateTimePicker;
    dt_ToDate: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    cmb_Position: TComboBox;
    Label4: TLabel;
    cmb_AlarmType: TComboBox;
    GroupBox4: TGroupBox;
    btn_Close: TSpeedButton;
    btn_Print: TSpeedButton;
    btn_Search: TSpeedButton;
    Label1: TLabel;
    cmb_ModeState: TComboBox;
    cmb_AlarmGroup: TComboBox;
    Label2: TLabel;
    Label6: TLabel;
    cmb_DeviceType: TComboBox;
    btn_Excel: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_FileSaveClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure btn_SearchClick(Sender: TObject);
    procedure CommandArrayCommandsTCommand0Execute(Command: TCommand;
      Params: TStringList);
    procedure btn_ExcelClick(Sender: TObject);
    procedure sg_AlarmReportResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_AlarmGroupChange(Sender: TObject);
  private
    DeviceCodeList : TStringList;
    AlarmCodeList : TStringList;
    { Private declarations }
    procedure AlarmEventStateCode2Setting(aFromDate,aToDate:string);
    procedure GetAlarmName(cmb_box : TComboBox);
    procedure GetAlarmType(cmb_box : TComboBox;aAlarmGroup:string);
    procedure GetAlarmGroup(cmb_box : TComboBox);

    Function UpdateTB_AlarmEventStatusCode2(aGROUP_CODE,aAL_DATE,aAL_TIME,
                                     aAC_NODENO,aAC_ECUID,aAL_MSGNO,aNewState : string ):Boolean;

    Function GetTitle : String;
    Function ExcelPrintOut(StringGrid:TAdvStringGrid;refFileName,SaveFileName:String;FileOut:Boolean;ExcelRowStart:integer;stTitle:string;bRowHeader,bColHeader:Boolean):Boolean;

  public
    { Public declarations }
    procedure AlarmIDView(aAlarmID:string);
  end;

var
  fmNewAlarmReport: TfmNewAlarmReport;

implementation

uses
    uDataModule1,
    uLomosUtil, uMssql, uPostGreSql, uMDBSql, uFireBird,
    UCommonModule;

{$R *.dfm}

procedure TfmNewAlarmReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DeviceCodeList.Free;
  AlarmCodeList.Free;
  Action := caFree;

end;

procedure TfmNewAlarmReport.FormCreate(Sender: TObject);
begin
  DeviceCodeList := TStringList.Create;
  AlarmCodeList := TStringList.Create;

end;

procedure TfmNewAlarmReport.btn_CloseClick(Sender: TObject);
begin
  Close;

end;

procedure TfmNewAlarmReport.btn_FileSaveClick(Sender: TObject);
var
  aFileName: String;
  sDate: String;
  eDate: String;
begin
  Screen.Cursor:= crHourGlass;
  aFileName:='경보 이력 보고서';
  SaveDialog1.DefaultExt:= 'CSV';
  SaveDialog1.Filter := 'Text files (*.CSV)|*.CSV';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    sg_AlarmReport.SaveToCSV(SaveDialog1.FileName);
  end;
  Screen.Cursor:= crDefault;

end;

procedure TfmNewAlarmReport.btn_PrintClick(Sender: TObject);
begin
  if Not AdoQuery.Active then
  begin
    showmessage('조회 후 출력 가능합니다.');
    Exit;
  end;
  frReport1.ShowReport;

end;

procedure TfmNewAlarmReport.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
 if AnsiCompareText(ParName, 'aDAY') = 0 then
    ParValue := '검색기간 : '+ FormatdateTime('yyyy-mm-dd',dt_FromDate.Date) + '~' + FormatdateTime('yyyy-mm-dd',dt_ToDate.Date);

end;

procedure TfmNewAlarmReport.GetAlarmName(cmb_box: TComboBox);
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
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
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

procedure TfmNewAlarmReport.GetAlarmType(cmb_box: TComboBox;aAlarmGroup:string);
var
  stSql:string;
begin
  cmb_box.Clear;
  AlarmCodeList.Clear;
  cmb_box.Items.Add('전체');
  AlarmCodeList.Add('');
  cmb_box.ItemIndex := 0;

  stSql := ' Select a.GROUP_CODE,a.AL_ALARMSTATUSCODE,a.AL_ALARMNAME,';
  stSql := stSql + ' a.AL_ALARMVIEW,a.AL_ALARMGRADE,a.AL_ALARMSOUND ';
  stSql := stSql + ' from TB_ALARMSTATUSCODE a';
  if Trim(aAlarmGroup) <> '' then
  begin
    stSql := stSql + ' INNER Join TB_ALARMCODEGROUP b ';
    stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
    stSql := stSql + ' AND a.AL_ALARMSTATUSCODE = b.AL_ALARMSTATUSCODE ';
    stSql := stSql + ' AND b.AG_CODE = ''' + aAlarmGroup + ''') ';
  end;
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';

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
      cmb_Box.Items.Add(FindField('AL_ALARMNAME').AsString);
      AlarmCodeList.Add(FindField('AL_ALARMSTATUSCODE').AsString);
      Next;
    end;
  end;

end;

procedure TfmNewAlarmReport.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow : integer;
  stNodeNo,stEcuID,stAlarmType:string;
  stModeState : string;
  stDeviceType : string;
  stWhere : string;
  i : integer;
begin

  AlarmEventStateCode2Setting(FormatDateTime('yyyymmdd',dt_FromDate.Date),FormatDateTime('yyyymmdd',dt_ToDate.Date));

  GridInitialize(sg_AlarmReport);

  stNodeNo:='';
  stEcuID:= '';
  stAlarmType:= '';
  if cmb_Position.ItemIndex > 0 then
  begin
    stNodeNo := inttostr(strtoint(copy(DeviceCodeList.Strings[cmb_Position.ItemIndex],1,3)));
    stEcuID := copy(DeviceCodeList.Strings[cmb_Position.ItemIndex],4,2) ;
  end;
  if cmb_AlarmType.ItemIndex > 0 then
  begin
    stAlarmType := AlarmCodeList.Strings[cmb_AlarmType.ItemIndex] ;
  end;

  if DBTYPE = 'MSSQL' then
     stSql := MSSQL.SelectNewTB_ALARMEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                          FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stAlarmType)
  else if DBTYPE = 'PG' then
     stSql := PostGreSql.SelectNewTB_ALARMEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                          FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stAlarmType)
  else if DBTYPE = 'MDB' then
     stSql := MDBSql.SelectNewTB_ALARMEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                          FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stAlarmType)
  else if DBTYPE = 'FB' then
     stSql := FireBird.SelectNewTB_ALARMEVENTFromDayToDay(FormatDateTime('yyyymmdd',dt_FromDate.Date),
                          FormatDateTime('yyyymmdd',dt_ToDate.Date),stNodeNo,stEcuID,stAlarmType)
  else Exit;

  if cmb_ModeState.ItemIndex = 1 then stSql := stSql + ' AND a.AL_ALARMMODECODE = ''A'' '
  else if cmb_ModeState.ItemIndex = 2 then stSql := stSql + ' AND a.AL_ALARMMODECODE = ''D'' ';

  if cmb_DeviceType.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND a.AL_ALARMDEVICETYPECODE = ''' + cmb_DeviceType.Text + ''' ';
  end;

  if cmb_AlarmType.ItemIndex < 1 then
  begin
    if cmb_AlarmGroup.ItemIndex > 0 then
    begin
      stWhere := '';
      for i := 0 to AlarmCodeList.Count - 1 do
      begin
        if stWhere = '' then stWhere := stWhere + ' AND ( '
        else stWhere := stWhere + ' OR ';
        stWhere := stWhere + ' a.AL_STATUSCODE2 = ''' + AlarmCodeList.Strings[i] + ''' ' ;
      end;
      if stWhere <> '' then
      begin
        stWhere := stWhere + ') ';
        stSql := stSql + stWhere;
      end;
    end;
  end;
  stSql := stSql + ' order by c.AL_ZONENAME DESC,a.AL_DATE DESC,a.AL_TIME DESC ';

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
      //showmessage('조회할 데이터가 없습니다.');
      Exit;
    end;
    First;
    nRow := 1;
    sg_AlarmReport.RowCount := RecordCount + 1;
    While Not Eof do
    begin
      with sg_AlarmReport  do
      begin
        cells[0,nRow] := copy(FindField('AL_DATE').AsString,1,4) + '-' + copy(FindField('AL_DATE').AsString,5,2)
                         + '-' + copy(FindField('AL_DATE').AsString,7,2)
                         + ' ' + copy(FindField('AL_TIME').AsString,1,2)
                         + ':' + copy(FindField('AL_TIME').AsString,3,2)
                         + ':' + copy(FindField('AL_TIME').AsString,5,2);   //발생시각
        if FindField('AL_ZONENAME').AsString <> '' then
          cells[1,nRow] := FindField('AL_ZONENAME').AsString
        else cells[1,nRow] := FindField('AC_DEVICENAME').AsString;

        cells[2,nRow] := FindField('AL_ZONENO').AsString;
        //cells[3,nRow] := FindField('AL_ALARMSTATUSCODE').AsString;    
        cells[3,nRow] := FindField('AL_ALARMDEVICETYPECODE').AsString;
        cells[4,nRow] := FindField('AC_ECUID').AsString;
        cells[5,nRow] := FindField('AL_SUBADDR').AsString;
        if FindField('AL_ALARMMODECODE').AsString = 'D' then cells[6,nRow] := '해제모드'
        else if FindField('AL_ALARMMODECODE').AsString = 'A' then cells[6,nRow] := '경계모드';
//        cells[4,nRow] := FindField('AL_ALARMMODECODE').AsString;
        if FindField('AL_ALARMNAME').AsString <> '' then
          cells[7,nRow] := FindField('AL_ALARMNAME').AsString + '(' + FindField('AL_OPERATOR').AsString + ')'
        else cells[7,nRow] := FindField('AL_ALARMSTATUSCODE').AsString + '(' + FindField('AL_OPERATOR').AsString + ')';
        cells[8,nRow] := FindField('AL_CHECKCODE').AsString;
        cells[9,nRow] := FindField('AL_CHECKMSG').AsString;
        cells[10,nRow] := FindField('AL_UPDATEOPERATOR').AsString;

      end;
      nRow := nRow + 1;
      Next;
    end;
  end;

end;

procedure TfmNewAlarmReport.CommandArrayCommandsTCommand0Execute(
  Command: TCommand; Params: TStringList);
begin
//권한부여
end;

procedure TfmNewAlarmReport.btn_ExcelClick(Sender: TObject);
var
  stRefFileName,stSaveFileName:String;
  stPrintRefPath : string;
  nExcelRowStart:integer;
  ini_fun : TiniFile;
  aFileName : string;
  stTitle : string;
begin
  btn_Excel.Enabled := False;
  btn_Search.Enabled := False;
  Screen.Cursor:= crHourGlass;
  if SaveDialog1.Execute then
  begin
    stSaveFileName := SaveDialog1.FileName;
    if stSaveFileName <> '' then
    begin
      sg_AlarmReport.SaveToCSV(stSaveFileName);
    end;
  end;
  btn_Excel.Enabled := True;
  btn_Search.Enabled := True;
  Screen.Cursor:= crDefault;
end;

function TfmNewAlarmReport.GetTitle: String;
var
  stTitle : string;
begin
  stTitle := '검색기간 : ' + FormatDateTime('yyyy-mm-dd',dt_FromDate.Date) + ' ~ ' + FormatDateTime('yyyy-mm-dd',dt_ToDate.Date) ;
  if cmb_Position.Text <> '' then
    stTitle := stTitle + ' / 방범구역 : ' + cmb_Position.Text ;
  if cmb_AlarmType.Text <> '' then
    stTitle := stTitle + ' / 경보종류 : ' + cmb_AlarmType.Text ;

  Result := stTitle;

end;

function TfmNewAlarmReport.ExcelPrintOut(StringGrid: TAdvStringGrid;
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

procedure TfmNewAlarmReport.sg_AlarmReportResize(Sender: TObject);
var
  nTotWidth: integer;
  nWidth : integer;
  nLeft : integer;
begin
  nTotWidth := sg_AlarmReport.Width;
  nWidth := pan_gauge.Width;

  nleft := (nTotWidth - nWidth) div 2;
  pan_gauge.Left := nLeft;

end;

procedure TfmNewAlarmReport.FormShow(Sender: TObject);
begin
  dt_FromDate.Date := Now;
  dt_ToDate.Date := Now;
  GetAlarmName(cmb_Position);
  GetAlarmGroup(cmb_AlarmGroup);
  GetAlarmType(cmb_AlarmType,'');

  if G_nSearchIndex = 0 then btn_SearchClick(self);

end;

procedure TfmNewAlarmReport.GetAlarmGroup(cmb_box: TComboBox);
var
  stSql:string;
begin
  cmb_box.Clear;
  cmb_box.Items.Add('전체');
  cmb_box.ItemIndex := 0;

  stSql := ' Select AG_CODE from TB_ALARMCODEGROUP ';
  stSql := stSql + ' Group by AG_CODE ';

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
      cmb_Box.Items.Add(FindField('AG_CODE').AsString);
      Next;
    end;
  end;
end;

procedure TfmNewAlarmReport.cmb_AlarmGroupChange(Sender: TObject);
begin
  if cmb_AlarmGroup.ItemIndex > 0 then
    GetAlarmType(cmb_AlarmType,cmb_AlarmGroup.Text)
  else GetAlarmType(cmb_AlarmType,'');

end;

procedure TfmNewAlarmReport.AlarmEventStateCode2Setting(aFromDate,
  aToDate: string);
var
  stSql : string;
  stNewState : string;
  nTempIndex : integer;
  TempAdoQuery : TADOQuery;
begin
  stSql := ' Select * from TB_ALARMEVENT ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AL_DATE BETWEEN ''' + aFromDate + ''' ';
  stSql := stSql + ' AND ''' + aToDate + ''' ';
  stSql := stSql + ' AND ( ( AL_STATUSCODE2 is NULL ) OR ( AL_STATUSCODE2 = '''' ) ) ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnectionEVENT;
    TempAdoQuery.DisableControls;
    with TempAdoQuery  do
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
      pan_gauge.Visible := True;
      Label5.caption := '데이터 정리중입니다. ';
      Gauge1.MaxValue := recordCount;
      Gauge1.Progress := 0;
      While Not Eof do
      begin
        stNewState := FindField('AL_ALARMSTATUSCODE').AsString;
        if FindField('AL_ALARMSTATUSCODE').AsString = '00' then
        begin
          //Mode Change StateCode
          nTempIndex := AlarmModeNotCardList.IndexOf(FindField('AL_OPERATOR').AsString);
          if nTempIndex > -1 then
          begin
            if FindField('AL_ALARMMODECODE').AsString = 'A' then
              stNewState := TAlarmStatusCode(AlarmModeNotCardList.Objects[nTempIndex]).ALARMSTATUSCODE
            else stNewState := TAlarmStatusCode(AlarmModeNotCardList.Objects[nTempIndex]).DISALARMSTATUSCODE;
          end else
          begin
            if FindField('AL_ALARMMODECODE').AsString = 'A' then stNewState := 'A1'
            else stNewState := 'C1';
          end;
        end else if isDigit(FindField('AL_ZONENO').AsString) then
        begin
          //Alarm StateCode
          nTempIndex := ZoneDetectList.IndexOf(FindField('AL_ALARMSTATUSCODE').AsString);
          if nTempIndex < 0 then
          begin
            stNewState := 'Z' + FindField('AL_ZONESTATE').AsString;
          end;
        end;
        UpdateTB_AlarmEventStatusCode2(FindField('GROUP_CODE').AsString,
                                       FindField('AL_DATE').AsString,
                                       FindField('AL_TIME').AsString,
                                       inttostr(FindField('AC_NODENO').AsInteger),
                                       FindField('AC_ECUID').AsString,
                                       FindField('AL_MSGNO').AsString,
                                       stNewState
                                       );

        Gauge1.Progress := Gauge1.Progress + 1;
        Application.ProcessMessages;
        Next;
      end;
      pan_gauge.Visible := False;
      Label5.Visible := True;
    end;
  Finally
    TempAdoQuery.EnableControls;
    TempAdoQuery.Free;
    CoUninitialize;
  End;


end;

function TfmNewAlarmReport.UpdateTB_AlarmEventStatusCode2(aGROUP_CODE,
  aAL_DATE, aAL_TIME, aAC_NODENO, aAC_ECUID, aAL_MSGNO,
  aNewState: string): Boolean;
var
  stSql : string;
begin
  stSql := ' Update TB_ALARMEVENT set AL_STATUSCODE2 = ''' + aNewState + ''' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + aGROUP_CODE + ''' ';
  stSql := stSql + ' AND AL_DATE = ''' + aAL_DATE + ''' ';
  stSql := stSql + ' AND AL_TIME = ''' + aAL_TIME + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aAC_NODENO + ' ';
  stSql := stSql + ' AND AC_ECUID = ''' + aAC_ECUID + ''' ';
  stSql := stSql + ' AND AL_MSGNO = ''' + aAL_MSGNO + ''' ';

  result := DataModule1.ProcessEventExecSQL(stSql);
end;

procedure TfmNewAlarmReport.AlarmIDView(aAlarmID: string);
var
  nAlarmIndex : integer;
begin
  nAlarmIndex := DeviceCodeList.IndexOf(aAlarmID);

  if nAlarmIndex < 0 then Exit;
  cmb_Position.ItemIndex := nAlarmIndex;
  btn_SearchClick(self);

end;

initialization
  RegisterClass(TfmNewAlarmReport);
Finalization
  UnRegisterClass(TfmNewAlarmReport);

end.
