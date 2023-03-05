program Funcionarios;

uses
  Vcl.Forms,
  UFormMain in 'Forms\UFormMain.pas' {FormMain},
  UDmDados in 'Forms\UDmDados.pas' {DmDados: TDataModule},
  UBiblioteca in 'Classes\UBiblioteca.pas',
  UConfigBanco in 'Forms\UConfigBanco.pas' {ConfigBanco},
  UBairros in 'Forms\UBairros.pas' {Bairros},
  UCidades in 'Forms\UCidades.pas' {Cidades},
  UEstados in 'Forms\UEstados.pas' {Estados},
  UCad_Funcionarios in 'Forms\UCad_Funcionarios.pas' {Cad_Funcionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TConfigBanco, ConfigBanco);
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TBairros, Bairros);
  Application.CreateForm(TCidades, Cidades);
  Application.CreateForm(TEstados, Estados);
  Application.CreateForm(TCad_Funcionarios, Cad_Funcionarios);
  //Application.CreateForm(TCadFuncionarios, CadFuncionarios);
  Application.Run;
end.
