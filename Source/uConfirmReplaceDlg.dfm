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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 16
    Width = 32
    Height = 32
  end
  object Label1: TLabel
    Left = 60
    Top = 12
    Width = 265
    Height = 44
    AutoSize = False
  end
  object Button1: TButton
    Left = 10
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Yes'
    Default = True
    ModalResult = 6
    TabOrder = 0
  end
  object Button2: TButton
    Left = 90
    Top = 65
    Width = 75
    Height = 25
    Caption = 'No'
    ModalResult = 7
    TabOrder = 1
  end
  object Button3: TButton
    Left = 170
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object Button4: TButton
    Left = 250
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Yes to all'
    ModalResult = 10
    TabOrder = 3
  end
end
