object Bairros: TBairros
  Left = 0
  Top = 0
  Caption = 'Cadastro de Bairros'
  ClientHeight = 344
  ClientWidth = 583
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
    Left = 119
    Top = 22
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 124
    Top = 49
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 98
    Height = 344
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
    Left = 158
    Top = 19
    Width = 134
    Height = 21
    DataField = 'CODBAIRRO'
    DataSource = dsBairros
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 158
    Top = 46
    Width = 402
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsBairros
    TabOrder = 2
  end
  object fdQryBairros: TFDQuery
    Connection = DmDados.FdCon
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_BAIRROS_ID'
    UpdateOptions.AutoIncFields = 'CODBAIRRO'
    UpdateObject = fdUpdBairros
    SQL.Strings = (
      'SELECT *'
      'FROM BAIRROS')
    Left = 517
    Top = 89
    object fdQryBairrosCODBAIRRO: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODBAIRRO'
      Origin = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryBairrosBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
  end
  object fdUpdBairros: TFDUpdateSQL
    Connection = DmDados.FdCon
    Left = 520
    Top = 147
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.FdCon
    Left = 518
    Top = 213
  end
  object dsBairros: TDataSource
    DataSet = fdQryBairros
    Left = 518
    Top = 269
  end
end
