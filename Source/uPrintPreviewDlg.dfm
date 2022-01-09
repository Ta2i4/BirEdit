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
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = TntFormKeyDown
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
    object NextBtn: TTntButton
      Left = 264
      Top = 33
      Width = 120
      Height = 25
      Caption = 'Next'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = NextBtnClick
    end
    object PrevBtn: TTntButton
      Left = 136
      Top = 33
      Width = 120
      Height = 25
      Caption = 'Previous'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = PrevBtnClick
    end
    object LastBtn: TTntButton
      Left = 392
      Top = 33
      Width = 120
      Height = 25
      Caption = 'Last'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = LastBtnClick
    end
    object FirstBtn: TTntButton
      Left = 8
      Top = 33
      Width = 120
      Height = 25
      Caption = 'First'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = FirstBtnClick
    end
    object PrintBtn: TTntButton
      Left = 8
      Top = 64
      Width = 120
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
      OnClick = PrintBtnClick
    end
    object CloseBtn: TTntButton
      Left = 136
      Top = 64
      Width = 120
      Height = 25
      Caption = 'Close'
      Default = True
      ModalResult = 1
      TabOrder = 5
    end
  end
end
