object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 846
    Height = 372
    Align = alClient
    Lines.Strings = (
      'memoLog')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    object btnStartLogger: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Start loggers'
      TabOrder = 0
      OnClick = btnStartLoggerClick
      ExplicitLeft = 8
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnSendLogMessages: TButton
      AlignWithMargins = True
      Left = 165
      Top = 3
      Width = 108
      Height = 27
      Align = alLeft
      Caption = 'Send log message'
      TabOrder = 1
      OnClick = btnSendLogMessagesClick
    end
    object btnStoploggers: TButton
      AlignWithMargins = True
      Left = 84
      Top = 3
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Stop loggers'
      TabOrder = 2
      OnClick = btnStoploggersClick
      ExplicitLeft = 147
    end
    object seLoggerCount: TSpinEdit
      AlignWithMargins = True
      Left = 279
      Top = 6
      Width = 121
      Height = 22
      MaxValue = 10
      MinValue = 1
      TabOrder = 3
      Value = 3
    end
  end
end
