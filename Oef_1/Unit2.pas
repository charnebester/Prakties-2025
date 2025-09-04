unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    RichEdit1: TRichEdit;
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
///  wanneer hierdie knoppie gedruk word moet jy elke lyn uit die text file
///  Hi.txt op die red wys. As n lyn n getal in het moet jy nie net die lyn op die
///  red wys nie maar ook die woord getal na nie lyn
///
///  Bv
///  Kom ons se Hi tot text lyk as volg:
///
///  hi friend how are you doing
///  hello123
///  h1lp me
///
///  Dan sal die afvoer op jou red soos die lyk:
///
///  hi friend how are you doing
///  hello123 getal
///  h1lp me getal
///
///  Die woord getal kom voor langs text wat in die txt getalle in gehad het
///  (in die text file het 'h1lp me' n getal in gehaad so toe ons hom afvoer op
///  die red toe sit one die woord getal langs hom)

end;

end.
