object Main: TMain
  Left = 353
  Top = 233
  Caption = 'BirEdit'
  ClientHeight = 376
  ClientWidth = 600
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
  PixelsPerInch = 96
  TextHeight = 13
  object Edit: TSynEdit
    Left = 0
    Top = 0
    Width = 600
    Height = 357
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
    Options = [eoAutoIndent, eoDisableScrollArrows, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoHideShowScrollbars, eoRightMouseMovesCursor, eoScrollHintFollows, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTrimTrailingSpaces]
    ScrollHintFormat = shfTopToBottom
  end
  object Status: TStatusBar
    Left = 0
    Top = 357
    Width = 600
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
        ShortCut = 113
        OnClick = N105Click
      end
      object N3: TMenuItem
        Caption = 'Open'
        Hint = 'Open'
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
        ShortCut = 16467
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = 'Save as...'
        Hint = 'Save As...'
        ShortCut = 117
        OnClick = N5Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object N44: TMenuItem
        Caption = 'Encoding'
        object N53: TMenuItem
          Caption = 'Auto'
          Default = True
          OnClick = MyOpenDifferCP
        end
        object N54: TMenuItem
          Caption = 'Ansi'
          OnClick = MyOpenDifferCP
        end
        object N58: TMenuItem
          Caption = 'ASCII'
          OnClick = MyOpenDifferCP
        end
        object N61: TMenuItem
          Caption = 'UTF-16 little endian'
          OnClick = MyOpenDifferCP
        end
        object N62: TMenuItem
          Caption = 'UTF-16 big endian'
          OnClick = MyOpenDifferCP
        end
        object N63: TMenuItem
          Caption = 'UTF-8'
          OnClick = MyOpenDifferCP
        end
        object N64: TMenuItem
          Caption = 'UTF-7'
          OnClick = MyOpenDifferCP
        end
      end
      object N135: TMenuItem
        Caption = '-'
      end
      object N120: TMenuItem
        Caption = 'Operations'
        object N119: TMenuItem
          Caption = 'New window'
          ShortCut = 32846
          OnClick = N119Click
        end
        object N122: TMenuItem
          Caption = 'Empty window'
          ShortCut = 32847
          OnClick = N122Click
        end
        object N123: TMenuItem
          Caption = '-'
        end
        object N124: TMenuItem
          Caption = 'Execute document'
          ShortCut = 16460
          OnClick = N124Click
        end
        object N80: TMenuItem
          Caption = 'Open with...'
          ShortCut = 32844
          OnClick = N80Click
        end
        object N163: TMenuItem
          Caption = 'Open in Explorer'
          ShortCut = 32837
          OnClick = N163Click
        end
        object N164: TMenuItem
          Caption = '-'
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
      object N166: TMenuItem
        Caption = 'Page setup'
        OnClick = N166Click
      end
      object N167: TMenuItem
        Caption = 'Printer setup'
        OnClick = N167Click
      end
      object N168: TMenuItem
        Caption = 'Print preview'
        OnClick = N168Click
      end
      object N7: TMenuItem
        Caption = 'Print'
        ShortCut = 16464
        OnClick = N7Click
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
        object N175: TMenuItem
          Caption = 'Open all'
          OnClick = N175Click
        end
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
        ShortCut = 32883
        OnClick = N2Click
      end
    end
    object N10: TMenuItem
      Caption = 'Edit'
      object N11: TMenuItem
        Caption = 'Undo'
        Hint = 'Undo'
        ShortCut = 16474
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = 'Redo'
        Hint = 'Redo'
        ShortCut = 24666
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Caption = 'Cut'
        Hint = 'Cut'
        ShortCut = 16472
        OnClick = N17Click
      end
      object N15: TMenuItem
        Caption = 'Copy'
        Hint = 'Copy'
        ShortCut = 16451
        OnClick = N15Click
      end
      object N39: TMenuItem
        Caption = 'Copy all'
        ShortCut = 32835
        OnClick = N39Click
      end
      object N30: TMenuItem
        Caption = 'Copy add'
        ShortCut = 16453
        OnClick = N30Click
      end
      object N78: TMenuItem
        Caption = 'Copy filepath'
        ShortCut = 8312
        OnClick = N78Click
      end
      object N16: TMenuItem
        Caption = 'Paste'
        Hint = 'Paste'
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
        ShortCut = 46
        OnClick = N59Click
      end
      object N57: TMenuItem
        Caption = 'Clear all'
        Hint = 'Clear All'
        OnClick = N57Click
      end
      object N46: TMenuItem
        Caption = 'Clear clipboard'
        OnClick = N46Click
      end
      object N14: TMenuItem
        Caption = 'Select all'
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
        object N37: TMenuItem
          Caption = 'Dublicate selection'
          ShortCut = 32836
          OnClick = N37Click
        end
        object N71: TMenuItem
          Caption = 'Quote selection'
          ShortCut = 16465
          OnClick = N71Click
        end
        object N72: TMenuItem
          Caption = 'Dequote selection'
          ShortCut = 24657
          OnClick = N72Click
        end
      end
      object N66: TMenuItem
        Caption = 'Convert'
        object N60: TMenuItem
          Caption = 'Uppercase'
          ShortCut = 24661
          OnClick = MyChangeCase
        end
        object N68: TMenuItem
          Caption = 'Lowercase'
          ShortCut = 16469
          OnClick = MyChangeCase
        end
        object N70: TMenuItem
          Caption = 'Invert case'
          ShortCut = 49225
          OnClick = MyChangeCase
        end
        object N69: TMenuItem
          Caption = 'Title case'
          ShortCut = 49236
          OnClick = MyChangeCase
        end
        object N76: TMenuItem
          Caption = 'Sentence case'
          ShortCut = 49235
          OnClick = MyChangeCase
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
        Caption = 'Find next'
        ShortCut = 114
        OnClick = N27Click
      end
      object N28: TMenuItem
        Caption = 'Find previous'
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
        Caption = 'Replace next'
        ShortCut = 115
        OnClick = N18Click
      end
      object N33: TMenuItem
        Caption = 'Replace previous'
        ShortCut = 8307
        OnClick = N33Click
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object N31: TMenuItem
        Caption = 'Go to...'
        ShortCut = 16455
        OnClick = N31Click
      end
      object N141: TMenuItem
        Caption = 'Find mathing brace'
        ShortCut = 16450
        OnClick = N141Click
      end
      object N161: TMenuItem
        Caption = 'Select to matching brace'
        ShortCut = 24642
        OnClick = N161Click
      end
    end
    object N77: TMenuItem
      Caption = 'Insert'
      object N165: TMenuItem
        Caption = 'Data'
        object N169: TMenuItem
          Caption = 'Computer name'
          OnClick = N169Click
        end
        object N170: TMenuItem
          Caption = 'User name'
          OnClick = N170Click
        end
      end
      object N90: TMenuItem
        Caption = 'Enclose selection'
        ShortCut = 32849
        OnClick = N90Click
      end
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
      object N8: TMenuItem
        Caption = 'Encoding identifier'
        ShortCut = 16503
        OnClick = N8Click
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
    object N52: TMenuItem
      Caption = 'Plugins'
      Visible = False
    end
    object N101: TMenuItem
      Caption = 'Options'
      object N174: TMenuItem
        Caption = 'Associations'
        OnClick = N174Click
      end
      object N51: TMenuItem
        Caption = 'Font...'
        OnClick = N51Click
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
          OnClick = MySetSelMode
        end
        object N43: TMenuItem
          AutoCheck = True
          Caption = 'Line'
          RadioItem = True
          ShortCut = 24652
          OnClick = MySetSelMode
        end
        object N42: TMenuItem
          AutoCheck = True
          Caption = 'Column'
          RadioItem = True
          ShortCut = 24643
          OnClick = MySetSelMode
        end
      end
      object N162: TMenuItem
        Caption = 'Read only'
        OnClick = N162Click
      end
      object N74: TMenuItem
        Caption = 'Syntax'
        object N75: TMenuItem
          AutoCheck = True
          Caption = 'Default'
          Checked = True
          Default = True
          RadioItem = True
          OnClick = MySetSyn
        end
        object N79: TMenuItem
          AutoCheck = True
          Caption = 'C/C++'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N81: TMenuItem
          AutoCheck = True
          Caption = 'Eiffel'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N82: TMenuItem
          AutoCheck = True
          Caption = 'Fortran'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N83: TMenuItem
          AutoCheck = True
          Caption = 'Java'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N84: TMenuItem
          AutoCheck = True
          Caption = 'Modula-3'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N91: TMenuItem
          AutoCheck = True
          Caption = 'Pascal'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N92: TMenuItem
          AutoCheck = True
          Caption = 'Visual Basic'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N93: TMenuItem
          AutoCheck = True
          Caption = 'COBOL'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N94: TMenuItem
          AutoCheck = True
          Caption = 'C#'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N97: TMenuItem
          AutoCheck = True
          Caption = 'Cascading Stylesheets'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N98: TMenuItem
          AutoCheck = True
          Caption = 'HTML Document'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N103: TMenuItem
          AutoCheck = True
          Caption = 'Javascript'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N106: TMenuItem
          AutoCheck = True
          Caption = 'PHP'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N107: TMenuItem
          AutoCheck = True
          Caption = 'VBScript'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N108: TMenuItem
          AutoCheck = True
          Caption = 'XML'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N109: TMenuItem
          AutoCheck = True
          Caption = 'Vrml97/X3D World'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N110: TMenuItem
          AutoCheck = True
          Caption = 'AWK Script'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N111: TMenuItem
          AutoCheck = True
          Caption = 'MS-DOS Batch'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N112: TMenuItem
          AutoCheck = True
          Caption = 'KiXtart Script'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N113: TMenuItem
          AutoCheck = True
          Caption = 'Perl'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N116: TMenuItem
          AutoCheck = True
          Caption = 'Python'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N118: TMenuItem
          AutoCheck = True
          Caption = 'Tcl/Tk'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N121: TMenuItem
          AutoCheck = True
          Caption = 'GW-TEL Script'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N125: TMenuItem
          AutoCheck = True
          Caption = 'Ruby'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N129: TMenuItem
          AutoCheck = True
          Caption = 'UNIX Shell Script'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N133: TMenuItem
          AutoCheck = True
          Caption = 'CA-Clipper'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N134: TMenuItem
          AutoCheck = True
          Caption = 'Cache'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N136: TMenuItem
          AutoCheck = True
          Caption = 'Foxpro'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N137: TMenuItem
          AutoCheck = True
          Caption = 'SQL'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N138: TMenuItem
          AutoCheck = True
          Caption = 'Semanta DD'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N139: TMenuItem
          AutoCheck = True
          Caption = 'DSP'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N140: TMenuItem
          AutoCheck = True
          Caption = 'x86 Assembly'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N142: TMenuItem
          AutoCheck = True
          Caption = '68HC11 Assembler'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N143: TMenuItem
          AutoCheck = True
          Caption = 'Structured Text'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N144: TMenuItem
          AutoCheck = True
          Caption = 'GEMBASE'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N145: TMenuItem
          AutoCheck = True
          Caption = 'Modelica'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N146: TMenuItem
          AutoCheck = True
          Caption = 'Standard ML'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N147: TMenuItem
          AutoCheck = True
          Caption = 'Borland Form'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N148: TMenuItem
          AutoCheck = True
          Caption = 'INI'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N149: TMenuItem
          AutoCheck = True
          Caption = 'Inno Setup Script'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N150: TMenuItem
          AutoCheck = True
          Caption = 'Baan 4GL'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N151: TMenuItem
          AutoCheck = True
          Caption = 'Galaxy'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N152: TMenuItem
          AutoCheck = True
          Caption = 'Progress'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N153: TMenuItem
          AutoCheck = True
          Caption = 'Msg'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N154: TMenuItem
          AutoCheck = True
          Caption = 'CORBA IDL'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N155: TMenuItem
          AutoCheck = True
          Caption = 'CPM Report'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N156: TMenuItem
          AutoCheck = True
          Caption = 'TeX'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N157: TMenuItem
          AutoCheck = True
          Caption = 'Haskell'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N158: TMenuItem
          AutoCheck = True
          Caption = 'LEGO LDraw'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N159: TMenuItem
          AutoCheck = True
          Caption = 'DOT Graph Drawing Description'
          RadioItem = True
          OnClick = MySetSyn
        end
        object N160: TMenuItem
          AutoCheck = True
          Caption = 'Resource'
          RadioItem = True
          OnClick = MySetSyn
        end
      end
      object N173: TMenuItem
        Caption = 'Word wrap'
        OnClick = N173Click
      end
      object N176: TMenuItem
        Caption = '-'
      end
      object N32: TMenuItem
        Caption = 'Settings'
        OnClick = N32Click
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
  object Popup1: TPopupMenu
    OnPopup = Popup1Popup
    Left = 256
    Top = 72
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
      Caption = 'Copy all'
      OnClick = N39Click
    end
    object N55: TMenuItem
      Caption = 'Copy add'
      OnClick = N30Click
    end
    object N171: TMenuItem
      Caption = 'Copy filepath'
      OnClick = N78Click
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
      Caption = 'Clear all'
      OnClick = N57Click
    end
    object N96: TMenuItem
      Caption = 'Clear clipboard'
      OnClick = N46Click
    end
    object N25: TMenuItem
      Caption = 'Select all'
      OnClick = N14Click
    end
  end
  object JvTimer1: TJvTimer
    Interval = 100
    ThreadPriority = tpLowest
    OnTimer = JvTimer1Timer
    Left = 416
    Top = 32
  end
  object JvTimer3: TJvTimer
    Interval = 100
    ThreadPriority = tpLowest
    OnTimer = JvTimer3Timer
    Left = 448
    Top = 32
  end
  object JvTimer4: TJvTimer
    Interval = 100
    ThreadPriority = tpLowest
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
  object Recent: TJvMRUManager
    Duplicates = dupIgnore
    RecentMenu = N127
    ShowAccelChar = False
    OnClick = RecentClick
    Left = 448
    Top = 64
  end
end
