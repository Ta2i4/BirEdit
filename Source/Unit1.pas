{-------------------------------------------------------------------------------
Copyright (C) 2008 Aleksey Tatuyko

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.


The Original Code is Unit1.pas by Aleksey Tatuyko, released 2008-06-02.
All Rights Reserved.

$Id: Unit1.pas,v 1.1.3.135 2008/09/02 11:28:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }

unit Unit1;

interface

uses
  Windows, Messages, ComCtrls, Dialogs, Menus, Classes, Controls, ToolWin,
  TntWindows, TntForms, TntGraphics, TntDialogs, TntControls, TntClasses,
  TntSysUtils, SynEdit, SynUnicode, TntMenus, TntComCtrls, SynEditPrint, BirIniFiles,
  ImgList, ExtCtrls,
  ShellAPI, SysUtils, JvTimer, JvDebugHandler, JvComponentBase, JvDragDrop,
  TntWideStrUtils, TntFormatStrUtils, TntSystem, ShlObj, Forms, XPMan, Graphics;

type
  TEditor = class(TTntForm)
    Edit: TSynEdit;
    MainMenu: TTntMainMenu;
    N1: TTntMenuItem;
    N2: TTntMenuItem;
    Open: TTntOpenDialog;
    Save: TTntSaveDialog;
    N3: TTntMenuItem;
    N4: TTntMenuItem;
    N5: TTntMenuItem;
    N6: TTntMenuItem;
    Status: TTntStatusBar;
    synprint1: TSynEditPrint;
    N7: TTntMenuItem;
    N8: TTntMenuItem;
    N9: TTntMenuItem;
    N10: TTntMenuItem;
    N11: TTntMenuItem;
    N12: TTntMenuItem;
    N13: TTntMenuItem;
    N14: TTntMenuItem;
    N15: TTntMenuItem;
    N16: TTntMenuItem;
    N17: TTntMenuItem;
    Popup1: TTntPopupMenu;
    N19: TTntMenuItem;
    N20: TTntMenuItem;
    N21: TTntMenuItem;
    N22: TTntMenuItem;
    N23: TTntMenuItem;
    N24: TTntMenuItem;
    N25: TTntMenuItem;
    N18: TTntMenuItem;
    N26: TTntMenuItem;
    N01: TTntMenuItem;
    N110: TTntMenuItem;
    N27: TTntMenuItem;
    N31: TTntMenuItem;
    N41: TTntMenuItem;
    N51: TTntMenuItem;
    N61: TTntMenuItem;
    N71: TTntMenuItem;
    N81: TTntMenuItem;
    N91: TTntMenuItem;
    N28: TTntMenuItem;
    N02: TTntMenuItem;
    N111: TTntMenuItem;
    N29: TTntMenuItem;
    N32: TTntMenuItem;
    N42: TTntMenuItem;
    N52: TTntMenuItem;
    N62: TTntMenuItem;
    N72: TTntMenuItem;
    N82: TTntMenuItem;
    N92: TTntMenuItem;
    N33: TTntMenuItem;
    N34: TTntMenuItem;
    N03: TTntMenuItem;
    N112: TTntMenuItem;
    N210: TTntMenuItem;
    N35: TTntMenuItem;
    N43: TTntMenuItem;
    N53: TTntMenuItem;
    N63: TTntMenuItem;
    N73: TTntMenuItem;
    N83: TTntMenuItem;
    N93: TTntMenuItem;
    N04: TTntMenuItem;
    N113: TTntMenuItem;
    N211: TTntMenuItem;
    N36: TTntMenuItem;
    N44: TTntMenuItem;
    N54: TTntMenuItem;
    N64: TTntMenuItem;
    N74: TTntMenuItem;
    N84: TTntMenuItem;
    N94: TTntMenuItem;
    N47: TTntMenuItem;
    N48: TTntMenuItem;
    N49: TTntMenuItem;
    N50: TTntMenuItem;
    N57: TTntMenuItem;
    N39: TTntMenuItem;
    N46: TTntMenuItem;
    N58: TTntMenuItem;
    N30: TTntMenuItem;
    N56: TTntMenuItem;
    N59: TTntMenuItem;
    N60: TTntMenuItem;
    N66: TTntMenuItem;
    N67: TTntMenuItem;
    N68: TTntMenuItem;
    N69: TTntMenuItem;
    N70: TTntMenuItem;
    N76: TTntMenuItem;
    N77: TTntMenuItem;
    N86: TTntMenuItem;
    N87: TTntMenuItem;
    N88: TTntMenuItem;
    N89: TTntMenuItem;
    N90: TTntMenuItem;
    N37: TTntMenuItem;
    N38: TTntMenuItem;
    N45: TTntMenuItem;
    N55: TTntMenuItem;
    N65: TTntMenuItem;
    N75: TTntMenuItem;
    N85: TTntMenuItem;
    N95: TTntMenuItem;
    N96: TTntMenuItem;
    N101: TTntMenuItem;
    N103: TTntMenuItem;
    N99: TTntMenuItem;
    N104: TTntMenuItem;
    N105: TTntMenuItem;
    N114: TTntMenuItem;
    N115: TTntMenuItem;
    TntToolBar1: TTntToolBar;
    imagelist1: TImageList;
    TntToolButton1: TTntToolButton;
    TntToolButton2: TTntToolButton;
    TntToolButton3: TTntToolButton;
    TntToolButton4: TTntToolButton;
    TntToolButton5: TTntToolButton;
    TntToolButton6: TTntToolButton;
    TntToolButton7: TTntToolButton;
    TntToolButton8: TTntToolButton;
    TntToolButton9: TTntToolButton;
    TntToolButton10: TTntToolButton;
    TntToolButton11: TTntToolButton;
    TntToolButton12: TTntToolButton;
    TntToolButton13: TTntToolButton;
    TntToolButton14: TTntToolButton;
    TntToolButton15: TTntToolButton;
    TntToolButton16: TTntToolButton;
    TntToolButton17: TTntToolButton;
    N118: TTntMenuItem;
    N116: TTntMenuItem;
    JvTimer1: TJvTimer;
    JvTimer3: TJvTimer;
    JvTimer4: TJvTimer;
    JvDragDrop1: TJvDragDrop;
    JvDebugHandler1: TJvDebugHandler;
    N119: TTntMenuItem;
    N120: TTntMenuItem;
    N121: TTntMenuItem;
    N122: TTntMenuItem;
    N123: TTntMenuItem;
    N124: TTntMenuItem;
    N117: TTntMenuItem;
    N126: TTntMenuItem;
    N127: TTntMenuItem;
    N128: TTntMenuItem;
    N130: TTntMenuItem;
    N131: TTntMenuItem;
    N132: TTntMenuItem;
    N40: TTntMenuItem;
    N80: TTntMenuItem;
    N78: TTntMenuItem;
    N100: TTntMenuItem;
    N102: TTntMenuItem;
    N125: TTntMenuItem;
    N129: TTntMenuItem;
    N133: TTntMenuItem;
    N134: TTntMenuItem;
    N135: TTntMenuItem;
    XPManifest1: TXPManifest;
    procedure TntFormCreate(Sender: TObject);
    procedure TntFormDestroy(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N02Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure N116Click(Sender: TObject);
    procedure JvTimer1Timer(Sender: TObject);
    procedure JvTimer3Timer(Sender: TObject);
    procedure JvTimer4Timer(Sender: TObject);
    procedure JvDragDrop1Drop(Sender: TObject; Pos: TPoint;
      Value: TStrings);
    procedure N119Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N132Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure N133Click(Sender: TObject);
    procedure N134Click(Sender: TObject);
    procedure TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N103Click(Sender: TObject);
  private
    { Private declarations }
    prevnoex:Boolean;
    prev: integer;
    myusn: WideString;
    procedure AddRecentItem(RecFileName:TWideFileName);
    procedure AddLog;
    procedure LoadMyApp;
    procedure LoadTranslate(lang:WideString);
    procedure MyOpenFile(OpenFileName:TWideFileName);
    procedure MySaveFile(SaveFileName:TWideFileName);
    procedure RecentItemClick(sender: TObject);
    procedure ReloadRecentItems;
    procedure WorkParams;
  public
    { Public declarations }
    savefmt: 0..2;
    bigsize,myfsize: Int64;
    MyFileName: TWideFileName;
    errm1,errm2,mysg4,mylang:WideString;
    procedure AdvancedItemClick(sender: TObject);
    procedure ItemClick(sender: TObject);
    procedure LoadTranslateForm2(lang:WideString);
    procedure LoadTranslateForm6(lang:WideString);
    procedure LoadTranslateForm7(lang:WideString);
  end;

var
  mysg1:WideString='File has ''read-only'' attribute.\nSave changes to file?';
  mysg2:WideString='Current file has changed in other program.\nReopen the file?';
  mysg3:WideString='File is no more exists.\nSave the file?';
  mysg5:WideString='File has changed.\nSave the file?';
  myunk:WideString='Untitled';
  mysn1:WideString='GB';
  mysn2:WideString='MB';
  mysn3:WideString='KB';
  mysn4:WideString='Byte(s)';
  Editor:  TEditor;
  ini: TBirIniFile;

implementation

uses Unit2, Unit3, Unit6, Unit7, BirEditAdv;

{$R *.DFM}

procedure TEditor.LoadTranslate(lang:WideString);
var i:Integer; langini:TBirIniFile;
begin
  langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+lang);
  errm1:=langini.ReadString('Errors','EOutOfMemory','Out of memory.');
  errm2:=langini.ReadString('Errors','EFOpenError','Cannot open file.');
  mysg1:=langini.ReadString('Messages','Msg1','File has ''read-only'' attribute.\nSave changes to file?');
  mysg2:=langini.ReadString('Messages','Msg2','Current file has changed in other program.\nReopen the file?');
  mysg3:=langini.ReadString('Messages','Msg3','File is no more exists.\nSave the file?');
  mysg4:=langini.ReadString('Messages','Msg4','Are you sure that you want to open the big file?');
  mysg5:=langini.ReadString('Messages','Msg5','File has changed.\nSave the file?');
  myunk:=langini.ReadString('Other','Untitled','Untitled');
  mysn1:=langini.ReadString('Other','GBytes','GB');
  mysn2:=langini.ReadString('Other','MBytes','MB');
  mysn3:=langini.ReadString('Other','KBytes','KB');
  mysn4:=langini.ReadString('Other','Bytes','Byte(s)');
  N1.Caption:=langini.ReadString('Menu','0','File');
  N2.Caption:=langini.ReadString('Menu','1','Exit');
  N3.Caption:=langini.ReadString('Menu','2','Open');
  N4.Caption:=langini.ReadString('Menu','3','Save');
  N5.Caption:=langini.ReadString('Menu','4','Save As...');
  N7.Caption:=langini.ReadString('Menu','5','Print Preview');
  N8.Caption:=langini.ReadString('Menu','6','Print');
  N10.Caption:=langini.ReadString('Menu','7','Edit');
  N11.Caption:=langini.ReadString('Menu','8','Undo');
  N12.Caption:=langini.ReadString('Menu','9','Redo');
  N14.Caption:=langini.ReadString('Menu','10','Select All');
  N15.Caption:=langini.ReadString('Menu','11','Copy');
  N16.Caption:=langini.ReadString('Menu','12','Paste');
  N17.Caption:=langini.ReadString('Menu','13','Cut');
  N19.Caption:=N11.Caption;
  N20.Caption:=N12.Caption;
  N22.Caption:=N17.Caption;
  N23.Caption:=N15.Caption;
  N24.Caption:=N16.Caption;
  N25.Caption:=N14.Caption;
  N26.Caption:=langini.ReadString('Menu','14','Set');
  N28.Caption:=langini.ReadString('Menu','15','Go To');
  N30.Caption:=langini.ReadString('Menu','16','Copy Add');
  N33.Caption:=N26.Caption;
  N34.Caption:=N28.Caption;
  N37.Caption:=langini.ReadString('Menu','17','Dublicate Selection');
  N38.Caption:=langini.ReadString('Menu','18','Bookmarks');
  N39.Caption:=langini.ReadString('Menu','19','Copy All');
  N40.Caption:=langini.ReadString('Menu','20','Advanced');
  N45.Caption:=N39.Caption;
  N46.Caption:=langini.ReadString('Menu','21','Clear Clipboard');
  N47.Caption:=langini.ReadString('Menu','22','Line Numbers');
  N48.Caption:=langini.ReadString('Menu','23','Word Wrap');
  N49.Caption:=langini.ReadString('Menu','24','Help');
  N50.Caption:=langini.ReadString('Menu','25','About...');
  N55.Caption:=N30.Caption;
  N56.Caption:=langini.ReadString('Menu','26','Swap');
  N57.Caption:=langini.ReadString('Menu','27','Clear All');
  N59.Caption:=langini.ReadString('Menu','28','Clear');
  N60.Caption:=langini.ReadString('Menu','29','Uppercase');
  N65.Caption:=N56.Caption;
  N66.Caption:=langini.ReadString('Menu','30','Convert');
  N68.Caption:=langini.ReadString('Menu','31','Lowercase');
  N69.Caption:=langini.ReadString('Menu','32','Title Case');
  N70.Caption:=langini.ReadString('Menu','33','Invert Case');
  N75.Caption:=N38.Caption;
  N76.Caption:=langini.ReadString('Menu','34','Sentence Case');
  N77.Caption:=langini.ReadString('Menu','35','Insert');
  N100.Caption:=langini.ReadString('Menu','36','Filename');
  N80.Caption:=langini.ReadString('Menu','38','Open With...');
  N85.Caption:=N59.Caption;
  N86.Caption:=langini.ReadString('Menu','39','Indent');
  N87.Caption:=langini.ReadString('Menu','40','Unindent');
  N88.Caption:=langini.ReadString('Menu','41','Block');
  N90.Caption:=langini.ReadString('Menu','42','Enclose Selection');
  N95.Caption:=N57.Caption;
  N96.Caption:=N46.Caption;
  N99.Caption:=langini.ReadString('Menu','44','Time/Date');
  N101.Caption:=langini.ReadString('Menu','45','Options');
  N103.Caption:=langini.ReadString('Menu','46','Tab Settings');
  N104.Caption:=langini.ReadString('Menu','47','Revert');
  N105.Caption:=langini.ReadString('Menu','48','New');
  N114.Caption:=langini.ReadString('Menu','52','Properties');
  N116.Caption:=langini.ReadString('Menu','53','Show Statusbar');
  N117.Caption:=langini.ReadString('Menu','54','Language');
  N118.Caption:=langini.ReadString('Menu','55','Show Toolbar');
  N119.Caption:=langini.ReadString('Menu','56','New Window');
  N120.Caption:=langini.ReadString('Menu','57','Launch');
  N122.Caption:=langini.ReadString('Menu','58','Empty Window');
  N124.Caption:=langini.ReadString('Menu','59','Execute Document');
  N126.Caption:=langini.ReadString('Menu','60','Internal');
  N127.Caption:=langini.ReadString('Menu','61','Recent files');
  N130.Caption:=langini.ReadString('Menu','62','Delete non-existent');
  N132.Caption:=langini.ReadString('Menu','63','Clear list');
  N102.Caption:=langini.ReadString('Menu','64','Filename and path');
  N125.Caption:=langini.ReadString('Menu','65','Codepage');
  N134.Caption:=langini.ReadString('Menu','66','Default');
  N129.Caption:=langini.ReadString('Menu','67','ANSI');
  N133.Caption:=langini.ReadString('Menu','68','Unicode');
  Save.FileName:=myunk+'.txt';
  langini.Destroy;
  for I := 1 to N117.Count-1 do begin
    if WideCompareStr(N117.Items[i].Hint,mylang)=0 then N117.Items[i].Checked:=True;
  end;
