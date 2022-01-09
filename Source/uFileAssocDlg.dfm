object FAssoc: TFAssoc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'File associations'
  ClientHeight = 292
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object chklst1: TCheckListBox
    Left = 0
    Top = 0
    Width = 428
    Height = 250
    Align = alTop
    ItemHeight = 13
    Items.Strings = (
      '.ace'
      '.asc'
      '.asm'
      '.awk'
      '.bas'
      '.bat'
      '.c'
      '.cbl'
      '.cc'
      '.cgi'
      '.ch'
      '.cln'
      '.cmd'
      '.cob'
      '.cpp'
      '.cs'
      '.css'
      '.cu'
      '.cxx'
      '.dfm'
      '.dml'
      '.dot'
      '.dpk'
      '.dpr'
      '.dsp'
      '.dtd'
      '.e'
      '.for'
      '.galrep'
      '.gem'
      '.gtv'
      '.gws'
      '.h'
      '.hc11'
      '.hh'
      '.hpp'
      '.hs'
      '.htm'
      '.html'
      '.hxx'
      '.i'
      '.idl'
      '.inc'
      '.ini'
      '.int'
      '.iss'
      '.java'
      '.js'
      '.kix'
      '.ldr'
      '.lhs'
      '.m3'
      '.mac'
      '.mo'
      '.msg'
      '.p'
      '.pas'
      '.php'
      '.php3'
      '.phtml'
      '.pl'
      '.pm'
      '.pp'
      '.prg'
      '.py'
      '.rb'
      '.rbw'
      '.rc'
      '.rdf'
      '.rif'
      '.rmf'
      '.rxf'
      '.sdd'
      '.sh'
      '.sml'
      '.sql'
      '.st'
      '.tcl'
      '.tex'
      '.txt'
      '.vbs'
      '.vrl'
      '.vrml'
      '.w'
      '.wrl'
      '.wrml'
      '.x3d'
      '.xfm'
      '.xml'
      '.xsd'
      '.xsl'
      '.xslt')
    PopupMenu = popup1
    Sorted = True
    TabOrder = 0
  end
  object btn1: TButton
    Tag = 11
    Left = 10
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Apply'
    ModalResult = 1
    TabOrder = 1
  end
  object btn2: TButton
    Tag = 12
    Left = 90
    Top = 260
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    Default = True
    ModalResult = 2
    TabOrder = 2
  end
  object popup1: TPopupMenu
    Left = 200
    Top = 144
    object N1: TMenuItem
      Tag = 2001
      Caption = 'Check all'
      ShortCut = 16449
      OnClick = N1Click
    end
    object N2: TMenuItem
      Tag = 2002
      Caption = 'Uncheck all'
      ShortCut = 16469
      OnClick = N2Click
    end
    object N3: TMenuItem
      Tag = 2003
      Caption = 'Invert'
      ShortCut = 16457
      OnClick = N3Click
    end
  end
end
