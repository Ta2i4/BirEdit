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


The Original Code is Unit1.pas by Aleksey Tatuyko, released 2008-10-17.
All Rights Reserved.

$Id: Unit1.pas,v 1.1.6.180 2008/10/17 10:34:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
}

unit Unit1;

interface

uses
  Windows, Messages, ComCtrls, Dialogs, Menus, Classes, Controls, ToolWin,
  TntWindows, TntForms, TntGraphics, TntDialogs, TntControls, TntClasses,
  TntSysUtils, SynEdit, SynUnicode, TntMenus, TntComCtrls, SynEditPrint,
  BirIniFiles, ImgList, ExtCtrls, ShellAPI, SysUtils, JvTimer, JvDebugHandler,
  JvComponentBase, JvDragDrop, TntWideStrUtils, TntFormatStrUtils, TntSystem,
  ShlObj, Forms, XPMan, Graphics, SynEditTypes, SynEditRegexSearch,
  SynEditMiscClasses, SynEditSearch, SynEditKeyCmds, Clipbrd;

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
    N134: TTntMenuItem;
    N135: TTntMenuItem;
    XPManifest1: TXPManifest;
    N97: TTntMenuItem;
    N136: TTntMenuItem;
    N98: TTntMenuItem;
    N106: TTntMenuItem;
    N79: TTntMenuItem;
    SynEditRegexSearch1: TSynEditRegexSearch;
    SynEditSearch1: TSynEditSearch;
    N138: TTntMenuItem;
    N139: TTntMenuItem;
    N140: TTntMenuItem;
    N141: TTntMenuItem;
    N18: TTntMenuItem;
    N26: TTntMenuItem;
    N27: TTntMenuItem;
    N28: TTntMenuItem;
    N29: TTntMenuItem;
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
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N02Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
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
    procedure N134Click(Sender: TObject);
    procedure TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N103Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure N136Click(Sender: TObject);
    procedure N98Click(Sender: TObject);
    procedure N106Click(Sender: TObject);
    procedure TntFormResize(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure N139Click(Sender: TObject);
    procedure N141Click(Sender: TObject);
    procedure EditReplaceText(Sender: TObject; const ASearch,
      AReplace: WideString; Line, Column: Integer;
      var Action: TSynReplaceAction);
    procedure N26Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
  private
    { Private declarations }
    fSearchFromCaret, gbSearchBackwards, gbSearchCaseSensitive,
    gbSearchFromCaret, gbSearchRegex, gbSearchSelectionOnly,
    gbSearchTextAtCaret, gbSearchWholeWords, gbTempSearchBackwards,
    prevnoex: Boolean;
    savefmt, filefmt: 0..4;
    prev: Integer;
    bigsize, myfsize: Int64;
    MyFileName: TWideFileName;
    gsReplaceText, gsReplaceTextHistory, gsSearchText, gsSearchTextHistory,
    myusn: UnicodeString;
    function ShowMyMessageDlg(MessageIndex: Byte; AFileName: TWideFileName): Boolean;
    procedure AddLog;
    procedure AddRecentItem(RecFileName: TWideFileName);
    procedure AddToClipboard;
    procedure AdvancedItemClick(Sender: TObject);
    procedure ChangeClipboard;
    procedure ClearClipboard;
    procedure DoSearchReplaceText(AReplace: Boolean; ABackwards: Boolean);
    procedure ShowSearchReplaceDialog(AReplace: Boolean);
    procedure FindExecute;
    procedure FindAgainExecute;
    procedure FindBackwardsExecute;
    procedure GoToMarker(Aindex: Byte);
    procedure ItemClick(Sender: TObject);
    procedure LoadFromFile(const FileName: TWideFileName);
    procedure LoadMyApp;
    procedure LoadTranslate(const lang: UnicodeString);
    procedure MyOpenFile(OpenFileName: TWideFileName);
    procedure MySaveFile(SaveFileName: TWideFileName);
    procedure RecentItemClick(sender: TObject);
    procedure ReloadRecentItems;
    procedure ReplaceExecute;
    {procedure ReplaceAgainExecute;
    procedure ReplaceBackwardsExecute;
    //no need for now}
    procedure SaveToFile(const FileName: TWideFileName);
    procedure SetMarker(Aindex: Byte);
    procedure ShowMyMessage(MessageIndex: Byte);
    procedure WorkParams;
  public
    { Public declarations }
    mylang: UnicodeString;
  end;

const
  progver='1.1.6';
  progbld='180';

var
  CRCap: UnicodeString = 'Confirm replace';
  CRBut1: UnicodeString = 'Yes';
  CRBut2: UnicodeString = 'No';
  CRBut3: UnicodeString = 'Cancel';
  CRBut4: UnicodeString = 'Yes to all';
  CRLab: UnicodeString = 'Replace this occurence of "%s"?';
  myunk: UnicodeString = 'Untitled';
  mysn1: UnicodeString = 'GB';
  mysn2: UnicodeString = 'MB';
  mysn3: UnicodeString = 'KB';
  mysn4: UnicodeString = 'Byte(s)';
  Editor: TEditor;
  ini: TBirIniFile;

implementation

uses
  BirEditAdv, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11;

{$R *.DFM}

{Errors and messages}

procedure TEditor.ShowMyMessage(MessageIndex: Byte);
var
  msgstr: UnicodeString;
  langini: TBirIniFile;
  erdlg: TMyMsgDlg;
begin
  erdlg:=TMyMsgDlg.Create(Self);
  with erdlg do try
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang);
      TntButton1.Caption:=langini.ReadString('MsgDlgs','0','OK');
      case MessageIndex of
        0: msgstr:=langini.ReadString('MsgDlgs','1','Cannot open file.');
        1: msgstr:=langini.ReadString('MsgDlgs','10','Text not found.');
      end;
      langini.Free;
    end else begin
      case MessageIndex of
        0: msgstr:='Cannot open file.';
        1: msgstr:='Text not found.';
      end;
    end;
    TntLabel1.Caption:=msgstr;
    case MessageIndex of
      0: TntImage1.Picture.Icon.Handle:=LoadIconW(0,PWideChar(IDI_ERROR));
      1: TntImage1.Picture.Icon.Handle:=LoadIconW(0,PWideChar(IDI_INFORMATION));
    end;
    if ShowModal=mrOk then {do nothing};
  finally
    erdlg.Free;
  end;
end;

function TEditor.ShowMyMessageDlg(MessageIndex: Byte; AFileName: TWideFileName): Boolean;
var
  msgstr: UnicodeString;
  langini: TBirIniFile;
  msgdlg: TMyMsgDlg;
begin
  if MessageIndex>3 then msgdlg:=TMyBMsgDlg.Create(Self) else msgdlg:=TMyAMsgDlg.Create(Self);
  with msgdlg do try
    msgdlg.TntImage1.Picture.Icon.Handle:=LoadIconW(0,PWideChar(IDI_WARNING));
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang);
      case MessageIndex of
        0: msgstr:=langini.ReadString('MsgDlgs','2','File has "read-only" attribute.\nSave changes to file?');
        1: msgstr:=langini.ReadString('MsgDlgs','5','Current file has changed in other program.\nReopen the file?');
        2: msgstr:=langini.ReadString('MsgDlgs','6','File is no more exists.\nSave the file?');
        3: msgstr:=langini.ReadString('MsgDlgs','7','Are you sure that you want to open the large file?');
        4: msgstr:=langini.ReadString('MsgDlgs','9','File has changed.\nSave the file?');
      end;
      TntButton1.Caption:=langini.ReadString('MsgDlgs','3','Yes');
      if MessageIndex>3 then begin
        with msgdlg as TMyBMsgDlg do begin
          TntButton2.Caption:=langini.ReadString('MsgDlgs','4','No');
          TntButton3.Caption:=langini.ReadString('MsgDlgs','8','Cancel');
        end;
      end else with msgdlg as TMyAMsgDlg do TntButton2.Caption:=langini.ReadString('MsgDlgs','4','No');
    langini.Free;
    end else begin
      case MessageIndex of
        0: msgstr:='File has "read-only" attribute.\nSave changes to file?';
        1: msgstr:='Current file has changed in other program.\nReopen the file?';
        2: msgstr:='File is no more exists.\nSave the file?';
        3: msgstr:='Are you sure that you want to open the large file?';
        4: msgstr:='File has changed.\nSave the file?';
      end;
    end;
    msgstr:=UnicodeStringReplace(msgstr,'\n',#13#10,[rfReplaceAll]);
    TntLabel1.Caption:=msgstr;
    if MessageIndex>3 then begin
      with msgdlg as TMyBMsgDlg do case ShowModal of
        mrYes:
        begin
          if WideFileExists(MyFileName) then MySaveFile(MyFileName) else if Save.Execute then MySaveFile(Save.FileName);
          Result:=True;
        end;
        mrNo: Result:=True;
        mrCancel: Result:=False;
        end;
    end else begin
      case ShowModal of
        mrYes:
        begin
          case MessageIndex of
            0:
            begin
              WideFileSetReadOnly(AFileName,False);
              SaveToFile(AFileName);
              WideFileSetReadOnly(AFileName,True);
            end;
            1: N104.Click;
            2:
            begin
              SaveToFile(AFileName);
              prev:=WideFileAge(AFileName);
            end;
          end;
          Result:=True;
        end;
        mrNo: Result:=False;
        end;
    end;
  finally
    msgdlg.Free;
  end;
end;

{Load/Save the file}

procedure TEditor.LoadFromFile(const FileName:TWideFileName);
var
  Stream: TStream;

 procedure MyLoad;
 begin
   Edit.Lines.LoadFromStream(Stream);
   MyFileName:=FileName;
   myfsize:=Stream.Size;
 end;

begin
  try
    Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyNone);
    try
      if Stream.Size>bigsize then begin
        if ShowMyMessageDlg(3,'') then MyLoad
      end else MyLoad;
    finally
      Stream.Free;
    end;
  except
    ShowMyMessage(0);
  end;
