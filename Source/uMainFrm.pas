{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2009 Aleksey Tatuyko

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>

You can contact with me by e-mail: tatuich@mail.ru


The Original Code is uMainFrm.pas by Aleksey Tatuyko, released 2009-05-31.
All Rights Reserved.

$Id: uMainFrm.pas, v 1.2.4.406 2009/05/31 07:58:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}

unit uMainFrm;

interface

uses
  Windows, Messages, ComCtrls, Dialogs, Menus, Classes, Controls, ToolWin,
  Forms, Graphics, SysUtils, SynEdit, SynEditPrint, ImgList, ExtCtrls, ShellAPI,
  JvTimer, JvDebugHandler, JvComponentBase, JvDragDrop, ShlObj, SynEditTypes,
  SynEditRegexSearch, SynEditSearch, Clipbrd, IniFiles, JvTrayIcon, StdCtrls,
  ExtDlgs, JvBaseDlg, JvWinDialogs, SynEditMiscClasses, JvMRUManager, CheckLst,
  JvAppStorage, JvAppIniStorage, JvFormPlacement;

type
  TMain = class(TForm, IJvAppStorageHandler)
    Edit: TSynEdit;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Open: TOpenDialog;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Status: TStatusBar;
    synprint1: TSynEditPrint;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    Popup1: TPopupMenu;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N57: TMenuItem;
    N39: TMenuItem;
    N46: TMenuItem;
    N30: TMenuItem;
    N56: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    N37: TMenuItem;
    N45: TMenuItem;
    N55: TMenuItem;
    N65: TMenuItem;
    N85: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N101: TMenuItem;
    N99: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    JvTimer1: TJvTimer;
    JvTimer3: TJvTimer;
    JvTimer4: TJvTimer;
    JvDragDrop1: TJvDragDrop;
    N119: TMenuItem;
    N120: TMenuItem;
    N122: TMenuItem;
    N123: TMenuItem;
    N124: TMenuItem;
    N117: TMenuItem;
    N126: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N132: TMenuItem;
    N80: TMenuItem;
    N78: TMenuItem;
    N100: TMenuItem;
    N102: TMenuItem;
    N135: TMenuItem;
    SynEditRegexSearch1: TSynEditRegexSearch;
    SynEditSearch1: TSynEditSearch;
    N141: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N31: TMenuItem;
    N48: TMenuItem;
    FontDialog1: TFontDialog;
    N51: TMenuItem;
    N52: TMenuItem;
    N32: TMenuItem;
    JvTrayIcon1: TJvTrayIcon;
    Save: TSaveTextFileDialog;
    dlg1: TJvRunDialog;
    N38: TMenuItem;
    N18: TMenuItem;
    N33: TMenuItem;
    N36: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    Rcnt: TJvMRUManager;
    AppIni: TJvAppIniFileStorage;
    FormIni: TJvFormStorage;
    N44: TMenuItem;
    N47: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N58: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    procedure FormCreate(Sender: TObject);
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N141Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure Popup1Popup(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure EditReplaceText(Sender: TObject; const ASearch, AReplace: string;
      Line, Column: Integer; var Action: TSynReplaceAction);
    procedure N38Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure RcntClick(Sender: TObject; const RecentName, Caption: string;
      UserData: Integer);
    procedure N53Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure EditDropFiles(Sender: TObject; X, Y: Integer; AFiles: TStrings);
  private
    fSearchFromCaret, gbSearchBackwards, gbSearchCaseSensitive,
    gbSearchFromCaret, gbSearchRegex, gbSearchSelectionOnly,
    gbSearchTextAtCaret, gbSearchWholeWords, gbTempSearchBackwards,
    prevnoex: Boolean;
    prev, curcp: Integer;
    myfsize: Int64;
    MyFileName, gsReplaceText, gsReplaceTextHistory, gsSearchText: string;
    {gsSearchTextHistory, strSearchTextHistory: string;}
    procedure AddToClipboard;
    procedure ChangeClipboard;
    procedure DoSearchReplaceText(AReplace, ABackwards: Boolean);
    procedure ShowSearchReplaceDialog(AReplace: Boolean);
    procedure FindExecute;
    procedure FindAgainExecute;
    procedure FindBackwardsExecute;
    procedure ItemClick(Sender: TObject);
    procedure LoadFromFile(const FileName: TFileName; cid: Byte);
    procedure LoadAppLoc;
    procedure LoadTranslate(const lang: string);
    procedure MyLoadLoc(AWnd: TForm; ASectionInIni:string);
    procedure MyOpenFile(OpenFileName: TFileName; cid: Byte);
    procedure MySaveFile(SaveFileName: TFileName; seId: Integer);
    procedure ReplaceExecute;
    procedure ReplaceAgainExecute;
    procedure ReplaceBackwardsExecute;
    procedure WorkParams;
    //this procedures added in v1.2.1 :
    procedure MySetTextStr(const Value: string);
    procedure MyLoadFromStreamEnc(Stream: TStream; Encoding: TEncoding);
    procedure MyLoadFromStream(Stream: TStream; cid: Byte);
    procedure MyLoadFromFile(const FileName: TFileName; cid: Byte);
    procedure MySaveToFileEnc(const FileName: TFileName; Encoding: TEncoding);
    procedure MySaveToFile(const FileName: TFileName; seid: Integer);
    procedure ReadFromAppStorage(AppStorage: TJvCustomAppStorage;
                                   const BasePath: string);
    procedure WriteToAppStorage(AppStorage: TJvCustomAppStorage;
                                   const BasePath: string);
  public
    mylang: string;
  end;

var
  CRCap: string = 'Confirm replace';
  CRBut1: string = 'Yes';
  CRBut2: string = 'No';
  CRBut3: string = 'Cancel';
  CRBut4: string = 'Yes to all';
  CRLab: string = 'Replace this occurence of "%s"?';
  myunk: string = 'Untitled';
  mysg1: string = 'Cannot open file.';
  mysg2: string = 'Text not found.';
  mysg3: string = 'File has "read-only" attribute.'+#13#10+'Save changes to file?';
  mysg4: string = 'Current file has changed in other program.'+#13#10+'Reopen the file?';
  mysg5: string = 'File is no more exists.'+#13#10+'Save the file?';
  mysg7: string = 'File has changed.'+#13#10+'Save the file?';
  mysn0: string = 'TB';
  mysn1: string = 'GB';
  mysn2: string = 'MB';
  mysn3: string = 'KB';
  mysn4: string = 'Byte(s)';
  Main: TMain;
  ExcValsEdit, ExcValsFont, ExcValsGut: TStrings;

implementation

uses
  BirEditAdv, uPrintPreviewDlg, uAboutDlg, uSearchDlg, uReplaceDlg,
  uEncloseSelDlg, uConfirmReplaceDlg, uSettingsDlg, uGoTo;

{$R *.DFM}

procedure TMain.MySetTextStr(const Value: string);
var
  P, Start, LB: PChar;
  S: string;
  LineBreakLen: Integer;
begin
  Edit.Lines.BeginUpdate;
  try
    Edit.Lines.Clear;
    P := Pointer(Value);
    if P <> nil then
      if CompareStr(Edit.Lines.LineBreak, sLineBreak) = 0 then
      begin
        while P^ <> #0 do
        begin
          Start := P;
          while not (P^ in [#0, #10, #13]) do Inc(P);
          SetString(S, Start, P - Start);
          Edit.Lines.Add(S);
          if P^ = #13 then Inc(P);
          if P^ = #10 then Inc(P);
        end;
      end
      else
      begin
        LineBreakLen := Length(Edit.Lines.LineBreak);
        while P^ <> #0 do
        begin
          Start := P;
          LB := AnsiStrPos(P, PChar(Edit.Lines.LineBreak));
          while (P^ <> #0) and (P <> LB) do Inc(P);
          SetString(S, Start, P - Start);
          Edit.Lines.Add(S);
          if P = LB then
            Inc(P, LineBreakLen);
        end;
      end;
  finally
    Edit.Lines.EndUpdate;
  end;
end;

procedure TMain.MyLoadFromStreamEnc(Stream: TStream; Encoding: TEncoding);
var
  Size: Integer;
  Buffer: TBytes;
begin
  Edit.Lines.BeginUpdate;
  try
    Size := Stream.Size - Stream.Position;
    SetLength(Buffer, Size);
    Stream.Read(Buffer[0], Size);
    Size := TEncoding.GetBufferEncoding(Buffer, Encoding);
    MySetTextStr(Encoding.GetString(Buffer, Size, Length(Buffer) - Size));
    if Encoding = Encoding.Unicode then curcp := 2 else
    if Encoding = Encoding.BigEndianUnicode then curcp := 3 else
    if Encoding = Encoding.UTF8 then curcp := 4 else
    if Encoding = Encoding.UTF7 then curcp := 5 else
    if Encoding = Encoding.ASCII then curcp := 1 else curcp := 0;
  finally
    Edit.Lines.EndUpdate;
  end;
end;

procedure TMain.MyLoadFromStream(Stream: TStream; cid: Byte);
begin
  case cid of
    0: MyLoadFromStreamEnc(Stream, nil);
    1: MyLoadFromStreamEnc(Stream, TEncoding.Default);
    2: MyLoadFromStreamEnc(Stream, TEncoding.ASCII);
    3: MyLoadFromStreamEnc(Stream, TEncoding.Unicode);
    4: MyLoadFromStreamEnc(Stream, TEncoding.BigEndianUnicode);
    5: MyLoadFromStreamEnc(Stream, TEncoding.UTF8);
    6: MyLoadFromStreamEnc(Stream, TEncoding.UTF7);
  end;
end;

procedure TMain.MyLoadFromFile(const FileName: TFileName; cid: Byte);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    MyLoadFromStream(Stream, cid);
    myfsize := Stream.Size;
    MyFileName := FileName;
  finally
    Stream.Free;
  end;
end;

procedure TMain.MySaveToFileEnc(const FileName: TFileName; Encoding: TEncoding);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmCreate);
  try
    Edit.Lines.SaveToStream(Stream, Encoding);
    MyFileName := FileName;
    myfsize := Stream.Size;
    Edit.Modified:=False;
  finally
    Stream.Free;
  end;
end;

procedure TMain.MySaveToFile(const FileName: TFileName; seid: Integer);
begin
  try
    case seid of
      1: MySaveToFileEnc(FileName, TEncoding.ASCII);
      2: MySaveToFileEnc(FileName, TEncoding.Unicode);
      3: MySaveToFileEnc(FileName, TEncoding.BigEndianUnicode);
      4: MySaveToFileEnc(FileName, TEncoding.UTF8);
      5: MySaveToFileEnc(FileName, TEncoding.UTF7);
      else MySaveToFileEnc(FileName, nil);
    end;
    curcp := seid;
  except
    curcp := 0;
    Edit.Modified := True;
  end;
end;

procedure TMain.LoadFromFile(const FileName: TFileName; cid: Byte);
begin
  try
    MyLoadFromFile(FileName, cid);
  except
    Application.MessageBox(PChar(mysg1), 'BirEdit', MB_OK+MB_ICONSTOP);
    MyFileName := '';
    myfsize := 0;
    curcp := 0;
  end;
end;

procedure TMain.MyLoadLoc(AWnd: TForm; ASectionInIni: string);
var
  i,j: Integer;
  langini: TIniFile;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'lang\' +mylang)
  then begin
    langini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'lang\'
                                 + mylang);
    AWnd.Caption := langini.ReadString(ASectionInIni, 'Title', AWnd.Caption);
    if AWnd.ComponentCount <> 0 then begin
      for i := 0 to AWnd.ComponentCount - 1 do begin
        if AWnd.Components[i].ClassType = TButton
        then (AWnd.Components[i] as TButton).Caption
               := langini.ReadString(ASectionInIni, AWnd.Components[i].Name,
                                       (AWnd.Components[i] as TButton).Caption);
        if AWnd.Components[i].ClassType = TCheckBox
        then (AWnd.Components[i] as TCheckBox).Caption
               := langini.ReadString(ASectionInIni, AWnd.Components[i].Name,
                                     (AWnd.Components[i] as TCheckBox).Caption);
        if AWnd.Components[i].ClassType = TGroupBox
        then (AWnd.Components[i] as TGroupBox).Caption
               := langini.ReadString(ASectionInIni, AWnd.Components[i].Name,
                                     (AWnd.Components[i] as TGroupBox).Caption);
        if AWnd.Components[i].ClassType = TLabel
        then (AWnd.Components[i] as TLabel).Caption
               := langini.ReadString(ASectionInIni,AWnd.Components[i].Name,
                                       (AWnd.Components[i] as TLabel).Caption);
        if AWnd.Components[i].ClassType = TComboBox
        then begin
          if (AWnd.Components[i] as TComboBox).Items.Count > 0 then
            for j := 0 to (AWnd.Components[i] as TComboBox).Items.Count - 1 do
              (AWnd.Components[i] as TComboBox).Items.Strings[j]
                := langini.ReadString(ASectionInIni, AWnd.Components[i].Name
                                        + IntToStr(j),
                          (AWnd.Components[i] as TComboBox).Items.Strings[j]);
        end;
        if AWnd.Components[i].ClassType = TRadioGroup
        then begin
          (AWnd.Components[i] as TRadioGroup).Caption
            := langini.ReadString(ASectionInIni, AWnd.Components[i].Name,
                                   (AWnd.Components[i] as TRadioGroup).Caption);
          if (AWnd.Components[i] as TRadioGroup).Items.Count > 0 then
            for j := 0 to (AWnd.Components[i] as TRadioGroup).Items.Count - 1 do
              (AWnd.Components[i] as TRadioGroup).Items.Strings[j]
                := langini.ReadString(ASectionInIni, AWnd.Components[i].Name
                                        + IntToStr(j),
                          (AWnd.Components[i] as TRadioGroup).Items.Strings[j]);
        end;
        if AWnd.Components[i].ClassType = TTabSheet
        then (AWnd.Components[i] as TTabSheet).Caption
               := langini.ReadString(ASectionInIni, AWnd.Components[i].Name,
                                     (AWnd.Components[i] as TTabSheet).Caption);
        if AWnd.Components[i].ClassType = TCheckListBox
        then begin
          if (AWnd.Components[i] as TCheckListBox).Count > 0 then
            for j := 0 to (AWnd.Components[i] as TCheckListBox).Count - 1 do
                          (AWnd.Components[i] as TCheckListBox).Items.Strings[j]
                    := langini.ReadString(ASectionInIni, AWnd.Components[i].Name
                                            + IntToStr(j),
                        (AWnd.Components[i] as TCheckListBox).Items.Strings[j]);
        end;
      end;
    end;
    langini.Free;
  end;
end;

{Find and Replace}

procedure TMain.ShowSearchReplaceDialog(AReplace: boolean);
var
  dlg: TSearchForm;
begin
  if AReplace then dlg := TReplaceForm.Create(Self)
  else dlg := TSearchForm.Create(Self);
  with dlg do try
    if AReplace then MyLoadLoc(dlg, 'ReplaceDlg')
    else MyLoadLoc(dlg, 'SearchDlg');
    // assign search options
    SearchBackwards := (gbSearchBackwards or gbtempSearchBackwards);
    SearchCaseSensitive := gbSearchCaseSensitive;
    SearchFromCursor := gbSearchFromCaret;
    SearchInSelectionOnly := gbSearchSelectionOnly;
    SearchRegularExpression := gbSearchRegex;
    gbSearchTextAtCaret := true;
    // start with last search text
    SearchText := gsSearchText;
    if gbSearchTextAtCaret then begin
      // if something is selected search for that text
      if Edit.SelAvail and (Edit.BlockBegin.Char = Edit.BlockEnd.Char)
      then SearchText := Edit.SelText
      else SearchText := Edit.GetWordAtRowCol(Edit.CaretXY);
    end;
    if AReplace then with dlg as TReplaceForm do begin
      ReplaceText := gsReplaceText;
      ReplaceTextHistory := gsReplaceTextHistory;
    end;
    SearchWholeWords := gbSearchWholeWords;
    if ShowModal = mrOK then begin
      if not gbtempSearchBackwards then gbSearchBackwards := SearchBackwards;
      gbSearchCaseSensitive := SearchCaseSensitive;
      gbSearchFromCaret := SearchFromCursor;
      gbSearchSelectionOnly := SearchInSelectionOnly;
      gbSearchWholeWords := SearchWholeWords;
      gbSearchRegex := SearchRegularExpression;
      gsSearchText := SearchText;
      if AReplace then with dlg as TReplaceForm do begin
        gsReplaceText := ReplaceText;
        gsReplaceTextHistory := ReplaceTextHistory;
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

procedure TMain.DoSearchReplaceText(AReplace, ABackwards: Boolean);
var Options: TSynSearchOptions;
begin
  if AReplace then Options := [ssoPrompt, ssoReplace, ssoReplaceAll]
  else Options := [];
  if ABackwards then Include(Options, ssoBackwards);
  if gbSearchCaseSensitive then Include(Options, ssoMatchCase);
  if not fSearchFromCaret then Include(Options, ssoEntireScope);
  if gbSearchSelectionOnly then Include(Options, ssoSelectedOnly);
  if gbSearchWholeWords then Include(Options, ssoWholeWord);
  if gbSearchRegex then Edit.SearchEngine := SynEditRegexSearch1
  else Edit.SearchEngine := SynEditSearch1;
  if Edit.SearchReplace(gsSearchText, gsReplaceText, Options) = 0 then begin
    Application.MessageBox(PChar(mysg2), 'BirEdit', MB_OK+MB_ICONINFORMATION);
    if ssoBackwards in Options then Edit.BlockEnd := Edit.BlockBegin
    else Edit.BlockBegin := Edit.BlockEnd;
    Edit.CaretXY := Edit.BlockBegin;
  end;
  if ConfirmReplace <> nil then ConfirmReplace.Free;
end;

procedure TMain.EditDropFiles(Sender: TObject; X, Y: Integer; AFiles: TStrings);
begin
  MyOpenFile(AFiles.Strings[0], 0);
end;

procedure TMain.EditReplaceText(Sender: TObject; const ASearch,
  AReplace: string; Line, Column: Integer; var Action: TSynReplaceAction);
var
  APos: TPoint;
  EditRect: TRect;
  SynEditor: TSynEdit;
begin
  if ASearch = AReplace then Action := raSkip else begin
    SynEditor := TSynEdit(Sender);
    APos := Edit.ClientToScreen(SynEditor.RowColumnToPixels
                     (SynEditor.BufferToDisplayPos(BufferCoord(Column, Line))));
    EditRect := ClientRect;
    EditRect.TopLeft := ClientToScreen(EditRect.TopLeft);
    EditRect.BottomRight := ClientToScreen(EditRect.BottomRight);
    if ConfirmReplace = nil
    then ConfirmReplace := TConfirmReplace.Create(Application);
    with ConfirmReplace do begin
      Caption := CRCap;
      Button1.Caption := CRBut1;
      Button2.Caption := CRBut2;
      Button3.Caption := CRBut3;
      Button4.Caption := CRBut4;
      Label1.Caption := Format(CRLab, [ASearch]);
    end;
    ConfirmReplace.PrepareShow(EditRect, APos.X, APos.Y,
                                 APos.Y + Edit.LineHeight);
    case ConfirmReplace.ShowModal of
      mrYes:      Action := raReplace;
      mrYesToAll: Action := raReplaceAll;
      mrNo:       Action := raSkip;
      else Action := raCancel;
    end;
  end;
end;

procedure TMain.FindExecute;
begin
  // Show find box
  gbtempSearchBackwards := False;
  ShowSearchReplaceDialog(False);
end;

procedure TMain.FindAgainExecute;
begin
  gbtempSearchBackwards := False;
	if (gsSearchText = '') then ShowSearchReplaceDialog(False)
  else DoSearchReplaceText(False, False);
end;

procedure TMain.FindBackwardsExecute;
begin
	gbtempSearchBackwards := True;
	if (gsSearchText = '') then ShowSearchReplaceDialog(False)
  else DoSearchReplaceText(False, True);
end;

procedure TMain.ReplaceExecute;
begin
  ShowSearchReplaceDialog(True);
end;

procedure TMain.N18Click(Sender: TObject);
begin
  ReplaceAgainExecute;
end;

procedure TMain.N33Click(Sender: TObject);
begin
  ReplaceBackwardsExecute;
end;

procedure TMain.ReplaceAgainExecute;
begin
  gbtempSearchBackwards := False;
	if (gsSearchText = '') then ShowSearchReplaceDialog(True)
  else DoSearchReplaceText(True, False);
end;

procedure TMain.ReplaceBackwardsExecute;
begin
	gbtempSearchBackwards := True;
	if (gsSearchText = '') then ShowSearchReplaceDialog(True)
  else DoSearchReplaceText(True, True);
end;

procedure TMain.LoadTranslate(const lang: string);
var
  i: Integer;
  langini: TIniFile;
begin
  langini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'lang\'
                               + lang);
  N1.Caption := langini.ReadString('Main', '0', 'File');
  N2.Caption := langini.ReadString('Main', '1', 'Exit');
  N3.Caption := langini.ReadString('Main', '2', 'Open');
  N4.Caption := langini.ReadString('Main', '3', 'Save');
  N5.Caption := langini.ReadString('Main', '4', 'Save As...');
  N7.Caption := langini.ReadString('Main', '5', 'Print Preview');
  N8.Caption := langini.ReadString('Main', '6', 'Print');
  N10.Caption := langini.ReadString('Main', '7', 'Edit');
  N11.Caption := langini.ReadString('Main', '8', 'Undo');
  N12.Caption := langini.ReadString('Main', '9', 'Redo');
  N14.Caption := langini.ReadString('Main', '10', 'Select All');
  N15.Caption := langini.ReadString('Main', '11', 'Copy');
  N16.Caption := langini.ReadString('Main', '12', 'Paste');
  N17.Caption := langini.ReadString('Main', '13', 'Cut');
  mysn0 := langini.ReadString('Main', '14', 'TB');
  N38.Caption := langini.ReadString('Main', '15', 'Command...');
  N19.Caption := N11.Caption;
  N20.Caption := N12.Caption;
  N22.Caption := N17.Caption;
  N23.Caption := N15.Caption;
  N24.Caption := N16.Caption;
  N25.Caption := N14.Caption;
  N30.Caption := langini.ReadString('Main', '16', 'Copy Add');
  N37.Caption := langini.ReadString('Main', '17', 'Dublicate Selection');
  N18.Caption := langini.ReadString('Main', '18', 'Replace Next');
  N39.Caption := langini.ReadString('Main', '19', 'Copy All');
  N41.Caption := langini.ReadString('Main', '20', 'Normal');
  N45.Caption := N39.Caption;
  N46.Caption:=langini.ReadString('Main','21','Clear Clipboard');
  N40.Caption := langini.ReadString('Main', '22', 'Selection');
  N48.Caption:=langini.ReadString('Main','23','Color under cursor (RGB)');
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
  mysg1:=langini.ReadString('Main','37','Cannot open file.');
  N80.Caption:=langini.ReadString('Main','38','Open With...');
  N85.Caption:=N59.Caption;
  N86.Caption:=langini.ReadString('Main','39','Indent');
  N87.Caption:=langini.ReadString('Main','40','Unindent');
  N88.Caption:=langini.ReadString('Main','41','Block');
  N90.Caption:=langini.ReadString('Main','42','Enclose Selection');
  N43.Caption := langini.ReadString('Main','43','Line');
  N95.Caption:=N57.Caption;
  N96.Caption:=N46.Caption;
  N99.Caption:=langini.ReadString('Main','44','Time/Date');
  N101.Caption:=langini.ReadString('Main','45','Options');
  mysg2:=langini.ReadString('Main','46','Text not found.');
  N104.Caption:=langini.ReadString('Main','47','Revert');
  N105.Caption:=langini.ReadString('Main','48','New');
  N42.Caption := langini.ReadString('Main', '49', 'Column');
  N36.Caption:=langini.ReadString('Main','50','Search');
  N141.Caption:=langini.ReadString('Main','51','Find mathing brace');
  N114.Caption:=langini.ReadString('Main','52','Properties');
  N51.Caption:=langini.ReadString('Main','53','Font...');
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
  N33.Caption := langini.ReadString('Main', '65', 'Replace Previous');
  mysg3:=StringReplace(langini.ReadString('Main','66','File has "read-only" attribute.\nSave changes to file?'),'\n',#13#10,[rfReplaceAll]);
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
  N31.Caption:=langini.ReadString('Main','81','Goto...');
  mysg4:=StringReplace(langini.ReadString('Main','82','Current file has changed in other program.\nReopen the file?'),'\n',#13#10,[rfReplaceAll]);
  mysg5:=StringReplace(langini.ReadString('Main','83','File is no more exists.\nSave the file?'),'\n',#13#10,[rfReplaceAll]);
  N44.Caption := langini.ReadString('Main','84','Codepage');
  mysg7:=StringReplace(langini.ReadString('Main','85','File has changed.\nSave the file?'),'\n',#13#10,[rfReplaceAll]);
  N32.Caption:=langini.ReadString('Main','86','Settings');
  N53.Caption := langini.ReadString('Main','87','Auto');
  Save.FileName := myunk + '.txt';
  langini.Free;
  for I := 1 to N117.Count - 1 do if CompareStr(N117.Items[i].Hint, mylang) = 0
  then N117.Items[i].Checked := True;
end;

procedure TMain.N126Click(Sender: TObject);
begin
  //internal localization
  //return all strings to English
  N126.Checked := True;
  CRLab:='Replace this occurence of "%s"?';
  CRCap:='Confirm replace';
  CRBut1:='Yes';
  CRBut2:='No';
  CRBut3:='Cancel';
  CRBut4:='Yes to all';
  mysg1:='Cannot open file.';
  mysg2:='Text not found.';
  mysg3:='File has "read-only" attribute.'+#13#10+'Save changes to file?';
  mysg4:='Current file has changed in other program.'+#13#10+'Reopen the file?';
  mysg5:='File is no more exists.'+#13#10+'Save the file?';
  mysg7:='File has changed.'+#13#10+'Save the file?';
  mysn0 := 'TB';
  mysn1:='GB';
  mysn2:='MB';
  mysn3:='KB';
  mysn4:='Byte(s)';
  myunk:='Untitled';
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
  N18.Caption := 'Replace Next';
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
  N31.Caption:='Goto...';
  N32.Caption:='Settings';
  N33.Caption := 'Replace Previous';
  N36.Caption := 'Search';
  N37.Caption:='Dublicate Selection';
  N38.Caption := 'Command...';
  N39.Caption:='Copy All';
  N40.Caption := 'Selection';
  N41.Caption := 'Normal';
  N42.Caption := 'Column';
  N43.Caption := 'Line';
  N44.Caption := 'Codepage';
  N45.Caption := N39.Caption;
  N46.Caption:='Clear Clipboard';
  N48.Caption:='Color under cursor (RGB)';
  N49.Caption:='Help';
  N50.Caption:='About...';
  N51.Caption:='Font...';
  N53.Caption := 'Auto';
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
  N104.Caption:='Revert';
  N105.Caption:='New';
  N114.Caption:='Properties';
  N117.Caption:='Language';
  N119.Caption:='New Window';
  N120.Caption:='Launch';
  N122.Caption:='Empty Window';
  N124.Caption:='Execute Document';
  N126.Caption:='Internal';
  N127.Caption:='Recent files';
  N130.Caption:='Delete non-existent';
  N132.Caption:='Clear list';
  N141.Caption:='Find mathing brace';
  Save.FileName:=myunk+'.txt';
  mylang:='';
end;

procedure TMain.ItemClick(Sender: TObject);
begin
  with (Sender as TMenuItem) do begin
    mylang := Hint;
    if FileExists(ExtractFilePath(Application.ExeName) + 'lang\' + mylang)
    then begin
      LoadTranslate(mylang);
      Checked := True;
    end;
  end;
end;

procedure TMain.MyOpenFile(OpenFileName: TFileName; cid: Byte);
begin
  if ExtractFilePath(OpenFileName) = ''
  then OpenFileName := ExtractFilePath(Application.ExeName) + OpenFileName;
  Edit.ClearAll;
  LoadFromFile(OpenFileName, cid);
  Rcnt.Add(OpenFileName, 0);
  prev := FileAge(OpenFileName);
end;

procedure TMain.MySaveFile(SaveFileName: TFileName; seId: Integer);
begin
  if ExtractFilePath(SaveFileName) = ''
  then SaveFileName := ExtractFilePath(Application.ExeName) + SaveFileName;
  if FileExists(SaveFileName) then begin
    if FileIsReadOnly(SaveFileName) then begin
      if Application.MessageBox(PChar(mysg3), 'BirEdit',
                                  MB_YESNO + MB_ICONQUESTION) = IDYES
      then begin
        if FileSetReadOnly(SaveFileName, False)
        then MySaveToFile(SaveFileName, seId);
        FileSetReadOnly(SaveFileName, True);
      end else Exit;
    end else MySaveToFile(SaveFileName, seId);
  end else MySaveToFile(SaveFileName, seId);
  Rcnt.Add(SaveFileName, 0);
  prev := FileAge(SaveFileName);
end;

procedure TMain.WorkParams;
var
  ToCreate, ToPaste, ToPrint, ToQuit: Boolean;
  ParamFile:                          TFileName;
  i:                                  Integer;
begin
  ToCreate := False;
  ToPaste := False;
  ToPrint := False;
  ToQuit := False;
  for i := 0 to ParamCount do begin
    if not (i = 0) then begin
      if (ParamStr(i)[1]= '/') then begin
        if CompareText(ParamStr(i), '/n') = 0 then ToCreate := True;
        if CompareText(ParamStr(i), '/p') = 0 then ToPrint := True;
        if CompareText(ParamStr(i), '/c') = 0 then ToPaste := True;
        if CompareText(ParamStr(i), '/q') = 0 then ToQuit := True;
      end else if FileExists(ParamStr(i)) then ParamFile := ParamStr(i);
    end;
  end;
  if ExtractFilePath(ParamFile) = ''
  then ParamFile := ExtractFilePath(Application.ExeName) + ParamFile;
  if FileExists(ParamFile) then begin
    MyOpenFile(ParamFile, 0);
    if ToPrint then begin
      synprint1.SynEdit := Edit;
      synprint1.Wrap := True;
      synprint1.Print;
    end;
  end else if ToCreate then MySaveFile(ParamFile, 0);
  if ToPaste then Edit.PasteFromClipboard;
  if ToQuit then Application.Terminate;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit',
                                  MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDCANCEL: CanClose := False;
      IDYES:
        begin
          if FileExists(MyFileName) then begin
            MySaveFile(MyFileName, curcp);
            CanClose := True;
          end else
          if Save.Execute then begin
            MySaveFile(Save.FileName, Save.EncodingIndex);
            CanClose := True;
          end else CanClose := False;
        end;
      IDNO: CanClose := True;
    end;
  end;
end;

procedure TMain.LoadAppLoc;
var
  langsrw:  TSearchRec;
  LangItem: TMenuItem;
  langini:  TIniFile;
begin
  if FindFirst(ExtractFilePath(Application.ExeName) + 'lang\' + '*.lng',
                 faAnyFile, langsrw) = 0
  then begin
    repeat
      if (langsrw.Attr and faDirectory) <> 0 then Continue
      else begin
        LangItem := TMenuItem.Create(N117);
        langini := TIniFile.Create(ExtractFilePath(Application.ExeName)
                                     + 'lang\' + langsrw.Name);
        LangItem.Caption := langini.ReadString('TranslationInfo', 'Name',
                                                 ExtractFileName(langsrw.Name));
        langini.Free;
        LangItem.Hint := ExtractFileName(langsrw.Name);
        LangItem.AutoCheck := True;
        LangItem.Checked := False;
        LangItem.RadioItem := True;
        LangItem.OnClick := ItemClick;
        N117.Add(LangItem);
     end;
    until FindNext(langsrw) <> 0;
  end;
  FindClose(langsrw);
  if FileExists(ExtractFilePath(Application.ExeName) + 'lang\' + mylang)
  then LoadTranslate(mylang);
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  curcp := 0;
  JvTrayIcon1.Icon := Application.Icon;
  dlg1.Icon := Application.Icon;
  AppIni.FileName := 'biredit.ini';
end;

procedure TMain.ReadFromAppStorage(AppStorage: TJvCustomAppStorage;
                                     const BasePath: string);
begin
  JvDragDrop1.AcceptDrag := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath,
                                        'AcceptDrag']), JvDragDrop1.AcceptDrag);
  JvTrayIcon1.Active := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath,
                                            'HideToTray']), JvTrayIcon1.Active);
  Status.Visible := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath,
                                                 'StatusBar']), Status.Visible);
  Rcnt.Capacity := AppIni.ReadInteger(AppIni.ConcatPaths([BasePath, 'Recent']),
                                        Rcnt.Capacity);
  mylang:= AppIni.ReadString(AppIni.ConcatPaths([BasePath, 'Language']), '');
  AppIni.ReadPersistent('Editor', Edit, True, True, ExcValsEdit);
  AppIni.ReadPersistent('Editor.BookMarkOptions', Edit.BookMarkOptions);
  AppIni.ReadPersistent('Editor.Font', Edit.Font, True, True, ExcValsFont);
  AppIni.ReadProperty('Editor.Font.Style', Edit.Font, 'Style', True, True);
  AppIni.ReadPersistent('Editor.Gutter', Edit.Gutter, True, True, ExcValsGut);
  AppIni.ReadPersistent('Editor.Gutter.Font', Edit.Gutter.Font, True, True,
                           ExcValsFont);
  AppIni.ReadProperty('Editor.Gutter.Font.Style', Edit.Gutter.Font, 'Style',
                         True, True);
  AppIni.ReadProperty('Editor.Options', Edit, 'Options', True, True);
  AppIni.ReadPersistent('Editor.SelectedColor', Edit.SelectedColor);
  AppIni.ReadPersistent('Editor.WordWrapGlyph', Edit.WordWrapGlyph);
  N40.Items[Byte(Edit.SelectionMode)].Checked := True;
  JvDragDrop1.AcceptDrag := not (eoDropFiles in Edit.Options);
  LoadAppLoc;
  WorkParams;