end;

procedure TEditor.LoadTranslateForm2(lang:WideString);
var langini:TBirIniFile;
begin
  langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+lang);
  Preview.Caption:=N7.Caption;
  Preview.TntButton1.Hint:=langini.ReadString('Preview','Next','Next Page');
  Preview.TntButton2.Hint:=langini.ReadString('Preview','Previous','Previous Page');
  Preview.TntButton3.Hint:=langini.ReadString('Preview','Last','Last Page');
  Preview.TntButton4.Hint:=langini.ReadString('Preview','First','First Page');
  Preview.TntButton5.Caption:=N8.Caption;
  langini.Destroy;
end;

procedure TEditor.LoadTranslateForm6(lang:WideString);
var langini:TBirIniFile;
begin
  langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+lang);
  SelIns.Caption:=N90.Caption;
  SelIns.TntButton1.Caption:=langini.ReadString('Other','OK','OK');
  SelIns.TntButton2.Caption:=langini.ReadString('Other','Cancel','Cancel');
  SelIns.TntLabel1.Caption:=langini.ReadString('Other','InsBeforeSel','Insert before selection');
  SelIns.TntLabel2.Caption:=langini.ReadString('Other','InsAfterSel','Insert after selection');
  langini.Destroy;
end;

procedure TEditor.LoadTranslateForm7(lang:WideString);
var langini:TBirIniFile;
begin
  langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+lang);
  TabOpt.Caption:=N103.Caption;
  TabOpt.TntButton1.Caption:=SelIns.TntButton1.Caption;
  TabOpt.TntButton2.Caption:=SelIns.TntButton2.Caption;
  TabOpt.TntLabel1.Caption:=langini.ReadString('Other','TabWidth','Tabulator width');
  langini.Destroy;