end;

procedure TEditor.SaveToFile(const FileName:TWideFileName);
var
  Stream:TStream;
begin
  Stream:=TFileStream.Create(FileName, fmCreate);
  try
    Edit.Lines.SaveToStream(Stream);
    MyFileName:=FileName;
    myfsize:=Stream.Size;
    Edit.Modified:=False;
  finally
    Stream.Free;
  end;
end;

{Find and Replace}

procedure TEditor.ShowSearchReplaceDialog(AReplace: boolean);
var
  langini: TBirIniFile;
  dlg:TSearchForm;
begin
  if AReplace then dlg:=TReplaceForm.Create(Self) else dlg:=TSearchForm.Create(Self);
  with dlg do try
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang);
      Caption:=langini.ReadString('SearchDlg','0','Search Text');
      TntLabel1.Caption:=langini.ReadString('SearchDlg','1','Search for');
      TntGroupBox1.Caption:=langini.ReadString('SearchDlg','2','Options');
      TntCheckBox1.Caption:=langini.ReadString('SearchDlg','3','Case sensitivity');
      TntCheckBox2.Caption:=langini.ReadString('SearchDlg','4','Whole words only');
      TntCheckBox3.Caption:=langini.ReadString('SearchDlg','5','Search from caret');
      TntCheckBox4.Caption:=langini.ReadString('SearchDlg','6','Selected text only');
      TntCheckBox5.Caption:=langini.ReadString('SearchDlg','7','Regular expression');
      TntRadioGroup1.Caption:=langini.ReadString('SearchDlg','8','Direction');
      TntRadioGroup1.Items[0]:=langini.ReadString('SearchDlg','9','Forward');
      TntRadioGroup1.Items[1]:=langini.ReadString('SearchDlg','10','Backward');
      TntButton1.Caption:=langini.ReadString('SearchDlg','11','OK');
      TntButton2.Caption:=langini.ReadString('SearchDlg','12','Cancel');
      if AReplace then with dlg as TReplaceForm
      do TntLabel2.Caption:=langini.ReadString('SearchDlg','13','Replace with:');
      langini.Free;
    end;
    SearchBackwards:=(gbSearchBackwards or gbtempSearchBackwards);
    SearchCaseSensitive:=gbSearchCaseSensitive;
    SearchFromCursor:=gbSearchFromCaret;
    SearchInSelectionOnly:=gbSearchSelectionOnly;
    SearchRegularExpression:=gbSearchRegex;
    gbSearchTextAtCaret:=true;
    SearchText:=gsSearchText;
    if gbSearchTextAtCaret then begin
      if Edit.SelAvail and (Edit.BlockBegin.Char=Edit.BlockEnd.Char)
      then SearchText:=Edit.SelText
      else SearchText:=Edit.GetWordAtRowCol(Edit.CaretXY);
    end;
    if AReplace then with dlg as TReplaceForm do begin
      ReplaceText:=gsReplaceText;
      ReplaceTextHistory:=gsReplaceTextHistory;
    end;
    SearchWholeWords:=gbSearchWholeWords;
    if ShowModal = mrOK then begin
      if not(gbtempSearchBackwards) then
        gbSearchBackwards := SearchBackwards;
      gbSearchCaseSensitive := SearchCaseSensitive;
      gbSearchFromCaret := SearchFromCursor;
      gbSearchSelectionOnly := SearchInSelectionOnly;
      gbSearchWholeWords := SearchWholeWords;
      gbSearchRegex := SearchRegularExpression;
      gsSearchText := SearchText;
      if AReplace then with dlg as TReplaceForm do begin
        gsReplaceText:=ReplaceText;
        gsReplaceTextHistory:=ReplaceTextHistory;
      end;
      fSearchFromCaret := gbSearchFromCaret;
      if gsSearchText <> '' then begin
        DoSearchReplaceText(AReplace, gbSearchBackwards);
        fSearchFromCaret := TRUE;
      end;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TEditor.DoSearchReplaceText(AReplace:boolean;ABackwards:boolean);
