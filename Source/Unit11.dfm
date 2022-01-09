inherited MyBMsgDlg: TMyBMsgDlg
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited TntButton1: TTntButton
    Left = 30
    Caption = 'Yes'
    ModalResult = 6
    ExplicitLeft = 30
  end
  object TntButton2: TTntButton
    Left = 132
    Top = 65
    Width = 75
    Height = 25
    Caption = 'No'
    ModalResult = 7
    TabOrder = 1
  end
  object TntButton3: TTntButton
    Left = 235
    Top = 65
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
