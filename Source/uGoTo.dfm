object GoToDlg: TGoToDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Go to...'
  ClientHeight = 99
  ClientWidth = 249
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
  object LineLbl: TLabel
    Left = 10
    Top = 10
    Width = 19
    Height = 13
    Caption = 'Line'
  end
  object ChrLbl: TLabel
    Left = 10
    Top = 35
    Width = 35
    Height = 13
    Caption = 'Column'
  end
  object Spin1: TJvSpinEdit
    Left = 120
    Top = 10
    Width = 120
    Height = 21
    MaxValue = 1.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 1
    OnKeyDown = Spin1KeyDown
  end
  object OkBtn: TButton
    Left = 85
    Top = 65
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Spin2: TJvSpinEdit
    Left = 120
    Top = 35
    Width = 120
    Height = 21
    MaxValue = 1.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 2
    OnKeyDown = Spin1KeyDown
  end
end
