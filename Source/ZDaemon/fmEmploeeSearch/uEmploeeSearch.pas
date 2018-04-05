unit uEmploeeSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, BaseGrid, AdvGrid, StdCtrls, Buttons, ExtCtrls,ADODB,
  DB, AdvObj;

type
  TfmEmploeeSearch = class(TForm)
    Panel12: TPanel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    cmb_Company: TComboBox;
    cmb_Jijum: TComboBox;
    cmb_Depart: TComboBox;
    ed_EmpNo: TEdit;
    ed_EmpNM: TEdit;
    btn_Search: TBitBtn;
    sg_Employ: TAdvStringGrid;
    StatusBar1: TStatusBar;
    btn_Close: TSpeedButton;
    btn_Print: TBitBtn;
    SaveDialog1: TSaveDialog;
    ADOQuery: TADOQuery;
    GroupBox1: TGroupBox;
    cmb_Posi: TComboBox;
    Label6: TLabel;
    Panel1: TPanel;
    btn_Insert: TSpeedButton;
    btn_Update: TSpeedButton;
    btn_CsvSave: TBitBtn;
    btn_Delete: TSpeedButton;
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmb_CompanyChange(Sender: TObject);
    procedure cmb_JijumChange(Sender: TObject);
    procedure cmb_DepartChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_InsertClick(Sender: TObject);
    procedure btn_CsvSaveClick(Sender: TObject);
    procedure btn_UpdateClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure sg_EmployDblClick(Sender: TObject);
  private
    CompanyCodeList : TStringList;
    JijumCodeList : TStringList;
    DepartCodeList : TStringList;
    PosiCodeList : TStringList;
    { Private declarations }
    procedure SearchEmployee(aCode:string;aTopRow:integer=1);
    procedure GridInit(sg:TStringGrid;aCol:integer);
    function DeleteCardNOGrade(aEmployeeNo,aCompanyCode:string):Boolean;
    function DeleteTB_Employee(aEmployeeNo,aCompanyCode:string):Boolean;
    Function DeleteTB_CARDNO(aCardNo:string):Boolean;
    Function DeleteTB_FingerDeviceCardNo_FingerNo(aFingerNo:string):Boolean;
    Function DeleteTB_CardFinger_FingerNo(aFingerNo:string):Boolean;

    Function UpdateTB_DEVICECARDNODelete(aCardNo,aPermit:string):Boolean; //모든 카드 권한을 삭제 처리함
    Function CheckTB_CARDEmployee(aEmployeeNo,aCompanyCode:string):Boolean;
  public
    SelectEmployeeNo : string;
    { Public declarations }
  end;

var
  fmEmploeeSearch: TfmEmploeeSearch;

implementation
uses
  uDataModule1,
  uEmploy,
  uCompanyCodeLoad;
{$R *.dfm}

procedure TfmEmploeeSearch.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmEmploeeSearch.btn_SearchClick(Sender: TObject);
var
  stSql : string;
  nRow : integer;
  i : integer;
  TempAdoQuery : TADOQuery;
begin
  SearchEmployee('');
