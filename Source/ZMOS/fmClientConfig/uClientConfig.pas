unit uClientConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Buttons, LMDCustomComponent, LMDIniCtrl,
  ComCtrls, DB, ADODB;

type
  TfmClientConfig = class(TForm)
    btn_Save: TSpeedButton;
    btn_Close: TSpeedButton;
    RzOpenDialog1: TOpenDialog;
    LMDIniCtrl1: TLMDIniCtrl;
    PageControl1: TPageControl;
    AccessTab: TTabSheet;
    AlarmTab: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    chk_Alarm: TCheckBox;
    ed_alarmFile: TEdit;
    btWav1: TRzBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    cmb_CardGradeCopy: TComboBox;
    gb_AlarmConfig: TGroupBox;
    Label2: TLabel;
    chk_PTAlarm: TCheckBox;
    ed_PTalarmFile: TEdit;
    btn_PtAlalrm: TRzBitBtn;
    Label4: TLabel;
    cmb_ACEvent: TComboBox;
    GroupBox3: TGroupBox;
    chk_FireMessage: TCheckBox;
    ed_FireState: TEdit;
    GroupBox4: TGroupBox;
    chk_Intro: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    ed_FireTime: TEdit;
    Label7: TLabel;
    MonitoringTab: TTabSheet;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    cmb_LoginStart: TComboBox;
    cmb_MonitorGubun: TComboBox;
    TabSheet1: TTabSheet;
    GroupBox6: TGroupBox;
    Label10: TLabel;
    cmb_Search: TComboBox;
    chk_longOpen: TCheckBox;
    chk_PTMessage: TCheckBox;
    chk_Close: TCheckBox;
    KT_TAB: TTabSheet;
    GroupBox8: TGroupBox;
    chk_DubCardReg: TCheckBox;
    fdmsADOQuery: TADOQuery;
    TabSheet2: TTabSheet;
    GroupBox7: TGroupBox;
    lb_emType: TLabel;
    cmb_emType: TComboBox;
    procedure btn_CloseClick(Sender: TObject);
    procedure btWav1Click(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_PtAlalrmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    EmpTypeCodeList : TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClientConfig: TfmClientConfig;

implementation
uses
  uDataModule1,
  uLomosUtil,
  uCompanyCodeLoad;
{$R *.dfm}

procedure TfmClientConfig.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmClientConfig.btWav1Click(Sender: TObject);
var
  st : string;
  edit : TEdit;
begin

  RzOpenDialog1.Title:= '소리 파일 찾기';
  RzOpenDialog1.DefaultExt:= 'wav,mp3';
  RzOpenDialog1.InitialDir := 'C:\WINDOWS\Media'; //C:\WINDOWS\Media
  RzOpenDialog1.Filter := 'WAV files (*.wav,*.mp3)|*.WAV;*.MP3';
  if RzOpenDialog1.Execute then
  begin
    ed_alarmFile.Text := RzOpenDialog1.FileName;
  end;

end;

procedure TfmClientConfig.btn_SaveClick(Sender: TObject);
begin
  if chk_Alarm.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','알람발생','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','알람발생','N');
  end;
  if chk_longOpen.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','장시간열림알람발생','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','장시간열림알람발생','N');
  end;
  
  LMDIniCtrl1.WriteString('환경설정','알람파일',ed_alarmFile.Text);
  if chk_PTAlarm.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','방범알람발생','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','방범알람발생','N');
  end;
  if chk_PTMessage.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','알람메시지','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','알람메시지','N');
  end;
  LMDIniCtrl1.WriteString('환경설정','방범알람파일',ed_PTalarmFile.Text);
  LMDIniCtrl1.WriteInteger('환경설정','카드권한복사',cmb_CardGradeCopy.ItemIndex);
  LMDIniCtrl1.WriteInteger('환경설정','출입이벤트',cmb_ACEvent.ItemIndex);
  if chk_Intro.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','범례표시','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','범례표시','N');
  end;
  if chk_Close.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','폐쇄모드','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','폐쇄모드','N');
  end;
  if chk_FireMessage.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','화재메시지','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','화재메시지','N');
  end;
  LMDIniCtrl1.WriteString('환경설정','화재상태',ed_FireState.Text);
  if Not IsDigit(ed_FireTime.Text) then ed_FireTime.Text := '5';
  LMDIniCtrl1.WriteString('환경설정','화재표시시간',ed_FireTime.Text);
  LMDIniCtrl1.WriteInteger('환경설정','로그인모니터시작',cmb_LoginStart.ItemIndex);
  //LMDIniCtrl1.WriteInteger('환경설정','모니터방법',cmb_MonitorGubun.ItemIndex);
  LMDIniCtrl1.WriteInteger('환경설정','조회방법',cmb_Search.ItemIndex);

  if chk_DubCardReg.Checked then
  begin
    LMDIniCtrl1.WriteString('환경설정','카드중복발급','Y');
  end else
  begin
    LMDIniCtrl1.WriteString('환경설정','카드중복발급','N');
  end;
  if cmb_emType.ItemIndex > 0 then
    LMDIniCtrl1.WriteString('환경설정','연동코드',EmpTypeCodeList.Strings[cmb_emType.ItemIndex]);

  Close;
end;

procedure TfmClientConfig.FormCreate(Sender: TObject);
begin
  EmpTypeCodeList := TStringList.Create;

  if PatrolUse then AlarmTab.TabVisible := True
  else AlarmTab.TabVisible := False;
  
  chk_Alarm.Checked := ACAlarmUse;
  chk_longOpen.Checked := LongDoorOpenAlarmUse;
  ed_alarmFile.Text := ACAlaramFile;
  chk_PTAlarm.Checked := PTAlarmUse;
  chk_PTMessage.Checked := PTAlarmMessageUse;
  ed_PTalarmFile.Text := PTAlaramFile;
  if IsCardGradCopy then cmb_CardGradeCopy.ItemIndex := 1
  else cmb_CardGradeCopy.ItemIndex := 0;
  cmb_ACEvent.ItemIndex := G_nAccessEventSearch;

  chk_Intro.Checked := G_bACIntroView;
  chk_Close.Checked := G_bColseModeView;
  chk_FireMessage.Checked := G_bFireMessageView;
  ed_FireState.Text := G_stFireState;
  ed_FireTime.Text := inttostr(G_nFireTime);
  cmb_LoginStart.ItemIndex := G_nLoginMoitorStart;
  cmb_MonitorGubun.ItemIndex := G_nMonitorGubun;
  cmb_Search.ItemIndex := G_nSearchIndex;

  chk_DubCardReg.Checked := G_bKTDupCardReg;
end;

procedure TfmClientConfig.btn_PtAlalrmClick(Sender: TObject);
var
  st : string;
begin

  RzOpenDialog1.Title:= '소리 파일 찾기';
  RzOpenDialog1.DefaultExt:= 'wav,mp3';
  RzOpenDialog1.InitialDir := 'C:\WINDOWS\Media'; //C:\WINDOWS\Media
  RzOpenDialog1.Filter := 'WAV files (*.wav,*.mp3)|*.WAV;*.MP3';
  if RzOpenDialog1.Execute then
  begin
    ed_PTalarmFile.Text := RzOpenDialog1.FileName;
  end;

end;

procedure TfmClientConfig.FormShow(Sender: TObject);
var
  nIndex : integer;
begin
  if G_nDaemonServerVersion < 1 then
  begin
    chk_Close.Visible := False;
    chk_Close.Checked := False;
  end;

  KT_TAB.TabVisible := False;
  if nSpecialProgram = 1 then
  begin
    KT_TAB.TabVisible := True;
  end;


  lb_emType.Caption := FM042;
  LoadsEmpType(EmpTypeCodeList,cmb_EmType);
  nIndex := EmpTypeCodeList.IndexOf(G_bRelayDefaultCode);
  if nIndex > -1 then cmb_EmType.ItemIndex := nIndex;

end;

procedure TfmClientConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EmpTypeCodeList.Free;

end;

end.
