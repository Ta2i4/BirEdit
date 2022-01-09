object SearchForm: TSearchForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search text'
  ClientHeight = 180
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object SearchForLbl: TLabel
    Tag = 101
    Left = 8
    Top = 12
    Width = 50
    Height = 13
    Caption = 'Search for'
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 9
    Width = 247
    Height = 21
    DropDownCount = 10
    TabOrder = 0
  end
  object OptsGrp: TGroupBox
    Tag = 401
    Left = 8
    Top = 40
    Width = 154
    Height = 127
    Caption = 'Options'
    TabOrder = 1
    object CaseSentChk: TCheckBox
      Tag = 201
      Left = 8
      Top = 17
      Width = 140
      Height = 17
      Caption = 'Case sensitivity'
      TabOrder = 0
    end
    object WholeWordChk: TCheckBox
      Tag = 202
      Left = 8
      Top = 39
      Width = 140
      Height = 17
      Caption = 'Whole words only'
      TabOrder = 1
    end
    object FromCaretChk: TCheckBox
      Tag = 203
      Left = 8
      Top = 61
      Width = 140
      Height = 17
      Caption = 'Search from caret'
      TabOrder = 2
    end
    object InSelChk: TCheckBox
      Tag = 204
      Left = 8
      Top = 83
      Width = 140
      Height = 17
      Caption = 'Selected text only'
      TabOrder = 3
    end
    object RegExpChk: TCheckBox
      Tag = 205
      Left = 8
      Top = 105
      Width = 140
      Height = 17
      Caption = 'Regular expression'
      TabOrder = 4
    end
  end
  object DirectGrp: TRadioGroup
    Tag = 1201
    Left = 170
    Top = 40
    Width = 157
    Height = 65
    Caption = 'Direction'
    ItemIndex = 0
    Items.Strings = (
      'Forward'
      'Backward')
    TabOrder = 2
  end
  object OkBtn: TButton
    Tag = 11
    Left = 170
    Top = 142
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 3
  end
  object CancelBtn: TButton
    Tag = 12
    Left = 252
    Top = 142
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object Tmr1: TJvTimer
    Interval = 100
    ThreadPriority = tpLowest
    OnTimer = Tmr1Timer
    Left = 160
    Top = 96
  end
end
