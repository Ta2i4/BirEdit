{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2009 Alexey Tatuyko

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

You can contact with me by e-mail: tatuich@gmail.com


The Original Code is uMainFrm.pas by Alexey Tatuyko, released 2009-12-17.
All Rights Reserved.

$Id: uMainFrm.pas, v 1.3.3.606 2009/12/17 03:57:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uMainFrm;

interface

uses
  Windows, Messages, ComCtrls, Dialogs, Menus, Classes, Controls, ToolWin,
  Forms, Graphics, SysUtils, SynEdit, SynEditPrint, ImgList, ExtCtrls, ShellAPI,
  JvTimer, JvComponentBase, JvDragDrop, ShlObj, SynEditTypes, Clipbrd, IniFiles,
  SynEditRegexSearch, SynEditSearch, JvTrayIcon, StdCtrls, CheckLst, ExtDlgs,
  ActnList, JvBaseDlg, JvWinDialogs, SynEditMiscClasses, JvMRUManager,
  JvAppStorage, JvAppIniStorage, JvFormPlacement, SynEditHighlighter,
  SynHighlighterCpp, SynHighlighterEiffel, SynHighlighterFortran,
  SynHighlighterJava, SynHighlighterGeneral, SynHighlighterM3, SynHighlighterVB,
  SynHighlighterCobol, SynHighlighterPas, SynHighlighterHtml, SynHighlighterCSS,
  SynHighlighterCS, SynHighlighterJScript, SynHighlighterPHP, SynHighlighterAWK,
  SynHighlighterVrml97, SynHighlighterXML, SynHighlighterVBScript,
  SynHighlighterPerl, SynHighlighterKix, SynHighlighterBat, SynHighlighterCache,
  SynHighlighterPython, SynHighlighterCAC, SynHighlighterUNIXShellScript,
  SynHighlighterRuby, SynHighlighterGWS, SynHighlighterTclTk, SynHighlighterAsm,
  SynHighlighterHC11, SynHighlighterInno, SynHighlighterDfm, SynHighlighterSml,
  SynHighlighterIni, SynHighlighterSDD, SynHighlighterSQL, SynHighlighterFoxpro,
  SynHighlighterADSP21xx, SynHighlighterModelica, SynHighlighterDml,
  SynHighlighterST, SynHighlighterRC, SynHighlighterDOT, SynHighlighterLDraw,
  SynHighlighterHaskell, SynHighlighterTeX, SynHighlighterCPM,
  SynHighlighterIDL, SynHighlighterMsg, SynHighlighterProgress,
  SynHighlighterGalaxy, SynHighlighterBaan;

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
    FontDialog: TFontDialog;
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
    Recent: TJvMRUManager;
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
    SynCpp: TSynCppSyn;
    SynEif: TSynEiffelSyn;
    SynFor: TSynFortranSyn;
    SynDef: TSynGeneralSyn;
    SynJava: TSynJavaSyn;
    SynMod: TSynM3Syn;
    SynPas: TSynPasSyn;
    SynBas: TSynVBSyn;
    SynCobol: TSynCobolSyn;
    SynCS: TSynCSSyn;
    SynCss: TSynCssSyn;
    SynHtml: TSynHTMLSyn;
    SynJS: TSynJScriptSyn;
    SynPhp: TSynPHPSyn;
    SynVbs: TSynVBScriptSyn;
    SynXml: TSynXMLSyn;
    SynVrml: TSynVrml97Syn;
    SynAwk: TSynAWKSyn;
    SynBat: TSynBatSyn;
    SynKix: TSynKixSyn;
    SynPerl: TSynPerlSyn;
    SynPy: TSynPythonSyn;
    SynTcl: TSynTclTkSyn;
    SynGws: TSynGWScriptSyn;
    SynRuby: TSynRubySyn;
    SynUSh: TSynUNIXShellScriptSyn;
    SynCac: TSynCACSyn;
    SynCch: TSynCacheSyn;
    SynFox: TSynFoxproSyn;
    SynSql: TSynSQLSyn;
    SynSdd: TSynSDDSyn;
    SynDsp: TSynADSP21xxSyn;
    SynAsm: TSynAsmSyn;
    SynHc: TSynHC11Syn;
    SynSt: TSynSTSyn;
    SynGem: TSynDmlSyn;
    SynModa: TSynModelicaSyn;
    SynSml: TSynSMLSyn;
    SynDfm: TSynDfmSyn;
    SynIni: TSynIniSyn;
    SynInno: TSynInnoSyn;
    SynBaan: TSynBaanSyn;
    SynGal: TSynGalaxySyn;
    SynPrg: TSynProgressSyn;
    SynMsg: TSynMsgSyn;
    SynIdl: TSynIdlSyn;
    SynCpm: TSynCPMSyn;
    SynTex: TSynTeXSyn;
    SynHas: TSynHaskellSyn;
    SynLdr: TSynLDRSyn;
    SynDot: TSynDOTSyn;
    SynRc: TSynRCSyn;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N79: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N103: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    N113: TMenuItem;
    N116: TMenuItem;
    N118: TMenuItem;
    N121: TMenuItem;
    N125: TMenuItem;
    N129: TMenuItem;
    N133: TMenuItem;
    N134: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    N138: TMenuItem;
    N139: TMenuItem;
    N140: TMenuItem;
    N142: TMenuItem;
    N143: TMenuItem;
    N144: TMenuItem;
    N145: TMenuItem;
    N146: TMenuItem;
    N147: TMenuItem;
    N148: TMenuItem;
    N149: TMenuItem;
    N150: TMenuItem;
    N151: TMenuItem;
    N152: TMenuItem;
    N153: TMenuItem;
    N154: TMenuItem;
    N155: TMenuItem;
    N156: TMenuItem;
    N157: TMenuItem;
    N158: TMenuItem;
    N159: TMenuItem;
    N160: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N161: TMenuItem;
    N162: TMenuItem;
    N163: TMenuItem;
    N164: TMenuItem;
    PrintDialog: TPrintDialog;
    PrinterSetupDialog: TPrinterSetupDialog;
    N166: TMenuItem;
    N167: TMenuItem;
    N168: TMenuItem;
    N7: TMenuItem;
    PageDlg: TPageSetupDialog;
    N165: TMenuItem;
    N169: TMenuItem;
    N170: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
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
    procedure RecentClick(Sender: TObject; const RecentName, Caption: string;
      UserData: Integer);
    procedure EditDropFiles(Sender: TObject; X, Y: Integer; AFiles: TStrings);
    procedure N71Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N161Click(Sender: TObject);
    procedure N162Click(Sender: TObject);
    procedure N163Click(Sender: TObject);
    procedure MyChangeCase(Sender: TObject);
    procedure MyOpenDifferCP(Sender: TObject);
    procedure MySetSelMode(Sender: TObject);
    procedure MySetSyn(Sender: TObject);
    procedure N167Click(Sender: TObject);
    procedure N168Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N166Click(Sender: TObject);
    procedure N169Click(Sender: TObject);
    procedure N170Click(Sender: TObject);
  private
    fSearchFromCaret, gbSearchBackwards, gbSearchCaseSensitive, sddir, sudir,
    gbSearchFromCaret, gbSearchRegex, gbSearchSelectionOnly, prevnoex, psafc,
    gbSearchWholeWords, gbTempSearchBackwards, usesyn: Boolean;
    prev, curcp: Integer;
    myfsize: Int64;
    gsReplaceText, gsReplaceTextHistory, gsSearchText, gsSearchTextHistory,
    MyFileName, appath: string;
    procedure ReadFromAppStorage(AppStorage: TJvCustomAppStorage;
                                   const BasePath: string);
    procedure WriteToAppStorage(AppStorage: TJvCustomAppStorage;
                                   const BasePath: string);
    procedure AddToClipboard;
    procedure ChangeClipboard;
    procedure DoSearchReplaceText(AReplace, ABackwards: Boolean);
    procedure ShowSearchReplaceDialog(AReplace: Boolean);
    procedure FindExecute;
    procedure FindAgainExecute;
    procedure FindBackwardsExecute;
    procedure ItemClick(Sender: TObject);
    procedure LoadAppLoc;
    procedure LoadTranslate(const lang: string);
    procedure MyLoadLoc(AWnd: TForm; mysect: string; dftitle: Boolean);
    procedure MyOpenFile(OpenFileName: TFileName; Encoding: TEncoding; fd: Byte);
    procedure MySaveFile(SaveFileName: TFileName; seId, fid: Integer);
    procedure ReplaceExecute;
    procedure ReplaceAgainExecute;
    procedure ReplaceBackwardsExecute;
    procedure WorkParams;
    procedure MySetTextStr(const Value: string);
    procedure MyLoadFromStream(Stream: TStream; Encoding: TEncoding);
    procedure MyLoadFromFile(const FileName: TFileName; Encoding: TEncoding);
    procedure MySaveToFileEnc(const FileName: TFileName; Encoding: TEncoding);
    procedure MySaveToFile(const FileName: TFileName; seid, fid: Integer);
    procedure MySetSynByFid(fid: Byte);
    procedure MySetSynByExt(fExt: string);
    procedure MyShowDroppedDlg(const fValues: TStrings);
    procedure MyScanDropFiles(const fValues: TStrings);
    procedure MyOpenDropped(const FileName: TFileName);
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
  mysn5: string = 'read only';
  Main: TMain;
  ExcValsEdit, ExcValsGut, ExcValsPrint, ExcValsPrintM: TStrings;

implementation

uses
  uAboutDlg, uSearchDlg, uReplaceDlg, uEncloseSelDlg, uConfirmReplaceDlg,
  uSettingsDlg, uGoTo, uDropped, uPrintPreview;

{$R *.DFM}

function MyBytesToStr(const mfSize: UInt64): string;
const
  i64TB = 1099511627776;
  i64GB = 1073741824;
  i64MB = 1048576;
  i64KB = 1024;
begin
  if mfSize >= i64TB then Result := Format('%.2f ' + mysn0, [mfSize / i64TB])
  else if mfSize >= i64GB
  then Result := Format('%.2f ' + mysn1, [mfSize / i64GB]) else
  if mfSize >= i64MB then Result := Format('%.2f ' + mysn2, [mfSize / i64MB])
  else if mfSize >= i64KB
  then Result := Format('%.2f ' + mysn3, [mfSize / i64KB])
  else Result := UIntToStr(mfSize) + ' ' + mysn4;
end;

function MyExtByFilter(const fId: Integer; const fName: TFileName): TFileName;
var
  fExt:  string;
begin
  Result := fName;
  fExt := WideLowerCase(ExtractFileExt(Result));
  case fId of
    2: if not ((fExt = '.c') or (fExt = '.cpp') or (fExt = '.cc')
                or (fExt = '.h') or (fExt = 'hpp') or (fExt = '.hh')
                or (fExt = '.cxx') or (fExt = '.hxx') or (fExt = '.cu'))
       then Result := Result + '.c';
    3: if not ((fExt = '.e') or (fExt = '.ace')) then Result := Result + '.e';
    4: if not (fExt = '.for') then Result := Result + '.for';
    5: if not (fExt = '.java') then Result := Result + '.java';
    6: if not (fExt = '.m3') then Result := Result + '.m3';
    7: if not ((fExt = '.pas') or (fExt = '.pp') or (fExt = '.dpr')
                or (fExt = '.dpk') or (fExt = 'inc'))
       then Result := Result + '.pas';
    8: if not (fExt = '.bas') then Result := Result + '.bas';
    9: if not ((fExt = '.cbl') or (fExt = '.cob'))
       then Result := Result + '.cbl';
    10: if not (fExt = '.cs') then Result := Result + '.cs';
    11: if not (fExt = '.css') then Result := Result + '.css';
    12: if not ((fExt = '.htm') or (fExt = '.html'))
        then Result := Result + '.htm';
    13: if not (fExt = '.js') then Result := Result + '.js';
    14: if not ((fExt = '.php') or (fExt = '.php3') or (fExt = '.phtml')
                or (fExt = '.inc'))
        then Result := Result + '.php';
    15: if not (fExt = '.vbs') then Result := Result + '.vbs';
    16: if not ((fExt = '.xml') or (fExt = '.xsd') or (fExt = '.xsl')
                or (fExt = '.xslt') or (fExt = 'dtd'))
        then Result := Result + '.xml';
    17: if not ((fExt = '.wrl') or (fExt = '.wrml') or (fExt = '.vrl')
                or (fExt = '.vrml') or (fExt = 'x3d'))
        then Result := Result + '.wrl';
    18: if not (fExt = '.awk') then Result := Result + '.awk';
    19: if not ((fExt = '.bat') or (fExt = '.cmd'))
        then Result := Result + '.bat';
    20: if not (fExt = '.kix') then Result := Result + '.kix';
    21: if not ((fExt = '.pl') or (fExt = '.pm') or (fExt = '.cgi'))
        then Result := Result + '.pl';
    22: if not (fExt = '.py') then Result := Result + '.py';
    23: if not (fExt = '.tcl') then Result := Result + '.tcl';
    24: if not (fExt = '.gws') then Result := Result + '.gws';
    25: if not ((fExt = '.rb') or (fExt = '.rbw'))
        then Result := Result + '.rb';
    26: if not (fExt = '.sh') then Result := Result + '.sh';
    27: if not ((fExt = '.prg') or (fExt = '.ch') or (fExt = '.inc'))
        then Result := Result + '.prg';
    28: if not ((fExt = '.mac') or (fExt = '.inc') or (fExt = '.int'))
        then Result := Result + '.mac';
    29: if not (fExt = '.prg') then Result := Result + '.prg';
    30: if not (fExt = '.sql') then Result := Result + '.sql';
    31: if not (fExt = '.sdd') then Result := Result + '.sdd';
    32: if not ((fExt = '.dsp') or (fExt = '.inc'))
        then Result := Result + '.dsp';
    33: if not (fExt = '.asm') then Result := Result + '.asm';
    34: if not ((fExt = '.hc11') or (fExt = '.asm') or (fExt = '.asc'))
        then Result := Result + '.hc11';
    35: if not (fExt = '.st') then Result := Result + '.st';
    36: if not ((fExt = '.dml') or (fExt = '.gem'))
        then Result := Result + '.dml';
    37: if not (fExt = '.mo') then Result := Result + '.mo';
    38: if not (fExt = '.sml') then Result := Result + '.sml';
    39: if not ((fExt = '.dfm') or (fExt = '.xfm'))
        then Result := Result + '.dfm';
    40: if not (fExt = '.ini') then Result := Result + '.ini';
    41: if not (fExt = '.iss') then Result := Result + '.iss';
    42: if not (fExt = '.cln') then Result := Result + '.cln';
    43: if not ((fExt = '.gtv') or (fExt = '.galrep') or (fExt = '.txt'))
        then Result := Result + '.gtv';
    44: if not ((fExt = '.w') or (fExt = '.p') or (fExt = '.i'))
        then Result := Result + '.w';
    45: if not (fExt = '.msg') then Result := Result + '.msg';
    46: if not (fExt = '.idl') then Result := Result + '.idl';
    47: if not ((fExt = '.rdf') or (fExt = '.rif') or (fExt = '.rmf')
                or (fExt = '.rxf'))
        then Result := Result + '.rdf';
    48: if not (fExt = '.tex') then Result := Result + '.tex';
    49: if not ((fExt = '.hs') or (fExt = '.lhs'))
        then Result := Result + '.hs';
    50: if not (fExt = '.ldr') then Result := Result + '.ldr';
    51: if not (fExt = '.dot') then Result := Result + '.dot';
    52: if not (fExt = '.rc') then Result := Result + '.rc';
  end;
end;

procedure TMain.MyChangeCase(Sender: TObject);
begin
  case N66.IndexOf(Sender as TMenuItem) of
    0: Edit.ExecuteCommand(625, 'A', @Edit.Lines);
    1: Edit.ExecuteCommand(626, 'A', @Edit.Lines);
    2: Edit.ExecuteCommand(627, 'A', @Edit.Lines);
    3: Edit.ExecuteCommand(623, 'A', @Edit.Lines);
    4: Edit.SelText := WideUpperCase(Edit.SelText[1]) +
                     WideLowerCase(Copy(Edit.SelText, 2, Length(Edit.SelText)));
  end;
end;

procedure TMain.MyOpenDifferCP(Sender: TObject);
begin
  case N44.IndexOf(Sender as TMenuItem) of
    0: MyOpenFile(MyFileName, nil, 1);
    1: MyOpenFile(MyFileName, TEncoding.Default, 1);
    2: MyOpenFile(MyFileName, TEncoding.ASCII, 1);
    3: MyOpenFile(MyFileName, TEncoding.Unicode, 1);
    4: MyOpenFile(MyFileName, TEncoding.BigEndianUnicode, 1);
    5: MyOpenFile(MyFileName, TEncoding.UTF8, 1);
    6: MyOpenFile(MyFileName, TEncoding.UTF7, 1);
  end;
end;

procedure TMain.MySetSelMode(Sender: TObject);
begin
  Edit.SelectionMode := TSynSelectionMode(N40.IndexOf(Sender as TMenuItem));
  N40.Items[N40.IndexOf(Sender as TMenuItem)].Checked := True;
  WriteToAppStorage(AppIni, AppIni.DefaultSection);
end;

procedure TMain.MySetSyn(Sender: TObject);
begin
  MySetSynByFid(N74.IndexOf(Sender as TMenuItem) + 1);
end;

procedure TMain.MyOpenDropped(const FileName: TFileName);
begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit', MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyOpenFile(FileName, nil, 1);
        end else if Save.Execute then begin
          Save.FileName := MyExtByFilter(Save.FilterIndex, Save.FileName);
          MySaveFile(Save.FileName, Save.EncodingIndex, Save.FilterIndex);
          MyOpenFile(FileName, nil, 1);
        end;
      IDNO: MyOpenFile(FileName, nil, 1);
    end;
  end else MyOpenFile(FileName, nil, 1);
end;

procedure TMain.MyShowDroppedDlg(const fValues: TStrings);
var
  cnt, i: Integer;
  dbox: TDropDlg;
begin
  cnt := 0;
  dbox := TDropDlg.Create(Self);
  with dbox do try
    MyLoadLoc(dbox, 'DropDlg', False);
    ChkLst.Items.Text := fValues.Text;
    if ShowModal = mrOk then begin
      for I := 0 to ChkLst.Count - 1 do if ChkLst.Checked[i] = True then begin
        Inc(cnt);
        if cnt = 1 then MyOpenDropped(ChkLst.Items.Strings[i])
        else ShellExecute(Self.Handle, 'open', PChar(Application.ExeName),
                    PChar('"' + ChkLst.Items.Strings[i] + '"'),
                    PChar('"' + ExtractFilePath(ChkLst.Items.Strings[i]) + '"'),
                    SW_SHOWNORMAL);
      end;
    end;
  finally
    dbox.Free;
  end;
end;

procedure TMain.MyScanDropFiles(const fValues: TStrings);
var
  i, s: Integer;
  tmpstrs: TStrings;

  procedure MyScanDir(MyDir: string);
  var
    mys: TSearchRec;
  begin
    MyDir := IncludeTrailingPathDelimiter(MyDir);
    if FindFirst(MyDir + '*', faAnyFile, mys) = 0 then repeat
      if (mys.Name = '.') or (mys.Name = '..') then Continue;
      if not ((mys.Attr and faDirectory) <> 0)
      then tmpstrs.Add(MyDir + mys.Name) else
      if sudir then MyScanDir(MyDir + mys.Name);
    until FindNext(mys) <> 0;
  end;

begin
  s := fValues.Count;
  if s < 1 then Exit else if (s = 1) and FileExists(fValues.Strings[0])
  then MyOpenDropped(fValues.Strings[0]) else begin
    tmpstrs := TStringList.Create;
    try
      tmpstrs.Text := fValues.Text;
      for I := tmpstrs.Count - 1 downto 0 do begin
        if DirectoryExists(tmpstrs.Strings[i]) then begin
          if sddir
          then MyScanDir(tmpstrs.Strings[i]);
          tmpstrs.Delete(i);
        end else if not (FileExists(tmpstrs.Strings[i])) then tmpstrs.Delete(i);
      end;
      if tmpstrs.Count = 1 then MyOpenDropped(tmpstrs.Strings[0]) else
      if tmpstrs.Count > 1 then MyShowDroppedDlg(tmpstrs);
    finally
      tmpstrs.Free;
    end;
  end;
end;

procedure TMain.EditDropFiles(Sender: TObject; X, Y: Integer; AFiles: TStrings);
begin
  MyScanDropFiles(AFiles);
end;

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
      if CompareStr(Edit.Lines.LineBreak, sLineBreak) = 0 then begin
        while P^ <> #0 do begin
          Start := P;
          while not (P^ in [#0, #10, #13]) do Inc(P);
          SetString(S, Start, P - Start);
          Edit.Lines.Add(S);
          if P^ = #13 then Inc(P);
          if P^ = #10 then Inc(P);
        end;
      end else begin
        LineBreakLen := Length(Edit.Lines.LineBreak);
        while P^ <> #0 do begin
          Start := P;
          LB := AnsiStrPos(P, PChar(Edit.Lines.LineBreak));
          while (P^ <> #0) and (P <> LB) do Inc(P);
          SetString(S, Start, P - Start);
          Edit.Lines.Add(S);
          if P = LB then Inc(P, LineBreakLen);
        end;
      end;
  finally
    Edit.Lines.EndUpdate;
  end;
end;

procedure TMain.MyLoadFromStream(Stream: TStream; Encoding: TEncoding);
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

procedure TMain.MyLoadFromFile(const FileName: TFileName; Encoding: TEncoding);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    MyLoadFromStream(Stream, Encoding);
    myfsize := Stream.Size;
    MyFileName := FileName;
  finally
    Stream.Free;
  end;
end;

procedure TMain.MyOpenFile(OpenFileName: TFileName; Encoding: TEncoding; fd: Byte);
begin
  if ExtractFilePath(OpenFileName) = ''
  then OpenFileName := appath + OpenFileName;
  Edit.ClearAll;
  try
    MyLoadFromFile(OpenFileName, Encoding);
    if usesyn then begin
      if (fd > 1) and (fd <=52) then MySetSynByFid(fd)
      else MySetSynByExt(ExtractFileExt(OpenFileName));
    end else Edit.Highlighter := nil;
  except
    Application.MessageBox(PChar(mysg1), 'BirEdit', MB_OK+MB_ICONSTOP);
    MyFileName := '';
    myfsize := 0;
    curcp := 0;
    if usesyn then MySetSynByFid(1) else Edit.Highlighter := nil;
  end;
  Status.Panels.Items[2].Text := MyBytesToStr(myfsize);
  Recent.Add(OpenFileName, 0);
  prev := FileAge(OpenFileName);
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

procedure TMain.MySaveToFile(const FileName: TFileName; seid, fid: Integer);
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
    if usesyn then begin
      if (fid > 1) and (fid <= 52) then MySetSynByFid(fid)
      else MySetSynByExt(ExtractFileExt(FileName));
    end else Edit.Highlighter := nil;
  except
    curcp := 0;
    Edit.Modified := True;
    if usesyn then MySetSynByFid(1) else Edit.Highlighter := nil;
  end;
  Status.Panels.Items[2].Text := MyBytesToStr(myfsize);
end;

procedure TMain.MySaveFile(SaveFileName: TFileName; seId, fid: Integer);
begin
  if ExtractFilePath(SaveFileName) = ''
  then SaveFileName := appath + SaveFileName;
  if FileExists(SaveFileName) then begin
    if FileIsReadOnly(SaveFileName) then begin
      if Application.MessageBox(PChar(mysg3), 'BirEdit',
                                  MB_YESNO + MB_ICONQUESTION) = IDYES
      then begin
        if FileSetReadOnly(SaveFileName, False)
        then MySaveToFile(SaveFileName, seId, fid);
        FileSetReadOnly(SaveFileName, True);
      end else Exit;
    end else MySaveToFile(SaveFileName, seId, fid);
  end else MySaveToFile(SaveFileName, seId, fid);
  Recent.Add(SaveFileName, 0);
  prev := FileAge(SaveFileName);
end;

procedure TMain.MyLoadLoc(AWnd: TForm; mysect: string; dftitle: Boolean);
/// !!! Warning !!!
///
/// Must use right numberic tags for all components
///
/// 0 (default) - no localize
/// 1, 2        - reserved for form caption
/// 11..100     - TButton.Caption
/// 101..200    - TLabel.Caption
/// 201..300    - TCheckBox.Caption
/// 301..400    - TTabSheet.Caption
/// 401..500    - TGroupBox.Caption
/// 1001..1100  - TComboBox
/// 1101..1200  - TCheckListBox
/// 1201..1300  - TRadioGroup
/// 2001..3000  - TMenuItem
/// 3001..4000  - TAction.Hint
///
/// ===============
var
  i, j: Integer;
  lnini: TIniFile;
begin
  if FileExists(appath + 'lang\' +mylang)
  then begin
    lnini := TIniFile.Create(appath + 'lang\' + mylang);
    if dftitle then AWnd.Caption := lnini.ReadString(mysect, '2', AWnd.Caption)
    else AWnd.Caption := lnini.ReadString(mysect, '1', AWnd.Caption);
    if AWnd.ComponentCount <> 0 then begin
      for i := 0 to AWnd.ComponentCount - 1 do begin
        case AWnd.Components[i].Tag of
          //buttons
          11..100:
            (AWnd.Components[i] as TButton).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TButton).Caption);
          //labels
          101..200:
            (AWnd.Components[i] as TLabel).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TLabel).Caption);
          //checkboxes
          201..300:
            (AWnd.Components[i] as TCheckBox).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TCheckBox).Caption);
          //tabsheets
          301..400:
            (AWnd.Components[i] as TTabSheet).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TTabSheet).Caption);
          //groupboxes
          401..500:
            (AWnd.Components[i] as TGroupBox).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TGroupBox).Caption);
          //comboboxes
          1001..1100:
            for j := 0 to (AWnd.Components[i] as TComboBox).Items.Count - 1
            do (AWnd.Components[i] as TComboBox).Items.Strings[j] := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag) + ':' + IntToStr(j), (AWnd.Components[i] as TComboBox).Items.Strings[j]);
          //checklistboxes
          1101..1200:
            for j := 0 to (AWnd.Components[i] as TCheckListBox).Count - 1
            do (AWnd.Components[i] as TCheckListBox).Items.Strings[j] := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag) + ':' + IntToStr(j), (AWnd.Components[i] as TCheckListBox).Items.Strings[j]);
          //radiogroups
          1201..1300:
            begin
              (AWnd.Components[i] as TRadioGroup).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TRadioGroup).Caption);
              for j := 0 to (AWnd.Components[i] as TRadioGroup).Items.Count - 1
              do (AWnd.Components[i] as TRadioGroup).Items.Strings[j] := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag) + ':' + IntToStr(j), (AWnd.Components[i] as TRadioGroup).Items.Strings[j]);
            end;
          //menuitems
          2001..3000:
            (AWnd.Components[i] as TMenuItem).Caption := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TMenuItem).Caption);
          //actions hints
          3001..4000:
            (AWnd.Components[i] as TAction).Hint := lnini.ReadString(mysect, IntToStr(AWnd.Components[i].Tag), (AWnd.Components[i] as TAction).Hint);
        end;
      end;
    end;
    lnini.Free;
  end;
