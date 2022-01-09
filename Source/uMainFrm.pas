{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2010 Alexey Tatuyko

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


The Original Code is uMainFrm.pas by Alexey Tatuyko, released 2010-11-18.
All Rights Reserved.

$Id: uMainFrm.pas, v 2.0.2.63 2010/11/18 12:49:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uMainFrm;

interface

uses
  Windows, Messages, ComCtrls, Dialogs, Menus, Classes, Controls, Forms,
  Graphics, SysUtils, ExtCtrls, ShellAPI, Clipbrd, IniFiles, CheckLst, ExtDlgs,
  StdCtrls, ActnList, Printers, Registry, ShlObj,
  {$IFNDEF UNICODE}WideStrings,{$ENDIF}
  JvTimer, JvComponentBase, JvDragDrop, JvTrayIcon, JvWinDialogs,
  JvMRUManager,
  SynEdit, {$IFNDEF UNICODE}SynUnicode,{$ENDIF}
  SynEditPrint, SynEditTypes, SynEditPrintTypes, SynEditRegexSearch,
  SynEditSearch,
  SynEditMiscClasses, SynEditHighlighter, SynHighlighterCpp,
  SynHighlighterEiffel, SynHighlighterFortran, SynHighlighterJava,
  SynHighlighterGeneral, SynHighlighterM3, SynHighlighterVB,
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
  TMain = class(TForm)
    Edit: TSynEdit;
    MainMenu: TMainMenu;
    Popup1: TPopupMenu;
    Status: TStatusBar;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
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
    N141: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N31: TMenuItem;
    N48: TMenuItem;
    N51: TMenuItem;
    N32: TMenuItem;
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
    N44: TMenuItem;
    N47: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N58: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
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
    N166: TMenuItem;
    N167: TMenuItem;
    N168: TMenuItem;
    N7: TMenuItem;
    N165: TMenuItem;
    N169: TMenuItem;
    N170: TMenuItem;
    N78: TMenuItem;
    N8: TMenuItem;
    JvTimer1: TJvTimer;
    JvTimer3: TJvTimer;
    JvTimer4: TJvTimer;
    JvDragDrop1: TJvDragDrop;
    SynEditRegexSearch1: TSynEditRegexSearch;
    SynEditSearch1: TSynEditSearch;
    Recent: TJvMRUManager;
    N171: TMenuItem;
    N173: TMenuItem;
    N174: TMenuItem;
    N175: TMenuItem;
    N176: TMenuItem;
    N52: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure JvDragDrop1Drop(Sender: TObject; Pos: TPoint;
      Value: TStrings);
    procedure JvTimer1Timer(Sender: TObject);
    procedure JvTimer3Timer(Sender: TObject);
    procedure JvTimer4Timer(Sender: TObject);
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
    procedure N30Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N132Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
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
    procedure N38Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure RecentClick(Sender: TObject; const RecentName, Caption: string;
      UserData: Integer);
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
    procedure N78Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N173Click(Sender: TObject);
    procedure N174Click(Sender: TObject);
    procedure N175Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fSearchFromCaret, gbSearchBackwards, gbSearchCaseSensitive,
    gbSearchFromCaret, gbSearchRegex, gbSearchSelectionOnly, prevnoex,
    gbSearchWholeWords, gbTempSearchBackwards: Boolean;
    gsReplaceText, gsReplaceTextHistory, gsSearchText, gsSearchTextHistory,
    MyFileName, appath: string;
    prev, curcp: Integer;
    myfsize: Int64;
    BEPlugList: TStrings;
    BESyn: TSynCustomHighlighter;
    jvtic: TJvTrayIcon;
    function MyGetAppDataPath: string;
    function SaveDlgExec: Boolean;
    procedure MyLoadSettings;
    procedure MySaveSettings;
    procedure ShowTrayIcon;
    procedure AddToClipboard;
    procedure ChangeClipboard;
    procedure ClickPlugItem(Sender: TObject);
    procedure DoSearchReplaceText(AReplace, ABackwards: Boolean);
    procedure ShowSearchReplaceDialog(AReplace: Boolean);
    procedure FindExecute;
    procedure FindAgainExecute;
    procedure FindBackwardsExecute;
    procedure ItemClick(Sender: TObject);
    procedure LoadAppLoc;
    procedure LoadPlugsList;
    procedure LoadTranslate(const lang: string);
    procedure MyLoadLoc(AWnd: TForm; mysect: string; dftitle: Boolean);
    procedure MySaveFile(SaveFileName: TFileName; seId, fid: Integer);
    procedure ReplaceExecute;
    procedure ReplaceAgainExecute;
    procedure ReplaceBackwardsExecute;
    procedure WorkParams;
    procedure MySaveToFile(const FileName: TFileName; seid, fid: Integer);
    procedure MySetSynByFid(fid: ShortInt);
    procedure MySetSynByExt(fExt: string);
    procedure MyScanDropFiles(const fValues: TStrings);
    procedure MyShowDroppedDlg(const fValues: TStrings);
    procedure MyOpenDropped(const FileName: TFileName);
    {$IFDEF UNICODE}
    procedure EditDropFiles(Sender: TObject; X, Y: Integer; AFiles: TStrings);
    procedure EditReplaceText(Sender: TObject; const ASearch, AReplace: string;
      Line, Column: Integer; var Action: TSynReplaceAction);
    procedure MyLoadFromFile(const FileName: TFileName; Encoding: TEncoding);
    procedure MyOpenFile(OpenFileName: TFileName; Encoding: TEncoding;
                           fd: Byte);
    procedure MySaveToFileEnc(const FileName: TFileName; Encoding: TEncoding);
    {$ELSE}
    procedure EditDropFiles(Sender: TObject; X, Y: Integer;
                              AFiles: TUnicodeStrings);
    procedure EditReplaceText(Sender: TObject; const ASearch,
                                AReplace: WideString; Line, Column: Integer;
                                var Action: TSynReplaceAction);
    procedure MyLoadFromFile(const FileName: TFileName; Encoding: Byte);
    procedure MyOpenFile(OpenFileName: TFileName; Encoding, fd: Byte);
    procedure MySaveToFileEnc(const FileName: TFileName; Encoding: Byte);
    {$ENDIF}
    procedure MyOpenFileWosf(OpenFileName: TFileName; fd: Byte);
    procedure DoUnAssoc;
  end;

const
   BEFileFilter: array [0..51] of string = ('All files (*.*)|*.*',
   '|C/C++ files (*.c;*.cpp;*.cc;*.h;*.hpp;*.hh;*.cxx;*.hxx;*.cu)|*.c;*.cpp;*.cc;*.h;*.hpp;*.hh;*.cxx;*.hxx;*.cu',
   '|Eiffel (*.e;*.ace)|*.e;*.ace', '|Fortran files (*.for)|*.for',
   '|Java files (*.java)|*.java', '|Modula-3 files (*.m3)|*.m3',
   '|Pascal files (*.pas;*.pp;*.dpr;*.dpk;*.inc)|*.pas;*.pp;*.dpr;*.dpk;*.inc',
   '|Visual Basic files (*.bas)|*.bas',
   '|COBOL files (*.cbl;*.cob)|*.cbl;*.cob', '|C# files (*.cs)|*.cs',
   '|Cascading Stylesheets (*.css)|*.css',
   '|HTML Documents (*.htm;*.html)|*.htm;*.html',
   '|Javascript files (*.js)|*.js',
   '|PHP files (*.php;*.php3;*.phtml;*.inc)|*.php;*.php3;*.phtml;*.inc',
   '|VBScript files (*.vbs)|*.vbs',
   '|XML files (*.xml;*.xsd;*.xsl;*.xslt;*.dtd)|*.xml;*.xsd;*.xsl;*.xslt;*.dtd',
   '|Vrml97/X3D World (*.wrl;*.wrml;*.vrl;*.vrml;*.x3d)|*.wrl;*.wrml;*.vrl;*.vrml;*.x3d',
   '|AWK Scripts (*.awk)|*.awk',
   '|MS-DOS Batch files (*.bat;*.cmd)|*.bat;*.cmd',
   '|KiXtart Scripts (*.kix)|*.kix',
   '|Perl files (*.pl;*.pm;*.cgi)|*.pl;*.pm;*.cgi',
   '|Python files (*.py)|*.py', '|Tcl/Tk files (*.tcl)|*.tcl',
   '|GW-TEL Scripts (*.gws)|*.gws', '|Ruby files (*.rb;*.rbw)|*.rb;*.rbw',
   '|UNIX Shell Scripts (*.sh)|*.sh',
   '|CA-Clipper files (*.prg;*.ch;*.inc)|*.prg;*.ch;*.inc',
   '|Cache files (*.mac;*.inc;*.int)|*.mac;*.inc;*.int',
   '|Foxpro files (*.prg)|*.prg', '|SQL files (*.sql)|*.sql',
   '|Semanta DD files (*.sdd)|*.sdd', '|DSP files (*.dsp;*.inc)|*.dsp;*.inc',
   '|x86 Assembly files (*.asm)|*.asm',
   '|68HC11 Assembler files (*.hc11;*.asm;*.asc)|*.hc11;*.asm;*.asc',
   '|Structured Text files (*.st)|*.st',
   '|GEMBASE files (*.dml;*.gem)|*.dml;*.gem',
   '|Modelica files (*.mo)|*.mo', '|Standard ML files (*.sml)|*.sml',
   '|Borland Form files (*.dfm;*.xfm)|*.dfm;*.xfm', '|INI files (*.ini)|*.ini',
   '|Inno Setup Scripts (*.iss)|*.iss', '|Baan 4GL files (*.cln)|*.cln',
   '|Galaxy files (*.gtv;*.galrep;*.txt)|*.gtv;*.galrep;*.txt',
   '|Progress files (*.w;*.p;*.i)|*.w;*.p;*.i', '|Msg files (*.msg)|*.msg',
   '|CORBA IDL files (*.idl)|*.idl',
   '|CPM Reports (*.rdf;*.rif;*.rmf;*.rxf)|*.rdf;*.rif;*.rmf;*.rxf',
   '|TeX files (*.tex)|*.tex', '|Haskell files (*.hs;*.lhs)|*.hs;*.lhs',
   '|LEGO LDraw files (*.ldr)|*.ldr',
   '|DOT Graph Drawing Description (*.dot)|*.dot',
   '|Resource files (*.rc)|*.rc');

   BEFileExtensions: array [0..91] of string = ('.ace', '.asc', '.asm', '.awk',
   '.bas', '.bat', '.c', '.cbl', '.cc', '.cgi', '.ch', '.cln', '.cmd', '.cob',
   '.cpp', '.cs', '.css', '.cu', '.cxx', '.dfm', '.dml', '.dot', '.dpk', '.dpr',
   '.dsp', '.dtd', '.e', '.for', '.galrep', '.gem', '.gtv', '.gws', '.h',
   '.hc11', '.hh', '.hpp', '.hs', '.htm', '.html', '.hxx', '.i', '.idl', '.inc',
   '.ini', '.int', '.iss', '.java', '.js', '.kix', '.ldr', '.lhs', '.m3',
   '.mac', '.mo', '.msg', '.p', '.pas', '.php', '.php3', '.phtml', '.pl', '.pm',
   '.pp', '.prg', '.py', '.rb', '.rbw', '.rc', '.rdf', '.rif', '.rmf', '.rxf',
   '.sdd', '.sh', '.sml', '.sql', '.st', '.tcl', '.tex', '.txt', '.vbs', '.vrl',
   '.vrml', '.w', '.wrl', '.wrml', '.x3d', '.xfm', '.xml', '.xsd', '.xsl',
   '.xslt');

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

  bor: record
    drag,                    //  enable JvDragAndDrop
    port,                    //  enable portable mode
    ptac,                    //  paste text after caret
    sdfl,                    //  scan dropped folders
    sdsf,                    //  scan dropped sub-folders
    ssbp,                    //  show status bar
    synh,                    //  use syntax highlight
    tray,                    //  show tray icon
    enal,                    //  enable active line highlight
    mn_wnst,                 //  TForm.WindowState
    ed_insm,                 //  TSynEdit.InsertMode
    ed_reon,                 //  TSynEdit.ReadOnly
    ed_shft,                 //  TSynEdit.ScrollHintFormat
    ed_wrap,                 //  TSynEdit.WordWrap
    eg_asiz,                 //  TSynEdit.Gutter.AutoSize
    eg_grad,                 //  TSynEdit.Gutter.Gradient
    eg_ldzr,                 //  TSynEdit.Gutter.LeadingZeros
    eg_shln,                 //  TSynEdit.Gutter.ShowLineNumbers
    eg_ufst,                 //  TSynEdit.Gutter.UseFontStyle
    eg_vsbl,                 //  TSynEdit.Gutter.Visible
    eg_zrst,                 //  TSynEdit.Gutter.ZeroStart
    ew_vsbl,                 //  TSynEdit.WordWrapGlyph.Visible
    pr_clrs,                 //  TSynEditPrint.Colors
    pr_high,                 //  TSynEditPrint.Highlight
    pr_lnum,                 //  TSynEditPrint.LineNumbers
    pr_lnim: Boolean;        //  TSynEditPrint.LineNumbersInMargin
    ed_insc,                 //  TSynEdit.InsertCaret
    ed_owrc,                 //  TSynEdit.OverwriteCaret
    ed_selm,                 //  TSynEdit.SelectionMode
    ef_chrs,                 //  TSynEdit.Font.Charset
    ef_ptch,                 //  TSynEdit.Font.Pitch
    ef_styl,                 //  TSynEdit.Font.Style
    eg_bstl,                 //  TSynEdit.Gutter.BorderStyle
    eg_fchr,                 //  TSynEdit.Gutter.Font.Charset
    eg_fptc,                 //  TSynEdit.Gutter.Font.Pitch
    eg_fstl: Byte;           //  TSynEdit.Gutter.Font.Style
    lang,                    //  GUI language
    ef_name,                 //  TSynEdit.Font.Name
    eg_fnam: string;         //  TSynEdit.Gutter.Font.Name
    mn_hght,                 //  TForm.Height
    mn_left,                 //  TForm.Left
    mn_wdth,                 //  TForm.Width
    mn__top,                 //  TForm.Top
    rfcl,                    //  recent files count limit
    ed_alic,                 //  TSynEdit.ActiveLineColor
    ed_colr,                 //  TSynEdit.Color
    ed_exls,                 //  TSynEdit.ExtraLineSpacing
    ed_mxsw,                 //  TSynEdit.MaxScrollWidth
    ed_mxun,                 //  TSynEdit.MaxUndo
    ed_opts,                 //  TSynEdit.Options
    ed_recl,                 //  TSynEdit.RightEdgeColor
    ed_redg,                 //  TSynEdit.RightEdge
    ed_shcl,                 //  TSynEdit.ScrollHintColor
    ed_tabw,                 //  TSynEdit.TabWidth
    ef_colr,                 //  TSynEdit.Font.Color
    ef_hght,                 //  TSynEdit.Font.Height
    ef_ornt,                 //  TSynEdit.Font.Orientation
    ef_size,                 //  TSynEdit.Font.Size
    eg_bclr,                 //  TSynEdit.Gutter.Color
    eg_colr,                 //  TSynEdit.Gutter.DigitCount
    eg_dcnt,                 //  TSynEdit.Gutter.BorderColor
    eg_gecl,                 //  TSynEdit.Gutter.GradientEndColor
    eg_gscl,                 //  TSynEdit.Gutter.GradientStartColor
    eg_gstp,                 //  TSynEdit.Gutter.GradientSteps
    eg_lnst,                 //  TSynEdit.Gutter.LineNumberStart
    eg_wdth,                 //  TSynEdit.Gutter.Width
    eg_fclr,                 //  TSynEdit.Gutter.Font.Color
    eg_fhgt,                 //  TSynEdit.Gutter.Font.Height
    eg_fort,                 //  TSynEdit.Gutter.Font.Orientation
    eg_fsiz,                 //  TSynEdit.Gutter.Font.Size
    es_back,                 //  TSynEdit.SelectedColor.Background
    es_frnt,                 //  TSynEdit.SelectedColor.Foreground
    ew_mscl,                 //  TSynEdit.WordWrapGlyph.MaskColor
    pr_colr,                 //  TSynEditPrint.Color
    pr_cops: Integer;        //  TSynEditPrint.Copies
    pr_mbtm,                 //  TSynEditPrint.Margins.Bottom
    pr_mlft,                 //  TSynEditPrint.Margins.Left
    pr_mrgt,                 //  TSynEditPrint.Margins.Right
    pr_mtop: Extended;       //  TSynEditPrint.Margins.Top
  end;

implementation

uses
  uAboutDlg, uSearchDlg, uReplaceDlg, uEncloseSelDlg, uConfirmReplaceDlg,
  uSettingsDlg, uGoTo, uDropped, uPrintPreview, uFileAssocDlg;

{$R *.DFM}

function MyBytesToStr(const mfSize: Int64): string;
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
  else Result := IntToStr(mfSize) + ' ' + mysn4;
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
  {$IFDEF UNICODE}
  case N44.IndexOf(Sender as TMenuItem) of
    0: MyOpenFile(MyFileName, nil, 1);
    1: MyOpenFile(MyFileName, TEncoding.Default, 1);
    2: MyOpenFile(MyFileName, TEncoding.ASCII, 1);
    3: MyOpenFile(MyFileName, TEncoding.Unicode, 1);
    4: MyOpenFile(MyFileName, TEncoding.BigEndianUnicode, 1);
    5: MyOpenFile(MyFileName, TEncoding.UTF8, 1);
    6: MyOpenFile(MyFileName, TEncoding.UTF7, 1);
  end;
  {$ELSE}
  case N44.IndexOf(Sender as TMenuItem) of
    0: MyOpenFile(MyFileName, 4, 1);
    1: MyOpenFile(MyFileName, 3, 1);
    3..5: MyOpenFile(MyFileName, N44.IndexOf(Sender as TMenuItem) - 3, 1);
  end;
  {$ENDIF}
end;

procedure TMain.MySetSelMode(Sender: TObject);
begin
  Edit.SelectionMode := TSynSelectionMode(N40.IndexOf(Sender as TMenuItem));
  bor.ed_selm := Byte(Edit.SelectionMode);
  N40.Items[bor.ed_selm].Checked := True;
  MySaveSettings;
end;

procedure TMain.MySetSyn(Sender: TObject);
begin
  MySetSynByFid(N74.IndexOf(Sender as TMenuItem));
end;

procedure TMain.MyOpenDropped(const FileName: TFileName);
begin
  if Edit.Modified then begin
    case MessageBox(Self.Handle, PChar(mysg7), 'BirEdit', MB_YESNOCANCEL
                      + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyOpenFileWosf(FileName, 1);
        end else if SaveDlgExec then MyOpenFileWosf(FileName, 1);
      IDNO: MyOpenFileWosf(FileName, 1);
    end;
  end else MyOpenFileWosf(FileName, 1);
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
        else ShellExecute(Self.Handle, 'open', PChar(ParamStr(0)),
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
      if bor.sdsf then MyScanDir(MyDir + mys.Name);
    until FindNext(mys) <> 0;
    FindClose(mys);
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
          if bor.sdfl
          then MyScanDir(tmpstrs.Strings[i]);
          tmpstrs.Delete(i);
        end else if not (FileExists(tmpstrs.Strings[i])) then tmpstrs.Delete(i);
      end;
      if tmpstrs.Count = 1 then MyOpenDropped(tmpstrs.Strings[0]) else
      if tmpstrs.Count > 1 then MyShowDroppedDlg(tmpstrs);
    finally
      FreeAndNil(tmpstrs);
    end;
  end;
end;

{$IFDEF UNICODE}
procedure TMain.EditDropFiles(Sender: TObject; X, Y: Integer; AFiles: TStrings);
{$ELSE}
procedure TMain.EditDropFiles(Sender: TObject; X, Y: Integer;
                                AFiles: TUnicodeStrings);
var
  tstrs: TStrings;
{$ENDIF}
begin
  {$IFDEF UNICODE}
  MyScanDropFiles(AFiles);
  {$ELSE}
  tstrs := TStringList.Create;
  try
    AFiles.SaveFormat := sfAnsi;
    tstrs.Text := AFiles.Text;
    MyScanDropFiles(tstrs);
  finally
    tstrs.Free;
  end;
  {$ENDIF}
end;

{$IFDEF UNICODE}
procedure TMain.MyLoadFromFile(const FileName: TFileName; Encoding: TEncoding);
var
  Size, LineBreakLen: Integer;
  P, Start, LB: PChar;
  S: string;
  Buffer: TBytes;
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    Edit.Lines.BeginUpdate;
    try
      Size := Stream.Size - Stream.Position;
      SetLength(Buffer, Size);
      Stream.Read(Buffer[0], Size);
      Size := TEncoding.GetBufferEncoding(Buffer, Encoding);
      Edit.Lines.Clear;
      P := Pointer(Encoding.GetString(Buffer, Size, Length(Buffer) - Size));
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
      if Encoding = Encoding.Unicode then curcp := 2 else
      if Encoding = Encoding.BigEndianUnicode then curcp := 3 else
      if Encoding = Encoding.UTF8 then curcp := 4 else
      if Encoding = Encoding.UTF7 then curcp := 5 else
      if Encoding = Encoding.ASCII then curcp := 1 else curcp := 0;
    finally
      Edit.Lines.EndUpdate;
    end;
    myfsize := Stream.Size;
    MyFileName := FileName;
  finally
    FreeAndNil(Stream);
  end;
end;
{$ELSE}
procedure TMain.MyLoadFromFile(const FileName: TFileName; Encoding: Byte);
var
  ByteOrderMask: array[0..5] of Byte;
  Size, BytesRead: Integer;
  SA: AnsiString;
  SW: UnicodeString;
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyNone);
  try
    Edit.Lines.BeginUpdate;
    try
      Size := Stream.Size - Stream.Position;
      BytesRead := Stream.Read(ByteOrderMask[0], SizeOf(ByteOrderMask));
      if not (Encoding in [0..3]) then begin
        if (BytesRead >= 2) and (ByteOrderMask[0] = UTF16BOMLE[0])
               and (ByteOrderMask[1] = UTF16BOMLE[1])
        then Encoding := 0;
        if (BytesRead >= 2) and (ByteOrderMask[0] = UTF16BOMBE[0])
               and (ByteOrderMask[1] = UTF16BOMBE[1])
        then Encoding := 1;
        if (BytesRead >= 3) and (ByteOrderMask[0] = UTF8BOM[0])
               and (ByteOrderMask[1] = UTF8BOM[1])
               and (ByteOrderMask[2] = UTF8BOM[2])
        then Encoding := 2;
        if not (Encoding in [0..3]) then Encoding := 3;
      end;
      case Encoding of
        0: begin
             SetLength(SW, (Size - 2) div SizeOf(WideChar));
             Assert((Size and 1) <> 1,
                      'Number of chars must be a multiple of 2');
             if BytesRead > 2 then begin
               System.Move(ByteOrderMask[2], SW[1], BytesRead - 2); 
               if Size > BytesRead then Stream.Read(SW[3], Size - BytesRead);
             end;
             Edit.Lines.SetTextStr(SW);
           end;
        1: begin
             SetLength(SW, (Size - 2) div SizeOf(WideChar));
             Assert((Size and 1) <> 1,
                     'Number of chars must be a multiple of 2');
             if BytesRead > 2 then begin
               System.Move(ByteOrderMask[2], SW[1] ,BytesRead - 2);
               if Size > BytesRead then Stream.Read(SW[3], Size - BytesRead);
               StrSwapByteOrder(PWideChar(SW));
             end;
             Edit.Lines.SetTextStr(SW);
           end;
        2: begin
             SetLength(SA, (Size - 3) div SizeOf(AnsiChar));
             if BytesRead > 3 then begin
               System.Move(ByteOrderMask[3], SA[1], BytesRead - 3);
               if Size > BytesRead then Stream.Read(SA[4], Size - BytesRead);
               SW := UTF8Decode(SA);
             end;
             Edit.Lines.SetTextStr(SW);
           end;
        else begin
          SetLength(SA, Size div SizeOf(AnsiChar));
          if BytesRead > 0 then begin
            System.Move(ByteOrderMask[0], SA[1], BytesRead);
            if Size > BytesRead then Stream.Read(SA[7], Size - BytesRead);
          end;
          Edit.Lines.SetTextStr(SA);
        end;
      end;
      curcp := Encoding;
    finally
      Edit.Lines.EndUpdate;
    end;
    myfsize := Stream.Size;
    MyFileName := FileName;
  finally
    FreeAndNil(Stream);
  end;
end;
{$ENDIF}

{$IFDEF UNICODE}
procedure TMain.MyOpenFile(OpenFileName: TFileName; Encoding: TEncoding; fd: Byte);
{$ELSE}
procedure TMain.MyOpenFile(OpenFileName: TFileName; Encoding: Byte; fd: Byte);
{$ENDIF}
begin
  if ExtractFilePath(OpenFileName) = ''
  then OpenFileName := appath + OpenFileName;
  Edit.ClearAll;
  try
    MyLoadFromFile(OpenFileName, Encoding);
    if bor.synh then begin
      if (fd > 1) and (fd <=52) then MySetSynByFid(fd - 1)
      else MySetSynByExt(ExtractFileExt(OpenFileName));
    end else MySetSynByFid(-1);
  except
    MessageBox(Self.Handle, PChar(mysg1), 'BirEdit', MB_OK+MB_ICONSTOP);
    MyFileName := '';
    myfsize := 0;
    {$IFDEF UNICODE}
    curcp := 0;
    {$ELSE}
    curcp := 3;
    {$ENDIF}
    if bor.synh then MySetSynByFid(0) else MySetSynByFid(-1);
  end;
  Status.Panels.Items[2].Text := MyBytesToStr(myfsize);
  Recent.Add(OpenFileName, 0);
  prev := FileAge(OpenFileName);
end;

{$IFDEF UNICODE}
procedure TMain.MySaveToFileEnc(const FileName: TFileName; Encoding: TEncoding);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmCreate);
  try
    Edit.Lines.SaveToStream(Stream, Encoding);
    MyFileName := FileName;
    myfsize := Stream.Size;
    Edit.Modified := False;
  finally
    FreeAndNil(Stream);
  end;
end;
{$ELSE}
procedure TMain.MySaveToFileEnc(const FileName: TFileName; Encoding: Byte);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmCreate);
  try
    Edit.Lines.SaveFormat := TSaveFormat(Encoding);
    Edit.Lines.SaveToStream(Stream);
    MyFileName := FileName;
    myfsize := Stream.Size;
    Edit.Modified := False;
  finally
    FreeAndNil(Stream);
  end;
