unit uDeviceMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, uSubForm, CommandArray, StdCtrls;

type
  TfmDeviceMap = class(TfmASubForm)
    ImageMap: TImage;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    DeviceNameStaticText: TStaticText;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadMap(aDeviceID,aDeviceName,aDeviceType:string);
    Function LoadLocationMap(aBuildingCode,aFloorCode,aAreaCode:string):Boolean;
  public
    { Public declarations }
    bActive : Boolean;
    DeviceID : string;  //00310000041
    DeviceName : string;
    DeviceType : string;
    L_stCreateForm : string;
    Procedure MapFree;
  end;

var
  fmDeviceMap: TfmDeviceMap;

implementation
uses uDataModule1;
{$R *.dfm}

procedure TfmDeviceMap.FormActivate(Sender: TObject);
begin
  LoadMap(DeviceID,DeviceName,DeviceType);
  bActive := True;
end;

procedure TfmDeviceMap.LoadMap(aDeviceID, aDeviceName, aDeviceType: string);
var
  stSql : string;
  stImage : string;
  stBuildingCode,stFloorCode,stAreaCode : string;
  nTotW,nTotH,nPosX,nPosY:integer;
  nCurTotWidth,nCurTotHeight : integer;
  nCurX,nCurY : integer;
  bResult : Boolean;
begin
  stImage := ExeFolder + '\..\Resource\';
  if aDeviceType = '3' then //Door
  begin
    stImage := stImage + DOORBMP;
    stSql := 'select * from TB_DOOR ';
    stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(copy(aDeviceID,1,3)));
    stSql := stSql + ' AND AC_ECUID = '''  + Copy(aDeviceID,4,2) + ''' ';
    stSql := stSql + ' AND DO_DOORNO = ''' + copy(aDeviceID,6,1) + ''' ';
  end else if aDeviceType = '4' then // Alarm
  begin
    stImage := stImage + ALARMBMP;
    stSql := 'select * from TB_ALARMDEVICE ';
    stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(copy(aDeviceID,1,3)));
    stSql := stSql + ' AND AC_ECUID = '''  + Copy(aDeviceID,4,2) + ''' ';
//    stSql := stSql + ' AND AL_DEVICENO = ' + inttostr(strtoint(copy(aDeviceID,13,3))) + ' ';
  end else if aDeviceType = '5' then // Food
  begin
    stImage := stImage + FOODBMP;
    stSql := 'select * from TB_FOOD ';
    stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
    stSql := stSql + ' AND AC_NODENO = ' + inttostr(strtoint(copy(aDeviceID,1,3)));
    stSql := stSql + ' AND AC_ECUID = '''  + Copy(aDeviceID,4,2) + ''' ';
    stSql := stSql + ' AND FO_DOORNO = ''' + copy(aDeviceID,6,1) + ''' ';
  end;
  with ADOQuery1 do
  begin
    Close;
    Sql.Clear;
    Sql.text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then
    begin
      showmessage('�ش� ��⿡ ���� ��ġ������ �����ϴ�.');
      Exit;
    end;
    stBuildingCode := FindField('LO_DONGCODE').AsString ;
    stFloorCode := FindField('LO_FLOORCODE').AsString ;
    stAreaCode := FindField('LO_AREACODE').AsString ;
    if aDeviceType = '3' then //Door
    begin
      nTotW := FindField('DO_TOTWIDTH').AsInteger;
      nTotH := FindField('DO_TOTHEIGHT').AsInteger;
      nPosX := FindField('DO_CURX').AsInteger;
      nPosY := FindField('DO_CURY').AsInteger;
    end else if aDeviceType = '4' then // Alarm
    begin
      nTotW := FindField('AL_TOTWIDTH').AsInteger;
      nTotH := FindField('AL_TOTHEIGHT').AsInteger;
      nPosX := FindField('AL_CURX').AsInteger;
      nPosY := FindField('AL_CURY').AsInteger;
    end else if aDeviceType = '5' then // Alarm
    begin
      nTotW := FindField('FO_TOTWIDTH').AsInteger;
      nTotH := FindField('FO_TOTHEIGHT').AsInteger;
      nPosX := FindField('FO_CURX').AsInteger;
      nPosY := FindField('FO_CURY').AsInteger;
    end;
  end;
  bResult := LoadLocationMap(stBuildingCode,stFloorCode,stAreaCode);
  if Not bResult then
  begin
    showmessage('�ش� ��⿡ ���� Map ������ �����ϴ�.');
    Exit;
  end;
  if FileExists(stImage) then
  Image1.Picture.LoadFromFile(stImage);
  Image1.Visible := True;
  Image1.Top := 0;
  Image1.Left := 0;

  nCurTotWidth := ImageMap.Width;
  nCurTotHeight := ImageMap.Height;

  if (nTotW > 0) and (nTotH > 0) then
  begin
    nCurX := (nPosX * nCurTotWidth ) Div  nTotW ;
    nCurY := (nPosY * nCurTotHeight ) Div nTotH;
  end;

  Image1.Top := nCurY;
  Image1.Left := nCurX;
  Image1.Hint := aDeviceName;
  DeviceNameStaticText.Top := Image1.Top + Image1.Height + 2;
  DeviceNameStaticText.Left := Image1.Left;
  DeviceNameStaticText.Caption := aDeviceName;
  DeviceNameStaticText.Visible := True;

end;

function TfmDeviceMap.LoadLocationMap(aBuildingCode, aFloorCode,
  aAreaCode: string): Boolean;
var
 stSql : string;
 stImage : string;
begin
  result := False;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' Where LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND LO_AREACODE = ''' + aAreaCode + ''' ';

  with ADOQuery1 do
  begin

    Close;
    Sql.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then exit;
    if FindField('LO_IMAGEUSE').AsString <> 'Y' then Exit;

    if DBType = 'MSSQL' then
    begin
      JPEGLoadFromDB(FieldByName('LO_CADIMAGE'), ImageMap);
    end else
    begin
      stImage := FindField('LO_CADIMAGE').AsString;
      if FileExists(stImage) then
        ImageMap.Picture.LoadFromFile(stImage);
    end;
  end;

  result := True;
end;

procedure TfmDeviceMap.MapFree;
begin
Close;
end;

procedure TfmDeviceMap.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    if L_stCreateForm <> 'TfmAlarmHistory' then
    begin
      self.FindClassForm(L_stCreateForm).FindCommand('COMMON').Params.Values['COMMAND'] := 'DeviceMap';
      self.FindClassForm(L_stCreateForm).FindCommand('COMMON').Params.Values['VALUE'] := 'FALSE';
      self.FindClassForm(L_stCreateForm).FindCommand('COMMON').Execute;
    end;

end;

procedure TfmDeviceMap.Timer1Timer(Sender: TObject);
begin
  Image1.Visible := Not Image1.Visible;
  DeviceNameStaticText.Visible := Not DeviceNameStaticText.Visible;

end;

procedure TfmDeviceMap.FormResize(Sender: TObject);
begin
  if bActive then
  begin
    LoadMap(DeviceID,DeviceName,DeviceType);
  end;

end;

procedure TfmDeviceMap.FormCreate(Sender: TObject);
begin
  bActive := False;

end;

end.