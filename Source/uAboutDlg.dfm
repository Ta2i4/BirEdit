object About: TAbout
  Left = 400
  Top = 258
  BorderStyle = bsDialog
  Caption = 'About...'
  ClientHeight = 147
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 10
    Top = 10
    Width = 32
    Height = 32
  end
  object lbl1: TLabel
    Left = 60
    Top = 10
    Width = 115
    Height = 16
    Caption = 'BirEdit text editor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 60
    Top = 29
    Width = 86
    Height = 13
    Caption = 'Version 1.2.7.409'
  end
  object lbl3: TLabel
    Left = 10
    Top = 50
    Width = 366
    Height = 13
    Caption = 
      'This program is freeware and released under the GNU general publ' +
      'ic license.'
  end
  object lbl4: TLabel
    Left = 10
    Top = 75
    Width = 65
    Height = 13
    Caption = 'Project page:'
  end
  object lbl5: TLabel
    Left = 201
    Top = 75
    Width = 175
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'http://fireforge.net/projects/biredit/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lbl5Click
  end
  object lbl6: TLabel
    Left = 10
    Top = 95
    Width = 34
    Height = 13
    Caption = 'Forum:'
  end
  object lbl7: TLabel
    Left = 233
    Top = 95
    Width = 143
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'http://biredit.freeforums.org/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lbl7Click
  end
  object lbl8: TLabel
    Left = 10
    Top = 115
    Width = 202
    Height = 13
    Caption = 'Copyright (C) 2008-2009 Aleksey Tatuyko'
  end
  object btn1: TButton
    Left = 301
    Top = 115
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
end
