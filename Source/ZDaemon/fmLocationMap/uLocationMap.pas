unit uLocationMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB,uSubForm, CommandArray, Menus, StdCtrls,
  uDataModule1;

type
  TfmLocationMap = class(TfmASubForm)
    ImageMap: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    ADOQuery1: TADOQuery;
    PopupMenu_Door: TPopupMenu;
    pm_modechange: TMenuItem;
    pm_OpenMode: TMenuItem;
    pm_OperateMode: TMenuItem;
    pm_StateCheck: TMenuItem;
    pm_DoorOpen: TMenuItem;
    PopupMenu_Alarm: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image65: TImage;
    Image66: TImage;
    Image67: TImage;
    Image68: TImage;
    Image69: TImage;
    Image70: TImage;
    Image71: TImage;
    Image72: TImage;
    Image73: TImage;
    Image74: TImage;
    Image75: TImage;
    Image76: TImage;
    Image77: TImage;
    Image78: TImage;
    Image79: TImage;
    Image80: TImage;
    Image81: TImage;
    Image82: TImage;
    Image83: TImage;
    Image84: TImage;
    Image85: TImage;
    Image86: TImage;
    Image87: TImage;
    Image88: TImage;
    Image89: TImage;
    Image90: TImage;
    Image91: TImage;
    Image92: TImage;
    Image93: TImage;
    Image94: TImage;
    Image95: TImage;
    Image96: TImage;
    Image97: TImage;
    Image98: TImage;
    Image99: TImage;
    Image100: TImage;
    Image101: TImage;
    Image102: TImage;
    Image103: TImage;
    Image104: TImage;
    mn_AlarmConfirm: TMenuItem;
    N2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pm_OpenModeClick(Sender: TObject);
    procedure pm_OperateModeClick(Sender: TObject);
    procedure pm_StateCheckClick(Sender: TObject);
    procedure pm_DoorOpenClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure mn_AlarmConfirmClick(Sender: TObject);
  private
    L_bFirst : Boolean;
    { Private declarations }
    Function MapLoad(aBuildingCode, aFloorCode,aSectorCode:string):Boolean;
    procedure SetDevice(aImage:TImage;aType,aName,aXPosition,aYPosition,aXSize,aYSize:string;
                        dmDeviceManageMode : TDoorManageMode;
                        dsDoorState        : TDoorState;
                        dlDoorLockState    : TDoorLockState;
                        dpDoorPNMode       : TDoorPNMode;
                        wmDeviceWatchmode  : TWatchMode;
                        aeDeviceAlarmEvent : TAlarmEventState;
                        nDevicePos:integer;bFirst :Boolean = True);
    procedure ImageStateChange(aImage:TImage;aType,aLastMode,aLastState,aLastPosi:string);
    Function TravelImageItem(aImage:string):TImage;

    Function  MDIForm(FormName:string):TForm;
    procedure MapStateRefresh;
    procedure AlaramStateChange(aNodeNo, aEcuID, aZoneNo, aAlarmMode,
      aWarning: string);
  public
    bActive : Boolean;
    DeviceNameList:TStringList;
    LocationDeviceList:TStringList;
    LocationImageList : TStringList;
    aBuildingCode : string;
    aFloorCode : string;
    aSectorCode : string;
    aNodeNO : string;
    aMCUID : string;
    aECUID : string;
    aSeq : string;
    L_stCreateForm : string;
    { Public declarations }
    procedure LocationMapShow(bFirst:Boolean= True);
    Procedure MapFree;
    procedure DeviceAction(aActionDeviceID : string);

    procedure DoorStateChange(NodeNo : integer;aEcuID,aDoorNo:string;
                                  aDoorManageType:TDoorManageMode;
                                  aDoorPNType:TDoorPNMode;
                                  aDoorStateType:TDoorState;
                                  aDoorLockType:TDoorLockState);
    procedure AlarmModeChanged(NodeNo:integer;aEcuID:string;aWachMode:TWatchMode);
    procedure DeviceAlarmEventProcess(NodeNo:integer;ECUID:string;aAlaramState:TAlarmEventState);




  end;

var
  fmLocationMap: TfmLocationMap;

implementation

