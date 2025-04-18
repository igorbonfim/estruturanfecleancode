unit eNota.Controller.NotaFiscal.Criar;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces, Vcl.Dialogs;

type
  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
    private
      FParent: iNotaFiscal;
    public
      constructor Create(Parent: iNotaFiscal);
      destructor Destroy; override;
      class function New(Parent: iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalCriar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalCriar.Execute: iCommand;
begin
  Result := Self;
  FParent.Criar;
  ShowMessage('Nota criada');
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