(*  GridInit(sg_Employ,13);


  stSql := 'select c.CO_NAME as COMPANYNAME, ';
  stSql := stSql + ' d.CO_NAME as JIJUMNAME,e.CO_NAME as DEPARTNAME,f.PO_NAME,a.EM_CODE,';
  stSql := stSql + ' a.EM_NAME,a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE,a.PO_POSICODE, ';
  stSql := stSql + ' a.EM_COPHONE,a.EM_JOINDATE,a.EM_RETIREDATE,a.ZI_ZIPCODE,';
  stSql := stSql + ' a.EM_ADDR1,a.EM_ADDR2,EM_HOMEPHONE,a.EM_HANDPHONE,a.EM_IMAGE,a.FDMS_ID,';
  stSql := stSql + ' b.CA_CARDNO,b.CA_CARDTYPE,b.POSITIONNUM ';
  stSql := stSql + ' FROM ';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' TB_EMPLOYEE as a ';
  stSql := stSql + ' left JOIN TB_CARD as b ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = b.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.EM_CODE = b.EM_CODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = b.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where co_gubun = ''1'') as c ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = c.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = c.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where co_gubun = ''2'') as d ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = d.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.CO_JIJUMCODE = d.CO_JIJUMCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = d.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where co_gubun = ''3'') as e ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = e.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.CO_JIJUMCODE = e.CO_JIJUMCODE) ';
  stSql := stSql + ' AND (a.CO_DEPARTCODE = e.CO_DEPARTCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = e.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN TB_POSI f ';
  stSql := stSql + ' ON (a.PO_POSICODE = f.PO_POSICODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = f.GROUP_CODE)';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if cmb_Company.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ' ;
    if cmb_Jijum.ItemIndex > 0 then
    begin
        stSql := stSql + 'AND a.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' '
    end;
    if cmb_Depart.ItemIndex > 0 then
    begin
        stSql := stSql + 'AND a.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' '
    end;
  end;
  if cmb_Posi.ItemIndex > 0 then
    stSql := stSql + ' AND a.PO_POSICODE = ''' + PosiCodeList.Strings[cmb_Posi.ItemIndex] + ''' ';
  if Trim(ed_EmpNo.Text) <> '' then
    stSql := stSql + ' AND a.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
  if Trim(ed_EmpNM.Text) <> '' then
    stSql := stSql + ' AND a.EM_NAME LIKE ''%' + Trim(ed_EmpNM.Text)  + '%'' ';

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
      TempAdoQuery.Free;
      Exit;
    End;

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      Exit;
    end;

    sg_Employ.RowCount := RecordCount + 1;
    nRow := 1;
    First;
    while Not Eof do
    begin
      with sg_Employ do
      begin
        cells[0,nRow] := FindField('COMPANYNAME').AsString;
        cells[1,nRow] := FindField('JIJUMNAME').AsString;
        cells[2,nRow] := FindField('DEPARTNAME').AsString;
        cells[3,nRow] := FindField('PO_NAME').AsString;
        cells[4,nRow] := FindField('EM_CODE').AsString;
        cells[5,nRow] := FindField('EM_NAME').AsString;
        cells[6,nRow] := FindField('CA_CARDNO').AsString;
        cells[7,nRow] := FindField('CA_CARDTYPE').AsString;
        if cells[7,nRow] = '1' then cells[7,nRow] := '등록'
        else if cells[7,nRow] = '2' then cells[7,nRow] := '분실'
        else if cells[7,nRow] = '3' then cells[7,nRow] := '정지';

        cells[8,nRow] := FindField('CO_COMPANYCODE').AsString;
        cells[9,nRow] := FindField('CO_JIJUMCODE').AsString;
        cells[10,nRow] := FindField('CO_DEPARTCODE').AsString;
        cells[11,nRow] := FindField('PO_POSICODE').AsString;
        cells[12,nRow] := FindField('EM_COPHONE').AsString;
        cells[13,nRow] := FindField('EM_JOINDATE').AsString;
        cells[14,nRow] := FindField('EM_RETIREDATE').AsString;
        cells[15,nRow] := FindField('ZI_ZIPCODE').AsString;
        cells[16,nRow] := FindField('EM_ADDR1').AsString;
        cells[17,nRow] := FindField('EM_ADDR2').AsString;
        cells[18,nRow] := FindField('EM_HOMEPHONE').AsString;
        cells[19,nRow] := FindField('EM_HANDPHONE').AsString;
        cells[20,nRow] := FindField('EM_IMAGE').AsString;
        cells[21,nRow] := FindField('POSITIONNUM').AsString;
        cells[22,nRow] := FindField('FDMS_ID').AsString;

        if SelectEmployeeNo = (FindField('CO_COMPANYCODE').AsString + FindField('EM_CODE').AsString) then
        begin
          SelectRows(nRow,1);
        end;
      end;
      nRow := nRow + 1;
      Next;
    end;
  end;
  TempAdoQuery.Free;
  SelectEmployeeNo := '';
*)
end;

procedure TfmEmploeeSearch.GridInit(sg: TStringGrid;aCol:integer);
var
  i:integer;
begin
  with sg do
  begin
    RowCount := 2;
    for i:= 0 to ColCount - 1 do
    begin
      Cells[i,1] := '';
    end;

    for i := aCol to ColCount - 1 do
    begin
      ColWidths[i] := 0;
    end;
  end;

end;

procedure TfmEmploeeSearch.FormCreate(Sender: TObject);
begin
    CompanyCodeList := TStringList.Create;
    JijumCodeList := TStringList.Create;
    DepartCodeList := TStringList.Create;
    PosiCodeList := TStringList.Create;

end;

procedure TfmEmploeeSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    CompanyCodeList.Free;
    JijumCodeList.Free;
    DepartCodeList.Free;
    PosiCodeList.Free;

    Action := caFree;

end;

procedure TfmEmploeeSearch.cmb_CompanyChange(Sender: TObject);
var
  stCompanyCode : string;
  stJijumCode : string;
begin
  stCompanyCode := '000';
  if cmb_Company.ItemIndex > 0 then stCompanyCode := CompanyCodeList.Strings[cmb_Company.ItemIndex];
  LoadJijumCode(stCompanyCode,JijumCodeList,cmb_Jijum);
  stJijumCode := '000';
  if cmb_Jijum.ItemIndex > 0 then stJijumCode := copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3);
  LoadDepartCode(stCompanyCode,stJijumCode,DepartCodeList,cmb_Depart);
  LoadPosiCode(stCompanyCode,PosiCodeList,cmb_Posi);
  btn_SearchClick(Self);

end;

procedure TfmEmploeeSearch.cmb_JijumChange(Sender: TObject);
var
  stCompanyCode : string;
  stJijumCode : string;
begin
  stCompanyCode := '000';
  stJijumCode := '000';
  if cmb_Jijum.ItemIndex > 0 then
  begin
    stCompanyCode := copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],1,3);
    stJijumCode := copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3);
    LoadDepartCode(stCompanyCode,stJijumCode,DepartCodeList,cmb_Depart);
  end;
  btn_SearchClick(Self);
end;

procedure TfmEmploeeSearch.cmb_DepartChange(Sender: TObject);
begin
  btn_SearchClick(Self);
end;

procedure TfmEmploeeSearch.FormShow(Sender: TObject);
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

  GridInit(sg_Employ,12);
  btn_SearchClick(self);
end;

procedure TfmEmploeeSearch.btn_InsertClick(Sender: TObject);
begin
  SelectEmployeeNo := '';
  fmEmploy:= TfmEmploy.Create(Self);
  bfmEmployShow := True;
  fmEmploy.State := 'INSERT';
  fmEmploy.SHowmodal;
  bfmEmployShow := False;
  fmEmploy.Free;
  btn_SearchClick(self);
end;

procedure TfmEmploeeSearch.btn_CsvSaveClick(Sender: TObject);
var
  aFileName: String;
  sDate: String;
  eDate: String;
begin
  Screen.Cursor:= crHourGlass;
  aFileName:='사원관리';
  SaveDialog1.DefaultExt:= 'CSV';
  SaveDialog1.Filter := 'Text files (*.CSV)|*.CSV';
  SaveDialog1.FileName := aFileName;
  if SaveDialog1.Execute then
  begin
    sg_Employ.SaveToCSV(SaveDialog1.FileName);
  end;
  Screen.Cursor:= crDefault;

end;

procedure TfmEmploeeSearch.btn_UpdateClick(Sender: TObject);
begin
  if Trim(sg_Employ.Cells[4,sg_Employ.Row]) = '' then
  begin
    showmessage('수정할 직원을 선택 하세요.');
    Exit;
  end;
  SelectEmployeeNo := sg_Employ.Cells[8,sg_Employ.Row] + sg_Employ.Cells[4,sg_Employ.Row];
  fmEmploy:= TfmEmploy.Create(Self);
  bfmEmployShow := True;
  fmEmploy.State := 'UPDATE';
  fmEmploy.EmployeeNo := sg_Employ.Cells[4,sg_Employ.Row];
  fmEmploy.CompanyCode := sg_Employ.Cells[8,sg_Employ.Row];
  fmEmploy.SelectCardNo := sg_Employ.Cells[6,sg_Employ.Row];
  fmEmploy.ed_CardNumber.Text := sg_Employ.Cells[21,sg_Employ.Row];

  fmEmploy.SHowmodal;
  SelectEmployeeNo := fmEmploy.SelectEmployee;
  bfmEmployShow := False;
  fmEmploy.Free;
//  SelectEmployeeNo := '';
//  btn_SearchClick(self);
  SearchEmployee(SelectEmployeeNo,sg_Employ.topRow);
end;

procedure TfmEmploeeSearch.btn_DeleteClick(Sender: TObject);
begin
  if (Application.MessageBox(PChar('사번:' + sg_Employ.Cells[4,sg_Employ.row] + ' 데이터를 삭제하시겠습니까?'),'삭제',MB_OKCANCEL) = ID_CANCEL)  then Exit;
  Try
    //DeleteCardNOGrade(sg_Employ.Cells[4,sg_Employ.row],sg_Employ.Cells[8,sg_Employ.row]);
    UpdateTB_DEVICECARDNODelete(sg_Employ.Cells[6,sg_Employ.row],'N'); //카드권한 삭제
    DeleteTB_CARDNO(sg_Employ.Cells[6,sg_Employ.row]);                 //카드 삭제

    if CheckTB_CARDEmployee(sg_Employ.Cells[4,sg_Employ.row],sg_Employ.Cells[8,sg_Employ.row]) then Exit; //같은 사번의 카드가 존재 하면 빠져 나감
    DeleteTB_Employee(sg_Employ.Cells[4,sg_Employ.row],sg_Employ.Cells[8,sg_Employ.row]);

    DeleteTB_FingerDeviceCardNo_FingerNo(sg_Employ.cells[22,sg_Employ.Row]);
    DeleteTB_CardFinger_FingerNo(sg_Employ.cells[22,sg_Employ.Row]);

  Finally
    btn_SearchClick(self);
  End;
end;

function TfmEmploeeSearch.UpdateTB_DEVICECARDNODelete(aCardNo, aPermit: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Update TB_DEVICECARDNO Set ';
  stSql := stSql + ' DE_PERMIT = ''' + aPermit + ''', ';
  stSql := stSql + ' DE_RCVACK = ''N'' ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND CA_CARDNO = ''' + aCardNo + ''' ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmEmploeeSearch.DeleteCardNOGrade(aEmployeeNo,
  aCompanyCode: string): Boolean;
var
  stSql : string;
begin
  result := False;
  stSql := 'select * from TB_CARD ';
  stSql := stSql + ' WHERE GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmployeeNo + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  with AdoQuery do
  begin
    close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    while Not Eof do
    begin
      UpdateTB_DEVICECARDNODelete(FindField('CA_CARDNO').AsString,'N');
      DeleteTB_CARDNO(FindField('CA_CARDNO').AsString);
      Next;
    end;
  end;
  result := True;
end;

function TfmEmploeeSearch.DeleteTB_Employee(aEmployeeNo,
  aCompanyCode: string): Boolean;
var
  stSql : string;
begin
  stSql := 'delete from TB_EMPLOYEE ';
  stSql := stSql + ' Where GROUP_CODE = ''' + GROUPCODE + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmployeeNo + ''' ';
  stSql := stSql + ' AND CO_COMPANYCODE = ''' + aCompanyCode + ''' ';

  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmEmploeeSearch.sg_EmployDblClick(Sender: TObject);
begin
  btn_UpdateClick(self);
end;

function TfmEmploeeSearch.DeleteTB_CARDNO(aCardNo: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Delete From TB_CARD where CA_CARDNO = ''' + aCardNo + ''' ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmEmploeeSearch.CheckTB_CARDEmployee(aEmployeeNo,
  aCompanyCode: string): Boolean;
var
  stSql : string;
begin
  result := True;
  stSql := 'Select * from TB_CARD ';
  stSql := stSql + ' Where CO_COMPANYCODE = ''' + aCompanyCode + ''' ';
  stSql := stSql + ' AND EM_CODE = ''' + aEmployeeNo + ''' ';

  with ADOQuery do
  begin
    Close;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then result := False;
  end;

end;

function TfmEmploeeSearch.DeleteTB_CardFinger_FingerNo(
  aFingerNo: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Delete From TB_CardFinger where FP_USERID = ' + aFingerNo + ' ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

function TfmEmploeeSearch.DeleteTB_FingerDeviceCardNo_FingerNo(
  aFingerNo: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Delete From TB_FingerDeviceCard where FP_USERID = ' + aFingerNo + ' ';
  result := DataModule1.ProcessExecSQL(stSql);
end;

procedure TfmEmploeeSearch.SearchEmployee(aCode: string; aTopRow: integer);
var
  stSql : string;
  nRow : integer;
  i : integer;
  TempAdoQuery : TADOQuery;
begin
  GridInit(sg_Employ,13);


  stSql := 'select c.CO_NAME as COMPANYNAME, ';
  stSql := stSql + ' d.CO_NAME as JIJUMNAME,e.CO_NAME as DEPARTNAME,f.PO_NAME,a.EM_CODE,';
  stSql := stSql + ' a.EM_NAME,a.CO_COMPANYCODE,a.CO_JIJUMCODE,a.CO_DEPARTCODE,a.PO_POSICODE, ';
  stSql := stSql + ' a.EM_COPHONE,a.EM_JOINDATE,a.EM_RETIREDATE,a.ZI_ZIPCODE,';
  stSql := stSql + ' a.EM_ADDR1,a.EM_ADDR2,EM_HOMEPHONE,a.EM_HANDPHONE,a.EM_IMAGE,a.FDMS_ID,';
  stSql := stSql + ' b.CA_CARDNO,b.CA_CARDTYPE,b.POSITIONNUM ';
  stSql := stSql + ' FROM ';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' (';
  stSql := stSql + ' TB_EMPLOYEE as a ';
  stSql := stSql + ' left JOIN TB_CARD as b ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = b.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.EM_CODE = b.EM_CODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = b.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where co_gubun = ''1'') as c ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = c.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = c.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where co_gubun = ''2'') as d ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = d.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.CO_JIJUMCODE = d.CO_JIJUMCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = d.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN (select * from TB_COMPANY where co_gubun = ''3'') as e ';
  stSql := stSql + ' ON (a.CO_COMPANYCODE = e.CO_COMPANYCODE) ';
  stSql := stSql + ' AND (a.CO_JIJUMCODE = e.CO_JIJUMCODE) ';
  stSql := stSql + ' AND (a.CO_DEPARTCODE = e.CO_DEPARTCODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = e.GROUP_CODE)';
  stSql := stSql + ' ) ';
  stSql := stSql + ' Left JOIN TB_POSI f ';
  stSql := stSql + ' ON (a.PO_POSICODE = f.PO_POSICODE) ';
  stSql := stSql + ' AND (a.GROUP_CODE = f.GROUP_CODE)';
  stSql := stSql + ' Where a.GROUP_CODE = ''' + GROUPCODE + ''' ';
  if cmb_Company.ItemIndex > 0 then
  begin
    stSql := stSql + ' AND a.CO_COMPANYCODE = ''' + CompanyCodeList.Strings[cmb_Company.ItemIndex] + ''' ' ;
    if cmb_Jijum.ItemIndex > 0 then
    begin
        stSql := stSql + 'AND a.CO_JIJUMCODE = ''' + copy(JijumCodeList.Strings[cmb_Jijum.ItemIndex],4,3) + ''' '
    end;
    if cmb_Depart.ItemIndex > 0 then
    begin
        stSql := stSql + 'AND a.CO_DEPARTCODE = ''' + copy(DepartCodeList.Strings[cmb_Depart.ItemIndex],7,3) + ''' '
    end;
  end;
  if cmb_Posi.ItemIndex > 0 then
    stSql := stSql + ' AND a.PO_POSICODE = ''' + PosiCodeList.Strings[cmb_Posi.ItemIndex] + ''' ';
  if Trim(ed_EmpNo.Text) <> '' then
    stSql := stSql + ' AND a.EM_CODE = ''' + Trim(ed_EmpNo.Text)  + ''' ';
  if Trim(ed_EmpNM.Text) <> '' then
    stSql := stSql + ' AND a.EM_NAME LIKE ''%' + Trim(ed_EmpNM.Text)  + '%'' ';

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
      TempAdoQuery.Free;
      Exit;
    End;

    if RecordCount < 1 then
    begin
      TempAdoQuery.Free;
      Exit;
    end;

    sg_Employ.RowCount := RecordCount + 1;
    nRow := 1;
    First;
    while Not Eof do
    begin
      with sg_Employ do
      begin
        cells[0,nRow] := FindField('COMPANYNAME').AsString;
        cells[1,nRow] := FindField('JIJUMNAME').AsString;
        cells[2,nRow] := FindField('DEPARTNAME').AsString;
        cells[3,nRow] := FindField('PO_NAME').AsString;
        cells[4,nRow] := FindField('EM_CODE').AsString;
        cells[5,nRow] := FindField('EM_NAME').AsString;
        cells[6,nRow] := FindField('CA_CARDNO').AsString;
        cells[7,nRow] := FindField('CA_CARDTYPE').AsString;
        if cells[7,nRow] = '1' then cells[7,nRow] := '등록'
        else if cells[7,nRow] = '2' then cells[7,nRow] := '분실'
        else if cells[7,nRow] = '3' then cells[7,nRow] := '정지';

        cells[8,nRow] := FindField('CO_COMPANYCODE').AsString;
        cells[9,nRow] := FindField('CO_JIJUMCODE').AsString;
        cells[10,nRow] := FindField('CO_DEPARTCODE').AsString;
        cells[11,nRow] := FindField('PO_POSICODE').AsString;
        cells[12,nRow] := FindField('EM_COPHONE').AsString;
        cells[13,nRow] := FindField('EM_JOINDATE').AsString;
        cells[14,nRow] := FindField('EM_RETIREDATE').AsString;
        cells[15,nRow] := FindField('ZI_ZIPCODE').AsString;
        cells[16,nRow] := FindField('EM_ADDR1').AsString;
        cells[17,nRow] := FindField('EM_ADDR2').AsString;
        cells[18,nRow] := FindField('EM_HOMEPHONE').AsString;
        cells[19,nRow] := FindField('EM_HANDPHONE').AsString;
        cells[20,nRow] := FindField('EM_IMAGE').AsString;
        cells[21,nRow] := FindField('POSITIONNUM').AsString;
        cells[22,nRow] := FindField('FDMS_ID').AsString;

        if aCode = (FindField('CO_COMPANYCODE').AsString + FindField('EM_CODE').AsString) then
        begin
          SelectRows(nRow,1);
        end;
      end;
      nRow := nRow + 1;
      Next;
    end;
    sg_Employ.TopRow := aTopRow;
  end;
  TempAdoQuery.Free;
  SelectEmployeeNo := '';
end;

initialization
  RegisterClass(TfmEmploeeSearch);
Finalization
  UnRegisterClass(TfmEmploeeSearch);

end.
