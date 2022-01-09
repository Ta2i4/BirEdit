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
  Position = poDesktopCenter
  OnCloseQuery = TntFormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object SearchForLbl: TTntLabel
    Left = 8
    Top = 12
    Width = 50
    Height = 13
    Caption = 'Search for'
  end
  object TntComboBox1: TTntComboBox
    Left = 80
    Top = 9
    Width = 247
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object OptsGrp: TTntGroupBox
    Left = 8
    Top = 40
    Width = 154
    Height = 127
    Caption = 'Options'
    TabOrder = 1
    object CaseSentChk: TTntCheckBox
      Left = 8
      Top = 17
      Width = 140
      Height = 17
      Caption = 'Case sensitivity'
      TabOrder = 0
    end
    object WholeWordChk: TTntCheckBox
      Left = 8
      Top = 39
      Width = 140
      Height = 17
      Caption = 'Whole words only'
      TabOrder = 1
    end
    object FromCaretChk: TTntCheckBox
      Left = 8
      Top = 61
      Width = 140
      Height = 17
      Caption = 'Search from caret'
      TabOrder = 2
    end
    object InSelChk: TTntCheckBox
      Left = 8
      Top = 83
      Width = 140
      Height = 17
      Caption = 'Selected text only'
      TabOrder = 3
    end
    object RegExpChk: TTntCheckBox
      Left = 8
      Top = 105
      Width = 140
      Height = 17
      Caption = 'Regular expression'
      TabOrder = 4
    end
  end
  object DirectGrp: TTntRadioGroup
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
  object OkBtn: TTntButton
    Left = 170
    Top = 142
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object CancelBtn: TTntButton
    Left = 252
    Top = 142
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
end
