object Form1: TForm1
  Left = 0
  Top = 0
  Width = 501
  Height = 519
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 481
    Height = 473
  end
  object Button1: TButton
    Left = 168
    Top = 368
    Width = 89
    Height = 33
    Caption = 'start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = polzti
    Left = 8
    Top = 16
  end
end
