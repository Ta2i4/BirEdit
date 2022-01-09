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
  OnCloseQuery = TntFormCloseQuery
  OnCreate = TntFormCreate
  OnDestroy = TntFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Edit: TSynEdit
    Left = 0
    Top = 22
    Width = 592
    Height = 325
    Align = alClient
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
  end
  object Status: TTntStatusBar
    Left = 0
    Top = 347
    Width = 592
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 50
      end
      item
        Width = 60
      end
      item
        Width = 50
      end>
  end
  object TntToolBar1: TTntToolBar
    Left = 0
    Top = 0
    Width = 592
    Height = 22
    AutoSize = True
    Images = imagelist1
    TabOrder = 2
    object TntToolButton1: TTntToolButton
      Left = 0
      Top = 0
      Hint = 'New'
      AutoSize = True
      Caption = 'New'
      ImageIndex = 0
      MenuItem = N105
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton2: TTntToolButton
      Left = 23
      Top = 0
      Hint = 'Open'
      AutoSize = True
      Caption = 'Open'
      ImageIndex = 1
      MenuItem = N3
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton3: TTntToolButton
      Left = 46
      Top = 0
      Hint = 'Save'
      AutoSize = True
      Caption = 'Save'
      ImageIndex = 2
      MenuItem = N4
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton4: TTntToolButton
      Left = 69
      Top = 0
      Hint = 'Save As...'
      Caption = 'Save As...'
      ImageIndex = 14
      MenuItem = N5
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton5: TTntToolButton
      Left = 92
      Top = 0
      Hint = 'Save Copy...'
      Caption = 'Save Copy...'
      ImageIndex = 15
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton6: TTntToolButton
      Left = 115
      Top = 0
      Width = 8
      Caption = 'TntToolButton6'
      Style = tbsSeparator
    end
    object TntToolButton7: TTntToolButton
      Left = 123
      Top = 0
      Hint = 'Print'
      Caption = 'Print'
      ImageIndex = 17
      MenuItem = N8
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton8: TTntToolButton
      Left = 146
      Top = 0
      Width = 8
      Caption = 'TntToolButton8'
      Style = tbsSeparator
    end
    object TntToolButton9: TTntToolButton
      Left = 154
      Top = 0
      Hint = 'Undo'
      Caption = 'Undo'
      ImageIndex = 3
      MenuItem = N11
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton10: TTntToolButton
      Left = 177
      Top = 0
      Hint = 'Redo'
      Caption = 'Redo'
      ImageIndex = 4
      MenuItem = N12
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton11: TTntToolButton
      Left = 200
      Top = 0
      Width = 8
      Caption = 'TntToolButton11'
      Style = tbsSeparator
    end
    object TntToolButton12: TTntToolButton
      Left = 208
      Top = 0
      Hint = 'Cut'
      Caption = 'Cut'
      ImageIndex = 5
      MenuItem = N17
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton13: TTntToolButton
      Left = 231
      Top = 0
      Hint = 'Copy'
      Caption = 'Copy'
      ImageIndex = 6
      MenuItem = N15
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton14: TTntToolButton
      Left = 254
      Top = 0
      Hint = 'Paste'
      Caption = 'Paste'
      ImageIndex = 7
      MenuItem = N16
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton15: TTntToolButton
      Left = 277
      Top = 0
      Hint = 'Clear'
      Caption = 'Clear'
      ImageIndex = 16
      MenuItem = N59
      ParentShowHint = False
      ShowHint = True
    end
    object TntToolButton16: TTntToolButton
      Left = 300
      Top = 0
      Width = 8
      Caption = 'TntToolButton16'
      Style = tbsSeparator
    end
    object TntToolButton17: TTntToolButton
      Left = 308
      Top = 0
      Hint = 'Exit'
      Caption = 'Exit'
      ImageIndex = 13
      MenuItem = N2
      ParentShowHint = False
      ShowHint = True
    end
  end
  object MainMenu: TTntMainMenu
    Images = imagelist1
    Left = 208
    Top = 64
    object N1: TTntMenuItem
      Caption = 'File'
      object N105: TTntMenuItem
        Caption = 'New'
        Hint = 'New'
        ImageIndex = 0
        ShortCut = 16462
        OnClick = N105Click
      end
      object N3: TTntMenuItem
        Caption = 'Open'
        Hint = 'Open'
        ImageIndex = 1
        ShortCut = 16463
        OnClick = N3Click
      end
      object N104: TTntMenuItem
        Caption = 'Revert'
        Hint = 'Revert'
        ShortCut = 116
        OnClick = N104Click
      end
      object N4: TTntMenuItem
        Caption = 'Save'
        Hint = 'Save'
        ImageIndex = 2
        ShortCut = 16467
        OnClick = N4Click
      end
      object N5: TTntMenuItem
        Caption = 'Save As...'
        Hint = 'Save As...'
        ImageIndex = 14
        ShortCut = 117
        OnClick = N5Click
      end
      object N135: TTntMenuItem
        Caption = '-'
      end
      object N120: TTntMenuItem
        Caption = 'Launch'
        object N119: TTntMenuItem
          Caption = 'New Window'
          ShortCut = 32846
          OnClick = N119Click
        end
        object N122: TTntMenuItem
          Caption = 'Empty Window'
          ShortCut = 32816
          OnClick = N122Click
        end
        object N123: TTntMenuItem
          Caption = '-'
        end
        object N124: TTntMenuItem
          Caption = 'Execute Document'
          ShortCut = 16460
          OnClick = N124Click
        end
        object N80: TTntMenuItem
          Caption = 'Open With...'
          ShortCut = 32844
          OnClick = N80Click
        end
      end
      object N9: TTntMenuItem
        Caption = '-'
      end
      object N125: TTntMenuItem
        Caption = 'Codepage'
        object N134: TTntMenuItem
          AutoCheck = True
          Caption = 'Default'
          Checked = True
          Default = True
          RadioItem = True
          OnClick = N134Click
        end
        object N129: TTntMenuItem
          AutoCheck = True
          Caption = 'ANSI'
          RadioItem = True
          OnClick = N129Click
        end
        object N133: TTntMenuItem
          AutoCheck = True
          Caption = 'Unicode'
          RadioItem = True
          OnClick = N133Click
        end
      end
      object N121: TTntMenuItem
        Caption = '-'
      end
      object N7: TTntMenuItem
        Caption = 'Print Preview'
        OnClick = N7Click
      end
      object N8: TTntMenuItem
        Caption = 'Print'
        Hint = 'Print'
        ImageIndex = 17
        ShortCut = 16464
        OnClick = N8Click
      end
      object N6: TTntMenuItem
        Caption = '-'
      end
      object N114: TTntMenuItem
        Caption = 'Properties'
        OnClick = N114Click
      end
      object N115: TTntMenuItem
        Caption = '-'
      end
      object N127: TTntMenuItem
        Caption = 'Recent files'
        object N130: TTntMenuItem
          Caption = 'Delete non-existent'
          OnClick = N130Click
        end
        object N132: TTntMenuItem
          Caption = 'Clear list'
          OnClick = N132Click
        end
        object N131: TTntMenuItem
          Caption = '-'
        end
      end
      object N128: TTntMenuItem
        Caption = '-'
      end
      object N2: TTntMenuItem
        Caption = 'Exit'
        Hint = 'Exit'
        ImageIndex = 13
        ShortCut = 32883
        OnClick = N2Click
      end
    end
    object N10: TTntMenuItem
      Caption = 'Edit'
      object N11: TTntMenuItem
        Caption = 'Undo'
        Hint = 'Undo'
        ImageIndex = 3
        ShortCut = 16474
        OnClick = N11Click
      end
      object N12: TTntMenuItem
        Caption = 'Redo'
        Hint = 'Redo'
        ImageIndex = 4
        ShortCut = 16473
        OnClick = N12Click
      end
      object N13: TTntMenuItem
        Caption = '-'
      end
      object N17: TTntMenuItem
        Caption = 'Cut'
        Hint = 'Cut'
        ImageIndex = 5
        ShortCut = 16472
        OnClick = N17Click
      end
      object N15: TTntMenuItem
        Caption = 'Copy'
        Hint = 'Copy'
        ImageIndex = 6
        ShortCut = 16451
        OnClick = N15Click
      end
      object N39: TTntMenuItem
        Caption = 'Copy All'
        ShortCut = 32835
        OnClick = N39Click
      end
      object N30: TTntMenuItem
        Caption = 'Copy Add'
        ShortCut = 16453
        OnClick = N30Click
      end
      object N16: TTntMenuItem
        Caption = 'Paste'
        Hint = 'Paste'
        ImageIndex = 7
        ShortCut = 16470
        OnClick = N16Click
      end
      object N56: TTntMenuItem
        Caption = 'Swap'
        ShortCut = 16459
        OnClick = N56Click
      end
      object N59: TTntMenuItem
        Caption = 'Clear'
        Hint = 'Clear'
        ImageIndex = 16
        ShortCut = 46
        OnClick = N59Click
      end
      object N57: TTntMenuItem
        Caption = 'Clear All'
        Hint = 'Clear All'
        OnClick = N57Click
      end
      object N46: TTntMenuItem
        Caption = 'Clear Clipboard'
        OnClick = N46Click
      end
      object N14: TTntMenuItem
        Caption = 'Select All'
        ShortCut = 16449
        OnClick = N14Click
      end
      object N67: TTntMenuItem
        Caption = '-'
      end
      object N88: TTntMenuItem
        Caption = 'Block'
        object N86: TTntMenuItem
          Caption = 'Indent'
          ShortCut = 9
          OnClick = N86Click
        end
        object N87: TTntMenuItem
          Caption = 'Unindent'
          ShortCut = 8201
          OnClick = N87Click
        end
        object N89: TTntMenuItem
          Caption = '-'
        end
        object N90: TTntMenuItem
          Caption = 'Enclose Selection'
          ShortCut = 32849
          OnClick = N90Click
        end
        object N37: TTntMenuItem
          Caption = 'Dublicate Selection'
          ShortCut = 32836
          OnClick = N37Click
        end
      end
      object N66: TTntMenuItem
        Caption = 'Convert'
        object N60: TTntMenuItem
          Caption = 'Uppercase'
          ShortCut = 24661
          OnClick = N60Click
        end
        object N68: TTntMenuItem
          Caption = 'Lowercase'
          ShortCut = 16469
          OnClick = N68Click
        end
        object N70: TTntMenuItem
          Caption = 'Invert Case'
          ShortCut = 49225
          OnClick = N70Click
        end
        object N69: TTntMenuItem
          Caption = 'Title Case'
          ShortCut = 49236
          OnClick = N69Click
        end
        object N76: TTntMenuItem
          Caption = 'Sentence Case'
          ShortCut = 49235
          OnClick = N76Click
        end
      end
      object N77: TTntMenuItem
        Caption = 'Insert'
        object N99: TTntMenuItem
          Caption = 'Time/Date'
          ShortCut = 16500
          OnClick = N99Click
        end
        object N78: TTntMenuItem
          Caption = '-'
        end
        object N100: TTntMenuItem
          Caption = 'Filename'
          ShortCut = 16504
          OnClick = N100Click
        end
        object N102: TTntMenuItem
          Caption = 'Filename and path'
          ShortCut = 24696
          OnClick = N102Click
        end
      end
      object N58: TTntMenuItem
        Caption = '-'
      end
      object N38: TTntMenuItem
        Caption = 'Bookmarks'
        object N33: TTntMenuItem
          Caption = 'Set'
          object N03: TTntMenuItem
            Caption = '0'
            ShortCut = 24624
            OnClick = N01Click
          end
          object N112: TTntMenuItem
            Caption = '1'
            ShortCut = 24625
            OnClick = N110Click
          end
          object N210: TTntMenuItem
            Caption = '2'
            ShortCut = 24626
            OnClick = N27Click
          end
          object N35: TTntMenuItem
            Caption = '3'
            ShortCut = 24627
            OnClick = N31Click
          end
          object N43: TTntMenuItem
            Caption = '4'
            ShortCut = 24628
            OnClick = N41Click
          end
          object N53: TTntMenuItem
            Caption = '5'
            ShortCut = 24629
            OnClick = N51Click
          end
          object N63: TTntMenuItem
            Caption = '6'
            ShortCut = 24630
            OnClick = N61Click
          end
          object N73: TTntMenuItem
            Caption = '7'
            ShortCut = 24631
            OnClick = N71Click
          end
          object N83: TTntMenuItem
            Caption = '8'
            ShortCut = 24632
            OnClick = N81Click
          end
          object N93: TTntMenuItem
            Caption = '9'
            ShortCut = 24633
            OnClick = N91Click
          end
        end
        object N34: TTntMenuItem
          Caption = 'Go To'
          object N04: TTntMenuItem
            Caption = '0'
            ShortCut = 16432
            OnClick = N02Click
          end
          object N113: TTntMenuItem
            Caption = '1'
            ShortCut = 16433
            OnClick = N111Click
          end
          object N211: TTntMenuItem
            Caption = '2'
            ShortCut = 16434
            OnClick = N29Click
          end
          object N36: TTntMenuItem
            Caption = '3'
            ShortCut = 16435
            OnClick = N32Click
          end
          object N44: TTntMenuItem
            Caption = '4'
            ShortCut = 16436
            OnClick = N42Click
          end
          object N54: TTntMenuItem
            Caption = '5'
            ShortCut = 16437
            OnClick = N52Click
          end
          object N64: TTntMenuItem
            Caption = '6'
            ShortCut = 16438
            OnClick = N62Click
          end
          object N74: TTntMenuItem
            Caption = '7'
            ShortCut = 16439
            OnClick = N72Click
          end
          object N84: TTntMenuItem
            Caption = '8'
            ShortCut = 16440
            OnClick = N82Click
          end
          object N94: TTntMenuItem
            Caption = '9'
            ShortCut = 16441
            OnClick = N92Click
          end
        end
      end
    end
    object N101: TTntMenuItem
      Caption = 'Options'
      object N117: TTntMenuItem
        Caption = 'Language'
        object N126: TTntMenuItem
          AutoCheck = True
          Caption = 'Internal'
          Checked = True
          Default = True
          RadioItem = True
          OnClick = N126Click
        end
      end
      object N47: TTntMenuItem
        AutoCheck = True
        Caption = 'Line Numbers'
        OnClick = N47Click
      end
      object N116: TTntMenuItem
        AutoCheck = True
        Caption = 'Show Statusbar'
        OnClick = N116Click
      end
      object N118: TTntMenuItem
        AutoCheck = True
        Caption = 'Show Toolbar'
        OnClick = N118Click
      end
      object N103: TTntMenuItem
        Caption = 'Tab Settings'
        ShortCut = 16468
        OnClick = N103Click
      end
      object N48: TTntMenuItem
        AutoCheck = True
        Caption = 'Word Wrap'
        OnClick = N48Click
      end
    end
    object N40: TTntMenuItem
      Caption = 'Advanced'
    end
    object N49: TTntMenuItem
      Caption = 'Help'
      object N50: TTntMenuItem
        Caption = 'About...'
        ShortCut = 112
        OnClick = N50Click
      end
    end
  end
  object Open: TTntOpenDialog
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
    Left = 240
    Top = 64
  end
  object Save: TTntSaveDialog
    FileName = 'Untitled.txt'
    Filter = 'All files (*.*)|*.*'
    Left = 272
    Top = 64
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
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabWidth = 8
    Color = clWhite
    Left = 208
    Top = 32
  end
  object Popup1: TTntPopupMenu
    Images = imagelist1
    Left = 304
    Top = 64
    object N19: TTntMenuItem
      Caption = 'Undo'
      OnClick = N11Click
    end
    object N20: TTntMenuItem
      Caption = 'Redo'
      OnClick = N12Click
    end
    object N21: TTntMenuItem
      Caption = '-'
    end
    object N22: TTntMenuItem
      Caption = 'Cut'
      OnClick = N17Click
    end
    object N23: TTntMenuItem
      Caption = 'Copy'
      OnClick = N15Click
    end
    object N45: TTntMenuItem
      Caption = 'Copy All'
      OnClick = N39Click
    end
    object N55: TTntMenuItem
      Caption = 'Copy Add'
      OnClick = N30Click
    end
    object N24: TTntMenuItem
      Caption = 'Paste'
      OnClick = N16Click
    end
    object N65: TTntMenuItem
      Caption = 'Swap'
      OnClick = N56Click
    end
    object N85: TTntMenuItem
      Caption = 'Clear'
      OnClick = N59Click
    end
    object N95: TTntMenuItem
      Caption = 'Clear All'
      OnClick = N57Click
    end
    object N96: TTntMenuItem
      Caption = 'Clear Clipboard'
      OnClick = N46Click
    end
    object N25: TTntMenuItem
      Caption = 'Select All'
      OnClick = N14Click
    end
    object N18: TTntMenuItem
      Caption = '-'
    end
    object N75: TTntMenuItem
      Caption = 'Bookmarks'
      object N26: TTntMenuItem
        Caption = 'Set'
        object N01: TTntMenuItem
          Caption = '0'
          OnClick = N01Click
        end
        object N110: TTntMenuItem
          Caption = '1'
          OnClick = N110Click
        end
        object N27: TTntMenuItem
          Caption = '2'
          OnClick = N27Click
        end
        object N31: TTntMenuItem
          Caption = '3'
          OnClick = N31Click
        end
        object N41: TTntMenuItem
          Caption = '4'
          OnClick = N41Click
        end
        object N51: TTntMenuItem
          Caption = '5'
          OnClick = N51Click
        end
        object N61: TTntMenuItem
          Caption = '6'
          OnClick = N61Click
        end
        object N71: TTntMenuItem
          Caption = '7'
          OnClick = N71Click
        end
        object N81: TTntMenuItem
          Caption = '8'
          OnClick = N81Click
        end
        object N91: TTntMenuItem
          Caption = '9'
          OnClick = N91Click
        end
      end
      object N28: TTntMenuItem
        Caption = 'Go To'
        object N02: TTntMenuItem
          Caption = '0'
          OnClick = N02Click
        end
        object N111: TTntMenuItem
          Caption = '1'
          OnClick = N111Click
        end
        object N29: TTntMenuItem
          Caption = '2'
          OnClick = N29Click
        end
        object N32: TTntMenuItem
          Caption = '3'
          OnClick = N32Click
        end
        object N42: TTntMenuItem
          Caption = '4'
          OnClick = N42Click
        end
        object N52: TTntMenuItem
          Caption = '5'
          OnClick = N52Click
        end
        object N62: TTntMenuItem
          Caption = '6'
          OnClick = N62Click
        end
        object N72: TTntMenuItem
          Caption = '7'
          OnClick = N72Click
        end
        object N82: TTntMenuItem
          Caption = '8'
          OnClick = N82Click
        end
        object N92: TTntMenuItem
          Caption = '9'
          OnClick = N92Click
        end
      end
    end
  end
  object imagelist1: TImageList
    Left = 240
    Top = 32
    Bitmap = {
      494C010112001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000002AD100002AD1008065600080656000806350008063
      50007060500070605000706050006653420066534200604C3700604C3700604C
      3700604C37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002AD100002AD100002A
      D100000000000000000000000000000000000000000000000000000000000000
      000000000000002AD300002AD200002AD200A2857200FEF0E000B0A09000C0A8
      9000B0A09000C0A89000B0A09000B0A09000C0A89000B0A09000C0A89000B0A0
      9000604C3700604C370000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002AD300002AD300002A
      D300002AD400000000000000000000000000000000000000000000000000002B
      D600002BD600002BD600002BD600002BD600A2857200FFF8F000FFF8F000FFF8
      F000FEF0E000FEF0E000F0E0D000F0D0B000F5C3A5002A4C6100F6B29000C0A8
      900066534200604C3700604C3700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002BD800002BD800002B
      D800002BD800002BD80000000000000000000000000000000000002CDB00002C
      DB00002CDB00002CDB000000000000000000A4918400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF8F000F0E8E000F0D0C0004F626600F0C8B000B0A0
      90008063500066534200604C3700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002CDE00002C
      DE00002CDE00002CDE00002CDE00002CDE0000000000002DE000002DDE00002D
      DE00002CDD00000000000000000000000000B1938100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8E000E0D8D000E0D8D000E8C8
      B4009173600070605000604C3700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000002DE200002EE300002EE300002EE400002EE300002DE100002DE100002D
      E10000000000000000000000000000000000B1938100D1B9B100D1B9B100C0B0
      A000B0A09000A4918400A4918400908070009173600080656000806350007060
      5000908070008065600066534200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002EE500002EE600002EE500002EE500002EE500002EE5000000
      000000000000000000000000000000000000C0A89000FFF8F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0F0F000F0E8
      E000A49184009173600080635000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000002FEB00002FEB00002FEB00002FEB00002FEB000000
      000000000000000000000000000000000000B0A09000B0A09000C9B5A800C0B0
      A000C9B5A800C0A89000B1938100A28572009173600080635000706050008065
      6000B0A09000A285720070605000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000030F0000030EE000030EE000030EE000030EE000030F2000030F2000030
      F2000000000000000000000000000000000000000000C0B0A000C0B0A000D8CB
      BC00FFFFFF00FFF8F000FFFFFF00F0F0F000F0E8E000F0E0D000C0B0A0008063
      5000A4918400C0B0A00080635000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      F3000030F1000030F1000030F1000030F000000000000031F4000031F6000032
      F7000032F8000000000000000000000000000000000000000000C0B0A000C0B0
      A000FFFFFF00F0E8E000D3C9C300E0CAD500D1B9B100D3C2B300E0D8D0008065
      600080635000B0A09000B0A09000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031F5000031
      F5000031F5000031F5000031F5000000000000000000000000000032F8000032
      FA000033FC000033FE000000000000000000000000000000000000000000E0D8
      D000E0D8D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F0E0D000D1B9
      B100806350008063500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000032FA000032FA000032
      FA000032FA000032FA0000000000000000000000000000000000000000000000
      00000033FF000033FF0000000000000000000000000000000000000000000000
      0000C9B5A800FFF8F000F0F0F000D3C9C300E0C8C000D1B9B100C9B5A800E0D8
      D000806560008063500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000033FD000033FD000032
      FC000032FA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8CBBC00D8CBBC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0E8
      E000C9B5A8008063500080635000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000033FF000033FF000033
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1B9B100D1B9B100D1B9B100D1B9B100D1B9B100D1B9B100D1B9
      B100D3C2B300D1B9B10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003050
      6000204860003030400030405000000000000000000000000000000000000000
      0000000000005068700000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000305060003050
      60004088A0003090B00030405000508090000000000000000000000000000000
      0000506870005068700000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0687000C0686000B058
      5000A0505000A0505000A0505000904850009048400090484000804040008038
      40008038400070384000703830000000000000000000C0686000B0586000B058
      6000B0585000A050500090485000904840008040400070384000703840000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000030506000305060003088
      B00040B8E00090E0F00090D0E0006090A0000000000000000000000000005068
      700050D0F2005068700000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0687000F0909000E080
      8000B048200040302000C0B8B000C0B8B000D0C0C000D0C8C00050505000A040
      3000A0403000A0383000703840000000000000000000C0687000D0888000C060
      50005048400080808000E0D8D000B0B8B00050404000A0484000804040000000
      0000000000000000000000000000000000000000000000000000000000006068
      60006060600060606000605850005058500050585000405050003080A00040B8
      E00090E0F00090E0F0006098B0006088A00030374000303740005068700010B2
      F00050D0F2005068700030374000303740003037400030374000303740003037
      40000000000000000000000000000000000000000000D0707000FF98A000F088
      8000E0808000705850004040300090787000F0E0E000F0E8E00090807000A040
      3000A0404000A0403000803840000000000000000000C0707000E0909000D088
      80006050400070606000B0B0A000D0D0C00060585000A0484000804040007038
      4000703840000000000000000000000000000000000000000000707070007068
      6000A0909000C0B0A000E0C8B000E0C0B000C0A89000908070005050500080C0
      D000A0D8F0006098B0006088A00000000000506870005068700010A0D00010B2
      F00050D0F2005068700050687000506870005068700050687000506870005068
      70005068700000000000000000000000000000000000D0787000FFA0A000F090
      9000F0888000705850000000000040403000F0D8D000F0E0D00080786000B048
      4000B0484000A0404000804040000000000000000000C0788000E098A000E090
      90006050400060504000605040006050400060504000B050500090404000A048
      400080404000000000000000000000000000000000008078700070707000B0B0
      A000FFE8E000FFE0D000F0D8C000F0D0C000F0D0B000F0D0B000A09080005058
      5000608890006088A0000000000000000000000000005068700010A0D00010B2
      F00050D0F20050687000F0C0B000C0A890005068700000000000000000000000
      00000000000000000000000000000000000000000000D0788000FFA8B000FFA0
      A000F0909000705850007058500070585000705850007060500080686000C058
      5000B0505000B0484000804040000000000000000000D0808000F0A0A000E098
      A000E0909000D0888000D0788000C0707000C0686000B060500090485000A048
      4000804040007038400070384000000000000000000080787000B0A8A000FFF8
      F000FFF0E000FFE8E000FFE0D000F0D8C000F0D0C000F0D0B000F0D0B0009080
      700050606000000000000000000000000000000000005068700010A0D00010B2
      F0005068700050687000F0C0B000C0A890005068700000000000000000000000
      00000000000090482000000000000000000000000000E0808000FFB0B000FFB0
      B000FFA0A000F0909000F0888000E0808000E0788000D0707000D0687000C060
      6000C0585000B0505000904840000000000000000000D0889000F0A8B000D078
      7000D0606000C0585000B0504000B0402000B0483000C068600090485000B058
      500090404000A048400080404000000000000000000080807000D0D0D000FFF8
      FF00FFF8F000FFF0E000FFE8E000FFE0D000F0D8C000F0D0C000F0D0B000C0A8
      900050585000000000000000000000000000000000005068700010A0D00010B2
      F00050D0F20050687000F0C0B000C0A890005068700000000000000000000000
      00009048200090482000000000000000000000000000E0889000FFB8C000F5B3
      B000D0646000C0585000C0585000C0504000B0563000A7492800A7492800952D
      1500C0646000C0585000904840000000000000000000D0909000F0B0B000E070
      7000FFFFFF00FFF8F000F0E8E000E0D8D000B0504000C0707000A0505000B060
      500090485000A048400080404000000000000000000080808000F0F0F000FFFF
      FF00A0887000A080700090786000907060008068500080605000F0D0C000E0C0
      B00060585000000000000000000000000000000000005068700010A0D00010B2
      F00050D0F20050687000F0C0B000C0A890005068700000000000000000009048
      2000E0703000F0A07000904820009048200000000000E0909000FFC0C000D064
      6000FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0E0D000E3D2C400E3D2
      C400952D1500C0646000904850000000000000000000E098A000FFB8C000F088
      8000FFFFFF00FFFFFF00FFF8F000F0E8E000C0585000A0606000A0505000C068
      600090485000B050500090484000000000000000000090808000F0F0F000FFFF
      FF00A0908000A0908000A0887000908070009070600080685000F0D8C000E0C8
      B00060606000000000000000000000000000000000005068700010A0D00010B2
      F00050D0F20050687000F0C0B000C0A890005068700000000000904820009048
      2000E0703000E0703000F0A070009048200000000000E098A000FFC0C000D073
      7000FFFFFF005D98E0005D98E0005D98E000456DF000456DF000456DF000E3D2
      C400A7492800D0646000A05050000000000000000000E0A0A000FFC0C000FF90
      9000FFFFFF00FFFFFF00FFFFFF00FFF8F000D060600080404000B0585000C070
      7000A0505000B060500090485000000000000000000090888000E0D8D000FFFF
      FF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0E000FFE8E000FFE0D000C0B0
      A00060606000000000000000000000000000000000005068700010A0D00010B2
      F00050D0F20050687000F0C0B000F0C0B0005068700000000000000000009048
      2000E0703000F0A07000904820009048200000000000F0A0A000FFC0C000E075
      7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0E0
      D000A7492800D0737000A05050000000000000000000E0A8A000E0A0A000E098
      A000D0909000D0889000D0808000C0788000C0707000C0707000B0606000B060
      6000A0505000C0686000A0505000000000000000000090888000B0B0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0E000FFE8E000A090
      900060686000000000000000000000000000000000005068700010A0D00010B2
      F00050687000F0E0D000F0E0D000F0D0C0005068700000000000000000000000
      00009048200090482000000000000000000000000000F0A8A000FFC0C000E483
      8300FFFFFF005D98E0005D98E0005D98E0005D98E000456DF000456DF000F0E8
      E000B0563000E4838300A050500000000000000000000000000000000000E0A0
      A000FFC0C000FF909000FFFFFF00FFFFFF00FFFFFF00FFF8F000E0A0A000A070
      7000A0505000C0707000A050500000000000000000009088800090888000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F000C0B0B0007070
      700070686000000000000000000000000000000000005068700010A0D0005068
      7000FFF8F000F0E0D000F0E0D000F0E0D0005068700000000000000000000000
      00000000000090482000000000000000000000000000F0B0B000FFC0C000F490
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000C05040006B2D3000B058500000000000000000000000000000000000E0A8
      A000E0A0A000E098A000D0909000D0889000D0808000C0788000C0787000C070
      7000B0606000B0787000B0585000000000000000000000000000908880009088
      8000B0B0B000E0D8D000F0F0F000F0F0F000D0D8D000B0A8A000807870007070
      700000000000000000000000000000000000000000005068700050687000FFFF
      FF00FFFFFF00FFF8F000F0E0D000F0E0D0005068700000000000000000000000
      00000000000000000000000000000000000000000000F0B0B000FFC0C000F490
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000C0585000AE536400B0586000000000000000000000000000000000000000
      000000000000E0A0A000FFC0C000FF909000FFFFFF00FFFFFF00FFFFFF00FFF8
      F000D0888000A0787000B0585000000000000000000000000000000000009088
      8000908880009088800090888000808080008080700080807000807870000000
      0000000000000000000000000000000000000000000050687000506870005068
      7000506870005068700050687000506870005068700000000000000000000000
      00000000000000000000000000000000000000000000F0B8B000F0B8B000F0B0
      B000F0B0B000F0A8B000F0A0A000E098A000E0909000E0909000E0889000E080
      8000D0788000D0787000D0707000000000000000000000000000000000000000
      000000000000E0A8A000E0A0A000E098A000D0909000D0889000D0808000C078
      8000C0707000C0687000B0606000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000050505000404840004040400050484000303030003038
      3000107810001080100020801000107810000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003050
      6000204860003030400030405000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B0A0
      900000000000B0A09000A0705000A07050000000000000000000806850008068
      5000806850009070600050585000605860005058500040484000303030001080
      10000060000010801000208810001088100000000000B0A09000604830006048
      3000604830006048300060483000604830006048300060483000604830006048
      3000604830006048300060483000604830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000305060003050
      60004088A0003090B000304050005080900000000000A0786000A07860009060
      40009058400090584000804020008040200000000000B0806000B08060009068
      5000A07050009058400090503000703010000000000080584000806050008060
      5000806050008068500050585000605860006058600050505000403840001080
      10001080100010801000000000001068100000000000B0A09000FFF8F000F0D8
      D000F0D8D000E3D2C400E0C8C000E0C1B100E0C1B100E6BAA300D0B0A000D0B0
      A000D0A59000D08D8500D08D8500604830000000000000000000000000000000
      0000000000000000000000000000000000000000000030506000305060003088
      B00040B8E00090E0F00090D0E0006090A00000000000B0908000FFF8FF00E0C8
      C000D0A09000C0806000804020000000000000000000B0806000B0806000F0E8
      E000E0C8C000D0A89000B0785000804820000000000080584000805840008058
      4000805840008060500050485000404040004048400040404000303030001080
      100020902000208010002088100030A0200000000000B0A09000FFFFFF00FFF8
      F000FFF8F000FFF0F000F0E8E000F0E8E000F0E8E000F0E0D00080000000F0D0
      C000F0D0C000E0C8C000D0A59000604830000000000000000000000000006068
      60006060600060606000605850005058500050585000405050003080A00040B8
      E00090E0F00090E0F0006098B0006088A00000000000B0908000FFF8FF00E0C8
      C000D0A09000C080600080402000000000000000000000000000B0806000F0E8
      E000F0E0E000E0C0B000C0887000804830000000000080584000805840000000
      0000000000000000000000000000404040004040400040404000303830003030
      30001080100020902000108810001080100000000000B0A09000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000F0E8E000F0E8E0008000000080000000F0D8
      D000F0D0C000E3D2C400D0A59000604830000000000000000000707070007068
      6000A0909000C0B0A000E0C8B000E0C0B000C0A89000908070005050500080C0
      D000A0D8F0006098B0006088A0000000000000000000B0908000FFF8FF00E0C8
      C000D0A09000C080600080402000000000000000000000000000B0806000F0E8
      E000F0E0E000E0C0B000C0887000804830000000000080584000000000000000
      0000000000000000000000000000000000006060600050505000504850000000
      00000000000020801000208010002080100000000000B0A09000FFFFFF005D98
      E0005D98E000456DF000456DF000F0E8E0008000000080000000800000008000
      000080000000F0D0C000D0B0A00060483000000000008078700070707000B0B0
      A000FFE8E000FFE0D000F0D8C000F0D0C000F0D0B000F0D0B000A09080005058
      5000608890006088A000000000000000000000000000C0988000FFFFFF00F0E8
      E000E0C8C000D0A0800080402000000000000000000000000000B0806000F0E8
      E000F0E0E000E0C0B000C0887000804830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A89000FFFFFF00FFFF
      FF00FFFFFF00FFF8FF00FFF8F000FFF0F000F0F0F0008000000080000000F0E0
      D00080000000F0D8D000E0C1B100604830000000000080787000B0A8A000FFF8
      F000FFF0E000FFE8E0008060500080605000F0D0C000F0D0B000F0D0B0009080
      70005060600000000000000000000000000000000000C0A09000B0887000A068
      50009050300080483000804820008038100080381000B0887000A06850009058
      3000904830008040200070381000905830005048500040404000403840003038
      3000303830000000C0000000C0000000C0000000B0000000B0000000B0000000
      00000000000000000000000000000000000000000000C0A8A000FFFFFF005D98
      E0005D98E0005D98E000456DF000456DF000456DF000FFF0F00080000000F0E8
      E00080000000F0D8D000E0C8C000604830000000000080807000D0D0D000FFF8
      FF00FFF8F000FFF0E0008068500080605000F0D8C000F0D0C000F0D0B000C0A8
      90005058500000000000000000000000000000000000C0A09000B0887000FFFF
      FF00E0D0C000D0A09000A070500080401000B0907000B0907000E0D8D000F0D8
      D000D0A09000B078500080382000B09070005050500050585000505050004048
      4000303830000000C0000000C0000000B000000080000000B0000000B0000000
      00000000000000000000000000000000000000000000C0A8A000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0F000F0F0F000F0E8
      E00080000000F0E0D000E3D2C400604830000000000080808000F0F0F000FFFF
      FF00A0887000A080700090786000907060008068500080605000F0D0C000E0C0
      B0006058500000000000000000000000000000000000C0A09000C0908000F0F0
      F000FFF8F000F0D8C000B08060008048200080381000B0907000FFFFFF00FFF8
      F000F0D0C000B078500080482000000000000000000050585000505850005050
      5000403840000000B0000000C0000000B000000080000000B0000000B0000000
      00000000000000000000000000000000000000000000C0B0A000FFFFFF005D98
      E0005D98E0005D98E0005D98E000456DF000456DF000FFF8F000800000008000
      000080000000F0E8E000F0D8D000604830000000000090808000F0F0F000FFFF
      FF00A0908000A0908000A0887000908070009070600080685000F0D8C000E0C8
      B000606060000000000000000000000000000000000000000000B0908000C098
      8000B0806000A0685000905030009058400090583000B0786000B0887000A070
      50008048300080482000B0806000000000005048500050485000505050005050
      5000404040000000B0000000C0000000B0000000B0000000B0000000B0000000
      00000000000000000000000000000000000000000000D0B0A000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF8F000FFF0
      F000F0E8E000F0E8E000F0E8E000604830000000000090888000E0D8D000FFFF
      FF00FFFFFF00FFFFFF00A0908000A0887000FFF0E000FFE8E000FFE0D000C0B0
      A00060606000000000000000000000000000000000000000000000000000C098
      8000FFF8FF00E0C0B000C09070008048200070301000C0988000FFF8FF00E0C8
      B000D0A080008048200000000000000000005050500050505000505050005048
      5000404040000000B0000000C0000000C0000000C0000000B0000000B0000000
      00000000000000000000000000000000000000000000D4B8A200FFFFFF005D98
      E0005D98E0005D98E0005D98E0005D98E000456DF000FFFFFF00FFF8F000FFF8
      F000FFF0F000F0E8E000F0E8E000604830000000000090888000B0B0B000FFFF
      FF00FFFFFF00FFFFFF00A0908000A0908000FFF8F000FFF0E000FFE8E000A090
      900060686000000000000000000000000000000000000000000000000000C0A0
      9000B0908000A0685000905030008048300000000000C0A89000B0908000A068
      5000905030008048300000000000000000000000000000000000605860005050
      5000504850000000B0000000C0000000B0000000B00000000000000000000000
      00000000000000000000000000000000000000000000D0B0A000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000FFF8F000FFF0F000FFF0F00060483000000000009088800090888000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F000C0B0B0007070
      7000706860000000000000000000000000000000000000000000000000000000
      000090584000FFF8F0007030100080381000000000008038100090584000FFF8
      F000703010000000000000000000000000000000000000000000000000000000
      0000000000000000B0000000C0000000B0000000000000000000000000000000
      00000000000000000000000000000000000000000000D0B0A000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00604830000000000000000000908880009088
      8000B0B0B000E0D8D000F0F0F000F0F0F000D0D8D000B0A8A000807870007070
      7000000000000000000000000000000000000000000000000000000000000000
      0000C0A09000B088700090583000000000000000000000000000C0A09000B088
      7000905830000000000000000000000000000000000000000000000000000000
      0000000000000000C0000000D0000000B0000000000000000000000000000000
      00000000000000000000000000000000000000000000D0B0A000C0B0A000C0B0
      A000C0B0A000C0B0A000C0B0A000C0B0A000C0B0A000C0B0A000C0A8A000C0A8
      A000C0A89000C0A89000C3A39200B0A090000000000000000000000000009088
      8000908880009088800090888000808080008080700080807000807870000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0805000F09060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B06840009058300060383000804830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0704000B0583000B0583000A0502000A050
      2000904820009048200090402000804020000000000000000000000000000000
      0000000000000000000080685000203040002030400020304000203040002030
      4000203040002030400020304000203040000000000000000000000000000000
      0000A0503000E0785000F0885000E07850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0785000B0604000905030005038200010101000B0684000603830006038
      2000805030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0785000FFF8F000D0B0A000D0B0A000D0B0
      A000C0B0A000C0A8A000C0A89000904020007080900060809000506070004050
      6000304050002030400090706000F0E0D000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A09000B0A0900020304000000000000000000000000000A050
      3000D0785000F0885000D0704000F09060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0805000D0785000B06040008050300000000000C0785000B06040006040
      3000302020000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0886000FFFFFF00E0906000D0805000D080
      5000D0805000D0805000C0A8A000904820007080900020B8F0000090D0000090
      D0000090D0000090D00090786000F0E8E000F0D8D000E0D0C000E0C8C000D0C0
      B000D0B8B000D0B8B000B0A0900020304000000000000000000000000000D080
      5000F0885000C068400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0885000E0805000B06840009050300090503000D0785000D07850009058
      40007040300000000000000000000000000000000000B0A09000604830006048
      3000604830006048300060483000D0907000FFFFFF00FFFFFF00FFF0F000F0E0
      D000F0D0C000F0C0B000C0B0A000904820007088900070C8F00010B8F00010B0
      F00000A8E0000098D000A0807000F0F0F000C0B0A000C0B0A000C0A8A000B0A0
      9000D0C0B000B0A09000B0A09000203040000000000000000000F0B09000F090
      6000E078400090482000000000000000000000000000F0C0B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0885000E0885000B06840009050300090503000D0785000D0785000B068
      40009050300000000000000000000000000000000000B0A09000FFF0F000F0E0
      D000E0D8D000E3D2C400E0C8C000E0A08000FFFFFF00F0A88000E0987000E090
      6000D0805000D0805000D0B0A000A04820008088900070D0F00030C0F00010B8
      F00000A8F00000A0E000A0888000FFF8FF00F0F0F000F0E8E000F0D8D000E0D0
      C000705850006050400050484000404040000000000000000000E0987000F088
      5000B0583000804020000000000000000000D0704000C0684000B0603000A058
      3000905030009048200000000000000000000000000000000000000000000000
      0000F0886000F0906000E0805000A058400090503000C0704000D0785000C068
      4000A060400000000000000000000000000000000000B0A09000FFF8F000456D
      F000456DF000456DF000456DF000E0A89000FFFFFF00FFFFFF00FFFFFF00FFF8
      F000F0E8E000F0D0C000D0B0A000A05020008090A00080D8F00040C8F00030C0
      F00010B8F00000A0E000B0908000FFFFFF00C0B0A000C0B0A000C0A8A000F0E0
      D00080605000D0C8C00060504000000000000000000000000000F0A88000F080
      500090483000804020000000000000000000F0B89000F0B89000F0987000F080
      5000E07030009050300000000000000000000000000000000000000000000000
      000000000000F0886000F0886000E0805000D0785000D0785000D0785000D078
      5000C068400000000000000000000000000000000000C0A89000FFFFFF00FFF8
      F000F0F0F000F0E8E000F0E0D000E0B8A000FFFFFF00FFB09000FFB09000F0D8
      D000E0906000B0583000B0583000A05020008098A00090E0F00060D8F00050C8
      F00030C0F00010B0F000B0989000FFFFFF00FFFFFF00FFF8FF00F0F0F000F0E8
      E000806850008060500000000000000000000000000000000000F0A88000E078
      400090482000804020000000000000000000B060300090483000F0A07000F090
      6000F0805000A058300000000000000000000000000000000000000000000000
      0000000000000000000000000000807060007060500080685000806050000000
      00000000000000000000000000000000000000000000C0A8A000FFFFFF005D98
      E000456DF000456DF000456DF000F0C0A000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0987000F0C8B000B0583000B05830008098A000A0E8F00080E0F00070D8
      F00050D0F00010B0F000B0A09000B0989000B0908000A0888000A08070009078
      6000907060000000000000000000000000000000000000000000F0A88000E078
      400090482000B080500000000000B0603000A0583000A0503000F0885000F0A0
      7000F0987000B060300000000000000000000000000000000000000000000000
      00000000000000000000A0909000908070008070600070605000504840000000
      00000000000000000000000000000000000000000000C0B0A000FFFFFF00FFFF
      FF00FFF8FF00FFF0F000F0E8E000F0C8B000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0A88000C0683000C06830000000000090A0A000B0F0FF00A0E8FF0090E0
      F00070D0F00010A0D00010A0D00010A0D0001098D0000090D0000090D0000090
      D000303840000000000000000000000000000000000000000000F0C0A000F088
      5000A0583000B0704000B0603000B0603000B0603000F0906000F0986000F0A0
      7000F0C0A000C0684000F0C0B000000000000000000000000000000000000000
      00000000000000000000C0A8A000A0989000A098900090807000605050000000
      00000000000000000000000000000000000000000000D0B8B000FFFFFF005D98
      E0005D98E000456DF000B0A09000F0C8B000F0C0B000F0C0B000F0B8A000F0B0
      9000F0B09000E0906000000000000000000090A0B000B0F0FF00A0F0FF006080
      9000607080005070800050687000506870005060700040587000207090000090
      D000404860000000000000000000000000000000000000000000F0C0B000F0B8
      A000E0784000B0603000B0684000C0704000F0906000F0A07000F0A070000000
      0000F0C8A000D070400000000000000000000000000000000000000000000000
      00000000000000000000C0B0B000A0909000D0D0D000D0C8C000706050001010
      10000000000000000000000000000000000000000000D0C0B000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0A89000D0C8C0009070600060483000000000000000
      00000000000000000000000000000000000090A8B000B0F0FF00B0F0FF006088
      900090C8D00090E8F00080D8E00060C8E0005098B000405860002080A0000090
      D000505870000000000000000000000000000000000000000000F0C0B000F0C0
      B000F0B8A000F0A88000F0A88000F0A88000F0A08000F0A08000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0989000B0A09000FFFFFF00F0E8E000807060001010
      10000000000000000000000000000000000000000000E0C0B000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0B0A000A08060006048300000000000000000000000
      00000000000000000000000000000000000090A8B000B0F0F000B0F0FF00A0F0
      F0007098A000A0F0F0005068700080C8D000507080003060800060C0F00020B8
      F00050607000000000000000000000000000000000000000000000000000F0C0
      B000F0C0B000F0C0A000F0B8A000F0B09000F0A0800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0A09000A0989000A088800000000000FFF8F000C0B0B0008070
      60000000000000000000000000000000000000000000E0C0B000E0C0B000D0C0
      B000D0C0B000D0B8B000D0B0A000B09890000000000000000000000000000000
      00000000000000000000000000000000000090A8B00090A8B00090A8B00090A8
      B0006090A000A0E8F000A0E8F00090D8E0004068700070889000808890007088
      9000708890000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0B0B000B0A8A0000000000000000000FFFFFF00E0E0E0009088
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080B0C00080B0C00080A0B0005060700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0A090006048
      3000604830006048300060483000604830006048300060483000604830006048
      3000604830000000000000000000000000007088900060809000607880005070
      8000506070004058600040485000303840002030300020203000101820001010
      10001010200000000000000000000000000000000000D0687000C0686000B058
      5000A0505000A0505000A0505000904850009048400090484000804040008038
      4000803840007038400070383000000000000000000000000000000000000000
      000000000000000000000000000000000000F0906000D0784000B06030000000
      0000000000000000000000000000000000000000000000000000B0A09000FFFF
      FF00B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A09000B0A0
      9000604830000000000000000000000000007088900090A0B00070B0D0000090
      D0000090D0000090D0000090C0001088C0001080B0001080B0002078A0002070
      90002048600020303000000000000000000000000000D0687000F0909000E080
      8000B048200040302000C0B8B000C0B8B000D0C0C000D0C8C00050505000A040
      3000A0403000A038300070384000000000000000000000000000000000000000
      000000000000000000000000000000000000E0785000F0885000D0785000B058
      3000000000000000000000000000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFF8FF00F0F0F000F0E8E000F0E0D000E0D0D000E0C8C000B0A0
      9000604830000000000000000000000000008088900080C0D00090A8B00080E0
      FF0060D0FF0050C8FF0050C8FF0040C0F00030B0F00030A8F00020A0E0001090
      D0002068800020283000000000000000000000000000D0707000FF98A000F088
      8000E0808000705850004040300090787000F0E0E000F0E8E00090807000A040
      3000A0404000A040300080384000000000000000000000000000000000000000
      000000000000000000000000000000000000F0906000D0704000F0885000D078
      5000A05030000000000000000000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E0E000F0D8D000E0D0C000B0A0
      9000604830000000000000000000000000008090A00080D0F00090A8B00090C0
      D00070D8FF0060D0FF0060D0FF0050C8FF0050C0FF0040B8F00030B0F00030A8
      F0001088D00020486000102830000000000000000000D0787000FFA0A000F090
      9000F0888000705850000000000040403000F0D8D000F0E0D00080786000B048
      4000B0484000A040400080404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0684000F088
      5000D08050000000000000000000000000000000000000000000B0A09000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF0F000F0E8E000F0E0E000E0D8D000B0A0
      9000604830000000000000000000000000008090A00080D8F00080C8E00090A8
      B00080E0FF0070D0FF0060D8FF0060D0FF0060D0FF0050C8FF0040C0F00040B8
      F00030B0F00020688000104860000000000000000000D0788000FFA8B000FFA0
      A000F0909000705850007058500070585000705850007060500080686000C058
      5000B0505000B048400080404000000000000000000000000000000000000000
      00000000000000000000F0C0B00000000000000000000000000090482000E078
      4000F0906000F0B0900000000000000000000000000000000000C0A89000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000B0A0
      9000604830000000000000000000000000008098A00090E0F00090E0FF0090A8
      B00090B8C00070D8FF0060D8FF0060D8FF0060D8FF0060D0FF0050D0FF0050C8
      FF0040B8F00030A0E000406070005060700000000000E0808000FFB0B000FFB0
      B000FFA0A000F0909000F0888000E0808000E0788000D0707000D0687000C060
      6000C0585000B050500090484000000000000000000000000000E0784000D070
      4000C0684000B0603000B0583000905030000000000000000000B0603000C068
      4000F0885000E098700000000000000000000000000000000000C0A8A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8E000F0E0E000B0A0
      9000604830000000000000000000000000008098A00090E0F000A0E8FF0080C8
      E00090A8B00080E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080E0
      FF0070D8FF0070D8FF0050A8D0005060700000000000E0889000FFB8C000FFB8
      B000D0606000C0605000C0585000C0504000B0503000B0483000A0402000A038
      1000C0606000C058500090484000000000000000000000000000E0805000E070
      3000F0805000F0987000E0906000F0A08000000000000000000080402000C068
      4000E0805000F0A8800000000000000000000000000000000000C0B0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00F0F0F000F0E8E000B0A0
      90006048300000000000000000000000000090A0A000A0E8F000A0E8FF00A0E8
      FF0090B0C00090B0C00090A8B00090A8B00080A0B00080A0B0008098A0008098
      A0008090A0008090A000808890007088900000000000E0909000FFC0C000D068
      6000FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0C000E0C8
      C000A0381000C060600090485000000000000000000000000000E0906000F080
      5000F0906000F0A0700090483000B0603000000000000000000080402000C068
      4000E0784000F0A8800000000000000000000000000000000000D0B0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000B0A0
      90006048300000000000000000000000000090A0B000A0E8F000A0F0FF00A0E8
      FF00A0E8FF0080D8FF0060D8FF0060D8FF0060D8FF0060D8FF0060D8FF0060D8
      FF007088900000000000000000000000000000000000E098A000FFC0C000D070
      7000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0
      C000A0402000D0686000A0505000000000000000000000000000E0987000F098
      7000F0A07000F0906000B0604000B0604000B060300000000000B0805000A058
      3000E0784000F0A8800000000000000000000000000000000000D0B8A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A09000B0A0
      90006048300000000000000000000000000090A0B000A0F0F000B0F0F000A0F0
      FF00A0E8FF00A0E8FF0070D8FF0090A0A0008098A0008098A0008090A0008090
      90007088900000000000000000000000000000000000F0A0A000FFC0C000E078
      7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8
      D000B0483000D0707000A05050000000000000000000F0C0B000F0A88000F0C0
      A000F0A88000F0B09000E0906000C0704000C0684000B0603000B0704000A060
      4000F0885000F0C0A00000000000000000000000000000000000D0B8B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A09000604830006048
      30006048300000000000000000000000000090A8B000A0D0E000B0F0F000B0F0
      F000A0F0FF00A0E8FF0090A0B00080A8B0000000000000000000000000000000
      00000000000090685000906850009068500000000000F0A8A000FFC0C000E080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8
      E000B0503000E0788000A0505000000000000000000000000000F0A89000F0C8
      A00000000000F0B09000F0B09000F0906000D0704000B0684000B0603000E078
      4000F0B8A000F0C0B00000000000000000000000000000000000D0C0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A89000D0C8C0006048
      3000D0B0A00000000000000000000000000090A8B00090A8B00090A8B00090A8
      B00090A8B00090A8B00090A8B000000000000000000000000000000000000000
      000000000000A0787000906850009068500000000000F0B0B000FFC0C000F088
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000C050400060303000B0585000000000000000000000000000000000000000
      00000000000000000000F0B09000F0B09000F0B09000F0A88000F0A88000F0B8
      A000F0C0B000F0C0B00000000000000000000000000000000000E0C0B000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0A8A00060483000D0B0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090786000906850000000
      0000A0787000A0908000A08870009078600000000000F0B0B000FFC0C000FF90
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000C0585000B0586000B0586000000000000000000000000000000000000000
      0000000000000000000000000000F0B89000F0B09000F0B8A000F0C0A000F0C0
      B000F0C0B0000000000000000000000000000000000000000000E0C0B000E0C0
      B000E0C0B000E0C0B000E0C0B000D0C0B000D0B8B000D0B0A000D0B0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0988000A0908000A088
      8000B0988000A0908000000000000000000000000000F0B8B000F0B8B000F0B0
      B000F0B0B000F0A8B000F0A0A000E098A000E0909000E0909000E0889000E080
      8000D0788000D0787000D0707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFC000000000000
      8FF800000000000087E000000000000083C3000000000000C087000000000000
      F00F000000000000F81F000000000000FC1F000000000000F00F000000000000
      E087000000000000C1C300000000000083F300000000000087FF000000000000
      8FFF000000000000FFFFFFFF00000000FFE1FBFFFFFFFFFFFFC0F3FF8001801F
      FF80E3FF8001801FE000000F80018007C0010007800180078003807F80018001
      8007807B80018001800780738001800180078060800180018007804080018001
      8007806080018001800780738001E0018007807B8001E001C00F807F8001F801
      E01F807F8001F801FFFFFFFFFFFFFFFFFFFFFC00FFFFFFE1FFE8C0008000FFC0
      808080028000FF80818080008000E00081C09E008000C00181C0BF1880008003
      81C0FFFF800080078000001F800080078000001F800080078001801F80008007
      C001001F80008007E003001F80008007E083C07F80008007F087F8FF8000C00F
      F1C7F8FF8000E01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF0FFFE00FC00
      F0FFF007FE000000E0FFF087FE000000E3FFF00780000000C3BFF00780000000
      C303F00780000001C303F80780000003C303FE1F80000007C203FC1F80010007
      C001FC1F80030007C011FC0F803F0007C03FFC0F807F0007E07FF88F80FF0007
      FFFFF98FFFFFF87FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFC00700078001FF1F
      C00700038001FF0FC00700038001FF07C00700018001FFC7C00700018001FDC3
      C00700008001C0C3C00700008001C0C3C00700008001C0C3C00700078001C043
      C007000780018003C00700F880018803C00701F88001FC03C00FFF908001FE07
      C01FFF838001FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
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
  object JvDebugHandler1: TJvDebugHandler
    Left = 448
    Top = 64
  end
  object XPManifest1: TXPManifest
    Left = 272
    Top = 32
  end
end
