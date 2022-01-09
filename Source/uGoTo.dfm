object GoToDlg: TGoToDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Go to Line Number'
  ClientHeight = 73
  ClientWidth = 189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LineLbl: TLabel
    Left = 10
    Top = 10
    Width = 23
    Height = 13
    Caption = 'Line:'
  end
  object JvSpinEdit1: TJvSpinEdit
    Left = 70
    Top = 8
    Width = 110
    Height = 21
    MaxValue = 1.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 0
    OnKeyDown = JvSpinEdit1KeyDown
  end
  object OkBtn: TButton
    Left = 60
    Top = 40
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