end;

procedure TMain.WriteToAppStorage(AppStorage: TJvCustomAppStorage;
                                    const BasePath: string);
begin
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'AcceptDrag']),
                         JvDragDrop1.AcceptDrag);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'HideToTray']),
                         JvTrayIcon1.Active);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'StatusBar']),
                         Status.Visible);
  AppIni.WriteInteger(AppIni.ConcatPaths([BasePath, 'Recent']), Rcnt.Capacity);
  AppIni.WriteString(AppIni.ConcatPaths([BasePath, 'Language']), mylang);
  AppIni.WritePersistent('Editor', Edit, True, ExcValsEdit);
  AppIni.WritePersistent('Editor.BookMarkOptions', Edit.BookMarkOptions);
  AppIni.WritePersistent('Editor.Font', Edit.Font, True, ExcValsFont);
  AppIni.WriteProperty('Editor.Font.Style', Edit.Font, 'Style', True);
  AppIni.WritePersistent('Editor.Gutter', Edit.Gutter, True, ExcValsGut);
  AppIni.WritePersistent('Editor.Gutter.Font', Edit.Gutter.Font, True,
                            ExcValsFont);
  AppIni.WriteProperty('Editor.Gutter.Font.Style', Edit.Gutter.Font, 'Style',
                          True);
  AppIni.WriteProperty('Editor.Options', Edit, 'Options', True);
  AppIni.WritePersistent('Editor.SelectedColor', Edit.SelectedColor);
  AppIni.WritePersistent('Editor.WordWrapGlyph', Edit.WordWrapGlyph);
