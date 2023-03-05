unit UCad_Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TCad_Funcionarios = class(TForm)
    fdQryCad_Funcionarios: TFDQuery;
    fdUpdCad_Funcionarios: TFDUpdateSQL;
    fdTransaction: TFDTransaction;
    dsCad_Funcionarios: TDataSource;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryCad_FuncionariosCODFUNCIONARIO: TSmallintField;
    fdQryCad_FuncionariosNOME: TWideStringField;
    fdQryCad_FuncionariosENDERECO: TWideStringField;
    fdQryCad_FuncionariosCODBAIRRO: TSmallintField;
    fdQryCad_FuncionariosNUMERO: TIntegerField;
    fdQryCad_FuncionariosCOMPLEMENTO: TWideStringField;
    fdQryCad_FuncionariosCODCIDADE: TSmallintField;
    fdQryCad_FuncionariosUF: TWideStringField;
    fdQryCad_FuncionariosCEP: TWideStringField;
    fdQryCad_FuncionariosCPF: TWideStringField;
    fdQryCad_FuncionariosRG: TWideStringField;
    fdQryCad_FuncionariosFONE: TWideStringField;
    fdQryCad_FuncionariosCELULAR: TWideStringField;
    fdQryCad_FuncionariosDATANASC: TDateField;
    fdQryCad_FuncionariosEMAIL: TWideStringField;
    fdQryCad_FuncionariosSALARIO: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Funcionarios: TCad_Funcionarios;

implementation

uses
  UDmDados;

{$R *.dfm}

procedure TCad_Funcionarios.btnCancelarClick(Sender: TObject);
begin
  if fdQryCad_Funcionarios.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryCad_Funcionarios.Cancel;
  fdTransaction.RollbackRetaining;
end;

procedure TCad_Funcionarios.btnExcluirClick(Sender: TObject);
begin
  fdQryCad_Funcionarios.Edit;
  fdTransaction.StartTransaction;
  fdQryCad_Funcionarios.Post;
  fdTransaction.RollbackRetaining;
end;

procedure TCad_Funcionarios.btnGravarClick(Sender: TObject);
begin
  if fdQryCad_Funcionarios.State in [dsEdit, dsInsert] then
  fdTransaction.StartTransaction;
  fdQryCad_Funcionarios.Post;
  fdTransaction.CommitRetaining;
  ShowMessage('Cadastro concluído');
end;

procedure TCad_Funcionarios.btnNovoClick(Sender: TObject);
begin
  if not (fdQryCad_Funcionarios.State in [dsEdit, dsInsert]) then
  fdQryCad_Funcionarios.Insert;

end;

procedure TCad_Funcionarios.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TCad_Funcionarios.FormCreate(Sender: TObject);
begin
  fdQryCad_Funcionarios.Open;
end;

end.
