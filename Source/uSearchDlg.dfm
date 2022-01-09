object SearchForm: TSearchForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search Text'
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
  PixelsPerInch = 96
  TextHeight = 13
  object SearchForLbl: TLabel
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
    ItemHeight = 13
    TabOrder = 2
  end
  object OptsGrp: TGroupBox
    Left = 8
    Top = 40
    Width = 154
    Height = 127
    Caption = 'Options'
    TabOrder = 3
    object CaseSentChk: TCheckBox
      Left = 8
      Top = 17
      Width = 140
      Height = 17
      Caption = 'Case sensitivity'
      TabOrder = 0
    end
    object WholeWordChk: TCheckBox
      Left = 8
      Top = 39
      Width = 140
      Height = 17
      Caption = 'Whole words only'
      TabOrder = 1
    end
    object FromCaretChk: TCheckBox
      Left = 8
      Top = 61
      Width = 140
      Height = 17
      Caption = 'Search from caret'
      TabOrder = 2
    end
    object InSelChk: TCheckBox
      Left = 8
      Top = 83
      Width = 140
      Height = 17
      Caption = 'Selected text only'
      TabOrder = 3
    end
    object RegExpChk: TCheckBox
      Left = 8
      Top = 105
      Width = 140
      Height = 17
      Caption = 'Regular expression'
      TabOrder = 4
    end
  end
  object DirectGrp: TRadioGroup
    Left = 170
    Top = 40
    Width = 157
    Height = 65
    Caption = 'Direction'
    ItemIndex = 0
    Items.Strings = (
      'Forward'
      'Backward')
    TabOrder = 4
  end
  object OkBtn: TButton
    Left = 170
    Top = 142
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 252
    Top = 142
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Tmr1: TJvTimer
    Interval = 100
    ThreadPriority = tpLowest
    OnTimer = Tmr1Timer
    Left = 160
    Top = 96
  end
end
