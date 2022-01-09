object DropDlg: TDropDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dropped files'
  ClientHeight = 369
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ChkLst: TCheckListBox
    Left = 0
    Top = 0
    Width = 594
    Height = 330
    Align = alTop
    ItemHeight = 13
    PopupMenu = PopM
    TabOrder = 0
  end
  object BtnOpen: TButton
    Tag = 11
    Left = 20
    Top = 335
    Width = 150
    Height = 25
    Caption = 'Open checked'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object PopM: TPopupMenu
    Left = 288
    Top = 184
    object N1: TMenuItem
      Tag = 2001
      Caption = 'Check all'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Tag = 2002
      Caption = 'Uncheck all'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Tag = 2003
      Caption = 'Invert'
      OnClick = N3Click
    end
  end
  object JvTmr: TJvTimer
    Interval = 100
    ThreadPriority = tpLower
    OnTimer = JvTmrTimer
    Left = 200
    Top = 104
  end
end
