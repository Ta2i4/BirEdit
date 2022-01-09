object Main: TMain
  Left = 353
  Top = 233
  Caption = 'Untitled - BirEdit'
  ClientHeight = 397
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit: TSynEdit
    Left = 0
    Top = 0
    Width = 592
    Height = 378
    Align = alClient
    ActiveLineColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = Popup1
    TabOrder = 0
    Gutter.AutoSize = True
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clBlack
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.ShowLineNumbers = True
    Gutter.Gradient = True
    Options = [eoAltSetsColumnMode, eoAutoIndent, eoDisableScrollArrows, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoHideShowScrollbars, eoRightMouseMovesCursor, eoScrollHintFollows, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTrimTrailingSpaces]
    ScrollHintFormat = shfTopToBottom
    OnDropFiles = EditDropFiles
    OnReplaceText = EditReplaceText
  end
  object Status: TStatusBar
    Left = 0
    Top = 378
    Width = 592
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 80
      end
      item
        Width = 100
      end
      item
        Width = 120
      end>
  end
  object MainMenu: TMainMenu
    AutoHotkeys = maManual
    Left = 208
    Top = 72
    object N1: TMenuItem
      Caption = 'File'
      object N105: TMenuItem
        Caption = 'New'
        Hint = 'New'
        ImageIndex = 0
        ShortCut = 113
        OnClick = N105Click
      end
      object N3: TMenuItem
        Caption = 'Open'
        Hint = 'Open'
        ImageIndex = 1
        ShortCut = 16463
        OnClick = N3Click
      end
      object N104: TMenuItem
        Caption = 'Revert'
        Hint = 'Revert'
        ShortCut = 116
        OnClick = N104Click
      end
      object N4: TMenuItem
        Caption = 'Save'
        Hint = 'Save'
        ImageIndex = 2
        ShortCut = 16467
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = 'Save As...'
        Hint = 'Save As...'
        ImageIndex = 14
        ShortCut = 117
        OnClick = N5Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object N44: TMenuItem
        Caption = 'Codepage'
        object N53: TMenuItem
          Caption = 'Auto'
          Default = True
          OnClick = N53Click
        end
        object N54: TMenuItem
          Caption = 'Ansi'
          OnClick = N54Click
        end
        object N58: TMenuItem
          Caption = 'ASCII'
          OnClick = N58Click
        end
        object N61: TMenuItem
          Caption = 'UTF-16 little endian'
          OnClick = N61Click
        end
        object N62: TMenuItem
          Caption = 'UTF-16 big endian'
          OnClick = N62Click
        end
        object N63: TMenuItem
          Caption = 'UTF-8'
          OnClick = N63Click
        end
        object N64: TMenuItem
          Caption = 'UTF-7'
          OnClick = N64Click
        end
      end
      object N135: TMenuItem
        Caption = '-'
      end
      object N120: TMenuItem
        Caption = 'Launch'
        object N119: TMenuItem
          Caption = 'New Window'
          ShortCut = 32846
          OnClick = N119Click
        end
        object N122: TMenuItem
          Caption = 'Empty Window'
          ShortCut = 32847
          OnClick = N122Click
        end
        object N123: TMenuItem
          Caption = '-'
        end
        object N124: TMenuItem
          Caption = 'Execute Document'
          ShortCut = 16460
          OnClick = N124Click
        end
        object N80: TMenuItem
          Caption = 'Open With...'
          ShortCut = 32844
          OnClick = N80Click
        end
        object N38: TMenuItem
          Caption = 'Command...'
          ShortCut = 32850
          OnClick = N38Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Caption = 'Print Preview'
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = 'Print'
        Hint = 'Print'
        ImageIndex = 17
        ShortCut = 16464
        OnClick = N8Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object N114: TMenuItem
        Caption = 'Properties'
        OnClick = N114Click
      end
      object N115: TMenuItem
        Caption = '-'
      end
      object N127: TMenuItem
        Caption = 'Recent files'
        object N130: TMenuItem
          Caption = 'Delete non-existent'
          OnClick = N130Click
        end
        object N132: TMenuItem
          Caption = 'Clear list'
          OnClick = N132Click
        end
        object N131: TMenuItem
          Caption = '-'
        end
      end
      object N128: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Exit'
        Hint = 'Exit'
        ImageIndex = 13
        ShortCut = 32883
        OnClick = N2Click
      end
    end
    object N10: TMenuItem
      Caption = 'Edit'
      object N11: TMenuItem
        Caption = 'Undo'
        Hint = 'Undo'
        ImageIndex = 3
        ShortCut = 16474
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = 'Redo'
        Hint = 'Redo'
        ImageIndex = 4
        ShortCut = 24666
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Caption = 'Cut'
        Hint = 'Cut'
        ImageIndex = 5
        ShortCut = 16472
        OnClick = N17Click
      end
      object N15: TMenuItem
        Caption = 'Copy'
        Hint = 'Copy'
        ImageIndex = 6
        ShortCut = 16451
        OnClick = N15Click
      end
      object N39: TMenuItem
        Caption = 'Copy All'
        ShortCut = 32835
        OnClick = N39Click
      end
      object N30: TMenuItem
        Caption = 'Copy Add'
        ShortCut = 16453
        OnClick = N30Click
      end
      object N16: TMenuItem
        Caption = 'Paste'
        Hint = 'Paste'
        ImageIndex = 7
        ShortCut = 16470
        OnClick = N16Click
      end
      object N56: TMenuItem
        Caption = 'Swap'
        ShortCut = 16459
        OnClick = N56Click
      end
      object N59: TMenuItem
        Caption = 'Clear'
        Hint = 'Clear'
        ImageIndex = 16
        ShortCut = 46
        OnClick = N59Click
      end
      object N57: TMenuItem
        Caption = 'Clear All'
        Hint = 'Clear All'
        OnClick = N57Click
      end
      object N46: TMenuItem
        Caption = 'Clear Clipboard'
        OnClick = N46Click
      end
      object N14: TMenuItem
        Caption = 'Select All'
        ShortCut = 16449
        OnClick = N14Click
      end
      object N67: TMenuItem
        Caption = '-'
      end
      object N88: TMenuItem
        Caption = 'Block'
        object N86: TMenuItem
          Caption = 'Indent'
          ShortCut = 9
          OnClick = N86Click
        end
        object N87: TMenuItem
          Caption = 'Unindent'
          ShortCut = 8201
          OnClick = N87Click
        end
        object N89: TMenuItem
          Caption = '-'
        end
        object N90: TMenuItem
          Caption = 'Enclose Selection'
          ShortCut = 32849
          OnClick = N90Click
        end
        object N37: TMenuItem
          Caption = 'Dublicate Selection'
          ShortCut = 32836
          OnClick = N37Click
        end
      end
      object N66: TMenuItem
        Caption = 'Convert'
        object N60: TMenuItem
          Caption = 'Uppercase'
          ShortCut = 24661
          OnClick = N60Click
        end
        object N68: TMenuItem
          Caption = 'Lowercase'
          ShortCut = 16469
          OnClick = N68Click
        end
        object N70: TMenuItem
          Caption = 'Invert Case'
          ShortCut = 49225
          OnClick = N70Click
        end
        object N69: TMenuItem
          Caption = 'Title Case'
          ShortCut = 49236
          OnClick = N69Click
        end
        object N76: TMenuItem
          Caption = 'Sentence Case'
          ShortCut = 49235
          OnClick = N76Click
        end
      end
      object N77: TMenuItem
        Caption = 'Insert'
        object N48: TMenuItem
          Caption = 'Color under cursor (RGB)'
          ShortCut = 32854
          OnClick = N48Click
        end
        object N99: TMenuItem
          Caption = 'Time/Date'
          ShortCut = 16500
          OnClick = N99Click
        end
        object N78: TMenuItem
          Caption = '-'
        end
        object N100: TMenuItem
          Caption = 'Filename'
          ShortCut = 16504
          OnClick = N100Click
        end
        object N102: TMenuItem
          Caption = 'Filename and path'
          ShortCut = 24696
          OnClick = N102Click
        end
      end
    end
    object N36: TMenuItem
      Caption = 'Search'
      object N26: TMenuItem
        Caption = 'Find...'
        ShortCut = 16454
        OnClick = N26Click
      end
      object N27: TMenuItem
        Caption = 'Find Next'
        ShortCut = 114
        OnClick = N27Click
      end
      object N28: TMenuItem
        Caption = 'Find Previous'
        ShortCut = 8306
        OnClick = N28Click
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object N29: TMenuItem
        Caption = 'Replace...'
        ShortCut = 16456
        OnClick = N29Click
      end
      object N18: TMenuItem
        Caption = 'Replace Next'
        ShortCut = 115
        OnClick = N18Click
      end
      object N33: TMenuItem
        Caption = 'Replace Previous'
        ShortCut = 8307
        OnClick = N33Click
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object N31: TMenuItem
        Caption = 'Goto...'
        ShortCut = 16455
        OnClick = N31Click
      end
      object N141: TMenuItem
        Caption = 'Find mathing brace'
        ShortCut = 24642
        OnClick = N141Click
      end
    end
    object N101: TMenuItem
      Caption = 'Options'
      object N51: TMenuItem
        Caption = 'Font...'
        OnClick = N51Click
      end
      object N32: TMenuItem
        Caption = 'Settings'
        OnClick = N32Click
      end
      object N40: TMenuItem
        Caption = 'Selection'
        object N41: TMenuItem
          AutoCheck = True
          Caption = 'Normal'
          Checked = True
          Default = True
          RadioItem = True
          ShortCut = 24654
          OnClick = N41Click
        end
        object N43: TMenuItem
          AutoCheck = True
          Caption = 'Line'
          RadioItem = True
          ShortCut = 24652
          OnClick = N43Click
        end
        object N42: TMenuItem
          AutoCheck = True
          Caption = 'Column'
          RadioItem = True
          ShortCut = 24643
          OnClick = N42Click
        end
      end
      object N52: TMenuItem
        Caption = '-'
      end
      object N117: TMenuItem
        Caption = 'Language'
        object N126: TMenuItem
          AutoCheck = True
          Caption = 'Internal'
          Checked = True
          Default = True
          RadioItem = True
          OnClick = N126Click
        end
      end
      object N73: TMenuItem
        Caption = '-'
      end
      object N74: TMenuItem
        Caption = 'Syntax'
        object N75: TMenuItem
          AutoCheck = True
          Caption = 'Default'
          Checked = True
          Default = True
          RadioItem = True
          OnClick = N75Click
        end
        object N79: TMenuItem
          AutoCheck = True
          Caption = 'C/C++'
          RadioItem = True
          OnClick = N79Click
        end
        object N81: TMenuItem
          AutoCheck = True
          Caption = 'Eiffel'
          RadioItem = True
          OnClick = N81Click
        end
        object N82: TMenuItem
          AutoCheck = True
          Caption = 'Fortran'
          RadioItem = True
          OnClick = N82Click
        end
        object N83: TMenuItem
          AutoCheck = True
          Caption = 'Java'
          RadioItem = True
          OnClick = N83Click
        end
        object N84: TMenuItem
          AutoCheck = True
          Caption = 'Modula-3'
          RadioItem = True
          OnClick = N84Click
        end
        object N91: TMenuItem
          AutoCheck = True
          Caption = 'Pascal'
          RadioItem = True
          OnClick = N91Click
        end
        object N92: TMenuItem
          AutoCheck = True
          Caption = 'Visual Basic'
          RadioItem = True
          OnClick = N92Click
        end
        object N93: TMenuItem
          AutoCheck = True
          Caption = 'COBOL'
          RadioItem = True
          OnClick = N93Click
        end
        object N94: TMenuItem
          AutoCheck = True
          Caption = 'C#'
          RadioItem = True
          OnClick = N94Click
        end
        object N97: TMenuItem
          AutoCheck = True
          Caption = 'Cascading Stylesheets'
          RadioItem = True
          OnClick = N97Click
        end
        object N98: TMenuItem
          AutoCheck = True
          Caption = 'HTML Document'
          RadioItem = True
          OnClick = N98Click
        end
        object N103: TMenuItem
          AutoCheck = True
          Caption = 'Javascript'
          RadioItem = True
          OnClick = N103Click
        end
        object N106: TMenuItem
          AutoCheck = True
          Caption = 'PHP'
          RadioItem = True
          OnClick = N106Click
        end
        object N107: TMenuItem
          AutoCheck = True
          Caption = 'VBScript'
          RadioItem = True
          OnClick = N107Click
        end
        object N108: TMenuItem
          AutoCheck = True
          Caption = 'XML'
          RadioItem = True
          OnClick = N108Click
        end
        object N109: TMenuItem
          AutoCheck = True
          Caption = 'Vrml97/X3D World'
          RadioItem = True
          OnClick = N109Click
        end
        object N110: TMenuItem
          AutoCheck = True
          Caption = 'AWK Script'
          RadioItem = True
          OnClick = N110Click
        end
        object N111: TMenuItem
          AutoCheck = True
          Caption = 'MS-DOS Batch'
          RadioItem = True
          OnClick = N111Click
        end
        object N112: TMenuItem
          AutoCheck = True
          Caption = 'KiXtart Script'
          RadioItem = True
          OnClick = N112Click
        end
        object N113: TMenuItem
          AutoCheck = True
          Caption = 'Perl'
          RadioItem = True
          OnClick = N113Click
        end
        object N116: TMenuItem
          AutoCheck = True
          Caption = 'Python'
          RadioItem = True
          OnClick = N116Click
        end
        object N118: TMenuItem
          AutoCheck = True
          Caption = 'Tcl/Tk'
          RadioItem = True
          OnClick = N118Click
        end
        object N121: TMenuItem
          AutoCheck = True
          Caption = 'GW-TEL Script'
          RadioItem = True
          OnClick = N121Click
        end
        object N125: TMenuItem
          AutoCheck = True
          Caption = 'Ruby'
          RadioItem = True
          OnClick = N125Click
        end
        object N129: TMenuItem
          AutoCheck = True
          Caption = 'UNIX Shell Script'
          RadioItem = True
          OnClick = N129Click
        end
        object N133: TMenuItem
          AutoCheck = True
          Caption = 'CA-Clipper'
          RadioItem = True
          OnClick = N133Click
        end
        object N134: TMenuItem
          AutoCheck = True
          Caption = 'Cache'
          RadioItem = True
          OnClick = N134Click
        end
        object N136: TMenuItem
          AutoCheck = True
          Caption = 'Foxpro'
          RadioItem = True
          OnClick = N136Click
        end
        object N137: TMenuItem
          AutoCheck = True
          Caption = 'SQL'
          RadioItem = True
          OnClick = N137Click
        end
        object N138: TMenuItem
          AutoCheck = True
          Caption = 'Semanta DD'
          RadioItem = True
          OnClick = N138Click
        end
        object N139: TMenuItem
          AutoCheck = True
          Caption = 'DSP'
          RadioItem = True
          OnClick = N139Click
        end
        object N140: TMenuItem
          AutoCheck = True
          Caption = 'x86 Assembly'
          RadioItem = True
          OnClick = N140Click
        end
        object N142: TMenuItem
          AutoCheck = True
          Caption = '68HC11 Assembler'
          RadioItem = True
          OnClick = N142Click
        end
        object N143: TMenuItem
          AutoCheck = True
          Caption = 'Structured Text'
          RadioItem = True
          OnClick = N143Click
        end
        object N144: TMenuItem
          AutoCheck = True
          Caption = 'GEMBASE'
          RadioItem = True
          OnClick = N144Click
        end
        object N145: TMenuItem
          AutoCheck = True
          Caption = 'Modelica'
          RadioItem = True
          OnClick = N145Click
        end
        object N146: TMenuItem
          AutoCheck = True
          Caption = 'Standard ML'
          RadioItem = True
          OnClick = N146Click
        end
        object N147: TMenuItem
          AutoCheck = True
          Caption = 'Borland Form'
          RadioItem = True
          OnClick = N147Click
        end
        object N148: TMenuItem
          AutoCheck = True
          Caption = 'INI'
          RadioItem = True
          OnClick = N148Click
        end
        object N149: TMenuItem
          AutoCheck = True
          Caption = 'Inno Setup Script'
          RadioItem = True
          OnClick = N149Click
        end
        object N150: TMenuItem
          AutoCheck = True
          Caption = 'Baan 4GL'
          RadioItem = True
          OnClick = N150Click
        end
        object N151: TMenuItem
          AutoCheck = True
          Caption = 'Galaxy'
          RadioItem = True
          OnClick = N151Click
        end
        object N152: TMenuItem
          AutoCheck = True
          Caption = 'Progress'
          RadioItem = True
          OnClick = N152Click
        end
        object N153: TMenuItem
          AutoCheck = True
          Caption = 'Msg'
          RadioItem = True
          OnClick = N153Click
        end
        object N154: TMenuItem
          AutoCheck = True
          Caption = 'CORBA IDL'
          RadioItem = True
          OnClick = N154Click
        end
        object N155: TMenuItem
          AutoCheck = True
          Caption = 'CPM Report'
          RadioItem = True
          OnClick = N155Click
        end
        object N156: TMenuItem
          AutoCheck = True
          Caption = 'TeX'
          RadioItem = True
          OnClick = N156Click
        end
        object N157: TMenuItem
          AutoCheck = True
          Caption = 'Haskell'
          RadioItem = True
          OnClick = N157Click
        end
        object N158: TMenuItem
          AutoCheck = True
          Caption = 'LEGO LDraw'
          RadioItem = True
          OnClick = N158Click
        end
        object N159: TMenuItem
          AutoCheck = True
          Caption = 'DOT Graph Drawing Description'
          RadioItem = True
          OnClick = N159Click
        end
        object N160: TMenuItem
          AutoCheck = True
          Caption = 'Resource'
          RadioItem = True
          OnClick = N160Click
        end
      end
    end
    object N49: TMenuItem
      Caption = 'Help'
      object N50: TMenuItem
        Caption = 'About...'
        ShortCut = 112
        OnClick = N50Click
      end
    end
  end
  object Open: TOpenDialog
    Filter = 
      'All files (*.*)|*.*|C/C++ files (*.c;*.cpp;*.cc;*.h;*.hpp;*.hh;*' +
      '.cxx;*.hxx)|*.c;*.cpp;*.cc;*.h;*.hpp;*.hh;*.cxx;*.hxx|Eiffel (*.' +
      'e;*.ace)|*.e;*.ace|Fortran files (*.for)|*.for|Java files (*.jav' +
      'a)|*.java|Modula-3 files (*.m3)|*.m3|Pascal files (*.pas;*.pp;*.' +
      'dpr;*.dpk;*.inc)|*.pas;*.pp;*.dpr;*.dpk;*.inc|Visual Basic files' +
      ' (*.bas)|*.bas|COBOL files (*.cbl;*.cob)|*.cbl;*.cob|C# files (*' +
      '.cs)|*.cs|Cascading Stylesheets (*.css)|*.css|HTML Documents (*.' +
      'htm;*.html)|*.htm;*.html|Javascript files (*.js)|*.js|PHP files ' +
      '(*.php;*.php3;*.phtml;*.inc)|*.php;*.php3;*.phtml;*.inc|VBScript' +
      ' files (*.vbs)|*.vbs|XML files (*.xml;*.xsd;*.xsl;*.xslt;*.dtd)|' +
      '*.xml;*.xsd;*.xsl;*.xslt;*.dtd|Vrml97/X3D World (*.wrl;*.wrml;*.' +
      'vrl;*.vrml;*.x3d)|*.wrl;*.wrml;*.vrl;*.vrml;*.x3d|AWK Scripts (*' +
      '.awk)|*.awk|MS-DOS Batch files (*.bat;*.cmd)|*.bat;*.cmd|KiXtart' +
      ' Scripts (*.kix)|*.kix|Perl files (*.pl;*.pm;*.cgi)|*.pl;*.pm;*.' +
      'cgi|Python files (*.py)|*.py|Tcl/Tk files (*.tcl)|*.tcl|GW-TEL S' +
      'cripts (*.gws)|*.gws|Ruby files (*.rb;*.rbw)|*.rb;*.rbw|UNIX She' +
      'll Scripts (*.sh)|*.sh|CA-Clipper files (*.prg;*.ch;*.inc)|*.prg' +
      ';*.ch;*.inc|Cache files (*.mac;*.inc;*.int)|*.mac;*.inc;*.int|Fo' +
      'xpro files (*.prg)|*.prg|SQL files (*.sql)|*.sql|Semanta DD file' +
      's (*.sdd)|*.sdd|DSP files (*.dsp;*.inc)|*.dsp;*.inc|x86 Assembly' +
      ' files (*.asm)|*.asm|68HC11 Assembler files (*.hc11;*.asm;*.asc)' +
      '|*.hc11;*.asm;*.asc|Structured Text files (*.st)|*.st|GEMBASE fi' +
      'les (*.dml;*.gem)|*.dml;*.gem|Modelica files (*.mo)|*.mo|Standar' +
      'd ML files (*.sml)|*.sml|Borland Form files (*.dfm;*.xfm)|*.dfm;' +
      '*.xfm|INI files (*.ini)|*.ini|Inno Setup Scripts (*.iss)|*.iss|B' +
      'aan 4GL files (*.cln)|*.cln|Galaxy files (*.gtv;*.galrep;*.txt)|' +
      '*.gtv;*.galrep;*.txt|Progress files (*.w;*.p;*.i)|*.w;*.p;*.i|Ms' +
      'g files (*.msg)|*.msg|CORBA IDL files (*.idl)|*.idl|CPM Reports ' +
      '(*.rdf;*.rif;*.rmf;*.rxf)|*.rdf;*.rif;*.rmf;*.rxf|TeX files (*.t' +
      'ex)|*.tex|Haskell files (*.hs;*.lhs)|*.hs;*.lhs|LEGO LDraw files' +
      ' (*.ldr)|*.ldr|DOT Graph Drawing Description (*.dot)|*.dot|Resou' +
      'rce files (*.rc)|*.rc'
    Left = 200
    Top = 184
  end
  object synprint1: TSynEditPrint
    Copies = 1
    Header.DefaultFont.Charset = DEFAULT_CHARSET
    Header.DefaultFont.Color = clBlack
    Header.DefaultFont.Height = -13
    Header.DefaultFont.Name = 'Arial'
    Header.DefaultFont.Style = []
    Footer.DefaultFont.Charset = DEFAULT_CHARSET
    Footer.DefaultFont.Color = clBlack
    Footer.DefaultFont.Height = -13
    Footer.DefaultFont.Name = 'Arial'
    Footer.DefaultFont.Style = []
    Margins.Left = 25.000000000000000000
    Margins.Right = 15.000000000000000000
    Margins.Top = 25.000000000000000000
    Margins.Bottom = 25.000000000000000000
    Margins.Header = 15.000000000000000000
    Margins.Footer = 15.000000000000000000
    Margins.LeftHFTextIndent = 2.000000000000000000
    Margins.RightHFTextIndent = 2.000000000000000000
    Margins.HFInternalMargin = 0.500000000000000000
    Margins.MirrorMargins = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabWidth = 8
    Color = clWhite
    Left = 208
    Top = 32
  end
  object Popup1: TPopupMenu
    OnPopup = Popup1Popup
    Left = 304
    Top = 64
    object N19: TMenuItem
      Caption = 'Undo'
      OnClick = N11Click
    end
    object N20: TMenuItem
      Caption = 'Redo'
      OnClick = N12Click
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object N22: TMenuItem
      Caption = 'Cut'
      OnClick = N17Click
    end
    object N23: TMenuItem
      Caption = 'Copy'
      OnClick = N15Click
    end
    object N45: TMenuItem
      Caption = 'Copy All'
      OnClick = N39Click
    end
    object N55: TMenuItem
      Caption = 'Copy Add'
      OnClick = N30Click
    end
    object N24: TMenuItem
      Caption = 'Paste'
      OnClick = N16Click
    end
    object N65: TMenuItem
      Caption = 'Swap'
      OnClick = N56Click
    end
    object N85: TMenuItem
      Caption = 'Clear'
      OnClick = N59Click
    end
    object N95: TMenuItem
      Caption = 'Clear All'
      OnClick = N57Click
    end
    object N96: TMenuItem
      Caption = 'Clear Clipboard'
      OnClick = N46Click
    end
    object N25: TMenuItem
      Caption = 'Select All'
      OnClick = N14Click
    end
  end
  object JvTimer1: TJvTimer
    Interval = 100
    ThreadPriority = tpLower
    OnTimer = JvTimer1Timer
    Left = 416
    Top = 32
  end
  object JvTimer3: TJvTimer
    Interval = 100
    OnTimer = JvTimer3Timer
    Left = 448
    Top = 32
  end
  object JvTimer4: TJvTimer
    Interval = 100
    OnTimer = JvTimer4Timer
    Left = 480
    Top = 32
  end
  object JvDragDrop1: TJvDragDrop
    DropTarget = Owner
    OnDrop = JvDragDrop1Drop
    Left = 416
    Top = 64
  end
  object SynEditRegexSearch1: TSynEditRegexSearch
    Left = 88
    Top = 16
  end
  object SynEditSearch1: TSynEditSearch
    Left = 56
    Top = 16
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Device = fdBoth
    Options = [fdEffects, fdFixedPitchOnly]
    Left = 208
    Top = 120
  end
  object JvTrayIcon1: TJvTrayIcon
    IconIndex = 0
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvAutoHideIcon, tvRestoreClick]
    Left = 480
    Top = 64
  end
  object Save: TSaveTextFileDialog
    FileName = 'Untitled.txt'
    Filter = 
      'All files (*.*)|*.*|C/C++ files (*.c;*.cpp;*.cc;*.h;*.hpp;*.hh;*' +
      '.cxx;*.hxx)|*.c;*.cpp;*.cc;*.h;*.hpp;*.hh;*.cxx;*.hxx|Eiffel (*.' +
      'e;*.ace)|*.e;*.ace|Fortran files (*.for)|*.for|Java files (*.jav' +
      'a)|*.java|Modula-3 files (*.m3)|*.m3|Pascal files (*.pas;*.pp;*.' +
      'dpr;*.dpk;*.inc)|*.pas;*.pp;*.dpr;*.dpk;*.inc|Visual Basic files' +
      ' (*.bas)|*.bas|COBOL files (*.cbl;*.cob)|*.cbl;*.cob|C# files (*' +
      '.cs)|*.cs|Cascading Stylesheets (*.css)|*.css|HTML Documents (*.' +
      'htm;*.html)|*.htm;*.html|Javascript files (*.js)|*.js|PHP files ' +
      '(*.php;*.php3;*.phtml;*.inc)|*.php;*.php3;*.phtml;*.inc|VBScript' +
      ' files (*.vbs)|*.vbs|XML files (*.xml;*.xsd;*.xsl;*.xslt;*.dtd)|' +
      '*.xml;*.xsd;*.xsl;*.xslt;*.dtd|Vrml97/X3D World (*.wrl;*.wrml;*.' +
      'vrl;*.vrml;*.x3d)|*.wrl;*.wrml;*.vrl;*.vrml;*.x3d|AWK Scripts (*' +
      '.awk)|*.awk|MS-DOS Batch files (*.bat;*.cmd)|*.bat;*.cmd|KiXtart' +
      ' Scripts (*.kix)|*.kix|Perl files (*.pl;*.pm;*.cgi)|*.pl;*.pm;*.' +
      'cgi|Python files (*.py)|*.py|Tcl/Tk files (*.tcl)|*.tcl|GW-TEL S' +
      'cripts (*.gws)|*.gws|Ruby files (*.rb;*.rbw)|*.rb;*.rbw|UNIX She' +
      'll Scripts (*.sh)|*.sh|CA-Clipper files (*.prg;*.ch;*.inc)|*.prg' +
      ';*.ch;*.inc|Cache files (*.mac;*.inc;*.int)|*.mac;*.inc;*.int|Fo' +
      'xpro files (*.prg)|*.prg|SQL files (*.sql)|*.sql|Semanta DD file' +
      's (*.sdd)|*.sdd|DSP files (*.dsp;*.inc)|*.dsp;*.inc|x86 Assembly' +
      ' files (*.asm)|*.asm|68HC11 Assembler files (*.hc11;*.asm;*.asc)' +
      '|*.hc11;*.asm;*.asc|Structured Text files (*.st)|*.st|GEMBASE fi' +
      'les (*.dml;*.gem)|*.dml;*.gem|Modelica files (*.mo)|*.mo|Standar' +
      'd ML files (*.sml)|*.sml|Borland Form files (*.dfm;*.xfm)|*.dfm;' +
      '*.xfm|INI files (*.ini)|*.ini|Inno Setup Scripts (*.iss)|*.iss|B' +
      'aan 4GL files (*.cln)|*.cln|Galaxy files (*.gtv;*.galrep;*.txt)|' +
      '*.gtv;*.galrep;*.txt|Progress files (*.w;*.p;*.i)|*.w;*.p;*.i|Ms' +
      'g files (*.msg)|*.msg|CORBA IDL files (*.idl)|*.idl|CPM Reports ' +
      '(*.rdf;*.rif;*.rmf;*.rxf)|*.rdf;*.rif;*.rmf;*.rxf|TeX files (*.t' +
      'ex)|*.tex|Haskell files (*.hs;*.lhs)|*.hs;*.lhs|LEGO LDraw files' +
      ' (*.ldr)|*.ldr|DOT Graph Drawing Description (*.dot)|*.dot|Resou' +
      'rce files (*.rc)|*.rc'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Encodings.Strings = (
      'Ansi'
      'ASCII'
      'UTF-16 little endian'
      'UTF-16 big endian'
      'UTF-8'
      'UTF-7')
    Left = 232
    Top = 184
  end
  object dlg1: TJvRunDialog
    Left = 520
    Top = 32
  end
  object Rcnt: TJvMRUManager
    Duplicates = dupIgnore
    IniStorage = FormIni
    RecentMenu = N127
    ShowAccelChar = False
    OnClick = RcntClick
    Left = 440
    Top = 120
  end
  object AppIni: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    StorageOptions.BooleanAsString = False
    StorageOptions.EnumerationAsString = False
    StorageOptions.TypedIntegerAsString = False
    StorageOptions.DateTimeAsString = False
    StorageOptions.DefaultIfReadConvertError = True
    AutoFlush = True
    FileName = 'biredit.ini'
    Location = flUserFolder
    DefaultSection = 'General'
    SubStorages = <>
    SynchronizeFlushReload = True
    Left = 520
    Top = 120
  end
  object FormIni: TJvFormStorage
    AppStorage = AppIni
    AppStoragePath = 'General\'
    Options = [fpSize, fpLocation]
    VersionCheck = fpvcNocheck
    StoredValues = <>
    Left = 480
    Top = 120
  end
  object SynCpp: TSynCppSyn
    Left = 8
    Top = 248
  end
  object SynEif: TSynEiffelSyn
    Left = 40
    Top = 248
  end
  object SynFor: TSynFortranSyn
    Left = 72
    Top = 248
  end
  object SynDef: TSynGeneralSyn
    Comments = []
    DetectPreprocessor = False
    IdentifierChars = '_0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    Left = 8
    Top = 192
  end
  object SynJava: TSynJavaSyn
    Left = 104
    Top = 248
  end
  object SynMod: TSynM3Syn
    Left = 136
    Top = 248
  end
  object SynPas: TSynPasSyn
    Left = 168
    Top = 248
  end
  object SynBas: TSynVBSyn
    Left = 200
    Top = 248
  end
  object SynCobol: TSynCobolSyn
    AreaAStartPos = 7
    AreaBStartPos = 11
    CodeEndPos = 71
    Left = 232
    Top = 248
  end
  object SynCS: TSynCSSyn
    Left = 264
    Top = 248
  end
  object SynCss: TSynCssSyn
    Left = 296
    Top = 248
  end
  object SynHtml: TSynHTMLSyn
    Left = 328
    Top = 248
  end
  object SynJS: TSynJScriptSyn
    Left = 360
    Top = 248
  end
  object SynPhp: TSynPHPSyn
    Left = 392
    Top = 248
  end
  object SynVbs: TSynVBScriptSyn
    Left = 424
    Top = 248
  end
  object SynXml: TSynXMLSyn
    WantBracesParsed = False
    Left = 456
    Top = 248
  end
  object SynVrml: TSynVrml97Syn
    Left = 488
    Top = 248
  end
  object SynAwk: TSynAWKSyn
    Left = 520
    Top = 248
  end
  object SynBat: TSynBatSyn
    Left = 552
    Top = 248
  end
  object SynKix: TSynKixSyn
    Left = 8
    Top = 280
  end
  object SynPerl: TSynPerlSyn
    Left = 40
    Top = 280
  end
  object SynPy: TSynPythonSyn
    Left = 72
    Top = 280
  end
  object SynTcl: TSynTclTkSyn
    OptionsAttri.Background = clNone
    OptionsAttri.Foreground = clNone
    PathAttri.Background = clNone
    PathAttri.Foreground = clNone
    VariableAttri.Background = clNone
    VariableAttri.Foreground = clNone
    Left = 104
    Top = 280
  end
  object SynGws: TSynGWScriptSyn
    Left = 136
    Top = 280
  end
  object SynRuby: TSynRubySyn
    Left = 168
    Top = 280
  end
  object SynUSh: TSynUNIXShellScriptSyn
    Left = 200
    Top = 280
  end
  object SynCac: TSynCACSyn
    Left = 232
    Top = 280
  end
  object SynCch: TSynCacheSyn
    Left = 264
    Top = 280
  end
  object SynFox: TSynFoxproSyn
    Left = 296
    Top = 280
  end
  object SynSql: TSynSQLSyn
    Left = 328
    Top = 280
  end
  object SynSdd: TSynSDDSyn
    Left = 360
    Top = 280
  end
  object SynDsp: TSynADSP21xxSyn
    Left = 392
    Top = 280
  end
  object SynAsm: TSynAsmSyn
    Left = 424
    Top = 280
  end
  object SynHc: TSynHC11Syn
    Left = 456
    Top = 280
  end
  object SynSt: TSynSTSyn
    Left = 488
    Top = 280
  end
  object SynGem: TSynDmlSyn
    Left = 520
    Top = 280
  end
  object SynModa: TSynModelicaSyn
    Left = 552
    Top = 280
  end
  object SynSml: TSynSMLSyn
    Left = 8
    Top = 312
  end
  object SynDfm: TSynDfmSyn
    Left = 40
    Top = 312
  end
  object SynIni: TSynIniSyn
    Left = 72
    Top = 312
  end
  object SynInno: TSynInnoSyn
    Left = 104
    Top = 312
  end
  object SynBaan: TSynBaanSyn
    Left = 136
    Top = 312
  end
  object SynGal: TSynGalaxySyn
    KeyWords.Strings = (
      '#end'
      '#galaxy'
      'a'
      'anonymous'
      'autounload'
      'b'
      'battleprotocol'
      'c'
      'cap'
      'cargo'
      'col'
      'compress'
      'd'
      'drive'
      'e'
      'emp'
      'f'
      'fleet'
      'fleettables'
      'g'
      'galaxytv'
      'gplus'
      'groupforecast'
      'h'
      'i'
      'j'
      'l'
      'm'
      'machinereport'
      'mat'
      'n'
      'namecase'
      'no'
      'o'
      'options'
      'p'
      'planetforecast'
      'prodtable'
      'produce'
      'q'
      'r'
      'routesforecast'
      's'
      'send'
      'shields'
      'shiptypeforecast'
      'sortgroups'
      't'
      'twocol'
      'u'
      'underscores'
      'v'
      'w'
      'war'
      'weapons'
      'x'
      'y'
      'z')
    Left = 168
    Top = 312
  end
  object SynPrg: TSynProgressSyn
    Left = 200
    Top = 312
  end
  object SynMsg: TSynMsgSyn
    Left = 232
    Top = 312
  end
  object SynIdl: TSynIdlSyn
    Left = 264
    Top = 312
  end
  object SynCpm: TSynCPMSyn
    Left = 296
    Top = 312
  end
  object SynTex: TSynTeXSyn
    Left = 328
    Top = 312
  end
  object SynHas: TSynHaskellSyn
    Left = 360
    Top = 312
  end
  object SynLdr: TSynLDRSyn
    Left = 392
    Top = 312
  end
  object SynDot: TSynDOTSyn
    Left = 424
    Top = 312
  end
  object SynRc: TSynRCSyn
    Left = 456
    Top = 312
  end
end