end;
{$ENDIF}

procedure TMain.MySaveToFile(const FileName: TFileName; seid, fid: Integer);
begin
  try
    {$IFDEF UNICODE}
    case seid of
      1: MySaveToFileEnc(FileName, TEncoding.ASCII);
      2: MySaveToFileEnc(FileName, TEncoding.Unicode);
      3: MySaveToFileEnc(FileName, TEncoding.BigEndianUnicode);
      4: MySaveToFileEnc(FileName, TEncoding.UTF8);
      5: MySaveToFileEnc(FileName, TEncoding.UTF7);
      else MySaveToFileEnc(FileName, nil);
    end;
    {$ELSE}
    MySaveToFileEnc(FileName, seid);
    {$ENDIF}
    curcp := seid;
    if bor.synh then begin
      if (fid > 1) and (fid <= 52) then MySetSynByFid(fid - 1)
      else MySetSynByExt(ExtractFileExt(FileName));
    end else MySetSynByFid(-1);
  except
    {$IFDEF UNICODE}
    curcp := 0;
    {$ELSE}
    curcp := 3;
    {$ENDIF}
    Edit.Modified := True;
    if bor.synh then MySetSynByFid(0) else MySetSynByFid(-1);
  end;
  Status.Panels.Items[2].Text := MyBytesToStr(myfsize);
