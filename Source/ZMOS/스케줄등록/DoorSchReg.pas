{*******************************************************}
{                                                       }
{         화일명: DoorSchReg.PAS                        }
{         설  명: 문 스케쥴 지정화면                    }
{         작성일: 2004.12.08                            }
{         작성자: 전진운                                }
{         Copyright (c)                                 }
{                                                       }
{*******************************************************}
unit DoorSchReg;

interface

uses
  uLomosUtil,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dbisamtb, RzButton, StdCtrls, RzRadGrp, RzDBRGrp, ExtCtrls,
  RzPanel, ADODB, uSubForm, CommandArray,ActiveX;

type


  {DoorMode 스케쥴 저장용 Record}
  TTimeSch = record
    xGrade: Char;
    xTime: TDateTime;
  end;


  TDoorscheduleRegForm = class(TfmASubForm)
    Query_Sch: TADOQuery;
    Query_Door: TADOQuery;
    Panel57: TPanel;
    Panel58: TPanel;
    RzGroupBox4: TRzGroupBox;
    lbDoor: TListBox;
    Panel1: TPanel;
    RzGroupBox1: TRzGroupBox;
    PaintBox1: TPaintBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    pan_Week: TPanel;
    pan_W1: TPanel;
    Panel4: TPanel;
    pan_W4: TPanel;
    Panel5: TPanel;
    pan_W5: TPanel;
    pan_W3: TPanel;
    Panel13: TPanel;
    pan_W2: TPanel;
    Panel15: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    RzGroupBox2: TRzGroupBox;
    PaintBox2: TPaintBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    pan_saturday: TPanel;
    pan_sa1: TPanel;
    Panel10: TPanel;
    pan_sa4: TPanel;
    Panel16: TPanel;
    pan_sa5: TPanel;
    pan_sa3: TPanel;
    Panel19: TPanel;
    pan_sa2: TPanel;
    Panel21: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    RzGroupBox3: TRzGroupBox;
    PaintBox3: TPaintBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    pan_sunday: TPanel;
    pan_su1: TPanel;
    Panel24: TPanel;
    pan_su4: TPanel;
    Panel26: TPanel;
    pan_su5: TPanel;
    pan_su3: TPanel;
    Panel29: TPanel;
    pan_su2: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    PaintBox4: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    pan_Holiday: TPanel;
    pan_h1: TPanel;
    Panel46: TPanel;
    pan_h4: TPanel;
    Panel48: TPanel;
    pan_h5: TPanel;
    pan_h3: TPanel;
    Panel51: TPanel;
    pan_h2: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel59: TPanel;
    btnSend: TRzBitBtn;
    btnSave: TRzBitBtn;
    btnClose: TRzBitBtn;
    GroupBox1: TGroupBox;
    lb_Building1: TLabel;
    cmb_BuildingCode1: TComboBox;
    cmb_FloorCode1: TComboBox;
    lb_FloorCode1: TLabel;
    lb_AreaCode1: TLabel;
    cmb_AreaCode1: TComboBox;
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel2Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBox2Paint(Sender: TObject);
    procedure PaintBox3Paint(Sender: TObject);
    procedure Panel8DblClick(Sender: TObject);
    procedure Panel8DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel8DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Panel8Resize(Sender: TObject);
    procedure Panel22DblClick(Sender: TObject);
    procedure Panel22DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel22DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Panel22Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure Panel31Click(Sender: TObject);
    procedure Panel35Click(Sender: TObject);
    procedure Panel39Click(Sender: TObject);
    procedure lbDoorClick(Sender: TObject);
    procedure Panel44DblClick(Sender: TObject);
    procedure Panel44DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel44DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Panel44Resize(Sender: TObject);
    procedure Panel53Click(Sender: TObject);
    procedure PaintBox4Paint(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure cmb_BuildingCode1Change(Sender: TObject);
    procedure cmb_FloorCode1Change(Sender: TObject);
    procedure cmb_AreaCode1Change(Sender: TObject);
  private
    BuildingCodeList : TStringList;
    FloorCodeList : TStringList;
    AreaCodeList :TStringList;
    procedure LoadBuildingCode(cmb_Box:TComboBox);
    procedure LoadFloorCode(aBuildingCode:string;cmb_Box:TComboBox);
    procedure LoadAreaCode(aBuildingCode,aFloorCode:string;cmb_Box:TComboBox);
    procedure DoorLoad(aBuildingCode,aFloorCode,aAreaCode:string);
  private
    { Private declarations }
    function LoadScheduleFormDB(aNodeNo,aECUID,DoorNo: string):Boolean;
    Procedure CheckFields1(Sender : TObject);
    Procedure CheckFields2(Sender : TObject);
    Procedure CheckFields3(Sender : TObject);
    Procedure CheckFields4(Sender : TObject);
    Procedure ScheduleDataSend(aNodeNo,aECUID,aDoorNO:string);
    procedure CreateSchedule(aNodeNo,aECUID,aDOORNO:string);
    function checkTB_DEVICESCHEDULE(aNodeNo,aECUID,aDOORNO:string):Boolean;
  public
    { Public declarations }
     DoorsList: TStringList;
     Procedure DbUpDate(aNodeNo,aECUID,aDoorNo,aDayCode:String;aSch:array of TTimeSch );

  end;

var
  DoorscheduleRegForm: TDoorscheduleRegForm;
  timePanels1 : Array[0..4] of TPanel; {평일}
  timePanels2 : Array[0..4] of TPanel; {토요일}
  timePanels3 : Array[0..4] of TPanel; {일요일}
  timePanels4 : Array[0..4] of TPanel; {휴일}

  xData1 : Array[0..4] of TTimeSch; {평일}
  xData2 : Array[0..4] of TTimeSch; {토요일}
  xData3 : Array[0..4] of TTimeSch; {일요일}
  xData4 : Array[0..4] of TTimeSch; {휴일}

  DoorList: TStringList;

implementation

{$R *.dfm}
uses
  uDatamodule1, uMain;

procedure TDoorscheduleRegForm.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
  if Sender is TPanel then
  if TPanel(Sender).Tag= 2 then
  Begin

    With TPanel(TPanel(Sender).Parent) do
    Begin
      if Width + x > 0 then
        Width := Width + x;
    end;
  end;
end;


procedure TDoorscheduleRegForm.Panel2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TPanel) then Accept := Tpanel(Source).Tag = 1;
  CheckFields1(Sender);
end;

procedure TDoorscheduleRegForm.Panel2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Sender is TPanel) then
    if Tpanel(Source).Tag = 1 then
    Begin
      TPanel(Sender).Color := Tpanel(Source).Color;
      CheckFields1(Sender);
    end;
end;

Procedure TDoorscheduleRegForm.CheckFields1(Sender : TObject);
Var
  a : Integer;
  ox : Real;
  ax : Real;
  bx : Integer;
  st : String;
  t  : string;
  ff : TDateTime;
  Hour, Min, Sec, MSec: Word;
