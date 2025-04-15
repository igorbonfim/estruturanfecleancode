object FrmNota: TFrmNota
  Left = 0
  Top = 0
  Caption = 'Nota Fiscal'
  ClientHeight = 87
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnEnviarNota: TButton
    Left = 40
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Enviar Nota'
    TabOrder = 0
    OnClick = btnEnviarNotaClick
  end
  object btnGerarPedido: TButton
    Left = 288
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Gerar Pedido'
    TabOrder = 1
    OnClick = btnGerarPedidoClick
  end
  object btnEnviarNotaSemEmail: TButton
    Left = 128
    Top = 32
    Width = 145
    Height = 25
    Caption = 'Enviar Nota sem e-mail'
    TabOrder = 2
    OnClick = btnEnviarNotaSemEmailClick
  end
end