uses
  uLomosUtil,
  uMonitoring,
  uDeviceModule;

{$R *.dfm}

procedure TfmLocationMap.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Try
      self.FindSubForm('Main').FindCommand('LOCATIONMAP').Params.Values['VALUE'] := 'FALSE';
      self.FindSubForm('Main').FindCommand('LOCATIONMAP').Params.Values['ID'] := aBuildingCode + aFloorCode + aSectorCode;
      self.FindSubForm('Main').FindCommand('LOCATIONMAP').Execute;
    Except
      Exit;
    End;
    DeviceNameList.Free;
    LocationDeviceList.Free;
    LocationImageList.Free;
    Action := caFree;
end;

procedure TfmLocationMap.LocationMapShow(bFirst:Boolean= True);
var
  stSql : string;
  bResult :boolean;
  nRow : integer;
  aImage : TImage;
  stSeq : string;
  stDeviceID : string;
  nDeviceIndex : integer;
  dmDeviceManageMode : TDoorManageMode;
  dsDoorState        : TDoorState;
  dlDoorLockState    : TDoorLockState;
  dpDoorPNMode       : TDoorPNMode;
  wmDeviceWatchmode  : TWatchMode;
  aeDeviceAlarmEvent : TAlarmEventState;
begin
  bResult := MapLoad(aBuildingCode, aFloorCode,aSectorCode);
  if Not bResult then
  begin
    showmessage('�ش���ġ�� Map�� ��ϵǾ� ���� �ʽ��ϴ�.');
    //Close;
    exit;
  end;

  stSql := '';
{  //�ش���ġ�� MCU�� ã��
  stSql := ' select ''1'' as TYPE,AC_NODENO,AC_MCUID,AC_ECUID,''1'' as SEQ, ';
  stSql := stSql + ' AC_DEVICENAME as NAME,AC_TOTWIDTH as TOTW,AC_TOTHEIGHT as TOTH,';
  stSql := stSql + ' AC_CURX as CURX,AC_CURY as CURY ';
  stSql := stSql + ' FROM TB_ACCESSDEVICE ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_ECUID = ''00'' ';
  stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND LO_AREACODE = ''' + aSectorCode + ''' ';
  //�ش���ġ�� ECU�� ã��
  stSql := stSql + ' Union All ';
  stSql := stSql + ' select ''2'' as TYPE,AC_NODENO,AC_MCUID,AC_ECUID,''1'' as SEQ, ';
  stSql := stSql + ' AC_DEVICENAME as NAME,AC_TOTWIDTH as TOTW,AC_TOTHEIGHT as TOTH,';
  stSql := stSql + ' AC_CURX as CURX,AC_CURY as CURY ';
  stSql := stSql + ' FROM TB_ACCESSDEVICE ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_ECUID <> ''00'' ';
  stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND LO_AREACODE = ''' + aSectorCode + ''' ';
  //�ش���ġ�� ���Թ��� ã��
  stSql := stSql + ' Union All ';    }
  stSql := stSql + ' select ''3'' as TYPE,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,a.DO_DOORNO as SEQ, ';
  stSql := stSql + ' a.DO_DOORNONAME as NAME,a.DO_TOTWIDTH as TOTW,a.DO_TOTHEIGHT as TOTH,';
  stSql := stSql + ' a.DO_CURX as CURX,a.DO_CURY as CURY,a.DO_LASTMODE as LASTMODE,';
  stSql := stSql + ' a.DO_LASTSTATE as LASTSTATE,a.DO_LASTPOSI as LASTPOSI ';
  stSql := stSql + ' FROM TB_DOOR a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINDOOR b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND a.DO_DOORNO = b.DO_DOORNO ';
      stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ) ';
    end;
  end;
  stSql := stSql + ' WHERE a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND a.LO_AREACODE = ''' + aSectorCode + ''' ';
  //�ش���ġ�� ����� ã��
  stSql := stSql + ' Union All ';
  stSql := stSql + ' select ''4'' as TYPE,a.AC_NODENO,a.AC_MCUID,a.AC_ECUID,''0'' as SEQ, '; //a.AL_DEVICENO as SEQ, ';
  stSql := stSql + ' a.AL_ZONENAME as NAME,a.AL_TOTWIDTH as TOTW,a.AL_TOTHEIGHT as TOTH,';
  stSql := stSql + ' a.AL_CURX as CURX,a.AL_CURY as CURY,a.AL_LASTMODE as LASTMODE, ';
  stSql := stSql + ' ''0'' as LASTSTATE,''0'' as LASTPOSI ';
  stSql := stSql + ' FROM TB_ALARMDEVICE a ';
  if Not IsMaster then
  begin
    if BuildingGrade = 4 then
    begin
      stSql := stSql + ' Inner Join TB_ADMINALARMDEVICE b ';
      stSql := stSql + ' ON (a.GROUP_CODE = b.GROUP_CODE ';
      stSql := stSql + ' AND a.AC_NODENO = b.AC_NODENO ';
      stSql := stSql + ' AND a.AC_ECUID = b.AC_ECUID ';
      stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ) ';
    end;
  end;
  stSql := stSql + ' WHERE a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND a.LO_AREACODE = ''' + aSectorCode + ''' ';

  with AdoQuery1 do
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
    nRow := 1;
    DeviceNameList.Clear;
    LocationDeviceList.Clear;
    LocationImageList.Clear;
    while Not Eof do
    begin
      if nRow > 104 then
      begin
        if L_bFirst then
          showmessage('������ �ִ� ǥ�� ������ 104���Դϴ�.');
        
        Break;
      end;
      DeviceNameList.Add(FindField('NAME').AsString);
      stSeq := FindField('SEQ').asString;
      if Not IsDigit(stSeq) then stSeq := '0';
      stDeviceID := FillZeroNumber(FindField('AC_NODENO').asInteger,3) + FindField('AC_ECUID').AsString;
      LocationDeviceList.Add(FindField('TYPE').AsString
                             + stDeviceID
                             + FillZeroNumber(strtoint(stSeq),3));

      nDeviceIndex := DeviceList.IndexOf(stDeviceID);
      if nDeviceIndex > -1 then
      begin
        if FindField('TYPE').AsString = '3' then //���Թ�
        begin
          if stSeq = '1' then
          begin
            dmDeviceManageMode := TDevice(DeviceList.Objects[nDeviceIndex]).DoorManageMode1;
            dsDoorState := TDevice(DeviceList.Objects[nDeviceIndex]).DoorState1;
            dlDoorLockState := TDevice(DeviceList.Objects[nDeviceIndex]).DoorLockMode1;
            dpDoorPNMode := TDevice(DeviceList.Objects[nDeviceIndex]).DoorPNMode1;
          end else if stSeq = '2' then
          begin
            dmDeviceManageMode := TDevice(DeviceList.Objects[nDeviceIndex]).DoorManageMode2;
            dsDoorState := TDevice(DeviceList.Objects[nDeviceIndex]).DoorState2;
            dlDoorLockState := TDevice(DeviceList.Objects[nDeviceIndex]).DoorLockMode2;
            dpDoorPNMode := TDevice(DeviceList.Objects[nDeviceIndex]).DoorPNMode2;
          end;
          wmDeviceWatchmode := cmNothing;
          aeDeviceAlarmEvent := aeNothing;
        end else if FindField('TYPE').AsString = '4' then //�������
        begin
          dmDeviceManageMode := dmNothing;
          dsDoorState := dsNothing;
          dlDoorLockState := lsNothing;
          dpDoorPNMode := pnNothing;
          wmDeviceWatchmode := TDevice(DeviceList.Objects[nDeviceIndex]).WatchMode;
          aeDeviceAlarmEvent := TDevice(DeviceList.Objects[nDeviceIndex]).;
        end;

        LocationImageList.Add('Image'+inttostr(nRow));
        aImage := TravelImageItem('Image' + inttostr(nRow));
        SetDevice(aImage,
                  FindField('TYPE').AsString,
                  FindField('NAME').AsString,
                  FindField('CURX').AsString,
                  FindField('CURY').AsString,
                  FindField('TOTW').AsString,
                  FindField('TOTH').AsString,
                  dmDeviceManageMode,
                  dsDoorState,
                  dlDoorLockState,
                  dpDoorPNMode,
                  wmDeviceWatchmode,
                  aeDeviceAlarmEvent,
                  LocationDeviceList.Count - 1,bFirst);


        inc(nRow);
      end;
      Next;
    end;
  end;
  MapStateRefresh;
end;

procedure TfmLocationMap.MapFree;
begin
  Close;
end;

function TfmLocationMap.MapLoad(aBuildingCode, aFloorCode,
  aSectorCode: string): Boolean;
var
  stSql : string;
  stImage : string;
begin

  result := False;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' Where LO_DONGCODE = ''' + aBuildingCode + ''' ';
  stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + ''' ';
  stSql := stSql + ' AND LO_AREACODE = ''' + aSectorCode + ''' ';

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

procedure TfmLocationMap.FormCreate(Sender: TObject);
begin
  bActive := False;
  L_bFirst := True;
end;

procedure TfmLocationMap.SetDevice(aImage: TImage; aType, aName,
  aXPosition, aYPosition, aXSize, aYSize: string;
  dmDeviceManageMode : TDoorManageMode;
  dsDoorState        : TDoorState;
  dlDoorLockState    : TDoorLockState;
  dpDoorPNMode       : TDoorPNMode;
  wmDeviceWatchmode  : TWatchMode;
  aeDeviceAlarmEvent : TAlarmEventState;
  nDevicePos:integer;bFirst :Boolean = True);
var
  stImage : string;
  nCurTotWidth,nCurTotHeight : integer;
  nCurX,nCurY :integer;
begin

  if bFirst then
  begin
    stImage := ExeFolder + '\..\Resource\';
    if aType = '1' then stImage := stImage + MCUBMP;
    if aType = '2' then stImage := stImage + ECUBMP;
    if aType = '3' then
    begin
      case dmDeviceManageMode of
        dmManager :
          begin
            if dsDoorState = dsClose then stImage := stImage + DOOROPERCLOSE
            else if dsDoorState = dsOpen then stImage := stImage + DOOROPEROPEN
            else stImage := stImage + QUESTION;
          end;
        dmOpen :
          begin
            if dsDoorState = dsClose then stImage := stImage + DOORNOTOPERCLOSE
            else if dsDoorState = dsOpen then stImage := stImage + DOORNOTOPEROPEN
            else stImage := stImage + QUESTION;
          end;
        dmLock :
          begin
            if dsDoorState = dsClose then stImage := stImage + SHUTCLOSE
            else if dsDoorState = dsOpen then stImage := stImage + SHUTOPEN
            else stImage := stImage + QUESTION;
          end;
        else
          begin
            stImage := stImage + QUESTION;
          end;
      end;
    end;
    if aType = '4' then
    begin
      if (aeDeviceAlarmEvent = aeNormalEvent) or
         (aeDeviceAlarmEvent = aeAlarmEvent) then
      begin
        stImage := stImage + WARNINGALARM;
      end else
      begin
        case  wmDeviceWatchmode of
          cmArm : begin stImage := stImage + WATCHALARM end;
          cmDisarm : begin stImage := stImage + NOTWATCHALARM end;
          else begin stImage := stImage + QUESTION end;
        end;
      end;
    end;

    if aType = '5' then stImage := stImage + FOODBMP;
    if FileExists(stImage) then
    aImage.Picture.LoadFromFile(stImage);
    aImage.Visible := True;
  end;

  if Trim(aXPosition) = '' then aXPosition := '0';
  if Trim(aYPosition) = '' then aYPosition := '0';
  aImage.Top := 0;
  aImage.Left := 0;

  nCurTotWidth := ImageMap.Width;
  nCurTotHeight := ImageMap.Height;

  if (aXSize = '') or (aXSize = '0') then nCurX := 0
  else  nCurX := (strtoint(aXPosition) * nCurTotWidth ) Div  strtoint(aXSize) ;
  if (aYSize = '') or (aYSize = '0') then nCurY := 0
  else nCurY := (strtoint(aYPosition) * nCurTotHeight ) Div strtoint(aYSize);

  aImage.Top := nCurY;
  aImage.Left := nCurX;
  aImage.Hint := aName;
  aImage.Tag := nDevicePos;

end;

function TfmLocationMap.TravelImageItem(aImage: string): TImage;
var
  Loop:integer;
begin
  Result:= Nil;
  For Loop:=0 to self.ControlCount-1 do
  Begin
    If LowerCase(self.Controls[Loop].name) = LowerCase(aImage) then
    Begin
      Result:=TImage(self.Controls[Loop]);
      exit;
    End;
  End;

end;

procedure TfmLocationMap.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  nDevicePos : integer;
  stType : string;
begin
  nDevicePos := TImage(Sender).Tag;
  stType := copy(LocationDeviceList.Strings[nDevicePos],1,1);
  aNodeNO := copy(LocationDeviceList.Strings[nDevicePos],2,3);
  aECUID := copy(LocationDeviceList.Strings[nDevicePos],5,2);
  aSeq := copy(LocationDeviceList.Strings[nDevicePos],7,3);
  if stType = '3' then  //Door �̸�
  begin
    TImage(Sender).PopupMenu := PopupMenu_Door;
  end else if stType = '4' then  //Alarm �̸�
  begin
    TImage(Sender).PopupMenu := PopupMenu_Alarm;
  end else TImage(Sender).PopupMenu := nil;
end;

procedure TfmLocationMap.pm_OpenModeClick(Sender: TObject);
var
  stDoorID : string;
begin
  stDoorID:= aNodeNO + aECUID + inttostr(strtoint(aSeq)) ;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPENMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmLocationMap.pm_OperateModeClick(Sender: TObject);
var
  stDoorID : string;
begin
  stDoorID:= aNodeNO + aECUID + inttostr(strtoint(aSeq)) ;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'OPERATEMODE'+ DATADELIMITER + stDoorID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmLocationMap.pm_StateCheckClick(Sender: TObject);
var
  stDoorID : string;
begin
  stDoorID:= aNodeNO + aECUID + inttostr(strtoint(aSeq)) ;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'STATECHECK'+ DATADELIMITER + stDoorID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmLocationMap.pm_DoorOpenClick(Sender: TObject);
var
  stDoorID : string;
begin
  stDoorID:= aNodeNO + aECUID + inttostr(strtoint(aSeq)) ;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'DOOROPEN'+ DATADELIMITER + stDoorID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmLocationMap.MenuItem1Click(Sender: TObject);
var
  stAlarmID : string;
begin
  stAlarmID:= aNodeNO + aECUID ;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'ALARMSETTING'+ DATADELIMITER + stAlarmID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmLocationMap.MenuItem2Click(Sender: TObject);
var
  stAlarmID : string;
begin
  stAlarmID:= aNodeNO + aECUID ;

  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'ALARMDISABLE'+ DATADELIMITER + stAlarmID + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;

procedure TfmLocationMap.DeviceAction(aActionDeviceID: string);
begin

end;

procedure TfmLocationMap.AlaramStateChange(aNodeNo, aEcuID, aZoneNo,
  aAlarmMode, aWarning: string);
var
  nIndex : integer;
  stImage : string;
  aImage : TImage;
begin
  nIndex := LocationDeviceList.IndexOf('4' + FillZeroNumber(strtoint(aNodeNo),3) + aECUID + '000');
  if nIndex < 0 then Exit;
  stImage := LocationImageList.Strings[nIndex];
  aImage := TravelImageItem(stImage);
  if aImage <> nil then
  begin
    ImageStateChange(aImage,'4',aAlarmMode,aWarning,'0');
  end;
end;


procedure TfmLocationMap.ImageStateChange(aImage: TImage; aType, aLastMode,
  aLastState, aLastPosi: string);
var
  stImage : string;
begin
  stImage := ExeFolder + '\..\Resource\';

  if aType = '3' then
  begin
    //stImage := stImage + DOORBMP;
    if aLastMode = '0' then   //�����̸�
    begin
      if aLastState = 'C' then stImage := stImage + DOOROPERCLOSE
      else stImage := stImage + DOOROPEROPEN;
    end else
    begin
      if aLastState = 'C' then stImage := stImage + DOORNOTOPERCLOSE
      else stImage := stImage + DOORNOTOPEROPEN;
    end;
  end;
  if aType = '4' then
  begin
    //stImage := stImage + ALARMBMP;
    if aLastMode = 'A' then
    begin
      if aLastState = '1' then stImage := stImage + WARNINGALARM
      else stImage := stImage + WATCHALARM;
    end
    else  stImage := stImage + NOTWATCHALARM;
  end;
  if FileExists(stImage) then
  aImage.Picture.LoadFromFile(stImage);
  aImage.Visible := True;
  aImage.Refresh;
end;

procedure TfmLocationMap.MapStateRefresh;
var
  nIndex : integer;
  stDoorID : string;
  i : integer;
  stDoorMode,stDoorState,stDoorMode2 : string;
  fmMonitor :TForm;
begin
{  fmMonitor := MDIForm('TfmMonitoring');
  for i := 0 to LocationDeviceList.Count - 1 do
  begin
    if copy(LocationDeviceList.Strings[i],1,1) = '3' then
    begin
      stDoorID := copy(LocationDeviceList.Strings[i],2,5) + copy(LocationDeviceList.Strings[i],9,1);
      if fmMonitor <> nil then
      begin
        nIndex := TfmMonitoring(fmMonitor).DoorCodeList.IndexOf(stDoorID);
        if TfmMonitoring(fmMonitor).doorListView.Items[nIndex].StateIndex = 0 then stDoorMode := '0'
        else stDoorMode := '1';
        if TfmMonitoring(fmMonitor).doorListView.Items[nIndex].ImageIndex = 0 then stDoorState := 'C'
        else stDoorState := 'O';

        DoorStateChange(copy(stDoorID,1,3), copy(stDoorID,4,2), copy(stDoorID,6,1),
               stDoorMode,stDoorState,stDoorMode2);
      end;
    end;
  end     }
  //DoorListView.Items[I].SubItems.Strings[0]
end;

procedure TfmLocationMap.FormResize(Sender: TObject);
begin
  if bActive then
  begin
    LocationMapShow(False);
  end;
  L_bFirst := False;

end;

function TfmLocationMap.MDIForm(FormName: string): TForm;
var
  tmpFormClass : TFormClass;
  tmpClass : TPersistentClass;
  tmpForm : TForm;
  clsName : String;
  i : Integer;
begin
  result := nil;
  clsName := FormName;
  tmpClass := FindClass(clsName);
  if tmpClass <> nil then
  begin
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].ClassNameIs(clsName) then
      begin
        result := Screen.Forms[i];
        Exit;
      end;
    end;
  end;
end;

procedure TfmLocationMap.DoorStateChange(NodeNo: integer; aEcuID,
  aDoorNo: string; aDoorManageType: TDoorManageMode;
  aDoorPNType: TDoorPNMode; aDoorStateType: TDoorState;
  aDoorLockType: TDoorLockState);
var
  stDoorID : string;
  nDoorIndex : integer;
  stImageObjectName : string;
  aImage : TImage;
  stImageDir : string;
  stImage : string;
begin
  stDoorID := FillZeroNumber(NodeNo,3) + aEcuID + FillZeroNumber(strtoint(aDoorNo),3);
  nDoorIndex := LocationDeviceList.IndexOf('3' + stDoorID);
  if nDoorIndex < 0 then Exit;

  stImageObjectName := LocationImageList.Strings[nDoorIndex];
  aImage := TravelImageItem(stImageObjectName);
  if aImage = nil then Exit;

  stImageDir := ExeFolder + '\..\Resource\';

  case aDoorManageType of
    dmManager :
      begin
        if aDoorStateType = dsClose then stImage := stImageDir + DOOROPERCLOSE
        else if aDoorStateType = dsOpen then stImage := stImageDir + DOOROPEROPEN
        else stImage := stImageDir + QUESTION;
      end;
    dmOpen :
      begin
        if aDoorStateType = dsClose then stImage := stImageDir + DOORNOTOPERCLOSE
        else if aDoorStateType = dsOpen then stImage := stImageDir + DOORNOTOPEROPEN
        else stImage := stImageDir + QUESTION;
      end;
    dmLock :
      begin
        if aDoorStateType = dsClose then stImage := stImageDir + SHUTCLOSE
        else if aDoorStateType = dsOpen then stImage := stImageDir + SHUTOPEN
        else stImage := stImageDir + QUESTION;
      end;
    else
      begin
        stImage := stImageDir + QUESTION;
      end;
  end;
  if FileExists(stImage) then
  aImage.Picture.LoadFromFile(stImage);
  aImage.Visible := True;
  aImage.Refresh;


end;

procedure TfmLocationMap.AlarmModeChanged(NodeNo: integer; aEcuID: string;
  aWachMode: TWatchMode);
var
  stAlarmID : string;
  nAlarmIndex : integer;
  stImageObjectName : string;
  aImage : TImage;
  stImageDir : string;
  stImage : string;
  nTempIndex : integer;
begin
  stAlarmID := FillZeroNumber(NodeNo,3) + aEcuID ;
  nAlarmIndex := LocationDeviceList.IndexOf('4' + stAlarmID + '000');
  if nAlarmIndex < 0 then Exit;

  stImageObjectName := LocationImageList.Strings[nAlarmIndex];
  aImage := TravelImageItem(stImageObjectName);
  if aImage = nil then Exit;

  stImageDir := ExeFolder + '\..\Resource\';

  nTempIndex := DeviceStateList.IndexOf(stAlarmID);
  if nTempIndex < 0 then Exit;

  if (TDeviceState(DeviceStateList.Objects[nTempIndex]).AlarmEventState = aeNormalEvent) or
     (TDeviceState(DeviceStateList.Objects[nTempIndex]).AlarmEventState = aeAlarmEvent) then
  begin
    stImage := stImageDir + WARNINGALARM;
  end else
  begin
    case  aWachMode of
      cmArm : begin stImage := stImageDir + WATCHALARM end;
      cmDisarm : begin stImage := stImageDir + NOTWATCHALARM end;
      else begin stImage := stImageDir + QUESTION end;
    end;
  end;
  if FileExists(stImage) then
  aImage.Picture.LoadFromFile(stImage);
  aImage.Visible := True;
  aImage.Refresh;

end;

procedure TfmLocationMap.mn_AlarmConfirmClick(Sender: TObject);
var
  stAlarmID : string;
  nAlarmIndex : integer;
begin
  stAlarmID:= aNodeNO + aECUID ;

  nAlarmIndex := DeviceStateList.IndexOf(stAlarmID);
  if nAlarmIndex < 0 then Exit;
  TDeviceState(DeviceStateList.Objects[nAlarmIndex]).AlaramEventClear;
end;

procedure TfmLocationMap.DeviceAlarmEventProcess(NodeNo: integer;
  ECUID: string; aAlaramState: TAlarmEventState);
var
  stAlarmID : string;
  nAlarmIndex : integer;
  stImageObjectName : string;
  aImage : TImage;
  stImageDir : string;
  stImage : string;
  nTempIndex : integer;
begin
  stAlarmID := FillZeroNumber(NodeNo,3) + aEcuID ;
  nAlarmIndex := LocationDeviceList.IndexOf('4' + stAlarmID + '000');
  if nAlarmIndex < 0 then Exit;

  stImageObjectName := LocationImageList.Strings[nAlarmIndex];
  aImage := TravelImageItem(stImageObjectName);
  if aImage = nil then Exit;

  stImageDir := ExeFolder + '\..\Resource\';

  nTempIndex := DeviceStateList.IndexOf(stAlarmID);
  if nTempIndex < 0 then Exit;
  if (aAlaramState = aeNormalEvent) or
     (aAlaramState = aeAlarmEvent) then
  begin
    stImage := stImageDir + WARNINGALARM;
  end else
  begin
    case  TDeviceState(DeviceStateList.Objects[nTempIndex]).AlarmMode of
      cmArm : begin stImage := stImageDir + WATCHALARM end;
      cmDisarm : begin stImage := stImageDir + NOTWATCHALARM end;
      else begin stImage := stImageDir + QUESTION end;
    end;
  end;
  if FileExists(stImage) then
  aImage.Picture.LoadFromFile(stImage);
  aImage.Visible := True;
  aImage.Refresh;

end;

end.