end;

procedure TMain.RcntClick(Sender: TObject; const RecentName, Caption: string;
  UserData: Integer);
  procedure MyOpen;
  begin
    MyOpenFile(RecentName, 0);
  end;
begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit',
                                  MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        begin
          if FileExists(MyFileName) then begin
            MySaveFile(MyFileName, curcp);
            MyOpen;
          end else
          if Save.Execute then begin
            MySaveFile(Save.FileName, Save.EncodingIndex);
            MyOpen;
          end;
        end;
      IDNO: MyOpen;
    end;
  end else MyOpen;
end;

procedure TMain.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TMain.N3Click(Sender: TObject);
  procedure MyOpen;
  begin
    if Open.Execute then MyOpenFile(Open.FileName, 0);
  end;
begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit',
                                  MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        begin
          if FileExists(MyFileName) then begin
            MySaveFile(MyFileName, curcp);
            MyOpen;
          end else
          if Save.Execute then begin
            MySaveFile(Save.FileName, Save.EncodingIndex);
            MyOpen;
          end;
        end;
      IDNO: MyOpen;
    end;
  end else MyOpen;
end;

procedure TMain.N4Click(Sender: TObject);
begin
  MySaveFile(MyFileName, curcp);
end;

procedure TMain.N5Click(Sender: TObject);
begin
  if Save.Execute then MySaveFile(Save.FileName, Save.EncodingIndex);
