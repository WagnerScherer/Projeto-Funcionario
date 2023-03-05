object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 489
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object btnTeste: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Teste'
    TabOrder = 0
    Visible = False
    OnClick = btnTesteClick
  end
  object MainMenu1: TMainMenu
    Left = 494
    Top = 11
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Bairros1: TMenuItem
        Caption = 'Bairros'
        OnClick = Bairros1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object Estados1: TMenuItem
        Caption = 'Estados'
        OnClick = Estados1Click
      end
      object Funcionarios1: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = Funcionarios1Click
      end
    end
  end
end
