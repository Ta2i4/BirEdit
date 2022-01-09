inherited MyAMsgDlg: TMyAMsgDlg
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited TntButton1: TTntButton
    Left = 80
    Caption = 'Yes'
    ModalResult = 6
    ExplicitLeft = 80
  end
  object TntButton2: TTntButton
    Left = 180
    Top = 65
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'No'
    ModalResult = 7
    TabOrder = 1
  end
end
