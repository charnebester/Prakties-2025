unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    redAfvoer: TRichEdit;
    btnVocalName: TButton;
    btnN_E_W: TButton;
    btnCity: TButton;
    btnSecure: TButton;
    btnNTF: TButton;
    btnDelete: TButton;
    btnClear: TButton;
    procedure btnClearClick(Sender: TObject);
    procedure btnN_E_WClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnClearClick(Sender: TObject);
begin
redAfvoer.Lines.Clear;
end;

procedure TForm2.btnN_E_WClick(Sender: TObject);
var
sEen : string;
tf : TextFile;
iPos : integer;
sNaam : string;

begin
   AssignFile(tf  , 'Data.txt');
   Reset(tf);
   redAfvoer.Paragraph.TabCount := 2;

   while not Eof(tf) do
   begin
     Readln(tf, sEen);
     iPos := pos('!', sEen);

     sNaam := copy(sEen, iPos+1, 1);
     redAfvoer.Lines.Add(sNaam) ;







   end;


end;

end.
