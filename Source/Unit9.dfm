object MyMsgDlg: TMyMsgDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'BirEdit'
  ClientHeight = 98
  ClientWidth = 334
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
  object TntImage1: TTntImage
    Left = 16
    Top = 16
    Width = 32
    Height = 32
  end
  object TntLabel1: TTntLabel
    Left = 60
    Top = 12
    Width = 265
    Height = 44
    AutoSize = False
  end
  object TntButton1: TTntButton
    Left = 110
    Top = 65
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
end
