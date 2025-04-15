unit eNota.Controller.NotaFiscal;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces, eNota.Controller.Invoker,
  eNota.Controller.NotaFiscal.Criar, eNota.Controller.NotaFiscal.Validar,
  eNota.Controller.NotaFiscal.Enviar, eNota.Controller.NotaFiscal.Gravar,
  eNota.Controller.NotaFiscal.Email,
  eNota.Controller.NotaFiscal.ImportarPedido, Vcl.Dialogs;

type
  TControllerNotaFiscal = class(TInterfacedObject, iNotaFiscal, iNotaFiscalView)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iNotaFiscalView;
      function Criar : iNotaFiscal;
      function Validar : iNotaFiscal;
      function EnviarNota : iNotaFiscal;
      function GravarNota : iNotaFiscal;
      function Email : iNotaFiscal;
      function EnviarNotaSefaz : iNotaFiscal;
      function EnviarNotaSefazSemEmail : iNotaFiscal;
      function ImportarPedido(Value : Integer) : iNotaFiscal;
      function GerarNumeroPedido(Codigo : Integer) : iNotaFiscal;
  end;

implementation

{ TControllerNotaFiscal }

constructor TControllerNotaFiscal.Create;
begin

end;

function TControllerNotaFiscal.Criar: iNotaFiscal;
begin
  Result := Self;
end;

destructor TControllerNotaFiscal.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscal.Email: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.EnviarNota: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.EnviarNotaSefaz: iNotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEmail.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.EnviarNotaSefazSemEmail: iNotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.GerarNumeroPedido(Codigo: Integer): iNotaFiscal;
begin
  Result := Self;
  ShowMessage('Pedido gerado');
  TControllerInvoker.New
    .Add(TControllerNotaFiscalImportarPedido.New(Self, Codigo))
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEmail.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.GravarNota: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.ImportarPedido(Value: Integer): iNotaFiscal;
begin
  Result := Self;
end;

class function TControllerNotaFiscal.New: iNotaFiscalView;
begin
  Result := Self.Create;
end;

function TControllerNotaFiscal.Validar: iNotaFiscal;
begin
  Result := Self;
end;

end.