end;

procedure TMain.N7Click(Sender: TObject);
var
  prwdlg: TPreview;
begin
  synprint1.SynEdit := Edit;
  synprint1.Wrap := True;
  prwdlg := TPreview.Create(Self);
  with prwdlg do try
    MyLoadLoc(prwdlg, 'PrevDlg');
    SynEditPrintPreview.UpdatePreview;
    ShowModal;
  finally
    prwdlg.Free;
  end;
end;

procedure TMain.N8Click(Sender: TObject);
begin
  synprint1.SynEdit := Edit;
  synprint1.Wrap := True;
  synprint1.Print;
end;

procedure TMain.N11Click(Sender: TObject);
begin
  Edit.Undo;
end;

procedure TMain.N12Click(Sender: TObject);
begin
  Edit.Redo;
end;

procedure TMain.N141Click(Sender: TObject);
begin
  Edit.FindMatchingBracket;
end;

procedure TMain.N14Click(Sender: TObject);
begin
  Edit.SelectAll;
end;

procedure TMain.N15Click(Sender: TObject);
begin
  Edit.CopyToClipboard;
end;

procedure TMain.N16Click(Sender: TObject);
begin
  Edit.PasteFromClipboard;
end;

procedure TMain.N17Click(Sender: TObject);
begin
  Edit.CutToClipboard;