end;

procedure TEditor.AdvancedItemClick(sender: TObject);
var advtempcmd,advtempparam:WideString;
begin
  with (sender as TTntMenuItem) do begin
    advtempcmd:=ini.ReadString('Advanced','Item'+Hint+'.Command','');
    advtempparam:=ini.ReadString('Advanced','Item'+Hint+'.Params','');
    advtempparam:=Tnt_WideStringReplace(advtempparam,'%1',MyFileName,[rfReplaceAll],False);
    Tnt_ShellExecuteW(Self.Handle,'open',PWideChar(advtempcmd),PWideChar(advtempparam),nil,SW_SHOWNORMAL);
  end;
end;

procedure TEditor.ItemClick(sender: TObject);
begin
  with (sender as TTntMenuItem) do begin
    mylang:=Hint;
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+Editor.mylang) then begin
      LoadTranslate(mylang);
      LoadTranslateForm2(mylang);
      LoadTranslateForm6(mylang);
      LoadTranslateForm7(mylang);
      Checked:=True;
      ini.WriteString('GUI'+myusn,'Lang',mylang);
      ini.UpdateFile;
    end;
  end;
end;

procedure TEditor.RecentItemClick(sender: TObject);
begin
  with (sender as TTntMenuItem) do if WideFileExists(Hint) then MyOpenFile(Hint);
end;