end;

procedure TMain.ShowSearchReplaceDialog(AReplace: boolean);
var
  dlg: TSearchForm;
begin
  if AReplace then dlg := TReplaceForm.Create(Self)
  else dlg := TSearchForm.Create(Self);
  with dlg do try
    MyLoadLoc(dlg, 'SearchDlg', AReplace);
    SearchBackwards := (gbSearchBackwards or gbtempSearchBackwards);
    SearchCaseSensitive := gbSearchCaseSensitive;
    SearchFromCursor := gbSearchFromCaret;
    SearchInSelectionOnly := gbSearchSelectionOnly;
    SearchRegularExpression := gbSearchRegex;
    if not Edit.SelAvail then Edit.ExecuteCommand(198, 'A', @Edit.Lines);
    if Edit.SelAvail and (Edit.BlockBegin.Line = Edit.BlockEnd.Line)
    then SearchText := Edit.SelText
    else SearchText := gsSearchText;
    SearchTextHistory := gsSearchTextHistory;
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
      gsSearchTextHistory := SearchTextHistory;
      if AReplace then with dlg as TReplaceForm do begin
        gsReplaceText := ReplaceText;
        gsReplaceTextHistory := ReplaceTextHistory;
      end;
      fSearchFromCaret := gbSearchFromCaret;
      DoSearchReplaceText(AReplace, gbSearchBackwards);
      fSearchFromCaret := True;
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

