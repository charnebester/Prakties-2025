unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
///   Jou doel is eenvoudig:
///   As ek die program run en in die edit n woord in tik en daarna op die knoppie
///   druk dan moet wat ek in die edit ingetik het in die teksfile verskyn (op n
///   nuwe lyn)
///
///   Bv.
///
///   Die inhoud van die textfile Data.txt voordat ek my program run
///
///   Salve
///   In urbe habitas
///
///   Ek tik 'Hi hoe gaan dit?' in die edit in en druk die knoppie
///
///   Die inhoud van die textfile Data.txt nadat ek die knoppie druk
///
///   Salve
///   In urbe habitas
///   Hi hoe gaan dit?
///

end;

end.