Begin
  if TPanel(Sender).Color = clRed then TPanel(Sender).Caption := '폐쇄'
  else if TPanel(Sender).Color = clGreen then TPanel(Sender).Caption := '개방'
  else if TPanel(Sender).Color = clAqua then TPanel(Sender).Caption := '운영';
  for a := 0 to ComponentCount - 1 do
  Begin
    if Components[a] is TPanel then
      if Tpanel(Components[a]).Tag= 2 then
        Tpanel(Components[a]).Color := Tpanel(Tpanel(Components[a]).Parent).Color;
  end;

  for a := 0 to 4 do
  Begin
    ox := pan_Week.Width - 2;
    bx := timePanels1[a].Left+TimePanels1[a].Width-1;
    ff := (bx/ox);
    ff := Round(12*24 * ff);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    t := IntToStr(Hour);  if Length(t) = 1 then t := '0' + t;
    st := IntToStr(Min);  if Length(st) = 1 then st := '0' + st;
    st := t + ':' + st;
    Case a of
      0 : Begin Label1.Caption := st; Label1.Left := bx-07; end;
      1 : Begin Label2.Caption := st; Label2.Left := bx-07; end;
      2 : Begin Label3.Caption := st; Label3.Left := bx-07; end;
      3 : Begin Label4.Caption := st; Label4.Left := bx-07; end;
    end;
  end;
end;

Procedure TDoorscheduleRegForm.CheckFields2(Sender : TObject);
Var
  a : Integer;
  ox : Real;
  ax : Real;
  bx : Integer;
  st : String;
  t  : string;
  ff : TDateTime;
  Hour, Min, Sec, MSec: Word;
Begin
  if TPanel(Sender).Color = clRed then TPanel(Sender).Caption := '폐쇄'
  else if TPanel(Sender).Color = clGreen then TPanel(Sender).Caption := '개방'
  else if TPanel(Sender).Color = clAqua then TPanel(Sender).Caption := '운영';
  for a := 0 to ComponentCount - 1 do
  Begin
    if Components[a] is TPanel then
      if Tpanel(Components[a]).Tag= 2 then
        Tpanel(Components[a]).Color := Tpanel(Tpanel(Components[a]).Parent).Color;
  end;

  for a := 0 to 4 do
  Begin
    ox := pan_saturday.Width - 2;
    bx := timePanels2[a].Left+TimePanels2[a].Width-1;
    ff := (bx/ox);
    ff := Round(12*24 * ff);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    t := IntToStr(Hour);  if Length(t) = 1 then t := '0' + t;
    st := IntToStr(Min);  if Length(st) = 1 then st := '0' + st;
    st := t + ':' + st;
    Case a of
      0 : Begin Label5.Caption := st; Label5.Left := bx-07; end;
      1 : Begin Label7.Caption := st; Label7.Left := bx-07; end;
      2 : Begin Label8.Caption := st; Label8.Left := bx-07; end;
      3 : Begin Label9.Caption := st; Label9.Left := bx-07; end;
    end;
  end;
end;

Procedure TDoorscheduleRegForm.CheckFields3(Sender : TObject);
Var
  a : Integer;
  ox : Real;
  ax : Real;
  bx : Integer;
  st : String;
  t  : string;
  ff : TDateTime;
  Hour, Min, Sec, MSec: Word;
Begin
  if TPanel(Sender).Color = clRed then TPanel(Sender).Caption := '폐쇄'
  else if TPanel(Sender).Color = clGreen then TPanel(Sender).Caption := '개방'
  else if TPanel(Sender).Color = clAqua then TPanel(Sender).Caption := '운영';
  for a := 0 to ComponentCount - 1 do
  Begin
    if Components[a] is TPanel then
      if Tpanel(Components[a]).Tag= 2 then
        Tpanel(Components[a]).Color := Tpanel(Tpanel(Components[a]).Parent).Color;
  end;

  for a := 0 to 4 do
  Begin
    ox := pan_sunday.Width - 2;
    bx := timePanels3[a].Left+TimePanels3[a].Width-1;
    ff := (bx/ox);
    ff := Round(12*24 * ff);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    t := IntToStr(Hour);  if Length(t) = 1 then t := '0' + t;
    st := IntToStr(Min);  if Length(st) = 1 then st := '0' + st;
    st := t + ':' + st;
    Case a of
      0 : Begin Label11.Caption := st; Label11.Left := bx-07; end;
      1 : Begin Label12.Caption := st; Label12.Left := bx-07; end;
      2 : Begin Label13.Caption := st; Label13.Left := bx-07; end;
      3 : Begin Label14.Caption := st; Label14.Left := bx-07; end;
    end;
  end;
end;

Procedure TDoorscheduleRegForm.CheckFields4(Sender : TObject);
Var
  a : Integer;
  ox : Real;
  ax : Real;
  bx : Integer;
  st : String;
  t  : string;
  ff : TDateTime;
  Hour, Min, Sec, MSec: Word;
Begin
  if TPanel(Sender).Color = clRed then TPanel(Sender).Caption := '폐쇄'
  else if TPanel(Sender).Color = clGreen then TPanel(Sender).Caption := '개방'
  else if TPanel(Sender).Color = clAqua then TPanel(Sender).Caption := '운영';
  for a := 0 to ComponentCount - 1 do
  Begin
    if Components[a] is TPanel then
      if Tpanel(Components[a]).Tag= 2 then
        Tpanel(Components[a]).Color := Tpanel(Tpanel(Components[a]).Parent).Color;
  end;

  for a := 0 to 4 do
  Begin
    ox := pan_Holiday.Width - 2;
    bx := timePanels4[a].Left+TimePanels4[a].Width-1;
    ff := (bx/ox);
    ff := Round(12*24 * ff);
    ff := ff /(12*24);
    DecodeTime(ff,Hour, Min, Sec, MSec);
    t := IntToStr(Hour);  if Length(t) = 1 then t := '0' + t;
    st := IntToStr(Min);  if Length(st) = 1 then st := '0' + st;
    st := t + ':' + st;
    Case a of
      0 : Begin Label16.Caption := st; Label16.Left := bx-07; end;
      1 : Begin Label17.Caption := st; Label17.Left := bx-07; end;
      2 : Begin Label18.Caption := st; Label18.Left := bx-07; end;
      3 : Begin Label19.Caption := st; Label19.Left := bx-07; end;
    end;
  end;
end;



procedure TDoorscheduleRegForm.Panel2Resize(Sender: TObject);
begin
  CheckFields1(Sender);
end;


procedure TDoorscheduleRegForm.FormCreate(Sender: TObject);
begin

  timePanels1[0] := pan_W1;
  timePanels1[1] := pan_W2;
  timePanels1[2] := pan_W3;
  timePanels1[3] := pan_W4;
  timePanels1[4] := pan_W5;

  timePanels2[0] := pan_sa1;
  timePanels2[1] := pan_sa2;
  timePanels2[2] := pan_sa3;
  timePanels2[3] := pan_sa4;
  timePanels2[4] := pan_sa5;

  timePanels3[0] := pan_su1;
  timePanels3[1] := pan_su2;
  timePanels3[2] := pan_su3;
  timePanels3[3] := pan_su4;
  timePanels3[4] := pan_su5;

  timePanels4[0] := pan_h1;
  timePanels4[1] := pan_h2;
  timePanels4[2] := pan_h3;
  timePanels4[3] := pan_h4;
  timePanels4[4] := pan_h5;


  BuildingCodeList := TStringList.Create ;
  FloorCodeList := TStringList.Create ;
  AreaCodeList := TStringList.Create ;
  DoorList := TstringList.Create;
end;

procedure TDoorscheduleRegForm.PaintBox1Paint(Sender: TObject);
Var
  st  : String;
  x,y : Integer;
  r   : TRect;
  a,b : Integer;
  rr  : Real;
  dx : Integer;
  dy : Integer;
