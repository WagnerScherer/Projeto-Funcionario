unit UCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TCidades = class(TForm)
    pnl1: TPanel;
    fdTransaction: TFDTransaction;
    fdQryCidades: TFDQuery;
    fdUpdCidades: TFDUpdateSQL;
    dsCidades: TDataSource;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryCidadesCODCIDADE: TSmallintField;
    fdQryCidadesCIDADE: TWideStringField;
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
  Cidades: TCidades;

implementation

uses
  UDmDados;

{$R *.dfm}

procedure TCidades.btnCancelarClick(Sender: TObject);
begin
  if fdQryCidades.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryCidades.Cancel;
  fdTransaction.RollbackRetaining;
end;

procedure TCidades.btnExcluirClick(Sender: TObject);
begin
  fdQryCidades.Edit;
  fdTransaction.StartTransaction;
  fdQryCidades.Post;
  fdTransaction.CommitRetaining;
end;

procedure TCidades.btnGravarClick(Sender: TObject);
begin
  if fdQryCidades.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryCidades.Post;
  fdTransaction.CommitRetaining;
  ShowMessage('Cadastro concluído!');

end;

procedure TCidades.btnNovoClick(Sender: TObject);
begin
  if not (fdQryCidades.State in [dsEdit, dsInsert]) then
  fdQryCidades.Insert;
  end;

procedure TCidades.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TCidades.FormCreate(Sender: TObject);
begin
  fdQryCidades.Open;
end;

end.