procedure TEditor.ReloadRecentItems;
var reci:Byte; recs:WideString; RecItem: TTntMenuItem;
begin
  for reci:=N127.Count downto 4 do begin
    N127.Items[reci-1].Destroy;
  end;
  for reci:=0 to 9 do begin
    recs:=ini.ReadString('Recent','File'+IntToStr(reci),'');
    if not(recs='') then begin
      RecItem:=TTntMenuItem.Create(N127);
      RecItem.Caption:=WideExpandFileName(recs);
      RecItem.Hint:=WideExpandFileName(recs); //will be used, because without some symbols (for example, '&D:\...'  -   symbol is '&')
      RecItem.AutoCheck:=False;
      RecItem.Checked:=False;
      RecItem.RadioItem:=False;
      RecItem.OnClick:=RecentItemClick;
      N127.Add(RecItem);
    end;
  end;
end;

procedure TEditor.AddRecentItem(RecFileName:TWideFileName);
var reci,recn:0..9;
begin
  for reci:=0 to 9 do begin
    if WideCompareText(ini.ReadString('Recent','File'+IntToStr(reci),''),RecFileName)=0 then ini.WriteString('Recent','File'+IntToStr(reci),'');
    if ini.ReadString('Recent','File'+IntToStr(reci),'')<>'' then begin
      ini.WriteString('Recent','File'+IntToStr(recn),ini.ReadString('Recent','File'+IntToStr(reci),''));
      if reci<>recn then ini.WriteString('Recent','File'+IntToStr(reci),'');
      Inc(recn);
    end;
  end;
  for reci:=9 downto 1 do ini.WriteString('Recent','File'+IntToStr(reci),ini.ReadString('Recent','File'+IntToStr(reci-1),''));
  ini.WriteString('Recent','File0',RecFileName);
  ini.UpdateFile;
  ReloadRecentItems;
end;

procedure TEditor.MyOpenFile(OpenFileName:TWideFileName);
begin
  if WideExtractFilePath(OpenFileName)='' then OpenFileName:=WideExtractFilePath(TntApplication.ExeName)+OpenFileName;
  Edit.ClearAll;
  Edit.Lines.LoadFromFile(OpenFileName);
  AddRecentItem(OpenFileName);
  SHAddToRecentDocs(2,PWideChar(OpenFileName));
  prev:=WideFileAge(OpenFileName);
  case savefmt of
    1: Edit.Lines.SaveUnicode:=False;
    2: Edit.Lines.SaveUnicode:=True;
  end;
  AddLog;
end;

