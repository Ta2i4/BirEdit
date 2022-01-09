object SettingsDlg: TSettingsDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Settings'
  ClientHeight = 373
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Btn1: TButton
    Tag = 11
    Left = 15
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Apply'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object Btn2: TButton
    Tag = 12
    Left = 100
    Top = 340
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object PageCtrl1: TPageControl
    Left = 0
    Top = 0
    Width = 394
    Height = 335
    ActivePage = Tab1
    Align = alTop
    TabOrder = 0
    object Tab1: TTabSheet
      Tag = 301
      Caption = 'Application'
      ImageIndex = 2
      object Lbl1: TLabel
        Tag = 101
        Left = 10
        Top = 170
        Width = 99
        Height = 13
        Caption = 'Recent files capacity'
      end
      object lbl14: TLabel
        Tag = 115
        Left = 10
        Top = 280
        Width = 285
        Height = 13
        Caption = '[*] Not recommended. Incompatible with non-latin symbols.'
      end
      object Check7: TCheckBox
        Tag = 201
        Left = 10
        Top = 10
        Width = 340
        Height = 17
        Caption = 'Minimize to tray'
        TabOrder = 0
      end
      object Check8: TCheckBox
        Tag = 202
        Left = 10
        Top = 35
        Width = 340
        Height = 17
        Caption = 'Show status bar'
        TabOrder = 1
      end
      object Check9: TCheckBox
        Tag = 203
        Left = 10
        Top = 60
        Width = 340
        Height = 17
        Caption = 'Show gutter'
        TabOrder = 2
      end
      object Spin1: TJvSpinEdit
        Left = 10
        Top = 190
        Width = 120
        Height = 21
        MaxValue = 100.000000000000000000
        MinValue = 1.000000000000000000
        Value = 10.000000000000000000
        TabOrder = 6
      end
      object Check5: TCheckBox
        Tag = 204
        Left = 10
        Top = 85
        Width = 340
        Height = 17
        Caption = 'Scan dropped folders'
        TabOrder = 3
      end
      object Check6: TCheckBox
        Tag = 205
        Left = 10
        Top = 110
        Width = 340
        Height = 17
        Caption = 'Scan subfolders in dropped folders'
        TabOrder = 4
      end
      object Check15: TCheckBox
        Tag = 206
        Left = 10
        Top = 135
        Width = 340
        Height = 17
        Caption = 'Use syntax highlighting [*]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    object Tab2: TTabSheet
      Tag = 302
      Caption = 'Editor'
      object PageCtrl2: TPageControl
        Left = 0
        Top = 0
        Width = 386
        Height = 307
        ActivePage = Tab4
        Align = alClient
        TabOrder = 0
        TabPosition = tpBottom
        object Tab4: TTabSheet
          Tag = 304
          Caption = 'Options'
          object Lbl13: TLabel
            Tag = 106
            Left = 10
            Top = 130
            Width = 47
            Height = 13
            Caption = 'Tab width'
          end
          object Lbl12: TLabel
            Tag = 104
            Left = 10
            Top = 50
            Width = 46
            Height = 13
            Caption = 'Undo limit'
          end
          object Lbl11: TLabel
            Tag = 111
            Left = 180
            Top = 130
            Width = 72
            Height = 13
            Caption = 'Selection mode'
          end
          object Lbl2: TLabel
            Tag = 108
            Left = 180
            Top = 10
            Width = 57
            Height = 13
            Caption = 'Insert caret'
          end
          object Lbl3: TLabel
            Tag = 103
            Left = 10
            Top = 10
            Width = 100
            Height = 13
            Caption = 'Maximum scroll width'
          end
          object Lbl4: TLabel
            Tag = 109
            Left = 180
            Top = 50
            Width = 76
            Height = 13
            Caption = 'Overwrite caret'
          end
          object Lbl5: TLabel
            Tag = 105
            Left = 10
            Top = 90
            Width = 52
            Height = 13
            Caption = 'Right edge'
          end
          object Lbl6: TLabel
            Tag = 110
            Left = 180
            Top = 90
            Width = 81
            Height = 13
            Caption = 'Scroll hint format'
          end
          object Lbl10: TLabel
            Tag = 107
            Left = 10
            Top = 170
            Width = 84
            Height = 13
            Caption = 'Extra line spacing'
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
          object Check10: TCheckBox
            Tag = 208
            Left = 10
            Top = 235
            Width = 320
            Height = 17
            Caption = 'Word wrap'
            TabOrder = 10
          end
          object Combo4: TComboBox
            Tag = 1003
            Left = 180
            Top = 145
            Width = 150
            Height = 21
            AutoCloseUp = True
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 8
            Text = 'Normal'
            Items.Strings = (
              'Normal'
              'Line'
              'Column')
          end
          object Combo1: TComboBox
            Tag = 1001
            Left = 180
            Top = 25
            Width = 150
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 5
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
            Tag = 1001
            Left = 180
            Top = 65
            Width = 150
            Height = 21
            Style = csDropDownList
            ItemIndex = 3
            TabOrder = 6
            Text = 'Block'
            Items.Strings = (
              'Vertical Line'
              'Horizontal Line'
              'Half of Block'
              'Block')
          end
          object Check1: TCheckBox
            Tag = 207
            Left = 10
            Top = 215
            Width = 320
            Height = 17
            Caption = 'Read only'
            TabOrder = 9
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
            Tag = 1002
            Left = 180
            Top = 105
            Width = 150
            Height = 21
            Style = csDropDownList
            ItemIndex = 1
            TabOrder = 7
            Text = 'Top to Bottom'
            Items.Strings = (
              'Top Line Only'
              'Top to Bottom')
          end
          object Spin9: TJvSpinEdit
            Left = 10
            Top = 185
            Width = 120
            Height = 21
            MaxValue = 1024.000000000000000000
            TabOrder = 4
          end
          object Check4: TCheckBox
            Tag = 209
            Left = 10
            Top = 255
            Width = 320
            Height = 17
            Caption = 'Paste text after caret'
            TabOrder = 11
          end
        end
        object Tab5: TTabSheet
          Tag = 305
          Caption = 'Advanced'
          ImageIndex = 1
          object OptsList: TCheckListBox
            Tag = 1101
            Left = 0
            Top = 0
            Width = 378
            Height = 281
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
    object Tab3: TTabSheet
      Tag = 303
      Caption = 'Other'
      ImageIndex = 2
      object grp1: TGroupBox
        Tag = 401
        Left = 10
        Top = 10
        Width = 350
        Height = 150
        Caption = 'Gutter'
        TabOrder = 0
        object Lbl7: TLabel
          Tag = 112
          Left = 10
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Digit count'
        end
        object Lbl8: TLabel
          Tag = 113
          Left = 10
          Top = 60
          Width = 84
          Height = 13
          Caption = 'Line number start'
        end
        object Lbl9: TLabel
          Tag = 114
          Left = 10
          Top = 100
          Width = 70
          Height = 13
          Caption = 'Gradient steps'
        end
        object Check12: TCheckBox
          Tag = 211
          Left = 140
          Top = 40
          Width = 200
          Height = 17
          Caption = 'Leading zeros'
          TabOrder = 4
        end
        object Check14: TCheckBox
          Tag = 214
          Left = 140
          Top = 100
          Width = 200
          Height = 17
          Caption = 'Zero start'
          TabOrder = 7
        end
        object Check11: TCheckBox
          Tag = 210
          Left = 140
          Top = 20
          Width = 200
          Height = 17
          Caption = 'Autosize'
          TabOrder = 3
        end
        object Spin7: TJvSpinEdit
          Left = 10
          Top = 75
          Width = 120
          Height = 21
          MaxValue = 1024.000000000000000000
          Value = 1.000000000000000000
          TabOrder = 1
        end
        object Spin6: TJvSpinEdit
          Left = 10
          Top = 35
          Width = 120
          Height = 21
          MaxValue = 1024.000000000000000000
          MinValue = 1.000000000000000000
          Value = 4.000000000000000000
          TabOrder = 0
        end
        object Check2: TCheckBox
          Tag = 213
          Left = 140
          Top = 80
          Width = 200
          Height = 17
          Caption = 'Use font style'
          TabOrder = 6
        end
        object Check3: TCheckBox
          Tag = 215
          Left = 140
          Top = 120
          Width = 200
          Height = 17
          Caption = 'Use gradient'
          TabOrder = 8
        end
        object Spin8: TJvSpinEdit
          Left = 10
          Top = 115
          Width = 120
          Height = 21
          MaxValue = 1024.000000000000000000
          Value = 1.000000000000000000
          TabOrder = 2
        end
        object Check13: TCheckBox
          Tag = 212
          Left = 140
          Top = 60
          Width = 200
          Height = 17
          Caption = 'Show line numbers'
          TabOrder = 5
        end
      end
      object grp2: TGroupBox
        Tag = 402
        Left = 10
        Top = 165
        Width = 350
        Height = 100
        Caption = 'Print'
        TabOrder = 1
        object Check16: TCheckBox
          Tag = 216
          Left = 10
          Top = 20
          Width = 330
          Height = 17
          Caption = 'Use colors'
          TabOrder = 0
        end
        object Check17: TCheckBox
          Tag = 217
          Left = 10
          Top = 45
          Width = 330
          Height = 17
          Caption = 'Syntax print'
          TabOrder = 1
        end
        object Check18: TCheckBox
          Tag = 218
          Left = 10
          Top = 70
          Width = 330
          Height = 17
          Caption = 'Line numbers'
          TabOrder = 2
        end
      end
    end
  end
end
