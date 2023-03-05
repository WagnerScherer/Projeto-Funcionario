unit UBairros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls;

type
  TBairros = class(TForm)
    fdQryBairros: TFDQuery;
    fdUpdBairros: TFDUpdateSQL;
    fdTransaction: TFDTransaction;
    dsBairros: TDataSource;
    fdQryBairrosCODBAIRRO: TSmallintField;
    fdQryBairrosBAIRRO: TWideStringField;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bairros: TBairros;

implementation

uses
  UDmDados;

{$R *.dfm}

procedure TBairros.btnCancelarClick(Sender: TObject);
begin
  if fdQryBairros.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryBairros.Cancel;
  fdTransaction.RollbackRetaining;
end;

procedure TBairros.btnExcluirClick(Sender: TObject);
begin
  fdQryBairros.Edit;
  fdTransaction.StartTransaction;
  fdQryBairros.Post;
  fdTransaction.CommitRetaining;
end;

procedure TBairros.btnGravarClick(Sender: TObject);
begin
  if fdQryBairros.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryBairros.Post;
  fdTransaction.CommitRetaining;
  ShowMessage('Cadastro concluído!');
end;

procedure TBairros.btnNovoClick(Sender: TObject);
begin
  if not (fdQryBairros.State in [dsEdit, dsInsert])   then
  begin
    fdQryBairros.Insert;
  end;
end;

procedure TBairros.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TBairros.FormCreate(Sender: TObject);
begin
  fdQryBairros.Open;
end;

end.
