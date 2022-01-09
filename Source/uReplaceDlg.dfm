inherited ReplaceForm: TReplaceForm
  Caption = 'Replace text'
  ClientHeight = 207
  ClientWidth = 336
  OldCreateOrder = True
  ExplicitWidth = 342
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 13
  object ReplaceLbl: TTntLabel [1]
    Left = 8
    Top = 41
    Width = 65
    Height = 13
    Caption = 'Replace with:'
  end
  inherited OptsGrp: TTntGroupBox
    Top = 70
    TabOrder = 2
    ExplicitTop = 70
  end
  inherited DirectGrp: TTntRadioGroup
    Top = 70
    TabOrder = 3
    ExplicitTop = 70
  end
  inherited OkBtn: TTntButton
    Top = 175
    TabOrder = 4
    ExplicitTop = 175
  end
  inherited CancelBtn: TTntButton
    Top = 175
    TabOrder = 5
    ExplicitTop = 175
  end
  object TntComboBox2: TTntComboBox
    Left = 80
    Top = 37
    Width = 247
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
end