end;

procedure TMain.N26Click(Sender: TObject);
begin
  FindExecute;
end;

procedure TMain.N27Click(Sender: TObject);
begin
  FindAgainExecute;
end;

procedure TMain.N28Click(Sender: TObject);
begin
  FindBackwardsExecute;
end;

procedure TMain.N29Click(Sender: TObject);
begin
  ReplaceExecute;
end;

procedure TMain.N50Click(Sender: TObject);
var
  aboutdlg: TAbout;
begin
  aboutdlg := TAbout.Create(Self);
  with aboutdlg do try
    Image1.Picture.Icon := Application.Icon;
    ShowModal;
  finally
    aboutdlg.Free;
  end;
end;

procedure TMain.N51Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(Edit.Font);
  if FontDialog1.Execute then begin
    Edit.Font.Assign(FontDialog1.Font);
    WriteToAppStorage(AppIni, AppIni.DefaultSection);
  end;
end;

procedure TMain.N53Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 0);
end;

procedure TMain.N54Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 1);
end;

procedure TMain.N57Click(Sender: TObject);
begin
  Edit.ExecuteCommand(508, 'A', @Edit.lines);
end;

procedure TMain.N58Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 2);
end;

procedure TMain.N39Click(Sender: TObject);
begin
  Clipboard.AsText := Edit.Text;
