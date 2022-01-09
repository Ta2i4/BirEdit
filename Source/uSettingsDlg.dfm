object SettingsDlg: TSettingsDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Settings'
  ClientHeight = 368
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ApplyBtn: TButton
    Left = 10
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Apply'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 100
    Top = 335
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 594
    Height = 330
    ActivePage = AppTab
    Align = alTop
    TabOrder = 2
    object AppTab: TTabSheet
      Caption = 'Application'
      ImageIndex = 2
      object Lbl1: TLabel
        Left = 10
        Top = 80
        Width = 99
        Height = 13
        Caption = 'Recent files capacity'
      end
      object TrayChk: TCheckBox
        Left = 10
        Top = 10
        Width = 560
        Height = 17
        Caption = 'Minimize to tray'
        TabOrder = 0
      end
      object StatusBarChk: TCheckBox
        Left = 10
        Top = 30
        Width = 560
        Height = 17
        Caption = 'Show status bar'
        TabOrder = 1
      end
      object GVisChk: TCheckBox
        Left = 10
        Top = 50
        Width = 560
        Height = 17
        Caption = 'Show gutter'
        TabOrder = 2
      end
      object Spin1: TJvSpinEdit
        Left = 10
        Top = 100
        Width = 120
        Height = 21
        MaxValue = 100.000000000000000000
        MinValue = 1.000000000000000000
        Value = 10.000000000000000000
        TabOrder = 3
      end
    end
    object EditorTab: TTabSheet
      Caption = 'Editor'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageCtrl3: TPageControl
        Left = 0
        Top = 0
        Width = 586
        Height = 302
        ActivePage = EditOptsTab
        Align = alClient
        TabOrder = 0
        TabPosition = tpBottom
        object EditOptsTab: TTabSheet
          Caption = 'Options'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object TabSizeLbl: TLabel
            Left = 10
            Top = 130
            Width = 47
            Height = 13
            Caption = 'Tab width'
          end
          object UndoLimLbl: TLabel
            Left = 10
            Top = 50
            Width = 46
            Height = 13
            Caption = 'Undo limit'
          end
          object SMLbl: TLabel
            Left = 180
            Top = 130
            Width = 72
            Height = 13
            Caption = 'Selection mode'
          end
          object Lbl2: TLabel
            Left = 180
            Top = 10
            Width = 57
            Height = 13
            Caption = 'Insert caret'
          end
          object Lbl3: TLabel
            Left = 10
            Top = 10
            Width = 100
            Height = 13
            Caption = 'Maximum scroll width'
          end
          object Lbl4: TLabel
            Left = 180
            Top = 50
            Width = 76
            Height = 13
            Caption = 'Overwrite caret'
          end
          object Lbl5: TLabel
            Left = 10
            Top = 90
            Width = 52
            Height = 13
            Caption = 'Right edge'
          end
          object Lbl6: TLabel
            Left = 180
            Top = 90
            Width = 81
            Height = 13
            Caption = 'Scroll hint format'
          end
          object Spin5: TJvSpinEdit
            Left = 10
            Top = 145
            Width = 120
            Height = 21
            MaxValue = 100.000000000000000000
            MinValue = 1.000000000000000000
            Value = 8.000000000000000000
            TabOrder = 3
          end
          object Spin3: TJvSpinEdit
            Left = 10
            Top = 65
            Width = 120
            Height = 21
            MaxValue = 1024.000000000000000000
            Value = 1024.000000000000000000
            TabOrder = 1
          end
          object WrapChk: TCheckBox
            Left = 370
            Top = 30
            Width = 200
            Height = 17
            Caption = 'Word wrap'
            TabOrder = 9
          end
          object SMCombo: TComboBox
            Left = 180
            Top = 145
            Width = 150
            Height = 21
            AutoCloseUp = True
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 7
            Text = 'Normal'
            Items.Strings = (
              'Normal'
              'Line'
              'Column')
          end
          object Combo1: TComboBox
            Left = 180
            Top = 25
            Width = 150
            Height = 21
            ItemHeight = 0
            ItemIndex = 0
            TabOrder = 4
            Text = 'Vertical Line'
            Items.Strings = (
              'Vertical Line'
              'Horizontal Line'
              'Half of Block'
              'Block')
          end
          object Spin2: TJvSpinEdit
            Left = 10
            Top = 25
            Width = 120
            Height = 21
            MaxValue = 1024.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1024.000000000000000000
            TabOrder = 0
          end
          object Combo2: TComboBox
            Left = 180
            Top = 65
            Width = 150
            Height = 21
            ItemHeight = 0
            ItemIndex = 3
            TabOrder = 5
            Text = 'Block'
            Items.Strings = (
              'Vertical Line'
              'Horizontal Line'
              'Half of Block'
              'Block')
          end
          object Check1: TCheckBox
            Left = 370
            Top = 10
            Width = 200
            Height = 17
            Caption = 'Read only'
            TabOrder = 8
          end
          object Spin4: TJvSpinEdit
            Left = 10
            Top = 105
            Width = 120
            Height = 21
            MaxValue = 1024.000000000000000000
            Value = 80.000000000000000000
            TabOrder = 2
          end
          object Combo3: TComboBox
            Left = 180
            Top = 105
            Width = 150
            Height = 21
            ItemHeight = 0
            ItemIndex = 1
            TabOrder = 6
            Text = 'Top to Bottom'
            Items.Strings = (
              'Top Line Only'
              'Top to Bottom')
          end
        end
        object AdvTab: TTabSheet
          Caption = 'Advanced'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object OptsList: TCheckListBox
            Left = 0
            Top = 0
            Width = 578
            Height = 276
            Align = alClient
            ItemHeight = 13
            Items.Strings = (
              'Alt Sets Column Mode'
              'Auto Indent'
              'Auto Size Maximum Scroll Width'
              'Disable Scroll Arrows'
              'Drag Drop Editing'
              'Drop Files'
              'Enhance Home Key'
              'Enhance End Key'
              'Group Undo'
              'Half Page Scroll'
              'Hide/Show Scrollbars'
              'Keep Caret X'
              'No Caret'
              'No Selection'
              'Right Mouse Moves Cursor'
              'Scroll By One Less'
              'Scroll Hint Follows Cursor'
              'Scroll Past End Of File'
              'Scroll Past End Of Line'
              'Show Scroll Hint'
              'Show Special Chars'
              'Smart Tab Delete'
              'Smart Tabs'
              'Special Line Default Foreground'
              'Tab Indent'
              'Tabs To Spaces'
              'Trim Trailing Spaces')
            TabOrder = 0
          end
        end
      end
    end
    object GutterTab: TTabSheet
      Caption = 'Gutter'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Lbl7: TLabel
        Left = 10
        Top = 10
        Width = 51
        Height = 13
        Caption = 'Digit count'
      end
      object Lbl8: TLabel
        Left = 10
        Top = 50
        Width = 84
        Height = 13
        Caption = 'Line number start'
      end
      object Lbl9: TLabel
        Left = 10
        Top = 90
        Width = 70
        Height = 13
        Caption = 'Gradient steps'
      end
      object ShowLZChk: TCheckBox
        Left = 150
        Top = 30
        Width = 420
        Height = 17
        Caption = 'Leading zeros'
        TabOrder = 4
      end
      object StartZeroChk: TCheckBox
        Left = 150
        Top = 90
        Width = 420
        Height = 17
        Caption = 'Zero start'
        TabOrder = 7
      end
      object GASizeChk: TCheckBox
        Left = 150
        Top = 10
        Width = 420
        Height = 17
        Caption = 'Autosize'
        TabOrder = 3
      end
      object ShowLnNumChk: TCheckBox
        Left = 150
        Top = 50
        Width = 420
        Height = 17
        Caption = 'Show line numbers'
        TabOrder = 5
      end
      object Spin6: TJvSpinEdit
        Left = 10
        Top = 25
        Width = 120
        Height = 21
        MaxValue = 1024.000000000000000000
        MinValue = 1.000000000000000000
        Value = 4.000000000000000000
        TabOrder = 0
      end
      object Check2: TCheckBox
        Left = 150
        Top = 70
        Width = 420
        Height = 17
        Caption = 'Use font style'
        TabOrder = 6
      end
      object Spin7: TJvSpinEdit
        Left = 10
        Top = 65
        Width = 120
        Height = 21
        MaxValue = 1024.000000000000000000
        Value = 1.000000000000000000
        TabOrder = 1
      end
      object Check3: TCheckBox
        Left = 150
        Top = 110
        Width = 420
        Height = 17
        Caption = 'Use gradient'
        TabOrder = 8
      end
      object Spin8: TJvSpinEdit
        Left = 10
        Top = 105
        Width = 120
        Height = 21
        MaxValue = 1024.000000000000000000
        Value = 1.000000000000000000
        TabOrder = 2
      end
    end
  end
end