var Options: TSynSearchOptions;
begin
  if AReplace
  then Options:=[ssoPrompt,ssoReplace,ssoReplaceAll]
  else Options:=[];
  if ABackwards then Include(Options,ssoBackwards);
  if gbSearchCaseSensitive then Include(Options,ssoMatchCase);
  if not fSearchFromCaret then Include(Options,ssoEntireScope);
  if gbSearchSelectionOnly then Include(Options,ssoSelectedOnly);
  if gbSearchWholeWords then Include(Options,ssoWholeWord);
  if gbSearchRegex then Edit.SearchEngine:=SynEditRegexSearch1 else Edit.SearchEngine:=SynEditSearch1;
  if Edit.SearchReplace(gsSearchText,gsReplaceText,Options)=0
  then begin
    ShowMyMessage(1);
    if ssoBackwards in Options
    then Edit.BlockEnd:=Edit.BlockBegin
    else Edit.BlockBegin:=Edit.BlockEnd;
    Edit.CaretXY:=Edit.BlockBegin;
  end;
  if ConfirmReplace<>nil then ConfirmReplace.Free;
end;

procedure TEditor.EditReplaceText(Sender: TObject; const ASearch,
  AReplace: WideString; Line, Column: Integer; var Action: TSynReplaceAction);
var
  APos      : TPoint;
  EditRect  : TRect;
  SynEditor : TSynEdit;
begin
  if ASearch=AReplace then Action:=raSkip
  else begin
    SynEditor:=TSynEdit(Sender);
    APos:=Edit.ClientToScreen(SynEditor.RowColumnToPixels
                                    (SynEditor.BufferToDisplayPos
                                    (BufferCoord(Column, Line))));
    EditRect              := ClientRect;
    EditRect.TopLeft      := ClientToScreen(EditRect.TopLeft);
    EditRect.BottomRight  := ClientToScreen(EditRect.BottomRight);
    if ConfirmReplace=nil then ConfirmReplace:=TConfirmReplace.Create(TntApplication);
    with ConfirmReplace do begin
      Caption:=CRCap;
      TntButton1.Caption:=CRBut1;
      TntButton2.Caption:=CRBut2;
      TntButton3.Caption:=CRBut3;
      TntButton4.Caption:=CRBut4;
      TntLabel1.Caption:=WideFormat(CRLab,[ASearch]);
    end;
    ConfirmReplace.PrepareShow(EditRect,APos.X,APos.Y,APos.Y+Edit.LineHeight);
    case ConfirmReplace.ShowModal of
      mrYes       : Action:=raReplace;
      mrYesToAll  : Action:=raReplaceAll;
      mrNo        : Action:=raSkip;
      else          Action:=raCancel;
    end;
  end;
end;

procedure TEditor.FindExecute;
begin
  gbtempSearchBackwards:=false;
  ShowSearchReplaceDialog(FALSE);
end;

procedure TEditor.FindAgainExecute;
begin
  gbtempSearchBackwards:=false;
	if (gsSearchText='')
  then ShowSearchReplaceDialog(FALSE)
  else DoSearchReplaceText(FALSE,False);
end;

procedure TEditor.FindBackwardsExecute;
begin
	gbtempSearchBackwards:=true;
	if (gsSearchText='')
  then ShowSearchReplaceDialog(FALSE)
  else DoSearchReplaceText(FALSE,TRUE);
end;

procedure TEditor.ReplaceExecute;
begin
    ShowSearchReplaceDialog(TRUE);
end;

{procedure TEditor.ReplaceAgainExecute;
begin
  gbtempSearchBackwards:=false;
	if (gsSearchText='')
  then ShowSearchReplaceDialog(True)
  else DoSearchReplaceText(True,False);
end;

procedure TEditor.ReplaceBackwardsExecute;
begin
	gbtempSearchBackwards:=true;
	if (gsSearchText='')
  then ShowSearchReplaceDialog(True)
  else DoSearchReplaceText(True,TRUE);
end;}


{Code of the program}

procedure TEditor.SetMarker(Aindex:Byte);
var SetPoint:TPoint; SetCommand:TSynEditorCommand;
begin
  SetPoint.X:=Edit.CaretX;
  SetPoint.Y:=Edit.CaretY;
  case Aindex of
    1: SetCommand:=ecSetMarker1;
    2: SetCommand:=ecSetMarker2;
    3: SetCommand:=ecSetMarker3;
    4: SetCommand:=ecSetMarker4;
    5: SetCommand:=ecSetMarker5;
    6: SetCommand:=ecSetMarker6;
    7: SetCommand:=ecSetMarker7;
    8: SetCommand:=ecSetMarker8;
    9: SetCommand:=ecSetMarker9;
  else SetCommand:=ecSetMarker0; 
  end;
  Edit.ExecuteCommand(SetCommand,'A',@SetPoint);
end;

procedure TEditor.GoToMarker(Aindex:Byte);
var GTMPoint:TPoint; GTMCommand:TSynEditorCommand;
begin
  GTMPoint.X:=Edit.CaretX;
  GTMPoint.Y:=Edit.CaretY;
  case Aindex of
    1: GTMCommand:=ecGotoMarker1;
    2: GTMCommand:=ecGotoMarker2;
    3: GTMCommand:=ecGotoMarker3;
    4: GTMCommand:=ecGotoMarker4;
    5: GTMCommand:=ecGotoMarker5;
    6: GTMCommand:=ecGotoMarker6;
    7: GTMCommand:=ecGotoMarker7;
    8: GTMCommand:=ecGotoMarker8;
    9: GTMCommand:=ecGotoMarker9;
  else GTMCommand:=ecGotoMarker0; 
  end;
  Edit.ExecuteCommand(GTMCommand,'A',@GTMPoint);
end;

