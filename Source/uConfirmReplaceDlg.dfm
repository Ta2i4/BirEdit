object ConfirmReplace: TConfirmReplace
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Confirm replace'
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
  OnCreate = TntFormCreate
  OnDestroy = TntFormDestroy
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
    Left = 10
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Yes'
    Default = True
    ModalResult = 6
    TabOrder = 0
  end
  object TntButton2: TTntButton
    Left = 90
    Top = 65
    Width = 75
    Height = 25
    Caption = 'No'
    ModalResult = 7
    TabOrder = 1
  end
  object TntButton3: TTntButton
    Left = 170
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object TntButton4: TTntButton
    Left = 250
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Yes to all'
    ModalResult = 10
    TabOrder = 3
  end
end
