unit eNota.Controller.NotaFiscal.Interfaces;

interface

type

  iCommand = interface
    ['{2FAD565D-04B2-41EA-8BF9-228B0BE0985F}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{4A47AC5D-86A0-4464-BC1A-D7A326A0EB6E}']
    function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

  iNotaFiscal = interface
    ['{FCDA052C-FC04-48CA-8514-18985A822426}']
    function Criar : iNotaFiscal;
    function Validar : iNotaFiscal;
    function EnviarNota : iNotaFiscal;
    function GravarNota : iNotaFiscal;
    function Email : iNotaFiscal;
    function ImportarPedido(Value : Integer) : iNotaFiscal;
  end;

  iNotaFiscalView = interface
    ['{3033C852-35D2-4653-A55A-38687126E337}']
    function EnviarNotaSefaz : iNotaFiscal;
    function EnviarNotaSefazSemEmail : iNotaFiscal;
    function GerarNumeroPedido(Codigo : Integer) : iNotaFiscal;
  end;

implementation

end.