end;

procedure TMain.N41Click(Sender: TObject);
begin
  Edit.SelectionMode := smNormal;
  N40.Items[Byte(Edit.SelectionMode)].Checked := True;
  WriteToAppStorage(AppIni, AppIni.DefaultSection);
end;

procedure TMain.N42Click(Sender: TObject);
begin
  Edit.SelectionMode := smColumn;
  N40.Items[Byte(Edit.SelectionMode)].Checked := True;
  WriteToAppStorage(AppIni, AppIni.DefaultSection);
end;

procedure TMain.N43Click(Sender: TObject);
begin
  Edit.SelectionMode := smLine;
  N40.Items[Byte(Edit.SelectionMode)].Checked := True;
  WriteToAppStorage(AppIni, AppIni.DefaultSection);
end;

procedure TMain.N46Click(Sender: TObject);
begin
  Clipboard.Clear;
end;

procedure TMain.N48Click(Sender: TObject);
var
  DC: HDC;
  MyColor: Cardinal;
begin
  DC := GetDC(0);
  MyColor := GetPixel(DC, Mouse.CursorPos.X, Mouse.CursorPos.Y);
  ReleaseDC(0, DC);
  Edit.SelText := '$' + IntToHex(GetRValue(MyColor), 2)
            + IntToHex(GetGValue(MyColor), 2) + IntToHex(GetBValue(MyColor), 2);
end;

procedure TMain.AddToClipboard;
var
  ChangeTrim: Boolean;
  SText: string;
begin
  if Edit.SelAvail then begin
    ChangeTrim := (Edit.ActiveSelectionMode = smColumn)
                    and (eoTrimTrailingSpaces in Edit.Options);
    try
      if ChangeTrim then Edit.Options := Edit.Options - [eoTrimTrailingSpaces];
      SText := Edit.SelText;
    finally
      if ChangeTrim then Edit.Options := Edit.Options + [eoTrimTrailingSpaces];
    end;
    Clipboard.AsText := Clipboard.AsText + SText;
  end;
end;

procedure TMain.ChangeClipboard;
var
  ChangeTrim: Boolean;
  SText, Temp: string;
begin
  if Edit.SelAvail then begin
    ChangeTrim := (Edit.ActiveSelectionMode = smColumn)
                    and (eoTrimTrailingSpaces in Edit.Options);
    try
      if ChangeTrim then Edit.Options := Edit.Options - [eoTrimTrailingSpaces];
      SText := Edit.SelText;
    finally
      if ChangeTrim then Edit.Options := Edit.Options + [eoTrimTrailingSpaces];
    end;
    Temp := Clipboard.AsText;
    Clipboard.AsText := SText;
    Edit.SelText := Temp;
  end;
end;

procedure TMain.N38Click(Sender: TObject);
begin
  dlg1.Execute;
end;

procedure TMain.N30Click(Sender: TObject);
begin
  AddToClipboard;
end;

procedure TMain.N31Click(Sender: TObject);
var
  lnumber: TPoint;
  gtbox: TGoToDlg;
begin
  gtbox := TGoToDlg.Create(Self);
  with gtbox do try
    MyLoadLoc(gtbox, 'GoToDlg');
    JvSpinEdit1.MaxValue := Edit.Lines.Count;
    JvSpinEdit1.Value := Edit.CaretY;
    if ShowModal = mrOk then begin
      lnumber.Y := JvSpinEdit1.AsInteger;
      lnumber.X := 1;
      Edit.ExecuteCommand(17, 'A', @lnumber);
    end;
  finally
    gtbox.Free;
  end;
end;

procedure TMain.N32Click(Sender: TObject);
var
  I: Byte;
  setdlg: TSettingsDlg;
