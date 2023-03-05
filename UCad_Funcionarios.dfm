object Cad_Funcionarios: TCad_Funcionarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 490
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 140
    Top = 14
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 146
    Top = 41
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 141
    Top = 285
    Width = 32
    Height = 13
    Caption = 'Sal'#225'rio'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 145
    Top = 258
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 119
    Top = 69
    Width = 53
    Height = 13
    Caption = 'Data Nasc.'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 338
    Top = 69
    Width = 14
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 522
    Top = 69
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 128
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 519
    Top = 96
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 108
    Top = 123
    Width = 65
    Height = 13
    Caption = 'Complemento'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 144
    Top = 150
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 139
    Top = 177
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 154
    Top = 204
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 517
    Top = 177
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 149
    Top = 231
    Width = 24
    Height = 13
    Caption = 'Fone'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 429
    Top = 231
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit16
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 100
    Height = 490
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
    Left = 179
    Top = 12
    Width = 134
    Height = 21
    DataField = 'CODFUNCIONARIO'
    DataSource = dsCad_Funcionarios
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 179
    Top = 39
    Width = 517
    Height = 21
    DataField = 'NOME'
    DataSource = dsCad_Funcionarios
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 179
    Top = 282
    Width = 134
    Height = 21
    DataField = 'SALARIO'
    DataSource = dsCad_Funcionarios
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 179
    Top = 255
    Width = 517
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCad_Funcionarios
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 178
    Top = 66
    Width = 152
    Height = 21
    DataField = 'DATANASC'
    DataSource = dsCad_Funcionarios
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 358
    Top = 66
    Width = 149
    Height = 21
    DataField = 'RG'
    DataSource = dsCad_Funcionarios
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 547
    Top = 66
    Width = 149
    Height = 21
    DataField = 'CPF'
    DataSource = dsCad_Funcionarios
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 179
    Top = 93
    Width = 328
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCad_Funcionarios
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 562
    Top = 93
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsCad_Funcionarios
    TabOrder = 9
  end
  object DBEdit10: TDBEdit
    Left = 179
    Top = 120
    Width = 517
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = dsCad_Funcionarios
    TabOrder = 10
  end
  object DBEdit11: TDBEdit
    Left = 178
    Top = 147
    Width = 329
    Height = 21
    DataField = 'CODBAIRRO'
    DataSource = dsCad_Funcionarios
    TabOrder = 11
  end
  object DBEdit12: TDBEdit
    Left = 178
    Top = 174
    Width = 329
    Height = 21
    DataField = 'CODCIDADE'
    DataSource = dsCad_Funcionarios
    TabOrder = 12
  end
  object DBEdit13: TDBEdit
    Left = 179
    Top = 201
    Width = 121
    Height = 21
    DataField = 'CEP'
    DataSource = dsCad_Funcionarios
    TabOrder = 13
  end
  object DBEdit14: TDBEdit
    Left = 536
    Top = 174
    Width = 69
    Height = 21
    DataField = 'UF'
    DataSource = dsCad_Funcionarios
    TabOrder = 14
  end
  object DBEdit15: TDBEdit
    Left = 179
    Top = 228
    Width = 227
    Height = 21
    DataField = 'FONE'
    DataSource = dsCad_Funcionarios
    TabOrder = 15
  end
  object DBEdit16: TDBEdit
    Left = 468
    Top = 228
    Width = 228
    Height = 21
    DataField = 'CELULAR'
    DataSource = dsCad_Funcionarios
    TabOrder = 16
  end
  object fdQryCad_Funcionarios: TFDQuery
    Connection = DmDados.FdCon
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FUNCIONARIOS_ID'
    UpdateOptions.AutoIncFields = 'CODFUNCIONARIO'
    UpdateObject = fdUpdCad_Funcionarios
    SQL.Strings = (
      'SELECT *'
      'FROM FUNCIONARIOS')
    Left = 603
    Top = 209
    object fdQryCad_FuncionariosCODFUNCIONARIO: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODFUNCIONARIO'
      Origin = 'CODFUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCad_FuncionariosNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCad_FuncionariosENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object fdQryCad_FuncionariosCODBAIRRO: TSmallintField
      FieldName = 'CODBAIRRO'
      Origin = 'CODBAIRRO'
    end
    object fdQryCad_FuncionariosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCad_FuncionariosCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object fdQryCad_FuncionariosCODCIDADE: TSmallintField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
    end
    object fdQryCad_FuncionariosUF: TWideStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 5
    end
    object fdQryCad_FuncionariosCEP: TWideStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object fdQryCad_FuncionariosCPF: TWideStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object fdQryCad_FuncionariosRG: TWideStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object fdQryCad_FuncionariosFONE: TWideStringField
      FieldName = 'FONE'
      Origin = 'FONE'
    end
    object fdQryCad_FuncionariosCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object fdQryCad_FuncionariosDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'DATANASC'
    end
    object fdQryCad_FuncionariosEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object fdQryCad_FuncionariosSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
    end
  end
  object fdUpdCad_Funcionarios: TFDUpdateSQL
    Connection = DmDados.FdCon
    Left = 605
    Top = 268
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.FdCon
    Left = 602
    Top = 329
  end
  object dsCad_Funcionarios: TDataSource
    DataSet = fdQryCad_Funcionarios
    Left = 603
    Top = 390
  end
end
