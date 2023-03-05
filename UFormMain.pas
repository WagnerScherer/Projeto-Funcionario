unit UFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, UBairros, UCidades, UCad_Funcionarios, UEstados;


type
  TFormMain = class(TForm)
    btnTeste: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Bairros1: TMenuItem;
    Cidades1: TMenuItem;
    Funcionarios1: TMenuItem;
    Estados1: TMenuItem;
    procedure btnTesteClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    //procedure Estados1Click(Sender: TObject);
    //procedure Estados1Click(Sender: TObject);
    //procedure Estados1Click(Sender: TObject);

    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.Bairros1Click(Sender: TObject);
begin
  Bairros.Show;
end;

procedure TFormMain.btnTesteClick(Sender: TObject);
begin
  ShowMessage('óh vc conseguiu!!');
end;

procedure TFormMain.Cidades1Click(Sender: TObject);
begin
  Cidades.Show;
end;

procedure TFormMain.Estados1Click(Sender: TObject);
begin
  Estados.Show;
end;

procedure TFormMain.Funcionarios1Click(Sender: TObject);
begin
  Cad_Funcionarios.Show;
end;

end.