begin
  PaintBox1.Width := pan_Week.ClientRect.Right;
  dx := pan_Week.Width - 2;
  With PaintBox1.Canvas do
  Begin
    Pen.Color := clGray;
    Pen.Width := 1;
    r := ClientRect;
    FillRect(r);
    dy := PaintBox1.Height;
    for a := 0 to 23 do
    for b := 0 to 11 do
    Begin
      if b = 0 then y := dy
      else if b = 6 then y := dy div 2
      else y := dy div 4;
      rr := (a*12 + b)/(24*12);
      x := Round(dx * rr);
      MoveTo(x,PaintBox1.Height);
      LineTo(x,PaintBox1.Height-y);
      if b = 0 then
      Begin
        st := IntToStr(a);
        TextOut(x+2,0,st);
      end;
    end;
    y := PaintBox1.Height;
    rr := 1;
    x := Round(dx * rr);
    MoveTo(x,PaintBox1.Height);
    LineTo(x,PaintBox1.Height-y);
  end;
end;

procedure TDoorscheduleRegForm.Panel2DblClick(Sender: TObject);
Var
  aColor : TColor;
  bColor : TColor;
begin
  aColor := TPanel(Sender).Color;
  if aColor = clGreen then bColor := clAqua
  else if aColor = clRed then bColor := clGreen
  else if aColor = clAqua then bColor := clRed;
  TPanel(Sender).Color := bColor;
  CheckFields1(Sender);
end;

{DB에서 스케줄을 읽어 온다}
function TDoorscheduleRegForm.LoadScheduleFormDB(aNodeNo,aECUID,DoorNo: string):Boolean;
var
  I: Integer;
  stSql : string;

function Convrtstr2Time(ast: string):TDatetime;
var
  aHour: Word;
  aMin: word;
begin
  Convrtstr2Time:= 0;
  if length(ast) < 4 then Exit;
  aHour:= StrtoInt(Copy(ast,1,2));
  aMin:= StrtoInt(Copy(ast,3,2));
  Convrtstr2Time:= Encodetime(aHour,aMin,00,00);
end;