procedure TEditor.LoadTranslate(const lang:UnicodeString);
var i:Integer; langini:TBirIniFile;
begin
  langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+lang);
  N1.Caption:=langini.ReadString('Main','0','File');
  N2.Caption:=langini.ReadString('Main','1','Exit');
  N3.Caption:=langini.ReadString('Main','2','Open');
  N4.Caption:=langini.ReadString('Main','3','Save');
  N5.Caption:=langini.ReadString('Main','4','Save As...');
  N7.Caption:=langini.ReadString('Main','5','Print Preview');
  N8.Caption:=langini.ReadString('Main','6','Print');
  N10.Caption:=langini.ReadString('Main','7','Edit');
  N11.Caption:=langini.ReadString('Main','8','Undo');
  N12.Caption:=langini.ReadString('Main','9','Redo');
  N14.Caption:=langini.ReadString('Main','10','Select All');
  N15.Caption:=langini.ReadString('Main','11','Copy');
  N16.Caption:=langini.ReadString('Main','12','Paste');
  N17.Caption:=langini.ReadString('Main','13','Cut');
  N19.Caption:=N11.Caption;
  N20.Caption:=N12.Caption;
  N22.Caption:=N17.Caption;
  N23.Caption:=N15.Caption;
  N24.Caption:=N16.Caption;
  N25.Caption:=N14.Caption;
  N33.Caption:=langini.ReadString('Main','14','Set');
  N34.Caption:=langini.ReadString('Main','15','Go To');
  N30.Caption:=langini.ReadString('Main','16','Copy Add');
  N37.Caption:=langini.ReadString('Main','17','Dublicate Selection');
  N38.Caption:=langini.ReadString('Main','18','Bookmarks');
  N39.Caption:=langini.ReadString('Main','19','Copy All');
  N40.Caption:=langini.ReadString('Main','20','Advanced');
  N45.Caption:=N39.Caption;
  N46.Caption:=langini.ReadString('Main','21','Clear Clipboard');
  N47.Caption:=langini.ReadString('Main','22','Line Numbers');
  N48.Caption:=langini.ReadString('Main','23','Word Wrap');
  N49.Caption:=langini.ReadString('Main','24','Help');
  N50.Caption:=langini.ReadString('Main','25','About...');
  N55.Caption:=N30.Caption;
  N56.Caption:=langini.ReadString('Main','26','Swap');
  N57.Caption:=langini.ReadString('Main','27','Clear All');
  N59.Caption:=langini.ReadString('Main','28','Clear');
  N60.Caption:=langini.ReadString('Main','29','Uppercase');
  N65.Caption:=N56.Caption;
  N66.Caption:=langini.ReadString('Main','30','Convert');
  N68.Caption:=langini.ReadString('Main','31','Lowercase');
  N69.Caption:=langini.ReadString('Main','32','Title Case');
  N70.Caption:=langini.ReadString('Main','33','Invert Case');
  N76.Caption:=langini.ReadString('Main','34','Sentence Case');
  N77.Caption:=langini.ReadString('Main','35','Insert');
  N100.Caption:=langini.ReadString('Main','36','Filename');
  N79.Caption:=langini.ReadString('Main','37','Special Symbols');
  N80.Caption:=langini.ReadString('Main','38','Open With...');
  N85.Caption:=N59.Caption;
  N86.Caption:=langini.ReadString('Main','39','Indent');
  N87.Caption:=langini.ReadString('Main','40','Unindent');
  N88.Caption:=langini.ReadString('Main','41','Block');
  N90.Caption:=langini.ReadString('Main','42','Enclose Selection');
  N138.Caption:=langini.ReadString('Main','43','Line');
  N95.Caption:=N57.Caption;
  N96.Caption:=N46.Caption;
  N99.Caption:=langini.ReadString('Main','44','Time/Date');
  N101.Caption:=langini.ReadString('Main','45','Options');
  N103.Caption:=langini.ReadString('Main','46','Tab Settings');
  N104.Caption:=langini.ReadString('Main','47','Revert');
  N105.Caption:=langini.ReadString('Main','48','New');
  N139.Caption:=langini.ReadString('Main','49','Delete');
  N140.Caption:=langini.ReadString('Main','50','Special');
  N141.Caption:=langini.ReadString('Main','51','Find mathing brace');
  N114.Caption:=langini.ReadString('Main','52','Properties');
  N116.Caption:=langini.ReadString('Main','53','Show Statusbar');
  N117.Caption:=langini.ReadString('Main','54','Language');
  CRCap:=langini.ReadString('Main','55','Confirm replace');
  N119.Caption:=langini.ReadString('Main','56','New Window');
  N120.Caption:=langini.ReadString('Main','57','Launch');
  N122.Caption:=langini.ReadString('Main','58','Empty Window');
  N124.Caption:=langini.ReadString('Main','59','Execute Document');
  N126.Caption:=langini.ReadString('Main','60','Internal');
  N127.Caption:=langini.ReadString('Main','61','Recent files');
  N130.Caption:=langini.ReadString('Main','62','Delete non-existent');
  N132.Caption:=langini.ReadString('Main','63','Clear list');
  N102.Caption:=langini.ReadString('Main','64','Filename and path');
  N125.Caption:=langini.ReadString('Main','65','Codepage');
  N134.Caption:=langini.ReadString('Main','66','Default');
  N26.Caption:=langini.ReadString('Main','67','Find...');
  N27.Caption:=langini.ReadString('Main','68','Find Next');
  CRLab:=langini.ReadString('Main','69','Replace this occurence of "%s"?');
  myunk:=langini.ReadString('Main','70','Untitled');
  mysn1:=langini.ReadString('Main','71','GB');
  mysn2:=langini.ReadString('Main','72','MB');
  mysn3:=langini.ReadString('Main','73','KB');
  mysn4:=langini.ReadString('Main','74','Byte(s)');
  CRBut1:=langini.ReadString('Main','75','Yes');
  CRBut2:=langini.ReadString('Main','76','No');
  CRBut3:=langini.ReadString('Main','77','Cancel');
  CRBut4:=langini.ReadString('Main','78','Yes to all');
  N28.Caption:=langini.ReadString('Main','79','Find Previous');
  N29.Caption:=langini.ReadString('Main','80','Replace...');
  Save.FileName:=myunk+'.txt';
  langini.Free;
  for I := 1 to N117.Count-1 do begin
    if WideCompareStr(N117.Items[i].Hint,mylang)=0 then N117.Items[i].Checked:=True;
  end;
end;

