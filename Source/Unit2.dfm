object Preview: TPreview
  Left = 229
  Top = 151
  Caption = 'Print Preview'
  ClientHeight = 416
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SynEditPrintPreview: TSynEditPrintPreview
    Left = 0
    Top = 0
    Width = 592
    Height = 316
    SynEditPrint = Editor.synprint1
  end
  object TntPanel1: TTntPanel
    Left = 0
    Top = 316
    Width = 592
    Height = 100
    Align = alBottom
    TabOrder = 1
    object TntLabel1: TTntLabel
      Left = 8
      Top = 8
      Width = 3
      Height = 13
    end
    object TntButton1: TTntButton
      Left = 72
      Top = 32
      Width = 25
      Height = 25
      Hint = 'Next Page'
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = TntButton1Click
    end
    object TntButton2: TTntButton
      Left = 40
      Top = 32
      Width = 25
      Height = 25
      Hint = 'Previous Page'
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = TntButton2Click
    end
    object TntButton3: TTntButton
      Left = 104
      Top = 32
      Width = 25
      Height = 25
      Hint = 'Last Page'
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = TntButton3Click
    end
    object TntButton4: TTntButton
      Left = 8
      Top = 32
      Width = 25
      Height = 25
      Hint = 'First Page'
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = TntButton4Click
    end
    object TntButton5: TTntButton
      Left = 8
      Top = 64
      Width = 121
      Height = 25
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      OnClick = TntButton5Click
    end
    object TntButton6: TTntButton
      Left = 136
      Top = 64
      Width = 121
      Height = 25
      Caption = 'Close'
      Default = True
      ModalResult = 1
      TabOrder = 5
    end
  end
end
