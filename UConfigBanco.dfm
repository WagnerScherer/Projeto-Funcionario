object ConfigBanco: TConfigBanco
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o do Banco de Dados'
  ClientHeight = 109
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 123
    Height = 13
    Caption = 'Local do Banco de Dados:'
  end
  object btnConfigurar: TButton
    Left = 416
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Configurar'
    TabOrder = 0
    OnClick = btnConfigurarClick
  end
  object edtLocal: TEdit
    Left = 8
    Top = 27
    Width = 483
    Height = 21
    TabOrder = 1
  end
  object opnPastas: TOpenDialog
    DefaultExt = 'fdb'
    Filter = 'Firebird|*fdb'
    Left = 354
    Top = 54
  end
end