procedure TMain.N18Click(Sender: TObject);
begin
  ReplaceAgainExecute;
end;

procedure TMain.N33Click(Sender: TObject);
begin
  ReplaceBackwardsExecute;
end;

procedure TMain.LoadTranslate(const lang: string);
var
  i: Integer;
  langini: TIniFile;
begin
  langini := TIniFile.Create(appath + 'lang\' + lang);
  N1.Caption := langini.ReadString('Main', '0', 'File');
  N2.Caption := langini.ReadString('Main', '1', 'Exit');
  N3.Caption := langini.ReadString('Main', '2', 'Open');
  N4.Caption := langini.ReadString('Main', '3', 'Save');
  N5.Caption := langini.ReadString('Main', '4', 'Save as...');
  N168.Caption := langini.ReadString('Main', '5', 'Print preview');
  N7.Caption := langini.ReadString('Main', '6', 'Print');
  N10.Caption := langini.ReadString('Main', '7', 'Edit');
  N11.Caption := langini.ReadString('Main', '8', 'Undo');
  N12.Caption := langini.ReadString('Main', '9', 'Redo');
  N14.Caption := langini.ReadString('Main', '10', 'Select all');
  N15.Caption := langini.ReadString('Main', '11', 'Copy');
  N16.Caption := langini.ReadString('Main', '12', 'Paste');
  N17.Caption := langini.ReadString('Main', '13', 'Cut');
  mysn0 := langini.ReadString('Main', '14', 'TB');
  N38.Caption := langini.ReadString('Main', '15', 'Command...');
  N30.Caption := langini.ReadString('Main', '16', 'Copy add');
  N37.Caption := langini.ReadString('Main', '17', 'Dublicate selection');
  N18.Caption := langini.ReadString('Main', '18', 'Replace next');
  N39.Caption := langini.ReadString('Main', '19', 'Copy all');
  N41.Caption := langini.ReadString('Main', '20', 'Normal');
  N46.Caption := langini.ReadString('Main', '21', 'Clear clipboard');
  N40.Caption := langini.ReadString('Main', '22', 'Selection');
  N48.Caption := langini.ReadString('Main', '23', 'Color under cursor (RGB)');
  N49.Caption := langini.ReadString('Main', '24', 'Help');
  N50.Caption := langini.ReadString('Main', '25', 'About...');
  N56.Caption := langini.ReadString('Main', '26', 'Swap');
  N57.Caption := langini.ReadString('Main', '27', 'Clear all');
  N59.Caption := langini.ReadString('Main', '28', 'Clear');
  N60.Caption := langini.ReadString('Main', '29', 'Uppercase');
  N66.Caption := langini.ReadString('Main', '30', 'Convert');
  N68.Caption := langini.ReadString('Main', '31', 'Lowercase');
  N69.Caption := langini.ReadString('Main', '32', 'Title case');
  N70.Caption := langini.ReadString('Main', '33', 'Invert case');
  N76.Caption := langini.ReadString('Main', '34', 'Sentence case');
  N77.Caption := langini.ReadString('Main', '35', 'Insert');
  N100.Caption := langini.ReadString('Main', '36', 'Filename');
  mysg1 := langini.ReadString('Main', '37', 'Cannot open file.');
  N80.Caption := langini.ReadString('Main', '38', 'Open with...');
  N86.Caption := langini.ReadString('Main', '39', 'Indent');
  N87.Caption := langini.ReadString('Main', '40', 'Unindent');
  N88.Caption := langini.ReadString('Main', '41', 'Block');
  N90.Caption := langini.ReadString('Main', '42', 'Enclose selection');
  N43.Caption := langini.ReadString('Main', '43', 'Line');
  N99.Caption := langini.ReadString('Main', '44', 'Time/Date');
  N101.Caption := langini.ReadString('Main', '45', 'Options');
  mysg2 := langini.ReadString('Main', '46', 'Text not found.');
  N104.Caption := langini.ReadString('Main', '47', 'Revert');
  N105.Caption := langini.ReadString('Main', '48', 'New');
  N42.Caption := langini.ReadString('Main', '49', 'Column');
  N36.Caption := langini.ReadString('Main', '50', 'Search');
  N141.Caption := langini.ReadString('Main', '51', 'Find mathing brace');
  N114.Caption := langini.ReadString('Main', '52', 'Properties');
  N51.Caption := langini.ReadString('Main', '53', 'Font...');
  N117.Caption := langini.ReadString('Main', '54', 'Language');
  CRCap := langini.ReadString('Main', '55', 'Confirm replace');
  N119.Caption := langini.ReadString('Main', '56', 'New window');
  N120.Caption := langini.ReadString('Main', '57', 'Operations');
  N122.Caption := langini.ReadString('Main', '58', 'Empty window');
  N124.Caption := langini.ReadString('Main', '59', 'Execute document');
  N126.Caption := langini.ReadString('Main', '60', 'Internal');
  N127.Caption := langini.ReadString('Main', '61', 'Recent files');
  N130.Caption := langini.ReadString('Main', '62', 'Delete non-existent');
  N132.Caption := langini.ReadString('Main', '63', 'Clear list');
  N102.Caption := langini.ReadString('Main', '64', 'Filename and path');
  N33.Caption := langini.ReadString('Main', '65', 'Replace previous');
  mysg3 := StringReplace(langini.ReadString('Main', '66',
                      'File has "read-only" attribute.\nSave changes to file?'),
                      '\n', #13#10, [rfReplaceAll]);
  N26.Caption := langini.ReadString('Main', '67', 'Find...');
  N27.Caption := langini.ReadString('Main', '68', 'Find next');
  CRLab := langini.ReadString('Main', '69', 'Replace this occurence of "%s"?');
  myunk := langini.ReadString('Main', '70', 'Untitled');
  mysn1 := langini.ReadString('Main', '71', 'GB');
  mysn2 := langini.ReadString('Main', '72', 'MB');
  mysn3 := langini.ReadString('Main', '73', 'KB');
  mysn4 := langini.ReadString('Main', '74', 'Byte(s)');
  CRBut1 := langini.ReadString('Main', '75', 'Yes');
  CRBut2 := langini.ReadString('Main', '76', 'No');
  CRBut3 := langini.ReadString('Main', '77', 'Cancel');
  CRBut4 := langini.ReadString('Main', '78', 'Yes to all');
  N28.Caption := langini.ReadString('Main', '79', 'Find previous');
  N29.Caption := langini.ReadString('Main', '80', 'Replace...');
  N31.Caption := langini.ReadString('Main', '81', 'Go to...');
  mysg4 := StringReplace(langini.ReadString('Main', '82',
                'Current file has changed in other program.\nReopen the file?'),
                '\n', #13#10, [rfReplaceAll]);
  mysg5 := StringReplace(langini.ReadString('Main', '83',
      'File is no more exists.\nSave the file?'), '\n', #13#10, [rfReplaceAll]);
  N44.Caption := langini.ReadString('Main', '84', 'Codepage');
  mysg7 := StringReplace(langini.ReadString('Main', '85',
            'File has changed.\nSave the file?'), '\n', #13#10, [rfReplaceAll]);
  N32.Caption := langini.ReadString('Main', '86', 'Settings');
  N53.Caption := langini.ReadString('Main', '87', 'Auto');
  N74.Caption := langini.ReadString('Main', '88', 'Syntax');
  N75.Caption := langini.ReadString('Main', '89', 'Default');
  N71.Caption := langini.ReadString('Main', '90', 'Quote selection');
  N72.Caption := langini.ReadString('Main', '91', 'Dequote selection');
  N161.Caption := langini.ReadString('Main', '92', 'Select to matching brace');
  N162.Caption := langini.ReadString('Main', '93', 'Read only');
  mysn5 := langini.ReadString('Main', '94', 'read only');
  N163.Caption := langini.ReadString('Main', '95', 'Open in Explorer');
  N166.Caption := langini.ReadString('Main', '96', 'Page setup');
  N167.Caption := langini.ReadString('Main', '97', 'Printer setup');
  N165.Caption := langini.ReadString('Main', '98', 'Data');
  N169.Caption := langini.ReadString('Main', '99', 'Computer name');
  N170.Caption := langini.ReadString('Main', '100', 'User name');
  N19.Caption := N11.Caption;
  N20.Caption := N12.Caption;
  N22.Caption := N17.Caption;
  N23.Caption := N15.Caption;
  N24.Caption := N16.Caption;
  N25.Caption := N14.Caption;
  N45.Caption := N39.Caption;
  N55.Caption := N30.Caption;
  N65.Caption := N56.Caption;
  N85.Caption := N59.Caption;
  N95.Caption := N57.Caption;
  N96.Caption := N46.Caption;
  Save.FileName := myunk + '.txt';
  langini.Free;
  for I := 1 to N117.Count - 1 do if CompareStr(N117.Items[i].Hint, mylang) = 0
  then N117.Items[i].Checked := True;
end;

procedure TMain.N126Click(Sender: TObject);
begin
  N126.Checked := True;
  CRLab := 'Replace this occurence of "%s"?';
  CRCap := 'Confirm replace';
  CRBut1 := 'Yes';
  CRBut2 := 'No';
  CRBut3 := 'Cancel';
  CRBut4 := 'Yes to all';
  mysg1 := 'Cannot open file.';
  mysg2 := 'Text not found.';
  mysg3 := 'File has "read-only" attribute.' + #13#10 + 'Save changes to file?';
  mysg4 := 'Current file has changed in other program.' + #13#10
             + 'Reopen the file?';
  mysg5 := 'File is no more exists.'+#13#10+'Save the file?';
  mysg7 := 'File has changed.'+#13#10+'Save the file?';
  mysn0 := 'TB';
  mysn1 := 'GB';
  mysn2 := 'MB';
  mysn3 := 'KB';
  mysn4 := 'Byte(s)';
  mysn5 := 'read only';
  myunk := 'Untitled';
  N1.Caption := 'File';
  N2.Caption := 'Exit';
  N3.Caption := 'Open';
  N4.Caption := 'Save';
  N5.Caption := 'Save as...';
  N7.Caption := 'Print';
  N10.Caption := 'Edit';
  N11.Caption := 'Undo';
  N12.Caption := 'Redo';
  N14.Caption := 'Select all';
  N15.Caption := 'Copy';
  N16.Caption := 'Paste';
  N17.Caption := 'Cut';
  N18.Caption := 'Replace next';
  N26.Caption := 'Find...';
  N27.Caption := 'Find next';
  N28.Caption := 'Find previous';
  N29.Caption := 'Replace...';
  N30.Caption := 'Copy add';
  N31.Caption := 'Go to...';
  N32.Caption := 'Settings';
  N33.Caption := 'Replace previous';
  N36.Caption := 'Search';
  N37.Caption := 'Dublicate selection';
  N38.Caption := 'Command...';
  N39.Caption := 'Copy all';
  N40.Caption := 'Selection';
  N41.Caption := 'Normal';
  N42.Caption := 'Column';
  N43.Caption := 'Line';
  N44.Caption := 'Codepage';
  N46.Caption := 'Clear clipboard';
  N48.Caption := 'Color under cursor (RGB)';
  N49.Caption := 'Help';
  N50.Caption := 'About...';
  N51.Caption := 'Font...';
  N53.Caption := 'Auto';
  N56.Caption := 'Swap';
  N57.Caption := 'Clear all';
  N59.Caption := 'Clear';
  N60.Caption := 'Uppercase';
  N66.Caption := 'Convert';
  N68.Caption := 'Lowercase';
  N69.Caption := 'Title case';
  N70.Caption := 'Invert case';
  N71.Caption := 'Quote selection';
  N72.Caption := 'Dequote selection';
  N74.Caption := 'Syntax';
  N75.Caption := 'Default';
  N76.Caption := 'Sentence case';
  N77.Caption := 'Insert';
  N80.Caption := 'Open with...';
  N86.Caption := 'Indent';
  N87.Caption := 'Unindent';
  N88.Caption := 'Block';
  N90.Caption := 'Enclose selection';
  N99.Caption := 'Time/Date';
  N100.Caption := 'Filename';
  N101.Caption := 'Options';
  N102.Caption := 'Filename and path';
  N104.Caption := 'Revert';
  N105.Caption := 'New';
  N114.Caption := 'Properties';
  N117.Caption := 'Language';
  N119.Caption := 'New window';
  N120.Caption := 'Operations';
  N122.Caption := 'Empty window';
  N124.Caption := 'Execute document';
  N126.Caption := 'Internal';
  N127.Caption := 'Recent files';
  N130.Caption := 'Delete non-existent';
  N132.Caption := 'Clear list';
  N141.Caption := 'Find mathing brace';
  N161.Caption := 'Select to matching brace';
  N162.Caption := 'Read only';
  N163.Caption := 'Open in Explorer';
  N165.Caption := 'Data';
  N166.Caption := 'Page setup';
  N167.Caption := 'Printer setup';
  N168.Caption := 'Print preview';
  N169.Caption := 'Computer name';
  N170.Caption := 'User name';
  N19.Caption := N11.Caption;
  N20.Caption := N12.Caption;
  N22.Caption := N17.Caption;
  N23.Caption := N15.Caption;
  N24.Caption := N16.Caption;
  N25.Caption := N14.Caption;
  N45.Caption := N39.Caption;
  N55.Caption := N30.Caption;
  N65.Caption := N56.Caption;
  N85.Caption := N59.Caption;
  N95.Caption := N57.Caption;
  N96.Caption := N46.Caption;
  Save.FileName := myunk + '.txt';
  mylang := '';
end;

procedure TMain.ItemClick(Sender: TObject);
begin
  with (Sender as TMenuItem) do begin
    mylang := Hint;
    if FileExists(appath + 'lang\' + mylang) then begin
      LoadTranslate(mylang);
      Checked := True;
    end;
  end;
end;

procedure TMain.MySetSynByFid(fid: Byte);
begin
  case fid of
    2: begin
         SynCpp.LoadFromFile(appath + 'syn\cpp.ini');
         Edit.Highlighter := SynCpp;
       end;
    3: begin
         SynEif.LoadFromFile(appath + 'syn\eiffel.ini');
         Edit.Highlighter := SynEif;
       end;
    4: begin
         SynFor.LoadFromFile(appath + 'syn\fortran.ini');
         Edit.Highlighter := SynFor;
       end;
    5: begin
         SynJava.LoadFromFile(appath + 'syn\java.ini');
         Edit.Highlighter := SynJava;
       end;
    6: begin
         SynMod.LoadFromFile(appath + 'syn\modula.ini');
         Edit.Highlighter := SynMod;
       end;
    7: begin
         SynPas.LoadFromFile(appath + 'syn\pascal.ini');
         Edit.Highlighter := SynPas;
       end;
    8: begin
         SynBas.LoadFromFile(appath + 'syn\vbasic.ini');
         Edit.Highlighter := SynBas;
       end;
    9: begin
         SynCobol.LoadFromFile(appath + 'syn\cobol.ini');
         Edit.Highlighter := SynCobol;
       end;
    10: begin
         SynCs.LoadFromFile(appath + 'syn\cs.ini');
         Edit.Highlighter := SynCs;
        end;
    11: begin
         SynCss.LoadFromFile(appath + 'syn\css.ini');
         Edit.Highlighter := SynCss;
        end;
    12: begin
         SynHtml.LoadFromFile(appath + 'syn\html.ini');
         Edit.Highlighter := SynHtml;
        end;
    13: begin
         SynJS.LoadFromFile(appath + 'syn\jscript.ini');
         Edit.Highlighter := SynJS;
        end;
    14: begin
         SynPhp.LoadFromFile(appath + 'syn\php.ini');
         Edit.Highlighter := SynPhp;
        end;
    15: begin
         SynVbs.LoadFromFile(appath + 'syn\vbscript.ini');
         Edit.Highlighter := SynVbs;
        end;
    16: begin
         SynXml.LoadFromFile(appath + 'syn\xml.ini');
         Edit.Highlighter := SynXml;
        end;
    17: begin
         SynVrml.LoadFromFile(appath + 'syn\vrml.ini');
         Edit.Highlighter := SynVrml;
        end;
    18: begin
         SynAwk.LoadFromFile(appath + 'syn\awk.ini');
         Edit.Highlighter := SynAwk;
        end;
    19: begin
         SynBat.LoadFromFile(appath + 'syn\bat.ini');
         Edit.Highlighter := SynBat;
        end;
    20: begin
         SynKix.LoadFromFile(appath + 'syn\kixtart.ini');
         Edit.Highlighter := SynKix;
        end;
    21: begin
         SynPerl.LoadFromFile(appath + 'syn\perl.ini');
         Edit.Highlighter := SynPerl;
        end;
    22: begin
         SynPy.LoadFromFile(appath + 'syn\python.ini');
         Edit.Highlighter := SynPy;
        end;
    23: begin
         SynTcl.LoadFromFile(appath + 'syn\tcltk.ini');
         Edit.Highlighter := SynTcl;
        end;
    24: begin
         SynGws.LoadFromFile(appath + 'syn\gwtel.ini');
         Edit.Highlighter := SynGws;
        end;
    25: begin
         SynRuby.LoadFromFile(appath + 'syn\ruby.ini');
         Edit.Highlighter := SynRuby;
        end;
    26: begin
         SynUSh.LoadFromFile(appath + 'syn\ushell.ini');
         Edit.Highlighter := SynUSh;
        end;
    27: begin
         SynCac.LoadFromFile(appath + 'syn\caclpr.ini');
         Edit.Highlighter := SynCac;
        end;
    28: begin
         SynCch.LoadFromFile(appath + 'syn\cache.ini');
         Edit.Highlighter := SynCch;
        end;
    29: begin
         SynFox.LoadFromFile(appath + 'syn\foxpro.ini');
         Edit.Highlighter := SynFox;
        end;
    30: begin
         SynSql.LoadFromFile(appath + 'syn\sql.ini');
         Edit.Highlighter := SynSql;
        end;
    31: begin
         SynSdd.LoadFromFile(appath + 'syn\sdd.ini');
         Edit.Highlighter := SynSdd;
        end;
    32: begin
         SynDsp.LoadFromFile(appath + 'syn\dsp.ini');
         Edit.Highlighter := SynDsp;
        end;
    33: begin
         SynAsm.LoadFromFile(appath + 'syn\asm.ini');
         Edit.Highlighter := SynAsm;
        end;
    34: begin
         SynHc.LoadFromFile(appath + 'syn\hc11asm.ini');
         Edit.Highlighter := SynHc;
        end;
    35: begin
         SynSt.LoadFromFile(appath + 'syn\stext.ini');
         Edit.Highlighter := SynSt;
        end;
    36: begin
         SynGem.LoadFromFile(appath + 'syn\gembase.ini');
         Edit.Highlighter := SynGem;
        end;
    37: begin
         SynModa.LoadFromFile(appath + 'syn\modelic.ini');
         Edit.Highlighter := SynModa;
        end;
    38: begin
         SynSml.LoadFromFile(appath + 'syn\sml.ini');
         Edit.Highlighter := SynSml;
        end;
    39: begin
         SynDfm.LoadFromFile(appath + 'syn\dfm.ini');
         Edit.Highlighter := SynDfm;
        end;
    40: begin
         SynIni.LoadFromFile(appath + 'syn\ini.ini');
         Edit.Highlighter := SynIni;
        end;
    41: begin
         SynInno.LoadFromFile(appath + 'syn\inno.ini');
         Edit.Highlighter := SynInno;
        end;
    42: begin
         SynBaan.LoadFromFile(appath + 'syn\baan.ini');
         Edit.Highlighter := SynBaan;
        end;
    43: begin
         SynGal.LoadFromFile(appath + 'syn\galaxy.ini');
         Edit.Highlighter := SynGal;
        end;
    44: begin
         SynPrg.LoadFromFile(appath + 'syn\progress.ini');
         Edit.Highlighter := SynPrg;
        end;
    45: begin
         SynMsg.LoadFromFile(appath + 'syn\msg.ini');
         Edit.Highlighter := SynMsg;
        end;
    46: begin
         SynIdl.LoadFromFile(appath + 'syn\corba.ini');
         Edit.Highlighter := SynIdl;
        end;
    47: begin
         SynCpm.LoadFromFile(appath + 'syn\cpmrep.ini');
         Edit.Highlighter := SynCpm;
        end;
    48: begin
         SynTex.LoadFromFile(appath + 'syn\tex.ini');
         Edit.Highlighter := SynTex;
        end;
    49: begin
         SynHas.LoadFromFile(appath + 'syn\haskell.ini');
         Edit.Highlighter := SynHas;
        end;
    50: begin
         SynLdr.LoadFromFile(appath + 'syn\legoldr.ini');
         Edit.Highlighter := SynLdr;
        end;
    51: begin
         SynDot.LoadFromFile(appath + 'syn\dotgraph.ini');
         Edit.Highlighter := SynDot;
        end;
    52: begin
         SynRc.LoadFromFile(appath + 'syn\res.ini');
         Edit.Highlighter := SynRc;
        end;
    else begin
      SynDef.LoadFromFile(appath + 'default.ini');
      Edit.Highlighter := SynDef;
    end;
  end;
  N74.Items[fid - 1].Checked := True;
end;

procedure TMain.MySetSynByExt(fExt: string);
var
  flExt: string;
  flLen: Integer;
begin
  flExt := WideLowerCase(fExt);
  flLen := Length(flExt);
  case flLen of
    2: if (flExt = '.c') or (flExt = '.h') then MySetSynByFid(2) else
       if flExt = '.e' then MySetSynByFid(3) else
       if (flExt = '.w') or (flExt = '.p') or (flExt = '.i')
       then MySetSynByFid(44) else MySetSynByFid(1);
    3: if (flExt = '.cc') or (flExt = '.hh') or (flExt = '.cu')
       then MySetSynByFid(2) else if flExt = '.m3' then MySetSynByFid(6) else
       if flExt = '.pp' then MySetSynByFid(7) else if flExt = '.cs'
       then MySetSynByFid(10) else if flExt = '.js' then MySetSynByFid(13) else
       if (flExt = '.pl') or (flExt = '.pm') then MySetSynByFid(21) else
       if flExt = '.py' then MySetSynByFid(22) else if flExt = '.rb'
       then MySetSynByFid(25) else if flExt = '.sh' then MySetSynByFid(26) else
       if flExt = '.ch' then MySetSynByFid(27) else if flExt = '.st'
       then MySetSynByFid(35) else if flExt = '.mo' then MySetSynByFid(37) else
       if flExt = '.hs' then MySetSynByFid(49) else if flExt = '.rc'
       then MySetSynByFid(52) else MySetSynByFid(1);
    4: if (flExt = '.cpp') or (flExt = '.hpp') or (flExt = '.cxx')
            or (flExt = '.hxx')
       then MySetSynByFid(2) else if flExt = '.ace' then MySetSynByFid(3) else
       if flExt = '.for' then MySetSynByFid(4) else
       if (flExt = '.pas') or (flExt = '.dpr') or (flExt = '.dpk')
            or (flExt = '.inc')
       then MySetSynByFid(7) else if flExt = '.bas' then MySetSynByFid(8) else
       if (flExt = '.cbl') or (flExt = '.cob') then MySetSynByFid(9) else
       if flExt = '.css' then MySetSynByFid(11) else if flExt = '.htm'
       then MySetSynByFid(12) else if flExt = '.php' then MySetSynByFid(14) else
       if flExt = '.vbs' then MySetSynByFid(15) else
       if (flExt = '.xml') or (flExt = '.xsd') or (flExt = '.dtd')
            or (flExt = '.hxx')
       then MySetSynByFid(16) else
       if (flExt = '.wrl') or (flExt = '.vrl') or (flExt = '.x3d')
       then MySetSynByFid(17) else if flExt = '.awk' then MySetSynByFid(18) else
       if (flExt = '.bat') or (flExt = '.cmd') then MySetSynByFid(19) else
       if flExt = '.kix' then MySetSynByFid(20) else if flExt = '.cgi'
       then MySetSynByFid(21) else if flExt = '.tcl' then MySetSynByFid(23) else
       if flExt = '.gws' then MySetSynByFid(24) else if flExt = '.rbw'
       then MySetSynByFid(25) else if (flExt = '.mac') or (flExt = '.int')
       then MySetSynByFid(28) else if flExt = '.prg' then MySetSynByFid(29) else
       if flExt = '.sql' then MySetSynByFid(30) else if flExt = '.sdd'
       then MySetSynByFid(31) else if flExt = '.dsp' then MySetSynByFid(32) else
       if flExt = '.asm' then MySetSynByFid(33) else if flExt = '.asc'
       then MySetSynByFid(34) else if (flExt = '.dml') or (flExt = '.gem')
       then MySetSynByFid(36) else if flExt = '.sml' then MySetSynByFid(38) else
       if (flExt = '.dfm') or (flExt = '.xfm') then MySetSynByFid(39) else
       if flExt = '.ini' then MySetSynByFid(40) else if flExt = '.iss'
       then MySetSynByFid(41) else if flExt = '.cln' then MySetSynByFid(42) else
       if flExt = '.gtv' then MySetSynByFid(43) else if flExt = '.msg'
       then MySetSynByFid(45) else if flExt = '.idl' then MySetSynByFid(46) else
       if (flExt = '.rdf') or (flExt = '.rif') or (flExt = '.rmf')
            or (flExt = '.rxf')
       then MySetSynByFid(47) else if flExt = '.tex' then MySetSynByFid(48) else
       if flExt = '.lhs' then MySetSynByFid(49) else if flExt = '.ldr'
       then MySetSynByFid(50) else if flExt = '.dot' then MySetSynByFid(51)
       else MySetSynByFid(1);
    5: if flExt = '.java' then MySetSynByFid(5) else if flExt = '.html'
       then MySetSynByFid(12) else if flExt = '.php3' then MySetSynByFid(14)
       else if flExt = '.xslt' then MySetSynByFid(16) else
       if (flExt = '.wrml') or (flExt = '.vrml') then MySetSynByFid(17) else
       if flExt = '.hc11' then MySetSynByFid(34) else MySetSynByFid(1);
    6: if flExt = '.phtml' then MySetSynByFid(14) else MySetSynByFid(1);
    7: if flExt = '.galrep' then MySetSynByFid(43) else MySetSynByFid(1);
    else MySetSynByFid(1);
  end;
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
  if ExtractFilePath(ParamFile) = '' then ParamFile := appath + ParamFile;
  if FileExists(ParamFile) then begin
    MyOpenFile(ParamFile, nil, 1);
    if ToPrint then begin
      synprint1.SynEdit := Edit;
      synprint1.Title := MyFileName;
      synprint1.Wrap := True;
      synprint1.Print;
    end;
  end else if ToCreate then MySaveFile(ParamFile, 0, 1);
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
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          CanClose := True;
        end else if Save.Execute then begin
          Save.FileName := MyExtByFilter(Save.FilterIndex, Save.FileName);
          MySaveFile(Save.FileName, Save.EncodingIndex, Save.FilterIndex);
          CanClose := True;
        end else CanClose := False;
      IDNO: CanClose := True;
    end;
  end else CanClose := True;
end;

procedure TMain.LoadAppLoc;
var
  langsrw:  TSearchRec;
  LangItem: TMenuItem;
  langini:  TIniFile;
begin
  if FindFirst(appath + 'lang\' + '*.lng', faAnyFile, langsrw) = 0 then begin
    repeat
      if (langsrw.Attr and faDirectory) <> 0 then Continue else begin
        LangItem := TMenuItem.Create(N117);
        langini := TIniFile.Create(appath + 'lang\' + langsrw.Name);
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
  if FileExists(appath + 'lang\' + mylang) then LoadTranslate(mylang);
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  appath := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  curcp := 0;
  JvTrayIcon1.Icon := Application.Icon;
  dlg1.Icon := Application.Icon;
  Edit.AdditionalIdentChars := ['À'..'ß'] + ['à'..'ÿ'];
end;

procedure TMain.ReadFromAppStorage(AppStorage: TJvCustomAppStorage;
                                     const BasePath: string);
var
  shlist: TStringList;
begin
  JvDragDrop1.AcceptDrag := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath,
                                        'AcceptDrag']), JvDragDrop1.AcceptDrag);
  JvTrayIcon1.Active := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath,
                                            'HideToTray']), JvTrayIcon1.Active);
  psafc := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath, 'PasteAfterCaret']),
                                False);
  sddir := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath, 'ScanDropFolders']),
                                False);
  sudir := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath, 'ScanSubFolders']),
                                False);
  Status.Visible := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath,
                                                 'StatusBar']), Status.Visible);
  usesyn := AppIni.ReadBoolean(AppIni.ConcatPaths([BasePath, 'SynHighlight']),
                                                    False);
  if usesyn then begin
    MySetSynByFid(1);
  end else begin
    N74.Enabled := False;
  end;
  Recent.Capacity :=
                    AppIni.ReadInteger(AppIni.ConcatPaths([BasePath, 'Recent']),
                                         Recent.Capacity);
  mylang:= AppIni.ReadString(AppIni.ConcatPaths([BasePath, 'Language']), '');
  AppIni.ReadPersistent('Editor', Edit, True, True, ExcValsEdit);
  AppIni.ReadPersistent('Editor\Gutter', Edit.Gutter, True, True, ExcValsGut);
  AppIni.ReadPersistent('Print', synprint1, True, True, ExcValsPrint);
  AppIni.ReadPersistent('Print\Margins', synprint1.Margins, True, True,
                          ExcValsPrintM);
  shlist := TStringList.Create;
  try
    AppIni.ReadStringList('Editor\SearchHistory', shlist);
    gsSearchTextHistory := shlist.Text;
    AppIni.ReadStringList('Editor\ReplaceHistory', shlist);
    gsReplaceTextHistory := shlist.Text;
  finally
    shlist.Free;
  end;
  N162.Checked := Edit.ReadOnly;
  LoadAppLoc;
  WorkParams;