begin

  LoadScheduleFormDB:= False;
  stSql := 'SELECT * ';
  stSql := stSql + ' FROM TB_DEVICESCHEDULE ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND DO_DOORNO = ''' + DoorNo + ''' ';
  with Query_Sch do
  begin
    Close;
    SQL.Clear;
    Sql.Text := stSql;

    Try
      Open;
    Except
      Exit;
    End;


    if RecordCount > 0 then
    begin
      LoadScheduleFormDB:= True;
      First;
      while Not Eof do
      begin
        if findField('DE_DAYCODE').AsString = '0' then
        begin
          {평일}
          xData1[0].xGrade:= FindField('DE_CELL1MODE').asString[1];
          xData1[0].xTime:= Convrtstr2Time(FindField('DE_CELL1TIME').asString);
          xData1[1].xGrade:= FindField('DE_CELL2MODE').asString[1];
          xData1[1].xTime:= Convrtstr2Time(FindField('DE_CELL2TIME').asString);
          xData1[2].xGrade:= FindField('DE_CELL3MODE').asString[1];
          xData1[2].xTime:= Convrtstr2Time(FindField('DE_CELL3TIME').asString);
          xData1[3].xGrade:= FindField('DE_CELL4MODE').asString[1];
          xData1[3].xTime:= Convrtstr2Time(FindField('DE_CELL4TIME').asString);
          xData1[4].xGrade:= FindField('DE_CELL5MODE').asString[1];
          xData1[4].xTime:= Convrtstr2Time(FindField('DE_CELL5TIME').asString);
        end else if findField('DE_DAYCODE').AsString = '1' then
        begin
          {툐요일}
          xData2[0].xGrade:= FindField('DE_CELL1MODE').asString[1];
          xData2[0].xTime:= Convrtstr2Time(FindField('DE_CELL1TIME').asString);
          xData2[1].xGrade:= FindField('DE_CELL2MODE').asString[1];
          xData2[1].xTime:= Convrtstr2Time(FindField('DE_CELL2TIME').asString);
          xData2[2].xGrade:= FindField('DE_CELL3MODE').asString[1];
          xData2[2].xTime:= Convrtstr2Time(FindField('DE_CELL3TIME').asString);
          xData2[3].xGrade:= FindField('DE_CELL4MODE').asString[1];
          xData2[3].xTime:= Convrtstr2Time(FindField('DE_CELL4TIME').asString);
          xData2[4].xGrade:= FindField('DE_CELL5MODE').asString[1];
          xData2[4].xTime:= Convrtstr2Time(FindField('DE_CELL5TIME').asString);
        end else if findField('DE_DAYCODE').AsString = '2' then
        begin
          {일요일}
          xData3[0].xGrade:= FindField('DE_CELL1MODE').asString[1];
          xData3[0].xTime:= Convrtstr2Time(FindField('DE_CELL1TIME').asString);
          xData3[1].xGrade:= FindField('DE_CELL2MODE').asString[1];
          xData3[1].xTime:= Convrtstr2Time(FindField('DE_CELL2TIME').asString);
          xData3[2].xGrade:= FindField('DE_CELL3MODE').asString[1];
          xData3[2].xTime:= Convrtstr2Time(FindField('DE_CELL3TIME').asString);
          xData3[3].xGrade:= FindField('DE_CELL4MODE').asString[1];
          xData3[3].xTime:= Convrtstr2Time(FindField('DE_CELL4TIME').asString);
          xData3[4].xGrade:= FindField('DE_CELL5MODE').asString[1];
          xData3[4].xTime:= Convrtstr2Time(FindField('DE_CELL5TIME').asString);
        end else if findField('DE_DAYCODE').AsString = '3' then
        begin
          {휴일}
          xData4[0].xGrade:= FindField('DE_CELL1MODE').asString[1];
          xData4[0].xTime:= Convrtstr2Time(FindField('DE_CELL1TIME').asString);
          xData4[1].xGrade:= FindField('DE_CELL2MODE').asString[1];
          xData4[1].xTime:= Convrtstr2Time(FindField('DE_CELL2TIME').asString);
          xData4[2].xGrade:= FindField('DE_CELL3MODE').asString[1];
          xData4[2].xTime:= Convrtstr2Time(FindField('DE_CELL3TIME').asString);
          xData4[3].xGrade:= FindField('DE_CELL4MODE').asString[1];
          xData4[3].xTime:= Convrtstr2Time(FindField('DE_CELL4TIME').asString);
          xData4[4].xGrade:= FindField('DE_CELL5MODE').asString[1];
          xData4[4].xTime:= Convrtstr2Time(FindField('DE_CELL5TIME').asString);
        end;
        Next;
      end;
    end else
    begin
      CreateSchedule(aNodeNo,aECUID,DOORNO);


      ShowMessage('스케줄 데이터가 생성 되었습니다.');
    end;
  end;
end;

procedure TDoorscheduleRegForm.FormShow(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;

begin
  stBuildingCode := '000';
  stFloorCode    := '000';
  stAreaCode     := '000';
  LoadBuildingCode(cmb_BuildingCode1);
  if cmb_BuildingCode1.ItemIndex > 0 then
  begin
    stBuildingCode := BuildingCodeList.Strings[cmb_BuildingCode1.ItemIndex];
    LoadFloorCode(stBuildingCode,cmb_FloorCode1);
    if cmb_FloorCode1.ItemIndex > 0 then
    begin
      stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.ItemIndex];
      LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
      if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.ItemIndex];
    end;
  end;

  DoorLoad(stBuildingCode,stFloorCode,stAreaCode);


end;

procedure TDoorscheduleRegForm.PaintBox2Paint(Sender: TObject);
Var
  st  : String;
  x,y : Integer;
  r   : TRect;
  a,b : Integer;
  rr  : Real;
  dx : Integer;
  dy : Integer;
begin
  PaintBox2.Width := pan_saturday.ClientRect.Right;
  dx := pan_saturday.Width - 2;
  With PaintBox2.Canvas do
  Begin
    Pen.Color := clGray;
    Pen.Width := 1;
    r := ClientRect;
    FillRect(r);
    dy := PaintBox2.Height;
    for a := 0 to 23 do
    for b := 0 to 11 do
    Begin
      if b = 0 then y := dy
      else if b = 6 then y := dy div 2
      else y := dy div 4;
      rr := (a*12 + b)/(24*12);
      x := Round(dx * rr);
      MoveTo(x,PaintBox2.Height);
      LineTo(x,PaintBox2.Height-y);
      if b = 0 then
      Begin
        st := IntToStr(a);
        TextOut(x+2,0,st);
      end;
    end;
    y := PaintBox2.Height;
    rr := 1;
    x := Round(dx * rr);
    MoveTo(x,PaintBox2.Height);
    LineTo(x,PaintBox2.Height-y);
  end;
end;

procedure TDoorscheduleRegForm.PaintBox3Paint(Sender: TObject);
Var
  st  : String;
  x,y : Integer;
  r   : TRect;
  a,b : Integer;
  rr  : Real;
  dx : Integer;
  dy : Integer;
begin
  PaintBox3.Width := pan_sunday.ClientRect.Right;
  dx := pan_sunday.Width - 2;
  With PaintBox3.Canvas do
  Begin
    Pen.Color := clGray;
    Pen.Width := 1;
    r := ClientRect;
    FillRect(r);
    dy := PaintBox3.Height;
    for a := 0 to 23 do
    for b := 0 to 11 do
    Begin
      if b = 0 then y := dy
      else if b = 6 then y := dy div 2
      else y := dy div 4;
      rr := (a*12 + b)/(24*12);
      x := Round(dx * rr);
      MoveTo(x,PaintBox3.Height);
      LineTo(x,PaintBox3.Height-y);
      if b = 0 then
      Begin
        st := IntToStr(a);
        TextOut(x+2,0,st);
      end;
    end;
    y := PaintBox3.Height;
    rr := 1;
    x := Round(dx * rr);
    MoveTo(x,PaintBox3.Height);
    LineTo(x,PaintBox3.Height-y);
  end;
end;

procedure TDoorscheduleRegForm.PaintBox4Paint(Sender: TObject);
Var
  st  : String;
  x,y : Integer;
  r   : TRect;
  a,b : Integer;
  rr  : Real;
  dx : Integer;
  dy : Integer;
begin
  PaintBox4.Width := pan_Holiday.ClientRect.Right;
  dx := pan_Holiday.Width - 2;
  With PaintBox4.Canvas do
  Begin
    Pen.Color := clGray;
    Pen.Width := 1;
    r := ClientRect;
    FillRect(r);
    dy := PaintBox4.Height;
    for a := 0 to 23 do
    for b := 0 to 11 do
    Begin
      if b = 0 then y := dy
      else if b = 6 then y := dy div 2
      else y := dy div 4;
      rr := (a*12 + b)/(24*12);
      x := Round(dx * rr);
      MoveTo(x,PaintBox4.Height);
      LineTo(x,PaintBox4.Height-y);
      if b = 0 then
      Begin
        st := IntToStr(a);
        TextOut(x+2,0,st);
      end;
    end;
    y := PaintBox4.Height;
    rr := 1;
    x := Round(dx * rr);
    MoveTo(x,PaintBox4.Height);
    LineTo(x,PaintBox4.Height-y);
  end;
end;


procedure TDoorscheduleRegForm.Panel8DblClick(Sender: TObject);
Var
  aColor : TColor;
  bColor : TColor;
begin
  aColor := TPanel(Sender).Color;
  if aColor = clGreen then bColor := clAqua
  else if aColor = clRed then bColor := clGreen
  else if aColor = clAqua then bColor := clRed;
  TPanel(Sender).Color := bColor;
  CheckFields2(Sender);

end;

procedure TDoorscheduleRegForm.Panel8DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Sender is TPanel) then
    if Tpanel(Source).Tag = 1 then
    Begin
      TPanel(Sender).Color := Tpanel(Source).Color;
      CheckFields2(Sender);
    end;
end;

procedure TDoorscheduleRegForm.Panel8DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TPanel) then Accept := Tpanel(Source).Tag = 1;
  CheckFields2(Sender);
end;

procedure TDoorscheduleRegForm.Panel8Resize(Sender: TObject);
begin
  CheckFields2(Sender);
end;

procedure TDoorscheduleRegForm.Panel22DblClick(Sender: TObject);
Var
  aColor : TColor;
  bColor : TColor;
begin
  aColor := TPanel(Sender).Color;
  if aColor = clGreen then bColor := clAqua
  else if aColor = clRed then bColor := clGreen
  else if aColor = clAqua then bColor := clRed;
  TPanel(Sender).Color := bColor;
  CheckFields3(Sender);
end;

procedure TDoorscheduleRegForm.Panel22DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Sender is TPanel) then
    if Tpanel(Source).Tag = 1 then
    Begin
      TPanel(Sender).Color := Tpanel(Source).Color;
      CheckFields3(Sender);
    end;
end;

procedure TDoorscheduleRegForm.Panel22DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TPanel) then Accept := Tpanel(Source).Tag = 1;
  CheckFields3(Sender);
end;

procedure TDoorscheduleRegForm.Panel22Resize(Sender: TObject);
begin
  CheckFields3(Sender);
end;

procedure TDoorscheduleRegForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  self.FindSubForm('Main').FindCommand('SCHEDULE').Execute;
  DoorsList.Free;
  BuildingCodeList.Free;
  FloorCodeList.Free;
  AreaCodeList.Free;
end;

procedure TDoorscheduleRegForm.bsSkinButton4Click(Sender: TObject);
begin
  CLose;
end;

{평일 초기화 버튼}
procedure TDoorscheduleRegForm.Panel31Click(Sender: TObject);
var
  a: Integer;
  r: TDatetime;
  ox: INteger;
begin
  xData1[0].xGrade := '0'      ; xData1[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData1[1].xGrade := '0'      ; xData1[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData1[2].xGrade := '0'      ; xData1[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData1[3].xGrade := '0'      ; xData1[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { 평일 Default 값 }
  xData1[4].xGrade := '0'      ; xData1[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }

  for a := 0 to 4 do
  Begin
    timePanels1[a].Align := alNone;
    timePanels1[a].Width := 10;
    timePanels1[a].Left := 700;
  end;

  for a := 0 to 4 do
  Begin
    if a = 4 then timePanels1[a].Align := alClient
    else          timePanels1[a].Align := alLeft;
  end;

  r := 0;
  ox := pan_Week.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels1[a].Color := clAqua;
    Case xData1[a].xGrade of
      '0': timePanels1[a].Color := clAqua;
      '1': timePanels1[a].Color := clGreen;
      '2': timePanels1[a].Color := clRed;
    end;
    if a = 0 then r := xData1[a].xTime
    else          r := xData1[a].xTime-xData1[a-1].xTime;

    timePanels1[a].Width := Round((ox) * (r));
  end;
  CheckFields1(timePanels1[0]);

end;

{반휴일 초기화 버튼}
procedure TDoorscheduleRegForm.Panel35Click(Sender: TObject);
var
  a: Integer;
  r: TDatetime;
  ox: INteger;
begin
  xData2[0].xGrade := '0'      ; xData2[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData2[1].xGrade := '0'      ; xData2[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData2[2].xGrade := '0'      ; xData2[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData2[3].xGrade := '0'      ; xData2[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { 평일 Default 값 }
  xData2[4].xGrade := '0'      ; xData2[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }

  for a := 0 to 4 do
  Begin
    timePanels2[a].Align := alNone;
    timePanels2[a].Width := 10;
    timePanels2[a].Left := 700;
  end;

  for a := 0 to 4 do
  Begin
    if a = 4 then timePanels2[a].Align := alClient
    else          timePanels2[a].Align := alLeft;
  end;

  r := 0;
  ox := pan_saturday.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels2[a].Color := clAqua;
    Case xData2[a].xGrade of
      '0': timePanels2[a].Color := clAqua;
      '1': timePanels2[a].Color := clGreen;
      '2': timePanels2[a].Color := clRed;
    end;
    if a = 0 then r := xData2[a].xTime
    else          r := xData2[a].xTime-xData1[a-1].xTime;

    timePanels2[a].Width := Round((ox) * (r));
  end;
  CheckFields2(timePanels2[0]);

end;

{일요일 초기화 버튼}
procedure TDoorscheduleRegForm.Panel39Click(Sender: TObject);
var
  a: Integer;
  r: TDatetime;
  ox: INteger;
begin
  xData3[0].xGrade := '0'      ; xData3[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData3[1].xGrade := '0'      ; xData3[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData3[2].xGrade := '0'      ; xData3[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData3[3].xGrade := '0'      ; xData3[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { 평일 Default 값 }
  xData3[4].xGrade := '0'      ; xData3[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }


  for a := 0 to 4 do
  Begin
    timePanels3[a].Align := alNone;
    timePanels3[a].Width := 10;
    timePanels3[a].Left := 700;
  end;

  for a := 0 to 4 do
  Begin
    if a = 4 then timePanels3[a].Align := alClient
    else          timePanels3[a].Align := alLeft;
  end;

  r := 0;
  ox := Pan_sunday.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels3[a].Color := clAqua;
    Case xData3[a].xGrade of
      '0': timePanels3[a].Color := clAqua;
      '1': timePanels3[a].Color := clGreen;
      '2': timePanels3[a].Color := clRed;
    end;
    if a = 0 then r := xData3[a].xTime
    else          r := xData3[a].xTime-xData1[a-1].xTime;

    timePanels3[a].Width := Round((ox) * (r));
  end;
  CheckFields3(timePanels3[0]);

end;
{휴일 초기화 버튼}
procedure TDoorscheduleRegForm.Panel53Click(Sender: TObject);
var
  a: Integer;
  r: TDatetime;
  ox: INteger;
begin
  xData4[0].xGrade := '0'      ; xData4[0].xTime := (05.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData4[1].xGrade := '0'      ; xData4[1].xTime := (12.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData4[2].xGrade := '0'      ; xData4[2].xTime := (13.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }
  xData4[3].xGrade := '0'      ; xData4[3].xTime := (18.0*3600.0 + 30.0*60.0) /(24*3600); { 평일 Default 값 }
  xData4[4].xGrade := '0'      ; xData4[4].xTime := (21.0*3600.0 + 00.0*60.0) /(24*3600); { 평일 Default 값 }

  for a := 0 to 4 do
  Begin
    timePanels4[a].Align := alNone;
    timePanels4[a].Width := 10;
    timePanels4[a].Left := 700;
  end;

  for a := 0 to 4 do
  Begin
    if a = 4 then timePanels4[a].Align := alClient
    else          timePanels4[a].Align := alLeft;
  end;

  r := 0;
  ox := pan_Holiday.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels4[a].Color := clAqua;
    Case xData4[a].xGrade of
      '0': timePanels4[a].Color := clAqua;
      '1': timePanels4[a].Color := clGreen;
      '2': timePanels4[a].Color := clRed;
    end;
    if a = 0 then r := xData4[a].xTime
    else          r := xData4[a].xTime-xData4[a-1].xTime;

    timePanels4[a].Width := Round((ox) * (r));
  end;
  CheckFields4(timePanels4[0]);
end;

{변경된 스케쥴 정보 저장}
procedure TDoorscheduleRegForm.lbDoorClick(Sender: TObject);
var
  a : Integer;
  r : TDateTime;
  ox  : Integer;
  aPortNo: Integer;
  aACUCode: String;
  stTemp : string;
  stNodeNO,stECUID,stDOORNO : string;
begin
  if lbDoor.ItemIndex < 1 then Exit;
  stTemp := DoorList.Strings[lbDoor.ItemIndex];
  stNodeNO := inttostr(strtoint(copy(stTemp,1,3)));
  stECUID := copy(stTemp,4,2);
  stDoorNo := copy(stTemp,6,1);
  LoadScheduleFormDB(stNodeNO,stECUID,stDoorNo);

  for a:= 0 to 4 do
  Begin
    timePanels1[a].Align := alNone;
    timePanels1[a].Width := 10;
    timePanels1[a].Left := 700;

    timePanels2[a].Align := alNone;
    timePanels2[a].Width := 10;
    timePanels2[a].Left := 700;

    timePanels3[a].Align := alNone;
    timePanels3[a].Width := 10;
    timePanels3[a].Left := 700;

    timePanels4[a].Align := alNone;
    timePanels4[a].Width := 10;
    timePanels4[a].Left := 700;
  end;

  for a := 0 to 4 do
  Begin
    if a = 4 then
    begin
      timePanels1[a].Align := alClient;
      timePanels2[a].Align := alClient;
      timePanels3[a].Align := alClient;
      timePanels4[a].Align := alClient;
    end else
    begin
      timePanels1[a].Align := alLeft;
      timePanels2[a].Align := alLeft;
      timePanels3[a].Align := alLeft;
      timePanels4[a].Align := alLeft;
    end;
  end;

  r := 0;
  ox := pan_Week.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels1[a].Color := clAqua;
    Case xData1[a].xGrade of
      '0' : timePanels1[a].Color := clAqua;
      '1' : timePanels1[a].Color := clGreen;
      '2' : timePanels1[a].Color := clRed;
    end;
    if a = 0 then r := xData1[a].xTime
             else r := xData1[a].xTime-xData1[a-1].xTime;

    timePanels1[a].Width := Round((ox) * (r));
  end;
  CheckFields1(timePanels1[0]);

  r := 0;
  ox := pan_saturday.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels2[a].Color := clAqua;
    Case xData2[a].xGrade of
      '0' : timePanels2[a].Color := clAqua;
      '1' : timePanels2[a].Color := clGreen;
      '2' : timePanels2[a].Color := clRed;
    end;
    if a = 0 then r := xData2[a].xTime
             else r := xData2[a].xTime-xData2[a-1].xTime;

    timePanels2[a].Width := Round((ox) * (r));
  end;
  CheckFields2(timePanels2[0]);

  r := 0;
  ox := Pan_sunday.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels3[a].Color := clAqua;
    Case xData3[a].xGrade of
      '0' : timePanels3[a].Color := clAqua;
      '1' : timePanels3[a].Color := clGreen;
      '2' : timePanels3[a].Color := clRed;
    end;
    if a = 0 then r := xData3[a].xTime
             else r := xData3[a].xTime-xData3[a-1].xTime;

    timePanels3[a].Width := Round((ox) * (r));
  end;
  CheckFields3(timePanels3[0]);

  r := 0;
  ox := pan_Holiday.Width - 2;
  for a := 0 to 4 do
  Begin
    timePanels4[a].Color := clAqua;
    Case xData4[a].xGrade of
      '0' : timePanels4[a].Color := clAqua;
      '1' : timePanels4[a].Color := clGreen;
      '2' : timePanels4[a].Color := clRed;
    end;
    if a = 0 then r := xData4[a].xTime
             else r := xData4[a].xTime-xData4[a-1].xTime;

    timePanels4[a].Width := Round((ox) * (r));
  end;
  CheckFields4(timePanels4[0]);


end;

procedure TDoorscheduleRegForm.Panel44DblClick(Sender: TObject);
Var
  aColor : TColor;
  bColor : TColor;
begin
  aColor := TPanel(Sender).Color;
  if aColor = clGreen then bColor := clAqua
  else if aColor = clRed then bColor := clGreen
  else if aColor = clAqua then bColor := clRed;
  TPanel(Sender).Color := bColor;
  CheckFields4(Sender);
end;

procedure TDoorscheduleRegForm.Panel44DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Sender is TPanel) then
    if Tpanel(Source).Tag = 1 then
    Begin
      TPanel(Sender).Color := Tpanel(Source).Color;
      CheckFields4(Sender);
    end;
end;
procedure TDoorscheduleRegForm.Panel44DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TPanel) then Accept := Tpanel(Source).Tag = 1;
  CheckFields4(Sender);
end;

procedure TDoorscheduleRegForm.Panel44Resize(Sender: TObject);
begin
  CheckFields4(Sender);
end;




procedure TDoorscheduleRegForm.btnSaveClick(Sender: TObject);
var
  ox: Integer;
  a: Integer;
  bx  : Real;
  ff  : TDateTime;
  aPortNo: Integer;
  I: Integer;
  stNodeNo,stECUID,stDoorNO : string;
begin

  Screen.Cursor:= crHourGlass;

  ox := pan_Week.Width - 2;
  for a := 0 to 4 do
  Begin
    {평일}
         if timePanels1[a].Color = clGreen then xData1[a].xGrade :='1' //1개방
    else if timePanels1[a].Color = clAqua  then xData1[a].xGrade :='0' //0운영
    else if timePanels1[a].Color = clRed   then xData1[a].xGrade :='2';//`--
    bx := timePanels1[a].Left+TimePanels1[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    xData1[a].xTime := ff;

     {토요일}
         if timePanels2[a].Color = clGreen then xData2[a].xGrade :='1'
    else if timePanels2[a].Color = clAqua  then xData2[a].xGrade :='0'
    else if timePanels2[a].Color = clRed   then xData2[a].xGrade :='2';
    bx := timePanels2[a].Left+TimePanels2[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    xData2[a].xTime := ff;

    {일요일}
         if timePanels3[a].Color = clGreen then xData3[a].xGrade :='1'
    else if timePanels3[a].Color = clAqua  then xData3[a].xGrade :='0'
    else if timePanels3[a].Color = clRed   then xData3[a].xGrade :='2';
    bx := timePanels3[a].Left+TimePanels3[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    xData3[a].xTime := ff;

    {휴일}
         if timePanels4[a].Color = clGreen then xData4[a].xGrade :='1'
    else if timePanels4[a].Color = clAqua  then xData4[a].xGrade :='0'
    else if timePanels4[a].Color = clRed   then xData4[a].xGrade :='2';
    bx := timePanels4[a].Left+TimePanels4[a].Width-1;
    ff := Round(12*24 * bx/ox);
    ff := ff /(12*24);
    xData4[a].xTime := ff;
  end;

  if lbDoor.ItemIndex = 0 then
  begin

    if MessageDlg('등록된 문전체 스케쥴을 수정 하시겠습니까?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      for I:= 1 to lbDoor.Count - 1 do
      begin
        stNodeNo := inttostr(strtoint(copy(DoorList.Strings[I],1,3)));
        stECUID := copy(DoorList.Strings[I],4,2);
        stDoorNO := copy(DoorList.Strings[I],6,1);
        CreateSchedule(stNodeNo,stECUID,stDoorNO);
        DbUpDate(stNodeNo,stECUID,stDoorNO,'0',xData1);
        DbUpDate(stNodeNo,stECUID,stDoorNO,'1',xData2);
        DbUpDate(stNodeNo,stECUID,stDoorNO,'2',xData3);
        DbUpDate(stNodeNo,stECUID,stDoorNO,'3',xData4);
        ScheduleDataSend(stNodeNo,stECUID,stDoorNO); //데이터 전송
      end;
    end else
    begin
      Exit;
    end;

  end else
  begin
    stNodeNo := inttostr(strtoint(copy(DoorList.Strings[lbDoor.ItemIndex],1,3)));
    stECUID := copy(DoorList.Strings[lbDoor.ItemIndex],4,2);
    stDoorNO := copy(DoorList.Strings[lbDoor.ItemIndex],6,1);
    DbUpDate(stNodeNo,stECUID,stDoorNO,'0',xData1);
    DbUpDate(stNodeNo,stECUID,stDoorNO,'1',xData2);
    DbUpDate(stNodeNo,stECUID,stDoorNO,'2',xData3);
    DbUpDate(stNodeNo,stECUID,stDoorNO,'3',xData4);
    ScheduleDataSend(stNodeNo,stECUID,stDoorNO); //데이터 전송
  end;

  Screen.Cursor:= crDefault;
  ShowMessage('적용 되었습니다.');
  //ShowMsg('스케쥴데이터를 전송 했습니다.',3000);
  self.FindSubForm('Main').FindCommand('SendData').Params.Values['VALUE'] := 'SCHEDULETIMER'+ DATADELIMITER + '000000000000' + DATADELIMITER + 'N' + DATADELIMITER;
  self.FindSubForm('Main').FindCommand('SendData').Execute;

end;


Procedure TDoorscheduleRegForm.DbUpDate(aNodeNo,aECUID,aDoorNo,aDayCode:String;aSch:array of TTimeSch );
var
  stSql : string;
begin

  stSql := 'update TB_DEVICESCHEDULE ';
  stSql := stSql + ' Set ';
  stSql := stSql + ' DE_CELL1TIME = ''' + Formatdatetime('hhnn',aSch[0].xTime) + ''', ';
  stSql := stSql + ' DE_CELL1MODE = ''' + aSch[0].xGrade + ''', ';
  stSql := stSql + ' DE_CELL2TIME = ''' + Formatdatetime('hhnn',aSch[1].xTime) + ''', ';
  stSql := stSql + ' DE_CELL2MODE = ''' + aSch[1].xGrade + ''', ';
  stSql := stSql + ' DE_CELL3TIME = ''' + Formatdatetime('hhnn',aSch[2].xTime) + ''', ';
  stSql := stSql + ' DE_CELL3MODE = ''' + aSch[2].xGrade + ''', ';
  stSql := stSql + ' DE_CELL4TIME = ''' + Formatdatetime('hhnn',aSch[3].xTime) + ''', ';
  stSql := stSql + ' DE_CELL4MODE = ''' + aSch[3].xGrade + ''', ';
  stSql := stSql + ' DE_CELL5TIME = ''' + Formatdatetime('hhnn',aSch[4].xTime) + ''', ';
  stSql := stSql + ' DE_CELL5MODE = ''' + aSch[4].xGrade + ''', ';
  stSql := stSql + ' DE_UPDATETIME = ''' + FormatDatetime('yyyymmddhhnnss',now) + ''', ';
  stSql := stSql + ' DE_UPDATEOPERATOR = ''' + Master_ID + ''',';
  stSql := stSql + ' DE_RCVACK = ''N'' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND DO_DOORNO = ''' + aDoorNo + ''' ';
  stSql := stSql + ' AND DE_DAYCODE = ''' + aDayCode + ''' ';

  if Not DataModule1.ProcessExecSQL(stSql) then
  begin
      Application.MessageBox (PChar('스케쥴저장이 실패했습니다!'),
                              PChar(Caption),MB_ICONSTOP or MB_OK);
  end;

end;

procedure TDoorscheduleRegForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TDoorscheduleRegForm.btnSendClick(Sender: TObject);
var
  st:         string;
  aDeviceID:  String;
  aDoor:      Char;
  aDoorIndex: Integer;
  aDay:       Char;
  aData:      String;
  aIndex:     Integer;

begin

  aDoorIndex:= lbDoor.ItemIndex;
  if aDoorIndex  < 1 then
  begin
    ShowMessage('전체문 전송은 불가능 합니다.');
    Exit;
  end;

end;

Procedure TDoorscheduleRegForm.ScheduleDataSend(aNodeNo,aECUID,aDoorNO:string);
var
  st:         string;
  aDeviceID:  String;
  aDoor:      Char;
  aDoorIndex: Integer;
  aDay:       Char;
  aData:      String;
  aIndex:     Integer;
  stSql : string;

begin

{  stSql := 'SELECT * ';
  stSql := stSql + ' FROM TB_DEVICESCHEDULE ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND DO_DOORNO = ''' + aDoorNO + ''' ';

  with Query_Sch do
  begin
    Close;
    SQL.Clear;
    SQL.Text := stSql;

    Try
      Open;
    Except
      Exit;
    End;
    if RecordCount > 0 then
    begin
//      aDeviceID:= FindField('DEVICE_ID').asString;
      First;
      While not eof do
      begin
        aDoor:= FindField('DO_DOORNO').asString[1];
        aDay := FindField('DE_DAYCODE').asString[1];
        aData:= FindField('DE_CELL5TIME').asString + FindField('DE_CELL1MODE').asString+
                FindField('DE_CELL1TIME').asString + FindField('DE_CELL2MODE').asString+
                FindField('DE_CELL2TIME').asString + FindField('DE_CELL3MODE').asString+
                FindField('DE_CELL3TIME').asString + FindField('DE_CELL4MODE').asString+
                FindField('DE_CELL4TIME').asString + FindField('DE_CELL5MODE').asString;

         aDevice:= fmMain.GetDevice(FillZeroNumber(strtoint(aNodeNo),3) + aECUID );
         if aDevice <> nil then
         begin
            aDevice.SendDoorSchadule(aDoor,aDay,aData);
         end;
         Next;
      end;
    end;
  end;
  //ShowMessage('스케줄 전송을 실행 했습니다.');  } 
end;

procedure TDoorscheduleRegForm.LoadBuildingCode(cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin

  cmb_Box.Clear;
  cmb_Box.Enabled := True;
  BuildingCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''0'' ';
  if Not IsMaster then
  begin
    if BuildingGrade <> 0 then
    begin
      stSql := stSql + ' AND LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
    end
  end;
  stSql := stSql + ' order by LO_DONGCODE ';

  cmb_Box.Items.Add('전체');
  BuildingCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;
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

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        BuildingCodeList.Add(FindField('LO_DONGCODE').AsString);
        Next;
      end;
      if Not IsMaster then
      begin
        if BuildingGrade <> 0 then
        begin
          if BuildingCodeList.IndexOf(MasterBuildingCode) > 0 then
          begin
            cmb_Box.ItemIndex := BuildingCodeList.IndexOf(MasterBuildingCode);
            cmb_Box.Enabled := False;
          end;
        end
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TDoorscheduleRegForm.LoadAreaCode(aBuildingCode,
  aFloorCode: string; cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery : TADOQuery;
begin
  cmb_Box.Clear;
  AreaCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''2'' ';

  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;

  if (aFloorCode <> '') And (aFloorCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_FLOORCODE = ''' + aFloorCode + '''';
  end else Exit;

  if Not IsMaster then
  begin
    if BuildingGrade > 2 then
    begin
      stSql := stSql + ' AND LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end
  end;
  stSql := stSql + ' order by LO_DONGCODE,LO_FLOORCODE ';

  cmb_Box.Items.Add('전체');
  AreaCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

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

      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        AreaCodeList.Add(FindField('LO_AREACODE').AsString);
        Next;
      end;
      if Not IsMaster then
      begin
        if BuildingGrade > 2 then
        begin
          if AreaCodeList.IndexOf(MasterAreaCode) > 0 then
          begin
            cmb_Box.ItemIndex := AreaCodeList.IndexOf(MasterAreaCode);
            cmb_Box.Enabled := False;
          end;
        end
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TDoorscheduleRegForm.LoadFloorCode(aBuildingCode: string;
  cmb_Box: TComboBox);
var
  stSql : string;
  TempAdoQuery:TADOQuery;
begin
  cmb_Box.Clear;
  FloorCodeList.Clear;

  stSql := 'select * from TB_LOCATION ';
  stSql := stSql + ' where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND LO_GUBUN = ''1'' ';
  if (aBuildingCode <> '') And (aBuildingCode <> '000')  then
  begin
    stSql := stSql + ' AND LO_DONGCODE = ''' + aBuildingCode + '''';
  end else Exit;

  if Not IsMaster then
  begin
    if BuildingGrade > 1 then
    begin
      stSql := stSql + ' AND LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
    end
  end;

  stSql := stSql + ' order by LO_DONGCODE,LO_FLOORCODE';

  cmb_Box.Items.Add('전체');
  FloorCodeList.Add('');
  cmb_Box.ItemIndex := 0;

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

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
      First;
      While Not Eof do
      begin
        cmb_Box.Items.Add(FindField('LO_NAME').AsString );
        FloorCodeList.Add(FindField('LO_FLOORCODE').AsString);
        Next;
      end;
      if Not IsMaster then
      begin
        if BuildingGrade > 1 then
        begin
          if FloorCodeList.IndexOf(MasterFloorCode) > 0 then
          begin
            cmb_Box.ItemIndex := FloorCodeList.IndexOf(MasterFloorCode);
            cmb_Box.Enabled := False;
          end;
        end
      end;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

procedure TDoorscheduleRegForm.DoorLoad(aBuildingCode,aFloorCode,aAreaCode:string);
Var
  a : Integer;
  r : TDateTime;
  ox  : Integer;
  st: string;
  aDoorType: Integer;
  stSql : string;

begin

  DoorList.Clear;

  stSql := 'Select a.DO_DOORNONAME,a.AC_NODENO,a.AC_ECUID,a.DO_DOORNO';
  stSql := stSql + ' from TB_DOOR a ';
  stSql := stSql + ' Inner Join TB_ACCESSDEVICE b ';
  stSql := stSql + ' ON ( a.GROUP_CODE = b.GROUP_CODE ';
  stSql := stSql + '      AND a.AC_NODENO = b.AC_NODENO ';
  stSql := stSql + '      AND a.AC_ECUID = b.AC_ECUID ';
  stSql := stSql + '      AND b.AC_ACTYPE = ''1'') ';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + '''';
  stSql := stSql + ' AND a.DO_SCHUSE = ''1'' ';

  if Not IsMaster then
  begin
    if BuildingGrade = 1 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 2 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end else if BuildingGrade = 3 then
    begin
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' '
      else
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + MasterBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' '
      else
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + MasterFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' '
      else
        stSql := stSql + ' AND a.LO_AREACODE = ''' + MasterAreaCode + ''' ';
    end else
    begin
      if BuildingGrade = 4 then stSql := stSql + ' AND b.AD_USERID = ''' + Master_ID + ''' ';
      if (aBuildingCode <> '') and (aBuildingCode <> '000') then
        stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
      if (aFloorCode <> '') and (aFloorCode <> '000') then
        stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
      if (aAreaCode <> '') and (aAreaCode <> '000') then
        stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
    end;
  end else
  begin
    if (aBuildingCode <> '') and (aBuildingCode <> '000') then
      stSql := stSql + ' AND a.LO_DONGCODE = ''' + aBuildingCode + ''' ';
    if (aFloorCode <> '') and (aFloorCode <> '000') then
      stSql := stSql + ' AND a.LO_FLOORCODE = ''' + aFloorCode + ''' ';
    if (aAreaCode <> '') and (aAreaCode <> '000') then
      stSql := stSql + ' AND a.LO_AREACODE = ''' + aAreaCode + ''' ';
  end;
  lbDoor.Clear;
  with Query_Door do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    First;
    lbDoor.Items.Add('000.전체');
    DoorList.Add('000.전체');
    while not eof do
    begin
        st:= FillZeroNumber(FindField('AC_NODENO').AsInteger,3) + FindField('AC_ECUID').asString + FindField('DO_DOORNO').asString;
        lbDoor.Items.Add(FindField('DO_DOORNONAME').asString);
        DoorList.Add(st);
      Next;
    end;
  end;
  lbDoor.ItemIndex:= 0;
  lbDoorClick(Self);
  Screen.Cursor:= crDefault;
end;

procedure TDoorscheduleRegForm.cmb_BuildingCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  if cmb_BuildingCode1.itemindex < 0 then Exit;
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';

  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  LoadFloorCode(stBuildingCode,cmb_FloorCode1);
  if cmb_FloorCode1.ItemIndex > 0 then stFloorCode := FloorCodeList.Strings[cmb_FloorCode1.itemIndex];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  if cmb_AreaCode1.ItemIndex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex];;
  DoorLoad(stBuildingCode,stFloorCode,stAreaCode);
end;

procedure TDoorscheduleRegForm.cmb_FloorCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  stBuildingCode := '000';
  stFloorCode := '000';
  stAreaCode := '000';
  if cmb_BuildingCode1.itemindex < 0 then Exit;
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  if cmb_FloorCode1.itemindex < 0 then Exit;
  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
  LoadAreaCode(stBuildingCode,stFloorCode,cmb_AreaCode1);
  if cmb_AreaCode1.itemindex > 0 then stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemindex];
  DoorLoad(stBuildingCode,stFloorCode,stAreaCode);

end;

procedure TDoorscheduleRegForm.cmb_AreaCode1Change(Sender: TObject);
var
  stBuildingCode : string;
  stFloorCode : string;
  stAreaCode : string;
begin
  if cmb_BuildingCode1.itemindex < 0 then Exit;
  stBuildingCode := BuildingCodeList.Strings[ cmb_BuildingCode1.itemindex ];
  if cmb_FloorCode1.itemindex < 0 then Exit;
  stFloorCode := FloorCodeList.Strings[ cmb_FloorCode1.itemindex ];
  if cmb_AreaCode1.itemindex < 0 then Exit;
  stAreaCode := AreaCodeList.Strings[cmb_AreaCode1.itemIndex ];
  DoorLoad(stBuildingCode,stFloorCode,stAreaCode);

end;

procedure TDoorscheduleRegForm.CreateSchedule(aNodeNo, aECUID,
  aDOORNO: string);
var
  i : integer;
  stSql : string;
begin
  if checkTB_DEVICESCHEDULE(aNodeNo,aECUID,aDOORNO) then Exit;

  for I:= 0 to 3 do
  begin
    stSql := ' Insert Into TB_DEVICESCHEDULE ';
    stSql := stSql + '( GROUP_CODE,AC_NODENO,AC_ECUID,DO_DOORNO,DE_DAYCODE,';
    stSql := stSql + ' DE_CELL1TIME,DE_CELL1MODE,DE_CELL2TIME,DE_CELL2MODE,';
    stSql := stSql + ' DE_CELL3TIME,DE_CELL3MODE,DE_CELL4TIME,DE_CELL4MODE,';
    stSql := stSql + ' DE_CELL5TIME,DE_CELL5MODE,DE_UPDATETIME,DE_UPDATEOPERATOR,';
    stSql := stSql + ' DE_RCVACK ) ';
    stSql := stSql + ' Values(''' + GROUPCODE + ''',';
    stSql := stSql + aNodeNo + ',';
    stSql := stSql + '''' + aECUID + ''',';
    stSql := stSql + '''' + aDOORNO + ''',';
    stSql := stSql + '''' + inttostr(I) + ''',';
    stSql := stSql + '''0500'',';
    stSql := stSql + '''1'',';
    stSql := stSql + '''1200'',';
    stSql := stSql + '''1'',';
    stSql := stSql + '''1300'',';
    stSql := stSql + '''1'',';
    stSql := stSql + '''1800'',';
    stSql := stSql + '''1'',';
    stSql := stSql + '''0000'',';
    stSql := stSql + '''1'',';
    stSql := stSql + '''' + FormatDateTime('yyyymmddHHMMSS',Now) + ''',';
    stSql := stSql + '''' + Master_ID + ''',';
    stSql := stSql + '''N'')';

    DataModule1.ProcessExecSQL(stSql);

  end;
end;

function TDoorscheduleRegForm.checkTB_DEVICESCHEDULE(aNodeNo, aECUID,
  aDOORNO: string): Boolean;
var
  stSql : string;
  TempAdoQuery:TADOQuery;
begin
  result := False;

  stSql := 'SELECT * ';
  stSql := stSql + ' FROM TB_DEVICESCHEDULE ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND AC_NODENO = ' + aNodeNo ;
  stSql := stSql + ' AND AC_ECUID = ''' + aECUID + ''' ';
  stSql := stSql + ' AND DO_DOORNO = ''' + aDOORNO + ''' ';

  Try
    CoInitialize(nil);
    TempAdoQuery := TADOQuery.Create(nil);
    TempAdoQuery.Connection := DataModule1.ADOConnection;

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
      result := True;
    end;
  Finally
    TempAdoQuery.Free;
    CoUninitialize;
  End;
end;

end.


