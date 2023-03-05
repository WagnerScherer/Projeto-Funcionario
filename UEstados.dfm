object Estados: TEstados
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estados'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 137
    Top = 26
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 104
    Top = 53
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 98
    Height = 231
    Align = alLeft
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 8
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 8
      Top = 103
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 8
      Top = 134
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 156
    Top = 23
    Width = 134
    Height = 21
    DataField = 'UF'
    DataSource = dsEstados
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 156
    Top = 50
    Width = 331
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsEstados
    TabOrder = 2
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.FdCon
    Left = 435
    Top = 132
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 432
    Top = 185
  end
  object fdQryEstados: TFDQuery
    Connection = DmDados.FdCon
    Transaction = fdTransaction
    UpdateObject = fdUpdEstados
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADOS')
    Left = 440
    Top = 29
    object fdQryEstadosUF: TWideStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 10
    end
    object fdQryEstadosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object fdUpdEstados: TFDUpdateSQL
    Connection = DmDados.FdCon
    Left = 435
    Top = 80
  end
end