end;

procedure TMain.WriteToAppStorage(AppStorage: TJvCustomAppStorage;
                                    const BasePath: string);
var
  shlist: TStringList;
begin
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'AcceptDrag']),
                         JvDragDrop1.AcceptDrag);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'HideToTray']),
                         JvTrayIcon1.Active);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'PasteAfterCaret']), psafc);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'ScanDropFolders']), sddir);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'ScanSubFolders']), sudir);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'StatusBar']),
                         Status.Visible);
  AppIni.WriteBoolean(AppIni.ConcatPaths([BasePath, 'SynHighlight']), usesyn);
  AppIni.WriteInteger(AppIni.ConcatPaths([BasePath, 'Recent']),
                        Recent.Capacity);
  AppIni.WriteString(AppIni.ConcatPaths([BasePath, 'Language']), mylang);
  AppIni.WritePersistent('Editor', Edit, True, ExcValsEdit);
  AppIni.WritePersistent('Editor\Gutter', Edit.Gutter, True, ExcValsGut);
  AppIni.WritePersistent('Print', synprint1, True, ExcValsPrint);
  AppIni.WritePersistent('Print\Margins', synprint1.Margins, True,
                           ExcValsPrintM);
  shlist := TStringList.Create;
  try
    shlist.Text := gsSearchTextHistory;
    AppIni.DeleteSubTree('Editor\SearchHistory');
    AppIni.WriteStringList('Editor\SearchHistory', shlist);
    shlist.Text := gsReplaceTextHistory;
    AppIni.DeleteSubTree('Editor\ReplaceHistory');
    AppIni.WriteStringList('Editor\ReplaceHistory', shlist);
  finally
    shlist.Free;
  end;
