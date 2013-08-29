object Form1: TForm1
  Left = 338
  Top = 177
  BorderStyle = bsSingle
  Caption = 'snake'
  ClientHeight = 473
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 481
    Height = 473
    Visible = False
    OnClick = PaintBox1Click
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
  object Panel2: TPanel
    Left = 272
    Top = 24
    Width = 177
    Height = 169
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 8
      Top = 40
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 8
      Top = 72
      Width = 3
      Height = 13
    end
    object Label7: TLabel
      Left = 8
      Top = 88
      Width = 3
      Height = 13
    end
    object Label8: TLabel
      Left = 8
      Top = 104
      Width = 3
      Height = 13
    end
    object Label9: TLabel
      Left = 8
      Top = 120
      Width = 3
      Height = 13
    end
    object Label10: TLabel
      Left = 8
      Top = 136
      Width = 3
      Height = 13
    end
    object Label11: TLabel
      Left = 8
      Top = 152
      Width = 3
      Height = 13
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = polzti
    Left = 8
    Top = 16
  end
  object MainMenu1: TMainMenu
    object maps: TMenuItem
      Caption = 'maps'
      object nonemam: TMenuItem
        Caption = 'nonemap'
        OnClick = nonemamClick
      end
      object map1: TMenuItem
        Caption = 'map1'
        OnClick = map1Click
      end
      object map2: TMenuItem
        Caption = 'map2'
        OnClick = map2Click
      end
      object map3: TMenuItem
        Caption = 'map3'
        OnClick = map3Click
      end
      object map4: TMenuItem
        Caption = 'map4'
        OnClick = map4Click
      end
      object map5: TMenuItem
        Caption = 'map5'
        OnClick = map5Click
      end
    end
    object speed1: TMenuItem
      Caption = 'speed'
      object N11: TMenuItem
        Caption = '1'
      end
      object N21: TMenuItem
        Caption = '2'
        OnClick = N21Click
      end
      object N31: TMenuItem
        Caption = '3'
        OnClick = N31Click
      end
      object N41: TMenuItem
        Caption = '4'
        OnClick = N41Click
      end
      object N51: TMenuItem
        Caption = '5'
        OnClick = N51Click
      end
      object N61: TMenuItem
        Caption = '6'
        OnClick = N61Click
      end
      object N71: TMenuItem
        Caption = '7'
        OnClick = N71Click
      end
      object N81: TMenuItem
        Caption = '8'
        OnClick = N81Click
      end
      object N91: TMenuItem
        Caption = '9'
        OnClick = N91Click
      end
      object N101: TMenuItem
        Caption = '10'
        OnClick = N101Click
      end
    end
    object restart1: TMenuItem
      Caption = 'restart'
      OnClick = restart1Click
    end
    object exit1: TMenuItem
      Caption = 'exit'
      OnClick = exit1Click
    end
  end
end
