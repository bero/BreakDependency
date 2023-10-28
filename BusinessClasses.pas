unit BusinessClasses;

interface

type
  TOrganization = class
  public
    procedure OpenInvoice;
  end;

implementation

uses
  InvoiceBase;

procedure TOrganization.OpenInvoice;
begin
  var Inv := TInvoiceBase.Create;
  try
    Inv.CreateInvoice;
  finally
    Inv.Free;
  end;
end;

end.