begin
  setdlg := TSettingsDlg.Create(Self);
  with setdlg do try
    MyLoadLoc(setdlg, 'SettingsDlg');
    TrayChk.Checked := JvTrayIcon1.Active;
    StatusBarChk.Checked := Status.Visible;
    Check1.Checked := Edit.ReadOnly;
    Check2.Checked := Edit.Gutter.UseFontStyle;
    Check3.Checked := Edit.Gutter.Gradient;
    WrapChk.Checked := Edit.WordWrap;
    GASizeChk.Checked := Edit.Gutter.AutoSize;
    ShowLZChk.Checked := Edit.Gutter.LeadingZeros;
    GVisChk.Checked := Edit.Gutter.Visible;
    ShowLnNumChk.Checked := Edit.Gutter.ShowLineNumbers;
    StartZeroChk.Checked := Edit.Gutter.ZeroStart;
    Combo1.ItemIndex := Byte(Edit.InsertCaret);
    Combo2.ItemIndex := Byte(Edit.OverwriteCaret);
    Combo3.ItemIndex := Byte(Edit.ScrollHintFormat);
    SMCombo.ItemIndex := Byte(Edit.SelectionMode);
    Spin1.MinValue := 1;
    Spin1.MaxValue := MaxInt;
    Spin1.AsInteger := Rcnt.Capacity;
    Spin2.MinValue := 1;
    Spin2.MaxValue := MaxInt;
    Spin2.AsInteger := Edit.MaxScrollWidth;
    Spin3.MinValue := 0;
    Spin3.MaxValue := MaxInt;
    Spin3.AsInteger := Edit.MaxUndo;
    Spin4.MinValue := - MaxInt - 1;
    Spin4.MaxValue := MaxInt;
    Spin4.AsInteger := Edit.RightEdge;
    Spin5.MinValue := 1;
    Spin5.MaxValue := MAXBYTE + 1;
    Spin5.AsInteger := Edit.TabWidth;
    Spin6.MinValue := 2;
    Spin6.MaxValue := MaxInt;
    Spin6.AsInteger := Edit.Gutter.DigitCount;
    Spin7.MinValue := 0;
    Spin7.MaxValue := MaxInt;
    Spin7.AsInteger := Edit.Gutter.LineNumberStart;
    Spin8.MinValue := 2;
    Spin8.MaxValue := MaxInt;
    Spin8.AsInteger := Edit.Gutter.GradientSteps;
    for I := 0 to 26
    do OptsList.Checked[i] := TSynEditorOption(i) in Edit.Options;
    if ShowModal = mrOk then begin
      JvTrayIcon1.Active := TrayChk.Checked;
      Status.Visible := StatusBarChk.Checked;
      Rcnt.Capacity := Spin1.AsInteger;
      Edit.MaxScrollWidth := Spin2.AsInteger;
      Edit.MaxUndo := Spin3.AsInteger;
      Edit.RightEdge := Spin4.AsInteger;
      Edit.TabWidth := Spin5.AsInteger;
      Edit.InsertCaret := TSynEditCaretType(Combo1.ItemIndex);
      Edit.OverwriteCaret := TSynEditCaretType(Combo2.ItemIndex);
      Edit.ScrollHintFormat := TScrollHintFormat(Combo3.ItemIndex);
      Edit.SelectionMode := TSynSelectionMode(SMCombo.ItemIndex);
      Edit.Gutter.AutoSize := GASizeChk.Checked;
      Edit.Gutter.LeadingZeros := ShowLZChk.Checked;
      Edit.Gutter.DigitCount := Spin6.AsInteger;
      Edit.Gutter.LineNumberStart := Spin7.AsInteger;
      Edit.Gutter.ShowLineNumbers := ShowLnNumChk.Checked;
      Edit.Gutter.UseFontStyle := Check2.Checked;
      Edit.Gutter.Visible := GVisChk.Checked;
      Edit.Gutter.ZeroStart := StartZeroChk.Checked;
      Edit.Gutter.Gradient := Check3.Checked;
      Edit.Gutter.GradientSteps := Spin8.AsInteger;
      Edit.WordWrap := WrapChk.Checked;
      for I := 0 to 26 do if OptsList.Checked[i] = True
      then Edit.Options := Edit.Options + [TSynEditorOption(i)]
      else Edit.Options := Edit.Options - [TSynEditorOption(i)];
      JvDragDrop1.AcceptDrag := not (eoDropFiles in Edit.Options);
      N40.Items[Byte(Edit.SelectionMode)].Checked := True;
      WriteToAppStorage(AppIni, AppIni.DefaultSection);
    end;
  finally
    setdlg.Free;
  end;
end;

procedure TMain.N56Click(Sender: TObject);
begin
  ChangeClipboard;
end;

procedure TMain.N59Click(Sender: TObject);
begin
  Edit.ExecuteCommand(502, 'A', @Edit.Lines);
end;

procedure TMain.N60Click(Sender: TObject);
begin
  Edit.ExecuteCommand(625, 'A', @Edit.Lines);
end;

procedure TMain.N61Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 3);
end;

procedure TMain.N62Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 4);
end;

procedure TMain.N63Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 5);
end;

procedure TMain.N64Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 6);
end;

procedure TMain.N68Click(Sender: TObject);
begin
  Edit.ExecuteCommand(626, 'A', @Edit.Lines);
end;

procedure TMain.N69Click(Sender: TObject);
begin
  Edit.ExecuteCommand(623, 'A', @Edit.Lines);
end;

procedure TMain.N70Click(Sender: TObject);
begin
  Edit.ExecuteCommand(627, 'A', @Edit.Lines);
end;

procedure TMain.N76Click(Sender: TObject);
begin
  if not (Edit.SelText = '')
  then Edit.SelText := WideLowerCase(Edit.SelText[1]) +
                     WideLowerCase(Copy(Edit.SelText, 2, Length(Edit.SelText)));
end;

procedure TMain.N86Click(Sender: TObject);
begin
  if Edit.SelLength > 0 then Edit.ExecuteCommand(610, 'A', @Edit.Lines)
  else Edit.ExecuteCommand(612, 'A', @Edit.Lines);
end;

procedure TMain.N87Click(Sender: TObject);
begin
  if Edit.SelLength > 0 then Edit.ExecuteCommand(611, 'A', @Edit.Lines)
  else Edit.ExecuteCommand(613, 'A', @Edit.Lines);
end;

procedure TMain.N90Click(Sender: TObject);
var
  sidlg: TSelIns;
begin
  sidlg := TSelIns.Create(Self);
  with sidlg do try
    MyLoadLoc(sidlg, 'EnclSelDlg');
    if ShowModal = mrOk
    then Edit.SelText := Edit1.Text + Edit.SelText + Edit2.Text;
  finally
    sidlg.Free;
  end;
end;

procedure TMain.N37Click(Sender: TObject);
var
  x, y: integer;
begin
  x := Edit.SelStart;
  y := Edit.SelEnd;
  Edit.SelText := Edit.SelText + Edit.SelText;
  Edit.SelStart := x;
  Edit.SelEnd := y;
end;

procedure TMain.N99Click(Sender: TObject);
begin
  Edit.SelText := DateTimeToStr(Now);
end;

procedure TMain.Popup1Popup(Sender: TObject);
begin
  if not (Edit.SelLength > 0) then Edit.ExecuteCommand(198, 'A', @Edit.Lines);
end;

procedure TMain.N104Click(Sender: TObject);
begin
  MyOpenFile(MyFileName, 0);
end;

procedure TMain.N105Click(Sender: TObject);
  procedure MyNewDoc;
  begin
    Edit.ClearAll;
    MyFileName := '';
  end;
begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit',
                                  MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        begin
          if FileExists(MyFileName) then begin
            MySaveFile(MyFileName, curcp);
            MyNewDoc;
          end else
          if Save.Execute then begin
            MySaveFile(Save.FileName, Save.EncodingIndex);
            MyNewDoc;
          end;
        end;
      IDNO: MyNewDoc;
    end;
  end;
end;

procedure TMain.N114Click(Sender: TObject);
begin
  MyShowFileProperties(MyFileName);
end;

procedure TMain.JvTimer1Timer(Sender: TObject);
begin
  Status.Panels.Items[0].Text := IntToStr(Edit.CaretY) + ':'
                                   + IntToStr(Edit.CaretX);
  if Edit.InsertMode then Status.Panels.Items[1].Text := 'Insert'
  else Status.Panels.Items[1].Text := 'Overwrite';
  case curcp of
    1: Status.Panels.Items[3].Text := 'ASCII';
    2: Status.Panels.Items[3].Text := 'UTF-16 little endian';
    3: Status.Panels.Items[3].Text := 'UTF-16 big endian';
    4: Status.Panels.Items[3].Text := 'UTF-8';
    5: Status.Panels.Items[3].Text := 'UTF-7';
    else Status.Panels.Items[3].Text := 'Ansi';
  end;
