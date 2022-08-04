unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Win.ComObj;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  XLApp: OleVariant ;
begin
  XLApp := CreateOleObject('Excel.Application');
  XLApp.Visible := True;
// Ejemplo 1
  XLApp.workbooks.add;
  XLApp.workbooks[1].worksheets[1].name := 'Cartera';
  XLApp.workbooks[1].worksheets[1].cells(1,1) := 'Azul';
  XLApp.workbooks[1].worksheets[1].cells(1,2) := 'Fondo';
  XLApp.workbooks[1].worksheets[1].cells(1,3) := 'Color';
  XLApp.workbooks[1].worksheets[1].cells(1,5) := 'Negrita';
  XLApp.workbooks[1].worksheets[1].cells(2,1) := 'Combinar Celdas';

  XLApp.Quit;
//  XLApp := Unassigned;
end;

end.

