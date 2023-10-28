program Project;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  BusinessClasses in 'BusinessClasses.pas',
  Invoice in 'Invoice.pas',
  InvoiceBase in 'InvoiceBase.pas';

begin
  try
    var Org := TOrganization.Create;
    try
      Org.OpenInvoice;
    finally
      Org.Free;
    end;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