end;

procedure TMain.JvTimer3Timer(Sender: TObject);
begin
  if FileExists(MyFileName) then begin
    if (FileAge(MyFileName) <> prev) and (prev <> 0) then begin
      if Application.MessageBox(PChar(mysg4), 'BirEdit',
                                  MB_YESNO + MB_ICONQUESTION) = IDYES
      then N104.Click;
      prev := FileAge(MyFileName);
    end;
  end else begin
    if (prevnoex = False) and not (MyFileName = '') then begin
      if Application.MessageBox(PChar(mysg5), 'BirEdit',
                                  MB_YESNO + MB_ICONQUESTION) = IDYES
      then begin
        MySaveFile(MyFileName, curcp);
        prev := FileAge(MyFileName);
      end;
      prevnoex := True;
    end;
  end;
end;

procedure TMain.JvTimer4Timer(Sender: TObject);
var
  cpas, fe, fm ,lc, red, selt, stxt, und, stxt2: Boolean;
  capt: string;
begin
  fe := FileExists(MyFileName);
  cpas := Edit.CanPaste and not Edit.ReadOnly;
  fm := Edit.Modified;
  lc := (Edit.Lines.Count > 0);
  und := Edit.CanUndo and not Edit.ReadOnly;
  red := Edit.CanRedo and not Edit.ReadOnly;
  selt := Edit.SelAvail;
  stxt := not (gsSearchText = '');
  stxt2 := not (gsReplaceText = '');
  N4.Enabled := fe;
  N7.Enabled := lc;
  N8.Enabled := lc;
  N11.Enabled := und;
  N12.Enabled := red;
  N14.Enabled := lc;
  N15.Enabled := selt;
  N16.Enabled := cpas;
  N17.Enabled := selt;
  N18.Enabled := stxt2;
  N33.Enabled := stxt2;
  N19.Enabled :=und;
  N20.Enabled := red;
  N22.Enabled := selt;
  N23.Enabled := selt;
  N24.Enabled := cpas;
  N25.Enabled := lc;
  N27.Enabled := stxt;
  N28.Enabled := stxt;
  N30.Enabled := selt;
  N36.Enabled := lc;
  N37.Enabled := selt;
  N39.Enabled := lc;
  N44.Enabled := fe;
  N45.Enabled := lc;
  N46.Enabled := cpas;
  N55.Enabled := selt;
  N56.Enabled := cpas;
  N57.Enabled := lc;
  N59.Enabled := lc;
  N65.Enabled := cpas;
  N66.Enabled := lc;
  N80.Enabled := fe;
  N85.Enabled := lc;
  N90.Enabled := selt;
  N95.Enabled := lc;
  N96.Enabled := cpas;
  N100.Enabled := fe;
  N102.Enabled := fe;
  N104.Enabled := fe;
  N114.Enabled := fe;
  N119.Enabled := fe;
  N124.Enabled := fe;
  N127.Enabled := Rcnt.Strings.Count > 0;
  if fe then begin
    Status.Panels.Items[2].Text := MyBytesToStr(myfsize);
    if ExtractFilePath(MyFileName) = ''
    then capt := ExtractFilePath(Application.ExeName) + MyFileName+ ' - BirEdit'
    else capt := MyFileName + ' - BirEdit';
  end else begin
    capt := myunk + ' - BirEdit';
    Status.Panels.Items[2].Text := '';
  end;
  if fm then Caption := '* ' + capt else Caption := capt;
  JvTrayIcon1.Hint := Caption;
end;

procedure TMain.JvDragDrop1Drop(Sender: TObject; Pos: TPoint; Value: TStrings);
{var
  i:Integer;}
begin
  //for i:=0 to Value.Count-1 do begin
  //  if i=0 then begin
  MyOpenFile(Value.Strings[0], 0);
  //  end;
    //ToDo: if i>0 then do command ['biredit.exe "file[i]"']
    //ToDo: if i>5 then 'Are you sure do you want open these files?'
  //end;
end;

procedure TMain.N119Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', PChar(Application.ExeName),
                 PChar('"' + MyFileName + '"'),
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N122Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', PChar(Application.ExeName), nil,
        PChar('"' + ExtractFilePath(Application.ExeName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N124Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', PChar(MyFileName), nil,
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N132Click(Sender: TObject);
begin
  Rcnt.Clear;
end;

procedure TMain.N130Click(Sender: TObject);
begin
  Rcnt.RemoveInvalid;
end;

procedure TMain.N80Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', 'rundll32.exe',
                 PChar('shell32.dll,OpenAs_RunDLL ' + MyFileName),
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N100Click(Sender: TObject);
begin
  Edit.SelText := ExtractFileName(MyFileName);
end;

procedure TMain.N102Click(Sender: TObject);
begin
  Edit.SelText := MyFileName;
end;

initialization
  ExcValsEdit := TStringList.Create;
  ExcValsFont := TStringList.Create;
  ExcValsGut := TStringList.Create;
  try
    ExcValsEdit.Add('Align');
    ExcValsEdit.Add('AlignWithMargins');
    ExcValsEdit.Add('Anchors');
    ExcValsEdit.Add('BookMarkOptions');
    ExcValsEdit.Add('BorderStyle');
    ExcValsEdit.Add('Constraints');
    ExcValsEdit.Add('Ctl3D');
    ExcValsEdit.Add('Cursor');
    ExcValsEdit.Add('Enabled');
    ExcValsEdit.Add('Font');
    ExcValsEdit.Add('Font');
    ExcValsEdit.Add('Gutter');
    ExcValsEdit.Add('Height');
    ExcValsEdit.Add('HelpContext');
    ExcValsEdit.Add('HelpKeyword');
    ExcValsEdit.Add('HelpType');
    ExcValsEdit.Add('Hint');
    ExcValsEdit.Add('ImeMode');
    ExcValsEdit.Add('ImeName');
    ExcValsEdit.Add('Keystrokes');
    ExcValsEdit.Add('Left');
    ExcValsEdit.Add('Lines');
    ExcValsEdit.Add('Margins');
    ExcValsEdit.Add('Name');
    ExcValsEdit.Add('Options');
    ExcValsEdit.Add('ParentColor');
    ExcValsEdit.Add('ParentCtl3D');
    ExcValsEdit.Add('ParentCustomHint');
    ExcValsEdit.Add('ParentFont');
    ExcValsEdit.Add('ParentShowHint');
    ExcValsEdit.Add('PopupMenu');
    ExcValsEdit.Add('ScrollBars');
    ExcValsEdit.Add('SelectedColor');
    ExcValsEdit.Add('ShowHint');
    ExcValsEdit.Add('TabOrder');
    ExcValsEdit.Add('TabStop');
    ExcValsEdit.Add('Tag');
    ExcValsEdit.Add('Top');
    ExcValsEdit.Add('Visible');
    ExcValsEdit.Add('WantReturns');
    ExcValsEdit.Add('WantTabs');
    ExcValsEdit.Add('Width');
    ExcValsEdit.Add('WordWrapGlyph');
    ExcValsFont.Add('Style');
    ExcValsGut.Add('Cursor');
    ExcValsGut.Add('Font');
  except
    Application.Terminate;
  end;

finalization
  ExcValsEdit.Free;
  ExcValsFont.Free;
  ExcValsGut.Free;

end.
