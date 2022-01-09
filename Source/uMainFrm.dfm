object Editor: TEditor
  Left = 353
  Top = 233
  Caption = 'Untitled - BirEdit'
  ClientHeight = 366
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Edit: TSynEdit
    Left = 0
    Top = 0
    Width = 592
    Height = 347
    Align = alClient
    ActiveLineColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = Popup1
    TabOrder = 0
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clBlack
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    OnChange = EditChange
    OnReplaceText = EditReplaceText
  end
  object Status: TStatusBar
    Left = 0
    Top = 347
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
    Top = 64
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
          ShortCut = 32816
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
      object N138: TMenuItem
        Caption = 'Line'
        object N42: TMenuItem
          Caption = 'Insert'
          ShortCut = 16462
          OnClick = N42Click
        end
        object N139: TMenuItem
          Caption = 'Delete'
          ShortCut = 16473
          OnClick = N139Click
        end
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
      object N140: TMenuItem
        Caption = 'Special'
        object N141: TMenuItem
          Caption = 'Find mathing brace'
          ShortCut = 24642
          OnClick = N141Click
        end
      end
      object N58: TMenuItem
        Caption = '-'
      end
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
      object N29: TMenuItem
        Caption = 'Replace...'
        ShortCut = 16456
        OnClick = N29Click
      end
      object N31: TMenuItem
        Caption = 'Goto...'
        ShortCut = 16455
        OnClick = N31Click
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
      'All files (*.*)|*.*|C/C++ (*.c;*.cc;*.cpp;*.cxx;*.h;*.hh;*.hpp;*' +
      '.hxx)|*.c;*.cc;*.cpp;*.cxx;*.h;*.hh;*.hpp;*.hxx|Eiffel (*.ace;*.' +
      'e)|*.ace;*.e|Fortran (*.for)|*.for|Java (*.java)|*.java|Modula-3' +
      ' (*.m3)|*.m3|Pascal (*.dpk;*.dpr;*.inc;*.pas;*.pp)|*.dpk;*.dpr;*' +
      '.inc;*.pas;*.pp|Visual Basic (*.bas)|*.bas|COBOL (*.cbl;*.cob)|*' +
      '.cbl;*.cob|C# (*.cs)|*.cs|Cascading Stylesheet (*.css)|*.css|HTM' +
      'L Document (*.htm;*.html)|*.htm;*.html|Javascript (*.js)|*.js|PH' +
      'P (*.inc;*.php;*.php3;*.phtml)|*.inc;*.php;*.php3;*.phtml|VBScri' +
      'pt (*.vbs)|*.vbs|XML (*.xml;*.xsd;*.xsl;*.xslt;*.dtd)|*.xml;*.xs' +
      'd;*.xsl;*.xslt;*.dtd|Vrml97/X3D World (*.wrl;*.wrml;*.vrl;*.vrml' +
      ';*.x3d)|*.wrl;*.wrml;*.vrl;*.vrml;*.x3d|AWK Script (*.awk)|*.awk' +
      '|MS-DOS Batch (*.bat;*.cmd)|*.bat;*.cmd|KiXtart Script (*.kix)|*' +
      '.kix|Perl (*.pl;*.pm;*.cgi)|*.pl;*.pm;*.cgi|Python (*.py)|*.py|T' +
      'cl/Tk (*.tcl)|*.tcl|GW-TEL Script (*.gws)|*.gws|Ruby (*.rb;*.rbw' +
      ')|*.rb;*.rbw|UNIX Shell Script (*.sh)|*.sh|CA-Clipper (*.prg;*.c' +
      'h;*.inc)|*.prg;*.ch;*.inc|Cache (*.mac;*.inc;*.int)|*.mac;*.inc;' +
      '*.int|Foxpro (*.prg)|*.prg|SQL (*.sql)|*.sql|Semanta DD (*.sdd)|' +
      '*.sdd|DSP (*.dsp;*.inc)|*.dsp;*.inc|x86 Assembly (*.asm)|*.asm|6' +
      '8HC11 Assembler (*.hc11;*.asm;*.asc)|*.hc11;*.asm;*.asc|HP48 (*.' +
      's;*.sou;*.a;*.hp)|*.s;*.sou;*.a;*.hp|Structured Text (*.st)|*.st' +
      '|GEMBASE (*.dml;*.gem)|*.dml;*.gem|Modelica (*.mo)|*.mo|Standard' +
      ' ML (*.sml)|*.sml|Borland Form (*.dfm;*.xfm)|*.dfm;*.xfm|INI (*.' +
      'ini)|*.ini|Inno Setup Script (*.iss)|*.iss|Baan 4GL (*.cln)|*.cl' +
      'n|Galaxy (*.gtv;*.galrep;*.txt)|*.gtv;*.galrep;*.txt|Progress (*' +
      '.w;*.p;*.i)|*.w;*.p;*.i|Msg (*.msg)|*.msg|CORBA IDL (*.idl)|*.id' +
      'l|CPM Report (*.rdf;*.rif;*.rmf;*.rxf)|*.rdf;*.rif;*.rmf;*.rxf|T' +
      'eX (*.tex)|*.tex|Haskell (*.hs;*.lhs)|*.hs;*.lhs|LEGO LDraw (*.l' +
      'dr)|*.ldr|DOT Graph Drawing Description (*.dot)|*.dot|Resource (' +
      '*.rc)|*.rc'
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
    Options = [fdEffects, fdFixedPitchOnly]
    Left = 208
    Top = 120
  end
  object JvTrayIcon1: TJvTrayIcon
    IconIndex = 0
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvAutoHideIcon, tvRestoreClick]
    OnClick = JvTrayIcon1Click
    Left = 480
    Top = 64
  end
  object Save: TSaveTextFileDialog
    FileName = 'Untitled.txt'
    Filter = 'Any file (*.*)|*.*'
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
end
