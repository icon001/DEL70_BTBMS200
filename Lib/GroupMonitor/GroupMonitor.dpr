library GroupMonitor;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  Forms,
  Controls,
  ADODB,
  AdWnPort,
  fmGroupMonitor in 'fmGroupMonitor.pas' {fmMain},
  uLomosUtil in '..\uLomosUtil.pas',
  DIMime in '..\DIMime.pas',
  uGroupCommonLib in 'uGroupCommonLib.pas';

{$R *.res}
{function Get_DllGroupForm(App:TApplication;Parent:TWinControl): IDllGroupForm;export;
begin
//  Application := App;
  GroupForm := TfmMain.Create(nil);
  GroupForm.OnBorderStyle := bsNone;
  GroupForm.OnAlign := alClient;
  GroupForm.OnParent := Parent;
  Result:= GroupForm;
end;   }
procedure FormClose(aTabNo:string);export;
var
  nIndex : integer;
begin
  if GroupFormList <> nil then
  begin
    nIndex := GroupFormList.IndexOf(aTabNo);
    if nIndex > -1 then
    begin
      TfmMain(GroupFormList.Objects[nIndex]).CloseForm;
    end;
    GroupFormList.Delete(nIndex);
  end;
end;

procedure ShowMessage(aMessage,aTabNo:string);export;
var
  nIndex : integer;
begin
  if GroupFormList <> nil then
  begin
    nIndex := GroupFormList.IndexOf(aTabNo);
    if nIndex > -1 then
    begin
      TfmMain(GroupFormList.Objects[nIndex]).showmessage(aMessage);
    end;
  end;
end;

procedure ShowFloor(App:TApplication;Parent:TWinControl;aBuildingCode,aFloorCode,aGroup_code,aMasterID:string;IsMaster:Boolean;ADOConnection: TADOConnection;popupEvent : TPopupEvent;aTabNo:string);export;
var
  fmGroupMain : TfmMain;
Begin
  Application := App;
  if GroupFormList = nil then
  begin
    GroupFormList := TStringList.Create;
  end;

  fmGroupMain := TfmMain.Create(Nil);
  fmGroupMain.BorderStyle := bsNone;
  fmGroupMain.Align := alClient;
  fmGroupMain.Parent := Parent;
  fmGroupMain.L_ADOConnection := ADOConnection;

  fmGroupMain.L_stBuildingCode := aBuildingCode;
  fmGroupMain.L_stFloorCode := aFloorCode;
  fmGroupMain.L_IsMaster := IsMaster;
  fmGroupMain.L_stGroupCode := aGroup_code;
  fmGroupMain.L_stMasterID := aMasterID;
  fmGroupMain.OnPopupEvent := popupEvent;

  fmGroupMain.Show;
  fmGroupMain.FormInitialize;
  GroupFormList.AddObject(aTabNo,fmGroupMain);
  
End;

exports
  ShowFloor,
  ShowMessage,
  FormClose;
  //,Get_DllGroupForm;

begin
end.
