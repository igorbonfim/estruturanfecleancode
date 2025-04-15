unit eNota.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, eNota.Controller.NotaFiscal.Interfaces,
  Vcl.StdCtrls, eNota.Controller.NotaFiscal;

type
  TFrmNota = class(TForm)
    btnEnviarNota: TButton;
    btnGerarPedido: TButton;
    btnEnviarNotaSemEmail: TButton;
    procedure btnEnviarNotaClick(Sender: TObject);
    procedure btnGerarPedidoClick(Sender: TObject);
    procedure btnEnviarNotaSemEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNota: TFrmNota;

implementation

{$R *.dfm}

procedure TFrmNota.btnEnviarNotaClick(Sender: TObject);
begin
  TControllerNotaFiscal.New.EnviarNotaSefaz;
end;

procedure TFrmNota.btnEnviarNotaSemEmailClick(Sender: TObject);
begin
  TControllerNotaFiscal.New.EnviarNotaSefazSemEmail;
end;

procedure TFrmNota.btnGerarPedidoClick(Sender: TObject);
begin
  TControllerNotaFiscal.New.GerarNumeroPedido(1);
end;

end.
