object SelIns: TSelIns
  Left = 362
  Top = 299
  BorderStyle = bsDialog
  Caption = 'Enclose Selection'
  ClientHeight = 102
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BeforeLbl: TLabel
    Tag = 101
    Left = 8
    Top = 8
    Width = 109
    Height = 13
    Caption = 'Insert before selection'
  end
  object AfterLbl: TLabel
    Tag = 102
    Left = 8
    Top = 56
    Width = 101
    Height = 13
    Caption = 'Insert after selection'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 169
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 8
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object OkBtn: TButton
    Tag = 11
    Left = 191
    Top = 24
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
end