procedure TEditor.AdvancedItemClick(sender: TObject);
var advtempcmd,advtempparam:UnicodeString;
begin
  with (sender as TTntMenuItem) do begin
    advtempcmd:=ini.ReadString('Advanced','Item'+Hint+'.Command','');
    advtempparam:=ini.ReadString('Advanced','Item'+Hint+'.Params','');
    advtempparam:=UnicodeStringReplace(advtempparam,'%1',MyFileName,[rfReplaceAll]);
    Tnt_ShellExecuteW(Self.Handle,'open',PWideChar(advtempcmd),PWideChar(advtempparam),nil,SW_SHOWNORMAL);
  end;
end;

procedure TEditor.ItemClick(sender: TObject);
begin
  with (sender as TTntMenuItem) do begin
    mylang:=Hint;
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      LoadTranslate(mylang);
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
var reci:Byte; recs:UnicodeString; RecItem: TTntMenuItem;
begin
  for reci:=N127.Count downto 4 do begin
    N127.Items[reci-1].Free;
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
  LoadFromFile(OpenFileName);
  AddRecentItem(OpenFileName);
  SHAddToRecentDocs(2,PWideChar(OpenFileName));
  prev:=WideFileAge(OpenFileName);
  if Edit.Lines.SaveFormat=sfUTF16LSB then filefmt:=1
  else if Edit.Lines.SaveFormat=sfUTF16MSB then filefmt:=2
  else if Edit.Lines.SaveFormat=sfUTF8 then filefmt:=3
  else if Edit.Lines.SaveFormat=sfAnsi then filefmt:=4
  else filefmt:=0;
  case savefmt of
    1: Edit.Lines.SaveFormat:=sfUTF16LSB;
    2: Edit.Lines.SaveFormat:=sfUTF16MSB;
    3: Edit.Lines.SaveFormat:=sfUTF8;
    4: Edit.Lines.SaveFormat:=sfAnsi;
  end;
  AddLog;
end;

procedure TEditor.MySaveFile(SaveFileName: TWideFileName);
var HideROMsg:Boolean;
begin
 if WideExtractFilePath(SaveFileName)='' then SaveFileName:=WideExtractFilePath(TntApplication.ExeName)+SaveFileName;
 if WideFileExists(SaveFileName) then begin
   if WideFileIsReadOnly(SaveFileName) then begin
     if myusn='' then HideROMsg:=ini.ReadBool('Editor','HideROMsg',false) else HideROMsg:=ini.ReadBool('Editor'+myusn,'HideROMsg',ini.ReadBool('Editor','HideROMsg',false));
     if HideROMsg then begin
       WideFileSetReadOnly(SaveFileName,False);
       SaveToFile(SaveFileName);
       WideFileSetReadOnly(SaveFileName,True);
     end else if not ShowMyMessageDlg(0,SaveFileName) then Exit;
   end else SaveToFile(SaveFileName);
 end else SaveToFile(SaveFileName);
  AddRecentItem(SaveFileName);
  SHAddToRecentDocs(2,PWideChar(SaveFileName));
  prev:=WideFileAge(SaveFileName);
  if Edit.Lines.SaveFormat=sfUTF16LSB then filefmt:=1
  else if Edit.Lines.SaveFormat=sfUTF16MSB then filefmt:=2
  else if Edit.Lines.SaveFormat=sfUTF8 then filefmt:=3
  else if Edit.Lines.SaveFormat=sfAnsi then filefmt:=4
  else filefmt:=0;
end;

procedure TEditor.WorkParams;
var
  ToCreate, ToPaste, ToPrint, ToQuit : Boolean;
  ParamFile                          : UnicodeString;
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
    if ToCreate then SaveToFile(ParamFile);
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
  if Edit.Modified then begin
    CanClose:=ShowMyMessageDlg(4,'');
  end;
end;

procedure TEditor.LoadMyApp;
var
  loadadv           : Boolean;
  icnum, itc        : Integer;
  icfile            : UnicodeString;
  langsrw           : TSearchRecW;
  AdvItem, LangItem : TTntMenuItem;
  ic                : TIcon;
  langini           : TBirIniFile;
begin
  if ini.ReadBool('System','UserMode',True)
  then begin
    myusn:='.'+MyGetVar('USERNAME');
    Editor.Height:=ini.ReadInteger('GUI'+myusn,'MainWnd.Height',ini.ReadInteger('GUI','MainWnd.Height',420));
    Editor.Width:=ini.ReadInteger('GUI'+myusn,'MainWnd.Width',ini.ReadInteger('GUI','MainWnd.Width',600));
    Editor.Top:=ini.ReadInteger('GUI'+myusn,'MainWnd.Top',ini.ReadInteger('GUI','MainWnd.Top',Round((Screen.Height-Editor.Height)/2)));
    Editor.Left:=ini.ReadInteger('GUI'+myusn,'MainWnd.Left',ini.ReadInteger('GUI','MainWnd.Left',Round((Screen.Width-Editor.Width)/2)));
    if ini.ReadBool('GUI'+myusn,'MainWnd.Maximized',ini.ReadBool('GUI','MainWnd.Maximized',False)) then Editor.WindowState:=wsMaximized;
    loadadv:=ini.ReadBool('GUI'+myusn,'LoadAdvancedMenu',ini.ReadBool('Editor','LoadAdvancedMenu',False));
    mylang:=ini.ReadString('GUI'+myusn,'Lang',ini.ReadString('GUI','Lang',''));
    N47.Checked:=ini.ReadBool('Editor'+myusn,'LineNums',ini.ReadBool('Editor','LineNums',False));
    N48.Checked:=ini.ReadBool('Editor'+myusn,'Wrap',ini.ReadBool('Editor','Wrap',False));
    N79.Checked:=ini.ReadBool('Editor'+myusn,'SpecSymbols',ini.ReadBool('Editor','SpecSymbols',False));
    N116.Checked:=ini.ReadBool('GUI'+myusn,'StatusBar',ini.ReadBool('GUI','StatusBar',False));
    Edit.TabWidth:=ini.ReadInteger('Editor'+myusn,'TabWidth',ini.ReadInteger('Editor','TabWidth',8));
    Edit.Gutter.Font.Color:=ini.ReadColor('GUI'+myusn,'GutterFontColor',ini.ReadColor('GUI','GutterFontColor',0));
    case ini.ReadInteger('Editor'+myusn,'SaveFmt',ini.ReadInteger('Editor','SaveFmt',0)) of
      1: N106.Click;
      2: N98.Click;
      3: N136.Click;
      4: N97.Click;
     else N134.Click;
    end;
    bigsize:=ini.ReadInt64('Editor','BigFile',ini.ReadInteger('Editor','BigFile',1048576));
  end else begin
    myusn:='';
    Editor.Height:=ini.ReadInteger('GUI','MainWnd.Height',420);
    Editor.Width:=ini.ReadInteger('GUI','MainWnd.Width',600);
    Editor.Top:=ini.ReadInteger('GUI','MainWnd.Top',Round((Screen.Height-Editor.Height)/2));
    Editor.Left:=ini.ReadInteger('GUI','MainWnd.Left',Round((Screen.Width-Editor.Width)/2));
    if ini.ReadBool('GUI','MainWnd.Maximized',False) then Editor.WindowState:=wsMaximized;
    loadadv:=ini.ReadBool('GUI','LoadAdvancedMenu',False);
    mylang:=ini.ReadString('GUI','Lang','');
    N47.Checked:=ini.ReadBool('Editor','LineNums',False);
    N48.Checked:=ini.ReadBool('Editor','Wrap',False);
    N79.Checked:=ini.ReadBool('Editor','SpecSymbols',False);
    N116.Checked:=ini.ReadBool('GUI','StatusBar',False);
    Edit.TabWidth:=ini.ReadInteger('Editor','TabWidth',8);
    Edit.Gutter.Font.Color:=ini.ReadColor('GUI','GutterFontColor',0);
    case ini.ReadInteger('Editor','SaveFmt',0) of
      1: N106.Click;
      2: N98.Click;
      3: N136.Click;
      4: N97.Click;
      else N134.Click;
    end;
    bigsize:=ini.ReadInt64('Editor','BigFile',1048576);
  end;
  Status.Visible:=N116.Checked;
  Edit.Gutter.Visible:=N47.Checked;
  Edit.WordWrap:=N48.Checked;
  if N79.Checked then Edit.Options:=Edit.Options+[eoShowSpecialChars] else Edit.Options:=Edit.Options-[eoShowSpecialChars];
  if (loadadv=True)and(ini.ReadInteger('Advanced','Count',0)>0) then
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
      ic.Free;
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
        langini.Free;
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
  JvDebugHandler1.LogFileName:=WideExtractFilePath(TntApplication.ExeName)+'error.log';
  ini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'biredit.ini');
  LoadMyApp;
  WorkParams;
  ReloadRecentItems;