end;

procedure TMain.MySaveFile(SaveFileName: TFileName; seId, fid: Integer);
begin
  if ExtractFilePath(SaveFileName) = ''
  then SaveFileName := appath + SaveFileName;
  if FileExists(SaveFileName) then begin
    if FileIsReadOnly(SaveFileName) then begin
      if MessageBox(Self.Handle, PChar(mysg3), 'BirEdit', MB_YESNO
                      + MB_ICONQUESTION) = IDYES
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

function TMain.SaveDlgExec: Boolean;
var
  i: Byte;
  dlg: TSaveTextFileDialog;
begin
  Result := False;
  dlg := TSaveTextFileDialog.Create(Self);
  try
    dlg.Ctl3D := True;
    dlg.Options := [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing];
    dlg.Encodings.Clear;
    {$IFDEF UNICODE}
    dlg.Encodings.Add('Ansi');
    dlg.Encodings.Add('ASCII');
    dlg.Encodings.Add('UTF-16 little endian');
    dlg.Encodings.Add('UTF-16 big endian');
    dlg.Encodings.Add('UTF-8');
    dlg.Encodings.Add('UTF-7');
    {$ELSE}
    dlg.Encodings.Add('UTF-16 little endian');
    dlg.Encodings.Add('UTF-16 big endian');
    dlg.Encodings.Add('UTF-8');
    dlg.Encodings.Add('Ansi');
    {$ENDIF}
    dlg.EncodingIndex := 0;
    for I := 0 to 51 do dlg.Filter := dlg.Filter + BEFileFilter[i];
    dlg.FilterIndex := 0;
    dlg.FileName := myunk + '.txt';
    if dlg.Execute then begin
      dlg.FileName := MyExtByFilter(dlg.FilterIndex, dlg.FileName);
      MySaveFile(dlg.FileName, dlg.EncodingIndex, dlg.FilterIndex);
      Result := True;
    end;
  finally
    FreeAndNil(dlg);
  end;
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
  if FileExists(appath + 'lang\' + bor.lang)
  then begin
    lnini := TIniFile.Create(appath + 'lang\' + bor.lang);
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
    FreeAndNil(lnini);
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
var
  Options: TSynSearchOptions;
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
    MessageBox(Self.Handle, PChar(mysg2), 'BirEdit', MB_OK+MB_ICONINFORMATION);
    if ssoBackwards in Options then Edit.BlockEnd := Edit.BlockBegin
    else Edit.BlockBegin := Edit.BlockEnd;
    Edit.CaretXY := Edit.BlockBegin;
  end;
  if ConfirmReplace <> nil then ConfirmReplace.Free;
end;

{$IFDEF UNICODE}
procedure TMain.EditReplaceText(Sender: TObject; const ASearch,
  AReplace: string; Line, Column: Integer; var Action: TSynReplaceAction);
{$ELSE}
procedure TMain.EditReplaceText(Sender: TObject; const ASearch,
  AReplace: WideString; Line, Column: Integer; var Action: TSynReplaceAction);
{$ENDIF}
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
    then ConfirmReplace := TConfirmReplace.Create(Self);
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
  N44.Caption := langini.ReadString('Main', '84', 'Encoding');
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
  N78.Caption := langini.ReadString('Main', '101', 'Copy filepath');
  N8.Caption := langini.ReadString('Main', '102', 'Encoding identifier');
  N174.Caption := langini.ReadString('Main', '103', 'Associations');
  N173.Caption := langini.ReadString('Main', '104', 'Word wrap');
  N175.Caption := langini.ReadString('Main', '105', 'Open all');
  N52.Caption := langini.ReadString('Main', '106', 'Plugins');
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
  N171.Caption := N78.Caption;
  FreeAndNil(langini);
  for I := 1 to N117.Count - 1 do 
    if CompareStr(N117.Items[i].Hint, bor.lang) = 0
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
  N8.Caption := 'Encoding identifier';
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
  N44.Caption := 'Encoding';
  N46.Caption := 'Clear clipboard';
  N48.Caption := 'Color under cursor (RGB)';
  N49.Caption := 'Help';
  N50.Caption := 'About...';
  N51.Caption := 'Font...';
  N52.Caption := 'Plugins';
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
  N78.Caption := 'Copy filepath';
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
  N173.Caption := 'Word wrap';
  N174.Caption := 'Associations';
  N175.Caption := 'Open all';
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
  N171.Caption := N78.Caption;
  bor.lang := '';
  MySaveSettings;
end;

procedure TMain.ItemClick(Sender: TObject);
begin
  with (Sender as TMenuItem) do begin
    bor.lang := Hint;
    if FileExists(appath + 'lang\' + bor.lang) then begin
      LoadTranslate(bor.lang);
      Checked := True;
    end;
    MySaveSettings;
  end;
end;

procedure TMain.MySetSynByFid(fid: ShortInt);
begin
  if BESyn <> nil then FreeAndNil(BESyn);
  case fid of
    0: begin
         BESyn := TSynGeneralSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\default.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    1: begin
         BESyn := TSynCppSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\cpp.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    2: begin
         BESyn := TSynEiffelSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\eiffel.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    3: begin
         BESyn := TSynFortranSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\fortran.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    4: begin
         BESyn := TSynJavaSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\java.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    5: begin
         BESyn := TSynM3Syn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\modula.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    6: begin
         BESyn := TSynPasSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\pascal.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    7: begin
         BESyn := TSynVBSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\vbasic.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    8: begin
         BESyn := TSynCobolSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\cobol.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    9: begin
         BESyn := TSynCSSyn.Create(Self);
         try
           BESyn.LoadFromFile(appath + 'syn\cs.ini');
           Edit.Highlighter := BESyn;
         except
           FreeAndNil(BESyn);
         end;
       end;
    10: begin
          BESyn := TSynCssSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\css.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    11: begin
          BESyn := TSynHTMLSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\html.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    12: begin
          BESyn := TSynJScriptSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\jscript.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    13: begin
          BESyn := TSynPHPSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\php.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    14: begin
          BESyn := TSynVBScriptSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\vbscript.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    15: begin
          BESyn := TSynXMLSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\xml.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    16: begin
          BESyn := TSynVrml97Syn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\vrml.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    17: begin
          BESyn := TSynAWKSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\awk.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    18: begin
          BESyn := TSynBatSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\bat.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    19: begin
          BESyn := TSynKixSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\kixtart.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    20: begin
          BESyn := TSynPerlSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\perl.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    21: begin
          BESyn := TSynPythonSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\python.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    22: begin
          BESyn := TSynTclTkSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\tcltk.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    23: begin
          BESyn := TSynGWScriptSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\gwtel.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    24: begin
          BESyn := TSynRubySyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\ruby.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    25: begin
          BESyn := TSynUNIXShellScriptSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\ushell.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    26: begin
          BESyn := TSynCACSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\caclpr.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    27: begin
          BESyn := TSynCacheSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\cache.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    28: begin
          BESyn := TSynFoxproSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\foxpro.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    29: begin
          BESyn := TSynSQLSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\sql.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    30: begin
          BESyn := TSynSDDSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\sdd.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    31: begin
          BESyn := TSynADSP21xxSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\dsp.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    32: begin
          BESyn := TSynAsmSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\asm.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    33: begin
          BESyn := TSynHC11Syn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\hc11asm.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    34: begin
          BESyn := TSynSTSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\stext.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    35: begin
          BESyn := TSynDmlSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\gembase.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    36: begin
          BESyn := TSynModelicaSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\modelic.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    37: begin
          BESyn := TSynSMLSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\sml.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    38: begin
          BESyn := TSynDfmSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\dfm.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    39: begin
          BESyn := TSynIniSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\ini.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    40: begin
          BESyn := TSynInnoSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\inno.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    41: begin
          BESyn := TSynBaanSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\baan.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    42: begin
          BESyn := TSynGalaxySyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\galaxy.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    43: begin
          BESyn := TSynProgressSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\progress.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    44: begin
          BESyn := TSynMsgSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\msg.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    45: begin
          BESyn := TSynIdlSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\corba.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    46: begin
          BESyn := TSynCPMSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\cpmrep.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    47: begin
          BESyn := TSynTeXSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\tex.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    48: begin
          BESyn := TSynHaskellSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\haskell.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    49: begin
          BESyn := TSynLDRSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\legoldr.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    50: begin
          BESyn := TSynDOTSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\dotgraph.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    51: begin
          BESyn := TSynRCSyn.Create(Self);
          try
            BESyn.LoadFromFile(appath + 'syn\res.ini');
            Edit.Highlighter := BESyn;
          except
            FreeAndNil(BESyn);
          end;
        end;
    else Edit.Highlighter := nil;
  end;
  if fid > -1 then N74.Items[fid].Checked := True;
end;

procedure TMain.MySetSynByExt(fExt: string);
var
  flExt: string;
  flLen: Integer;
begin
  flExt := WideLowerCase(fExt);
  flLen := Length(flExt);
  case flLen of
    2: if (flExt = '.c') or (flExt = '.h') then MySetSynByFid(1) else
       if flExt = '.e' then MySetSynByFid(2) else
       if (flExt = '.w') or (flExt = '.p') or (flExt = '.i')
       then MySetSynByFid(43) else MySetSynByFid(0);
    3: if (flExt = '.cc') or (flExt = '.hh') or (flExt = '.cu')
       then MySetSynByFid(1) else if flExt = '.m3' then MySetSynByFid(5) else
       if flExt = '.pp' then MySetSynByFid(6) else if flExt = '.cs'
       then MySetSynByFid(9) else if flExt = '.js' then MySetSynByFid(12) else
       if (flExt = '.pl') or (flExt = '.pm') then MySetSynByFid(20) else
       if flExt = '.py' then MySetSynByFid(21) else if flExt = '.rb'
       then MySetSynByFid(24) else if flExt = '.sh' then MySetSynByFid(25) else
       if flExt = '.ch' then MySetSynByFid(26) else if flExt = '.st'
       then MySetSynByFid(34) else if flExt = '.mo' then MySetSynByFid(36) else
       if flExt = '.hs' then MySetSynByFid(48) else if flExt = '.rc'
       then MySetSynByFid(51) else MySetSynByFid(0);
    4: if (flExt = '.cpp') or (flExt = '.hpp') or (flExt = '.cxx')
            or (flExt = '.hxx')
       then MySetSynByFid(1) else if flExt = '.ace' then MySetSynByFid(2) else
       if flExt = '.for' then MySetSynByFid(3) else
       if (flExt = '.pas') or (flExt = '.dpr') or (flExt = '.dpk')
            or (flExt = '.inc')
       then MySetSynByFid(6) else if flExt = '.bas' then MySetSynByFid(7) else
       if (flExt = '.cbl') or (flExt = '.cob') then MySetSynByFid(8) else
       if flExt = '.css' then MySetSynByFid(10) else if flExt = '.htm'
       then MySetSynByFid(11) else if flExt = '.php' then MySetSynByFid(13) else
       if flExt = '.vbs' then MySetSynByFid(14) else
       if (flExt = '.xml') or (flExt = '.xsd') or (flExt = '.dtd')
            or (flExt = '.hxx')
       then MySetSynByFid(15) else
       if (flExt = '.wrl') or (flExt = '.vrl') or (flExt = '.x3d')
       then MySetSynByFid(16) else if flExt = '.awk' then MySetSynByFid(17) else
       if (flExt = '.bat') or (flExt = '.cmd') then MySetSynByFid(18) else
       if flExt = '.kix' then MySetSynByFid(19) else if flExt = '.cgi'
       then MySetSynByFid(20) else if flExt = '.tcl' then MySetSynByFid(22) else
       if flExt = '.gws' then MySetSynByFid(23) else if flExt = '.rbw'
       then MySetSynByFid(24) else if (flExt = '.mac') or (flExt = '.int')
       then MySetSynByFid(27) else if flExt = '.prg' then MySetSynByFid(28) else
       if flExt = '.sql' then MySetSynByFid(29) else if flExt = '.sdd'
       then MySetSynByFid(30) else if flExt = '.dsp' then MySetSynByFid(31) else
       if flExt = '.asm' then MySetSynByFid(32) else if flExt = '.asc'
       then MySetSynByFid(33) else if (flExt = '.dml') or (flExt = '.gem')
       then MySetSynByFid(35) else if flExt = '.sml' then MySetSynByFid(37) else
       if (flExt = '.dfm') or (flExt = '.xfm') then MySetSynByFid(38) else
       if flExt = '.ini' then MySetSynByFid(39) else if flExt = '.iss'
       then MySetSynByFid(40) else if flExt = '.cln' then MySetSynByFid(41) else
       if flExt = '.gtv' then MySetSynByFid(42) else if flExt = '.msg'
       then MySetSynByFid(44) else if flExt = '.idl' then MySetSynByFid(45) else
       if (flExt = '.rdf') or (flExt = '.rif') or (flExt = '.rmf')
            or (flExt = '.rxf')
       then MySetSynByFid(46) else if flExt = '.tex' then MySetSynByFid(47) else
       if flExt = '.lhs' then MySetSynByFid(48) else if flExt = '.ldr'
       then MySetSynByFid(49) else if flExt = '.dot' then MySetSynByFid(50)
       else MySetSynByFid(0);
    5: if flExt = '.java' then MySetSynByFid(4) else if flExt = '.html'
       then MySetSynByFid(11) else if flExt = '.php3' then MySetSynByFid(13)
       else if flExt = '.xslt' then MySetSynByFid(15) else
       if (flExt = '.wrml') or (flExt = '.vrml') then MySetSynByFid(16) else
       if flExt = '.hc11' then MySetSynByFid(33) else MySetSynByFid(0);
    6: if flExt = '.phtml' then MySetSynByFid(13) else MySetSynByFid(0);
    7: if flExt = '.galrep' then MySetSynByFid(42) else MySetSynByFid(0);
    else MySetSynByFid(0);
  end;
end;

procedure TMain.WorkParams;
var
  ToCreate, ToDeAssoc, ToPaste, ToPrint, ToQuit: Boolean;
  i: Integer;
  ParamFile: TFileName;
  spr: TSynEditPrint;
begin
  ToCreate := False;
  ToDeAssoc := False;
  ToPaste := False;
  ToPrint := False;
  ToQuit := False;
  for i := 0 to ParamCount do begin
    if not (i = 0) then begin
      if (ParamStr(i)[1]= '/') then begin
        if CompareText(ParamStr(i), '/n') = 0 then ToCreate := True;
        if CompareText(ParamStr(i), '/p') = 0
        then ToPrint := Printer.Printers.Count > 0;
        if CompareText(ParamStr(i), '/c') = 0 then ToPaste := True;
        if CompareText(ParamStr(i), '/q') = 0 then ToQuit := True;
        if CompareText(ParamStr(i), '/u') = 0 then ToDeAssoc := True;
      end else if FileExists(ParamStr(i)) then ParamFile := ParamStr(i);
    end;
  end;
  if ToDeAssoc then DoUnAssoc;
  if ExtractFilePath(ParamFile) = '' then ParamFile := appath + ParamFile;
  if FileExists(ParamFile) then begin
    MyOpenFileWosf(ParamFile, 1);
    if ToPrint then begin
      spr := TSynEditPrint.Create(Self);
      try
        spr.Color := bor.pr_colr;
        spr.Colors := bor.pr_clrs;
        spr.Copies := bor.pr_cops;
        spr.Font.Assign(Edit.Font);
        spr.Header.DefaultFont.Name := 'Courier New';
        spr.Header.DefaultFont.Charset := DEFAULT_CHARSET;
        spr.Header.DefaultFont.Color := clWindowText;
        spr.Header.DefaultFont.Size := 8;
        spr.Header.DefaultFont.Style := [];
        spr.Header.DefaultFont.Height := -11;
        spr.Header.DefaultFont.Orientation := 0;
        spr.Header.DefaultFont.Pitch := fpDefault;
        spr.Header.FrameTypes := [ftBox, ftShaded];
        spr.Header.LineColor := clBlack;
        spr.Header.MirrorPosition := False;
        spr.Header.RomanNumbers := False;
        spr.Header.ShadedColor := clSilver;
        spr.Footer.DefaultFont.Assign(spr.Header.DefaultFont);
        spr.Footer.FrameTypes := [ftLine];
        spr.Footer.LineColor := clBlack;
        spr.Footer.MirrorPosition := False;
        spr.Footer.RomanNumbers := False;
        spr.Footer.ShadedColor := clSilver;
        spr.Highlight := bor.pr_high;
        spr.LineNumbers := bor.pr_lnum;
        spr.LineNumbersInMargin := bor.pr_lnim;
        spr.Margins.Bottom := bor.pr_mbtm;
        spr.Margins.Left := bor.pr_mlft;
        spr.Margins.Right := bor.pr_mrgt;
        spr.Margins.Top := bor.pr_mtop;
        spr.PageOffset := 0;
        spr.SelectedOnly := False;
        spr.TabWidth := bor.ed_tabw;
        spr.SynEdit := Edit;
        spr.Title := MyFileName;
        spr.Wrap := True;
        spr.Print;
      finally
        FreeAndNil(spr);
        if CallTerminateProcs then PostQuitMessage(0);
      end;
    end;
  end else if ToCreate
  then
  {$IFDEF UNICODE}
    MySaveFile(ParamFile, 0, 1);
  {$ELSE}
    MySaveFile(ParamFile, 3, 1);
  {$ENDIF}
  if ToPaste then Edit.PasteFromClipboard;
  if ToQuit then if CallTerminateProcs then PostQuitMessage(0);
end;

procedure TMain.LoadPlugsList;
var
  {$IFDEF UNICODE}
  beplugname: function: PChar;
  {$ELSE}
  beplugname: function: PWideChar;
  {$ENDIF}
  beplugflnm: string;
  behnd: THandle;
  beplugitem: TMenuItem;
  beplugsrch: TSearchRec;
begin
  BEPlugList := TStringList.Create;
  if FindFirst(appath + 'plugins\*.dll', faAnyFile, beplugsrch) = 0 then repeat
    if (beplugsrch.Name = '.') or (beplugsrch.Name = '..') then Continue;
    if not (beplugsrch.Attr and faDirectory) <> 0 then begin
      beplugflnm := appath + 'plugins\' + beplugsrch.Name;
      beplugitem := TMenuItem.Create(N52);
      behnd := LoadLibrary(PChar(beplugflnm));
      if behnd <> 0 then begin
        @beplugname := GetProcAddress(behnd, 'BirEditPlugName');
        if @beplugname <> nil then beplugitem.Caption := beplugname else Exit;
        beplugitem.OnClick := ClickPlugItem;
        N52.Add(beplugitem);
        BEPlugList.Add(beplugflnm);
      end;
      FreeLibrary(behnd);
    end;
  until FindNext(beplugsrch) <> 0;
  FindClose(beplugsrch);
  N52.Visible := BEPlugList.Count > 0;
end;

procedure TMain.ClickPlugItem(Sender: TObject);
var
  beplugexec: function(AObject: TObject): Boolean;
  beplugflnm, beplgtst: string;
  behnd: THandle;
  {$IFDEF UNICODE}
  beplugtype: function: PChar;
  beplugtext: TStrings;
  {$ELSE}
  beplugtype: function: PWideChar;
  beplugtext: TWideStrings;
  {$ENDIF}
begin
  with Sender as TMenuItem do beplugflnm := BEPlugList.Strings[MenuIndex];
  behnd := LoadLibrary(PChar(beplugflnm));
  if behnd <> 0 then begin
    @beplugtype := GetProcAddress(behnd, 'BirEditPlugType');
    @beplugexec := GetProcAddress(behnd, 'BirEditPlugExec');
    if beplugtype = 'BE_EDIT_SELTEXT' then begin
      {$IFDEF UNICODE}
      beplugtext := TStringList.Create;
      {$ELSE}
      beplugtext := TWideStringList.Create;
      {$ENDIF}
      try
        beplugexec(beplugtext);
        beplgtst := beplugtext.Text;
        if Copy(beplgtst, Length(beplgtst) - Length(#13#10) + 1, Length(#13#10))
             = #13#10
        then SetLength(beplgtst, Length(beplgtst) - Length(#13#10));
        Edit.SelText := beplgtst;
      finally
        FreeAndNil(beplugtext);
      end;
    end else if beplugtype = 'BE_EDIT_ALLTEXT' then begin
      {$IFDEF UNICODE}
      beplugtext := TStringList.Create;
      {$ELSE}
      beplugtext := TWideStringList.Create;
      {$ENDIF}
      try
        if Edit.SelAvail then beplugtext.Text := Edit.SelText
        else beplugtext.Text := Edit.Text;
        beplugexec(beplugtext);
        beplgtst := beplugtext.Text;
        if Copy(beplgtst, Length(beplgtst) - Length(#13#10) + 1, Length(#13#10))
             = #13#10
        then SetLength(beplgtst, Length(beplgtst) - Length(#13#10));
        Edit.Text := beplgtst;
      finally
        FreeAndNil(beplugtext);
      end;
    end;
  end;
  FreeLibrary(behnd);
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BEPlugList <> nil then FreeAndNil(BEPlugList);
  MySaveSettings;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Edit.Modified then begin
    case MessageBox(Self.Handle, PChar(mysg7), 'BirEdit', MB_YESNOCANCEL
                      + MB_ICONQUESTION) of
      IDCANCEL: CanClose := False;
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          CanClose := True;
        end else CanClose := SaveDlgExec;
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
  if FindFirst(appath + 'lang\' + '*.lng', faAnyFile, langsrw) = 0 then repeat
      if (langsrw.Attr and faDirectory) <> 0 then Continue else begin
        LangItem := TMenuItem.Create(N117);
        langini := TIniFile.Create(appath + 'lang\' + langsrw.Name);
        LangItem.Caption := langini.ReadString('TranslationInfo', 'Name',
                                                 ExtractFileName(langsrw.Name));
        FreeAndNil(langini);
        LangItem.Hint := ExtractFileName(langsrw.Name);
        LangItem.AutoCheck := True;
        LangItem.Checked := False;
        LangItem.RadioItem := True;
        LangItem.OnClick := ItemClick;
        N117.Add(LangItem);
      end;
  until FindNext(langsrw) <> 0;
  FindClose(langsrw);
  if FileExists(appath + 'lang\' + bor.lang) then LoadTranslate(bor.lang);
end;

function TMain.MyGetAppDataPath: string;
var
  filt: PItemIDList;
  fbuf: array [0..MAX_PATH] of Char;
begin
  Result := appath;
  if SHGetSpecialFolderLocation(Handle, CSIDL_APPDATA, filt) = S_OK then begin
    SHGetPathFromIDList(filt, fbuf);
    GlobalFreePtr(filt);
    if DirectoryExists(fbuf)
    then Result := IncludeTrailingPathDelimiter(fbuf);
  end;
end;

procedure TMain.MyLoadSettings;
var
  i, itemp: Integer;
  ipath, itstr: string;
  beini: TIniFile;
  shlist: TStrings;
begin
  beini := TIniFile.Create(appath + 'profile.ini');
  itemp := beini.ReadInteger('settings', 'saveplace', 2);
  FreeAndNil(beini);
  bor.port := itemp = 2;
  if itemp = 0 then ipath := MyGetAppDataPath else ipath := appath;
  beini := TIniFile.Create(ipath + 'biredit.ini');
  try
    bor.mn_hght := beini.ReadInteger('wndpos', 'height', 450);
    bor.mn_wdth := beini.ReadInteger('wndpos', 'width', 600);
    bor.mn_left := beini.ReadInteger('wndpos', 'left',
                               Round((Screen.WorkAreaWidth - bor.mn_wdth) / 2));
    bor.mn__top := beini.ReadInteger('wndpos', 'top',
                              Round((Screen.WorkAreaHeight - bor.mn_hght) / 2));
    bor.mn_wnst := beini.ReadBool('wndpos', 'maximized', False);
    bor.drag := beini.ReadBool('general', 'acceptdrag', True);
    bor.enal := beini.ReadBool('general', 'activelinehighlight', True);
    bor.ptac := beini.ReadBool('general', 'pasteaftercaret', False);
    bor.sdfl := beini.ReadBool('general', 'scandropfolders', True);
    bor.sdsf := beini.ReadBool('general', 'scansubfolders', True);
    bor.ssbp := beini.ReadBool('general', 'statusbar', True);
    bor.synh := beini.ReadBool('general', 'synhighlight', False);
    bor.tray := beini.ReadBool('general', 'hidetotray', False);
    bor.rfcl := beini.ReadInteger('general', 'recent', 10);
    bor.lang := beini.ReadString('general', 'language', '');
    bor.ed_insm := beini.ReadBool('editor', 'insertmode', True);
    bor.ed_reon := beini.ReadBool('editor', 'readonly', False);
    bor.ed_shft := beini.ReadBool('editor', 'scrollhintformat', True);
    bor.ed_wrap := beini.ReadBool('editor', 'wordwrap', False);
    bor.ed_insc := beini.ReadInteger('editor', 'insertcaret', 0);
    bor.ed_owrc := beini.ReadInteger('editor', 'overwritecaret', 3);
    bor.ed_selm := beini.ReadInteger('editor', 'selectionmode', 0);
    bor.ed_alic := beini.ReadInteger('editor', 'activelinecolor', clInfoBk);
    bor.ed_colr := beini.ReadInteger('editor', 'color', clWindow);
    bor.ed_exls := beini.ReadInteger('editor', 'extralinespacing', 0);
    bor.ed_mxsw := beini.ReadInteger('editor', 'maxscrollwidth', 1024);
    bor.ed_mxun := beini.ReadInteger('editor', 'maxundo', 1024);
    bor.ed_opts := beini.ReadInteger('editor', 'options', 74007962);
    bor.ed_recl := beini.ReadInteger('editor', 'rightedgecolor', clSilver);
    bor.ed_redg := beini.ReadInteger('editor', 'rightedge', 80);
    bor.ed_shcl := beini.ReadInteger('editor', 'scrollhintcolor', clInfoBk);
    bor.ed_tabw := beini.ReadInteger('editor', 'tabwidth', 8);
    bor.ef_chrs := beini.ReadInteger('font', 'charset', DEFAULT_CHARSET);
    bor.ef_ptch := beini.ReadInteger('font', 'pitch', 0);
    bor.ef_styl := beini.ReadInteger('font', 'style', 0);
    bor.ef_colr := beini.ReadInteger('font', 'color', clWindowText);
    bor.ef_hght := beini.ReadInteger('font', 'height', -13);
    bor.ef_ornt := beini.ReadInteger('font', 'orientation', 0);
    bor.ef_size := beini.ReadInteger('font', 'size', 10);
    bor.ef_name := beini.ReadString('font', 'name', 'Courier New');
    bor.eg_asiz := beini.ReadBool('gutter', 'autosize', True);
    bor.eg_grad := beini.ReadBool('gutter', 'gradient', True);
    bor.eg_ldzr := beini.ReadBool('gutter', 'leadingzeros', False);
    bor.eg_shln := beini.ReadBool('gutter', 'showlinenumbers', True);
    bor.eg_ufst := beini.ReadBool('gutter', 'usefontstyle', True);
    bor.eg_vsbl := beini.ReadBool('gutter', 'visible', True);
    bor.eg_zrst := beini.ReadBool('gutter', 'zerostart', False);
    bor.eg_bstl := beini.ReadInteger('gutter', 'borderstyle', 1);
    bor.eg_bclr := beini.ReadInteger('gutter', 'bordercolor', clWindow);
    bor.eg_colr := beini.ReadInteger('gutter', 'color', clBtnFace);
    bor.eg_dcnt := beini.ReadInteger('gutter', 'digitcount', 4);
    bor.eg_gecl := beini.ReadInteger('gutter', 'gradientendcolor', clBtnFace);
    bor.eg_gscl := beini.ReadInteger('gutter', 'gradientstartcolor', clWindow);
    bor.eg_gstp := beini.ReadInteger('gutter', 'gradientsteps', 48);
    bor.eg_lnst := beini.ReadInteger('gutter', 'linenumberstart', 1);
    bor.eg_wdth := beini.ReadInteger('gutter', 'width', 30);
    bor.eg_fchr := beini.ReadInteger('gutterfont', 'charset', DEFAULT_CHARSET);
    bor.eg_fptc := beini.ReadInteger('gutterfont', 'pitch', 0);
    bor.eg_fstl := beini.ReadInteger('gutterfont', 'style', 0);
    bor.eg_fclr := beini.ReadInteger('gutterfont', 'color', clBlack);
    bor.eg_fhgt := beini.ReadInteger('gutterfont', 'height', -11);
    bor.eg_fort := beini.ReadInteger('gutterfont', 'orientation', 0);
    bor.eg_fsiz := beini.ReadInteger('gutterfont', 'size', 8);
    bor.eg_fnam := beini.ReadString('gutterfont', 'name', 'Courier New');
    bor.es_back := beini.ReadInteger('editor', 'selback', clHighlight);
    bor.es_frnt := beini.ReadInteger('editor', 'selfore', clHighlightText);
    bor.ew_vsbl := beini.ReadBool('wrapglyph', 'visible', True);
    bor.ew_mscl := beini.ReadInteger('wrapglyph', 'maskcolor', clNone);
    bor.pr_clrs := beini.ReadBool('print', 'colors', True);
    bor.pr_high := beini.ReadBool('print', 'highlight', True);
    bor.pr_lnum := beini.ReadBool('print', 'linenumbers', False);
    bor.pr_lnim := beini.ReadBool('print', 'numbersinmargin', False);
    bor.pr_mbtm := beini.ReadFloat('printmargins', 'bottom', 10);
    bor.pr_mlft := beini.ReadFloat('printmargins', 'left', 10);
    bor.pr_mrgt := beini.ReadFloat('printmargins', 'right', 10);
    bor.pr_mtop := beini.ReadFloat('printmargins', 'top', 10);
    bor.pr_colr := beini.ReadInteger('wrapglyph', 'color', clWhite);
    bor.pr_cops := beini.ReadInteger('wrapglyph', 'copies', 1);
    itemp := beini.ReadInteger('searchhistory', 'count', 0);
    if itemp > 0 then begin
      shlist := TStringList.Create;
      try
        for I := 0 to itemp - 1 do begin
          itstr := beini.ReadString('searchhistory', IntToStr(i), '');
          if itstr <> '' then shlist.Add(itstr);
        end;
        gsSearchTextHistory := shlist.Text;
      finally
        FreeAndNil(shlist);
      end;
    end;
    itemp := beini.ReadInteger('replacehistory', 'count', 0);
    if itemp > 0 then begin
      shlist := TStringList.Create;
      try
        for I := 0 to itemp - 1 do begin
          itstr := beini.ReadString('replacehistory', IntToStr(i), '');
          if itstr <> '' then shlist.Add(itstr);
        end;
        gsReplaceTextHistory := shlist.Text;
      finally
        FreeAndNil(shlist);
      end;
    end;
    itemp := beini.ReadInteger('recenthistory', 'count', 0);
    if itemp > 0 then
      for I := itemp - 1 downto 0
        do begin
         Recent.Add(beini.ReadString('recenthistory', IntToStr(i), ''), 0);
        end;
  finally
    FreeAndNil(beini);
  end;
  SetBounds(bor.mn_left, bor.mn__top, bor.mn_wdth, bor.mn_hght);
  if bor.mn_wnst then WindowState := wsMaximized;
  JvDragDrop1.AcceptDrag := bor.drag;
  Status.Visible := bor.ssbp;
  if bor.synh then MySetSynByFid(0) else N74.Enabled := False;
  Recent.Capacity := bor.rfcl;
  if bor.tray then ShowTrayIcon;
  if bor.enal then Edit.ActiveLineColor := bor.ed_alic
  else Edit.ActiveLineColor := clNone;
  Edit.Color := bor.ed_colr;
  Edit.ExtraLineSpacing := bor.ed_exls;
  Edit.InsertCaret := TSynEditCaretType(bor.ed_insc);
  Edit.InsertMode := bor.ed_insm;
  Edit.MaxScrollWidth := bor.ed_mxsw;
  Edit.MaxUndo := bor.ed_mxun;
  Edit.Options := TSynEditorOptions(bor.ed_opts);
  if bor.drag then Edit.Options := Edit.Options - [eoDropFiles];
  Edit.OverwriteCaret := TSynEditCaretType(bor.ed_owrc);
  Edit.ReadOnly := bor.ed_reon;
  Edit.RightEdgeColor := bor.ed_recl;
  Edit.RightEdge := bor.ed_redg;
  Edit.ScrollHintColor := bor.ed_shcl;
  Edit.ScrollHintFormat := TScrollHintFormat(bor.ed_shft);
  Edit.SelectionMode := TSynSelectionMode(bor.ed_selm);
  Edit.TabWidth := bor.ed_tabw;
  Edit.WordWrap := bor.ed_wrap;
  Edit.Font.Name := bor.ef_name;
  Edit.Font.Charset := bor.ef_chrs;
  Edit.Font.Size := bor.ef_size;
  Edit.Font.Color := bor.ef_colr;
  Edit.Font.Height := bor.ef_hght;
  Edit.Font.Orientation := bor.ef_ornt;
  Edit.Font.Pitch := TFontPitch(bor.ef_ptch);
  Edit.Font.Style := TFontStyles(bor.ef_styl);
  Edit.Gutter.AutoSize := bor.eg_asiz;
  Edit.Gutter.BorderColor := bor.eg_bclr;
  Edit.Gutter.BorderStyle := TSynGutterBorderStyle(bor.eg_bstl);
  Edit.Gutter.Color := bor.eg_colr;
  Edit.Gutter.DigitCount := bor.eg_dcnt;
  Edit.Gutter.Gradient := bor.eg_grad;
  Edit.Gutter.GradientEndColor := bor.eg_gecl;
  Edit.Gutter.GradientStartColor := bor.eg_gscl;
  Edit.Gutter.GradientSteps := bor.eg_gstp;
  Edit.Gutter.LeadingZeros := bor.eg_ldzr;
  Edit.Gutter.LineNumberStart := bor.eg_lnst;
  Edit.Gutter.ShowLineNumbers := bor.eg_shln;
  Edit.Gutter.UseFontStyle := bor.eg_ufst;
  Edit.Gutter.Visible := bor.eg_vsbl;
  Edit.Gutter.Width := bor.eg_wdth;
  Edit.Gutter.ZeroStart := bor.eg_zrst;
  Edit.Gutter.Font.Name := bor.eg_fnam;
  Edit.Gutter.Font.Charset := bor.eg_fchr;
  Edit.Gutter.Font.Size := bor.eg_fsiz;
  Edit.Gutter.Font.Color := bor.eg_fclr;
  Edit.Gutter.Font.Height := bor.eg_fhgt;
  Edit.Gutter.Font.Orientation := bor.eg_fort;
  Edit.Gutter.Font.Pitch := TFontPitch(bor.eg_fptc);
  Edit.Gutter.Font.Style := TFontStyles(bor.eg_fstl);
  Edit.SelectedColor.Background := bor.es_back;
  Edit.SelectedColor.Foreground := bor.es_frnt;
  Edit.WordWrapGlyph.MaskColor := bor.ew_mscl;
  Edit.WordWrapGlyph.Visible := bor.ew_vsbl;
  N162.Checked := Edit.ReadOnly;
  N173.Checked := Edit.WordWrap;
  N40.Items[Byte(Edit.SelectionMode)].Checked := True;
  if bor.port then N174.Enabled := False;
end;

procedure TMain.MySaveSettings;
var
  i, itemp: Integer;
  ipath: string;
  beini: TIniFile;
  shlist: TStrings;
begin
  beini := TIniFile.Create(appath + 'profile.ini');
  itemp := beini.ReadInteger('settings', 'saveplace', 2);
  FreeAndNil(beini);
  if itemp = 0 then ipath := MyGetAppDataPath else ipath := appath;
  beini := TIniFile.Create(ipath + 'biredit.ini');
  try
    if WindowState = wsNormal then begin
      bor.mn_hght := Height;
      bor.mn_left := Left;
      bor.mn_wdth := Width;
      bor.mn__top := Top;
      beini.WriteInteger('wndpos', 'height', bor.mn_hght);
      beini.WriteInteger('wndpos', 'left', bor.mn_left);
      beini.WriteInteger('wndpos', 'top', bor.mn__top);
      beini.WriteInteger('wndpos', 'width', bor.mn_wdth);
    end else begin
      bor.mn_wnst := WindowState = wsMaximized;
      beini.WriteBool('wndpos', 'maximized', bor.mn_wnst);
    end;
    bor.mn_wnst := beini.ReadBool('wndpos', 'maximized', False);
    beini.WriteBool('general', 'acceptdrag', bor.drag);
    beini.WriteBool('general', 'activelinehighlight', bor.enal);
    beini.WriteBool('general', 'pasteaftercaret', bor.ptac);
    beini.WriteBool('general', 'scandropfolders', bor.sdfl);
    beini.WriteBool('general', 'scansubfolders', bor.sdsf);
    beini.WriteBool('general', 'statusbar', bor.ssbp);
    beini.WriteBool('general', 'synhighlight', bor.synh);
    beini.WriteBool('general', 'hidetotray', bor.tray);
    beini.WriteInteger('general', 'recent', bor.rfcl);
    beini.WriteString('general', 'language', bor.lang);
    beini.WriteBool('editor', 'insertmode', bor.ed_insm);
    beini.WriteBool('editor', 'readonly', bor.ed_reon);
    beini.WriteBool('editor', 'scrollhintformat', bor.ed_shft);
    beini.WriteBool('editor', 'wordwrap', bor.ed_wrap);
    beini.WriteInteger('editor', 'insertcaret', bor.ed_insc);
    beini.WriteInteger('editor', 'overwritecaret', bor.ed_owrc);
    beini.WriteInteger('editor', 'selectionmode', bor.ed_selm);
    {bor.ed_alic := beini.ReadInteger('editor', 'activelinecolor', clInfoBk);
    bor.ed_colr := beini.ReadInteger('editor', 'color', clWindow);}
    beini.WriteInteger('editor', 'extralinespacing', bor.ed_exls);
    beini.WriteInteger('editor', 'maxscrollwidth', bor.ed_mxsw);
    beini.WriteInteger('editor', 'maxundo', bor.ed_mxun);
    beini.WriteInteger('editor', 'options', bor.ed_opts);
    //bor.ed_recl := beini.ReadInteger('editor', 'rightedgecolor', clSilver);
    beini.WriteInteger('editor', 'rightedge', bor.ed_redg);
    //bor.ed_shcl := beini.ReadInteger('editor', 'scrollhintcolor', clInfoBk);
    beini.WriteInteger('editor', 'tabwidth', bor.ed_tabw);
    beini.WriteInteger('font', 'charset', bor.ef_chrs);
    beini.WriteInteger('font', 'pitch', bor.ef_ptch);
    beini.WriteInteger('font', 'style', bor.ef_styl);
    beini.WriteInteger('font', 'color', bor.ef_colr);
    beini.WriteInteger('font', 'height', bor.ef_hght);
    beini.WriteInteger('font', 'orientation', bor.ef_ornt);
    beini.WriteInteger('font', 'size', bor.ef_size);
    beini.WriteString('font', 'name', bor.ef_name);
    beini.WriteBool('gutter', 'autosize', bor.eg_asiz);
    beini.WriteBool('gutter', 'gradient', bor.eg_grad);
    beini.WriteBool('gutter', 'leadingzeros', bor.eg_ldzr);
    beini.WriteBool('gutter', 'showlinenumbers', bor.eg_shln);
    beini.WriteBool('gutter', 'usefontstyle', bor.eg_ufst);
    beini.WriteBool('gutter', 'visible', bor.eg_vsbl);
    beini.WriteBool('gutter', 'zerostart', bor.eg_zrst);
    {bor.eg_bstl := beini.ReadInteger('gutter', 'borderstyle', 1);
    bor.eg_bclr := beini.ReadInteger('gutter', 'bordercolor', clWindow);
    bor.eg_colr := beini.ReadInteger('gutter', 'color', clBtnFace);}
    beini.WriteInteger('gutter', 'digitcount', bor.eg_dcnt);
    {bor.eg_gecl := beini.ReadInteger('gutter', 'gradientendcolor', clBtnFace);
    bor.eg_gscl := beini.ReadInteger('gutter', 'gradientstartcolor', clWindow);}
    beini.WriteInteger('gutter', 'gradientsteps', bor.eg_gstp);
    beini.WriteInteger('gutter', 'linenumberstart', bor.eg_lnst);
    {bor.eg_wdth := beini.ReadInteger('gutter', 'width', 30);
    bor.eg_fchr := beini.ReadInteger('gutterfont', 'charset', DEFAULT_CHARSET);
    bor.eg_fptc := beini.ReadInteger('gutterfont', 'pitch', 0);
    bor.eg_fstl := beini.ReadInteger('gutterfont', 'style', 0);
    bor.eg_fclr := beini.ReadInteger('gutterfont', 'color', clBlack);
    bor.eg_fhgt := beini.ReadInteger('gutterfont', 'height', -11);
    bor.eg_fort := beini.ReadInteger('gutterfont', 'orientation', 0);
    bor.eg_fsiz := beini.ReadInteger('gutterfont', 'size', 8);
    bor.eg_fnam := beini.ReadString('gutterfont', 'name', 'Courier New');
    bor.es_back := beini.ReadInteger('editor', 'selback', clHighlight);
    bor.es_frnt := beini.ReadInteger('editor', 'selfore', clHighlightText);
    bor.ew_vsbl := beini.ReadBool('wrapglyph', 'visible', True);
    bor.ew_mscl := beini.ReadInteger('wrapglyph', 'maskcolor', clNone);}
    beini.WriteBool('print', 'colors', bor.pr_clrs);
    beini.WriteBool('print', 'highlight', bor.pr_high);
    beini.WriteBool('print', 'linenumbers', bor.pr_lnum);
    //beini.WriteBool('print', 'numbersinmargin', bor.pr_lnim);
    beini.WriteFloat('printmargins', 'bottom', bor.pr_mbtm);
    beini.WriteFloat('printmargins', 'left', bor.pr_mlft);
    beini.WriteFloat('printmargins', 'right', bor.pr_mrgt);
    beini.WriteFloat('printmargins', 'top', bor.pr_mtop);
    beini.WriteInteger('wrapglyph', 'color', bor.pr_colr);
    beini.WriteInteger('wrapglyph', 'copies', bor.pr_cops);
    shlist := TStringList.Create;
    try
      shlist.Text := gsSearchTextHistory;
      beini.EraseSection('searchhistory');
      beini.WriteInteger('searchhistory', 'count', shlist.Count);
      if shlist.Count > 0 then for I := 0 to shlist.Count - 1
      do beini.WriteString('searchhistory', IntToStr(i), shlist.Strings[i]);
      shlist.Clear;
      shlist.Text := gsReplaceTextHistory;
      beini.EraseSection('replacehistory');
      beini.WriteInteger('replacehistory', 'count', shlist.Count);
      if shlist.Count > 0 then for I := 0 to shlist.Count - 1
      do beini.WriteString('replacehistory', IntToStr(i), shlist.Strings[i]);
    finally
      FreeAndNil(shlist);
    end;
    beini.WriteInteger('recenthistory', 'count', Recent.Strings.Count);
    for I := 0 to Recent.Strings.Count - 1
      do beini.WriteString('recenthistory', IntToStr(i), Recent.Strings[i]);
  finally
    FreeAndNil(beini);
  end;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  {$IFNDEF UNICODE}
  N58.Visible := False;
  N64.Visible := False;
  curcp := 3;
  {$ELSE}
  curcp := 0;
  {$ENDIF}
  Edit.OnDropFiles := EditDropFiles;
  Edit.OnReplaceText := EditReplaceText;
  appath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  MyLoadSettings;
  LoadAppLoc;
  WorkParams;
  LoadPlugsList;
end;

procedure TMain.ShowTrayIcon;
begin
  jvtic := TJvTrayIcon.Create(Self);
  jvtic.Animated := False;
  jvtic.Snap := False;
  jvtic.SwingForthAndBack := False;
  jvtic.Delay := 100;
  jvtic.Icon := Application.Icon;
  jvtic.IconIndex := 0;
  jvtic.Visibility := [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide,
                         tvAutoHideIcon, tvRestoreClick];
  jvtic.Active := True;
end;

procedure TMain.RecentClick(Sender: TObject; const RecentName, Caption: string;
  UserData: Integer);

  procedure MyOpen;
  begin
    if FileExists(RecentName) then MyOpenFileWosf(RecentName, 1)
    else MessageBox(Self.Handle, PChar(mysg1), 'BirEdit', MB_OK+MB_ICONSTOP);
  end;

begin
  if Edit.Modified then begin
    case MessageBox(Self.Handle, PChar(mysg7), 'BirEdit', MB_YESNOCANCEL
                      + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyOpen;
        end else if SaveDlgExec then MyOpen;
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
  var
    i: Byte;
    dlg: TOpenDialog;
  begin
    dlg := TOpenDialog.Create(Self);
    try
      dlg.Ctl3D := True;
      dlg.Options := [ofHideReadOnly, ofEnableSizing];
      for I := 0 to 51 do dlg.Filter := dlg.Filter + BEFileFilter[i];
      dlg.FilterIndex := 1;
      if dlg.Execute then MyOpenFileWosf(dlg.FileName, dlg.FilterIndex);
    finally
      FreeAndNil(dlg);
    end;
  end;

begin
  if Edit.Modified then begin
    case MessageBox(Self.Handle, PChar(mysg7), 'BirEdit', MB_YESNOCANCEL
                      + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyOpen;
        end else if SaveDlgExec then MyOpen;
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
  SaveDlgExec;
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
  bor.ed_reon := Edit.ReadOnly;
  N162.Checked := bor.ed_reon;
  MySaveSettings;
end;

procedure TMain.N163Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'explorer', PChar('/select, "' + MyFileName + '"'),
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N166Click(Sender: TObject);
var
  dlg: TPageSetupDialog;
begin
  dlg := TPageSetupDialog.Create(Self);
  try
    dlg.Ctl3D := True;
    dlg.Units := pmMillimeters;
    dlg.Options := [psoMargins];
    dlg.PageHeight := 29700;
    dlg.PageWidth := 21000;
    dlg.MinMarginLeft := 0;
    dlg.MinMarginTop := 0;
    dlg.MinMarginRight := 0;
    dlg.MinMarginBottom := 0;
    dlg.MarginLeft := Round(bor.pr_mlft * 100);
    dlg.MarginTop := Round(bor.pr_mtop * 100);
    dlg.MarginRight := Round(bor.pr_mrgt * 100);
    dlg.MarginBottom := Round(bor.pr_mbtm * 100);
    if dlg.Execute then begin
      bor.pr_mbtm := dlg.MarginBottom / 100;
      bor.pr_mlft := dlg.MarginLeft / 100;
      bor.pr_mrgt := dlg.MarginRight / 100;
      bor.pr_mtop := dlg.MarginTop / 100;
      MySaveSettings;
    end;
  finally
    FreeAndNil(dlg);
  end;
end;

procedure TMain.N167Click(Sender: TObject);
var
  dlg: TPrinterSetupDialog;
begin
  dlg := TPrinterSetupDialog.Create(Self);
  try
    dlg.Ctl3D := True;
    dlg.Execute;
  finally
    FreeAndNil(dlg);
  end;
end;

procedure TMain.N168Click(Sender: TObject);
var
  dlg: TPreviewDlg;
  spr: TSynEditPrint;
begin
  spr := TSynEditPrint.Create(Self);
  try
    spr.Color := bor.pr_colr;
    spr.Colors := bor.pr_clrs;
    spr.Copies := bor.pr_cops;
    spr.Font.Assign(Edit.Font);
    spr.Header.DefaultFont.Name := 'Courier New';
    spr.Header.DefaultFont.Charset := DEFAULT_CHARSET;
    spr.Header.DefaultFont.Color := clWindowText;
    spr.Header.DefaultFont.Size := 8;
    spr.Header.DefaultFont.Style := [];
    spr.Header.DefaultFont.Height := -11;
    spr.Header.DefaultFont.Orientation := 0;
    spr.Header.DefaultFont.Pitch := fpDefault;
    spr.Header.FrameTypes := [ftBox, ftShaded];
    spr.Header.LineColor := clBlack;
    spr.Header.MirrorPosition := False;
    spr.Header.RomanNumbers := False;
    spr.Header.ShadedColor := clSilver;
    spr.Footer.DefaultFont.Assign(spr.Header.DefaultFont);
    spr.Footer.FrameTypes := [ftLine];
    spr.Footer.LineColor := clBlack;
    spr.Footer.MirrorPosition := False;
    spr.Footer.RomanNumbers := False;
    spr.Footer.ShadedColor := clSilver;
    spr.Highlight := bor.pr_high;
    spr.LineNumbers := bor.pr_lnum;
    spr.LineNumbersInMargin := bor.pr_lnim;
    spr.Margins.Bottom := bor.pr_mbtm;
    spr.Margins.Left := bor.pr_mlft;
    spr.Margins.Right := bor.pr_mrgt;
    spr.Margins.Top := bor.pr_mtop;
    spr.PageOffset := 0;
    spr.SelectedOnly := False;
    spr.TabWidth := bor.ed_tabw;
    spr.SynEdit := Edit;
    spr.Title := MyFileName;
    spr.Wrap := True;
    dlg := TPreviewDlg.Create(Self);
    try
      MyLoadLoc(dlg, 'PrintPreviewDlg', False);
      dlg.EditPreview.SynEditPrint := spr;
      dlg.ShowModal;
    finally
      dlg.Free;
    end;
  finally
    FreeAndNil(spr);
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
  if bor.ptac then Edit.CaretXY := bs;
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

procedure TMain.N173Click(Sender: TObject);
begin
  Edit.WordWrap := not Edit.WordWrap;
  N173.Checked := Edit.WordWrap;
end;

procedure TMain.N174Click(Sender: TObject);
var
  {$IFNDEF UNICODE}
  wifn: array [0..MAX_PATH] of Char;
  tmpext: string;
  b: TIniFile;
  {$ENDIF}
  i: Integer;
  a: TRegistry;
  fadlg: TFAssoc;
begin
  fadlg := TFAssoc.Create(Self);
  with fadlg do try
    MyLoadLoc(fadlg, 'FAssocDlg', False);
    for I := 0 to 91 do begin
      chklst1.Items.Add(BEFileExtensions[i]);
      {$IFNDEF UNICODE}
      if Win32Platform = VER_PLATFORM_WIN32_NT then begin
      {$ENDIF}
        a := TRegistry.Create(KEY_READ);
        try
          a.RootKey := HKEY_CLASSES_ROOT;
          if a.OpenKeyReadOnly(BEFileExtensions[i]) then begin
            chklst1.Checked[i] := a.ReadString('') = 'BirEdit.File';
            a.CloseKey;
          end;
        finally
          FreeAndNil(a);
        end;
      {$IFNDEF UNICODE}
      end else begin
        GetWindowsDirectory(wifn, SizeOf(wifn));
        b := TIniFile.Create(IncludeTrailingPathDelimiter(wifn) + 'win.ini');
        try
          tmpext := BEFileExtensions[i];
          Delete(tmpext, 1, 1);
          chklst1.Checked[i] := b.ReadString('Extensions', tmpext, '')
                                 = (appath + ExtractFileName(ParamStr(0)) + ' ^'
                                      + BEFileExtensions[i]);
        finally
          FreeAndNil(b);
        end;
      end;
      {$ENDIF}
    end;
    if ShowModal = mrOk then begin
      for I := 0 to chklst1.Count - 1 do begin
        {$IFNDEF UNICODE}
        if Win32Platform = VER_PLATFORM_WIN32_NT then begin
        {$ENDIF}
          a := TRegistry.Create;
          try
            a.RootKey := HKEY_CLASSES_ROOT;
            if a.OpenKey(chklst1.Items[i], True) then begin
              if chklst1.Checked[i] = True then begin
                if not (a.ReadString('') = 'BirEdit.File') then begin
                  a.WriteString('BirEdit.bak', a.ReadString(''));
                  a.WriteString('', 'BirEdit.File');
                end;
              end else begin
                if a.ReadString('') = 'BirEdit.File' then begin
                  a.WriteString('', a.ReadString('BirEdit.bak'));
                  a.DeleteValue('BirEdit.bak');
                end;
              end;
              a.CloseKey;
            end;
          finally
            FreeAndNil(a);
          end;
        {$IFNDEF UNICODE}
        end else begin
          GetWindowsDirectory(wifn, SizeOf(wifn));
          b := TIniFile.Create(IncludeTrailingPathDelimiter(wifn) + 'win.ini');
          try
            if chklst1.Checked[i] = True then begin
              tmpext := BEFileExtensions[i];
              Delete(tmpext, 1, 1);
              if not (b.ReadString('Extensions', tmpext, '')
                                 = (appath + ExtractFileName(ParamStr(0)) + ' ^'
                                      + BEFileExtensions[i]))
              then begin
                b.WriteString('Extensions.bak', tmpext,
                                b.ReadString('Extensions', tmpext, ''));
                b.WriteString('Extensions', tmpext, appath
                                + ExtractFileName(ParamStr(0)) + ' ^'
                                + BEFileExtensions[i]);
              end;
            end else begin
              tmpext := BEFileExtensions[i];
              Delete(tmpext, 1, 1);
              if b.ReadString('Extensions', tmpext, '')
                                 = (appath + ExtractFileName(ParamStr(0)) + ' ^'
                                      + BEFileExtensions[i])
              then begin
                b.WriteString('Extensions', tmpext,
                                b.ReadString('Extensions.bak', tmpext, ''));
                b.DeleteKey('Extensions.bak', tmpext);
              end;
            end;
          finally
            FreeAndNil(b);
          end;
        end;
        {$ENDIF}
      end;
    end;
  finally
    {$IFNDEF UNICODE}
    if Win32Platform = VER_PLATFORM_WIN32_WINDOWS
    then SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0,
                       LongInt(PChar('Extensions')));
    {$ENDIF}
    fadlg.Free;
  end;
end;

procedure TMain.N175Click(Sender: TObject);
var
  i: Integer;
begin
  MyOpenDropped(Recent.Strings.Strings[0]);
  if Recent.Strings.Count > 1 then for I := 1 to Recent.Strings.Count - 1
  do ShellExecute(Self.Handle, 'open', PChar(ParamStr(0)),
                    PChar('"' + Recent.Strings.Strings[i] + '"'),
                  PChar('"' + ExtractFilePath(Recent.Strings.Strings[i]) + '"'),
                    SW_SHOWNORMAL);
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
    {$IFNDEF UNICODE}
    lbl2.Caption := lbl2.Caption + '-ansi';
    {$ENDIF}
    {$IFNDEF VER210}
    Memo3.Lines.Insert(4, '- VCLFixPack v1.4 (http://andy.jgknet.de/blog/)');
    {$ENDIF}
    Image1.Picture.Icon := Application.Icon;
    ShowModal;
  finally
    aboutdlg.Free;
  end;
end;

procedure TMain.N51Click(Sender: TObject);
var
  dlg: TFontDialog;
begin
  dlg := TFontDialog.Create(Self);
  try
    dlg.Ctl3D := True;
    if Printer.Printers.Count > 0 then dlg.Device := fdBoth
    else dlg.Device := fdScreen;
    dlg.Options := [fdEffects, fdFixedPitchOnly];
    dlg.Font.Assign(Edit.Font);
    if dlg.Execute then begin
      Edit.Font.Assign(dlg.Font);
      bor.ef_chrs := Edit.Font.Charset;
      bor.ef_ptch := Byte(Edit.Font.Pitch);
      bor.ef_styl := Byte(Edit.Font.Style);
      bor.ef_colr := Edit.Font.Color;
      bor.ef_hght := Edit.Font.Height;
      bor.ef_ornt := Edit.Font.Orientation;
      bor.ef_size := Edit.Font.Size;
      bor.ef_name := Edit.Font.Name;
      MySaveSettings;
    end;
  finally
    FreeAndNil(dlg);
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
  if bor.ptac then Edit.CaretXY := bs;
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
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.N38Click(Sender: TObject);
var
  dlg: TJvRunDialog;
begin
  dlg := TJvRunDialog.Create(Self);
  try
    dlg.Ctl3D := True;
    dlg.Icon := Application.Icon;
    dlg.Execute;
  finally
    FreeAndNil(dlg);
  end;
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
    Chk4 := bor.ptac;
    Chk5 := bor.sdfl;
    Chk6 := bor.sdsf;
    Chk7 := bor.tray;
    Chk8 := Status.Visible;
    Chk9 := Edit.Gutter.Visible;
    Chk10 := Edit.WordWrap;
    Chk11 := Edit.Gutter.AutoSize;
    Chk12 := Edit.Gutter.LeadingZeros;
    Chk13 := Edit.Gutter.ShowLineNumbers;
    Chk14 := Edit.Gutter.ZeroStart;
    Chk15 := bor.synh;
    Chk16 := bor.pr_clrs;
    Chk17 := bor.pr_high;
    Chk18 := bor.pr_lnum;
    Chk19 := bor.enal;
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
    Check16.Enabled := Printer.Printers.Count > 0;
    Check17.Enabled := Printer.Printers.Count > 0;
    Check18.Enabled := Printer.Printers.Count > 0;
    if ShowModal = mrOk then begin
      Edit.ReadOnly := Chk1;
      Edit.Gutter.UseFontStyle := Chk2;
      Edit.Gutter.Gradient := Chk3;
      Status.Visible := Chk8;
      Edit.Gutter.Visible := Chk9;
      Edit.WordWrap := Chk10;
      Edit.Gutter.AutoSize := Chk11;
      Edit.Gutter.LeadingZeros := Chk12;
      Edit.Gutter.ShowLineNumbers := Chk13;
      Edit.Gutter.ZeroStart := Chk14;
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
      N42.Enabled := not (eoAltSetsColumnMode in Edit.Options);
      JvDragDrop1.AcceptDrag := not (eoDropFiles in Edit.Options);
      bor.ptac := Chk4;
      bor.sdfl := Chk5;
      bor.sdsf := Chk6;
      bor.synh := Chk15;
      bor.tray := Chk7;
      bor.pr_clrs := Chk16;
      bor.pr_high := Chk17;
      bor.pr_lnum := Chk18;
      bor.enal := Chk19;
      if bor.enal then Edit.ActiveLineColor := bor.ed_alic
      else Edit.ActiveLineColor := clNone;
      bor.drag := JvDragDrop1.AcceptDrag;
      bor.rfcl := Recent.Capacity;
      bor.ssbp := Status.Visible;
      bor.ed_exls := Edit.ExtraLineSpacing;
      bor.ed_insc := Byte(Edit.InsertCaret);
      bor.ed_mxsw := Edit.MaxScrollWidth;
      bor.ed_mxun := Edit.MaxUndo;
      bor.ed_opts := Integer(Edit.Options);
      bor.ed_owrc := Byte(Edit.OverwriteCaret);
      bor.ed_redg := Edit.RightEdge;
      bor.ed_reon := Edit.ReadOnly;
      bor.ed_selm := Byte(Edit.SelectionMode);
      bor.ed_shft := Boolean(Edit.ScrollHintFormat);
      bor.ed_tabw := Edit.TabWidth;
      bor.ed_wrap := Edit.WordWrap;
      bor.eg_asiz := Edit.Gutter.AutoSize;
      bor.eg_dcnt := Edit.Gutter.DigitCount;
      bor.eg_grad := Edit.Gutter.Gradient;
      bor.eg_gstp := Edit.Gutter.GradientSteps;
      bor.eg_ldzr := Edit.Gutter.LeadingZeros;
      bor.eg_lnst := Edit.Gutter.LineNumberStart;
      bor.eg_shln := Edit.Gutter.ShowLineNumbers;
      bor.eg_ufst := Edit.Gutter.UseFontStyle;
      bor.eg_vsbl := Edit.Gutter.Visible;
      bor.eg_zrst := Edit.Gutter.ZeroStart;
      N40.Items[bor.ed_selm].Checked := True;
      N162.Checked := bor.ed_reon;
      N173.Checked := bor.ed_wrap;
      if bor.synh then begin
        if FileExists(MyFileName) then MySetSynByExt(ExtractFileExt(MyFileName))
        else MySetSynByFid(0);
        N74.Enabled := True;
      end else begin
        MySetSynByFid(-1);
        N74.Enabled := False;
      end;
      if bor.tray then begin
        if jvtic = nil then ShowTrayIcon;
      end else if jvtic <> nil then FreeAndNil(jvtic);
      MySaveSettings;
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
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.N72Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := AnsiDequotedStr(Edit.SelText, '''');
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.N78Click(Sender: TObject);
begin
  Clipboard.AsText := MyFileName;
end;

procedure TMain.N7Click(Sender: TObject);
var
  dlg: TPrintDialog;
  spr: TSynEditPrint;
begin
  dlg := TPrintDialog.Create(Self);
  try
    dlg.Collate := False;
    dlg.Copies := bor.pr_cops;
    dlg.Ctl3D := True;
    dlg.MinPage := 0;
    dlg.MaxPage := 0;
    dlg.FromPage := 0;
    dlg.Options := [poPrintToFile];
    dlg.PrintRange := prAllPages;
    dlg.PrintToFile := False;
    dlg.ToPage := 0;
    if dlg.Execute then begin
      bor.pr_cops := dlg.Copies;
      MySaveSettings;
      spr := TSynEditPrint.Create(Self);
      try
        spr.Color := bor.pr_colr;
        spr.Colors := bor.pr_clrs;
        spr.Copies := bor.pr_cops;
        spr.Font.Assign(Edit.Font);
        spr.Header.DefaultFont.Name := 'Courier New';
        spr.Header.DefaultFont.Charset := DEFAULT_CHARSET;
        spr.Header.DefaultFont.Color := clWindowText;
        spr.Header.DefaultFont.Size := 8;
        spr.Header.DefaultFont.Style := [];
        spr.Header.DefaultFont.Height := -11;
        spr.Header.DefaultFont.Orientation := 0;
        spr.Header.DefaultFont.Pitch := fpDefault;
        spr.Header.FrameTypes := [ftBox, ftShaded];
        spr.Header.LineColor := clBlack;
        spr.Header.MirrorPosition := False;
        spr.Header.RomanNumbers := False;
        spr.Header.ShadedColor := clSilver;
        spr.Footer.DefaultFont.Assign(spr.Header.DefaultFont);
        spr.Footer.FrameTypes := [ftLine];
        spr.Footer.LineColor := clBlack;
        spr.Footer.MirrorPosition := False;
        spr.Footer.RomanNumbers := False;
        spr.Footer.ShadedColor := clSilver;
        spr.Highlight := bor.pr_high;
        spr.LineNumbers := bor.pr_lnum;
        spr.LineNumbersInMargin := bor.pr_lnim;
        spr.Margins.Bottom := bor.pr_mbtm;
        spr.Margins.Left := bor.pr_mlft;
        spr.Margins.Right := bor.pr_mrgt;
        spr.Margins.Top := bor.pr_mtop;
        spr.PageOffset := 0;
        spr.SelectedOnly := False;
        spr.TabWidth := bor.ed_tabw;
        spr.SynEdit := Edit;
        spr.Title := MyFileName;
        spr.Wrap := True;
        spr.Print;
      finally
        FreeAndNil(spr);
      end;
    end;
  finally
    FreeAndNil(dlg);
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

procedure TMain.N8Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  {$IFDEF UNICODE}
  case curcp of
    1: Edit.SelText := 'ASCII';
    2: Edit.SelText := 'UTF-16 little endian';
    3: Edit.SelText := 'UTF-16 big endian';
    4: Edit.SelText := 'UTF-8';
    5: Edit.SelText := 'UTF-7';
    else Edit.SelText := 'Ansi';
  end;
  {$ELSE}
  case curcp of
    0: Edit.SelText := 'UTF-16 little endian';
    1: Edit.SelText := 'UTF-16 big endian';
    2: Edit.SelText := 'UTF-8';
    else Edit.SelText := 'Ansi';
  end;
  {$ENDIF}
  if bor.ptac then Edit.CaretXY := bs;
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
      if bor.ptac then Edit.CaretXY := bs;
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
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.N99Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := DateTimeToStr(Now);
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.Popup1Popup(Sender: TObject);
begin
  if not Edit.SelAvail then Edit.ExecuteCommand(198, 'A', @Edit.Lines);
end;

procedure TMain.N104Click(Sender: TObject);
begin
  {$IFDEF UNICODE}
  case curcp of
    1: MyOpenFile(MyFileName, TEncoding.ASCII, 1);
    2: MyOpenFile(MyFileName, TEncoding.Unicode, 1);
    3: MyOpenFile(MyFileName, TEncoding.BigEndianUnicode, 1);
    4: MyOpenFile(MyFileName, TEncoding.UTF8, 1);
    5: MyOpenFile(MyFileName, TEncoding.UTF7, 1);
    else MyOpenFile(MyFileName, TEncoding.Default, 1);
  end;
  {$ELSE}
  MyOpenFile(MyFileName, curcp, 1);
  {$ENDIF}
end;

procedure TMain.N105Click(Sender: TObject);

  procedure MyNewDoc;
  begin
    Edit.ClearAll;
    MyFileName := '';
  end;

begin
  if Edit.Modified then begin
    case MessageBox(Self.Handle, PChar(mysg7), 'BirEdit', MB_YESNOCANCEL
                      + MB_ICONQUESTION) of
      IDYES:
        if FileExists(MyFileName) then begin
          MySaveFile(MyFileName, curcp, 1);
          MyNewDoc;
        end else if SaveDlgExec then MyNewDoc;
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
  bor.ed_insm := Edit.InsertMode;
  if bor.ed_insm then Status.Panels.Items[1].Text := 'Insert'
  else Status.Panels.Items[1].Text := 'Overwrite';
  {$IFDEF UNICODE}
  case curcp of
    1: Status.Panels.Items[3].Text := 'ASCII';
    2: Status.Panels.Items[3].Text := 'UTF-16 little endian';
    3: Status.Panels.Items[3].Text := 'UTF-16 big endian';
    4: Status.Panels.Items[3].Text := 'UTF-8';
    5: Status.Panels.Items[3].Text := 'UTF-7';
    else Status.Panels.Items[3].Text := 'Ansi';
  end;
  {$ELSE}
  case curcp of
    0: Status.Panels.Items[3].Text := 'UTF-16 little endian';
    1: Status.Panels.Items[3].Text := 'UTF-16 big endian';
    2: Status.Panels.Items[3].Text := 'UTF-8';
    else Status.Panels.Items[3].Text := 'Ansi';
  end;
  {$ENDIF}
end;

procedure TMain.JvTimer3Timer(Sender: TObject);
begin
  if FileExists(MyFileName) then begin
    if (FileAge(MyFileName) <> prev) and (prev <> 0) then begin
      if MessageBox(Self.Handle, PChar(mysg4), 'BirEdit', MB_YESNO
                      + MB_ICONQUESTION) = IDYES
      then N104.Click;
      prev := FileAge(MyFileName);
    end;
  end else begin
    if (prevnoex = False) and not (MyFileName = '') then begin
      if MessageBox(Self.Handle, PChar(mysg5), 'BirEdit', MB_YESNO
                      + MB_ICONQUESTION) = IDYES
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
  cpa, fe, fm ,lc, stxt, rtxt, sav, cun, cre, hpt: Boolean;
  capt: string;
begin
  fm := Edit.Modified;
  hpt := Printer.Printers.Count > 0;
  fe := FileExists(MyFileName);
  lc := Edit.Lines.Count > 0;
  sav := Edit.SelAvail;
  cpa := Edit.CanPaste;
  cun := Edit.CanUndo and not bor.ed_reon;
  cre := Edit.CanRedo and not bor.ed_reon;
  stxt := not (gsSearchText = '');
  rtxt := not (gsReplaceText = '');
  N4.Enabled := fe and fm and not bor.ed_reon;
  N7.Enabled := lc and hpt;
  N11.Enabled := cun;
  N12.Enabled := cre;
  N14.Enabled := lc;
  N15.Enabled := sav;
  N16.Enabled := cpa and not bor.ed_reon;
  N17.Enabled := sav and not bor.ed_reon;
  N18.Enabled := rtxt and not bor.ed_reon;
  N19.Enabled := cun;
  N20.Enabled := cre;
  N22.Enabled := sav and not bor.ed_reon;
  N23.Enabled := sav;
  N24.Enabled := cpa and not bor.ed_reon;
  N25.Enabled := lc;
  N27.Enabled := stxt;
  N28.Enabled := stxt;
  N29.Enabled := not bor.ed_reon;
  N30.Enabled := sav and cpa;
  N33.Enabled := rtxt and not bor.ed_reon;
  N36.Enabled := lc;
  N37.Enabled := sav;
  N39.Enabled := lc;
  N44.Enabled := fe;
  N45.Enabled := lc;
  N46.Enabled := cpa;
  N55.Enabled := sav and cpa;
  N56.Enabled := cpa and sav and not bor.ed_reon;
  N57.Enabled := lc and not bor.ed_reon;
  N59.Enabled := lc and not bor.ed_reon;
  N65.Enabled := cpa and sav and not bor.ed_reon;
  N66.Enabled := lc and not bor.ed_reon;
  N71.Enabled := sav and not bor.ed_reon;
  N72.Enabled := sav and not bor.ed_reon;
  N76.Enabled := sav and not bor.ed_reon;
  N77.Enabled := not bor.ed_reon;
  N78.Enabled := fe;
  N80.Enabled := fe;
  N85.Enabled := lc and not bor.ed_reon;
  N88.Enabled := not bor.ed_reon;
  N90.Enabled := sav;
  N95.Enabled := lc and not bor.ed_reon;
  N96.Enabled := cpa;
  N100.Enabled := fe;
  N102.Enabled := fe;
  N104.Enabled := fe;
  N114.Enabled := fe;
  N119.Enabled := fe;
  N124.Enabled := fe;
  N127.Enabled := Recent.Strings.Count > 0;
  N163.Enabled := fe;
  N166.Enabled := hpt;
  N167.Enabled := hpt;
  N168.Enabled := lc and hpt;
  N171.Enabled := fe;
  capt := 'BirEdit';
  if fm then capt := '* ' + capt;
  if bor.ed_reon then capt := capt + ' (' + mysn5 + ')';
  if fe then begin
    capt := capt + ' - [';
    if ExtractFilePath(MyFileName) = '' then capt := capt + appath;
    capt := capt + MyFileName + ']';
  end else Status.Panels.Items[2].Text := '';
  Caption := capt;
  Application.Title := Caption;
  if jvtic <> nil then jvtic.Hint := Caption;
end;

procedure TMain.JvDragDrop1Drop(Sender: TObject; Pos: TPoint; Value: TStrings);
begin
  MyScanDropFiles(Value);
end;

procedure TMain.N119Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', PChar(ParamStr(0)),
                 PChar('"' + MyFileName + '"'),
                 PChar('"' + ExtractFilePath(MyFileName) + '"'), SW_SHOWNORMAL);
end;

procedure TMain.N122Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', PChar(ParamStr(0)), nil,
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
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.N102Click(Sender: TObject);
var
  bs: TBufferCoord;
begin
  if Edit.SelAvail then bs := Edit.BlockBegin else bs := Edit.CaretXY;
  Edit.SelText := MyFileName;
  if bor.ptac then Edit.CaretXY := bs;
end;

procedure TMain.MyOpenFileWosf(OpenFileName: TFileName; fd: Byte);
begin
  {$IFDEF UNICODE}
  MyOpenFile(OpenFileName, nil, fd);
  {$ELSE}
  MyOpenFile(OpenFileName, 4, fd);
  {$ENDIF}
end;

procedure TMain.DoUnAssoc;
var
  {$IFNDEF UNICODE}
  wifn: array [0..MAX_PATH] of Char;
  tmpext: string;
  b: TIniFile;
  {$ENDIF}
  i: Integer;
  a: TRegistry;
begin
  try
    for I := 0 to 91 do begin
      {$IFNDEF UNICODE}
      if Win32Platform = VER_PLATFORM_WIN32_NT then begin
      {$ENDIF}
        a := TRegistry.Create;
        try
          a.RootKey := HKEY_CLASSES_ROOT;
          if a.OpenKey(BEFileExtensions[i], False) then begin
            if a.ReadString('') = 'BirEdit.File' then begin
              a.WriteString('', a.ReadString('BirEdit.bak'));
              a.DeleteValue('BirEdit.bak');
            end;
            a.CloseKey;
          end;
        finally
          FreeAndNil(a);
        end;
      {$IFNDEF UNICODE}
      end else begin
        GetWindowsDirectory(wifn, SizeOf(wifn));
        b := TIniFile.Create(IncludeTrailingPathDelimiter(wifn) + 'win.ini');
        try
          tmpext := BEFileExtensions[i];
          Delete(tmpext, 1, 1);
          if b.ReadString('Extensions', tmpext, '')
                                 = (appath + ExtractFileName(ParamStr(0)) + ' ^'
                                      + BEFileExtensions[i])
          then begin
            b.WriteString('Extensions', tmpext,
                            b.ReadString('Extensions.bak', tmpext, ''));
            b.DeleteKey('Extensions.bak', tmpext);
          end;
        finally
          FreeAndNil(b);
        end;
      end;
      {$ENDIF}
    end;
  finally
    {$IFNDEF UNICODE}
    if Win32Platform = VER_PLATFORM_WIN32_WINDOWS
    then SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0,
                       LongInt(PChar('Extensions')));
    {$ENDIF}
    if CallTerminateProcs then PostQuitMessage(0);
  end;
end;

end.
