unit Invoice;

interface

uses
  InvoiceBase;

type
  TInvoice = class(TInvoiceBase)
  public
    class function CreateInvoice:TInvoiceBase; override;
  end;

implementation

{ TInvoice }

{ TInvoice }

class function TInvoice.CreateInvoice:TInvoiceBase;
begin
  inherited;
  Result := TInvoice.Create;
  WriteLn('TInvoice.CreateInvoice');
end;

end.
