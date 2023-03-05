unit UEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls;

type
  TEstados = class(TForm)
    fdTransaction: TFDTransaction;
    dsEstados: TDataSource;
    fdQryEstados: TFDQuery;
    fdUpdEstados: TFDUpdateSQL;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryEstadosUF: TWideStringField;
    fdQryEstadosDESCRICAO: TWideStringField;
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
  Estados: TEstados;

implementation

uses
  UDmDados;

{$R *.dfm}

procedure TEstados.btnCancelarClick(Sender: TObject);
begin
  if fdQryEstados.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryEstados.Cancel;
  fdTransaction.RollbackRetaining;

end;

procedure TEstados.btnExcluirClick(Sender: TObject);
begin
  fdQryEstados.Edit;
  fdTransaction.StartTransaction;
  fdQryEstados.Delete;
  fdTransaction.CommitRetaining;
end;

procedure TEstados.btnGravarClick(Sender: TObject);
begin
  if fdQryEstados.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryEstados.Post;
  fdTransaction.CommitRetaining;
  ShowMessage('Cadastro concluído!');

end;

procedure TEstados.btnNovoClick(Sender: TObject);
begin
  if not (fdQryEstados.State in [dsEdit, dsInsert]) then
  fdQryEstados.Insert;

end;

procedure TEstados.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TEstados.FormCreate(Sender: TObject);
begin
  fdQryEstados.Open;
end;

end.
