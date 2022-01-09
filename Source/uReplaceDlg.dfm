inherited ReplaceForm: TReplaceForm
  Caption = 'Replace text'
  ClientHeight = 207
  ClientWidth = 336
  OldCreateOrder = True
  ExplicitWidth = 342
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 13
  object ReplaceLbl: TLabel [1]
    Tag = 102
    Left = 8
    Top = 41
    Width = 61
    Height = 13
    Caption = 'Replace with'
  end
  inherited OptsGrp: TGroupBox
    Top = 70
    TabOrder = 2
    ExplicitTop = 70
  end
  inherited DirectGrp: TRadioGroup
    Top = 70
    TabOrder = 3
    ExplicitTop = 70
  end
  inherited OkBtn: TButton
    Top = 175
    TabOrder = 4
    ExplicitTop = 175
  end
  inherited CancelBtn: TButton
    Top = 175
    TabOrder = 5
    ExplicitTop = 175
  end
  object ComboBox2: TComboBox [7]
    Left = 80
    Top = 37
    Width = 247
    Height = 21
    TabOrder = 1
  end
end