procedure TEditor.MySaveFile(SaveFileName: TWideFileName);
var HideROMsg:Boolean;
begin
  if WideExtractFilePath(SaveFileName)='' then SaveFileName:=WideExtractFilePath(TntApplication.ExeName)+SaveFileName;
  if WideFileIsReadOnly(SaveFileName) then begin
    if myusn='' then HideROMsg:=ini.ReadBool('Editor','HideROMsg',false) else HideROMsg:=ini.ReadBool('Editor'+myusn,'HideROMsg',ini.ReadBool('Editor','HideROMsg',false));
    if HideROMsg then begin
      WideFileSetReadOnly(SaveFileName,False);
      Edit.Lines.SaveToFile(SaveFileName);
      WideFileSetReadOnly(SaveFileName,True);
    end else begin
      case WideMessageDlg(Tnt_WideStringReplace(mysg1,'\n',#13#10,[rfReplaceAll],False),mtWarning,[mbYes,mbNo],0) of
        mrYes:
          begin
            WideFileSetReadOnly(SaveFileName,False);
            Edit.Lines.SaveToFile(SaveFileName);
            WideFileSetReadOnly(SaveFileName,True);
          end;
        mrNo: Exit;
      end;
    end;
  end else Edit.Lines.SaveToFile(SaveFileName);
  AddRecentItem(SaveFileName);
  SHAddToRecentDocs(2,PWideChar(SaveFileName));
  prev:=WideFileAge(SaveFileName);
end;

procedure TEditor.WorkParams;
var
  ToCreate, ToPaste, ToPrint, ToQuit : Boolean;
  ParamFile                          : WideString;
  i                                  : Integer;
begin
  for i:=0 to WideParamCount do begin
    if not(i=0) then begin
      if (WideParamStr(i)[1]= '/') then begin
        if WideCompareText(WideParamStr(i),'/n')=0 then ToCreate:=True;
        if WideCompareText(WideParamStr(i),'/p')=0 then ToPrint:=True;
        if WideCompareText(WideParamStr(i),'/c')=0 then ToPaste:=True;
        if WideCompareText(WideParamStr(i),'/q')=0 then ToQuit:=True;
      end else if WideFileExists(WideParamStr(i)) then ParamFile:=WideParamStr(i);
    end;
  end;
  if WideExtractFilePath(ParamFile)='' then ParamFile:=WideExtractFilePath(TntApplication.ExeName)+ParamFile;
  if WideFileExists(ParamFile) then begin
    MyOpenFile(ParamFile);
    if ToPrint then begin
      synprint1.SynEdit:=Edit;
      synprint1.Wrap:=True;
      synprint1.Print;
    end;
  end else begin
    if ToCreate then begin
      Edit.Lines.SaveToFile(ParamFile);
    end;
  end;
  if ToPaste then Edit.PasteFromClipboard;
  if ToQuit then Application.Terminate;
end;

procedure TEditor.AddLog;
begin
  if (Length(Edit.Text)>=4)and(WideCompareText(Edit.Text[1],'.')=0)and(WideCompareText(Edit.Text[2],'L')=0)and(WideCompareText(Edit.Text[3],'O')=0)and(WideCompareText(Edit.Text[4],'G')=0)
  then Edit.Lines.Add(DateTimeToStr(Now));
end;

procedure TEditor.TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Edit.Modified and (not Edit.Lines.Saved) then begin
    case WideMessageDlg(Tnt_WideStringReplace(mysg5,'\n',#13#10,[rfReplaceAll],False),mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes:
        begin
          if WideFileExists(MyFileName) then MySaveFile(MyFileName) else if Save.Execute then MySaveFile(Save.FileName);
          CanClose:=True;
        end;
      mrNo: CanClose:=True;
      mrCancel: CanClose:=False;
    end;
  end;
end;

procedure TEditor.LoadMyApp;
var
  icnum, itc        : Integer;
  icfile            : WideString;
  langsrw           : TSearchRecW;
  AdvItem, LangItem : TTntMenuItem;
  ic                : TIcon;
  langini           : TBirIniFile;
begin
  if ini.ReadBool('System','UserMode',True)
  then begin
    myusn:='.'+MyGetVar('USERNAME');
    mylang:=ini.ReadString('GUI'+myusn,'Lang',ini.ReadString('GUI','Lang',''));
    N47.Checked:=ini.ReadBool('Editor'+myusn,'LineNums',ini.ReadBool('Editor','LineNums',False));
    N48.Checked:=ini.ReadBool('Editor'+myusn,'Wrap',ini.ReadBool('Editor','Wrap',False));
    N116.Checked:=ini.ReadBool('GUI'+myusn,'StatusBar',ini.ReadBool('GUI','StatusBar',False));
    N118.Checked:=ini.ReadBool('GUI'+myusn,'ToolBar',ini.ReadBool('GUI','ToolBar',False));
    Edit.TabWidth:=ini.ReadInteger('Editor'+myusn,'TabWidth',ini.ReadInteger('Editor','TabWidth',8));
    Edit.Gutter.Font.Color:=ini.ReadColor('GUI'+myusn,'GutterFontColor',ini.ReadColor('GUI','GutterFontColor',0));
    case ini.ReadInteger('Editor'+myusn,'SaveFmt',ini.ReadInteger('Editor','SaveFmt',0)) of
      1: N129.Click;
      2: N133.Click;
      else N134.Click;
    end;
    bigsize:=ini.ReadInt64('Editor','BigFile',ini.ReadInteger('Editor','BigFile',1048576));
  end else begin
    myusn:='';
    mylang:=ini.ReadString('GUI','Lang','');
    N47.Checked:=ini.ReadBool('Editor','LineNums',False);
    N48.Checked:=ini.ReadBool('Editor','Wrap',False);
    N116.Checked:=ini.ReadBool('GUI','StatusBar',False);
    N118.Checked:=ini.ReadBool('GUI','ToolBar',False);
    Edit.TabWidth:=ini.ReadInteger('Editor','TabWidth',8);
    Edit.Gutter.Font.Color:=ini.ReadColor('GUI','GutterFontColor',0);
    case ini.ReadInteger('Editor','SaveFmt',0) of
      1: N129.Click;
      2: N133.Click;
      else N134.Click;
    end;
    bigsize:=ini.ReadInt64('Editor','BigFile',1048576);
  end;
  Status.Visible:=N116.Checked;
  TntToolBar1.Visible:=N118.Checked;
  Edit.Gutter.ShowLineNumbers:=N47.Checked;
  Edit.WordWrap:=N48.Checked;
  if ini.ReadInteger('Advanced','Count',0)>0 then
  for itc:=1 to ini.ReadInteger('Advanced','Count',1) do begin
    AdvItem:=TTntMenuItem.Create(Editor.N40);
    AdvItem.Caption:=ini.ReadString('Advanced','Item'+IntToStr(itc)+'.Caption','');
    AdvItem.Hint:=IntToStr(itc);
    AdvItem.AutoCheck:=False;
    AdvItem.Checked:=False;
    AdvItem.RadioItem:=False;
    icfile:=ini.ReadString('Advanced','Item'+IntToStr(itc)+'.IconFile','');
    icnum:=ini.ReadInteger('Advanced','Item'+IntToStr(itc)+'.IconIndex',0);
    if not(icfile='') then begin
      ic:=TIcon.Create;
      ic.Handle:=ExtractIconW(Application.Handle,PWideChar(icfile),icnum);
      AdvItem.Bitmap.Width:=ic.Width;
      AdvItem.Bitmap.Height:=ic.Height;
      AdvItem.Bitmap.Canvas.Draw(0,0,ic);
      ic.Destroy;
    end;
    AdvItem.OnClick:=Editor.AdvancedItemClick;
    Editor.N40.Add(AdvItem);
  end;
  if WideFindFirst(WideExtractFilePath(TntApplication.ExeName)+'lang\'+'*.lng',faAnyFile,langsrw)=0
  then begin
    repeat
      if (langsrw.Attr and faDirectory)<>0 then continue
      else begin
        LangItem:=TTntMenuItem.Create(Editor.N117);
        langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+langsrw.Name);
        LangItem.Caption:=langini.ReadString('TranslationInfo','Name',WideExtractFileName(langsrw.Name));
        langini.Destroy;
        LangItem.Hint:=WideExtractFileName(langsrw.Name);
        LangItem.AutoCheck:=True;
        LangItem.Checked:=False;
        LangItem.RadioItem:=True;
        LangItem.OnClick:=ItemClick;
        Editor.N117.Add(LangItem);
     end;
    until WideFindNext(langsrw)<>0;
  end;
  WideFindClose(langsrw);
  if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then LoadTranslate(mylang);
end;

procedure TEditor.TntFormCreate(Sender: TObject);
begin
  errm1:='Out of memory.';
  errm2:='Cannot open file.';
  mysg4:='Are you sure that you want to open the large file?';
  JvDebugHandler1.LogFileName:=WideExtractFilePath(TntApplication.ExeName)+'error.log';
  ini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'biredit.ini');
  LoadMyApp;
  WorkParams;
  ReloadRecentItems;
end;

procedure TEditor.TntFormDestroy(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'LineNums',Edit.Gutter.ShowLineNumbers);
  ini.WriteInteger('Editor'+myusn,'TabWidth',Edit.TabWidth);
  ini.WriteBool('Editor'+myusn,'Wrap',Edit.WordWrap);
  ini.WriteBool('GUI'+myusn,'StatusBar',Status.Visible);
  ini.WriteBool('GUI'+myusn,'ToolBar',TntToolBar1.Visible);
  ini.UpdateFile;
  ini.Destroy;
end;

procedure TEditor.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TEditor.N3Click(Sender: TObject);
begin
  if Open.Execute then MyOpenFile(Open.FileName);
end;

procedure TEditor.N4Click(Sender: TObject);
begin
  MySaveFile(MyFileName);
end;

procedure TEditor.N5Click(Sender: TObject);
begin
  if Save.Execute then MySaveFile(Save.FileName);
end;

procedure TEditor.N7Click(Sender: TObject);
begin
  synprint1.SynEdit:=Edit;
  synprint1.Wrap:=True;
  Preview.SynEditPrintPreview.UpdatePreview;
  Preview.ShowModal;
end;

procedure TEditor.N8Click(Sender: TObject);
begin
  synprint1.SynEdit:=Edit;
  synprint1.Wrap:=True;
  synprint1.Print;
end;

procedure TEditor.N11Click(Sender: TObject);
begin
  Edit.Undo;
end;

procedure TEditor.N12Click(Sender: TObject);
begin
  Edit.Redo;
end;

procedure TEditor.N14Click(Sender: TObject);
begin
  Edit.SelectAll;
end;

procedure TEditor.N15Click(Sender: TObject);
begin
  Edit.CopyToClipboard;
end;

procedure TEditor.N16Click(Sender: TObject);
begin
  Edit.PasteFromClipboard;
end;

procedure TEditor.N17Click(Sender: TObject);
begin
  Edit.CutToClipboard;
end;

procedure TEditor.N01Click(Sender: TObject);
begin
  if Edit.IsBookmark(0)
  then Edit.ClearBookMark(0)
  else Edit.SetBookMark(0,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N110Click(Sender: TObject);
begin
  if Edit.IsBookmark(1)
  then Edit.ClearBookMark(1)
  else Edit.SetBookMark(1,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N27Click(Sender: TObject);
begin
  if Edit.IsBookmark(2)
  then Edit.ClearBookMark(2)
  else Edit.SetBookMark(2,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N31Click(Sender: TObject);
begin
  if Edit.IsBookmark(3)
  then Edit.ClearBookMark(3)
  else Edit.SetBookMark(3,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N41Click(Sender: TObject);
begin
  if Edit.IsBookmark(4)
  then Edit.ClearBookMark(4)
  else Edit.SetBookMark(4,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N51Click(Sender: TObject);
begin
  if Edit.IsBookmark(5)
  then Edit.ClearBookMark(5)
  else Edit.SetBookMark(5,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N61Click(Sender: TObject);
begin
  if Edit.IsBookmark(6)
  then Edit.ClearBookMark(6)
  else Edit.SetBookMark(6,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N71Click(Sender: TObject);
begin
  if Edit.IsBookmark(7)
  then Edit.ClearBookMark(7)
  else Edit.SetBookMark(7,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N81Click(Sender: TObject);
begin
  if Edit.IsBookmark(8)
  then Edit.ClearBookMark(8)
  else Edit.SetBookMark(8,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N91Click(Sender: TObject);
begin
  if Edit.IsBookmark(9)
  then Edit.ClearBookMark(9)
  else Edit.SetBookMark(9,Edit.CaretX,Edit.CaretY);
end;

procedure TEditor.N02Click(Sender: TObject);
begin
  Edit.GotoBookMark(0);
end;

procedure TEditor.N111Click(Sender: TObject);
begin
  Edit.GotoBookMark(1);
end;

procedure TEditor.N29Click(Sender: TObject);
begin
  Edit.GotoBookMark(2);
end;

procedure TEditor.N32Click(Sender: TObject);
begin
  Edit.GotoBookMark(3);
end;

procedure TEditor.N42Click(Sender: TObject);
begin
  Edit.GotoBookMark(4);
end;

procedure TEditor.N52Click(Sender: TObject);
begin
  Edit.GotoBookMark(5);
end;

procedure TEditor.N62Click(Sender: TObject);
begin
  Edit.GotoBookMark(6);
end;

procedure TEditor.N72Click(Sender: TObject);
begin
  Edit.GotoBookMark(7);
end;

procedure TEditor.N82Click(Sender: TObject);
begin
  Edit.GotoBookMark(8);
end;

procedure TEditor.N92Click(Sender: TObject);
begin
  Edit.GotoBookMark(9);
end;

procedure TEditor.N47Click(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'LineNums',N47.Checked);
  ini.UpdateFile;
  Edit.Gutter.ShowLineNumbers:=N47.Checked;
end;

procedure TEditor.N48Click(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'Wrap',N48.Checked);
  ini.UpdateFile;
  Edit.WordWrap:=N48.Checked;
end;

procedure TEditor.N50Click(Sender: TObject);
begin
  About.ShowModal;
end;

procedure TEditor.N57Click(Sender: TObject);
begin
  Edit.ClearAll;
end;

procedure TEditor.N39Click(Sender: TObject);
begin
  Edit.DoCopyToClipboard(Edit.Text);
end;

procedure TEditor.N46Click(Sender: TObject);
begin
  Edit.ClearClipboard;
end;

procedure TEditor.N30Click(Sender: TObject);
begin
  Edit.AddToClipboard;
end;

procedure TEditor.N56Click(Sender: TObject);
begin
  Edit.ChangeClipboard;
end;

procedure TEditor.N59Click(Sender: TObject);
begin
  Edit.MyDelete;
end;

procedure TEditor.N60Click(Sender: TObject);
var x,y:Integer;
begin
  x:=Edit.SelStart;
  y:=Edit.SelEnd;
  Edit.SelText:=SynWideUpperCase(Edit.SelText);
  Edit.SelStart:=x;
  Edit.SelEnd:=y;
end;

procedure TEditor.N68Click(Sender: TObject);
var x,y:Integer;
begin
  x:=Edit.SelStart;
  y:=Edit.SelEnd;
  Edit.SelText:=SynWideLowerCase(Edit.SelText);
  Edit.SelStart:=x;
  Edit.SelEnd:=y;
end;

procedure TEditor.N69Click(Sender: TObject);
var a,prea:Boolean; i,x,y:Integer; w,sUpper,sLower:WideString;
begin
  x:=Edit.SelStart;
  y:=Edit.SelEnd;
  a:=true; prea:=true;
  w:=''; sUpper:=''; sLower:='';
  w:=Edit.SelText;
  sUpper:=SynWideUpperCase(w);
  sLower:=SynWideLowerCase(w);
  for i:=1 to Length(Edit.SelText) do begin
    prea:=a;
    a:=MyIsWordBreakChar(Edit.SelText[i]);
    if (prea<>a)and(prea=True) then w[i]:=sUpper[i] else w[i]:=sLower[i];
  end;
  Edit.SelText:=w;
  Edit.SelStart:=x;
  Edit.SelEnd:=y;
end;

procedure TEditor.N70Click(Sender: TObject);
var x,y:Integer;
begin
  x:=Edit.SelStart;
  y:=Edit.SelEnd;
  Edit.SelText:=MyToggleCase(Edit.SelText);
  Edit.SelStart:=x;
  Edit.SelEnd:=y;
end;

procedure TEditor.N76Click(Sender: TObject);
var x,y:Integer; w:WideString;
begin
 if not(Edit.SelText='') then begin
  x:=Edit.SelStart;
  y:=Edit.SelEnd;
  w:=Edit.SelText;
  Edit.SelText:=SynWideUpperCase(w[1]) + SynWideLowerCase(Copy(w, 2, Length(w)));
  Edit.SelStart:=x;
  Edit.SelEnd:=y;
 end;
end;

procedure TEditor.N86Click(Sender: TObject);
begin
  Edit.MyTab;
end;

procedure TEditor.N87Click(Sender: TObject);
begin
  Edit.MyShiftTab;
end;

procedure TEditor.N90Click(Sender: TObject);
begin
  SelIns.ShowModal;
end;

procedure TEditor.N37Click(Sender: TObject);
var x,y:integer;
begin
  x:=Edit.SelStart;
  y:=Edit.SelEnd;
  Edit.SelText:=Edit.SelText+Edit.SelText;
  Edit.SelStart:=x;
  Edit.SelEnd:=y;
end;

procedure TEditor.N99Click(Sender: TObject);
var hour,min,sec,msec:Word; ShortTimeFmtVar:Integer; thour,tmin,tsec,tmsec,tr:WideString;
begin
  DecodeTime(Time,hour,min,sec,msec);
  if hour<10 then thour:='0'+IntToStr(hour) else thour:=IntToStr(hour);
  if min<10 then tmin:='0'+IntToStr(min) else tmin:=IntToStr(min);
  if sec<10 then tsec:='0'+IntToStr(sec) else tsec:=IntToStr(sec);
  if msec<100 then begin
    if msec<10
    then tmsec:='00'+IntToStr(msec)
    else tmsec:='0'+IntToStr(msec);
  end else tmsec:=IntToStr(msec);
  if myusn='' then ShortTimeFmtVar:=ini.ReadInteger('Editor','ShortTimeFmt',0) else ShortTimeFmtVar:=ini.ReadInteger('Editor'+myusn,'ShortTimeFmt',ini.ReadInteger('Editor','ShortTimeFmt',0));
  case ShortTimeFmtVar of
  1: tr:=thour+':'+tmin+':'+tsec;
  2: tr:=thour+':'+tmin+':'+tsec+'.'+tmsec;
  else tr:=thour+':'+tmin;
  end;
  tr:=tr+' '+DateToStr(Date);
  Edit.SelText:=tr;
end;

procedure TEditor.N104Click(Sender: TObject);
begin
  Edit.ClearAll;
  Edit.Lines.LoadFromFile(MyFileName);
  prev:=WideFileAge(MyFileName);
  AddLog;
  case savefmt of
    1: Edit.Lines.SaveUnicode:=False;
    2: Edit.Lines.SaveUnicode:=True;
  end;
end;

procedure TEditor.N105Click(Sender: TObject);
begin
  Edit.ClearAll;
  MyFileName:='';
  case savefmt of
    0,2: Edit.Lines.SaveUnicode:=True;
    1: Edit.Lines.SaveUnicode:=False;
  end;
end;

procedure TEditor.N114Click(Sender: TObject);
begin
  MyShowFilePropertiesW(MyFileName);
end;

procedure TEditor.N118Click(Sender: TObject);
begin
  ini.WriteBool('GUI'+myusn,'ToolBar',N118.Checked);
  ini.UpdateFile;
  TntToolBar1.Visible:=N118.Checked;
end;

procedure TEditor.N116Click(Sender: TObject);
begin
  ini.WriteBool('GUI'+myusn,'StatusBar',N116.Checked);
  ini.UpdateFile;
  Status.Visible:=N116.Checked;
end;

procedure TEditor.JvTimer1Timer(Sender: TObject);
begin
  Status.Panels.Items[0].Text:=IntToStr(Edit.CaretY)+':'+IntToStr(Edit.CaretX);
  if Edit.Lines.SaveUnicode then Status.Panels.Items[1].Text:='Unicode' else Status.Panels.Items[1].Text:='ANSI';
  if Edit.InsertMode then Status.Panels.Items[2].Text:='Insert' else Status.Panels.Items[2].Text:='Overwrite';
end;

procedure TEditor.JvTimer3Timer(Sender: TObject);
begin
  if WideFileExists(MyFileName) then begin
    if (WideFileAge(MyFileName)<>prev)and(prev<>0)
    then begin
      case WideMessageDlg(Tnt_WideStringReplace(mysg2,'\n',#13#10,[rfReplaceAll],False),mtWarning,[mbYes,mbNo],0) of
      mrYes:
        begin
          N104.Click;
        end;
      end;
    end;
    prev:=WideFileAge(MyFileName);
  end else begin
    if (prevnoex=False)and not(MyFileName='') then begin
      case WideMessageDlg(Tnt_WideStringReplace(mysg3,'\n',#13#10,[rfReplaceAll],False),mtWarning,[mbYes,mbNo],0) of
      mrYes:
        begin
          Edit.Lines.SaveToFile(MyFileName);
          prev:=WideFileAge(MyFileName);
         end;
      end;
      prevnoex:=True;
    end;
  end;
end;

procedure TEditor.JvTimer4Timer(Sender: TObject);
var fe,fm:Boolean; capt:WideString;
begin
  fe:=False;
  fe:=WideFileExists(MyFileName);
  fm:=Edit.Modified and (not Edit.Lines.Saved);
  N4.Enabled:=fe;
  N80.Enabled:=fe;
  N100.Enabled:=fe;
  N102.Enabled:=fe;
  N104.Enabled:=fe;
  N114.Enabled:=fe;
  N124.Enabled:=fe;
  N127.Enabled:=(N127.Count>3);
  N40.Visible:=(N40.Count>0);
  if fe then begin
    Status.Panels.Items[3].Text:=MyBytesToStr(myfsize);
    if WideExtractFilePath(MyFileName)=''
    then capt:=WideExtractFilePath(TntApplication.ExeName)+MyFileName+' - BirEdit'
    else capt:=MyFileName+' - BirEdit';
  end else begin
    capt:=myunk+' - BirEdit';
    Status.Panels.Items[3].Text:='';
  end;
  if fm then Caption:='* '+capt else Caption:=capt;  
end;

procedure TEditor.JvDragDrop1Drop(Sender: TObject; Pos: TPoint; Value: TStrings);
var i:Integer;
begin
  for i:=0 to Value.Count-1 do begin
    if i=0 then begin
      MyOpenFile(Value.Strings[i]);
    end;
    //ToDo: if i>0 then do command ['biredit.exe "file[i]"']
    //ToDo: if i>5 then 'Are you sure do you want open these files?'
  end;
end;

procedure TEditor.N119Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open',PWideChar(TntApplication.ExeName),PWideChar('"'+MyFileName+'"'),nil,SW_SHOWNORMAL);
end;

procedure TEditor.N122Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open',PWideChar(TntApplication.ExeName),nil,nil,SW_SHOWNORMAL);
end;

procedure TEditor.N124Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open',PWideChar(MyFileName),nil,PWideChar(WideExtractFilePath(MyFileName)),SW_SHOWNORMAL);
end;

procedure TEditor.N126Click(Sender: TObject);
begin
  //internal localization return
  //all strings in English
  N126.Checked:=True;
  errm1:='Out of memory.';
  errm2:='Cannot open file.';
  mysg1:='File has ''read-only'' attribute.\nSave changes to file?';
  mysg2:='Current file has changed in other program.\nReopen the file?';
  mysg3:='File is no more exists.\nSave the file?';
  mysg4:='Are you sure that you want to open the big file?';
  mysg5:='File has changed.\nSave the file?';
  myunk:='Untitled';
  mysn1:='GB';
  mysn2:='MB';
  mysn3:='KB';
  mysn4:='Byte(s)';
  N1.Caption:='File';
  N2.Caption:='Exit';
  N3.Caption:='Open';
  N4.Caption:='Save';
  N5.Caption:='Save As...';
  N7.Caption:='Print Preview';
  N8.Caption:='Print';
  N10.Caption:='Edit';
  N11.Caption:='Undo';
  N12.Caption:='Redo';
  N14.Caption:='Select All';
  N15.Caption:='Copy';
  N16.Caption:='Paste';
  N17.Caption:='Cut';
  N19.Caption:=N11.Caption;
  N20.Caption:=N12.Caption;
  N22.Caption:=N17.Caption;
  N23.Caption:=N15.Caption;
  N24.Caption:=N16.Caption;
  N25.Caption:=N14.Caption;
  N26.Caption:='Set';
  N28.Caption:='Go To';
  N30.Caption:='Copy Add';
  N33.Caption:=N26.Caption;
  N34.Caption:=N28.Caption;
  N37.Caption:='Dublicate Selection';
  N38.Caption:='Bookmarks';
  N39.Caption:='Copy All';
  N40.Caption:='Advanced';
  N45.Caption:=N39.Caption;
  N46.Caption:='Clear Clipboard';
  N47.Caption:='Line Numbers';
  N48.Caption:='Word Wrap';
  N49.Caption:='Help';
  N50.Caption:='About...';
  N55.Caption:=N30.Caption;
  N56.Caption:='Swap';
  N57.Caption:='Clear All';
  N59.Caption:='Clear';
  N60.Caption:='Uppercase';
  N65.Caption:=N56.Caption;
  N66.Caption:='Convert';
  N68.Caption:='Lowercase';
  N69.Caption:='Title Case';
  N70.Caption:='Invert Case';
  N75.Caption:=N38.Caption;
  N76.Caption:='Sentence Case';
  N77.Caption:='Insert';
  N80.Caption:='Open With...';
  N85.Caption:=N59.Caption;
  N86.Caption:='Indent';
  N87.Caption:='Unindent';
  N88.Caption:='Block';
  N90.Caption:='Enclose Selection';
  N95.Caption:=N57.Caption;
  N96.Caption:=N46.Caption;
  N99.Caption:='Time/Date';
  N100.Caption:='Filename';
  N101.Caption:='Options';
  N102.Caption:='Filename and path';
  N103.Caption:='Tab Settings';
  N104.Caption:='Revert';
  N105.Caption:='New';
  N114.Caption:='Properties';
  N116.Caption:='Show Statusbar';
  N117.Caption:='Language';
  N118.Caption:='Show Toolbar';
  N119.Caption:='New Window';
  N120.Caption:='Launch';
  N122.Caption:='Empty Window';
  N124.Caption:='Execute Document';
  N125.Caption:='Codepage';
  N126.Caption:='Internal';
  N127.Caption:='Recent files';
  N129.Caption:='ANSI';
  N130.Caption:='Delete non-existent';
  N132.Caption:='Clear list';
  N133.Caption:='Unicode';
  N134.Caption:='Default';
  Save.FileName:='Untitled.txt';
  Preview.Caption:=N7.Caption;
  Preview.TntButton1.Hint:='Next Page';
  Preview.TntButton2.Hint:='Previous Page';
  Preview.TntButton3.Hint:='Last Page';
  Preview.TntButton4.Hint:='First Page';
  Preview.TntButton5.Caption:=N8.Caption;
  SelIns.Caption:=N90.Caption;
  SelIns.TntButton1.Caption:='OK';
  SelIns.TntButton2.Caption:='Cancel';
  SelIns.TntLabel1.Caption:='Insert before selection';
  SelIns.TntLabel2.Caption:='Insert after selection';
  TabOpt.Caption:=N103.Caption;
  TabOpt.TntButton1.Caption:=SelIns.TntButton1.Caption;
  TabOpt.TntButton2.Caption:=SelIns.TntButton2.Caption;
  TabOpt.TntLabel1.Caption:='Tabulator width';
  mylang:='';
  ini.WriteString('GUI'+myusn,'Lang','');
  ini.UpdateFile;
end;

procedure TEditor.N132Click(Sender: TObject);
var reci:0..9;
begin
  for reci:=0 to 9 do ini.WriteString('Recent','File'+IntToStr(reci),'');
  ini.UpdateFile;
  ReloadRecentItems;
end;

procedure TEditor.N130Click(Sender: TObject);
var reci:0..9;
begin
  for reci:=0 to 9 do if not(WideFileExists(ini.ReadString('Recent','File'+IntToStr(reci),''))) then ini.WriteString('Recent','File'+IntToStr(reci),'');
  ini.UpdateFile;
  ReloadRecentItems;
end;

procedure TEditor.N80Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open','rundll32.exe',PWideChar('shell32.dll,OpenAs_RunDLL '+MyFileName),PWideChar(WideExtractFilePath(MyFileName)),SW_SHOWNORMAL);
end;

procedure TEditor.N100Click(Sender: TObject);
begin
  Edit.SelText:=WideExtractFileName(MyFileName);
end;

procedure TEditor.N102Click(Sender: TObject);
begin
  Edit.SelText:=MyFileName;
end;

procedure TEditor.N103Click(Sender: TObject);
begin
  TabOpt.ShowModal;
end;

procedure TEditor.N129Click(Sender: TObject);
begin
  N129.Checked:=True;
  Edit.Lines.SaveUnicode:=False;
  savefmt:=1;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N133Click(Sender: TObject);
begin
  N133.Checked:=True;
  Edit.Lines.SaveUnicode:=True;
  savefmt:=2;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N134Click(Sender: TObject);
begin
  N134.Checked:=True;
  savefmt:=0;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

end.
