object Form1: TForm1
  Left = 268
  Top = 138
  Width = 694
  Height = 617
  Caption = 'map editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 8
    Top = 8
    Width = 505
    Height = 505
    OnMouseDown = PaintBox1MouseDown
  end
  object Label1: TLabel
    Left = 568
    Top = 40
    Width = 16
    Height = 13
    Caption = '   X'
  end
  object Label2: TLabel
    Left = 536
    Top = 56
    Width = 23
    Height = 13
    Caption = ' start'
  end
  object Edit1: TEdit
    Left = 536
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 0
    Text = '20'
  end
  object Edit2: TEdit
    Left = 592
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 1
    Text = '20'
  end
  object Button1: TButton
    Left = 536
    Top = 192
    Width = 121
    Height = 25
    Caption = 'save as'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 536
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'map.map'
  end
  object Button2: TButton
    Left = 536
    Top = 168
    Width = 121
    Height = 25
    Caption = 'refresh'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 624
    Top = 56
    Width = 41
    Height = 21
    TabOrder = 5
    Text = '4'
  end
  object Button3: TButton
    Left = 552
    Top = 80
    Width = 65
    Height = 25
    Caption = 'ok'
    TabOrder = 6
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 536
    Top = 144
    Width = 121
    Height = 25
    Caption = 'delete'
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 520
    Top = 168
    Width = 17
    Height = 17
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 584
    Top = 56
    Width = 41
    Height = 21
    TabOrder = 9
    Text = '0'
  end
end
