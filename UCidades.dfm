object Cidades: TCidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 329
  ClientWidth = 580
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
    Left = 108
    Top = 15
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 108
    Top = 42
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit2
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 95
    Height = 329
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
    Left = 147
    Top = 12
    Width = 134
    Height = 21
    DataField = 'CODCIDADE'
    DataSource = dsCidades
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 147
    Top = 39
    Width = 341
    Height = 21
    DataField = 'CIDADE'
    DataSource = dsCidades
    TabOrder = 2
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.FdCon
    Left = 496
    Top = 203
  end
  object fdQryCidades: TFDQuery
    Connection = DmDados.FdCon
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADES_ID'
    UpdateOptions.AutoIncFields = 'CODCIDADE'
    UpdateObject = fdUpdCidades
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADES')
    Left = 503
    Top = 94
    object fdQryCidadesCODCIDADE: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCidadesCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
  end
  object fdUpdCidades: TFDUpdateSQL
    Connection = DmDados.FdCon
    Left = 499
    Top = 150
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 496
    Top = 262
  end
end
