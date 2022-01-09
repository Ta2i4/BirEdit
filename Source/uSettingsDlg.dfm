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
  object ApplyBtn: TTntButton
    Left = 10
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Apply'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TTntButton
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
    ActivePage = DisplayTab
    Align = alTop
    TabOrder = 2
    object DisplayTab: TTntTabSheet
      Caption = 'Display'
      object GutterGrp: TTntGroupBox
        Left = 8
        Top = 8
        Width = 393
        Height = 134
        Caption = 'Gutter'
        TabOrder = 0
        object GVisChk: TTntCheckBox
          Left = 8
          Top = 16
          Width = 369
          Height = 17
          Caption = 'Visible'
          TabOrder = 0
        end
        object GASizeChk: TTntCheckBox
          Left = 8
          Top = 38
          Width = 369
          Height = 17
          Caption = 'Autosize'
          TabOrder = 1
        end
        object ShowLnNumChk: TTntCheckBox
          Left = 8
          Top = 60
          Width = 369
          Height = 17
          Caption = 'Show line numbers'
          TabOrder = 2
        end
        object StartZeroChk: TTntCheckBox
          Left = 8
          Top = 82
          Width = 369
          Height = 17
          Caption = 'Start at zero'
          TabOrder = 3
        end
        object ShowLZChk: TTntCheckBox
          Left = 8
          Top = 104
          Width = 369
          Height = 17
          Caption = 'Show leading zeros'
          TabOrder = 4
        end
      end
      object StatusBarChk: TTntCheckBox
        Left = 16
        Top = 154
        Width = 369
        Height = 17
        Caption = 'Show status bar'
        TabOrder = 1
      end
    end
    object EditorTab: TTntTabSheet
      Caption = 'Editor'
      object UndoLimLbl: TTntLabel
        Left = 8
        Top = 10
        Width = 46
        Height = 13
        Caption = 'Undo limit'
      end
      object TabSizeLbl: TTntLabel
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
      object OptGrp: TTntGroupBox
        Left = 3
        Top = 35
        Width = 398
        Height = 62
        Caption = 'Options'
        TabOrder = 1
        object ShSpChrChk: TTntCheckBox
          Left = 8
          Top = 16
          Width = 377
          Height = 17
          Caption = 'Show special chars'
          TabOrder = 0
        end
        object TabAsSpcChk: TTntCheckBox
          Left = 8
          Top = 38
          Width = 377
          Height = 17
          Caption = 'Insert tabs as spaces'
          TabOrder = 1
        end
      end
      object SelModeGrp: TTntRadioGroup
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
      object WrapChk: TTntCheckBox
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
    object AppTab: TTntTabSheet
      Caption = 'Application'
      object SaveConfGrp: TTntRadioGroup
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
      object TrayChk: TTntCheckBox
        Left = 8
        Top = 91
        Width = 390
        Height = 17
        Caption = 'Minimize to tray'
        TabOrder = 1
      end
    end
  end
end
