unit UConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UBiblioteca;

type
  TConfigBanco = class(TForm)
    btnConfigurar: TButton;
    Label1: TLabel;
    edtLocal: TEdit;
    opnPastas: TOpenDialog;
    procedure btnConfigurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    procedure Configura;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigBanco: TConfigBanco;

implementation

procedure TConfigBanco.btnConfigurarClick(Sender: TObject);
begin
  Configura;
end;
{$R *.dfm}

procedure TConfigBanco.Configura;
var
  vFileName: string;
begin
  if opnPastas.Execute then begin
    edtLocal.Text := opnPastas.FileName;
    vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
    ShowMessage('Pronto!');
    Application.Terminate;
    Self.Close;
  end;

  end;

procedure TConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
