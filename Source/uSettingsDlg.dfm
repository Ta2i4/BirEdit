object SettingsDlg: TSettingsDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Settings'
  ClientHeight = 368
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TntButton1: TTntButton
    Left = 10
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Apply'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object TntButton2: TTntButton
    Left = 100
    Top = 335
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object TntPageControl1: TTntPageControl
    Left = 0
    Top = 0
    Width = 424
    Height = 330
    ActivePage = TntTabSheet1
    Align = alTop
    TabOrder = 2
    object TntTabSheet1: TTntTabSheet
      Caption = 'Display'
      object TntGroupBox1: TTntGroupBox
        Left = 8
        Top = 8
        Width = 393
        Height = 134
        Caption = 'Gutter'
        TabOrder = 0
        object TntCheckBox1: TTntCheckBox
          Left = 8
          Top = 16
          Width = 369
          Height = 17
          Caption = 'Visible'
          TabOrder = 0
        end
        object TntCheckBox2: TTntCheckBox
          Left = 8
          Top = 38
          Width = 369
          Height = 17
          Caption = 'Autosize'
          TabOrder = 1
        end
        object TntCheckBox3: TTntCheckBox
          Left = 8
          Top = 60
          Width = 369
          Height = 17
          Caption = 'Show line numbers'
          TabOrder = 2
        end
        object TntCheckBox4: TTntCheckBox
          Left = 8
          Top = 82
          Width = 369
          Height = 17
          Caption = 'Start at zero'
          TabOrder = 3
        end
        object TntCheckBox5: TTntCheckBox
          Left = 8
          Top = 104
          Width = 369
          Height = 17
          Caption = 'Show leading zeros'
          TabOrder = 4
        end
      end
      object TntCheckBox7: TTntCheckBox
        Left = 16
        Top = 154
        Width = 369
        Height = 17
        Caption = 'Show status bar'
        TabOrder = 1
      end
    end
    object TntTabSheet2: TTntTabSheet
      Caption = 'Editor'
      object TntLabel2: TTntLabel
        Left = 8
        Top = 10
        Width = 46
        Height = 13
        Caption = 'Undo limit'
      end
      object TntLabel1: TTntLabel
        Left = 290
        Top = 10
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tab size'
      end
      object JvSpinEdit2: TJvSpinEdit
        Left = 96
        Top = 8
        Width = 60
        Height = 21
        MaxValue = 9999.000000000000000000
        TabOrder = 0
      end
      object TntGroupBox2: TTntGroupBox
        Left = 3
        Top = 35
        Width = 398
        Height = 62
        Caption = 'Options'
        TabOrder = 1
        object TntCheckBox6: TTntCheckBox
          Left = 8
          Top = 16
          Width = 377
          Height = 17
          Caption = 'Show special chars'
          TabOrder = 0
        end
        object TntCheckBox9: TTntCheckBox
          Left = 8
          Top = 38
          Width = 377
          Height = 17
          Caption = 'Insert tabs as spaces'
          TabOrder = 1
        end
      end
      object TntRadioGroup1: TTntRadioGroup
        Left = 3
        Top = 103
        Width = 398
        Height = 74
        Caption = 'Selection mode'
        Items.Strings = (
          'Normal'
          'Line'
          'Column')
        TabOrder = 2
      end
      object TntCheckBox8: TTntCheckBox
        Left = 11
        Top = 187
        Width = 390
        Height = 17
        Caption = 'Word wrap'
        TabOrder = 3
      end
      object JvSpinEdit1: TJvSpinEdit
        Left = 341
        Top = 7
        Width = 60
        Height = 21
        MaxValue = 100.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        TabOrder = 4
      end
    end
    object TntTabSheet3: TTntTabSheet
      Caption = 'Application'
      object TntRadioGroup2: TTntRadioGroup
        Left = 8
        Top = 8
        Width = 393
        Height = 73
        Caption = 'Save settings to'
        Items.Strings = (
          'Application Data directory'
          'Program directory')
        TabOrder = 0
      end
    end
  end
end