end;

procedure TEditor.TntFormDestroy(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'LineNums',Edit.Gutter.Visible);
  ini.WriteInteger('Editor'+myusn,'TabWidth',Edit.TabWidth);
  ini.WriteBool('Editor'+myusn,'Wrap',Edit.WordWrap);
  ini.WriteBool('GUI'+myusn,'StatusBar',Status.Visible);
  if Editor.WindowState=wsMaximized then begin
    ini.WriteBool('GUI','MainWnd.Maximized',True);
  end else begin
    ini.WriteBool('GUI','MainWnd.Maximized',False);
    ini.WriteInteger('GUI'+myusn,'MainWnd.Height',Editor.Height);
    ini.WriteInteger('GUI'+myusn,'MainWnd.Left',Editor.Left);
    ini.WriteInteger('GUI'+myusn,'MainWnd.Top',Editor.Top);
    ini.WriteInteger('GUI'+myusn,'MainWnd.Width',Editor.Width);
  end;
  ini.UpdateFile;
  ini.Free;
end;

procedure TEditor.TntFormResize(Sender: TObject);
begin
  ini.WriteBool('GUI','MainWnd.Maximized',Editor.WindowState=wsMaximized);
  ini.UpdateFile;
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
var
  langini: TBirIniFile;
  prwdlg: TPreview;
begin
  synprint1.SynEdit:=Edit;
  synprint1.Wrap:=True;
  prwdlg:=TPreview.Create(Self);
  with prwdlg do try
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang);
      Caption:=langini.ReadString('PrevDlg','0','Print Preview');
      TntButton1.Hint:=langini.ReadString('PrevDlg','1','Next Page');
      TntButton2.Hint:=langini.ReadString('PrevDlg','2','Previous Page');
      TntButton3.Hint:=langini.ReadString('PrevDlg','3','Last Page');
      TntButton4.Hint:=langini.ReadString('PrevDlg','4','First Page');
      TntButton5.Caption:=langini.ReadString('PrevDlg','5','Print');
      TntButton6.Caption:=langini.ReadString('PrevDlg','6','Close');
      langini.Free;
    end;
    SynEditPrintPreview.UpdatePreview;
    if ShowModal=mrOk then {do nothing} ;
  finally
    prwdlg.Free;
  end;
end;

procedure TEditor.N8Click(Sender: TObject);
begin
  synprint1.SynEdit:=Edit;
  synprint1.Wrap:=True;
  synprint1.Print;
end;

procedure TEditor.N11Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecUndo,'A',@Edit.lines);
end;

procedure TEditor.N12Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecRedo,'A',@Edit.lines);
end;

procedure TEditor.N141Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecMatchBracket,'A',@Edit.lines);
end;

procedure TEditor.N14Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecSelectAll,'A',@Edit.lines);
end;

procedure TEditor.N15Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecCopy,'A',@Edit.lines);
end;

procedure TEditor.N16Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecPaste,'A',@Edit.lines);
end;

procedure TEditor.N17Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecCut,'A',@Edit.lines);
end;

procedure TEditor.N01Click(Sender: TObject);
begin
  SetMarker(0);
end;

procedure TEditor.N110Click(Sender: TObject);
begin
  SetMarker(1);
end;

procedure TEditor.N210Click(Sender: TObject);
begin
  SetMarker(2);
end;

procedure TEditor.N26Click(Sender: TObject);
begin
  FindExecute;
end;

procedure TEditor.N27Click(Sender: TObject);
begin
  FindAgainExecute;
end;

procedure TEditor.N28Click(Sender: TObject);
begin
  FindBackwardsExecute;
end;

procedure TEditor.N29Click(Sender: TObject);
begin
  ReplaceExecute;
end;

procedure TEditor.N31Click(Sender: TObject);
begin
  SetMarker(3);
end;

procedure TEditor.N41Click(Sender: TObject);
begin
  SetMarker(4);
end;

procedure TEditor.N51Click(Sender: TObject);
begin
  SetMarker(5);
end;

procedure TEditor.N61Click(Sender: TObject);
begin
  SetMarker(6);
end;

procedure TEditor.N71Click(Sender: TObject);
begin
  SetMarker(7);
end;

procedure TEditor.N81Click(Sender: TObject);
begin
  SetMarker(8);
end;

procedure TEditor.N91Click(Sender: TObject);
begin
  SetMarker(9);
end;

procedure TEditor.N02Click(Sender: TObject);
begin
  GoToMarker(0);
end;

procedure TEditor.N111Click(Sender: TObject);
begin
  GoToMarker(1);
