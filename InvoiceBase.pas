unit InvoiceBase;

interface

type
  TInvoiceBase = class
  public
    class function CreateInvoice: TInvoiceBase; virtual;
  end;


implementation

class function TInvoiceBase.CreateInvoice: TInvoiceBase;
begin
  WriteLn('TInvoice.CreateInvoiceBase');
end;

end.
