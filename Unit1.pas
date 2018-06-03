unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}


procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Bilet.Show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Pass.Show;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Stat.Show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Reys.Show;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
DobReys.Show;
end;

end.
