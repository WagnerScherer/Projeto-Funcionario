object DmDados: TDmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 294
  Width = 389
  object FdCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\scher\Documents\PROJETOS DELPHI\PROJETO FUNCIO' +
        'NARIO\BANCODADOS\BANCODADOS FUNCIONARIO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    LoginPrompt = False
    Left = 266
    Top = 134
  end
end