end;

procedure TMain.RecentClick(Sender: TObject; const RecentName, Caption: string;
  UserData: Integer);

  procedure MyOpen;
  begin
    if FileExists(RecentName) then MyOpenFile(RecentName, nil, 1)
    else Application.MessageBox(PChar(mysg1), 'BirEdit', MB_OK+MB_ICONSTOP);
  end;

begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit',
                                  MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyOpen;
        end else if Save.Execute then begin
          Save.FileName := MyExtByFilter(Save.FilterIndex, Save.FileName);
          MySaveFile(Save.FileName, Save.EncodingIndex, Save.FilterIndex);
          MyOpen;
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
    if Open.Execute then MyOpenFile(Open.FileName, nil, Open.FilterIndex);
  end;

begin
  if Edit.Modified then begin
    case Application.MessageBox(PChar(mysg7), 'BirEdit',
                                  MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyOpen;
        end else if Save.Execute then begin
          Save.FileName := MyExtByFilter(Save.FilterIndex, Save.FileName);
          MySaveFile(Save.FileName, Save.EncodingIndex, Save.FilterIndex);
          MyOpen;
        end;
      IDNO: MyOpen;
    end;
  end else MyOpen;
end;

procedure TMain.N4Click(Sender: TObject);
begin
  MySaveFile(MyFileName, curcp, 1);
end;

procedure TMain.N5Click(Sender: TObject);
begin
  if Save.Execute then begin
    Save.FileName := MyExtByFilter(Save.FilterIndex, Save.FileName);
    MySaveFile(Save.FileName, Save.EncodingIndex, Save.FilterIndex);
  end;
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

procedure TMain.N161Click(Sender: TObject);
begin
  Edit.SetCaretAndSelection(Edit.CaretXY, Edit.CaretXY,
                              Edit.GetMatchingBracketEx(Edit.CaretXY));
end;

procedure TMain.N162Click(Sender: TObject);
begin
  Edit.ReadOnly := not Edit.ReadOnly;
  N162.Checked := Edit.ReadOnly;
end;

procedure TMain.N163Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'explorer', PChar('/select, "' + MyFileName + '"'),
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N166Click(Sender: TObject);
begin
  PageDlg.MarginLeft := Round(synprint1.Margins.Left * 100);
  PageDlg.MarginTop := Round(synprint1.Margins.Top * 100);
  PageDlg.MarginRight := Round(synprint1.Margins.Right * 100);
  PageDlg.MarginBottom := Round(synprint1.Margins.Bottom * 100);
  if PageDlg.Execute then begin
    synprint1.Margins.Left := PageDlg.MarginLeft / 100;
    synprint1.Margins.Top := PageDlg.MarginTop / 100;
    synprint1.Margins.Right := PageDlg.MarginRight / 100;
    synprint1.Margins.Bottom := PageDlg.MarginBottom / 100;
  end;
end;

procedure TMain.N167Click(Sender: TObject);
begin
  PrinterSetupDialog.Execute;
end;

procedure TMain.N168Click(Sender: TObject);
var
  dlg: TPreviewDlg;
begin
  synprint1.SynEdit := Edit;
  synprint1.Title := MyFileName;
  dlg := TPreviewDlg.Create(Self);
  with dlg do try
    MyLoadLoc(dlg, 'PrintPreviewDlg', False);
    ShowModal;
  finally
    dlg.Free;
  end;
end;

procedure TMain.N169Click(Sender: TObject);
var
  i: DWORD;
  p: PChar;
begin
  i := 255;
  GetMem(p, i);
  GetComputerName(p, i);
  Edit.SelText := p;
  FreeMem(p);
end;

procedure TMain.N16Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.PasteFromClipboard;
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.N170Click(Sender: TObject);
var
  i: DWORD;
  p: PChar;
begin
  i := 255;
  GetMem(p, i);
  GetUserName(p, i);
  Edit.SelText := p;
  FreeMem(p);
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
  FontDialog.Font.Assign(Edit.Font);
  if FontDialog.Execute then begin
    Edit.Font.Assign(FontDialog.Font);
    WriteToAppStorage(AppIni, AppIni.DefaultSection);
  end;
end;

procedure TMain.N57Click(Sender: TObject);
begin
  Edit.ExecuteCommand(508, 'A', @Edit.lines);
end;

procedure TMain.N39Click(Sender: TObject);
begin
  Clipboard.AsText := Edit.Text;
end;

procedure TMain.N46Click(Sender: TObject);
begin
  Clipboard.Clear;
end;

procedure TMain.N48Click(Sender: TObject);
var
  DC: HDC;
  MyColor: Cardinal;
  bs : TBufferCoord;
begin
  DC := GetDC(0);
  MyColor := GetPixel(DC, Mouse.CursorPos.X, Mouse.CursorPos.Y);
  ReleaseDC(0, DC);
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := '$' + IntToHex(GetRValue(MyColor), 2)
            + IntToHex(GetGValue(MyColor), 2) + IntToHex(GetBValue(MyColor), 2);
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.AddToClipboard;
var
  ChangeTrim: Boolean;
  SText: string;
begin
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

procedure TMain.ChangeClipboard;
var
  ChangeTrim: Boolean;
  SText, Temp: string;
  bs : TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
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
  if psafc then Edit.CaretXY := bs;
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
  lxy: TPoint;
  gtbox: TGoToDlg;
begin
  gtbox := TGoToDlg.Create(Self);
  with gtbox do try
    MyLoadLoc(gtbox, 'GoToDlg', False);
    MaxXY := Point(Edit.Lines.Count, MaxInt);
    CaretXY := Point(Edit.CaretX, Edit.CaretY);
    if ShowModal = mrOk then begin
      lxy := CaretXY;
      Edit.ExecuteCommand(17, 'A', @lxy);
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
    MyLoadLoc(setdlg, 'SettingsDlg', False);
    Chk1 := Edit.ReadOnly;
    Chk2 := Edit.Gutter.UseFontStyle;
    Chk3 := Edit.Gutter.Gradient;
    Chk4 := psafc;
    Chk5 := sddir;
    Chk6 := sudir;
    Chk7 := JvTrayIcon1.Active;
    Chk8 := Status.Visible;
    Chk9 := Edit.Gutter.Visible;
    Chk10 := Edit.WordWrap;
    Chk11 := Edit.Gutter.AutoSize;
    Chk12 := Edit.Gutter.LeadingZeros;
    Chk13 := Edit.Gutter.ShowLineNumbers;
    Chk14 := Edit.Gutter.ZeroStart;
    Chk15 := usesyn;
    Chk16 := synprint1.Colors;
    Chk17 := synprint1.Highlight;
    Chk18 := synprint1.LineNumbers;
    Spn1 := Recent.Capacity;
    Spn2 := Edit.MaxScrollWidth;
    Spn3 := Edit.MaxUndo;
    Spn4 := Edit.RightEdge;
    Spn5 := Edit.TabWidth;
    Spn6 := Edit.Gutter.DigitCount;
    Spn7 := Edit.Gutter.LineNumberStart;
    Spn8 := Edit.Gutter.GradientSteps;
    Spn9 := Edit.ExtraLineSpacing;
    Cmb1 := Byte(Edit.InsertCaret);
    Cmb2 := Byte(Edit.OverwriteCaret);
    Cmb3 := Byte(Edit.ScrollHintFormat);
    Cmb4 := Byte(Edit.SelectionMode);
    for I := 0 to 26
    do OptsList.Checked[i] := TSynEditorOption(i) in Edit.Options;
    if ShowModal = mrOk then begin
      Edit.ReadOnly := Chk1;
      Edit.Gutter.UseFontStyle := Chk2;
      Edit.Gutter.Gradient := Chk3;
      psafc := Chk4;
      sddir := Chk5;
      sudir := Chk6;
      JvTrayIcon1.Active := Chk7;
      Status.Visible := Chk8;
      Edit.Gutter.Visible := Chk9;
      Edit.WordWrap := Chk10;
      Edit.Gutter.AutoSize := Chk11;
      Edit.Gutter.LeadingZeros := Chk12;
      Edit.Gutter.ShowLineNumbers := Chk13;
      Edit.Gutter.ZeroStart := Chk14;
      usesyn := Chk15;
      synprint1.Colors := Chk16;
      synprint1.Highlight := Chk17;
      synprint1.LineNumbers := Chk18;
      Recent.Capacity := Spn1;
      Edit.MaxScrollWidth := Spn2;
      Edit.MaxUndo := Spn3;
      Edit.RightEdge := Spn4;
      Edit.TabWidth := Spn5;
      Edit.Gutter.DigitCount := Spn6;
      Edit.Gutter.LineNumberStart := Spn7;
      Edit.Gutter.GradientSteps := Spn8;
      Edit.ExtraLineSpacing := Spn9;
      Edit.InsertCaret := TSynEditCaretType(Cmb1);
      Edit.OverwriteCaret := TSynEditCaretType(Cmb2);
      Edit.ScrollHintFormat := TScrollHintFormat(Cmb3);
      Edit.SelectionMode := TSynSelectionMode(Cmb4);
      for I := 0 to 26 do if OptsList.Checked[i] = True
      then Edit.Options := Edit.Options + [TSynEditorOption(i)]
      else Edit.Options := Edit.Options - [TSynEditorOption(i)];
      JvDragDrop1.AcceptDrag := not (eoDropFiles in Edit.Options);
      N40.Items[Byte(Edit.SelectionMode)].Checked := True;
	    N42.Enabled := not (eoAltSetsColumnMode in Edit.Options);
      N162.Checked := Edit.ReadOnly;
      if usesyn then begin
        if FileExists(MyFileName) then MySetSynByExt(ExtractFileExt(MyFileName))
        else MySetSynByFid(1);
        N74.Enabled := True;
      end else begin
        Edit.Highlighter := nil;
        N74.Enabled := False;
      end;
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

procedure TMain.N71Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := QuotedStr(Edit.SelText);
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.N72Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := AnsiDequotedStr(Edit.SelText, '''');
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.N7Click(Sender: TObject);
begin
  PrintDialog.Copies := synprint1.Copies;
  if PrintDialog.Execute then begin
    synprint1.SynEdit := Edit;
    synprint1.Title := MyFileName;
    synprint1.Copies := PrintDialog.Copies;
    synprint1.Print;
  end;
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
  bs: TBufferCoord;
  sidlg: TSelIns;
begin
  sidlg := TSelIns.Create(Self);
  with sidlg do try
    MyLoadLoc(sidlg, 'EnclSelDlg', False);
    if ShowModal = mrOk then begin
      if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
      Edit.SelText := Edit1.Text + Edit.SelText + Edit2.Text;
      if psafc then Edit.CaretXY := bs;
    end;
  finally
    sidlg.Free;
  end;
end;

procedure TMain.N37Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := Edit.SelText + Edit.SelText;
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.N99Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := DateTimeToStr(Now);
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.Popup1Popup(Sender: TObject);
begin
  if not Edit.SelAvail then Edit.ExecuteCommand(198, 'A', @Edit.Lines);
end;

procedure TMain.N104Click(Sender: TObject);
begin
  case curcp of
    1: MyOpenFile(MyFileName, TEncoding.ASCII, 1);
    2: MyOpenFile(MyFileName, TEncoding.Unicode, 1);
    3: MyOpenFile(MyFileName, TEncoding.BigEndianUnicode, 1);
    4: MyOpenFile(MyFileName, TEncoding.UTF8, 1);
    5: MyOpenFile(MyFileName, TEncoding.UTF7, 1);
    else MyOpenFile(MyFileName, TEncoding.Default, 1);
  end;
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
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyNewDoc;
        end else if Save.Execute then begin
          Save.FileName := MyExtByFilter(Save.FilterIndex, Save.FileName);
          MySaveFile(Save.FileName, Save.EncodingIndex, Save.FilterIndex);
          MyNewDoc;
        end;
      IDNO: MyNewDoc;
    end;
  end else MyNewDoc;
end;

procedure TMain.N114Click(Sender: TObject);
var
  sei: TShellExecuteInfo;
begin
  FillChar(sei, SizeOf(sei), 0);
  sei.cbSize := SizeOf(sei);
  sei.lpFile := PChar(MyFileName);
  sei.lpVerb := 'properties';
  sei.fMask := SEE_MASK_INVOKEIDLIST;
  ShellExecuteEx(@sei);
end;

procedure TMain.JvTimer1Timer(Sender: TObject);
begin
  Status.Panels.Items[0].Text := Format('%d:%d', [Edit.CaretY, Edit.CaretX]);
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
        MySaveFile(MyFileName, curcp, 1);
        prev := FileAge(MyFileName);
      end;
      prevnoex := True;
    end;
  end;
end;

procedure TMain.JvTimer4Timer(Sender: TObject);
var
  cpa, fe, fm ,lc, nro, stxt, rtxt, sav, cun, cre: Boolean;
  capt: string;
begin
  fm := Edit.Modified;
  fe := FileExists(MyFileName);
  lc := (Edit.Lines.Count > 0);
  nro := not Edit.ReadOnly;
  sav := Edit.SelAvail;
  cpa := Edit.CanPaste;
  cun := Edit.CanUndo and nro;
  cre := Edit.CanRedo and nro;
  stxt := not (gsSearchText = '');
  rtxt := not (gsReplaceText = '');
  N4.Enabled := fe and fm and nro;
  N7.Enabled := lc;
  N11.Enabled := cun;
  N12.Enabled := cre;
  N14.Enabled := lc;
  N15.Enabled := sav;
  N16.Enabled := cpa and nro;
  N17.Enabled := sav and nro;
  N18.Enabled := rtxt and nro;
  N19.Enabled := cun;
  N20.Enabled := cre;
  N22.Enabled := sav and nro;
  N23.Enabled := sav;
  N24.Enabled := cpa and nro;
  N25.Enabled := lc;
  N27.Enabled := stxt;
  N28.Enabled := stxt;
  N29.Enabled := nro;
  N30.Enabled := sav and cpa;
  N33.Enabled := rtxt and nro;
  N36.Enabled := lc;
  N37.Enabled := sav;
  N39.Enabled := lc;
  N44.Enabled := fe;
  N45.Enabled := lc;
  N46.Enabled := cpa;
  N55.Enabled := sav and cpa;
  N56.Enabled := cpa and sav and nro;
  N57.Enabled := lc and nro;
  N59.Enabled := lc and nro;
  N65.Enabled := cpa and sav and nro;
  N66.Enabled := lc and nro;
  N71.Enabled := sav and nro;
  N72.Enabled := sav and nro;
  N76.Enabled := sav and nro;
  N77.Enabled := nro;
  N80.Enabled := fe;
  N85.Enabled := lc and nro;
  N88.Enabled := nro;
  N90.Enabled := sav;
  N95.Enabled := lc and nro;
  N96.Enabled := cpa;
  N100.Enabled := fe;
  N102.Enabled := fe;
  N104.Enabled := fe;
  N114.Enabled := fe;
  N119.Enabled := fe;
  N124.Enabled := fe;
  N127.Enabled := Recent.Strings.Count > 0;
  N163.Enabled := fe;
  N168.Enabled := lc;
  if fe then begin
    if ExtractFilePath(MyFileName) = ''
    then capt := appath + MyFileName+ ' - BirEdit'
    else capt := MyFileName + ' - BirEdit';
  end else begin
    capt := myunk + ' - BirEdit';
    Status.Panels.Items[2].Text := '';
  end;
  if fm then capt := '* ' + capt;
  if nro = False then capt := capt + ' [' + mysn5 + ']';
  Caption := capt;
  JvTrayIcon1.Hint := Caption;
end;

procedure TMain.JvDragDrop1Drop(Sender: TObject; Pos: TPoint; Value: TStrings);
begin
  MyScanDropFiles(Value);
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
        PChar('"' + appath + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N124Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', PChar(MyFileName), nil,
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N132Click(Sender: TObject);
begin
  Recent.Clear;
end;

procedure TMain.N130Click(Sender: TObject);
begin
  Recent.RemoveInvalid;
end;

procedure TMain.N80Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', 'rundll32.exe',
                 PChar('shell32.dll,OpenAs_RunDLL ' + MyFileName),
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N100Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := ExtractFileName(MyFileName);
  if psafc then Edit.CaretXY := bs;
end;

procedure TMain.N102Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := MyFileName;
  if psafc then Edit.CaretXY := bs;
end;

initialization
  ExcValsEdit := TStringList.Create;
  ExcValsGut := TStringList.Create;
  ExcValsPrint := TStringList.Create;
  ExcValsPrintM := TStringList.Create;
  try
    ExcValsEdit.Add('Align');
    ExcValsEdit.Add('Ctl3D');
    ExcValsEdit.Add('Cursor');
    ExcValsEdit.Add('Enabled');
    ExcValsEdit.Add('Gutter');
    ExcValsEdit.Add('Height');
    ExcValsEdit.Add('HelpContext');
    ExcValsEdit.Add('HelpKeyword');
    ExcValsEdit.Add('HelpType');
    ExcValsEdit.Add('Highlighter');
    ExcValsEdit.Add('Hint');
    ExcValsEdit.Add('ImeMode');
    ExcValsEdit.Add('ImeName');
    ExcValsEdit.Add('Keystrokes');
    ExcValsEdit.Add('Left');
    ExcValsEdit.Add('Lines');
    ExcValsEdit.Add('Name');
    ExcValsEdit.Add('ParentColor');
    ExcValsEdit.Add('ParentCtl3D');
    ExcValsEdit.Add('ParentCustomHint');
    ExcValsEdit.Add('ParentFont');
    ExcValsEdit.Add('ParentShowHint');
    ExcValsEdit.Add('PopupMenu');
    ExcValsEdit.Add('ShowHint');
    ExcValsEdit.Add('TabOrder');
    ExcValsEdit.Add('TabStop');
    ExcValsEdit.Add('Tag');
    ExcValsEdit.Add('Top');
    ExcValsEdit.Add('Visible');
    ExcValsEdit.Add('WantReturns');
    ExcValsEdit.Add('WantTabs');
    ExcValsEdit.Add('Width');
    ExcValsGut.Add('Cursor');
    ExcValsPrint.Add('DocTitle');
    ExcValsPrint.Add('Lines');
    ExcValsPrint.Add('Margins');
    ExcValsPrint.Add('Name');
    ExcValsPrint.Add('Tag');
    ExcValsPrint.Add('Title');
    ExcValsPrintM.Add('UnitSystem');
  except
    RaiseLastOSError;
    Application.Terminate;
  end;

finalization
  ExcValsEdit.Free;
  ExcValsGut.Free;
  ExcValsPrint.Free;
  ExcValsPrintM.Free;

end.