end;

procedure TEditor.N211Click(Sender: TObject);
begin
  GoToMarker(2);
end;

procedure TEditor.N32Click(Sender: TObject);
begin
  GoToMarker(3);
end;

procedure TEditor.N42Click(Sender: TObject);
begin
  GoToMarker(4);
end;

procedure TEditor.N52Click(Sender: TObject);
begin
  GoToMarker(5);
end;

procedure TEditor.N62Click(Sender: TObject);
begin
  GoToMarker(6);
end;

procedure TEditor.N72Click(Sender: TObject);
begin
  GoToMarker(7);
end;

procedure TEditor.N82Click(Sender: TObject);
begin
  GoToMarker(8);
end;

procedure TEditor.N92Click(Sender: TObject);
begin
  GoToMarker(9);
end;

procedure TEditor.N97Click(Sender: TObject);
begin
  Edit.Lines.SaveFormat:=sfAnsi;
  N97.Checked:=True;
  savefmt:=4;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N98Click(Sender: TObject);
begin
  Edit.Lines.SaveFormat:=sfUTF16MSB;
  N98.Checked:=True;
  savefmt:=2;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N47Click(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'LineNums',N47.Checked);
  ini.UpdateFile;
  Edit.Gutter.Visible:=N47.Checked;
end;

procedure TEditor.N48Click(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'Wrap',N48.Checked);
  ini.UpdateFile;
  Edit.WordWrap:=N48.Checked;
end;

procedure TEditor.N50Click(Sender: TObject);
var aboutdlg: TAbout;
begin
  aboutdlg:=TAbout.Create(Self);
  with aboutdlg do try
    Caption:='About...';
    btn1.Caption:='OK';
    TntLabel1.Caption:='BirEdit '+progver;
    TntLabel2.Caption:='Copyright (C) 2008 Aleksey Tatuyko';
    TntLabel3.Caption:='http://biredit.fireforge.net/';
    TntLabel4.Caption:='Build '+progbld;
    TntMemo1.Text:='Author:'
    +#13#10+'  Aleksey Tatuyko'
    +#13#10+#13#10+'Thanks to:'
    +#13#10+'  CodeGear for Delphi 2007'
    +#13#10+'  CnPack Team for IDE Wizards'
    +#13#10+'  JEDI Group for JVCL'
    +#13#10+#13#10+'Special thanks to:'
    +#13#10+'  Maël Hörz'
    +#13#10+'  Martin Waldenburg'
    +#13#10+'  Michael Hieke'
    +#13#10+'  Mike Lischke'
    +#13#10+'  Russell May'
    +#13#10+'  Troy Wolbrink'
    +#13#10#13#10#13#10+'The author would like to thank everybody, who use this program.';
    if ShowModal=mrOK then {do nothing};
  finally
    aboutdlg.Free;
  end;
end;

procedure TEditor.N57Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecClearAll,'A',@Edit.lines);
end;

procedure TEditor.N39Click(Sender: TObject);
begin
  Edit.DoCopyToClipboard(Edit.Text);
end;

procedure TEditor.N46Click(Sender: TObject);
begin
  ClearClipboard;
end;

procedure TEditor.AddToClipboard;
var
  SText: UnicodeString;
  ChangeTrim: Boolean;
begin
  if Edit.SelAvail
  then begin
    ChangeTrim:=(Edit.ActiveSelectionMode=smColumn)and(eoTrimTrailingSpaces in Edit.Options);
    try
      if ChangeTrim then Edit.Options:=Edit.Options-[eoTrimTrailingSpaces];
      SText:=Edit.SelText;
    finally
      if ChangeTrim then Edit.Options:=Edit.Options+[eoTrimTrailingSpaces];
    end;
    Edit.DoCopyToClipboard(GetClipboardText+SText);
  end;
end;

procedure TEditor.ChangeClipboard;
var
  SText, Temp: UnicodeString;
  ChangeTrim: Boolean;
begin
  if Edit.SelAvail then
  begin
    ChangeTrim:=(Edit.ActiveSelectionMode=smColumn)and(eoTrimTrailingSpaces in Edit.Options);
    try
      if ChangeTrim then Edit.Options:=Edit.Options-[eoTrimTrailingSpaces];
      SText:=Edit.SelText;
    finally
      if ChangeTrim then Edit.Options:=Edit.Options+[eoTrimTrailingSpaces];
    end;
    Temp:=GetClipboardText;
    Edit.DoCopyToClipboard(SText);
    Edit.SelText:=Temp;
  end;
end;

procedure TEditor.ClearClipboard;
begin
  Clipboard.Open;
  Clipboard.Clear;
  Clipboard.Close;
end;

procedure TEditor.N30Click(Sender: TObject);
begin
  AddToClipboard;
end;

procedure TEditor.N56Click(Sender: TObject);
begin
  ChangeClipboard;
end;

procedure TEditor.N59Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecDeleteChar,'A',@Edit.lines);
end;

procedure TEditor.N60Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecUpperCaseBlock,'A',@Edit.lines);
end;

procedure TEditor.N68Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecLowerCaseBlock,'A',@Edit.lines);
end;

procedure TEditor.N69Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecTitleCase,'A',@Edit.lines);
end;

procedure TEditor.N70Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecToggleCaseBlock,'A',@Edit.lines);
end;

procedure TEditor.N76Click(Sender: TObject);
begin
  if not(Edit.SelText='') then Edit.SelText:=SynWideUpperCase(Edit.SelText[1])+SynWideLowerCase(Copy(Edit.SelText,2,Length(Edit.SelText)));
end;

procedure TEditor.N79Click(Sender: TObject);
begin
  ini.WriteBool('Editor'+myusn,'SpecSymbols',N79.Checked);
  ini.UpdateFile;
  if N79.Checked then Edit.Options:=Edit.Options+[eoShowSpecialChars] else Edit.Options:=Edit.Options-[eoShowSpecialChars];
end;

procedure TEditor.N86Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecTab,'A',@Edit.lines);
end;

procedure TEditor.N87Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecShiftTab,'A',@Edit.lines);
end;

procedure TEditor.N90Click(Sender: TObject);
var
  langini: TBirIniFile;
  sidlg: TSelIns;
begin
  sidlg:=TSelIns.Create(Self);
  with sidlg do try
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang);
      Caption:=langini.ReadString('EnclSelDlg','0','Enclose Selection');
      TntLabel1.Caption:=langini.ReadString('EnclSelDlg','1','Insert before selection');
      TntLabel2.Caption:=langini.ReadString('EnclSelDlg','2','Insert after selection');
      TntButton1.Caption:=langini.ReadString('EnclSelDlg','3','OK');
      TntButton2.Caption:=langini.ReadString('EnclSelDlg','4','Cancel');
      langini.Free;
    end;
    if ShowModal=mrOk then Edit.SelText:=TntEdit1.Text+Edit.SelText+TntEdit2.Text;
  finally
    sidlg.Free;
  end;
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
var hour,min,sec,msec:Word; ShortTimeFmtVar:Integer; thour,tmin,tsec,tmsec,tr:UnicodeString;
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
  LoadFromFile(MyFileName);
  prev:=WideFileAge(MyFileName);
  if Edit.Lines.SaveFormat=sfUTF16LSB then filefmt:=1
  else if Edit.Lines.SaveFormat=sfUTF16MSB then filefmt:=2
  else if Edit.Lines.SaveFormat=sfUTF8 then filefmt:=3
  else if Edit.Lines.SaveFormat=sfAnsi then filefmt:=4
  else filefmt:=0;
  AddLog;
  case savefmt of
    1: Edit.Lines.SaveFormat:=sfUTF16LSB;
    2: Edit.Lines.SaveFormat:=sfUTF16MSB;
    3: Edit.Lines.SaveFormat:=sfUTF8;
    4: Edit.Lines.SaveFormat:=sfAnsi;
  end;
end;

procedure TEditor.N105Click(Sender: TObject);
begin
  Edit.ClearAll;
  MyFileName:='';
  case savefmt of
    0,1: Edit.Lines.SaveFormat:=sfUTF16LSB;
    2: Edit.Lines.SaveFormat:=sfUTF16MSB;
    3: Edit.Lines.SaveFormat:=sfUTF8;
    4: Edit.Lines.SaveFormat:=sfAnsi;
  end;
end;

procedure TEditor.N106Click(Sender: TObject);
begin
  Edit.Lines.SaveFormat:=sfUTF16LSB;
  N106.Checked:=True;
  savefmt:=1;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N114Click(Sender: TObject);
begin
  MyShowFilePropertiesW(MyFileName);
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
  if Edit.Lines.SaveFormat=sfAnsi
  then Status.Panels.Items[1].Text:='ANSI'
  else if Edit.Lines.SaveFormat=sfUTF8 then Status.Panels.Items[1].Text:='UTF-8'
  else if Edit.Lines.SaveFormat=sfUTF16MSB then Status.Panels.Items[1].Text:='UTF-16 BE'
  else if Edit.Lines.SaveFormat=sfUTF16LSB then Status.Panels.Items[1].Text:='UTF-16 LE';       
  if Edit.InsertMode then Status.Panels.Items[2].Text:='Insert' else Status.Panels.Items[2].Text:='Overwrite';
end;

procedure TEditor.JvTimer3Timer(Sender: TObject);
begin
  if WideFileExists(MyFileName) then begin
    if (WideFileAge(MyFileName)<>prev)and(prev<>0) then begin
      ShowMyMessageDlg(1,'');
      prev:=WideFileAge(MyFileName);
    end;
  end else begin
    if (prevnoex=False)and not(MyFileName='') then begin
      ShowMyMessageDlg(2,MyFileName);
      prevnoex:=True;
    end;
  end;
end;

procedure TEditor.JvTimer4Timer(Sender: TObject);
var fe,fm:Boolean; capt:UnicodeString;
begin
  fe:=WideFileExists(MyFileName);
  fm:=Edit.Modified;
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
    //wait for support Delphi 2009 in JVCL. Filenames is not in unicode
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
  N126.Checked:=True;
  CRLab:='Replace this occurence of "%s"?';
  CRCap:='Confirm replace';
  CRBut1:='Yes';
  CRBut2:='No';
  CRBut3:='Cancel';
  CRBut4:='Yes to all';
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
  N26.Caption:='Find...';
  N27.Caption:='Find Next';
  N28.Caption:='Find Previous';
  N29.Caption:='Replace...';
  N30.Caption:='Copy Add';
  N33.Caption:='Set';
  N34.Caption:='Go To';
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
  N76.Caption:='Sentence Case';
  N77.Caption:='Insert';
  N79.Caption:='Special Symbols';
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
  N119.Caption:='New Window';
  N120.Caption:='Launch';
  N122.Caption:='Empty Window';
  N124.Caption:='Execute Document';
  N125.Caption:='Codepage';
  N126.Caption:='Internal';
  N127.Caption:='Recent files';
  N130.Caption:='Delete non-existent';
  N132.Caption:='Clear list';
  N134.Caption:='Default';
  N138.Caption:='Line';
  N139.Caption:='Delete';
  N140.Caption:='Special';
  N141.Caption:='Find mathing brace';
  Save.FileName:='Untitled.txt';
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
var
  langini: TBirIniFile;
  todlg: TTabOpt;
begin
  todlg:=TTabOpt.Create(Self);
  with todlg do try
    JvSpinEdit1.AsInteger:=Edit.TabWidth;
    if WideFileExists(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang) then begin
      langini:=TBirIniFile.Create(WideExtractFilePath(TntApplication.ExeName)+'lang\'+mylang);
      Caption:=langini.ReadString('TabOptDlg','0','Tab Settings');
      TntLabel1.Caption:=langini.ReadString('TabOptDlg','1','Tabulator width');
      TntButton1.Caption:=langini.ReadString('TabOptDlg','2','OK');
      TntButton2.Caption:=langini.ReadString('TabOptDlg','3','Cancel');
      langini.Free;
    end;
    if ShowModal=mrOk then begin
      Edit.TabWidth:=JvSpinEdit1.AsInteger;
      ini.WriteInteger('Editor'+myusn,'TabWidth',Edit.TabWidth);
      ini.UpdateFile;
    end;
  finally
    todlg.Free;
  end;
end;

procedure TEditor.N134Click(Sender: TObject);
begin
  N134.Checked:=True;
  savefmt:=0;
  case filefmt of
    0,1: Edit.Lines.SaveFormat:=sfUTF16LSB;
    2: Edit.Lines.SaveFormat:=sfUTF16MSB;
    3: Edit.Lines.SaveFormat:=sfUTF8;
    4: Edit.Lines.SaveFormat:=sfAnsi;
  end;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N136Click(Sender: TObject);
begin
  Edit.Lines.SaveFormat:=sfUTF8;
  N136.Checked:=True;
  savefmt:=3;
  ini.WriteInteger('Editor'+myusn,'SaveFmt',savefmt);
  ini.UpdateFile;
end;

procedure TEditor.N139Click(Sender: TObject);
begin
  Edit.ExecuteCommand(ecDeleteLine,'A',@Edit.lines);
end;

end.
